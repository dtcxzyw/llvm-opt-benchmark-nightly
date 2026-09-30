Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/constants?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 132
begin_hunk_0_@constants:bb.a
  %i.cyq = fptosi double %i.cyp to i32
  store i32 %i.cyq, ptr @offset, align 4, !tbaa !7
  store i32 0, ptr @offsetFFT, align 4, !tbaa !7
  store i32 60, ptr @offsetLN, align 4, !tbaa !7
  store i32 -1199, ptr @penaltyLN, align 4, !tbaa !7
  store i32 -59, ptr @penalty_exLN, align 4, !tbaa !7
  %i.cyr = load i32, ptr @nblosum, align 4, !tbaa !7
  tail call void @BLOSUMmtx(i32 noundef %i.cyr, ptr noundef %i.cxc, ptr noundef %i.cxe, ptr noundef nonnull @amino, ptr noundef nonnull @amino_grp)
  %i.cys = load i32, ptr @nblosum, align 4, !tbaa !7 ; 2 uses
  %i.cyt = icmp eq i32 %i.cys, -1
  %i.cyu = load i32, ptr @ppenalty, align 4, !tbaa !7
  %i.cyv = sitofp i32 %i.cyu to double
  %i.cyw = fdiv double %i.cyv, -1.000000e+03      ; 2 uses
  %i.cyx = load i32, ptr @poffset, align 4, !tbaa !7
  %i.cyy = load i32, ptr @ppenalty_ex, align 4, !tbaa !7
  %i.cyz = insertelement <2 x i32> poison, i32 %i.cyx, i64 0
  %i.cza = insertelement <2 x i32> %i.cyz, i32 %i.cyy, i64 1
  %i.czb = sitofp <2 x i32> %i.cza to <2 x double>
  %i.czc = fdiv <2 x double> %i.czb, splat (double -1.000000e+03) ; 4 uses
  br i1 %i.cyt, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.czd = extractelement <2 x double> %i.czc, i64 0
  %i.cze = extractelement <2 x double> %i.czc, i64 1
  %i.czf = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @modelname, ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %i.cyw, double noundef %i.czd, double noundef %i.cze) #15 ; 0 uses
  br label %.preheader1212.preheader

bb.iy:                                            ; preds = %bb.iw
  %i.czg = extractelement <2 x double> %i.czc, i64 0
  %i.czh = extractelement <2 x double> %i.czc, i64 1
  %i.czi = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @modelname, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.cys, double noundef %i.cyw, double noundef %i.czg, double noundef %i.czh) #15 ; 0 uses
  br label %.preheader1212.preheader

.preheader1212.preheader:                         ; preds = %bb.iy, %bb.ix
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) @amino_n, i8 -1, i64 512, i1 false), !tbaa !7
  %i.czj = load i8, ptr @amino, align 16, !tbaa !11
  %i.czk = sext i8 %i.czj to i64
  %i.czl = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.czk
  store i32 0, ptr %i.czl, align 4, !tbaa !7
  %i.czm = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 1), align 1, !tbaa !11
  %i.czn = sext i8 %i.czm to i64
  %i.czo = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.czn
  store i32 1, ptr %i.czo, align 4, !tbaa !7
  %i.czp = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 2), align 2, !tbaa !11
  %i.czq = sext i8 %i.czp to i64
  %i.czr = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.czq
  store i32 2, ptr %i.czr, align 4, !tbaa !7
  %i.czs = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 3), align 1, !tbaa !11
  %i.czt = sext i8 %i.czs to i64
  %i.czu = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.czt
  store i32 3, ptr %i.czu, align 4, !tbaa !7
  %i.czv = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 4), align 4, !tbaa !11
  %i.czw = sext i8 %i.czv to i64
  %i.czx = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.czw
  store i32 4, ptr %i.czx, align 4, !tbaa !7
  %i.czy = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 5), align 1, !tbaa !11
  %i.czz = sext i8 %i.czy to i64
  %i.daa = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.czz
  store i32 5, ptr %i.daa, align 4, !tbaa !7
  %i.dab = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 6), align 2, !tbaa !11
  %i.dac = sext i8 %i.dab to i64
  %i.dad = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dac
  store i32 6, ptr %i.dad, align 4, !tbaa !7
  %i.dae = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 7), align 1, !tbaa !11
  %i.daf = sext i8 %i.dae to i64
  %i.dag = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.daf
  store i32 7, ptr %i.dag, align 4, !tbaa !7
  %i.dah = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 8), align 8, !tbaa !11
  %i.dai = sext i8 %i.dah to i64
  %i.daj = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dai
  store i32 8, ptr %i.daj, align 4, !tbaa !7
  %i.dak = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 9), align 1, !tbaa !11
  %i.dal = sext i8 %i.dak to i64
  %i.dam = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dal
  store i32 9, ptr %i.dam, align 4, !tbaa !7
  %i.dan = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 10), align 2, !tbaa !11
  %i.dao = sext i8 %i.dan to i64
  %i.dap = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dao
  store i32 10, ptr %i.dap, align 4, !tbaa !7
  %i.daq = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 11), align 1, !tbaa !11
  %i.dar = sext i8 %i.daq to i64
  %i.das = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dar
  store i32 11, ptr %i.das, align 4, !tbaa !7
  %i.dat = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 12), align 4, !tbaa !11
  %i.dau = sext i8 %i.dat to i64
  %i.dav = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dau
  store i32 12, ptr %i.dav, align 4, !tbaa !7
  %i.daw = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 13), align 1, !tbaa !11
  %i.dax = sext i8 %i.daw to i64
  %i.day = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dax
  store i32 13, ptr %i.day, align 4, !tbaa !7
  %i.daz = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 14), align 2, !tbaa !11
  %i.dba = sext i8 %i.daz to i64
  %i.dbb = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dba
  store i32 14, ptr %i.dbb, align 4, !tbaa !7
  %i.dbc = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 15), align 1, !tbaa !11
  %i.dbd = sext i8 %i.dbc to i64
  %i.dbe = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbd
  store i32 15, ptr %i.dbe, align 4, !tbaa !7
  %i.dbf = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 16), align 16, !tbaa !11
  %i.dbg = sext i8 %i.dbf to i64
  %i.dbh = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbg
  store i32 16, ptr %i.dbh, align 4, !tbaa !7
  %i.dbi = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 17), align 1, !tbaa !11
  %i.dbj = sext i8 %i.dbi to i64
  %i.dbk = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbj
  store i32 17, ptr %i.dbk, align 4, !tbaa !7
  %i.dbl = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 18), align 2, !tbaa !11
  %i.dbm = sext i8 %i.dbl to i64
  %i.dbn = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbm
  store i32 18, ptr %i.dbn, align 4, !tbaa !7
  %i.dbo = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 19), align 1, !tbaa !11
  %i.dbp = sext i8 %i.dbo to i64
  %i.dbq = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbp
  store i32 19, ptr %i.dbq, align 4, !tbaa !7
  %i.dbr = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 20), align 4, !tbaa !11
  %i.dbs = sext i8 %i.dbr to i64
  %i.dbt = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbs
  store i32 20, ptr %i.dbt, align 4, !tbaa !7
  %i.dbu = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 21), align 1, !tbaa !11
  %i.dbv = sext i8 %i.dbu to i64
  %i.dbw = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dbv
  store i32 21, ptr %i.dbw, align 4, !tbaa !7
  %i.dbx = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 22), align 2, !tbaa !11
  %i.dby = sext i8 %i.dbx to i64
  %i.dbz = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dby
  store i32 22, ptr %i.dbz, align 4, !tbaa !7
  %i.dca = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 23), align 1, !tbaa !11
  %i.dcb = sext i8 %i.dca to i64
  %i.dcc = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dcb
  store i32 23, ptr %i.dcc, align 4, !tbaa !7
  %i.dcd = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 24), align 8, !tbaa !11
  %i.dce = sext i8 %i.dcd to i64
  %i.dcf = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dce
  store i32 24, ptr %i.dcf, align 4, !tbaa !7
  %i.dcg = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 25), align 1, !tbaa !11
  %i.dch = sext i8 %i.dcg to i64
  %i.dci = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.dch
  store i32 25, ptr %i.dci, align 4, !tbaa !7
  %i.dcj = load i32, ptr @fmodel, align 4, !tbaa !7 ; 2 uses
  %i.dck = icmp eq i32 %i.dcj, 1
  br i1 %i.dck, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %.preheader1212.preheader
  tail call fastcc void @calcfreq(i32 noundef %0, ptr noundef %1, ptr noundef %i.cxd)
  %.pr1088 = load i32, ptr @fmodel, align 4, !tbaa !7
  br label %bb.ja

bb.ja:                                            ; preds = %.preheader1212.preheader, %bb.iz
  %i.dcl = phi i32 [ %i.dcj, %.preheader1212.preheader ], [ %.pr1088, %bb.iz ]
  %.0901 = phi ptr [ %i.cxe, %.preheader1212.preheader ], [ %i.cxd, %bb.iz ] ; 44 uses
  %i.dcm = icmp eq i32 %i.dcl, -1
  br i1 %i.dcm, label %.loopexit1210, label %.preheader1211.preheader

.preheader1211.preheader:                         ; preds = %bb.ja
  %.phi.trans.insert2219 = getelementptr inbounds nuw i8, ptr %.0901, i64 32
  %.pre2220 = load double, ptr %.phi.trans.insert2219, align 8, !tbaa !9
  %.phi.trans.insert2221 = getelementptr inbounds nuw i8, ptr %.0901, i64 40
  %.pre2222 = load double, ptr %.phi.trans.insert2221, align 8, !tbaa !9
  %.phi.trans.insert2223 = getelementptr inbounds nuw i8, ptr %.0901, i64 48
  %.pre2224 = load double, ptr %.phi.trans.insert2223, align 8, !tbaa !9
  %.phi.trans.insert2225 = getelementptr inbounds nuw i8, ptr %.0901, i64 56
  %.pre2226 = load double, ptr %.phi.trans.insert2225, align 8, !tbaa !9
  %.phi.trans.insert2227 = getelementptr inbounds nuw i8, ptr %.0901, i64 64
  %.pre2228 = load double, ptr %.phi.trans.insert2227, align 8, !tbaa !9
  %.phi.trans.insert2229 = getelementptr inbounds nuw i8, ptr %.0901, i64 72
  %.pre2230 = load double, ptr %.phi.trans.insert2229, align 8, !tbaa !9
  %.phi.trans.insert2231 = getelementptr inbounds nuw i8, ptr %.0901, i64 80
  %.pre2232 = load double, ptr %.phi.trans.insert2231, align 8, !tbaa !9
  %.phi.trans.insert2233 = getelementptr inbounds nuw i8, ptr %.0901, i64 88
  %.pre2234 = load double, ptr %.phi.trans.insert2233, align 8, !tbaa !9
  %.phi.trans.insert2235 = getelementptr inbounds nuw i8, ptr %.0901, i64 96
  %.pre2236 = load double, ptr %.phi.trans.insert2235, align 8, !tbaa !9
  %.phi.trans.insert2237 = getelementptr inbounds nuw i8, ptr %.0901, i64 104
  %.pre2238 = load double, ptr %.phi.trans.insert2237, align 8, !tbaa !9
  %.phi.trans.insert2239 = getelementptr inbounds nuw i8, ptr %.0901, i64 112
  %.pre2240 = load double, ptr %.phi.trans.insert2239, align 8, !tbaa !9
  %.phi.trans.insert2241 = getelementptr inbounds nuw i8, ptr %.0901, i64 120
  %.pre2242 = load double, ptr %.phi.trans.insert2241, align 8, !tbaa !9
  %.phi.trans.insert2243 = getelementptr inbounds nuw i8, ptr %.0901, i64 128
  %.pre2244 = load double, ptr %.phi.trans.insert2243, align 8, !tbaa !9
  %.phi.trans.insert2245 = getelementptr inbounds nuw i8, ptr %.0901, i64 136
  %.pre2246 = load double, ptr %.phi.trans.insert2245, align 8, !tbaa !9
  %i.dcn = load double, ptr %.0901, align 8, !tbaa !9
  %i.dco = getelementptr inbounds nuw i8, ptr %.0901, i64 8
  %i.dcp = load double, ptr %i.dco, align 8, !tbaa !9
  %i.dcq = getelementptr inbounds nuw i8, ptr %.0901, i64 16
  %i.dcr = load double, ptr %i.dcq, align 8, !tbaa !9
  %i.dcs = getelementptr inbounds nuw i8, ptr %.0901, i64 24
  %i.dct = load double, ptr %i.dcs, align 8, !tbaa !9
  %i.dcu = getelementptr inbounds nuw i8, ptr %.0901, i64 144
  %i.dcv = load double, ptr %i.dcu, align 8, !tbaa !9
  %i.dcw = getelementptr inbounds nuw i8, ptr %.0901, i64 152
  %i.dcx = load double, ptr %i.dcw, align 8, !tbaa !9
  br label %.preheader1208

.preheader1208:                                   ; preds = %.preheader1211.preheader, %.preheader1208
  %indvars.iv1604 = phi i64 [ 0, %.preheader1211.preheader ], [ %indvars.iv.next1605, %.preheader1208 ] ; 3 uses
  %.18951284 = phi double [ 0.000000e+00, %.preheader1211.preheader ], [ %i.dds, %.preheader1208 ]
  %i.dcy = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %indvars.iv1604
  %i.dcz = load ptr, ptr %i.dcy, align 8, !tbaa !14 ; 10 uses
  %i.dda = getelementptr inbounds nuw [8 x i8], ptr %.0901, i64 %indvars.iv1604
  %i.ddb = load double, ptr %i.dda, align 8, !tbaa !9
  %2 = load <2 x double>, ptr %i.dcz, align 8, !tbaa !9
  %3 = insertelement <2 x double> poison, double %i.ddb, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %5 = fmul <2 x double> %2, %4                   ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %i.dcn, double %.18951284)
  %8 = extractelement <2 x double> %5, i64 1
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %i.dcp, double %7)
  %10 = getelementptr inbounds nuw i8, ptr %i.dcz, i64 16
  %11 = load <2 x double>, ptr %10, align 8, !tbaa !9
  %12 = fmul <2 x double> %11, %4                 ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %i.dcr, double %9)
  %15 = extractelement <2 x double> %12, i64 1
  %i.ddc = tail call double @llvm.fmuladd.f64(double %15, double %i.dct, double %14)
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.dcz, i64 32
  %16 = load <2 x double>, ptr %i.ddd, align 8, !tbaa !9
  %17 = fmul <2 x double> %16, %4                 ; 2 uses
  %18 = extractelement <2 x double> %17, i64 0
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %.pre2220, double %i.ddc)
  %20 = extractelement <2 x double> %17, i64 1
  %i.dde = tail call double @llvm.fmuladd.f64(double %20, double %.pre2222, double %19)
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dcz, i64 48
  %21 = load <2 x double>, ptr %i.ddf, align 8, !tbaa !9
  %22 = fmul <2 x double> %21, %4                 ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %.pre2224, double %i.dde)
  %25 = extractelement <2 x double> %22, i64 1
  %i.ddg = tail call double @llvm.fmuladd.f64(double %25, double %.pre2226, double %24)
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dcz, i64 64
  %26 = load <2 x double>, ptr %i.ddh, align 8, !tbaa !9
  %27 = fmul <2 x double> %26, %4                 ; 2 uses
  %28 = extractelement <2 x double> %27, i64 0
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %.pre2228, double %i.ddg)
  %30 = extractelement <2 x double> %27, i64 1
  %i.ddi = tail call double @llvm.fmuladd.f64(double %30, double %.pre2230, double %29)
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcz, i64 80
  %31 = load <2 x double>, ptr %i.ddj, align 8, !tbaa !9
  %32 = fmul <2 x double> %31, %4                 ; 2 uses
  %33 = extractelement <2 x double> %32, i64 0
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %.pre2232, double %i.ddi)
  %35 = extractelement <2 x double> %32, i64 1
  %i.ddk = tail call double @llvm.fmuladd.f64(double %35, double %.pre2234, double %34)
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.dcz, i64 96
  %36 = load <2 x double>, ptr %i.ddl, align 8, !tbaa !9
  %37 = fmul <2 x double> %36, %4                 ; 2 uses
  %38 = extractelement <2 x double> %37, i64 0
  %39 = tail call double @llvm.fmuladd.f64(double %38, double %.pre2236, double %i.ddk)
  %40 = extractelement <2 x double> %37, i64 1
  %i.ddm = tail call double @llvm.fmuladd.f64(double %40, double %.pre2238, double %39)
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.dcz, i64 112
  %41 = load <2 x double>, ptr %i.ddn, align 8, !tbaa !9
  %42 = fmul <2 x double> %41, %4                 ; 2 uses
  %43 = extractelement <2 x double> %42, i64 0
  %44 = tail call double @llvm.fmuladd.f64(double %43, double %.pre2240, double %i.ddm)
  %45 = extractelement <2 x double> %42, i64 1
  %i.ddo = tail call double @llvm.fmuladd.f64(double %45, double %.pre2242, double %44)
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.dcz, i64 128
  %46 = load <2 x double>, ptr %i.ddp, align 8, !tbaa !9
  %47 = fmul <2 x double> %46, %4                 ; 2 uses
  %48 = extractelement <2 x double> %47, i64 0
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %.pre2244, double %i.ddo)
  %50 = extractelement <2 x double> %47, i64 1
  %i.ddq = tail call double @llvm.fmuladd.f64(double %50, double %.pre2246, double %49)
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.dcz, i64 144
  %51 = load <2 x double>, ptr %i.ddr, align 8, !tbaa !9
  %52 = fmul <2 x double> %51, %4                 ; 2 uses
  %53 = extractelement <2 x double> %52, i64 0
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %i.dcv, double %i.ddq)
  %55 = extractelement <2 x double> %52, i64 1
  %i.dds = tail call double @llvm.fmuladd.f64(double %55, double %i.dcx, double %54) ; 2 uses
  %indvars.iv.next1605 = add nuw nsw i64 %indvars.iv1604, 1 ; 2 uses
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1605, 20
  br i1 %exitcond1607.not, label %.loopexit1210, label %.preheader1208, !llvm.loop !39

