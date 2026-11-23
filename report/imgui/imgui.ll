Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
bb.ow:                                            ; preds = %bb.ov, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i
  %.192.i = phi float [ %i.cym, %bb.ov ], [ %.091145.i, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i ] ; 6 uses
  %i.cyn = fcmp ogt float %.1137143.i, %i.cyi
  br i1 %i.cyn, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.csw, i64 3308
  %i.cyp = load float, ptr %i.cyo, align 4, !tbaa !960
  %i.cyq = fadd float %.1137143.i, %i.cyp
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %.2.i683 = phi float [ %i.cyq, %bb.ox ], [ %.1137143.i, %bb.ow ] ; 6 uses
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.csw, i64 3256 ; 2 uses
  %i.cys = load float, ptr %i.cyr, align 8, !tbaa !1476 ; 4 uses
  %i.cyt = fcmp ogt float %i.cys, 0.000000e+00
  %i.cyu = fcmp olt float %i.cys, 1.000000e+00
  %or.cond.i684 = and i1 %i.cyt, %i.cyu
  br i1 %or.cond.i684, label %bb.oz, label %._crit_edge.i686

bb.oz:                                            ; preds = %bb.oy
  %i.cyv = fadd float %i.cys, -5.000000e-01
  %i.cyw = call float @llvm.fabs.f32(float %i.cyv)
  %i.cyx = fneg float %i.cyw
  %i.cyy = call float @llvm.fmuladd.f32(float %i.cyx, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.cyz = fcmp olt float %i.cyy, 0.000000e+00
  %i.cza = fcmp ogt float %i.cyy, 1.000000e+00
  %i.czb = select i1 %i.cza, float 1.000000e+00, float %i.cyy
  %i.czc = select i1 %i.cyz, float 0.000000e+00, float %i.czb
  %i.czd = fcmp oge float %.192.i, %.2.i683
  %i.cze = select i1 %i.czd, float %.192.i, float %.2.i683 ; 2 uses
  %i.czf = fsub float %i.cst, %i.csp
  %i.czg = fsub float %i.czf, %.192.i
  %i.czh = fsub float %i.czg, %.2.i683
  %i.czi = extractelement <2 x float> %i.cyh, i64 0
  %i.czj = fsub float %i.czh, %i.czi              ; 2 uses
  %i.czk = fcmp olt float %i.cze, %i.czj
  %i.czl = select i1 %i.czk, float %i.cze, float %i.czj
  %i.czm = fmul float %i.czl, %i.czc              ; 4 uses
  %i.czn = fcmp oge float %.192.i, %i.czm
  %i.czo = select i1 %i.czn, float %.192.i, float %i.czm
  %i.czp = fcmp oge float %.2.i683, %i.czm
  %i.czq = select i1 %i.czp, float %.2.i683, float %i.czm
  br label %._crit_edge.i686

._crit_edge.i686:                                 ; preds = %bb.oy, %bb.oz
  %.293.i = phi float [ %i.czo, %bb.oz ], [ %.192.i, %bb.oy ]
  %.3.i688 = phi float [ %i.czq, %bb.oz ], [ %.2.i683, %bb.oy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.czr = fadd float %i.csp, %.293.i             ; 7 uses
  %i.czs = fsub float %i.cst, %.3.i688            ; 5 uses
  store float %i.czr, ptr %6, align 4, !tbaa !249
  %i.czt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.csr, ptr %i.czt, align 4, !tbaa !250
  %i.czu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.czs, ptr %i.czu, align 4, !tbaa !249
  %i.czv = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.csv, ptr %i.czv, align 4, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.czw = getelementptr inbounds nuw i8, ptr %i.csw, i64 3308
  %i.czx = load float, ptr %i.czw, align 4, !tbaa !960
  %i.czy = fadd float %i.czs, %i.czx              ; 2 uses
  %i.czz = fcmp olt float %i.czy, %i.cst
  %i.daa = select i1 %i.czz, float %i.czy, float %i.cst ; 3 uses
  store float %i.czr, ptr %7, align 4, !tbaa !249
  %i.dab = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.csr, ptr %i.dab, align 4, !tbaa !250
  %i.dac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.daa, ptr %i.dac, align 4, !tbaa !249
  %i.dad = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.csv, ptr %i.dad, align 4, !tbaa !250
  br i1 %.not97.i, label %bb.pc, label %bb.pa

bb.pa:                                            ; preds = %._crit_edge.i686
  %i.dae = fsub float %i.czs, %i.czr
  %i.daf = extractelement <2 x float> %i.cyh, i64 0 ; 2 uses
  %i.dag = fsub float %i.dae, %i.daf
  %i.dah = call float @llvm.fmuladd.f32(float %i.dag, float %i.cys, float %i.czr)
  %i.dai = fadd float %i.daf, %i.dah              ; 3 uses
  %i.daj = fcmp olt float %i.dai, %i.czr
  %i.dak = fcmp ogt float %i.dai, %i.czs
  %i.dal = select i1 %i.dak, float %i.czs, float %i.dai
  %i.dam = select i1 %i.daj, float %i.czr, float %i.dal ; 3 uses
  %i.dan = fcmp ogt float %i.dam, %i.czr
  br i1 %i.dan, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  %.sroa.0.0.vec.insert.i689 = insertelement <2 x float> poison, float %i.dam, i64 0
  %i.dao = fadd float %i.csr, %i.csv
  %i.dap = fmul float %i.dao, 5.000000e-01
  %.sroa.0.4.vec.insert.i690 = insertelement <2 x float> %.sroa.0.0.vec.insert.i689, float %i.dap, i64 1
  %i.daq = getelementptr inbounds nuw i8, ptr %.pre1059, i64 712
  %i.dar = load ptr, ptr %i.daq, align 8, !tbaa !408
  %i.das = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 4428
  %i.dau = getelementptr inbounds nuw i8, ptr %i.das, i64 3220
  %i.dav = load float, ptr %i.dau, align 4, !tbaa !383
  %i.daw = load <4 x float>, ptr %i.dat, align 4, !tbaa !75 ; 2 uses
  %i.dax = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dav, i64 3
  %i.day = fmul <4 x float> %i.daw, %i.dax        ; 2 uses
  %i.daz = fcmp olt <4 x float> %i.day, zeroinitializer
  %i.dba = shufflevector <4 x float> %i.daw, <4 x float> %i.day, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dbb = fcmp ogt <4 x float> %i.dba, splat (float 1.000000e+00)
  %i.dbc = select <4 x i1> %i.dbb, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dba
  %i.dbd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dbc, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.dbe = select <4 x i1> %i.daz, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dbd
  %i.dbf = fptosi <4 x float> %i.dbe to <4 x i32>
  %i.dbg = shl <4 x i32> %i.dbf, <i32 0, i32 8, i32 16, i32 24>
  %i.dbh = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dbg)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.dar, <2 x float> %.sroa.0.4.vec.insert.i690, i32 noundef %i.dbh)
  %i.dbi = fmul float %i.cxi, 5.000000e-01
  %i.dbj = fptosi float %i.dbi to i32
  %i.dbk = sitofp i32 %i.dbj to float
  %i.dbl = fsub float %i.dam, %i.dbk              ; 2 uses
  %i.dbm = fcmp olt float %i.daa, %i.dbl
  %i.dbn = select i1 %i.dbm, float %i.daa, float %i.dbl
  store float %i.dbn, ptr %i.dac, align 4, !tbaa !374
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa, %._crit_edge.i686
  br i1 %.not147.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.lr.ph.preheader.i.i110.i

