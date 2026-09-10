Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotsplines?download=true
inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dot_splines_:bb.a
  %wide.trip.count877 = zext i32 %.0262.lcssa1037 to i64
  %i.bkf = extractelement <2 x double> %i.bke, i64 0
  br label %.lr.ph725

.lr.ph725:                                        ; preds = %.lr.ph725.preheader, %bb.ga
  %indvars.iv874 = phi i64 [ 0, %.lr.ph725.preheader ], [ %indvars.iv.next875, %bb.ga ] ; 2 uses
  %i.bkg = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %indvars.iv874
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !65 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.bki = load i32, ptr %i.rw, align 4, !tbaa !157 ; 2 uses
  %i.bkj = sext i32 %i.bki to i64
  %i.bkk = getelementptr [32 x i8], ptr %i.rv, i64 %i.bkj ; 3 uses
  %i.bkl = getelementptr i8, ptr %i.bkk, i64 -32
  %.sroa.0.0.copyload.i394 = load double, ptr %i.bkl, align 8, !tbaa !61 ; 2 uses
  %.sroa.632.0..sroa_idx.i = getelementptr i8, ptr %i.bkk, i64 -16
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %i.bkk, i64 -8
  store double %.sroa.0.0.copyload.i394, ptr %30, align 16, !tbaa !159
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1 ; 3 uses
  %i.bkm = trunc nuw i64 %indvars.iv.next875 to i32
  %i.bkn = uitofp i32 %i.bkm to double            ; 2 uses
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !61
  %i.bko = load <2 x double>, ptr %.sroa.632.0..sroa_idx.i, align 8, !tbaa !61
  store double %.sroa.8.0.copyload.i, ptr %i.rx, align 8, !tbaa !162
  %i.bkp = insertelement <2 x double> poison, double %i.bkn, i64 0
  %i.bkq = shufflevector <2 x double> %i.bkp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bkr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bkq, <2 x double> %i.bke, <2 x double> %i.bko) ; 3 uses
  store <2 x double> %i.bkr, ptr %i.ry, align 16, !tbaa !61
  store double %.sroa.0.0.copyload.i394, ptr %i.rz, align 16, !tbaa !159
  %i.bks = extractelement <2 x double> %i.bkr, i64 1 ; 2 uses
  store double %i.bks, ptr %i.sa, align 8, !tbaa !162
  %i.bkt = load i32, ptr %i.sc, align 4, !tbaa !157
  %i.bku = sext i32 %i.bkt to i64
  %i.bkv = getelementptr [32 x i8], ptr %i.sb, i64 %i.bku ; 2 uses
  %i.bkw = getelementptr i8, ptr %i.bkv, i64 -16
  %foldExtExtBinop = fadd <2 x double> %i.bke, %i.bkr
  %i.bkx = extractelement <2 x double> %foldExtExtBinop, i64 1
  store double %i.bkx, ptr %i.se, align 8, !tbaa !158
  %i.bky = getelementptr i8, ptr %i.bkv, i64 -32
  %.sroa.0.0.copyload29.i = load double, ptr %i.bky, align 8, !tbaa !61
  %i.bkz = load <2 x double>, ptr %i.bkw, align 8, !tbaa !61 ; 2 uses
  %i.bla = extractelement <2 x double> %i.bkz, i64 0
  store double %i.bla, ptr %i.sd, align 16, !tbaa !160
  %i.blb = shufflevector <2 x double> %i.bkz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.blb, ptr %i.sg, align 8, !tbaa !61
  %i.blc = fneg double %i.bkn
  %i.bld = call double @llvm.fmuladd.f64(double %i.blc, double %i.bkf, double %.sroa.0.0.copyload29.i)
  store double %i.bld, ptr %i.sf, align 16, !tbaa !159
  store double %i.bks, ptr %i.sh, align 8, !tbaa !158
  %i.ble = icmp sgt i32 %i.bki, 0
  br i1 %i.ble, label %.lr.ph716, label %.preheader