.loopexit1210:                                    ; preds = %.preheader1208, %bb.ja
  %.3897 = phi double [ 0.000000e+00, %bb.ja ], [ %i.dds, %.preheader1208 ]
  %i.ddt = insertelement <2 x double> poison, double %.3897, i64 0
  %i.ddu = shufflevector <2 x double> %i.ddt, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %.preheader1207

.preheader1207:                                   ; preds = %.loopexit1210, %.preheader1207
  %indvars.iv1612 = phi i64 [ 0, %.loopexit1210 ], [ %indvars.iv.next1613, %.preheader1207 ] ; 2 uses
  %i.ddv = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %indvars.iv1612
  %i.ddw = load ptr, ptr %i.ddv, align 8, !tbaa !14 ; 11 uses
  %i.ddx = load <2 x double>, ptr %i.ddw, align 8, !tbaa !9
  %i.ddy = fsub <2 x double> %i.ddx, %i.ddu
  store <2 x double> %i.ddy, ptr %i.ddw, align 8, !tbaa !9
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddw, i64 16 ; 2 uses
  %i.dea = load <2 x double>, ptr %i.ddz, align 8, !tbaa !9
  %i.deb = fsub <2 x double> %i.dea, %i.ddu
  store <2 x double> %i.deb, ptr %i.ddz, align 8, !tbaa !9
  %i.dec = getelementptr inbounds nuw i8, ptr %i.ddw, i64 32 ; 2 uses
  %i.ded = load <2 x double>, ptr %i.dec, align 8, !tbaa !9
  %i.dee = fsub <2 x double> %i.ded, %i.ddu
  store <2 x double> %i.dee, ptr %i.dec, align 8, !tbaa !9
  %i.def = getelementptr inbounds nuw i8, ptr %i.ddw, i64 48 ; 2 uses
  %i.deg = load <2 x double>, ptr %i.def, align 8, !tbaa !9
  %i.deh = fsub <2 x double> %i.deg, %i.ddu
  store <2 x double> %i.deh, ptr %i.def, align 8, !tbaa !9
  %i.dei = getelementptr inbounds nuw i8, ptr %i.ddw, i64 64 ; 2 uses
  %i.dej = load <2 x double>, ptr %i.dei, align 8, !tbaa !9
  %i.dek = fsub <2 x double> %i.dej, %i.ddu
  store <2 x double> %i.dek, ptr %i.dei, align 8, !tbaa !9
  %i.del = getelementptr inbounds nuw i8, ptr %i.ddw, i64 80 ; 2 uses
  %i.dem = load <2 x double>, ptr %i.del, align 8, !tbaa !9
  %i.den = fsub <2 x double> %i.dem, %i.ddu
  store <2 x double> %i.den, ptr %i.del, align 8, !tbaa !9
  %i.deo = getelementptr inbounds nuw i8, ptr %i.ddw, i64 96 ; 2 uses
  %i.dep = load <2 x double>, ptr %i.deo, align 8, !tbaa !9
  %i.deq = fsub <2 x double> %i.dep, %i.ddu
  store <2 x double> %i.deq, ptr %i.deo, align 8, !tbaa !9
  %i.der = getelementptr inbounds nuw i8, ptr %i.ddw, i64 112 ; 2 uses
  %i.des = load <2 x double>, ptr %i.der, align 8, !tbaa !9
  %i.det = fsub <2 x double> %i.des, %i.ddu
  store <2 x double> %i.det, ptr %i.der, align 8, !tbaa !9
  %i.deu = getelementptr inbounds nuw i8, ptr %i.ddw, i64 128 ; 2 uses
  %i.dev = load <2 x double>, ptr %i.deu, align 8, !tbaa !9
  %i.dew = fsub <2 x double> %i.dev, %i.ddu
  store <2 x double> %i.dew, ptr %i.deu, align 8, !tbaa !9
  %i.dex = getelementptr inbounds nuw i8, ptr %i.ddw, i64 144 ; 2 uses
  %i.dey = load <2 x double>, ptr %i.dex, align 8, !tbaa !9
  %i.dez = fsub <2 x double> %i.dey, %i.ddu
  store <2 x double> %i.dez, ptr %i.dex, align 8, !tbaa !9
  %indvars.iv.next1613 = add nuw nsw i64 %indvars.iv1612, 1 ; 2 uses
  %exitcond1615.not = icmp eq i64 %indvars.iv.next1613, 20
  br i1 %exitcond1615.not, label %.preheader1206.preheader, label %.preheader1207, !llvm.loop !40

.preheader1206.preheader:                         ; preds = %.preheader1207
  %i.dfa = load ptr, ptr %i.cxc, align 8, !tbaa !14
  %i.dfb = load double, ptr %i.dfa, align 8, !tbaa !9
  %i.dfc = load double, ptr %.0901, align 8, !tbaa !9
  %i.dfd = tail call double @llvm.fmuladd.f64(double %i.dfb, double %i.dfc, double 0.000000e+00)
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.cxc, i64 8 ; 2 uses
  %i.dff = load ptr, ptr %i.dfe, align 8, !tbaa !14
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dff, i64 8
  %i.dfh = load double, ptr %i.dfg, align 8, !tbaa !9
  %i.dfi = getelementptr inbounds nuw i8, ptr %.0901, i64 8 ; 3 uses
  %i.dfj = load double, ptr %i.dfi, align 8, !tbaa !9
  %i.dfk = tail call double @llvm.fmuladd.f64(double %i.dfh, double %i.dfj, double %i.dfd)
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.cxc, i64 16 ; 2 uses
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !14
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfm, i64 16
  %i.dfo = load double, ptr %i.dfn, align 8, !tbaa !9
  %i.dfp = getelementptr inbounds nuw i8, ptr %.0901, i64 16 ; 3 uses
  %i.dfq = load double, ptr %i.dfp, align 8, !tbaa !9
  %i.dfr = tail call double @llvm.fmuladd.f64(double %i.dfo, double %i.dfq, double %i.dfk)
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.cxc, i64 24 ; 2 uses
  %i.dft = load ptr, ptr %i.dfs, align 8, !tbaa !14
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dft, i64 24
  %i.dfv = load double, ptr %i.dfu, align 8, !tbaa !9
  %i.dfw = getelementptr inbounds nuw i8, ptr %.0901, i64 24 ; 3 uses
  %i.dfx = load double, ptr %i.dfw, align 8, !tbaa !9
  %i.dfy = tail call double @llvm.fmuladd.f64(double %i.dfv, double %i.dfx, double %i.dfr)
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.cxc, i64 32 ; 2 uses
  %i.dga = load ptr, ptr %i.dfz, align 8, !tbaa !14
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dga, i64 32
  %i.dgc = load double, ptr %i.dgb, align 8, !tbaa !9
  %i.dgd = getelementptr inbounds nuw i8, ptr %.0901, i64 32 ; 3 uses
  %i.dge = load double, ptr %i.dgd, align 8, !tbaa !9
  %i.dgf = tail call double @llvm.fmuladd.f64(double %i.dgc, double %i.dge, double %i.dfy)
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.cxc, i64 40 ; 2 uses
  %i.dgh = load ptr, ptr %i.dgg, align 8, !tbaa !14
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgh, i64 40
  %i.dgj = load double, ptr %i.dgi, align 8, !tbaa !9
  %i.dgk = getelementptr inbounds nuw i8, ptr %.0901, i64 40 ; 3 uses
  %i.dgl = load double, ptr %i.dgk, align 8, !tbaa !9
  %i.dgm = tail call double @llvm.fmuladd.f64(double %i.dgj, double %i.dgl, double %i.dgf)
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.cxc, i64 48 ; 2 uses
  %i.dgo = load ptr, ptr %i.dgn, align 8, !tbaa !14
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dgo, i64 48
  %i.dgq = load double, ptr %i.dgp, align 8, !tbaa !9
  %i.dgr = getelementptr inbounds nuw i8, ptr %.0901, i64 48 ; 3 uses
  %i.dgs = load double, ptr %i.dgr, align 8, !tbaa !9
  %i.dgt = tail call double @llvm.fmuladd.f64(double %i.dgq, double %i.dgs, double %i.dgm)
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.cxc, i64 56 ; 2 uses
  %i.dgv = load ptr, ptr %i.dgu, align 8, !tbaa !14
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dgv, i64 56
  %i.dgx = load double, ptr %i.dgw, align 8, !tbaa !9
  %i.dgy = getelementptr inbounds nuw i8, ptr %.0901, i64 56 ; 3 uses
  %i.dgz = load double, ptr %i.dgy, align 8, !tbaa !9
  %i.dha = tail call double @llvm.fmuladd.f64(double %i.dgx, double %i.dgz, double %i.dgt)
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.cxc, i64 64 ; 2 uses
  %i.dhc = load ptr, ptr %i.dhb, align 8, !tbaa !14
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dhc, i64 64
  %i.dhe = load double, ptr %i.dhd, align 8, !tbaa !9
  %i.dhf = getelementptr inbounds nuw i8, ptr %.0901, i64 64 ; 3 uses
  %i.dhg = load double, ptr %i.dhf, align 8, !tbaa !9
  %i.dhh = tail call double @llvm.fmuladd.f64(double %i.dhe, double %i.dhg, double %i.dha)
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.cxc, i64 72 ; 2 uses
  %i.dhj = load ptr, ptr %i.dhi, align 8, !tbaa !14
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 72
  %i.dhl = load double, ptr %i.dhk, align 8, !tbaa !9
  %i.dhm = getelementptr inbounds nuw i8, ptr %.0901, i64 72 ; 3 uses
  %i.dhn = load double, ptr %i.dhm, align 8, !tbaa !9
  %i.dho = tail call double @llvm.fmuladd.f64(double %i.dhl, double %i.dhn, double %i.dhh)
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.cxc, i64 80 ; 2 uses
  %i.dhq = load ptr, ptr %i.dhp, align 8, !tbaa !14
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 80
  %i.dhs = load double, ptr %i.dhr, align 8, !tbaa !9
  %i.dht = getelementptr inbounds nuw i8, ptr %.0901, i64 80 ; 3 uses
  %i.dhu = load double, ptr %i.dht, align 8, !tbaa !9
  %i.dhv = tail call double @llvm.fmuladd.f64(double %i.dhs, double %i.dhu, double %i.dho)
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.cxc, i64 88 ; 2 uses
  %i.dhx = load ptr, ptr %i.dhw, align 8, !tbaa !14
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 88
  %i.dhz = load double, ptr %i.dhy, align 8, !tbaa !9
  %i.dia = getelementptr inbounds nuw i8, ptr %.0901, i64 88 ; 3 uses
  %i.dib = load double, ptr %i.dia, align 8, !tbaa !9
  %i.dic = tail call double @llvm.fmuladd.f64(double %i.dhz, double %i.dib, double %i.dhv)
  %i.did = getelementptr inbounds nuw i8, ptr %i.cxc, i64 96 ; 2 uses
  %i.die = load ptr, ptr %i.did, align 8, !tbaa !14
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 96
  %i.dig = load double, ptr %i.dif, align 8, !tbaa !9
  %i.dih = getelementptr inbounds nuw i8, ptr %.0901, i64 96 ; 3 uses
  %i.dii = load double, ptr %i.dih, align 8, !tbaa !9
  %i.dij = tail call double @llvm.fmuladd.f64(double %i.dig, double %i.dii, double %i.dic)
  %i.dik = getelementptr inbounds nuw i8, ptr %i.cxc, i64 104 ; 2 uses
  %i.dil = load ptr, ptr %i.dik, align 8, !tbaa !14
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dil, i64 104
  %i.din = load double, ptr %i.dim, align 8, !tbaa !9
  %i.dio = getelementptr inbounds nuw i8, ptr %.0901, i64 104 ; 3 uses
  %i.dip = load double, ptr %i.dio, align 8, !tbaa !9
  %i.diq = tail call double @llvm.fmuladd.f64(double %i.din, double %i.dip, double %i.dij)
  %i.dir = getelementptr inbounds nuw i8, ptr %i.cxc, i64 112 ; 2 uses
  %i.dis = load ptr, ptr %i.dir, align 8, !tbaa !14
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dis, i64 112
  %i.diu = load double, ptr %i.dit, align 8, !tbaa !9
  %i.div = getelementptr inbounds nuw i8, ptr %.0901, i64 112 ; 3 uses
  %i.diw = load double, ptr %i.div, align 8, !tbaa !9
  %i.dix = tail call double @llvm.fmuladd.f64(double %i.diu, double %i.diw, double %i.diq)
  %i.diy = getelementptr inbounds nuw i8, ptr %i.cxc, i64 120 ; 2 uses
  %i.diz = load ptr, ptr %i.diy, align 8, !tbaa !14
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 120
  %i.djb = load double, ptr %i.dja, align 8, !tbaa !9
  %i.djc = getelementptr inbounds nuw i8, ptr %.0901, i64 120 ; 3 uses
  %i.djd = load double, ptr %i.djc, align 8, !tbaa !9
  %i.dje = tail call double @llvm.fmuladd.f64(double %i.djb, double %i.djd, double %i.dix)
  %i.djf = getelementptr inbounds nuw i8, ptr %i.cxc, i64 128 ; 2 uses
  %i.djg = load ptr, ptr %i.djf, align 8, !tbaa !14
  %i.djh = getelementptr inbounds nuw i8, ptr %i.djg, i64 128
  %i.dji = load double, ptr %i.djh, align 8, !tbaa !9
  %i.djj = getelementptr inbounds nuw i8, ptr %.0901, i64 128 ; 3 uses
  %i.djk = load double, ptr %i.djj, align 8, !tbaa !9
  %i.djl = tail call double @llvm.fmuladd.f64(double %i.dji, double %i.djk, double %i.dje)
  %i.djm = getelementptr inbounds nuw i8, ptr %i.cxc, i64 136 ; 2 uses
  %i.djn = load ptr, ptr %i.djm, align 8, !tbaa !14
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 136
  %i.djp = load double, ptr %i.djo, align 8, !tbaa !9
  %i.djq = getelementptr inbounds nuw i8, ptr %.0901, i64 136 ; 3 uses
  %i.djr = load double, ptr %i.djq, align 8, !tbaa !9
  %i.djs = tail call double @llvm.fmuladd.f64(double %i.djp, double %i.djr, double %i.djl)
  %i.djt = getelementptr inbounds nuw i8, ptr %i.cxc, i64 144 ; 2 uses
  %i.dju = load ptr, ptr %i.djt, align 8, !tbaa !14
  %i.djv = getelementptr inbounds nuw i8, ptr %i.dju, i64 144
  %i.djw = load double, ptr %i.djv, align 8, !tbaa !9
  %i.djx = getelementptr inbounds nuw i8, ptr %.0901, i64 144 ; 3 uses
  %i.djy = load double, ptr %i.djx, align 8, !tbaa !9
  %i.djz = tail call double @llvm.fmuladd.f64(double %i.djw, double %i.djy, double %i.djs)
  %i.dka = getelementptr inbounds nuw i8, ptr %i.cxc, i64 152 ; 2 uses
  %i.dkb = load ptr, ptr %i.dka, align 8, !tbaa !14
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.dkb, i64 152
  %i.dkd = load double, ptr %i.dkc, align 8, !tbaa !9
  %i.dke = getelementptr inbounds nuw i8, ptr %.0901, i64 152 ; 3 uses
  %i.dkf = load double, ptr %i.dke, align 8, !tbaa !9
  %i.dkg = tail call double @llvm.fmuladd.f64(double %i.dkd, double %i.dkf, double %i.djz)
  %i.dkh = fdiv double 6.000000e+02, %i.dkg
  %i.dki = insertelement <2 x double> poison, double %i.dkh, i64 0
  %i.dkj = shufflevector <2 x double> %i.dki, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %.preheader1204