.lr.ph.preheader.i.i110.i:                        ; preds = %bb.pc
  %i.dbo = ptrtoaddr ptr %0 to i64
  %i.dbp = xor i64 %i.dbo, -1
  %scevgep.i.i111.i = getelementptr i8, ptr %0, i64 %i.dbp
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.critedge2.i.i115.i, %.lr.ph.preheader.i.i110.i
  %.015.i.i113.i = phi ptr [ %i.dbt, %.critedge2.i.i115.i ], [ %0, %.lr.ph.preheader.i.i110.i ] ; 5 uses
  %i.dbq = load i8, ptr %.015.i.i113.i, align 1, !tbaa !82
  switch i8 %i.dbq, label %.critedge2.i.i115.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i
    i8 35, label %bb.pd
  ]

bb.pd:                                            ; preds = %.lr.ph.i.i112.i
  %i.dbr = getelementptr inbounds nuw i8, ptr %.015.i.i113.i, i64 1
  %i.dbs = load i8, ptr %i.dbr, align 1, !tbaa !82
  %.not14.i.i114.i = icmp eq i8 %i.dbs, 35
  br i1 %.not14.i.i114.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.critedge2.i.i115.i

.critedge2.i.i115.i:                              ; preds = %bb.pd, %.lr.ph.i.i112.i
  %i.dbt = getelementptr inbounds nuw i8, ptr %.015.i.i113.i, i64 1 ; 2 uses
  %exitcond.not.i.i116.i = icmp eq ptr %i.dbt, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i116.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.lr.ph.i.i112.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i: ; preds = %.critedge2.i.i115.i, %bb.pd, %.lr.ph.i.i112.i, %bb.pc
  %.0.lcssa.i.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.pc ], [ %.015.i.i113.i, %.lr.ph.i.i112.i ], [ %scevgep.i.i111.i, %.critedge2.i.i115.i ], [ %.015.i.i113.i, %bb.pd ] ; 3 uses
  %i.dbu = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dbv = ptrtoint ptr %0 to i64
  %i.dbw = sub i64 %i.dbu, %i.dbv
  %i.dbx = and i64 %i.dbw, 4294967295
  %i.dby = icmp eq i64 %i.dbx, 0
  br i1 %i.dby, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, label %bb.pe