.preheader:                                       ; preds = %.lr.ph716, %.lr.ph725
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %30) #24, !inline_history !200
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.rz) #24, !inline_history !200
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.sf) #24, !inline_history !200
  %i.blf = load i32, ptr %i.sc, align 4, !tbaa !157 ; 2 uses
  %i.blg = icmp sgt i32 %i.blf, 0
  br i1 %i.blg, label %.lr.ph720.preheader, label %._crit_edge721

.lr.ph716:                                        ; preds = %.lr.ph725, %.lr.ph716
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %.lr.ph716 ], [ 0, %.lr.ph725 ] ; 2 uses
  %i.blh = getelementptr inbounds nuw [32 x i8], ptr %i.rv, i64 %indvars.iv867
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.blh) #24, !inline_history !200
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %i.bli = load i32, ptr %i.rw, align 4, !tbaa !157
  %i.blj = sext i32 %i.bli to i64
  %i.blk = icmp slt i64 %indvars.iv.next868, %i.blj
  br i1 %i.blk, label %.lr.ph716, label %.preheader, !llvm.loop !201

.lr.ph720.preheader:                              ; preds = %.preheader
  %i.bll = zext nneg i32 %i.blf to i64
  br label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph720.preheader, %.lr.ph720
  %indvars.iv871 = phi i64 [ %i.bll, %.lr.ph720.preheader ], [ %indvars.iv.next872, %.lr.ph720 ] ; 2 uses
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -1 ; 2 uses
  %i.blm = getelementptr inbounds nuw [32 x i8], ptr %i.sb, i64 %indvars.iv.next872
  call void @add_box(ptr noundef nonnull %34, ptr noundef nonnull byval(%struct.boxf) align 8 %i.blm) #24, !inline_history !200
  %i.bln = icmp samesign ugt i64 %indvars.iv871, 1
  br i1 %i.bln, label %.lr.ph720, label %._crit_edge721, !llvm.loop !202

._crit_edge721:                                   ; preds = %.lr.ph720, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 0, ptr %i.i, align 8, !tbaa !101
  br i1 %i.oc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %._crit_edge721
  %i.blo = call ptr @routesplines(ptr noundef nonnull %34, ptr noundef nonnull %i.i) #24, !inline_history !200
  br label %bb.fz

bb.fy:                                            ; preds = %._crit_edge721
  %i.blp = call ptr @routepolylines(ptr noundef nonnull %34, ptr noundef nonnull %i.i) #24, !inline_history !200
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0.i395 = phi ptr [ %i.blo, %bb.fx ], [ %i.blp, %bb.fy ] ; 3 uses
  %i.blq = load i64, ptr %i.i, align 8, !tbaa !101 ; 2 uses
  %.not172.i = icmp eq i64 %i.blq, 0
  br i1 %.not172.i, label %.thread549, label %bb.ga

.thread549:                                       ; preds = %bb.fz
  call void @free(ptr noundef %.0.i395) #24, !inline_history !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %make_flat_edge.exit.thread

bb.ga:                                            ; preds = %bb.fz
  %i.blr = load i32, ptr %i.bkh, align 8
  %i.bls = and i32 %i.blr, 3
  %i.blt = icmp eq i32 %i.bls, 2
  %i.blu = select i1 %i.blt, i64 56, i64 -8
  %i.blv = getelementptr inbounds i8, ptr %i.bkh, i64 %i.blu
  %i.blw = load ptr, ptr %i.blv, align 8, !tbaa !80
  call void @clip_and_install(ptr noundef nonnull %i.bkh, ptr noundef %i.blw, ptr noundef %.0.i395, i64 noundef %i.blq, ptr noundef nonnull @sinfo) #24, !inline_history !200
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
  call fastcc void @cleanupCloneGraph(ptr noundef nonnull %i.anr, ptr noundef %3), !inline_history !186
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %.loopexit581