end_hunk_0
begin_hunk_1_@constants:bb.a
  %i.dof = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dog = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 24
  %i.doi = load double, ptr %i.doh, align 8, !tbaa !9
  %i.doj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dof, ptr noundef nonnull @.str.25, double noundef %i.doi) #15 ; 0 uses
  %i.dok = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dol = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dol, i64 32
  %i.don = load double, ptr %i.dom, align 8, !tbaa !9
  %i.doo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dok, ptr noundef nonnull @.str.25, double noundef %i.don) #15 ; 0 uses
  %i.dop = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.doq = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dor = getelementptr inbounds nuw i8, ptr %i.doq, i64 40
  %i.dos = load double, ptr %i.dor, align 8, !tbaa !9
  %i.dot = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dop, ptr noundef nonnull @.str.25, double noundef %i.dos) #15 ; 0 uses
  %i.dou = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dov = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dov, i64 48
  %i.dox = load double, ptr %i.dow, align 8, !tbaa !9
  %i.doy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dou, ptr noundef nonnull @.str.25, double noundef %i.dox) #15 ; 0 uses
  %i.doz = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dpa = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.dpa, i64 56
  %i.dpc = load double, ptr %i.dpb, align 8, !tbaa !9
  %i.dpd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.doz, ptr noundef nonnull @.str.25, double noundef %i.dpc) #15 ; 0 uses
  %i.dpe = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dpf = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpf, i64 64
  %i.dph = load double, ptr %i.dpg, align 8, !tbaa !9
  %i.dpi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dpe, ptr noundef nonnull @.str.25, double noundef %i.dph) #15 ; 0 uses
  %i.dpj = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dpk = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.dpk, i64 72
  %i.dpm = load double, ptr %i.dpl, align 8, !tbaa !9
  %i.dpn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dpj, ptr noundef nonnull @.str.25, double noundef %i.dpm) #15 ; 0 uses
  %i.dpo = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dpp = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpp, i64 80
  %i.dpr = load double, ptr %i.dpq, align 8, !tbaa !9
  %i.dps = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dpo, ptr noundef nonnull @.str.25, double noundef %i.dpr) #15 ; 0 uses
  %i.dpt = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dpu = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dpu, i64 88
  %i.dpw = load double, ptr %i.dpv, align 8, !tbaa !9
  %i.dpx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dpt, ptr noundef nonnull @.str.25, double noundef %i.dpw) #15 ; 0 uses
  %i.dpy = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dpz = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dpz, i64 96
  %i.dqb = load double, ptr %i.dqa, align 8, !tbaa !9
  %i.dqc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dpy, ptr noundef nonnull @.str.25, double noundef %i.dqb) #15 ; 0 uses
  %i.dqd = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dqe = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dqe, i64 104
  %i.dqg = load double, ptr %i.dqf, align 8, !tbaa !9
  %i.dqh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dqd, ptr noundef nonnull @.str.25, double noundef %i.dqg) #15 ; 0 uses
  %i.dqi = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dqj = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dqj, i64 112
  %i.dql = load double, ptr %i.dqk, align 8, !tbaa !9
  %i.dqm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dqi, ptr noundef nonnull @.str.25, double noundef %i.dql) #15 ; 0 uses
  %i.dqn = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dqo = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dqo, i64 120
  %i.dqq = load double, ptr %i.dqp, align 8, !tbaa !9
  %i.dqr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dqn, ptr noundef nonnull @.str.25, double noundef %i.dqq) #15 ; 0 uses
  %i.dqs = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dqt = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqt, i64 128
  %i.dqv = load double, ptr %i.dqu, align 8, !tbaa !9
  %i.dqw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dqs, ptr noundef nonnull @.str.25, double noundef %i.dqv) #15 ; 0 uses
  %i.dqx = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dqy = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dqz = getelementptr inbounds nuw i8, ptr %i.dqy, i64 136
  %i.dra = load double, ptr %i.dqz, align 8, !tbaa !9
  %i.drb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dqx, ptr noundef nonnull @.str.25, double noundef %i.dra) #15 ; 0 uses
  %i.drc = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.drd = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.dre = getelementptr inbounds nuw i8, ptr %i.drd, i64 144
  %i.drf = load double, ptr %i.dre, align 8, !tbaa !9
  %i.drg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.drc, ptr noundef nonnull @.str.25, double noundef %i.drf) #15 ; 0 uses
  %i.drh = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dri = load ptr, ptr %i.dnq, align 8, !tbaa !14
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dri, i64 152
  %i.drk = load double, ptr %i.drj, align 8, !tbaa !9
  %i.drl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.drh, ptr noundef nonnull @.str.25, double noundef %i.drk) #15 ; 0 uses
  %i.drm = load ptr, ptr @stdout, align 8, !tbaa !16
  %fputc1016 = tail call i32 @fputc(i32 10, ptr %i.drm) ; 0 uses
  %indvars.iv.next1649 = add nuw nsw i64 %indvars.iv1648, 1 ; 2 uses
  %exitcond1651.not = icmp eq i64 %indvars.iv.next1649, 20
  br i1 %exitcond1651.not, label %.preheader1198.preheader, label %bb.ji, !llvm.loop !45

.preheader1198.preheader:                         ; preds = %bb.ji
  %i.drn = load ptr, ptr @stdout, align 8, !tbaa !16
  %fwrite1014 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 5, i64 1, ptr %i.drn) ; 0 uses
  %i.dro = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.drp = load i8, ptr @amino, align 16, !tbaa !11
  %i.drq = sext i8 %i.drp to i32
  %i.drr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dro, ptr noundef nonnull @.str.27, i32 noundef %i.drq) #15 ; 0 uses
  %i.drs = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.drt = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 1), align 1, !tbaa !11
  %i.dru = sext i8 %i.drt to i32
  %i.drv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.drs, ptr noundef nonnull @.str.27, i32 noundef %i.dru) #15 ; 0 uses
  %i.drw = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.drx = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 2), align 2, !tbaa !11
  %i.dry = sext i8 %i.drx to i32
  %i.drz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.drw, ptr noundef nonnull @.str.27, i32 noundef %i.dry) #15 ; 0 uses
  %i.dsa = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsb = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 3), align 1, !tbaa !11
  %i.dsc = sext i8 %i.dsb to i32
  %i.dsd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dsa, ptr noundef nonnull @.str.27, i32 noundef %i.dsc) #15 ; 0 uses
  %i.dse = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsf = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 4), align 4, !tbaa !11
  %i.dsg = sext i8 %i.dsf to i32
  %i.dsh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dse, ptr noundef nonnull @.str.27, i32 noundef %i.dsg) #15 ; 0 uses
  %i.dsi = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsj = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 5), align 1, !tbaa !11
  %i.dsk = sext i8 %i.dsj to i32
  %i.dsl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dsi, ptr noundef nonnull @.str.27, i32 noundef %i.dsk) #15 ; 0 uses
  %i.dsm = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsn = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 6), align 2, !tbaa !11
  %i.dso = sext i8 %i.dsn to i32
  %i.dsp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dsm, ptr noundef nonnull @.str.27, i32 noundef %i.dso) #15 ; 0 uses
  %i.dsq = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsr = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 7), align 1, !tbaa !11
  %i.dss = sext i8 %i.dsr to i32
  %i.dst = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dsq, ptr noundef nonnull @.str.27, i32 noundef %i.dss) #15 ; 0 uses
  %i.dsu = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsv = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 8), align 8, !tbaa !11
  %i.dsw = sext i8 %i.dsv to i32
  %i.dsx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dsu, ptr noundef nonnull @.str.27, i32 noundef %i.dsw) #15 ; 0 uses
  %i.dsy = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dsz = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 9), align 1, !tbaa !11
  %i.dta = sext i8 %i.dsz to i32
  %i.dtb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dsy, ptr noundef nonnull @.str.27, i32 noundef %i.dta) #15 ; 0 uses
  %i.dtc = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dtd = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 10), align 2, !tbaa !11
  %i.dte = sext i8 %i.dtd to i32
  %i.dtf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dtc, ptr noundef nonnull @.str.27, i32 noundef %i.dte) #15 ; 0 uses
  %i.dtg = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dth = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 11), align 1, !tbaa !11
  %i.dti = sext i8 %i.dth to i32
  %i.dtj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dtg, ptr noundef nonnull @.str.27, i32 noundef %i.dti) #15 ; 0 uses
  %i.dtk = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dtl = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 12), align 4, !tbaa !11
  %i.dtm = sext i8 %i.dtl to i32
  %i.dtn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dtk, ptr noundef nonnull @.str.27, i32 noundef %i.dtm) #15 ; 0 uses
  %i.dto = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dtp = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 13), align 1, !tbaa !11
  %i.dtq = sext i8 %i.dtp to i32
  %i.dtr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dto, ptr noundef nonnull @.str.27, i32 noundef %i.dtq) #15 ; 0 uses
  %i.dts = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dtt = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 14), align 2, !tbaa !11
  %i.dtu = sext i8 %i.dtt to i32
  %i.dtv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dts, ptr noundef nonnull @.str.27, i32 noundef %i.dtu) #15 ; 0 uses
  %i.dtw = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dtx = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 15), align 1, !tbaa !11
  %i.dty = sext i8 %i.dtx to i32
  %i.dtz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dtw, ptr noundef nonnull @.str.27, i32 noundef %i.dty) #15 ; 0 uses
  %i.dua = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dub = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 16), align 16, !tbaa !11
  %i.duc = sext i8 %i.dub to i32
  %i.dud = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dua, ptr noundef nonnull @.str.27, i32 noundef %i.duc) #15 ; 0 uses
  %i.due = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.duf = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 17), align 1, !tbaa !11
  %i.dug = sext i8 %i.duf to i32
  %i.duh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.due, ptr noundef nonnull @.str.27, i32 noundef %i.dug) #15 ; 0 uses
  %i.dui = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.duj = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 18), align 2, !tbaa !11
  %i.duk = sext i8 %i.duj to i32
  %i.dul = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dui, ptr noundef nonnull @.str.27, i32 noundef %i.duk) #15 ; 0 uses
  %i.dum = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dun = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 19), align 1, !tbaa !11
  %i.duo = sext i8 %i.dun to i32
  %i.dup = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dum, ptr noundef nonnull @.str.27, i32 noundef %i.duo) #15 ; 0 uses
  %.pre2247 = load double, ptr %i.dgd, align 8, !tbaa !9
  %.pre2248 = load double, ptr %i.dgk, align 8, !tbaa !9
  %.pre2249 = load double, ptr %i.dgr, align 8, !tbaa !9
  %.pre2250 = load double, ptr %i.dgy, align 8, !tbaa !9
  %.pre2251 = load double, ptr %i.dhf, align 8, !tbaa !9
  %.pre2252 = load double, ptr %i.dhm, align 8, !tbaa !9
  %.pre2253 = load double, ptr %i.dht, align 8, !tbaa !9
  %.pre2254 = load double, ptr %i.dia, align 8, !tbaa !9
  %.pre2255 = load double, ptr %i.dih, align 8, !tbaa !9
  %.pre2256 = load double, ptr %i.dio, align 8, !tbaa !9
  %.pre2257 = load double, ptr %i.div, align 8, !tbaa !9
  %.pre2258 = load double, ptr %i.djc, align 8, !tbaa !9
  %.pre2259 = load double, ptr %i.djj, align 8, !tbaa !9
  %.pre2260 = load double, ptr %i.djq, align 8, !tbaa !9
  %.pre2261 = load double, ptr %i.djx, align 8, !tbaa !9
  %.pre2262 = load double, ptr %i.dke, align 8, !tbaa !9
  %.pre2296 = load double, ptr %i.dfi, align 8, !tbaa !9
  %.pre2297 = load double, ptr %i.dfp, align 8, !tbaa !9
  %.pre2298 = load double, ptr %i.dfw, align 8, !tbaa !9
  %i.duq = load double, ptr %.0901, align 8, !tbaa !9
  br label %.preheader1198

.preheader1198:                                   ; preds = %.preheader1198.preheader, %.preheader1198
  %indvars.iv1660 = phi i64 [ 0, %.preheader1198.preheader ], [ %indvars.iv.next1661, %.preheader1198 ] ; 3 uses
  %.58991301 = phi double [ 0.000000e+00, %.preheader1198.preheader ], [ %i.dvl, %.preheader1198 ]
  %i.dur = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %indvars.iv1660
  %i.dus = load ptr, ptr %i.dur, align 8, !tbaa !14 ; 10 uses
  %i.dut = getelementptr inbounds nuw [8 x i8], ptr %.0901, i64 %indvars.iv1660
  %i.duu = load double, ptr %i.dut, align 8, !tbaa !9
  %56 = load <2 x double>, ptr %i.dus, align 8, !tbaa !9
  %57 = insertelement <2 x double> poison, double %i.duu, i64 0
  %58 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %59 = fmul <2 x double> %56, %58                ; 2 uses
  %60 = extractelement <2 x double> %59, i64 0
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %i.duq, double %.58991301)
  %62 = extractelement <2 x double> %59, i64 1
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %.pre2296, double %61)
  %64 = getelementptr inbounds nuw i8, ptr %i.dus, i64 16
  %65 = load <2 x double>, ptr %64, align 8, !tbaa !9
  %66 = fmul <2 x double> %65, %58                ; 2 uses
  %67 = extractelement <2 x double> %66, i64 0
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %.pre2297, double %63)
  %69 = extractelement <2 x double> %66, i64 1
  %i.duv = tail call double @llvm.fmuladd.f64(double %69, double %.pre2298, double %68)
  %i.duw = getelementptr inbounds nuw i8, ptr %i.dus, i64 32
  %70 = load <2 x double>, ptr %i.duw, align 8, !tbaa !9
  %71 = fmul <2 x double> %70, %58                ; 2 uses
  %72 = extractelement <2 x double> %71, i64 0
  %73 = tail call double @llvm.fmuladd.f64(double %72, double %.pre2247, double %i.duv)
  %74 = extractelement <2 x double> %71, i64 1
  %i.dux = tail call double @llvm.fmuladd.f64(double %74, double %.pre2248, double %73)
  %i.duy = getelementptr inbounds nuw i8, ptr %i.dus, i64 48
  %75 = load <2 x double>, ptr %i.duy, align 8, !tbaa !9
  %76 = fmul <2 x double> %75, %58                ; 2 uses
  %77 = extractelement <2 x double> %76, i64 0
  %78 = tail call double @llvm.fmuladd.f64(double %77, double %.pre2249, double %i.dux)
  %79 = extractelement <2 x double> %76, i64 1
  %i.duz = tail call double @llvm.fmuladd.f64(double %79, double %.pre2250, double %78)
  %i.dva = getelementptr inbounds nuw i8, ptr %i.dus, i64 64
  %80 = load <2 x double>, ptr %i.dva, align 8, !tbaa !9
  %81 = fmul <2 x double> %80, %58                ; 2 uses
  %82 = extractelement <2 x double> %81, i64 0
  %83 = tail call double @llvm.fmuladd.f64(double %82, double %.pre2251, double %i.duz)
  %84 = extractelement <2 x double> %81, i64 1
  %i.dvb = tail call double @llvm.fmuladd.f64(double %84, double %.pre2252, double %83)
  %i.dvc = getelementptr inbounds nuw i8, ptr %i.dus, i64 80
  %85 = load <2 x double>, ptr %i.dvc, align 8, !tbaa !9
  %86 = fmul <2 x double> %85, %58                ; 2 uses
  %87 = extractelement <2 x double> %86, i64 0
  %88 = tail call double @llvm.fmuladd.f64(double %87, double %.pre2253, double %i.dvb)
  %89 = extractelement <2 x double> %86, i64 1
  %i.dvd = tail call double @llvm.fmuladd.f64(double %89, double %.pre2254, double %88)
  %i.dve = getelementptr inbounds nuw i8, ptr %i.dus, i64 96
  %90 = load <2 x double>, ptr %i.dve, align 8, !tbaa !9
  %91 = fmul <2 x double> %90, %58                ; 2 uses
  %92 = extractelement <2 x double> %91, i64 0
  %93 = tail call double @llvm.fmuladd.f64(double %92, double %.pre2255, double %i.dvd)
  %94 = extractelement <2 x double> %91, i64 1
  %i.dvf = tail call double @llvm.fmuladd.f64(double %94, double %.pre2256, double %93)
  %i.dvg = getelementptr inbounds nuw i8, ptr %i.dus, i64 112
  %95 = load <2 x double>, ptr %i.dvg, align 8, !tbaa !9
  %96 = fmul <2 x double> %95, %58                ; 2 uses
  %97 = extractelement <2 x double> %96, i64 0
  %98 = tail call double @llvm.fmuladd.f64(double %97, double %.pre2257, double %i.dvf)
  %99 = extractelement <2 x double> %96, i64 1
  %i.dvh = tail call double @llvm.fmuladd.f64(double %99, double %.pre2258, double %98)
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dus, i64 128
  %100 = load <2 x double>, ptr %i.dvi, align 8, !tbaa !9
  %101 = fmul <2 x double> %100, %58              ; 2 uses
  %102 = extractelement <2 x double> %101, i64 0
  %103 = tail call double @llvm.fmuladd.f64(double %102, double %.pre2259, double %i.dvh)
  %104 = extractelement <2 x double> %101, i64 1
  %i.dvj = tail call double @llvm.fmuladd.f64(double %104, double %.pre2260, double %103)
  %i.dvk = getelementptr inbounds nuw i8, ptr %i.dus, i64 144
  %105 = load <2 x double>, ptr %i.dvk, align 8, !tbaa !9
  %106 = fmul <2 x double> %105, %58              ; 2 uses
  %107 = extractelement <2 x double> %106, i64 0
  %108 = tail call double @llvm.fmuladd.f64(double %107, double %.pre2261, double %i.dvj)
  %109 = extractelement <2 x double> %106, i64 1
  %i.dvl = tail call double @llvm.fmuladd.f64(double %109, double %.pre2262, double %108) ; 2 uses
  %indvars.iv.next1661 = add nuw nsw i64 %indvars.iv1660, 1 ; 2 uses
  %exitcond1663.not = icmp eq i64 %indvars.iv.next1661, 20
  br i1 %exitcond1663.not, label %bb.jj, label %.preheader1198, !llvm.loop !46