bb.pe:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i
  %i.dbz = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dbz, i64 5312
  %i.dcb = load ptr, ptr %i.dca, align 8, !tbaa !289
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.dcb, i64 712
  %i.dcd = load ptr, ptr %i.dcc, align 8, !tbaa !408
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.dcd, ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.czu, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.cyr, ptr noundef nonnull readonly %7)
  %i.dce = getelementptr inbounds nuw i8, ptr %i.dbz, i64 10264
  %i.dcf = load i8, ptr %i.dce, align 8, !tbaa !368, !range !100, !noundef !236
  %i.dcg = trunc nuw i8 %i.dcf to i1
  br i1 %i.dcg, label %bb.pf, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

bb.pf:                                            ; preds = %bb.pe
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i)
  br label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit: ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, %bb.pe, %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.pre1058 = load ptr, ptr %i.g, align 8, !tbaa !601
  br label %bb.pg

bb.pg:                                            ; preds = %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, %_ZN5ImGui14LogToClipboardEi.exit
  %i.dch = phi ptr [ %.pre1058, %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit ], [ %.pre1059, %_ZN5ImGui14LogToClipboardEi.exit ] ; 9 uses
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dch, i64 650
  store i16 0, ptr %i.dci, align 2, !tbaa !736
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dch, i64 648
  store i16 0, ptr %i.dcj, align 8, !tbaa !734
  br i1 %.not463, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.dck = getelementptr inbounds nuw i8, ptr %i.j, i64 9864
  store ptr %i.dch, ptr %i.dck, align 8, !tbaa !572
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.pg
  br i1 %.not462, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.kb, i64 239
  %i.dcm = load i32, ptr %i.dcl, align 1
  %31 = trunc i32 %i.dcm to i8
  br label %bb.pl

bb.pk:                                            ; preds = %bb.pi
  %i.dcn = getelementptr inbounds nuw i8, ptr %i.j, i64 130
  %i.dco = load i8, ptr %i.dcn, align 2, !tbaa !1477, !range !100, !noundef !236
  %i.dcp = xor i8 %i.dco, 1
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %32 = phi i8 [ %31, %bb.pj ], [ %i.dcp, %bb.pk ]
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dch, i64 239
  store i8 %32, ptr %i.dcq, align 1
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dch, i64 480
  %i.dcs = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.dct = load <2 x float>, ptr %30, align 8, !tbaa !75 ; 2 uses
  %i.dcu = load <2 x float>, ptr %i.bjs, align 8, !tbaa !75 ; 2 uses
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcs, i64 272
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcs, i64 3324
  %i.dcx = load float, ptr %i.dcv, align 4, !tbaa !249 ; 2 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %i.dct, i64 0
  %i.dcy = load float, ptr %i.dcw, align 4, !tbaa !249 ; 2 uses
  %i.dcz = fsub float %.sroa.0.0.vec.extract8.i, %i.dcy
  %i.dda = fcmp ult float %i.dcx, %i.dcz
  br i1 %i.dda, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dcs, i64 276
  %i.ddc = load float, ptr %i.ddb, align 4, !tbaa !250 ; 2 uses
  %.sroa.0.4.vec.extract10.i = extractelement <2 x float> %i.dct, i64 1
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.dcs, i64 3328
  %i.dde = load float, ptr %i.ddd, align 4, !tbaa !250 ; 2 uses
  %i.ddf = fsub float %.sroa.0.4.vec.extract10.i, %i.dde
  %i.ddg = fcmp oge float %i.ddc, %i.ddf
  %.sroa.8.8.vec.extract13.i = extractelement <2 x float> %i.dcu, i64 0
  %i.ddh = fadd float %.sroa.8.8.vec.extract13.i, %i.dcy
  %i.ddi = fcmp olt float %i.dcx, %i.ddh
  %or.cond.i700 = select i1 %i.ddg, i1 %i.ddi, i1 false
  br i1 %or.cond.i700, label %bb.pn, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