bb.gb:                                            ; preds = %bb.ek, %bb.ej, %._crit_edge744
  %.2.i.ph = phi i32 [ %i.awf, %._crit_edge744 ], [ %i.aum, %bb.ej ], [ %i.aun, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.blx = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @free(ptr noundef %i.blx) #24
  %.val348768 = load i64, ptr %i.nm, align 8, !tbaa !90
  %.not792 = icmp eq i64 %.val348768, 0
  br i1 %.not792, label %._crit_edge772, label %.lr.ph771

.lr.ph771:                                        ; preds = %bb.gb
  %i.bly = getelementptr inbounds nuw i8, ptr %35, i64 32
  br label %bb.gc

bb.gc:                                            ; preds = %.lr.ph771, %bb.gf
  %.0256769 = phi i64 [ 0, %.lr.ph771 ], [ %i.bmg, %bb.gf ] ; 2 uses
  %i.blz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %.0256769) #24 ; 2 uses
  %i.bma = load ptr, ptr %i.bly, align 8, !tbaa !296 ; 2 uses
  %magicptr = ptrtoint ptr %i.bma to i64
  switch i64 %magicptr, label %bb.ge [
    i64 1, label %bb.gd
    i64 0, label %bb.gf
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.bmb = load ptr, ptr %35, align 8, !tbaa !79
  %i.bmc = getelementptr inbounds nuw [8 x i8], ptr %i.bmb, i64 %i.blz
  %.0.copyload13 = load ptr, ptr %i.bmc, align 8
  call void @free(ptr noundef %.0.copyload13) #24
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.bmd = load ptr, ptr %35, align 8, !tbaa !79
  %i.bme = getelementptr inbounds nuw [8 x i8], ptr %i.bmd, i64 %i.blz
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !65
  call void %i.bma(ptr noundef %i.bmf) #24
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gc, %bb.ge, %bb.gd
  %i.bmg = add nuw i64 %.0256769, 1               ; 2 uses
  %.val348 = load i64, ptr %i.nm, align 8, !tbaa !90
  %i.bmh = icmp ult i64 %i.bmg, %.val348
  br i1 %i.bmh, label %bb.gc, label %._crit_edge772, !llvm.loop !204

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
  %i.bmi = load ptr, ptr %i.acy, align 8, !tbaa !65 ; 22 uses
  %i.bmj = load i32, ptr %i.bmi, align 8          ; 2 uses
  %i.bmk = and i32 %i.bmj, 3                      ; 2 uses
  %i.bml = icmp eq i32 %i.bmk, 3
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmi, i64 64 ; 4 uses
  %i.bmn = select i1 %i.bml, ptr %i.bmi, ptr %i.bmm
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 56
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !80
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 16
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !22
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 360
  %i.bmt = load i32, ptr %i.bms, align 8, !tbaa !84
  %i.bmu = icmp eq i32 %i.bmk, 2
  %i.bmv = getelementptr inbounds i8, ptr %i.bmi, i64 -64 ; 2 uses
  %i.bmw = select i1 %i.bmu, ptr %i.bmi, ptr %i.bmv
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 56
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !80
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 16
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !22
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 360
  %i.bnc = load i32, ptr %i.bnb, align 8, !tbaa !84
  %i.bnd = add i32 %i.bmt, -2
  %i.bne = sub i32 %i.bnd, %i.bnc
  %i.bnf = icmp ult i32 %i.bne, -3                ; 3 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bmi, i64 16 ; 7 uses
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !22 ; 4 uses
  br i1 %i.bnf, label %bb.gh, label %bb.gn

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %10, ptr noundef nonnull align 8 dereferenceable(240) %i.bnh, i64 240, i1 false), !tbaa.struct !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bmi, i64 64, i1 false), !tbaa.struct !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nu, ptr noundef nonnull align 8 dereferenceable(64) %i.bmm, i64 64, i1 false), !tbaa.struct !106
  store ptr %10, ptr %i.nn, align 8, !tbaa !44
  %i.bni = load ptr, ptr %i.bng, align 8, !tbaa !22 ; 2 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 220
  %i.bnk = load i32, ptr %i.bnj, align 4, !tbaa !78
  %i.bnl = and i32 %i.bnk, 32
  %.not332.i = icmp eq i32 %i.bnl, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %11, ptr noundef nonnull align 8 dereferenceable(240) %i.bni, i64 240, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %i.bmi, i64 64, i1 false)
  store ptr %11, ptr %i.no, align 8, !tbaa !93
  %i.bnm = load i32, ptr %i.bmi, align 8
  %i.bnn = and i32 %i.bnm, 3                      ; 3 uses
  br i1 %.not332.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.bno = icmp eq i32 %i.bnn, 2
  %i.bnp = select i1 %i.bno, i64 56, i64 -8
  %i.bnq = getelementptr inbounds i8, ptr %i.bmi, i64 %i.bnp
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !80
  %i.bns = load i32, ptr %14, align 8
  %i.bnt = and i32 %i.bns, 3                      ; 2 uses
  %i.bnu = icmp eq i32 %i.bnt, 3
  %.sroa.sel.i405 = select i1 %i.bnu, ptr %.sroa.gep535.i, ptr %.sroa.gep536.i
  store ptr %i.bnr, ptr %.sroa.sel.i405, align 8, !tbaa !80
  %i.bnv = icmp eq i32 %i.bnn, 3
  %i.bnw = select i1 %i.bnv, i64 56, i64 120
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bmi, i64 %i.bnw
  %i.bny = load ptr, ptr %i.bnx, align 8, !tbaa !80
  %i.bnz = icmp eq i32 %i.bnt, 2
  %.sroa.sel539.i = select i1 %i.bnz, ptr %.sroa.gep535.i, ptr %.sroa.gep538.i
  store ptr %i.bny, ptr %.sroa.sel539.i, align 8, !tbaa !80
  %i.boa = load ptr, ptr %i.bng, align 8, !tbaa !22
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nv, ptr noundef nonnull align 8 dereferenceable(48) %i.bob, i64 48, i1 false), !tbaa.struct !107
  %i.boc = load ptr, ptr %i.bng, align 8, !tbaa !22
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nw, ptr noundef nonnull align 8 dereferenceable(48) %i.bod, i64 48, i1 false), !tbaa.struct !107
  store i8 1, ptr %i.nx, align 8, !tbaa !66
  store ptr %i.bmi, ptr %i.ny, align 8, !tbaa !92
  %i.boe = load i32, ptr %i.bmi, align 8
  %i.bof = and i32 %i.boe, 3
  %i.bog = icmp eq i32 %i.bof, 2
  %i.boh = select i1 %i.bog, ptr %i.bmi, ptr %i.bmv
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 56
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !80
  %i.bok = load i32, ptr %13, align 8             ; 2 uses
  %i.bol = and i32 %i.bok, 3
  %i.bom = icmp eq i32 %i.bol, 3
  %.sroa.sel196.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bom, ptr %.sroa.gep557.i, ptr %.sroa.gep558.i
  store ptr %i.boj, ptr %.sroa.sel196.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  %i.bon = load ptr, ptr %i.bng, align 8, !tbaa !22
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.boo, i64 48, i1 false), !tbaa.struct !107
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.bop = icmp eq i32 %i.bnn, 3
  %i.boq = select i1 %i.bop, ptr %i.bmi, ptr %i.bmm
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 56
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !80
  %i.bot = load i32, ptr %13, align 8             ; 2 uses
  %i.bou = and i32 %i.bot, 3
  %i.bov = icmp eq i32 %i.bou, 3
  %.sroa.sel199.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bov, ptr %.sroa.gep557.i, ptr %.sroa.gep558.i
  store ptr %i.bos, ptr %.sroa.sel199.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nz, ptr noundef nonnull align 8 dereferenceable(64) %i.bmm, i64 64, i1 false), !tbaa.struct !106
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.bow = phi i32 [ %i.bot, %bb.gj ], [ %i.bok, %bb.gi ] ; 2 uses
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %bb.gk
  %.0.i.i406 = phi ptr [ %i.bmi, %bb.gk ], [ %i.bpa, %bb.gl ] ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %.0.i.i406, i64 16
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !22
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 232
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !91 ; 2 uses
  %.not.i.i407 = icmp eq ptr %i.bpa, null
  br i1 %.not.i.i407, label %.preheader.i.i, label %bb.gl, !llvm.loop !0