bb.jj:                                            ; preds = %.preheader1198
  %i.dvm = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dvn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dvm, ptr noundef nonnull @.str.4, double noundef %i.dvl) #15 ; 0 uses
  %i.dvo = load ptr, ptr %i.cxc, align 8, !tbaa !14
  %i.dvp = load double, ptr %i.dvo, align 8, !tbaa !9
  %i.dvq = load double, ptr %.0901, align 8, !tbaa !9
  %i.dvr = tail call double @llvm.fmuladd.f64(double %i.dvp, double %i.dvq, double 0.000000e+00)
  %i.dvs = load ptr, ptr %i.dfe, align 8, !tbaa !14
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvs, i64 8
  %i.dvu = load double, ptr %i.dvt, align 8, !tbaa !9
  %i.dvv = load double, ptr %i.dfi, align 8, !tbaa !9
  %i.dvw = tail call double @llvm.fmuladd.f64(double %i.dvu, double %i.dvv, double %i.dvr)
  %i.dvx = load ptr, ptr %i.dfl, align 8, !tbaa !14
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvx, i64 16
  %i.dvz = load double, ptr %i.dvy, align 8, !tbaa !9
  %i.dwa = load double, ptr %i.dfp, align 8, !tbaa !9
  %i.dwb = tail call double @llvm.fmuladd.f64(double %i.dvz, double %i.dwa, double %i.dvw)
  %i.dwc = load ptr, ptr %i.dfs, align 8, !tbaa !14
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dwc, i64 24
  %i.dwe = load double, ptr %i.dwd, align 8, !tbaa !9
  %i.dwf = load double, ptr %i.dfw, align 8, !tbaa !9
  %i.dwg = tail call double @llvm.fmuladd.f64(double %i.dwe, double %i.dwf, double %i.dwb)
  %i.dwh = load ptr, ptr %i.dfz, align 8, !tbaa !14
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwh, i64 32
  %i.dwj = load double, ptr %i.dwi, align 8, !tbaa !9
  %i.dwk = load double, ptr %i.dgd, align 8, !tbaa !9
  %i.dwl = tail call double @llvm.fmuladd.f64(double %i.dwj, double %i.dwk, double %i.dwg)
  %i.dwm = load ptr, ptr %i.dgg, align 8, !tbaa !14
  %i.dwn = getelementptr inbounds nuw i8, ptr %i.dwm, i64 40
  %i.dwo = load double, ptr %i.dwn, align 8, !tbaa !9
  %i.dwp = load double, ptr %i.dgk, align 8, !tbaa !9
  %i.dwq = tail call double @llvm.fmuladd.f64(double %i.dwo, double %i.dwp, double %i.dwl)
  %i.dwr = load ptr, ptr %i.dgn, align 8, !tbaa !14
  %i.dws = getelementptr inbounds nuw i8, ptr %i.dwr, i64 48
  %i.dwt = load double, ptr %i.dws, align 8, !tbaa !9
  %i.dwu = load double, ptr %i.dgr, align 8, !tbaa !9
  %i.dwv = tail call double @llvm.fmuladd.f64(double %i.dwt, double %i.dwu, double %i.dwq)
  %i.dww = load ptr, ptr %i.dgu, align 8, !tbaa !14
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dww, i64 56
  %i.dwy = load double, ptr %i.dwx, align 8, !tbaa !9
  %i.dwz = load double, ptr %i.dgy, align 8, !tbaa !9
  %i.dxa = tail call double @llvm.fmuladd.f64(double %i.dwy, double %i.dwz, double %i.dwv)
  %i.dxb = load ptr, ptr %i.dhb, align 8, !tbaa !14
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dxb, i64 64
  %i.dxd = load double, ptr %i.dxc, align 8, !tbaa !9
  %i.dxe = load double, ptr %i.dhf, align 8, !tbaa !9
  %i.dxf = tail call double @llvm.fmuladd.f64(double %i.dxd, double %i.dxe, double %i.dxa)
  %i.dxg = load ptr, ptr %i.dhi, align 8, !tbaa !14
  %i.dxh = getelementptr inbounds nuw i8, ptr %i.dxg, i64 72
  %i.dxi = load double, ptr %i.dxh, align 8, !tbaa !9
  %i.dxj = load double, ptr %i.dhm, align 8, !tbaa !9
  %i.dxk = tail call double @llvm.fmuladd.f64(double %i.dxi, double %i.dxj, double %i.dxf)
  %i.dxl = load ptr, ptr %i.dhp, align 8, !tbaa !14
  %i.dxm = getelementptr inbounds nuw i8, ptr %i.dxl, i64 80
  %i.dxn = load double, ptr %i.dxm, align 8, !tbaa !9
  %i.dxo = load double, ptr %i.dht, align 8, !tbaa !9
  %i.dxp = tail call double @llvm.fmuladd.f64(double %i.dxn, double %i.dxo, double %i.dxk)
  %i.dxq = load ptr, ptr %i.dhw, align 8, !tbaa !14
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dxq, i64 88
  %i.dxs = load double, ptr %i.dxr, align 8, !tbaa !9
  %i.dxt = load double, ptr %i.dia, align 8, !tbaa !9
  %i.dxu = tail call double @llvm.fmuladd.f64(double %i.dxs, double %i.dxt, double %i.dxp)
  %i.dxv = load ptr, ptr %i.did, align 8, !tbaa !14
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxv, i64 96
  %i.dxx = load double, ptr %i.dxw, align 8, !tbaa !9
  %i.dxy = load double, ptr %i.dih, align 8, !tbaa !9
  %i.dxz = tail call double @llvm.fmuladd.f64(double %i.dxx, double %i.dxy, double %i.dxu)
  %i.dya = load ptr, ptr %i.dik, align 8, !tbaa !14
  %i.dyb = getelementptr inbounds nuw i8, ptr %i.dya, i64 104
  %i.dyc = load double, ptr %i.dyb, align 8, !tbaa !9
  %i.dyd = load double, ptr %i.dio, align 8, !tbaa !9
  %i.dye = tail call double @llvm.fmuladd.f64(double %i.dyc, double %i.dyd, double %i.dxz)
  %i.dyf = load ptr, ptr %i.dir, align 8, !tbaa !14
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.dyf, i64 112
  %i.dyh = load double, ptr %i.dyg, align 8, !tbaa !9
  %i.dyi = load double, ptr %i.div, align 8, !tbaa !9
  %i.dyj = tail call double @llvm.fmuladd.f64(double %i.dyh, double %i.dyi, double %i.dye)
  %i.dyk = load ptr, ptr %i.diy, align 8, !tbaa !14
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dyk, i64 120
  %i.dym = load double, ptr %i.dyl, align 8, !tbaa !9
  %i.dyn = load double, ptr %i.djc, align 8, !tbaa !9
  %i.dyo = tail call double @llvm.fmuladd.f64(double %i.dym, double %i.dyn, double %i.dyj)
  %i.dyp = load ptr, ptr %i.djf, align 8, !tbaa !14
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 128
  %i.dyr = load double, ptr %i.dyq, align 8, !tbaa !9
  %i.dys = load double, ptr %i.djj, align 8, !tbaa !9
  %i.dyt = tail call double @llvm.fmuladd.f64(double %i.dyr, double %i.dys, double %i.dyo)
  %i.dyu = load ptr, ptr %i.djm, align 8, !tbaa !14
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 136
  %i.dyw = load double, ptr %i.dyv, align 8, !tbaa !9
  %i.dyx = load double, ptr %i.djq, align 8, !tbaa !9
  %i.dyy = tail call double @llvm.fmuladd.f64(double %i.dyw, double %i.dyx, double %i.dyt)
  %i.dyz = load ptr, ptr %i.djt, align 8, !tbaa !14
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyz, i64 144
  %i.dzb = load double, ptr %i.dza, align 8, !tbaa !9
  %i.dzc = load double, ptr %i.djx, align 8, !tbaa !9
  %i.dzd = tail call double @llvm.fmuladd.f64(double %i.dzb, double %i.dzc, double %i.dyy)
  %i.dze = load ptr, ptr %i.dka, align 8, !tbaa !14
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dze, i64 152
  %i.dzg = load double, ptr %i.dzf, align 8, !tbaa !9
  %i.dzh = load double, ptr %i.dke, align 8, !tbaa !9
  %i.dzi = tail call double @llvm.fmuladd.f64(double %i.dzg, double %i.dzh, double %i.dzd)
  %i.dzj = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.dzk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dzj, ptr noundef nonnull @.str.28, double noundef %i.dzi) #15 ; 0 uses
  %i.dzl = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.dzm = load i32, ptr @penalty, align 4, !tbaa !7
  %i.dzn = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.dzo = load i32, ptr @offset, align 4, !tbaa !7
  %i.dzp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dzl, ptr noundef nonnull @.str.29, i32 noundef %i.dzm, i32 noundef %i.dzn, i32 noundef %i.dzo) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

.preheader1194:                                   ; preds = %.preheader1196.preheader, %.preheader1194
  %indvars.iv1678 = phi i64 [ 0, %.preheader1196.preheader ], [ %indvars.iv.next1679, %.preheader1194 ] ; 3 uses
  %i.dzq = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %indvars.iv1678
  %i.dzr = load ptr, ptr %i.dzq, align 8, !tbaa !14 ; 5 uses
  %i.dzs = getelementptr inbounds nuw [104 x i8], ptr @n_dis, i64 %indvars.iv1678 ; 5 uses
  %i.dzt = load <4 x double>, ptr %i.dzr, align 8, !tbaa !9
  %i.dzu = fptosi <4 x double> %i.dzt to <4 x i32>
  store <4 x i32> %i.dzu, ptr %i.dzs, align 8, !tbaa !7
  %i.dzv = getelementptr inbounds nuw i8, ptr %i.dzr, i64 32
  %i.dzw = getelementptr inbounds nuw i8, ptr %i.dzs, i64 16
  %i.dzx = load <4 x double>, ptr %i.dzv, align 8, !tbaa !9
  %i.dzy = fptosi <4 x double> %i.dzx to <4 x i32>
  store <4 x i32> %i.dzy, ptr %i.dzw, align 8, !tbaa !7
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dzr, i64 64
  %i.eaa = getelementptr inbounds nuw i8, ptr %i.dzs, i64 32
  %i.eab = load <4 x double>, ptr %i.dzz, align 8, !tbaa !9
  %i.eac = fptosi <4 x double> %i.eab to <4 x i32>
  store <4 x i32> %i.eac, ptr %i.eaa, align 8, !tbaa !7
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dzr, i64 96
  %i.eae = getelementptr inbounds nuw i8, ptr %i.dzs, i64 48
  %i.eaf = load <4 x double>, ptr %i.ead, align 8, !tbaa !9
  %i.eag = fptosi <4 x double> %i.eaf to <4 x i32>
  store <4 x i32> %i.eag, ptr %i.eae, align 8, !tbaa !7
  %i.eah = getelementptr inbounds nuw i8, ptr %i.dzr, i64 128
  %i.eai = getelementptr inbounds nuw i8, ptr %i.dzs, i64 64
  %i.eaj = load <4 x double>, ptr %i.eah, align 8, !tbaa !9
  %i.eak = fptosi <4 x double> %i.eaj to <4 x i32>
  store <4 x i32> %i.eak, ptr %i.eai, align 8, !tbaa !7
  %indvars.iv.next1679 = add nuw nsw i64 %indvars.iv1678, 1 ; 2 uses
  %exitcond1681.not = icmp eq i64 %indvars.iv.next1679, 20
  br i1 %exitcond1681.not, label %bb.jk, label %.preheader1194, !llvm.loop !47

bb.jk:                                            ; preds = %.preheader1194
  tail call void @FreeDoubleMtx(ptr noundef nonnull %i.cxc) #15
  tail call void @FreeDoubleVec(ptr noundef %i.cxd) #15
  tail call void @FreeDoubleVec(ptr noundef %i.cxe) #15
  %i.eal = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite1012 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 6, i64 1, ptr %i.eal) #18 ; 0 uses
  br label %.preheader1121.preheader

bb.jl:                                            ; preds = %bb.ih
  %i.eam = icmp eq i32 %i.cxa, 2
  %or.cond3 = select i1 %i.cwz, i1 %i.eam, i1 false
  br i1 %or.cond3, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.ean = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite1010 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %i.ean) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.jn:                                            ; preds = %bb.jl
  %i.eao = tail call ptr @AllocateDoubleMtx(i32 noundef 20, i32 noundef 20) #15 ; 4 uses
  %i.eap = tail call ptr @AllocateDoubleMtx(i32 noundef 20, i32 noundef 20) #15 ; 4 uses
  %i.eaq = tail call ptr @AllocateDoubleMtx(i32 noundef 20, i32 noundef 20) #15 ; 34 uses
  %i.ear = tail call ptr @AllocateDoubleVec(i32 noundef 20) #15 ; 45 uses
  %i.eas = tail call ptr @AllocateDoubleVec(i32 noundef 20) #15 ; 3 uses
  %i.eat = tail call ptr @AllocateDoubleVec(i32 noundef 20) #15 ; 3 uses
  %i.eau = load i32, ptr @ppenalty, align 4, !tbaa !7 ; 2 uses
  %i.eav = icmp eq i32 %i.eau, 100009
  br i1 %i.eav, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store i32 -1530, ptr @ppenalty, align 4, !tbaa !7
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.eaw = phi i32 [ -1530, %bb.jo ], [ %i.eau, %bb.jn ]
  %i.eax = load i32, ptr @ppenalty_OP, align 4, !tbaa !7 ; 2 uses
  %i.eay = icmp eq i32 %i.eax, 100009
  br i1 %i.eay, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  store i32 -1530, ptr @ppenalty_OP, align 4, !tbaa !7
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.eaz = phi i32 [ -1530, %bb.jq ], [ %i.eax, %bb.jp ]
  %i.eba = load i32, ptr @ppenalty_ex, align 4, !tbaa !7 ; 2 uses
  %i.ebb = icmp eq i32 %i.eba, 100009
  br i1 %i.ebb, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  store i32 0, ptr @ppenalty_ex, align 4, !tbaa !7
end_hunk_1
begin_hunk_2_@constants:bb.a
  br label %.preheader1232

