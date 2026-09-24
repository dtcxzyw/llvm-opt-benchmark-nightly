Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotsplines?download=true
inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dot_splines_:bb.a
  %i.bkd = extractelement <2 x double> %i.bkc, i64 0
  br label %.lr.ph725

.lr.ph725:                                        ; preds = %.lr.ph725.preheader, %bb.ga
  %indvars.iv874 = phi i64 [ 0, %.lr.ph725.preheader ], [ %indvars.iv.next875, %bb.ga ] ; 2 uses
  %i.bke = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv874
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !65 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.bkg = load i32, ptr %i.rw, align 4, !tbaa !157 ; 2 uses
  %i.bkh = sext i32 %i.bkg to i64
  %i.bki = getelementptr [32 x i8], ptr %i.rv, i64 %i.bkh ; 3 uses
  %i.bkj = getelementptr i8, ptr %i.bki, i64 -32
  %.sroa.0.0.copyload.i394 = load double, ptr %i.bkj, align 8, !tbaa !61 ; 2 uses
  %.sroa.632.0..sroa_idx.i = getelementptr i8, ptr %i.bki, i64 -16
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %i.bki, i64 -8
  store double %.sroa.0.0.copyload.i394, ptr %30, align 16, !tbaa !159
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1 ; 3 uses
  %i.bkk = trunc nuw i64 %indvars.iv.next875 to i32
  %i.bkl = uitofp i32 %i.bkk to double            ; 2 uses
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !61
  %i.bkm = load <2 x double>, ptr %.sroa.632.0..sroa_idx.i, align 8, !tbaa !61
  store double %.sroa.8.0.copyload.i, ptr %i.rx, align 8, !tbaa !162
  %i.bkn = insertelement <2 x double> poison, double %i.bkl, i64 0
  %i.bko = shufflevector <2 x double> %i.bkn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bkp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bko, <2 x double> %i.bkc, <2 x double> %i.bkm) ; 4 uses
  store <2 x double> %i.bkp, ptr %i.ry, align 16, !tbaa !61
  store double %.sroa.0.0.copyload.i394, ptr %i.rz, align 16, !tbaa !159
  %i.bkq = extractelement <2 x double> %i.bkp, i64 1
  store double %i.bkq, ptr %i.sa, align 8, !tbaa !162
  %i.bkr = load i32, ptr %i.sc, align 4, !tbaa !157
  %i.bks = sext i32 %i.bkr to i64
  %i.bkt = getelementptr [32 x i8], ptr %i.sb, i64 %i.bks ; 2 uses
  %i.bku = getelementptr i8, ptr %i.bkt, i64 -16
  %foldExtExtBinop = fadd <2 x double> %i.bkc, %i.bkp
  %i.bkv = extractelement <2 x double> %foldExtExtBinop, i64 1
  store double %i.bkv, ptr %i.se, align 8, !tbaa !158
  %i.bkw = getelementptr i8, ptr %i.bkt, i64 -32
  %.sroa.0.0.copyload29.i = load double, ptr %i.bkw, align 8, !tbaa !61
  %i.bkx = fneg double %i.bkl
  %i.bky = call double @llvm.fmuladd.f64(double %i.bkx, double %i.bkd, double %.sroa.0.0.copyload29.i)
  %i.bkz = load <2 x double>, ptr %i.bku, align 8, !tbaa !61 ; 3 uses
  %i.bla = extractelement <2 x double> %i.bkz, i64 0
  store double %i.bla, ptr %i.sd, align 16, !tbaa !160
  %i.blb = shufflevector <2 x double> %i.bkp, <2 x double> %i.bkz, <4 x i32> <i32 poison, i32 3, i32 poison, i32 1>
  %i.blc = insertelement <4 x double> %i.blb, double %i.bky, i64 0
  %i.bld = shufflevector <2 x double> %i.bkz, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ble = shufflevector <4 x double> %i.blc, <4 x double> %i.bld, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  store <4 x double> %i.ble, ptr %i.sf, align 16, !tbaa !61
  %i.blf = icmp sgt i32 %i.bkg, 0
  br i1 %i.blf, label %.lr.ph716, label %.preheader