.preheader.i.i:                                   ; preds = %bb.gl, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.bpe, %.preheader.i.i ], [ %.0.i.i406, %bb.gl ] ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !22
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 160
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !92 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bpe, null
  br i1 %.not8.i.i, label %getmainedge.exit.i, label %.preheader.i.i, !llvm.loop !1

getmainedge.exit.i:                               ; preds = %.preheader.i.i, %getmainedge.exit.i
  %.0278.i = phi ptr [ %i.bpi, %getmainedge.exit.i ], [ %.1.i.i, %.preheader.i.i ] ; 3 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %.0278.i, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !22
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 232
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !91 ; 2 uses
  %.not333.i = icmp eq ptr %i.bpi, null
  br i1 %.not333.i, label %bb.gm, label %getmainedge.exit.i, !llvm.loop !205

bb.gm:                                            ; preds = %getmainedge.exit.i
  %i.bpj = load i32, ptr %.0278.i, align 8
  %i.bpk = and i32 %i.bpj, 3
  %i.bpl = icmp eq i32 %i.bpk, 2
  %i.bpm = select i1 %i.bpl, i64 56, i64 -8
  %i.bpn = getelementptr inbounds i8, ptr %.0278.i, i64 %i.bpm
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !80
  %i.bpp = and i32 %i.bow, 3
  %i.bpq = icmp eq i32 %i.bpp, 2
  %.sroa.sel202.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel = select i1 %i.bpq, ptr %.sroa.gep557.i, ptr %.sroa.gep561.i
  store ptr %i.bpo, ptr %.sroa.sel202.v.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  store i8 0, ptr %i.oa, align 8, !tbaa !83
  store i8 1, ptr %i.ns, align 8, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.gn:                                            ; preds = %bb.gg
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bnh, i64 220
  %i.bps = load i32, ptr %i.bpr, align 4, !tbaa !78
  %i.bpt = and i32 %i.bps, 32
  %.not331.i = icmp eq i32 %i.bpt, 0
  br i1 %.not331.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %10, ptr noundef nonnull align 8 dereferenceable(240) %i.bnh, i64 240, i1 false), !tbaa.struct !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bmi, i64 64, i1 false), !tbaa.struct !106
  store ptr %10, ptr %i.nn, align 8, !tbaa !93
  %i.bpu = load i32, ptr %i.bmi, align 8
  %i.bpv = and i32 %i.bpu, 3                      ; 2 uses
  %i.bpw = icmp eq i32 %i.bpv, 2
  %i.bpx = select i1 %i.bpw, i64 56, i64 -8
  %i.bpy = getelementptr inbounds i8, ptr %i.bmi, i64 %i.bpx
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !80
  %i.bqa = load i32, ptr %13, align 8             ; 2 uses
  %i.bqb = and i32 %i.bqa, 3                      ; 2 uses
  %i.bqc = icmp eq i32 %i.bqb, 3
  %.sroa.sel559.i = select i1 %i.bqc, ptr %.sroa.gep557.i, ptr %.sroa.gep558.i
  store ptr %i.bpz, ptr %.sroa.sel559.i, align 8, !tbaa !80
  %i.bqd = icmp eq i32 %i.bpv, 3
  %i.bqe = select i1 %i.bqd, i64 56, i64 120
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bmi, i64 %i.bqe
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !80
  %i.bqh = icmp eq i32 %i.bqb, 2
  %.sroa.sel562.i = select i1 %i.bqh, ptr %.sroa.gep557.i, ptr %.sroa.gep561.i
  store ptr %i.bqg, ptr %.sroa.sel562.i, align 8, !tbaa !80
  %i.bqi = load ptr, ptr %i.bng, align 8, !tbaa !22
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.bqj, i64 48, i1 false), !tbaa.struct !107
  %i.bqk = load ptr, ptr %i.bng, align 8, !tbaa !22
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nr, ptr noundef nonnull align 8 dereferenceable(48) %i.bql, i64 48, i1 false), !tbaa.struct !107
  store i8 1, ptr %i.ns, align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.gm, %bb.go
  %.ph = phi i32 [ %i.bqa, %bb.go ], [ %i.bow, %bb.gm ]
  store ptr %i.bmi, ptr %i.nt, align 8, !tbaa !92
  br label %bb.gp