.preheader1232:                                   ; preds = %.preheader1232.preheader, %.preheader1232
  %indvars.iv1499 = phi i64 [ %indvars.iv.next1500, %.preheader1232 ], [ 0, %.preheader1232.preheader ] ; 2 uses
  %i.epo = getelementptr inbounds nuw [8 x i8], ptr %i.eaq, i64 %indvars.iv1499
  %i.epp = load ptr, ptr %i.epo, align 8, !tbaa !14 ; 21 uses
  %i.epq = load double, ptr %i.ear, align 8, !tbaa !9
  %i.epr = load double, ptr %i.epp, align 8, !tbaa !9
  %i.eps = fdiv double %i.epr, %i.epq
  store double %i.eps, ptr %i.epp, align 8, !tbaa !9
  %i.ept = load double, ptr %i.ekb, align 8, !tbaa !9
  %i.epu = getelementptr inbounds nuw i8, ptr %i.epp, i64 8 ; 2 uses
  %i.epv = load double, ptr %i.epu, align 8, !tbaa !9
  %i.epw = fdiv double %i.epv, %i.ept
  store double %i.epw, ptr %i.epu, align 8, !tbaa !9
  %i.epx = load double, ptr %i.ekc, align 8, !tbaa !9
  %i.epy = getelementptr inbounds nuw i8, ptr %i.epp, i64 16 ; 2 uses
  %i.epz = load double, ptr %i.epy, align 8, !tbaa !9
  %i.eqa = fdiv double %i.epz, %i.epx
  store double %i.eqa, ptr %i.epy, align 8, !tbaa !9
  %i.eqb = load double, ptr %i.ekd, align 8, !tbaa !9
  %i.eqc = getelementptr inbounds nuw i8, ptr %i.epp, i64 24 ; 2 uses
  %i.eqd = load double, ptr %i.eqc, align 8, !tbaa !9
  %i.eqe = fdiv double %i.eqd, %i.eqb
  store double %i.eqe, ptr %i.eqc, align 8, !tbaa !9
  %i.eqf = load double, ptr %i.eke, align 8, !tbaa !9
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.epp, i64 32 ; 2 uses
  %i.eqh = load double, ptr %i.eqg, align 8, !tbaa !9
  %i.eqi = fdiv double %i.eqh, %i.eqf
  store double %i.eqi, ptr %i.eqg, align 8, !tbaa !9
  %i.eqj = load double, ptr %i.ekf, align 8, !tbaa !9
  %i.eqk = getelementptr inbounds nuw i8, ptr %i.epp, i64 40 ; 2 uses
  %i.eql = load double, ptr %i.eqk, align 8, !tbaa !9
  %i.eqm = fdiv double %i.eql, %i.eqj
  store double %i.eqm, ptr %i.eqk, align 8, !tbaa !9
  %i.eqn = load double, ptr %i.ekg, align 8, !tbaa !9
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.epp, i64 48 ; 2 uses
  %i.eqp = load double, ptr %i.eqo, align 8, !tbaa !9
  %i.eqq = fdiv double %i.eqp, %i.eqn
  store double %i.eqq, ptr %i.eqo, align 8, !tbaa !9
  %i.eqr = load double, ptr %i.ekh, align 8, !tbaa !9
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.epp, i64 56 ; 2 uses
  %i.eqt = load double, ptr %i.eqs, align 8, !tbaa !9
  %i.equ = fdiv double %i.eqt, %i.eqr
  store double %i.equ, ptr %i.eqs, align 8, !tbaa !9
  %i.eqv = load double, ptr %i.eki, align 8, !tbaa !9
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.epp, i64 64 ; 2 uses
  %i.eqx = load double, ptr %i.eqw, align 8, !tbaa !9
  %i.eqy = fdiv double %i.eqx, %i.eqv
  store double %i.eqy, ptr %i.eqw, align 8, !tbaa !9
  %i.eqz = load double, ptr %i.ekj, align 8, !tbaa !9
  %i.era = getelementptr inbounds nuw i8, ptr %i.epp, i64 72 ; 2 uses
  %i.erb = load double, ptr %i.era, align 8, !tbaa !9
  %i.erc = fdiv double %i.erb, %i.eqz
  store double %i.erc, ptr %i.era, align 8, !tbaa !9
  %i.erd = load double, ptr %i.ekk, align 8, !tbaa !9
  %i.ere = getelementptr inbounds nuw i8, ptr %i.epp, i64 80 ; 2 uses
  %i.erf = load double, ptr %i.ere, align 8, !tbaa !9
  %i.erg = fdiv double %i.erf, %i.erd
  store double %i.erg, ptr %i.ere, align 8, !tbaa !9
  %i.erh = load double, ptr %i.ekl, align 8, !tbaa !9
  %i.eri = getelementptr inbounds nuw i8, ptr %i.epp, i64 88 ; 2 uses
  %i.erj = load double, ptr %i.eri, align 8, !tbaa !9
  %i.erk = fdiv double %i.erj, %i.erh
  store double %i.erk, ptr %i.eri, align 8, !tbaa !9
  %i.erl = load double, ptr %i.ekm, align 8, !tbaa !9
  %i.erm = getelementptr inbounds nuw i8, ptr %i.epp, i64 96 ; 2 uses
  %i.ern = load double, ptr %i.erm, align 8, !tbaa !9
  %i.ero = fdiv double %i.ern, %i.erl
  store double %i.ero, ptr %i.erm, align 8, !tbaa !9
  %i.erp = load double, ptr %i.ekn, align 8, !tbaa !9
  %i.erq = getelementptr inbounds nuw i8, ptr %i.epp, i64 104 ; 2 uses
  %i.err = load double, ptr %i.erq, align 8, !tbaa !9
  %i.ers = fdiv double %i.err, %i.erp
  store double %i.ers, ptr %i.erq, align 8, !tbaa !9
  %i.ert = load double, ptr %i.eko, align 8, !tbaa !9
  %i.eru = getelementptr inbounds nuw i8, ptr %i.epp, i64 112 ; 2 uses
  %i.erv = load double, ptr %i.eru, align 8, !tbaa !9
  %i.erw = fdiv double %i.erv, %i.ert
  store double %i.erw, ptr %i.eru, align 8, !tbaa !9
  %i.erx = load double, ptr %i.ekp, align 8, !tbaa !9
  %i.ery = getelementptr inbounds nuw i8, ptr %i.epp, i64 120 ; 2 uses
  %i.erz = load double, ptr %i.ery, align 8, !tbaa !9
  %i.esa = fdiv double %i.erz, %i.erx
  store double %i.esa, ptr %i.ery, align 8, !tbaa !9
  %i.esb = load double, ptr %i.ekq, align 8, !tbaa !9
  %i.esc = getelementptr inbounds nuw i8, ptr %i.epp, i64 128 ; 2 uses
  %i.esd = load double, ptr %i.esc, align 8, !tbaa !9
  %i.ese = fdiv double %i.esd, %i.esb
  store double %i.ese, ptr %i.esc, align 8, !tbaa !9
  %i.esf = load double, ptr %i.ekr, align 8, !tbaa !9
  %i.esg = getelementptr inbounds nuw i8, ptr %i.epp, i64 136 ; 2 uses
  %i.esh = load double, ptr %i.esg, align 8, !tbaa !9
  %i.esi = fdiv double %i.esh, %i.esf
  store double %i.esi, ptr %i.esg, align 8, !tbaa !9
  %i.esj = load double, ptr %i.eks, align 8, !tbaa !9
  %i.esk = getelementptr inbounds nuw i8, ptr %i.epp, i64 144 ; 2 uses
  %i.esl = load double, ptr %i.esk, align 8, !tbaa !9
  %i.esm = fdiv double %i.esl, %i.esj
  store double %i.esm, ptr %i.esk, align 8, !tbaa !9
  %i.esn = load double, ptr %i.ekt, align 8, !tbaa !9
  %i.eso = getelementptr inbounds nuw i8, ptr %i.epp, i64 152 ; 2 uses
  %i.esp = load double, ptr %i.eso, align 8, !tbaa !9
  %i.esq = fdiv double %i.esp, %i.esn
  store double %i.esq, ptr %i.eso, align 8, !tbaa !9
  %indvars.iv.next1500 = add nuw nsw i64 %indvars.iv1499, 1 ; 2 uses
  %exitcond1502.not = icmp eq i64 %indvars.iv.next1500, 20
  br i1 %exitcond1502.not, label %.preheader1230, label %.preheader1232, !llvm.loop !53

.preheader1230:                                   ; preds = %.preheader1232, %bb.ko
  %indvars.iv1507 = phi i64 [ %indvars.iv.next1508, %bb.ko ], [ 0, %.preheader1232 ] ; 3 uses
  %i.esr = getelementptr inbounds nuw [8 x i8], ptr %i.eaq, i64 %indvars.iv1507 ; 2 uses
  %.pre = load ptr, ptr %i.esr, align 8, !tbaa !14
  %i.ess = trunc nuw nsw i64 %indvars.iv1507 to i32
  br label %bb.km

bb.km:                                            ; preds = %.preheader1230, %._crit_edge
  %i.est = phi ptr [ %.pre, %.preheader1230 ], [ %i.etd, %._crit_edge ] ; 2 uses
  %indvars.iv1503 = phi i64 [ 0, %.preheader1230 ], [ %indvars.iv.next1504, %._crit_edge ] ; 5 uses
  %i.esu = getelementptr inbounds nuw [8 x i8], ptr %i.est, i64 %indvars.iv1503
  %i.esv = load double, ptr %i.esu, align 8, !tbaa !9 ; 2 uses
  %i.esw = fcmp oeq double %i.esv, 0.000000e+00
  br i1 %i.esw, label %bb.kn, label %._crit_edge

bb.kn:                                            ; preds = %bb.km
  %i.esx = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.esy = trunc nuw nsw i64 %indvars.iv1503 to i32
  %i.esz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.esx, ptr noundef nonnull @.str.38, i32 noundef %i.ess, i32 noundef %i.esy) #16 ; 0 uses
  %i.eta = load ptr, ptr %i.esr, align 8, !tbaa !14 ; 2 uses
  %i.etb = getelementptr inbounds nuw [8 x i8], ptr %i.eta, i64 %indvars.iv1503
  store double 1.000000e-05, ptr %i.etb, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.km, %bb.kn
  %i.etc = phi double [ 1.000000e-05, %bb.kn ], [ %i.esv, %bb.km ]
  %i.etd = phi ptr [ %i.eta, %bb.kn ], [ %i.est, %bb.km ] ; 2 uses
  %i.ete = getelementptr inbounds nuw [8 x i8], ptr %i.etd, i64 %indvars.iv1503
  %i.etf = tail call double @log10(double noundef %i.etc) #15, !tbaa !7
  %i.etg = fmul double %i.etf, 1.000000e+03
  store double %i.etg, ptr %i.ete, align 8, !tbaa !9
  %indvars.iv.next1504 = add nuw nsw i64 %indvars.iv1503, 1 ; 2 uses
  %exitcond1506.not = icmp eq i64 %indvars.iv.next1504, 20
  br i1 %exitcond1506.not, label %bb.ko, label %bb.km, !llvm.loop !54

bb.ko:                                            ; preds = %._crit_edge
  %indvars.iv.next1508 = add nuw nsw i64 %indvars.iv1507, 1 ; 2 uses
  %exitcond1510.not = icmp eq i64 %indvars.iv.next1508, 20
  br i1 %exitcond1510.not, label %bb.kp, label %.preheader1230, !llvm.loop !55

bb.kp:                                            ; preds = %bb.ko
  %i.eth = load i32, ptr @fmodel, align 4, !tbaa !7
  %i.eti = icmp eq i32 %i.eth, -1
  br i1 %i.eti, label %.loopexit1229, label %.preheader1227.preheader

.preheader1227.preheader:                         ; preds = %bb.kp
  %.phi.trans.insert2175 = getelementptr inbounds nuw i8, ptr %.0893, i64 32
  %.pre2176 = load double, ptr %.phi.trans.insert2175, align 8, !tbaa !9
  %.phi.trans.insert2177 = getelementptr inbounds nuw i8, ptr %.0893, i64 40
  %.pre2178 = load double, ptr %.phi.trans.insert2177, align 8, !tbaa !9
  %.phi.trans.insert2179 = getelementptr inbounds nuw i8, ptr %.0893, i64 48
  %.pre2180 = load double, ptr %.phi.trans.insert2179, align 8, !tbaa !9
  %.phi.trans.insert2181 = getelementptr inbounds nuw i8, ptr %.0893, i64 56
  %.pre2182 = load double, ptr %.phi.trans.insert2181, align 8, !tbaa !9
  %.phi.trans.insert2183 = getelementptr inbounds nuw i8, ptr %.0893, i64 64
  %.pre2184 = load double, ptr %.phi.trans.insert2183, align 8, !tbaa !9
  %.phi.trans.insert2185 = getelementptr inbounds nuw i8, ptr %.0893, i64 72
  %.pre2186 = load double, ptr %.phi.trans.insert2185, align 8, !tbaa !9
  %.phi.trans.insert2187 = getelementptr inbounds nuw i8, ptr %.0893, i64 80
  %.pre2188 = load double, ptr %.phi.trans.insert2187, align 8, !tbaa !9
  %.phi.trans.insert2189 = getelementptr inbounds nuw i8, ptr %.0893, i64 88
  %.pre2190 = load double, ptr %.phi.trans.insert2189, align 8, !tbaa !9
  %.phi.trans.insert2191 = getelementptr inbounds nuw i8, ptr %.0893, i64 96
  %.pre2192 = load double, ptr %.phi.trans.insert2191, align 8, !tbaa !9
  %.phi.trans.insert2193 = getelementptr inbounds nuw i8, ptr %.0893, i64 104
  %.pre2194 = load double, ptr %.phi.trans.insert2193, align 8, !tbaa !9
  %.phi.trans.insert2195 = getelementptr inbounds nuw i8, ptr %.0893, i64 112
  %.pre2196 = load double, ptr %.phi.trans.insert2195, align 8, !tbaa !9
  %.phi.trans.insert2197 = getelementptr inbounds nuw i8, ptr %.0893, i64 120
  %.pre2198 = load double, ptr %.phi.trans.insert2197, align 8, !tbaa !9
  %.phi.trans.insert2199 = getelementptr inbounds nuw i8, ptr %.0893, i64 128
  %.pre2200 = load double, ptr %.phi.trans.insert2199, align 8, !tbaa !9
  %.phi.trans.insert2201 = getelementptr inbounds nuw i8, ptr %.0893, i64 136
  %.pre2202 = load double, ptr %.phi.trans.insert2201, align 8, !tbaa !9
  %i.etj = load double, ptr %.0893, align 8, !tbaa !9
  %i.etk = getelementptr inbounds nuw i8, ptr %.0893, i64 8
  %i.etl = load double, ptr %i.etk, align 8, !tbaa !9
  %i.etm = getelementptr inbounds nuw i8, ptr %.0893, i64 16
  %i.etn = load double, ptr %i.etm, align 8, !tbaa !9
  %i.eto = getelementptr inbounds nuw i8, ptr %.0893, i64 24
  %i.etp = load double, ptr %i.eto, align 8, !tbaa !9
  %i.etq = getelementptr inbounds nuw i8, ptr %.0893, i64 144
  %i.etr = load double, ptr %i.etq, align 8, !tbaa !9
  %i.ets = getelementptr inbounds nuw i8, ptr %.0893, i64 152
  %i.ett = load double, ptr %i.ets, align 8, !tbaa !9
  br label %.preheader1227

.preheader1227:                                   ; preds = %.preheader1227.preheader, %.preheader1227
  %indvars.iv1515 = phi i64 [ 0, %.preheader1227.preheader ], [ %indvars.iv.next1516, %.preheader1227 ] ; 3 uses
  %.08911255 = phi double [ 0.000000e+00, %.preheader1227.preheader ], [ %i.euo, %.preheader1227 ]
  %i.etu = getelementptr inbounds nuw [8 x i8], ptr %i.eaq, i64 %indvars.iv1515
  %i.etv = load ptr, ptr %i.etu, align 8, !tbaa !14 ; 10 uses
  %i.etw = getelementptr inbounds nuw [8 x i8], ptr %.0893, i64 %indvars.iv1515
  %i.etx = load double, ptr %i.etw, align 8, !tbaa !9
  %110 = load <2 x double>, ptr %i.etv, align 8, !tbaa !9
  %111 = insertelement <2 x double> poison, double %i.etx, i64 0
  %112 = shufflevector <2 x double> %111, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %113 = fmul <2 x double> %110, %112             ; 2 uses
  %114 = extractelement <2 x double> %113, i64 0
  %115 = tail call double @llvm.fmuladd.f64(double %114, double %i.etj, double %.08911255)
  %116 = extractelement <2 x double> %113, i64 1
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %i.etl, double %115)
  %118 = getelementptr inbounds nuw i8, ptr %i.etv, i64 16
  %119 = load <2 x double>, ptr %118, align 8, !tbaa !9
  %120 = fmul <2 x double> %119, %112             ; 2 uses
  %121 = extractelement <2 x double> %120, i64 0
  %122 = tail call double @llvm.fmuladd.f64(double %121, double %i.etn, double %117)
  %123 = extractelement <2 x double> %120, i64 1
  %i.ety = tail call double @llvm.fmuladd.f64(double %123, double %i.etp, double %122)
  %i.etz = getelementptr inbounds nuw i8, ptr %i.etv, i64 32
  %124 = load <2 x double>, ptr %i.etz, align 8, !tbaa !9
  %125 = fmul <2 x double> %124, %112             ; 2 uses
  %126 = extractelement <2 x double> %125, i64 0
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %.pre2176, double %i.ety)
  %128 = extractelement <2 x double> %125, i64 1
  %i.eua = tail call double @llvm.fmuladd.f64(double %128, double %.pre2178, double %127)
  %i.eub = getelementptr inbounds nuw i8, ptr %i.etv, i64 48
  %129 = load <2 x double>, ptr %i.eub, align 8, !tbaa !9
  %130 = fmul <2 x double> %129, %112             ; 2 uses
  %131 = extractelement <2 x double> %130, i64 0
  %132 = tail call double @llvm.fmuladd.f64(double %131, double %.pre2180, double %i.eua)
  %133 = extractelement <2 x double> %130, i64 1
  %i.euc = tail call double @llvm.fmuladd.f64(double %133, double %.pre2182, double %132)
  %i.eud = getelementptr inbounds nuw i8, ptr %i.etv, i64 64
  %134 = load <2 x double>, ptr %i.eud, align 8, !tbaa !9
  %135 = fmul <2 x double> %134, %112             ; 2 uses
  %136 = extractelement <2 x double> %135, i64 0
  %137 = tail call double @llvm.fmuladd.f64(double %136, double %.pre2184, double %i.euc)
  %138 = extractelement <2 x double> %135, i64 1
  %i.eue = tail call double @llvm.fmuladd.f64(double %138, double %.pre2186, double %137)
  %i.euf = getelementptr inbounds nuw i8, ptr %i.etv, i64 80
  %139 = load <2 x double>, ptr %i.euf, align 8, !tbaa !9
  %140 = fmul <2 x double> %139, %112             ; 2 uses
  %141 = extractelement <2 x double> %140, i64 0
  %142 = tail call double @llvm.fmuladd.f64(double %141, double %.pre2188, double %i.eue)
  %143 = extractelement <2 x double> %140, i64 1
  %i.eug = tail call double @llvm.fmuladd.f64(double %143, double %.pre2190, double %142)
  %i.euh = getelementptr inbounds nuw i8, ptr %i.etv, i64 96
  %144 = load <2 x double>, ptr %i.euh, align 8, !tbaa !9
  %145 = fmul <2 x double> %144, %112             ; 2 uses
  %146 = extractelement <2 x double> %145, i64 0
  %147 = tail call double @llvm.fmuladd.f64(double %146, double %.pre2192, double %i.eug)
  %148 = extractelement <2 x double> %145, i64 1
  %i.eui = tail call double @llvm.fmuladd.f64(double %148, double %.pre2194, double %147)
  %i.euj = getelementptr inbounds nuw i8, ptr %i.etv, i64 112
  %149 = load <2 x double>, ptr %i.euj, align 8, !tbaa !9
  %150 = fmul <2 x double> %149, %112             ; 2 uses
  %151 = extractelement <2 x double> %150, i64 0
  %152 = tail call double @llvm.fmuladd.f64(double %151, double %.pre2196, double %i.eui)
  %153 = extractelement <2 x double> %150, i64 1
  %i.euk = tail call double @llvm.fmuladd.f64(double %153, double %.pre2198, double %152)
  %i.eul = getelementptr inbounds nuw i8, ptr %i.etv, i64 128
  %154 = load <2 x double>, ptr %i.eul, align 8, !tbaa !9
  %155 = fmul <2 x double> %154, %112             ; 2 uses
  %156 = extractelement <2 x double> %155, i64 0
  %157 = tail call double @llvm.fmuladd.f64(double %156, double %.pre2200, double %i.euk)
  %158 = extractelement <2 x double> %155, i64 1
  %i.eum = tail call double @llvm.fmuladd.f64(double %158, double %.pre2202, double %157)
  %i.eun = getelementptr inbounds nuw i8, ptr %i.etv, i64 144
  %159 = load <2 x double>, ptr %i.eun, align 8, !tbaa !9
  %160 = fmul <2 x double> %159, %112             ; 2 uses
  %161 = extractelement <2 x double> %160, i64 0
  %162 = tail call double @llvm.fmuladd.f64(double %161, double %i.etr, double %i.eum)
  %163 = extractelement <2 x double> %160, i64 1
  %i.euo = tail call double @llvm.fmuladd.f64(double %163, double %i.ett, double %162) ; 2 uses
  %indvars.iv.next1516 = add nuw nsw i64 %indvars.iv1515, 1 ; 2 uses
  %exitcond1518.not = icmp eq i64 %indvars.iv.next1516, 20
  br i1 %exitcond1518.not, label %.loopexit1229, label %.preheader1227, !llvm.loop !56