.preheader:                                       ; preds = %.lr.ph716, %.lr.ph725
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %30) #24, !inline_history !200
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.rz) #24, !inline_history !200
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.sf) #24, !inline_history !200
  %i.blg = load i32, ptr %i.sc, align 4, !tbaa !157 ; 2 uses
  %i.blh = icmp sgt i32 %i.blg, 0
  br i1 %i.blh, label %.lr.ph720.preheader, label %._crit_edge721

.lr.ph716:                                        ; preds = %.lr.ph725, %.lr.ph716
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %.lr.ph716 ], [ 0, %.lr.ph725 ] ; 2 uses
  %i.bli = getelementptr inbounds nuw [32 x i8], ptr %i.rv, i64 %indvars.iv867
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.bli) #24, !inline_history !200
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %i.blj = load i32, ptr %i.rw, align 4, !tbaa !157
  %i.blk = sext i32 %i.blj to i64
  %i.bll = icmp slt i64 %indvars.iv.next868, %i.blk
  br i1 %i.bll, label %.lr.ph716, label %.preheader, !llvm.loop !201

.lr.ph720.preheader:                              ; preds = %.preheader
  %i.blm = zext nneg i32 %i.blg to i64
  br label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph720.preheader, %.lr.ph720
  %indvars.iv871 = phi i64 [ %i.blm, %.lr.ph720.preheader ], [ %indvars.iv.next872, %.lr.ph720 ] ; 2 uses
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -1 ; 2 uses
  %i.bln = getelementptr inbounds nuw [32 x i8], ptr %i.sb, i64 %indvars.iv.next872
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.bln) #24, !inline_history !200
  %i.blo = icmp samesign ugt i64 %indvars.iv871, 1
  br i1 %i.blo, label %.lr.ph720, label %._crit_edge721, !llvm.loop !202

._crit_edge721:                                   ; preds = %.lr.ph720, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 0, ptr %i.i, align 8, !tbaa !101
  br i1 %i.oc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %._crit_edge721
  %i.blp = call ptr @routesplines(ptr noundef nonnull %34, ptr noundef nonnull %i.i) #24, !inline_history !200
  br label %bb.fz

bb.fy:                                            ; preds = %._crit_edge721
  %i.blq = call ptr @routepolylines(ptr noundef nonnull %34, ptr noundef nonnull %i.i) #24, !inline_history !200
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0.i395 = phi ptr [ %i.blp, %bb.fx ], [ %i.blq, %bb.fy ] ; 3 uses
  %i.blr = load i64, ptr %i.i, align 8, !tbaa !101 ; 2 uses
  %.not172.i = icmp eq i64 %i.blr, 0
  br i1 %.not172.i, label %.thread549, label %bb.ga

.thread549:                                       ; preds = %bb.fz
  call void @free(ptr noundef %.0.i395) #24, !inline_history !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %make_flat_edge.exit.thread

bb.ga:                                            ; preds = %bb.fz
  %i.bls = load i32, ptr %i.bkf, align 8
  %i.blt = and i32 %i.bls, 3
  %i.blu = icmp eq i32 %i.blt, 2
  %i.blv = select i1 %i.blu, i64 56, i64 -8
  %i.blw = getelementptr inbounds i8, ptr %i.bkf, i64 %i.blv
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !80
  call void @clip_and_install(ptr noundef nonnull %i.bkf, ptr noundef %i.blx, ptr noundef %.0.i395, i64 noundef %i.blr, ptr noundef nonnull @sinfo) #24, !inline_history !200
  call void @free(ptr noundef %.0.i395) #24, !inline_history !200
  store i64 0, ptr %i.ot, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %exitcond878.not = icmp eq i64 %indvars.iv.next875, %wide.trip.count877
  br i1 %exitcond878.not, label %make_flat_edge.exit.thread, label %.lr.ph725, !llvm.loop !203

make_flat_edge.exit.thread:                       ; preds = %bb.ga, %bb.fw, %make_flat_labeled_edge.exit, %bb.fp, %bb.fs, %.thread549, %bb.cs, %bb.ct, %makeSimpleFlatLabels.exit.i, %.thread1052
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %.loopexit581