bb.pn:                                            ; preds = %bb.pm
  %.sroa.8.12.vec.extract15.i = extractelement <2 x float> %i.dcu, i64 1
  %i.ddj = fadd float %.sroa.8.12.vec.extract15.i, %i.dde
  %i.ddk = fcmp olt float %i.ddc, %i.ddj
  %i.ddl = zext i1 %i.ddk to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.pl, %bb.pm, %bb.pn
  %i.ddm = phi i32 [ %i.ddl, %bb.pn ], [ 0, %bb.pm ], [ 0, %bb.pl ] ; 2 uses
  store i32 %i.ddm, ptr %i.dcr, align 8, !tbaa !1478
  %i.ddn = getelementptr i8, ptr %i.dch, i64 140  ; 2 uses
  %.val552 = load i32, ptr %i.ddn, align 4, !tbaa !639
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.dcs, i64 7784
  %i.ddp = load i32, ptr %i.ddo, align 8, !tbaa !792
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.dcs, i64 7848
  store i32 %.val552, ptr %i.ddq, align 8, !tbaa !425
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.dcs, i64 7852
  store i32 %i.ddp, ptr %i.ddr, align 4, !tbaa !426
  %i.dds = getelementptr inbounds nuw i8, ptr %i.dcs, i64 7856
  store i32 %i.ddm, ptr %i.dds, align 8, !tbaa !670
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dcs, i64 7876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ddt, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !386
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.dcs, i64 7860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ddu, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false)
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.j, i64 7788
  %i.ddw = load i32, ptr %i.ddv, align 4, !tbaa !862 ; 3 uses
  %.not504 = icmp eq i32 %i.ddw, 0
  br i1 %.not504, label %bb.pr, label %bb.po