.loopexit1229:                                    ; preds = %.preheader1227, %bb.kp
  %.2 = phi double [ 0.000000e+00, %bb.kp ], [ %i.euo, %.preheader1227 ]
  %i.eup = insertelement <2 x double> poison, double %.2, i64 0
  %i.euq = shufflevector <2 x double> %i.eup, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %.preheader1226

.preheader1226:                                   ; preds = %.loopexit1229, %.preheader1226
  %indvars.iv1523 = phi i64 [ 0, %.loopexit1229 ], [ %indvars.iv.next1524, %.preheader1226 ] ; 2 uses
  %i.eur = getelementptr inbounds nuw [8 x i8], ptr %i.eaq, i64 %indvars.iv1523
  %i.eus = load ptr, ptr %i.eur, align 8, !tbaa !14 ; 11 uses
  %i.eut = load <2 x double>, ptr %i.eus, align 8, !tbaa !9
  %i.euu = fsub <2 x double> %i.eut, %i.euq
  store <2 x double> %i.euu, ptr %i.eus, align 8, !tbaa !9
  %i.euv = getelementptr inbounds nuw i8, ptr %i.eus, i64 16 ; 2 uses
  %i.euw = load <2 x double>, ptr %i.euv, align 8, !tbaa !9
  %i.eux = fsub <2 x double> %i.euw, %i.euq
  store <2 x double> %i.eux, ptr %i.euv, align 8, !tbaa !9
  %i.euy = getelementptr inbounds nuw i8, ptr %i.eus, i64 32 ; 2 uses
  %i.euz = load <2 x double>, ptr %i.euy, align 8, !tbaa !9
  %i.eva = fsub <2 x double> %i.euz, %i.euq
  store <2 x double> %i.eva, ptr %i.euy, align 8, !tbaa !9
  %i.evb = getelementptr inbounds nuw i8, ptr %i.eus, i64 48 ; 2 uses
  %i.evc = load <2 x double>, ptr %i.evb, align 8, !tbaa !9
  %i.evd = fsub <2 x double> %i.evc, %i.euq
  store <2 x double> %i.evd, ptr %i.evb, align 8, !tbaa !9
  %i.eve = getelementptr inbounds nuw i8, ptr %i.eus, i64 64 ; 2 uses
  %i.evf = load <2 x double>, ptr %i.eve, align 8, !tbaa !9
  %i.evg = fsub <2 x double> %i.evf, %i.euq
  store <2 x double> %i.evg, ptr %i.eve, align 8, !tbaa !9
  %i.evh = getelementptr inbounds nuw i8, ptr %i.eus, i64 80 ; 2 uses
  %i.evi = load <2 x double>, ptr %i.evh, align 8, !tbaa !9
  %i.evj = fsub <2 x double> %i.evi, %i.euq
  store <2 x double> %i.evj, ptr %i.evh, align 8, !tbaa !9
  %i.evk = getelementptr inbounds nuw i8, ptr %i.eus, i64 96 ; 2 uses
  %i.evl = load <2 x double>, ptr %i.evk, align 8, !tbaa !9
  %i.evm = fsub <2 x double> %i.evl, %i.euq
  store <2 x double> %i.evm, ptr %i.evk, align 8, !tbaa !9
  %i.evn = getelementptr inbounds nuw i8, ptr %i.eus, i64 112 ; 2 uses
  %i.evo = load <2 x double>, ptr %i.evn, align 8, !tbaa !9
  %i.evp = fsub <2 x double> %i.evo, %i.euq
  store <2 x double> %i.evp, ptr %i.evn, align 8, !tbaa !9
  %i.evq = getelementptr inbounds nuw i8, ptr %i.eus, i64 128 ; 2 uses
  %i.evr = load <2 x double>, ptr %i.evq, align 8, !tbaa !9
  %i.evs = fsub <2 x double> %i.evr, %i.euq
  store <2 x double> %i.evs, ptr %i.evq, align 8, !tbaa !9
  %i.evt = getelementptr inbounds nuw i8, ptr %i.eus, i64 144 ; 2 uses
  %i.evu = load <2 x double>, ptr %i.evt, align 8, !tbaa !9
  %i.evv = fsub <2 x double> %i.evu, %i.euq
  store <2 x double> %i.evv, ptr %i.evt, align 8, !tbaa !9
  %indvars.iv.next1524 = add nuw nsw i64 %indvars.iv1523, 1 ; 2 uses
  %exitcond1526.not = icmp eq i64 %indvars.iv.next1524, 20
  br i1 %exitcond1526.not, label %.preheader1225.preheader, label %.preheader1226, !llvm.loop !57

.preheader1225.preheader:                         ; preds = %.preheader1226
  %i.evw = load ptr, ptr %i.eaq, align 8, !tbaa !14
  %i.evx = load double, ptr %i.evw, align 8, !tbaa !9
  %i.evy = load double, ptr %.0893, align 8, !tbaa !9
  %i.evz = tail call double @llvm.fmuladd.f64(double %i.evx, double %i.evy, double 0.000000e+00)
  %i.ewa = getelementptr inbounds nuw i8, ptr %i.eaq, i64 8 ; 2 uses
  %i.ewb = load ptr, ptr %i.ewa, align 8, !tbaa !14
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.ewb, i64 8
  %i.ewd = load double, ptr %i.ewc, align 8, !tbaa !9
  %i.ewe = getelementptr inbounds nuw i8, ptr %.0893, i64 8 ; 3 uses
  %i.ewf = load double, ptr %i.ewe, align 8, !tbaa !9
  %i.ewg = tail call double @llvm.fmuladd.f64(double %i.ewd, double %i.ewf, double %i.evz)
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.eaq, i64 16 ; 2 uses
  %i.ewi = load ptr, ptr %i.ewh, align 8, !tbaa !14
  %i.ewj = getelementptr inbounds nuw i8, ptr %i.ewi, i64 16
  %i.ewk = load double, ptr %i.ewj, align 8, !tbaa !9
  %i.ewl = getelementptr inbounds nuw i8, ptr %.0893, i64 16 ; 3 uses
  %i.ewm = load double, ptr %i.ewl, align 8, !tbaa !9
  %i.ewn = tail call double @llvm.fmuladd.f64(double %i.ewk, double %i.ewm, double %i.ewg)
  %i.ewo = getelementptr inbounds nuw i8, ptr %i.eaq, i64 24 ; 2 uses
  %i.ewp = load ptr, ptr %i.ewo, align 8, !tbaa !14
  %i.ewq = getelementptr inbounds nuw i8, ptr %i.ewp, i64 24
  %i.ewr = load double, ptr %i.ewq, align 8, !tbaa !9
  %i.ews = getelementptr inbounds nuw i8, ptr %.0893, i64 24 ; 3 uses
  %i.ewt = load double, ptr %i.ews, align 8, !tbaa !9
  %i.ewu = tail call double @llvm.fmuladd.f64(double %i.ewr, double %i.ewt, double %i.ewn)
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.eaq, i64 32 ; 2 uses
  %i.eww = load ptr, ptr %i.ewv, align 8, !tbaa !14
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.eww, i64 32
  %i.ewy = load double, ptr %i.ewx, align 8, !tbaa !9
  %i.ewz = getelementptr inbounds nuw i8, ptr %.0893, i64 32 ; 3 uses
  %i.exa = load double, ptr %i.ewz, align 8, !tbaa !9
  %i.exb = tail call double @llvm.fmuladd.f64(double %i.ewy, double %i.exa, double %i.ewu)
  %i.exc = getelementptr inbounds nuw i8, ptr %i.eaq, i64 40 ; 2 uses
  %i.exd = load ptr, ptr %i.exc, align 8, !tbaa !14
  %i.exe = getelementptr inbounds nuw i8, ptr %i.exd, i64 40
  %i.exf = load double, ptr %i.exe, align 8, !tbaa !9
  %i.exg = getelementptr inbounds nuw i8, ptr %.0893, i64 40 ; 3 uses
  %i.exh = load double, ptr %i.exg, align 8, !tbaa !9
  %i.exi = tail call double @llvm.fmuladd.f64(double %i.exf, double %i.exh, double %i.exb)
  %i.exj = getelementptr inbounds nuw i8, ptr %i.eaq, i64 48 ; 2 uses
  %i.exk = load ptr, ptr %i.exj, align 8, !tbaa !14
  %i.exl = getelementptr inbounds nuw i8, ptr %i.exk, i64 48
  %i.exm = load double, ptr %i.exl, align 8, !tbaa !9
  %i.exn = getelementptr inbounds nuw i8, ptr %.0893, i64 48 ; 3 uses
  %i.exo = load double, ptr %i.exn, align 8, !tbaa !9
  %i.exp = tail call double @llvm.fmuladd.f64(double %i.exm, double %i.exo, double %i.exi)
  %i.exq = getelementptr inbounds nuw i8, ptr %i.eaq, i64 56 ; 2 uses
  %i.exr = load ptr, ptr %i.exq, align 8, !tbaa !14
  %i.exs = getelementptr inbounds nuw i8, ptr %i.exr, i64 56
  %i.ext = load double, ptr %i.exs, align 8, !tbaa !9
  %i.exu = getelementptr inbounds nuw i8, ptr %.0893, i64 56 ; 3 uses
  %i.exv = load double, ptr %i.exu, align 8, !tbaa !9
  %i.exw = tail call double @llvm.fmuladd.f64(double %i.ext, double %i.exv, double %i.exp)
  %i.exx = getelementptr inbounds nuw i8, ptr %i.eaq, i64 64 ; 2 uses
  %i.exy = load ptr, ptr %i.exx, align 8, !tbaa !14
  %i.exz = getelementptr inbounds nuw i8, ptr %i.exy, i64 64
  %i.eya = load double, ptr %i.exz, align 8, !tbaa !9
  %i.eyb = getelementptr inbounds nuw i8, ptr %.0893, i64 64 ; 3 uses
  %i.eyc = load double, ptr %i.eyb, align 8, !tbaa !9
  %i.eyd = tail call double @llvm.fmuladd.f64(double %i.eya, double %i.eyc, double %i.exw)
  %i.eye = getelementptr inbounds nuw i8, ptr %i.eaq, i64 72 ; 2 uses
  %i.eyf = load ptr, ptr %i.eye, align 8, !tbaa !14
  %i.eyg = getelementptr inbounds nuw i8, ptr %i.eyf, i64 72
  %i.eyh = load double, ptr %i.eyg, align 8, !tbaa !9
  %i.eyi = getelementptr inbounds nuw i8, ptr %.0893, i64 72 ; 3 uses
  %i.eyj = load double, ptr %i.eyi, align 8, !tbaa !9
  %i.eyk = tail call double @llvm.fmuladd.f64(double %i.eyh, double %i.eyj, double %i.eyd)
  %i.eyl = getelementptr inbounds nuw i8, ptr %i.eaq, i64 80 ; 2 uses
  %i.eym = load ptr, ptr %i.eyl, align 8, !tbaa !14
  %i.eyn = getelementptr inbounds nuw i8, ptr %i.eym, i64 80
  %i.eyo = load double, ptr %i.eyn, align 8, !tbaa !9
  %i.eyp = getelementptr inbounds nuw i8, ptr %.0893, i64 80 ; 3 uses
  %i.eyq = load double, ptr %i.eyp, align 8, !tbaa !9
  %i.eyr = tail call double @llvm.fmuladd.f64(double %i.eyo, double %i.eyq, double %i.eyk)
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eaq, i64 88 ; 2 uses
  %i.eyt = load ptr, ptr %i.eys, align 8, !tbaa !14
  %i.eyu = getelementptr inbounds nuw i8, ptr %i.eyt, i64 88
  %i.eyv = load double, ptr %i.eyu, align 8, !tbaa !9
  %i.eyw = getelementptr inbounds nuw i8, ptr %.0893, i64 88 ; 3 uses
  %i.eyx = load double, ptr %i.eyw, align 8, !tbaa !9
  %i.eyy = tail call double @llvm.fmuladd.f64(double %i.eyv, double %i.eyx, double %i.eyr)
  %i.eyz = getelementptr inbounds nuw i8, ptr %i.eaq, i64 96 ; 2 uses
  %i.eza = load ptr, ptr %i.eyz, align 8, !tbaa !14
  %i.ezb = getelementptr inbounds nuw i8, ptr %i.eza, i64 96
  %i.ezc = load double, ptr %i.ezb, align 8, !tbaa !9
  %i.ezd = getelementptr inbounds nuw i8, ptr %.0893, i64 96 ; 3 uses
  %i.eze = load double, ptr %i.ezd, align 8, !tbaa !9
  %i.ezf = tail call double @llvm.fmuladd.f64(double %i.ezc, double %i.eze, double %i.eyy)
  %i.ezg = getelementptr inbounds nuw i8, ptr %i.eaq, i64 104 ; 2 uses
  %i.ezh = load ptr, ptr %i.ezg, align 8, !tbaa !14
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.ezh, i64 104
  %i.ezj = load double, ptr %i.ezi, align 8, !tbaa !9
  %i.ezk = getelementptr inbounds nuw i8, ptr %.0893, i64 104 ; 3 uses
  %i.ezl = load double, ptr %i.ezk, align 8, !tbaa !9
  %i.ezm = tail call double @llvm.fmuladd.f64(double %i.ezj, double %i.ezl, double %i.ezf)
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.eaq, i64 112 ; 2 uses
  %i.ezo = load ptr, ptr %i.ezn, align 8, !tbaa !14
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.ezo, i64 112
  %i.ezq = load double, ptr %i.ezp, align 8, !tbaa !9
  %i.ezr = getelementptr inbounds nuw i8, ptr %.0893, i64 112 ; 3 uses
  %i.ezs = load double, ptr %i.ezr, align 8, !tbaa !9
  %i.ezt = tail call double @llvm.fmuladd.f64(double %i.ezq, double %i.ezs, double %i.ezm)
  %i.ezu = getelementptr inbounds nuw i8, ptr %i.eaq, i64 120 ; 2 uses
  %i.ezv = load ptr, ptr %i.ezu, align 8, !tbaa !14
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.ezv, i64 120
  %i.ezx = load double, ptr %i.ezw, align 8, !tbaa !9
  %i.ezy = getelementptr inbounds nuw i8, ptr %.0893, i64 120 ; 3 uses
  %i.ezz = load double, ptr %i.ezy, align 8, !tbaa !9
  %i.faa = tail call double @llvm.fmuladd.f64(double %i.ezx, double %i.ezz, double %i.ezt)
  %i.fab = getelementptr inbounds nuw i8, ptr %i.eaq, i64 128 ; 2 uses
  %i.fac = load ptr, ptr %i.fab, align 8, !tbaa !14
  %i.fad = getelementptr inbounds nuw i8, ptr %i.fac, i64 128
  %i.fae = load double, ptr %i.fad, align 8, !tbaa !9
  %i.faf = getelementptr inbounds nuw i8, ptr %.0893, i64 128 ; 3 uses
  %i.fag = load double, ptr %i.faf, align 8, !tbaa !9
  %i.fah = tail call double @llvm.fmuladd.f64(double %i.fae, double %i.fag, double %i.faa)
  %i.fai = getelementptr inbounds nuw i8, ptr %i.eaq, i64 136 ; 2 uses
  %i.faj = load ptr, ptr %i.fai, align 8, !tbaa !14
  %i.fak = getelementptr inbounds nuw i8, ptr %i.faj, i64 136
  %i.fal = load double, ptr %i.fak, align 8, !tbaa !9
  %i.fam = getelementptr inbounds nuw i8, ptr %.0893, i64 136 ; 3 uses
  %i.fan = load double, ptr %i.fam, align 8, !tbaa !9
  %i.fao = tail call double @llvm.fmuladd.f64(double %i.fal, double %i.fan, double %i.fah)
  %i.fap = getelementptr inbounds nuw i8, ptr %i.eaq, i64 144 ; 2 uses
  %i.faq = load ptr, ptr %i.fap, align 8, !tbaa !14
  %i.far = getelementptr inbounds nuw i8, ptr %i.faq, i64 144
  %i.fas = load double, ptr %i.far, align 8, !tbaa !9
  %i.fat = getelementptr inbounds nuw i8, ptr %.0893, i64 144 ; 3 uses
  %i.fau = load double, ptr %i.fat, align 8, !tbaa !9
  %i.fav = tail call double @llvm.fmuladd.f64(double %i.fas, double %i.fau, double %i.fao)
  %i.faw = getelementptr inbounds nuw i8, ptr %i.eaq, i64 152 ; 2 uses
  %i.fax = load ptr, ptr %i.faw, align 8, !tbaa !14
  %i.fay = getelementptr inbounds nuw i8, ptr %i.fax, i64 152
  %i.faz = load double, ptr %i.fay, align 8, !tbaa !9
  %i.fba = getelementptr inbounds nuw i8, ptr %.0893, i64 152 ; 3 uses
  %i.fbb = load double, ptr %i.fba, align 8, !tbaa !9
  %i.fbc = tail call double @llvm.fmuladd.f64(double %i.faz, double %i.fbb, double %i.fav)
  %i.fbd = fdiv double 6.000000e+02, %i.fbc
  %i.fbe = insertelement <2 x double> poison, double %i.fbd, i64 0
  %i.fbf = shufflevector <2 x double> %i.fbe, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  br label %.preheader1223