make_flat_edge.exit:                              ; preds = %bb.ez
  call fastcc void @cleanupCloneGraph(ptr noundef nonnull %i.anp, ptr noundef %3), !inline_history !186
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %.loopexit581

bb.gb:                                            ; preds = %bb.ek, %bb.ej, %._crit_edge744
  %.2.i.ph = phi i32 [ %i.awd, %._crit_edge744 ], [ %i.auk, %bb.ej ], [ %i.aul, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.bly = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @free(ptr noundef %i.bly) #24
  %.val348768 = load i64, ptr %i.nm, align 8, !tbaa !90
  %.not792 = icmp eq i64 %.val348768, 0
  br i1 %.not792, label %._crit_edge772, label %.lr.ph771

.lr.ph771:                                        ; preds = %bb.gb
  %i.blz = getelementptr inbounds nuw i8, ptr %35, i64 32
  br label %bb.gc

bb.gc:                                            ; preds = %.lr.ph771, %bb.gf
  %.0256769 = phi i64 [ 0, %.lr.ph771 ], [ %i.bmh, %bb.gf ] ; 2 uses
  %i.bma = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %.0256769) #24 ; 2 uses
  %i.bmb = load ptr, ptr %i.blz, align 8, !tbaa !296 ; 2 uses
  %magicptr = ptrtoint ptr %i.bmb to i64
  switch i64 %magicptr, label %bb.ge [
    i64 1, label %bb.gd
    i64 0, label %bb.gf
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.bmc = load ptr, ptr %35, align 8, !tbaa !79
  %i.bmd = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bma
  %.0.copyload13 = load ptr, ptr %i.bmd, align 8
  call void @free(ptr noundef %.0.copyload13) #24
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.bme = load ptr, ptr %35, align 8, !tbaa !79
  %i.bmf = getelementptr inbounds nuw [8 x i8], ptr %i.bme, i64 %i.bma
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !65
  call void %i.bmb(ptr noundef %i.bmg) #24
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gc, %bb.ge, %bb.gd
  %i.bmh = add nuw i64 %.0256769, 1               ; 2 uses
  %.val348 = load i64, ptr %i.nm, align 8, !tbaa !90
  %i.bmi = icmp ult i64 %i.bmh, %.val348
  br i1 %i.bmi, label %bb.gc, label %._crit_edge772, !llvm.loop !204

bb.gg:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, i8 0, i64 56, i1 false)
  store ptr %10, ptr %i.nn, align 8, !tbaa !44
  store ptr %11, ptr %i.no, align 8, !tbaa !44
  store ptr %12, ptr %i.np, align 8, !tbaa !44
  %i.bmj = load ptr, ptr %i.acw, align 8, !tbaa !65 ; 23 uses
  %i.bmk = load i32, ptr %i.bmj, align 8          ; 2 uses
  %i.bml = and i32 %i.bmk, 3                      ; 2 uses
  %i.bmm = icmp eq i32 %i.bml, 3
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmj, i64 64 ; 4 uses
  %i.bmo = select i1 %i.bmm, ptr %i.bmj, ptr %i.bmn
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 56
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !80
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmq, i64 16
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !22
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 360
  %i.bmu = load i32, ptr %i.bmt, align 8, !tbaa !84
  %i.bmv = icmp eq i32 %i.bml, 2
  %i.bmw = getelementptr inbounds i8, ptr %i.bmj, i64 -64 ; 2 uses
  %i.bmx = select i1 %i.bmv, ptr %i.bmj, ptr %i.bmw
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 56
  %i.bmz = load ptr, ptr %i.bmy, align 8, !tbaa !80
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 16
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !22
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 360
  %i.bnd = load i32, ptr %i.bnc, align 8, !tbaa !84
  %i.bne = add i32 %i.bmu, -2
  %i.bnf = sub i32 %i.bne, %i.bnd
  %i.bng = icmp ult i32 %i.bnf, -3                ; 3 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bmj, i64 16 ; 7 uses
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !22 ; 4 uses
  br i1 %i.bng, label %bb.gh, label %bb.gn

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %10, ptr noundef nonnull align 8 dereferenceable(240) %i.bni, i64 240, i1 false), !tbaa.struct !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bmj, i64 64, i1 false), !tbaa.struct !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nu, ptr noundef nonnull align 8 dereferenceable(64) %i.bmn, i64 64, i1 false), !tbaa.struct !106
  store ptr %10, ptr %i.nn, align 8, !tbaa !44
  %i.bnj = load ptr, ptr %i.bnh, align 8, !tbaa !22 ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 220
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !78
  %i.bnm = and i32 %i.bnl, 32
  %.not332.i = icmp eq i32 %i.bnm, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %11, ptr noundef nonnull align 8 dereferenceable(240) %i.bnj, i64 240, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %i.bmj, i64 64, i1 false)
  store ptr %11, ptr %i.no, align 8, !tbaa !93
  %i.bnn = load i32, ptr %i.bmj, align 8
  %i.bno = and i32 %i.bnn, 3                      ; 3 uses
  br i1 %.not332.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.bnp = icmp eq i32 %i.bno, 2
  %i.bnq = select i1 %i.bnp, i64 56, i64 -8
  %i.bnr = getelementptr inbounds i8, ptr %i.bmj, i64 %i.bnq
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !80
  %i.bnt = load i32, ptr %14, align 8
  %i.bnu = and i32 %i.bnt, 3                      ; 2 uses
  %i.bnv = icmp eq i32 %i.bnu, 3
  %.sroa.sel.i405 = select i1 %i.bnv, ptr %.sroa.gep535.i, ptr %.sroa.gep536.i
  store ptr %i.bns, ptr %.sroa.sel.i405, align 8, !tbaa !80
  %i.bnw = icmp eq i32 %i.bno, 3
  %i.bnx = select i1 %i.bnw, i64 56, i64 120
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.bnx
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !80
  %i.boa = icmp eq i32 %i.bnu, 2
  %.sroa.sel539.i = select i1 %i.boa, ptr %.sroa.gep535.i, ptr %.sroa.gep538.i
  store ptr %i.bnz, ptr %.sroa.sel539.i, align 8, !tbaa !80
  %i.bob = load ptr, ptr %i.bnh, align 8, !tbaa !22
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nv, ptr noundef nonnull align 8 dereferenceable(48) %i.boc, i64 48, i1 false), !tbaa.struct !107
  %i.bod = load ptr, ptr %i.bnh, align 8, !tbaa !22
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nw, ptr noundef nonnull align 8 dereferenceable(48) %i.boe, i64 48, i1 false), !tbaa.struct !107
  store i8 1, ptr %i.nx, align 8, !tbaa !66
  store ptr %i.bmj, ptr %i.ny, align 8, !tbaa !92
  %i.bof = load i32, ptr %i.bmj, align 8
  %i.bog = and i32 %i.bof, 3
  %i.boh = icmp eq i32 %i.bog, 2
  %i.boi = select i1 %i.boh, ptr %i.bmj, ptr %i.bmw
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 56
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !80
  %i.bol = load i32, ptr %13, align 8             ; 2 uses
  %i.bom = and i32 %i.bol, 3
  %i.bon = icmp eq i32 %i.bom, 3
  %.sroa.sel196.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bon, ptr %.sroa.gep557.i, ptr %.sroa.gep558.i
  store ptr %i.bok, ptr %.sroa.sel196.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  %i.boo = load ptr, ptr %i.bnh, align 8, !tbaa !22
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.bop, i64 48, i1 false), !tbaa.struct !107
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.boq = icmp eq i32 %i.bno, 3
  %i.bor = select i1 %i.boq, ptr %i.bmj, ptr %i.bmn
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 56
  %i.bot = load ptr, ptr %i.bos, align 8, !tbaa !80
  %i.bou = load i32, ptr %13, align 8             ; 2 uses
  %i.bov = and i32 %i.bou, 3
  %i.bow = icmp eq i32 %i.bov, 3
  %.sroa.sel199.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bow, ptr %.sroa.gep557.i, ptr %.sroa.gep558.i
  store ptr %i.bot, ptr %.sroa.sel199.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nz, ptr noundef nonnull align 8 dereferenceable(64) %i.bmn, i64 64, i1 false), !tbaa.struct !106
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.box = phi i32 [ %i.bou, %bb.gj ], [ %i.bol, %bb.gi ] ; 2 uses
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %bb.gk
  %.0.i.i406 = phi ptr [ %i.bmj, %bb.gk ], [ %i.bpb, %bb.gl ] ; 2 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %.0.i.i406, i64 16
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !22
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 232
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !91 ; 2 uses
  %.not.i.i407 = icmp eq ptr %i.bpb, null
  br i1 %.not.i.i407, label %.preheader.i.i, label %bb.gl, !llvm.loop !0