bb.gp:                                            ; preds = %.sink.split, %bb.gn
  %i.bqm = phi i32 [ %i.bmj, %bb.gn ], [ %.ph, %.sink.split ] ; 3 uses
  %i.bqn = phi ptr [ %i.bnh, %bb.gn ], [ %10, %.sink.split ] ; 3 uses
  %.0267.i = phi ptr [ %i.bmi, %bb.gn ], [ %13, %.sink.split ] ; 12 uses
  br i1 %i.ls, label %bb.gq, label %makeLineEdge.exit.thread.i

bb.gq:                                            ; preds = %bb.gp
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 152
  %i.bqp = load i8, ptr %i.bqo, align 8, !tbaa !66
  %.not166.i.i = icmp eq i8 %i.bqp, 0
  br i1 %.not166.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.gq, %.lr.ph.i.i
  %i.bqq = phi ptr [ %i.bqu, %.lr.ph.i.i ], [ %i.bqn, %bb.gq ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 160
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !92 ; 3 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 16
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !22 ; 3 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqu, i64 152
  %i.bqw = load i8, ptr %i.bqv, align 8, !tbaa !66
  %.not.i398.i = icmp eq i8 %i.bqw, 0
  br i1 %.not.i398.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !206

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %.pre.i404 = load i32, ptr %i.bqs, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %bb.gq
  %i.bqx = phi i32 [ %i.bqm, %bb.gq ], [ %.pre.i404, %._crit_edge.i.loopexit.i ]
  %.0141.lcssa165.i.i = phi ptr [ %.0267.i, %bb.gq ], [ %i.bqs, %._crit_edge.i.loopexit.i ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %i.bqn, %bb.gq ], [ %i.bqu, %._crit_edge.i.loopexit.i ] ; 5 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 16
  %i.bqz = and i32 %i.bqx, 3                      ; 2 uses
  %i.bra = icmp eq i32 %i.bqz, 2
  %.sroa.gep545.i = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 56 ; 2 uses
  %.sroa.gep546.i = getelementptr inbounds i8, ptr %.0141.lcssa165.i.i, i64 -8
  %.sroa.sel547.i = select i1 %i.bra, ptr %.sroa.gep545.i, ptr %.sroa.gep546.i
  %i.brb = load ptr, ptr %.sroa.sel547.i, align 8, !tbaa !80 ; 3 uses
  %i.brc = icmp eq i32 %i.bqz, 3
  %.sroa.gep549.i = getelementptr inbounds nuw i8, ptr %.0141.lcssa165.i.i, i64 120
  %.sroa.sel550.i = select i1 %i.brc, ptr %.sroa.gep545.i, ptr %.sroa.gep549.i
  %i.brd = load ptr, ptr %.sroa.sel550.i, align 8, !tbaa !80 ; 3 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brb, i64 16
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !22 ; 3 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 360
  %i.brh = load i32, ptr %i.brg, align 8, !tbaa !84
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brd, i64 16
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !22 ; 3 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 360
  %i.brl = load i32, ptr %i.brk, align 8, !tbaa !84
  %i.brm = sub nsw i32 %i.brh, %i.brl
  %i.brn = call i32 @llvm.abs.i32(i32 %i.brm, i1 true)
  switch i32 %i.brn, label %bb.gs [
    i32 1, label %makeLineEdge.exit.thread.i
    i32 2, label %bb.gr
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i
  %i.bro = load ptr, ptr %i.ob, align 8, !tbaa !255
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 16
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !22
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 129
  %i.brs = load i8, ptr %i.brr, align 1, !tbaa !256
  %i.brt = and i8 %i.brs, 1
  %.not146.i.i = icmp eq i8 %i.brt, 0
  br i1 %.not146.i.i, label %bb.gs, label %makeLineEdge.exit.thread.i

bb.gs:                                            ; preds = %bb.gr, %._crit_edge.i.i
  %i.bru = and i32 %i.bqm, 3
  %i.brv = icmp eq i32 %i.bru, 3
  %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.brv, i64 56, i64 120
  %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0267.i, i64 %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.brw = load ptr, ptr %.sroa.sel544.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !80
  %i.brx = icmp eq ptr %i.brw, %i.brd             ; 7 uses
  %..i.i = select i1 %i.brx, ptr %i.brb, ptr %i.brd
  %.202.i.i = select i1 %i.brx, ptr %i.brj, ptr %i.brf
  %.205.i.i = select i1 %i.brx, ptr %i.brf, ptr %i.brj
  %i.bry = getelementptr inbounds nuw i8, ptr %.202.i.i, i64 32
  %.sroa.gep529 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24 ; 2 uses
  %.sroa.gep530 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 72 ; 2 uses
  %.203.i.i.sroa.sel = select i1 %i.brx, ptr %.sroa.gep529, ptr %.sroa.gep530
  %i.brz = load <2 x double>, ptr %i.bry, align 8
  %i.bsa = load double, ptr %.203.i.i.sroa.sel, align 8
  %.sroa.gep531 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 32 ; 2 uses
  %.sroa.gep532 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 80 ; 2 uses
  %.204.i.i.sroa.sel = select i1 %i.brx, ptr %.sroa.gep531, ptr %.sroa.gep532
  %i.bsb = load double, ptr %.204.i.i.sroa.sel, align 8
  %i.bsc = insertelement <2 x double> poison, double %i.bsa, i64 0
  %i.bsd = insertelement <2 x double> %i.bsc, double %i.bsb, i64 1
  %i.bse = fadd <2 x double> %i.brz, %i.bsd       ; 6 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %.205.i.i, i64 32
  %.206.i.i.sroa.sel = select i1 %i.brx, ptr %.sroa.gep530, ptr %.sroa.gep529
  %i.bsg = load <2 x double>, ptr %i.bsf, align 8
  %i.bsh = load double, ptr %.206.i.i.sroa.sel, align 8
  %.207.i.i.sroa.sel = select i1 %i.brx, ptr %.sroa.gep532, ptr %.sroa.gep531
  %i.bsi = load double, ptr %.207.i.i.sroa.sel, align 8
  %i.bsj = insertelement <2 x double> poison, double %i.bsh, i64 0
  %i.bsk = insertelement <2 x double> %i.bsj, double %i.bsi, i64 1
  %i.bsl = fadd <2 x double> %i.bsg, %i.bsk       ; 4 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 120
  %i.bsn = load ptr, ptr %i.bsm, align 8, !tbaa !60 ; 3 uses
  %.not150.i.i = icmp eq ptr %i.bsn, null
  %i.bso = extractelement <2 x double> %i.bse, i64 0
  %i.bsp = extractelement <2 x double> %i.bse, i64 1
  br i1 %.not150.i.i, label %makeLineEdge.exit.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsn, i64 40
  %.sroa.020.0.copyload.i.i = load double, ptr %i.bsq, align 8, !tbaa !61 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bsn, i64 48
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !61 ; 2 uses
  %i.bsr = call ptr @agraphof(ptr noundef nonnull %i.brb) #24
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsr, i64 16
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !22
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 132
  %i.bsv = load i32, ptr %i.bsu, align 4, !tbaa !259
  %i.bsw = and i32 %i.bsv, 1
  %.not151.i.i = icmp eq i32 %i.bsw, 0            ; 2 uses
  %.sroa.5.0.copyload..sroa.020.0.copyload.i.i = select i1 %.not151.i.i, double %.sroa.5.0.copyload.i.i, double %.sroa.020.0.copyload.i.i
  %.sroa.020.0.copyload..sroa.5.0.copyload.i.i = select i1 %.not151.i.i, double %.sroa.020.0.copyload.i.i, double %.sroa.5.0.copyload.i.i
  %i.bsx = load ptr, ptr %i.bqy, align 8, !tbaa !22
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 120
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !60 ; 2 uses
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 72
  %.sroa.023.0.copyload.i.i = load double, ptr %i.bta, align 8, !tbaa !61 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bsz, i64 80
  %.sroa.11.0.copyload.i.i = load double, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !61 ; 2 uses
  %i.btb = insertelement <2 x double> %i.bsl, double %.sroa.023.0.copyload.i.i, i64 0
  %i.btc = fsub <2 x double> %i.btb, %i.bse       ; 2 uses
  %i.btd = insertelement <2 x double> %i.bsl, double %.sroa.11.0.copyload.i.i, i64 1
  %i.bte = fsub <2 x double> %i.btd, %i.bse       ; 2 uses
  %i.btf = extractelement <2 x double> %i.bte, i64 0
  %i.btg = fneg double %i.btf
  %i.bth = extractelement <2 x double> %i.bte, i64 1
  %i.bti = fmul double %i.bth, %i.btg
  %i.btj = extractelement <2 x double> %i.btc, i64 0
  %i.btk = extractelement <2 x double> %i.btc, i64 1
  %i.btl = call double @llvm.fmuladd.f64(double %i.btk, double %i.btj, double %i.bti)
  %i.btm = fcmp ogt double %i.btl, 0.000000e+00   ; 2 uses
  %i.btn = fmul double %.sroa.020.0.copyload..sroa.5.0.copyload.i.i, 5.000000e-01 ; 2 uses
  %i.bto = fmul double %.sroa.5.0.copyload..sroa.020.0.copyload.i.i, 5.000000e-01 ; 2 uses
  %i.btp = fneg double %i.btn
  %.sroa.023.0.p.i.i = select i1 %i.btm, double %i.btn, double %i.btp
  %.sroa.023.0.i.i = fadd double %.sroa.023.0.copyload.i.i, %.sroa.023.0.p.i.i ; 2 uses
  %i.btq = fneg double %i.bto
  %.sroa.11.0.p.i.i = select i1 %i.btm, double %i.btq, double %i.bto
  %.sroa.11.0.i.i = fadd double %.sroa.11.0.copyload.i.i, %.sroa.11.0.p.i.i ; 2 uses
  store <2 x double> %i.bse, ptr %i.ok, align 8, !tbaa !61
  %i.btr = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bts = load ptr, ptr %18, align 8, !tbaa !79
  %i.btt = getelementptr inbounds nuw [16 x i8], ptr %i.bts, i64 %i.btr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btt, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !258
  store <2 x double> %i.bse, ptr %i.ok, align 8, !tbaa !61
  %i.btu = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.btv = load ptr, ptr %18, align 8, !tbaa !79
  %i.btw = getelementptr inbounds nuw [16 x i8], ptr %i.btv, i64 %i.btu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btw, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !258
  store double %.sroa.023.0.i.i, ptr %i.ok, align 8, !tbaa !61
  store double %.sroa.11.0.i.i, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.btx = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bty = load ptr, ptr %18, align 8, !tbaa !79
  %i.btz = getelementptr inbounds nuw [16 x i8], ptr %i.bty, i64 %i.btx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btz, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !tbaa.struct !258
  br label %makeLineEdge.exit.i

makeLineEdge.exit.i:                              ; preds = %bb.gs, %bb.gt
  %.sink1122 = phi double [ %.sroa.023.0.i.i, %bb.gt ], [ %i.bso, %bb.gs ] ; 2 uses
  %.sink1121 = phi double [ %.sroa.11.0.i.i, %bb.gt ], [ %i.bsp, %bb.gs ] ; 2 uses
  store double %.sink1122, ptr %i.ok, align 8, !tbaa !61
  store double %.sink1121, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.bua = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bub = load ptr, ptr %18, align 8, !tbaa !79
  %i.buc = getelementptr inbounds nuw [16 x i8], ptr %i.bub, i64 %i.bua
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buc, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
  store double %.sink1122, ptr %i.ok, align 8, !tbaa !61
  store double %.sink1121, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.bud = call i64 @gv_list_append_slot_(ptr noundef nonnull %18, i64 noundef 16) #24
  %i.bue = load ptr, ptr %18, align 8, !tbaa !79
  %i.buf = getelementptr inbounds nuw [16 x i8], ptr %i.bue, i64 %i.bud
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buf, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false)
end_hunk_0