end_hunk_2
begin_hunk_3_@constants:bb.a
  %i.ffb = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ffc = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.ffd = getelementptr inbounds nuw i8, ptr %i.ffc, i64 24
  %i.ffe = load double, ptr %i.ffd, align 8, !tbaa !9
  %i.fff = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ffb, ptr noundef nonnull @.str.25, double noundef %i.ffe) #15 ; 0 uses
  %i.ffg = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ffh = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.ffi = getelementptr inbounds nuw i8, ptr %i.ffh, i64 32
  %i.ffj = load double, ptr %i.ffi, align 8, !tbaa !9
  %i.ffk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ffg, ptr noundef nonnull @.str.25, double noundef %i.ffj) #15 ; 0 uses
  %i.ffl = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ffm = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.ffn = getelementptr inbounds nuw i8, ptr %i.ffm, i64 40
  %i.ffo = load double, ptr %i.ffn, align 8, !tbaa !9
  %i.ffp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ffl, ptr noundef nonnull @.str.25, double noundef %i.ffo) #15 ; 0 uses
  %i.ffq = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ffr = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.ffs = getelementptr inbounds nuw i8, ptr %i.ffr, i64 48
  %i.fft = load double, ptr %i.ffs, align 8, !tbaa !9
  %i.ffu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ffq, ptr noundef nonnull @.str.25, double noundef %i.fft) #15 ; 0 uses
  %i.ffv = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ffw = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.ffx = getelementptr inbounds nuw i8, ptr %i.ffw, i64 56
  %i.ffy = load double, ptr %i.ffx, align 8, !tbaa !9
  %i.ffz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ffv, ptr noundef nonnull @.str.25, double noundef %i.ffy) #15 ; 0 uses
  %i.fga = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fgb = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fgc = getelementptr inbounds nuw i8, ptr %i.fgb, i64 64
  %i.fgd = load double, ptr %i.fgc, align 8, !tbaa !9
  %i.fge = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fga, ptr noundef nonnull @.str.25, double noundef %i.fgd) #15 ; 0 uses
  %i.fgf = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fgg = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fgh = getelementptr inbounds nuw i8, ptr %i.fgg, i64 72
  %i.fgi = load double, ptr %i.fgh, align 8, !tbaa !9
  %i.fgj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fgf, ptr noundef nonnull @.str.25, double noundef %i.fgi) #15 ; 0 uses
  %i.fgk = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fgl = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fgm = getelementptr inbounds nuw i8, ptr %i.fgl, i64 80
  %i.fgn = load double, ptr %i.fgm, align 8, !tbaa !9
  %i.fgo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fgk, ptr noundef nonnull @.str.25, double noundef %i.fgn) #15 ; 0 uses
  %i.fgp = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fgq = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fgr = getelementptr inbounds nuw i8, ptr %i.fgq, i64 88
  %i.fgs = load double, ptr %i.fgr, align 8, !tbaa !9
  %i.fgt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fgp, ptr noundef nonnull @.str.25, double noundef %i.fgs) #15 ; 0 uses
  %i.fgu = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fgv = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fgw = getelementptr inbounds nuw i8, ptr %i.fgv, i64 96
  %i.fgx = load double, ptr %i.fgw, align 8, !tbaa !9
  %i.fgy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fgu, ptr noundef nonnull @.str.25, double noundef %i.fgx) #15 ; 0 uses
  %i.fgz = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fha = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fhb = getelementptr inbounds nuw i8, ptr %i.fha, i64 104
  %i.fhc = load double, ptr %i.fhb, align 8, !tbaa !9
  %i.fhd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fgz, ptr noundef nonnull @.str.25, double noundef %i.fhc) #15 ; 0 uses
  %i.fhe = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fhf = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.fhf, i64 112
  %i.fhh = load double, ptr %i.fhg, align 8, !tbaa !9
  %i.fhi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fhe, ptr noundef nonnull @.str.25, double noundef %i.fhh) #15 ; 0 uses
  %i.fhj = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fhk = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fhl = getelementptr inbounds nuw i8, ptr %i.fhk, i64 120
  %i.fhm = load double, ptr %i.fhl, align 8, !tbaa !9
  %i.fhn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fhj, ptr noundef nonnull @.str.25, double noundef %i.fhm) #15 ; 0 uses
  %i.fho = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fhp = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fhq = getelementptr inbounds nuw i8, ptr %i.fhp, i64 128
  %i.fhr = load double, ptr %i.fhq, align 8, !tbaa !9
  %i.fhs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fho, ptr noundef nonnull @.str.25, double noundef %i.fhr) #15 ; 0 uses
  %i.fht = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fhu = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fhu, i64 136
  %i.fhw = load double, ptr %i.fhv, align 8, !tbaa !9
  %i.fhx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fht, ptr noundef nonnull @.str.25, double noundef %i.fhw) #15 ; 0 uses
  %i.fhy = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fhz = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fia = getelementptr inbounds nuw i8, ptr %i.fhz, i64 144
  %i.fib = load double, ptr %i.fia, align 8, !tbaa !9
  %i.fic = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fhy, ptr noundef nonnull @.str.25, double noundef %i.fib) #15 ; 0 uses
  %i.fid = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fie = load ptr, ptr %i.fem, align 8, !tbaa !14
  %i.fif = getelementptr inbounds nuw i8, ptr %i.fie, i64 152
  %i.fig = load double, ptr %i.fif, align 8, !tbaa !9
  %i.fih = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fid, ptr noundef nonnull @.str.25, double noundef %i.fig) #15 ; 0 uses
  %i.fii = load ptr, ptr @stdout, align 8, !tbaa !16
  %fputc = tail call i32 @fputc(i32 10, ptr %i.fii) ; 0 uses
  %indvars.iv.next1560 = add nuw nsw i64 %indvars.iv1559, 1 ; 2 uses
  %exitcond1562.not = icmp eq i64 %indvars.iv.next1560, 20
  br i1 %exitcond1562.not, label %.preheader1217.preheader, label %bb.kx, !llvm.loop !62

.preheader1217.preheader:                         ; preds = %bb.kx
  %i.fij = load ptr, ptr @stdout, align 8, !tbaa !16
  %fwrite1005 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 5, i64 1, ptr %i.fij) ; 0 uses
  %i.fik = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fil = load i8, ptr @amino, align 16, !tbaa !11
  %i.fim = sext i8 %i.fil to i32
  %i.fin = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fik, ptr noundef nonnull @.str.27, i32 noundef %i.fim) #15 ; 0 uses
  %i.fio = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fip = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 1), align 1, !tbaa !11
  %i.fiq = sext i8 %i.fip to i32
  %i.fir = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fio, ptr noundef nonnull @.str.27, i32 noundef %i.fiq) #15 ; 0 uses
  %i.fis = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fit = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 2), align 2, !tbaa !11
  %i.fiu = sext i8 %i.fit to i32
  %i.fiv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fis, ptr noundef nonnull @.str.27, i32 noundef %i.fiu) #15 ; 0 uses
  %i.fiw = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fix = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 3), align 1, !tbaa !11
  %i.fiy = sext i8 %i.fix to i32
  %i.fiz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fiw, ptr noundef nonnull @.str.27, i32 noundef %i.fiy) #15 ; 0 uses
  %i.fja = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjb = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 4), align 4, !tbaa !11
  %i.fjc = sext i8 %i.fjb to i32
  %i.fjd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fja, ptr noundef nonnull @.str.27, i32 noundef %i.fjc) #15 ; 0 uses
  %i.fje = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjf = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 5), align 1, !tbaa !11
  %i.fjg = sext i8 %i.fjf to i32
  %i.fjh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fje, ptr noundef nonnull @.str.27, i32 noundef %i.fjg) #15 ; 0 uses
  %i.fji = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjj = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 6), align 2, !tbaa !11
  %i.fjk = sext i8 %i.fjj to i32
  %i.fjl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fji, ptr noundef nonnull @.str.27, i32 noundef %i.fjk) #15 ; 0 uses
  %i.fjm = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjn = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 7), align 1, !tbaa !11
  %i.fjo = sext i8 %i.fjn to i32
  %i.fjp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fjm, ptr noundef nonnull @.str.27, i32 noundef %i.fjo) #15 ; 0 uses
  %i.fjq = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjr = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 8), align 8, !tbaa !11
  %i.fjs = sext i8 %i.fjr to i32
  %i.fjt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fjq, ptr noundef nonnull @.str.27, i32 noundef %i.fjs) #15 ; 0 uses
  %i.fju = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjv = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 9), align 1, !tbaa !11
  %i.fjw = sext i8 %i.fjv to i32
  %i.fjx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fju, ptr noundef nonnull @.str.27, i32 noundef %i.fjw) #15 ; 0 uses
  %i.fjy = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fjz = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 10), align 2, !tbaa !11
  %i.fka = sext i8 %i.fjz to i32
  %i.fkb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fjy, ptr noundef nonnull @.str.27, i32 noundef %i.fka) #15 ; 0 uses
  %i.fkc = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fkd = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 11), align 1, !tbaa !11
  %i.fke = sext i8 %i.fkd to i32
  %i.fkf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fkc, ptr noundef nonnull @.str.27, i32 noundef %i.fke) #15 ; 0 uses
  %i.fkg = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fkh = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 12), align 4, !tbaa !11
  %i.fki = sext i8 %i.fkh to i32
  %i.fkj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fkg, ptr noundef nonnull @.str.27, i32 noundef %i.fki) #15 ; 0 uses
  %i.fkk = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fkl = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 13), align 1, !tbaa !11
  %i.fkm = sext i8 %i.fkl to i32
  %i.fkn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fkk, ptr noundef nonnull @.str.27, i32 noundef %i.fkm) #15 ; 0 uses
  %i.fko = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fkp = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 14), align 2, !tbaa !11
  %i.fkq = sext i8 %i.fkp to i32
  %i.fkr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fko, ptr noundef nonnull @.str.27, i32 noundef %i.fkq) #15 ; 0 uses
  %i.fks = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fkt = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 15), align 1, !tbaa !11
  %i.fku = sext i8 %i.fkt to i32
  %i.fkv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fks, ptr noundef nonnull @.str.27, i32 noundef %i.fku) #15 ; 0 uses
  %i.fkw = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fkx = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 16), align 16, !tbaa !11
  %i.fky = sext i8 %i.fkx to i32
  %i.fkz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fkw, ptr noundef nonnull @.str.27, i32 noundef %i.fky) #15 ; 0 uses
  %i.fla = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.flb = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 17), align 1, !tbaa !11
  %i.flc = sext i8 %i.flb to i32
  %i.fld = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fla, ptr noundef nonnull @.str.27, i32 noundef %i.flc) #15 ; 0 uses
  %i.fle = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.flf = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 18), align 2, !tbaa !11
  %i.flg = sext i8 %i.flf to i32
  %i.flh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fle, ptr noundef nonnull @.str.27, i32 noundef %i.flg) #15 ; 0 uses
  %i.fli = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.flj = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 19), align 1, !tbaa !11
  %i.flk = sext i8 %i.flj to i32
  %i.fll = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fli, ptr noundef nonnull @.str.27, i32 noundef %i.flk) #15 ; 0 uses
  %.pre2203 = load double, ptr %i.ewz, align 8, !tbaa !9
  %.pre2204 = load double, ptr %i.exg, align 8, !tbaa !9
  %.pre2205 = load double, ptr %i.exn, align 8, !tbaa !9
  %.pre2206 = load double, ptr %i.exu, align 8, !tbaa !9
  %.pre2207 = load double, ptr %i.eyb, align 8, !tbaa !9
  %.pre2208 = load double, ptr %i.eyi, align 8, !tbaa !9
  %.pre2209 = load double, ptr %i.eyp, align 8, !tbaa !9
  %.pre2210 = load double, ptr %i.eyw, align 8, !tbaa !9
  %.pre2211 = load double, ptr %i.ezd, align 8, !tbaa !9
  %.pre2212 = load double, ptr %i.ezk, align 8, !tbaa !9
  %.pre2213 = load double, ptr %i.ezr, align 8, !tbaa !9
  %.pre2214 = load double, ptr %i.ezy, align 8, !tbaa !9
  %.pre2215 = load double, ptr %i.faf, align 8, !tbaa !9
  %.pre2216 = load double, ptr %i.fam, align 8, !tbaa !9
  %.pre2217 = load double, ptr %i.fat, align 8, !tbaa !9
  %.pre2218 = load double, ptr %i.fba, align 8, !tbaa !9
  %.pre2293 = load double, ptr %i.ewe, align 8, !tbaa !9
  %.pre2294 = load double, ptr %i.ewl, align 8, !tbaa !9
  %.pre2295 = load double, ptr %i.ews, align 8, !tbaa !9
  %i.flm = load double, ptr %.0893, align 8, !tbaa !9
  br label %.preheader1217

.preheader1217:                                   ; preds = %.preheader1217.preheader, %.preheader1217
  %indvars.iv1571 = phi i64 [ 0, %.preheader1217.preheader ], [ %indvars.iv.next1572, %.preheader1217 ] ; 3 uses
  %.41272 = phi double [ 0.000000e+00, %.preheader1217.preheader ], [ %i.fmh, %.preheader1217 ]
  %i.fln = getelementptr inbounds nuw [8 x i8], ptr %i.eaq, i64 %indvars.iv1571
  %i.flo = load ptr, ptr %i.fln, align 8, !tbaa !14 ; 10 uses
  %i.flp = getelementptr inbounds nuw [8 x i8], ptr %.0893, i64 %indvars.iv1571
  %i.flq = load double, ptr %i.flp, align 8, !tbaa !9
  %164 = load <2 x double>, ptr %i.flo, align 8, !tbaa !9
  %165 = insertelement <2 x double> poison, double %i.flq, i64 0
  %166 = shufflevector <2 x double> %165, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %167 = fmul <2 x double> %164, %166             ; 2 uses
  %168 = extractelement <2 x double> %167, i64 0
  %169 = tail call double @llvm.fmuladd.f64(double %168, double %i.flm, double %.41272)
  %170 = extractelement <2 x double> %167, i64 1
  %171 = tail call double @llvm.fmuladd.f64(double %170, double %.pre2293, double %169)
  %172 = getelementptr inbounds nuw i8, ptr %i.flo, i64 16
  %173 = load <2 x double>, ptr %172, align 8, !tbaa !9
  %174 = fmul <2 x double> %173, %166             ; 2 uses
  %175 = extractelement <2 x double> %174, i64 0
  %176 = tail call double @llvm.fmuladd.f64(double %175, double %.pre2294, double %171)
  %177 = extractelement <2 x double> %174, i64 1
  %i.flr = tail call double @llvm.fmuladd.f64(double %177, double %.pre2295, double %176)
  %i.fls = getelementptr inbounds nuw i8, ptr %i.flo, i64 32
  %178 = load <2 x double>, ptr %i.fls, align 8, !tbaa !9
  %179 = fmul <2 x double> %178, %166             ; 2 uses
  %180 = extractelement <2 x double> %179, i64 0
  %181 = tail call double @llvm.fmuladd.f64(double %180, double %.pre2203, double %i.flr)
  %182 = extractelement <2 x double> %179, i64 1
  %i.flt = tail call double @llvm.fmuladd.f64(double %182, double %.pre2204, double %181)
  %i.flu = getelementptr inbounds nuw i8, ptr %i.flo, i64 48
  %183 = load <2 x double>, ptr %i.flu, align 8, !tbaa !9
  %184 = fmul <2 x double> %183, %166             ; 2 uses
  %185 = extractelement <2 x double> %184, i64 0
  %186 = tail call double @llvm.fmuladd.f64(double %185, double %.pre2205, double %i.flt)
  %187 = extractelement <2 x double> %184, i64 1
  %i.flv = tail call double @llvm.fmuladd.f64(double %187, double %.pre2206, double %186)
  %i.flw = getelementptr inbounds nuw i8, ptr %i.flo, i64 64
  %188 = load <2 x double>, ptr %i.flw, align 8, !tbaa !9
  %189 = fmul <2 x double> %188, %166             ; 2 uses
  %190 = extractelement <2 x double> %189, i64 0
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %.pre2207, double %i.flv)
  %192 = extractelement <2 x double> %189, i64 1
  %i.flx = tail call double @llvm.fmuladd.f64(double %192, double %.pre2208, double %191)
  %i.fly = getelementptr inbounds nuw i8, ptr %i.flo, i64 80
  %193 = load <2 x double>, ptr %i.fly, align 8, !tbaa !9
  %194 = fmul <2 x double> %193, %166             ; 2 uses
  %195 = extractelement <2 x double> %194, i64 0
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %.pre2209, double %i.flx)
  %197 = extractelement <2 x double> %194, i64 1
  %i.flz = tail call double @llvm.fmuladd.f64(double %197, double %.pre2210, double %196)
  %i.fma = getelementptr inbounds nuw i8, ptr %i.flo, i64 96
  %198 = load <2 x double>, ptr %i.fma, align 8, !tbaa !9
  %199 = fmul <2 x double> %198, %166             ; 2 uses
  %200 = extractelement <2 x double> %199, i64 0
  %201 = tail call double @llvm.fmuladd.f64(double %200, double %.pre2211, double %i.flz)
  %202 = extractelement <2 x double> %199, i64 1
  %i.fmb = tail call double @llvm.fmuladd.f64(double %202, double %.pre2212, double %201)
  %i.fmc = getelementptr inbounds nuw i8, ptr %i.flo, i64 112
  %203 = load <2 x double>, ptr %i.fmc, align 8, !tbaa !9
  %204 = fmul <2 x double> %203, %166             ; 2 uses
  %205 = extractelement <2 x double> %204, i64 0
  %206 = tail call double @llvm.fmuladd.f64(double %205, double %.pre2213, double %i.fmb)
  %207 = extractelement <2 x double> %204, i64 1
  %i.fmd = tail call double @llvm.fmuladd.f64(double %207, double %.pre2214, double %206)
  %i.fme = getelementptr inbounds nuw i8, ptr %i.flo, i64 128
  %208 = load <2 x double>, ptr %i.fme, align 8, !tbaa !9
  %209 = fmul <2 x double> %208, %166             ; 2 uses
  %210 = extractelement <2 x double> %209, i64 0
  %211 = tail call double @llvm.fmuladd.f64(double %210, double %.pre2215, double %i.fmd)
  %212 = extractelement <2 x double> %209, i64 1
  %i.fmf = tail call double @llvm.fmuladd.f64(double %212, double %.pre2216, double %211)
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.flo, i64 144
  %213 = load <2 x double>, ptr %i.fmg, align 8, !tbaa !9
  %214 = fmul <2 x double> %213, %166             ; 2 uses
  %215 = extractelement <2 x double> %214, i64 0
  %216 = tail call double @llvm.fmuladd.f64(double %215, double %.pre2217, double %i.fmf)
  %217 = extractelement <2 x double> %214, i64 1
  %i.fmh = tail call double @llvm.fmuladd.f64(double %217, double %.pre2218, double %216) ; 2 uses
  %indvars.iv.next1572 = add nuw nsw i64 %indvars.iv1571, 1 ; 2 uses
  %exitcond1574.not = icmp eq i64 %indvars.iv.next1572, 20
  br i1 %exitcond1574.not, label %bb.ky, label %.preheader1217, !llvm.loop !63