.preheader.i.i:                                   ; preds = %bb.gl, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.bpf, %.preheader.i.i ], [ %.0.i.i406, %bb.gl ] ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !22
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 160
  %i.bpf = load ptr, ptr %i.bpe, align 8, !tbaa !92 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bpf, null
  br i1 %.not8.i.i, label %getmainedge.exit.i, label %.preheader.i.i, !llvm.loop !1

getmainedge.exit.i:                               ; preds = %.preheader.i.i, %getmainedge.exit.i
  %.0278.i = phi ptr [ %i.bpj, %getmainedge.exit.i ], [ %.1.i.i, %.preheader.i.i ] ; 3 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %.0278.i, i64 16
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !22
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 232
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !91 ; 2 uses
  %.not333.i = icmp eq ptr %i.bpj, null
  br i1 %.not333.i, label %bb.gm, label %getmainedge.exit.i, !llvm.loop !205

bb.gm:                                            ; preds = %getmainedge.exit.i
  %i.bpk = load i32, ptr %.0278.i, align 8
  %i.bpl = and i32 %i.bpk, 3
  %i.bpm = icmp eq i32 %i.bpl, 2
  %i.bpn = select i1 %i.bpm, i64 56, i64 -8
  %i.bpo = getelementptr inbounds i8, ptr %.0278.i, i64 %i.bpn
  %i.bpp = load ptr, ptr %i.bpo, align 8, !tbaa !80
  %i.bpq = and i32 %i.box, 3
  %i.bpr = icmp eq i32 %i.bpq, 2
  %.sroa.sel202.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bpr, ptr %.sroa.gep557.i, ptr %.sroa.gep561.i
  store ptr %i.bpp, ptr %.sroa.sel202.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  store i8 0, ptr %i.oa, align 8, !tbaa !83
  store i8 1, ptr %i.ns, align 8, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.gn:                                            ; preds = %bb.gg
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bni, i64 220
  %i.bpt = load i32, ptr %i.bps, align 4, !tbaa !78
  %i.bpu = and i32 %i.bpt, 32
  %.not331.i = icmp eq i32 %i.bpu, 0
  br i1 %.not331.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %10, ptr noundef nonnull align 8 dereferenceable(240) %i.bni, i64 240, i1 false), !tbaa.struct !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bmj, i64 64, i1 false), !tbaa.struct !106
  store ptr %10, ptr %i.nn, align 8, !tbaa !93
  %i.bpv = load i32, ptr %i.bmj, align 8
  %i.bpw = and i32 %i.bpv, 3
  %i.bpx = icmp eq i32 %i.bpw, 2
  %i.bpy = select i1 %i.bpx, i64 56, i64 -8
  %i.bpz = getelementptr inbounds i8, ptr %i.bmj, i64 %i.bpy
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !80
  %i.bqb = load i32, ptr %13, align 8             ; 2 uses
  %i.bqc = and i32 %i.bqb, 3                      ; 2 uses
  %i.bqd = icmp eq i32 %i.bqc, 3
  %.sroa.sel559.i = select i1 %i.bqd, ptr %.sroa.gep557.i, ptr %.sroa.gep558.i
  store ptr %i.bqa, ptr %.sroa.sel559.i, align 8, !tbaa !80
  %36 = load i32, ptr %i.bmj, align 8
  %37 = and i32 %36, 3
  %i.bqe = icmp eq i32 %37, 3
  %i.bqf = select i1 %i.bqe, i64 56, i64 120
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.bqf
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !80
  %i.bqi = icmp eq i32 %i.bqc, 2
  %.sroa.sel562.i = select i1 %i.bqi, ptr %.sroa.gep557.i, ptr %.sroa.gep561.i
  store ptr %i.bqh, ptr %.sroa.sel562.i, align 8, !tbaa !80
  %i.bqj = load ptr, ptr %i.bnh, align 8, !tbaa !22
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.bqk, i64 48, i1 false), !tbaa.struct !107
  %i.bql = load ptr, ptr %i.bnh, align 8, !tbaa !22
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nr, ptr noundef nonnull align 8 dereferenceable(48) %i.bqm, i64 48, i1 false), !tbaa.struct !107
  store i8 1, ptr %i.ns, align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.gm, %bb.go
  %.ph = phi i32 [ %i.bqb, %bb.go ], [ %i.box, %bb.gm ]
  store ptr %i.bmj, ptr %i.nt, align 8, !tbaa !92
  br label %bb.gp