bb.po:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.dch, i64 16
  %i.ddy = load i32, ptr %i.ddx, align 8, !tbaa !618
  %i.ddz = icmp eq i32 %i.ddy, %i.ddw
  br i1 %i.ddz, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.dea = load i32, ptr %i.ddn, align 4, !tbaa !639
  %i.deb = icmp eq i32 %i.dea, %i.ddw
  br i1 %i.deb, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp, %bb.po
  call void @_ZN5ImGui34DebugLocateItemResolveWithLastItemEv()
  %.pre1065.pre = load ptr, ptr %i.g, align 8, !tbaa !601
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pp, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre1065 = phi ptr [ %.pre1065.pre, %bb.pq ], [ %i.dch, %bb.pp ], [ %i.dch, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.qa

bb.ps:                                            ; preds = %bb.cy
  br i1 %i.wb, label %.thread1184, label %.thread990

.thread1184:                                      ; preds = %bb.cz, %bb.ps
  call fastcc void @_ZL29SetWindowActiveForSkipRefreshP11ImGuiWindow(ptr noundef nonnull %.pre1060)
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !601, !nonnull !236, !noundef !236
  br label %.thread990

.thread990:                                       ; preds = %bb.ps, %.thread1184
  %.pr.sink = phi ptr [ %.pr, %.thread1184 ], [ %.pre1060, %bb.ps ] ; 4 uses
  %i.dec = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 5312
  store ptr %.pr.sink, ptr %i.ded, align 8, !tbaa !289
  %i.dee = getelementptr inbounds nuw i8, ptr %i.dec, i64 5264
  %i.def = getelementptr inbounds nuw i8, ptr %i.dec, i64 5272
  %i.deg = load ptr, ptr %i.def, align 8, !tbaa !497
  %i.deh = load i32, ptr %i.dee, align 8, !tbaa !499
  %i.dei = sext i32 %i.deh to i64
  %i.dej = getelementptr [120 x i8], ptr %i.deg, i64 %i.dei
  %i.dek = getelementptr i8, ptr %i.dej, i64 -32
  %i.del = getelementptr inbounds nuw i8, ptr %i.dec, i64 10392
  store ptr %i.dek, ptr %i.del, align 8, !tbaa !577
  %i.dem = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 464
  %i.den = load i32, ptr %i.dem, align 8, !tbaa !918 ; 2 uses
  %.not23.i702 = icmp eq i32 %i.den, -1
  br i1 %.not23.i702, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %.thread990
  %i.deo = getelementptr inbounds nuw i8, ptr %i.dec, i64 9024
  %i.dep = load ptr, ptr %i.deo, align 8, !tbaa !596
  %i.deq = sext i32 %i.den to i64
  %i.der = getelementptr inbounds [592 x i8], ptr %i.dep, i64 %i.deq
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %.thread990
  %.ph.i703 = phi ptr [ null, %.thread990 ], [ %i.der, %bb.pt ]
  %i.des = getelementptr inbounds nuw i8, ptr %i.dec, i64 8984
  store ptr %.ph.i703, ptr %i.des, align 8, !tbaa !328
  %i.det = getelementptr inbounds nuw i8, ptr %i.dec, i64 4584
  store float 1.000000e+00, ptr %i.det, align 8, !tbaa !922
  %i.deu = getelementptr inbounds nuw i8, ptr %i.dec, i64 44
  %i.dev = load i32, ptr %i.deu, align 4, !tbaa !744
  %i.dew = and i32 %i.dev, 16
  %.not24.i704 = icmp eq i32 %i.dew, 0
  br i1 %.not24.i704, label %bb.py, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.dex = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 32
  %i.dey = load ptr, ptr %i.dex, align 8, !tbaa !921
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dey, i64 24
  %i.dfa = load float, ptr %i.dez, align 8, !tbaa !923 ; 2 uses
  %i.dfb = fcmp une float %i.dfa, 0.000000e+00
  br i1 %i.dfb, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dec, i64 56
  %i.dfd = load float, ptr %i.dfc, align 8, !tbaa !924
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %i.dfe = phi float [ %i.dfd, %bb.pw ], [ %i.dfa, %bb.pv ]
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dec, i64 4580
  store float %i.dfe, ptr %i.dff, align 4, !tbaa !925
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pu
  %i.dfg = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 209 ; 3 uses
  %i.dfh = load i8, ptr %i.dfg, align 1, !tbaa !926, !range !100, !noundef !236
  store i8 0, ptr %i.dfg, align 1, !tbaa !926
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.dfh, ptr %i.dfg, align 1, !tbaa !926
  %i.dfi = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 5312
  %i.dfk = load ptr, ptr %i.dfj, align 8, !tbaa !289 ; 2 uses
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfi, i64 8984
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !328
  %i.dfn = icmp eq ptr %i.dfm, null
  br i1 %i.dfn, label %bb.pz, label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705

bb.pz:                                            ; preds = %bb.py
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.dfk, i64 456
  %i.dfp = load ptr, ptr %i.dfo, align 8, !tbaa !323
  %i.dfq = icmp eq ptr %i.dfp, null
  %i.dfr = zext i1 %i.dfq to i8
  br label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705

_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705: ; preds = %bb.pz, %bb.py
  %i.dfs = phi i8 [ 0, %bb.py ], [ %i.dfr, %bb.pz ]
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfk, i64 376
  store i8 %i.dfs, ptr %i.dft, align 8, !tbaa !927
  %.pre1064 = load ptr, ptr %i.g, align 8, !tbaa !601 ; 6 uses
  %i.dfu = getelementptr inbounds nuw i8, ptr %.pre1064, i64 40
  %i.dfv = getelementptr inbounds nuw i8, ptr %.pre1064, i64 56
  %i.dfw = load float, ptr %i.dfv, align 8, !tbaa !725
  %i.dfx = getelementptr inbounds nuw i8, ptr %.pre1064, i64 104
  %i.dfy = load float, ptr %i.dfx, align 8, !tbaa !724
  %i.dfz = load <2 x float>, ptr %i.dfu, align 8, !tbaa !75 ; 3 uses
  %i.dga = insertelement <2 x float> poison, float %i.dfw, i64 0
  %i.dgb = insertelement <2 x float> %i.dga, float %i.dfy, i64 1
  %i.dgc = fadd <2 x float> %i.dfz, %i.dgb        ; 2 uses
  %i.dgd = getelementptr i8, ptr %.pre1064, i64 140
  %.val550 = load i32, ptr %i.dgd, align 4, !tbaa !639
  %i.dge = getelementptr i8, ptr %.pre1064, i64 480
  %.val551 = load i32, ptr %i.dge, align 8, !tbaa !1478
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7784
  %i.dgg = load i32, ptr %i.dgf, align 8, !tbaa !792
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7848
  store i32 %.val550, ptr %i.dgh, align 8, !tbaa !425
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7852
  store i32 %i.dgg, ptr %i.dgi, align 4, !tbaa !426
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7856
  store i32 %.val551, ptr %i.dgj, align 8, !tbaa !670
  %i.dgk = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7876
  store <2 x float> %i.dfz, ptr %i.dgk, align 4, !tbaa !75
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7884
  store <2 x float> %i.dgc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !75
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7860
  store <2 x float> %i.dfz, ptr %i.dgl, align 4
  %.sroa.5.0..sroa_idx797 = getelementptr inbounds nuw i8, ptr %i.dfi, i64 7868
  store <2 x float> %i.dgc, ptr %.sroa.5.0..sroa_idx797, align 4
end_hunk_0