bb.ky:                                            ; preds = %.preheader1217
  %i.fmi = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fmj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fmi, ptr noundef nonnull @.str.4, double noundef %i.fmh) #15 ; 0 uses
  %i.fmk = load ptr, ptr %i.eaq, align 8, !tbaa !14
  %i.fml = load double, ptr %i.fmk, align 8, !tbaa !9
  %i.fmm = load double, ptr %.0893, align 8, !tbaa !9
  %i.fmn = tail call double @llvm.fmuladd.f64(double %i.fml, double %i.fmm, double 0.000000e+00)
  %i.fmo = load ptr, ptr %i.ewa, align 8, !tbaa !14
  %i.fmp = getelementptr inbounds nuw i8, ptr %i.fmo, i64 8
  %i.fmq = load double, ptr %i.fmp, align 8, !tbaa !9
  %i.fmr = load double, ptr %i.ewe, align 8, !tbaa !9
  %i.fms = tail call double @llvm.fmuladd.f64(double %i.fmq, double %i.fmr, double %i.fmn)
  %i.fmt = load ptr, ptr %i.ewh, align 8, !tbaa !14
  %i.fmu = getelementptr inbounds nuw i8, ptr %i.fmt, i64 16
  %i.fmv = load double, ptr %i.fmu, align 8, !tbaa !9
  %i.fmw = load double, ptr %i.ewl, align 8, !tbaa !9
  %i.fmx = tail call double @llvm.fmuladd.f64(double %i.fmv, double %i.fmw, double %i.fms)
  %i.fmy = load ptr, ptr %i.ewo, align 8, !tbaa !14
  %i.fmz = getelementptr inbounds nuw i8, ptr %i.fmy, i64 24
  %i.fna = load double, ptr %i.fmz, align 8, !tbaa !9
  %i.fnb = load double, ptr %i.ews, align 8, !tbaa !9
  %i.fnc = tail call double @llvm.fmuladd.f64(double %i.fna, double %i.fnb, double %i.fmx)
  %i.fnd = load ptr, ptr %i.ewv, align 8, !tbaa !14
  %i.fne = getelementptr inbounds nuw i8, ptr %i.fnd, i64 32
  %i.fnf = load double, ptr %i.fne, align 8, !tbaa !9
  %i.fng = load double, ptr %i.ewz, align 8, !tbaa !9
  %i.fnh = tail call double @llvm.fmuladd.f64(double %i.fnf, double %i.fng, double %i.fnc)
  %i.fni = load ptr, ptr %i.exc, align 8, !tbaa !14
  %i.fnj = getelementptr inbounds nuw i8, ptr %i.fni, i64 40
  %i.fnk = load double, ptr %i.fnj, align 8, !tbaa !9
  %i.fnl = load double, ptr %i.exg, align 8, !tbaa !9
  %i.fnm = tail call double @llvm.fmuladd.f64(double %i.fnk, double %i.fnl, double %i.fnh)
  %i.fnn = load ptr, ptr %i.exj, align 8, !tbaa !14
  %i.fno = getelementptr inbounds nuw i8, ptr %i.fnn, i64 48
  %i.fnp = load double, ptr %i.fno, align 8, !tbaa !9
  %i.fnq = load double, ptr %i.exn, align 8, !tbaa !9
  %i.fnr = tail call double @llvm.fmuladd.f64(double %i.fnp, double %i.fnq, double %i.fnm)
  %i.fns = load ptr, ptr %i.exq, align 8, !tbaa !14
  %i.fnt = getelementptr inbounds nuw i8, ptr %i.fns, i64 56
  %i.fnu = load double, ptr %i.fnt, align 8, !tbaa !9
  %i.fnv = load double, ptr %i.exu, align 8, !tbaa !9
  %i.fnw = tail call double @llvm.fmuladd.f64(double %i.fnu, double %i.fnv, double %i.fnr)
  %i.fnx = load ptr, ptr %i.exx, align 8, !tbaa !14
  %i.fny = getelementptr inbounds nuw i8, ptr %i.fnx, i64 64
  %i.fnz = load double, ptr %i.fny, align 8, !tbaa !9
  %i.foa = load double, ptr %i.eyb, align 8, !tbaa !9
  %i.fob = tail call double @llvm.fmuladd.f64(double %i.fnz, double %i.foa, double %i.fnw)
  %i.foc = load ptr, ptr %i.eye, align 8, !tbaa !14
  %i.fod = getelementptr inbounds nuw i8, ptr %i.foc, i64 72
  %i.foe = load double, ptr %i.fod, align 8, !tbaa !9
  %i.fof = load double, ptr %i.eyi, align 8, !tbaa !9
  %i.fog = tail call double @llvm.fmuladd.f64(double %i.foe, double %i.fof, double %i.fob)
  %i.foh = load ptr, ptr %i.eyl, align 8, !tbaa !14
  %i.foi = getelementptr inbounds nuw i8, ptr %i.foh, i64 80
  %i.foj = load double, ptr %i.foi, align 8, !tbaa !9
  %i.fok = load double, ptr %i.eyp, align 8, !tbaa !9
  %i.fol = tail call double @llvm.fmuladd.f64(double %i.foj, double %i.fok, double %i.fog)
  %i.fom = load ptr, ptr %i.eys, align 8, !tbaa !14
  %i.fon = getelementptr inbounds nuw i8, ptr %i.fom, i64 88
  %i.foo = load double, ptr %i.fon, align 8, !tbaa !9
  %i.fop = load double, ptr %i.eyw, align 8, !tbaa !9
  %i.foq = tail call double @llvm.fmuladd.f64(double %i.foo, double %i.fop, double %i.fol)
  %i.for = load ptr, ptr %i.eyz, align 8, !tbaa !14
  %i.fos = getelementptr inbounds nuw i8, ptr %i.for, i64 96
  %i.fot = load double, ptr %i.fos, align 8, !tbaa !9
  %i.fou = load double, ptr %i.ezd, align 8, !tbaa !9
  %i.fov = tail call double @llvm.fmuladd.f64(double %i.fot, double %i.fou, double %i.foq)
  %i.fow = load ptr, ptr %i.ezg, align 8, !tbaa !14
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fow, i64 104
  %i.foy = load double, ptr %i.fox, align 8, !tbaa !9
  %i.foz = load double, ptr %i.ezk, align 8, !tbaa !9
  %i.fpa = tail call double @llvm.fmuladd.f64(double %i.foy, double %i.foz, double %i.fov)
  %i.fpb = load ptr, ptr %i.ezn, align 8, !tbaa !14
  %i.fpc = getelementptr inbounds nuw i8, ptr %i.fpb, i64 112
  %i.fpd = load double, ptr %i.fpc, align 8, !tbaa !9
  %i.fpe = load double, ptr %i.ezr, align 8, !tbaa !9
  %i.fpf = tail call double @llvm.fmuladd.f64(double %i.fpd, double %i.fpe, double %i.fpa)
  %i.fpg = load ptr, ptr %i.ezu, align 8, !tbaa !14
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fpg, i64 120
  %i.fpi = load double, ptr %i.fph, align 8, !tbaa !9
  %i.fpj = load double, ptr %i.ezy, align 8, !tbaa !9
  %i.fpk = tail call double @llvm.fmuladd.f64(double %i.fpi, double %i.fpj, double %i.fpf)
  %i.fpl = load ptr, ptr %i.fab, align 8, !tbaa !14
  %i.fpm = getelementptr inbounds nuw i8, ptr %i.fpl, i64 128
  %i.fpn = load double, ptr %i.fpm, align 8, !tbaa !9
  %i.fpo = load double, ptr %i.faf, align 8, !tbaa !9
  %i.fpp = tail call double @llvm.fmuladd.f64(double %i.fpn, double %i.fpo, double %i.fpk)
  %i.fpq = load ptr, ptr %i.fai, align 8, !tbaa !14
  %i.fpr = getelementptr inbounds nuw i8, ptr %i.fpq, i64 136
  %i.fps = load double, ptr %i.fpr, align 8, !tbaa !9
  %i.fpt = load double, ptr %i.fam, align 8, !tbaa !9
  %i.fpu = tail call double @llvm.fmuladd.f64(double %i.fps, double %i.fpt, double %i.fpp)
  %i.fpv = load ptr, ptr %i.fap, align 8, !tbaa !14
  %i.fpw = getelementptr inbounds nuw i8, ptr %i.fpv, i64 144
  %i.fpx = load double, ptr %i.fpw, align 8, !tbaa !9
  %i.fpy = load double, ptr %i.fat, align 8, !tbaa !9
  %i.fpz = tail call double @llvm.fmuladd.f64(double %i.fpx, double %i.fpy, double %i.fpu)
  %i.fqa = load ptr, ptr %i.faw, align 8, !tbaa !14
  %i.fqb = getelementptr inbounds nuw i8, ptr %i.fqa, i64 152
  %i.fqc = load double, ptr %i.fqb, align 8, !tbaa !9
  %i.fqd = load double, ptr %i.fba, align 8, !tbaa !9
  %i.fqe = tail call double @llvm.fmuladd.f64(double %i.fqc, double %i.fqd, double %i.fpz)
  %i.fqf = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.fqg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fqf, ptr noundef nonnull @.str.28, double noundef %i.fqe) #15 ; 0 uses
  %i.fqh = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.fqi = load i32, ptr @penalty, align 4, !tbaa !7
  %i.fqj = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.fqk = load i32, ptr @offset, align 4, !tbaa !7
  %i.fql = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fqh, ptr noundef nonnull @.str.29, i32 noundef %i.fqi, i32 noundef %i.fqj, i32 noundef %i.fqk) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

.preheader1213:                                   ; preds = %.preheader1215.preheader, %.preheader1213
  %indvars.iv1589 = phi i64 [ 0, %.preheader1215.preheader ], [ %indvars.iv.next1590, %.preheader1213 ] ; 3 uses
  %i.fqm = getelementptr inbounds nuw [8 x i8], ptr %i.eaq, i64 %indvars.iv1589
  %i.fqn = load ptr, ptr %i.fqm, align 8, !tbaa !14 ; 5 uses
  %i.fqo = getelementptr inbounds nuw [104 x i8], ptr @n_dis, i64 %indvars.iv1589 ; 5 uses
  %i.fqp = load <4 x double>, ptr %i.fqn, align 8, !tbaa !9
  %i.fqq = fptosi <4 x double> %i.fqp to <4 x i32>
  store <4 x i32> %i.fqq, ptr %i.fqo, align 8, !tbaa !7
  %i.fqr = getelementptr inbounds nuw i8, ptr %i.fqn, i64 32
  %i.fqs = getelementptr inbounds nuw i8, ptr %i.fqo, i64 16
  %i.fqt = load <4 x double>, ptr %i.fqr, align 8, !tbaa !9
  %i.fqu = fptosi <4 x double> %i.fqt to <4 x i32>
  store <4 x i32> %i.fqu, ptr %i.fqs, align 8, !tbaa !7
  %i.fqv = getelementptr inbounds nuw i8, ptr %i.fqn, i64 64
  %i.fqw = getelementptr inbounds nuw i8, ptr %i.fqo, i64 32
  %i.fqx = load <4 x double>, ptr %i.fqv, align 8, !tbaa !9
  %i.fqy = fptosi <4 x double> %i.fqx to <4 x i32>
  store <4 x i32> %i.fqy, ptr %i.fqw, align 8, !tbaa !7
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fqn, i64 96
  %i.fra = getelementptr inbounds nuw i8, ptr %i.fqo, i64 48
  %i.frb = load <4 x double>, ptr %i.fqz, align 8, !tbaa !9
  %i.frc = fptosi <4 x double> %i.frb to <4 x i32>
  store <4 x i32> %i.frc, ptr %i.fra, align 8, !tbaa !7
  %i.frd = getelementptr inbounds nuw i8, ptr %i.fqn, i64 128
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fqo, i64 64
  %i.frf = load <4 x double>, ptr %i.frd, align 8, !tbaa !9
  %i.frg = fptosi <4 x double> %i.frf to <4 x i32>
  store <4 x i32> %i.frg, ptr %i.fre, align 8, !tbaa !7
  %indvars.iv.next1590 = add nuw nsw i64 %indvars.iv1589, 1 ; 2 uses
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1590, 20
  br i1 %exitcond1592.not, label %bb.kz, label %.preheader1213, !llvm.loop !64

bb.kz:                                            ; preds = %.preheader1213
  %i.frh = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite1003 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 6, i64 1, ptr %i.frh) #18 ; 0 uses
  tail call void @FreeDoubleMtx(ptr noundef %i.eao) #15
  tail call void @FreeDoubleMtx(ptr noundef %i.eap) #15
  tail call void @FreeDoubleMtx(ptr noundef nonnull %i.eaq) #15
  tail call void @FreeDoubleVec(ptr noundef nonnull %i.ear) #15
  tail call void @FreeDoubleVec(ptr noundef %i.eas) #15
  tail call void @FreeDoubleVec(ptr noundef %i.eat) #15
  br label %.preheader1121.preheader

.preheader1121.preheader:                         ; preds = %bb.jk, %bb.kz, %bb.ig
  %i.fri = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.frj = load i32, ptr @scoremtx, align 4, !tbaa !7
  %i.frk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fri, ptr noundef nonnull @.str.39, i32 noundef %i.frj) #16 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) @amino_n, i8 -1, i64 512, i1 false), !tbaa !7
  %i.frl = load i8, ptr @amino, align 16, !tbaa !11
  %i.frm = sext i8 %i.frl to i64
  %i.frn = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.frm
  store i32 0, ptr %i.frn, align 4, !tbaa !7
  %i.fro = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 1), align 1, !tbaa !11
  %i.frp = sext i8 %i.fro to i64
  %i.frq = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.frp
  store i32 1, ptr %i.frq, align 4, !tbaa !7
  %i.frr = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 2), align 2, !tbaa !11
  %i.frs = sext i8 %i.frr to i64
  %i.frt = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.frs
  store i32 2, ptr %i.frt, align 4, !tbaa !7
  %i.fru = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 3), align 1, !tbaa !11
  %i.frv = sext i8 %i.fru to i64                  ; 6 uses
  %i.frw = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.frv
  store i32 3, ptr %i.frw, align 4, !tbaa !7
  %i.frx = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 4), align 4, !tbaa !11
  %i.fry = sext i8 %i.frx to i64                  ; 6 uses
  %i.frz = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.fry
  store i32 4, ptr %i.frz, align 4, !tbaa !7
  %i.fsa = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 5), align 1, !tbaa !11
  %i.fsb = sext i8 %i.fsa to i64
  %i.fsc = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.fsb
  store i32 5, ptr %i.fsc, align 4, !tbaa !7
  %i.fsd = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 6), align 2, !tbaa !11
  %i.fse = sext i8 %i.fsd to i64                  ; 2 uses
  %i.fsf = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.fse
  store i32 6, ptr %i.fsf, align 4, !tbaa !7
  %i.fsg = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 7), align 1, !tbaa !11
  %i.fsh = sext i8 %i.fsg to i64                  ; 2 uses
  %i.fsi = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.fsh
  store i32 7, ptr %i.fsi, align 4, !tbaa !7
  %i.fsj = load i8, ptr getelementptr inbounds nuw (i8, ptr @amino, i64 8), align 8, !tbaa !11
  %i.fsk = sext i8 %i.fsj to i64                  ; 2 uses
  %i.fsl = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.fsk
  store i32 8, ptr %i.fsl, align 4, !tbaa !7
end_hunk_3