bb.gp:                                            ; preds = %.sink.split, %bb.gn
  %i.bqn = phi i32 [ %i.bmk, %bb.gn ], [ %.ph, %.sink.split ] ; 3 uses
  %i.bqo = phi ptr [ %i.bni, %bb.gn ], [ %10, %.sink.split ] ; 3 uses
  %.0267.i = phi ptr [ %i.bmj, %bb.gn ], [ %13, %.sink.split ] ; 12 uses
  br i1 %i.ls, label %bb.gq, label %makeLineEdge.exit.thread.i

bb.gq:                                            ; preds = %bb.gp
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 152
  %i.bqq = load i8, ptr %i.bqp, align 8, !tbaa !66
  %.not166.i.i = icmp eq i8 %i.bqq, 0
  br i1 %.not166.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.gq, %.lr.ph.i.i
  %i.bqr = phi ptr [ %i.bqv, %.lr.ph.i.i ], [ %i.bqo, %bb.gq ]
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 160
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !92 ; 3 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 16
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !22 ; 3 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 152
  %i.bqx = load i8, ptr %i.bqw, align 8, !tbaa !66
  %.not.i398.i = icmp eq i8 %i.bqx, 0
  br i1 %.not.i398.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !206

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %.pre.i404 = load i32, ptr %i.bqt, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %bb.gq
  %i.bqy = phi i32 [ %i.bqn, %bb.gq ], [ %.pre.i404, %._crit_edge.i.loopexit.i ]
  %.0141.lcssa165.i.i = phi ptr [ %.0267.i, %bb.gq ], [ %i.bqt, %._crit_edge.i.loopexit.i ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %i.bqo, %bb.gq ], [ %i.bqv, %._crit_edge.i.loopexit.i ] ; 5 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 16
  %i.bra = and i32 %i.bqy, 3                      ; 2 uses
  %i.brb = icmp eq i32 %i.bra, 2
  %.sroa.gep545.i = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 56 ; 2 uses
  %.sroa.gep546.i = getelementptr inbounds i8, ptr %.0141.lcssa165.i.i, i64 -8
  %.sroa.sel547.i = select i1 %i.brb, ptr %.sroa.gep545.i, ptr %.sroa.gep546.i
  %i.brc = load ptr, ptr %.sroa.sel547.i, align 8, !tbaa !80 ; 3 uses
  %i.brd = icmp eq i32 %i.bra, 3
  %.sroa.gep549.i = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 120
  %.sroa.sel550.i = select i1 %i.brd, ptr %.sroa.gep545.i, ptr %.sroa.gep549.i
  %i.bre = load ptr, ptr %.sroa.sel550.i, align 8, !tbaa !80 ; 3 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.brc, i64 16
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !22 ; 3 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 360
  %i.bri = load i32, ptr %i.brh, align 8, !tbaa !84
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bre, i64 16
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !22 ; 3 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 360
  %i.brm = load i32, ptr %i.brl, align 8, !tbaa !84
  %i.brn = sub nsw i32 %i.bri, %i.brm
  %i.bro = call i32 @llvm.abs.i32(i32 %i.brn, i1 true)
  switch i32 %i.bro, label %bb.gs [
    i32 1, label %makeLineEdge.exit.thread.i
    i32 2, label %bb.gr
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i
  %i.brp = load ptr, ptr %i.ob, align 8, !tbaa !255
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 16
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !22
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 129
  %i.brt = load i8, ptr %i.brs, align 1, !tbaa !256
  %i.bru = and i8 %i.brt, 1
  %.not146.i.i = icmp eq i8 %i.bru, 0
  br i1 %.not146.i.i, label %bb.gs, label %makeLineEdge.exit.thread.i

bb.gs:                                            ; preds = %bb.gr, %._crit_edge.i.i
  %i.brv = and i32 %i.bqn, 3
  %i.brw = icmp eq i32 %i.brv, 3
  %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.brw, i64 56, i64 120
  %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0267.i, i64 %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.brx = load ptr, ptr %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  %i.bry = icmp eq ptr %i.brx, %i.bre             ; 7 uses
  %..i.i = select i1 %i.bry, ptr %i.brc, ptr %i.bre
  %.202.i.i = select i1 %i.bry, ptr %i.brk, ptr %i.brg
  %.205.i.i = select i1 %i.bry, ptr %i.brg, ptr %i.brk
  %i.brz = getelementptr inbounds nuw i8, ptr %.202.i.i, i64 32
  %.sroa.gep529 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 2 uses
  %.sroa.gep530 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 72 ; 2 uses
  %.203.i.i.sroa.sel = select i1 %i.bry, ptr %.sroa.gep529, ptr %.sroa.gep530
  %i.bsa = load <2 x double>, ptr %i.brz, align 8
  %i.bsb = load double, ptr %.203.i.i.sroa.sel, align 8
  %.sroa.gep531 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 32 ; 2 uses
  %.sroa.gep532 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 80 ; 2 uses
  %.204.i.i.sroa.sel = select i1 %i.bry, ptr %.sroa.gep531, ptr %.sroa.gep532
  %i.bsc = load double, ptr %.204.i.i.sroa.sel, align 8
  %i.bsd = insertelement <2 x double> poison, double %i.bsb, i64 0
  %i.bse = insertelement <2 x double> %i.bsd, double %i.bsc, i64 1
  %i.bsf = fadd <2 x double> %i.bsa, %i.bse       ; 6 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %.205.i.i, i64 32
  %.206.i.i.sroa.sel = select i1 %i.bry, ptr %.sroa.gep530, ptr %.sroa.gep529
  %i.bsh = load <2 x double>, ptr %i.bsg, align 8
  %i.bsi = load double, ptr %.206.i.i.sroa.sel, align 8
  %.207.i.i.sroa.sel = select i1 %i.bry, ptr %.sroa.gep532, ptr %.sroa.gep531
  %i.bsj = load double, ptr %.207.i.i.sroa.sel, align 8
  %i.bsk = insertelement <2 x double> poison, double %i.bsi, i64 0
  %i.bsl = insertelement <2 x double> %i.bsk, double %i.bsj, i64 1
  %i.bsm = fadd <2 x double> %i.bsh, %i.bsl       ; 4 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 120
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !60 ; 3 uses
  %.not150.i.i = icmp eq ptr %i.bso, null
  %i.bsp = extractelement <2 x double> %i.bsf, i64 0
  %i.bsq = extractelement <2 x double> %i.bsf, i64 1
  br i1 %.not150.i.i, label %makeLineEdge.exit.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bso, i64 40
  %.sroa.020.0.copyload.i.i = load double, ptr %i.bsr, align 8, !tbaa !61 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bso, i64 48
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !61 ; 2 uses
  %i.bss = call ptr @agraphof(ptr noundef nonnull %i.brc) #24
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 16
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !22
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 132
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !259
  %i.bsx = and i32 %i.bsw, 1
  %.not151.i.i = icmp eq i32 %i.bsx, 0            ; 2 uses
  %.sroa.5.0.copyload..sroa.020.0.copyload.i.i = select i1 %.not151.i.i, double %.sroa.5.0.copyload.i.i, double %.sroa.020.0.copyload.i.i
  %.sroa.020.0.copyload..sroa.5.0.copyload.i.i = select i1 %.not151.i.i, double %.sroa.020.0.copyload.i.i, double %.sroa.5.0.copyload.i.i
  %i.bsy = load ptr, ptr %i.bqz, align 8, !tbaa !22
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 120
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !60 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 72
  %.sroa.023.0.copyload.i.i = load double, ptr %i.btb, align 8, !tbaa !61 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bta, i64 80
  %.sroa.11.0.copyload.i.i = load double, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !61 ; 2 uses
  %i.btc = insertelement <2 x double> %i.bsm, double %.sroa.023.0.copyload.i.i, i64 0
  %i.btd = fsub <2 x double> %i.btc, %i.bsf       ; 2 uses
  %i.bte = insertelement <2 x double> %i.bsm, double %.sroa.11.0.copyload.i.i, i64 1
  %i.btf = fsub <2 x double> %i.bte, %i.bsf       ; 2 uses
  %i.btg = extractelement <2 x double> %i.btf, i64 0
  %i.bth = fneg double %i.btg
  %i.bti = extractelement <2 x double> %i.btf, i64 1
  %i.btj = fmul double %i.bti, %i.bth
  %i.btk = extractelement <2 x double> %i.btd, i64 0
  %i.btl = extractelement <2 x double> %i.btd, i64 1
  %i.btm = call double @llvm.fmuladd.f64(double %i.btl, double %i.btk, double %i.btj)
  %i.btn = fcmp ogt double %i.btm, 0.000000e+00   ; 2 uses
  %i.bto = fmul double %.sroa.020.0.copyload..sroa.5.0.copyload.i.i, 5.000000e-01 ; 2 uses
  %i.btp = fmul double %.sroa.5.0.copyload..sroa.020.0.copyload.i.i, 5.000000e-01 ; 2 uses
  %i.btq = fneg double %i.bto
  %.sroa.023.0.p.i.i = select i1 %i.btn, double %i.bto, double %i.btq
  %.sroa.023.0.i.i = fadd double %.sroa.023.0.copyload.i.i, %.sroa.023.0.p.i.i ; 2 uses
  %i.btr = fneg double %i.btp
  %.sroa.11.0.p.i.i = select i1 %i.btn, double %i.btr, double %i.btp
  %.sroa.11.0.i.i = fadd double %.sroa.11.0.copyload.i.i, %.sroa.11.0.p.i.i ; 2 uses
  store <2 x double> %i.bsf, ptr %i.ok, align 8, !tbaa !61
  %i.bts = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btt = load ptr, ptr %18, align 8, !tbaa !79
  %i.btu = getelementptr inbounds nuw [16 x i8], ptr %i.btt, i64 %i.bts
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btu, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !258
  store <2 x double> %i.bsf, ptr %i.ok, align 8, !tbaa !61
  %i.btv = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btw = load ptr, ptr %18, align 8, !tbaa !79
  %i.btx = getelementptr inbounds nuw [16 x i8], ptr %i.btw, i64 %i.btv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btx, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !258
  store double %.sroa.023.0.i.i, ptr %i.ok, align 8, !tbaa !61
  store double %.sroa.11.0.i.i, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.bty = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btz = load ptr, ptr %18, align 8, !tbaa !79
  %i.bua = getelementptr inbounds nuw [16 x i8], ptr %i.btz, i64 %i.bty
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bua, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !258
  br label %makeLineEdge.exit.i

makeLineEdge.exit.i:                              ; preds = %bb.gs, %bb.gt
  %.sink1122 = phi double [ %.sroa.023.0.i.i, %bb.gt ], [ %i.bsp, %bb.gs ] ; 2 uses
  %.sink1121 = phi double [ %.sroa.11.0.i.i, %bb.gt ], [ %i.bsq, %bb.gs ] ; 2 uses
  store double %.sink1122, ptr %i.ok, align 8, !tbaa !61
  store double %.sink1121, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.bub = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.buc = load ptr, ptr %18, align 8, !tbaa !79
  %i.bud = getelementptr inbounds nuw [16 x i8], ptr %i.buc, i64 %i.bub
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bud, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
  store double %.sink1122, ptr %i.ok, align 8, !tbaa !61
  store double %.sink1121, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.bue = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.buf = load ptr, ptr %18, align 8, !tbaa !79
  %i.bug = getelementptr inbounds nuw [16 x i8], ptr %i.buf, i64 %i.bue
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bug, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
end_hunk_0
