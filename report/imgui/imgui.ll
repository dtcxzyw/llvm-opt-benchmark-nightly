Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a

bb.oz:                                            ; preds = %bb.oy, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i
  %.192.i = phi float [ %i.czk, %bb.oy ], [ %.091145.i, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i ] ; 6 uses
  %i.czl = fcmp ogt float %.1137143.i, %i.czg
  br i1 %i.czl, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.czm = getelementptr inbounds nuw i8, ptr %i.ctu, i64 3308
  %i.czn = load float, ptr %i.czm, align 4, !tbaa !960
  %i.czo = fadd float %.1137143.i, %i.czn
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %.2.i683 = phi float [ %i.czo, %bb.pa ], [ %.1137143.i, %bb.oz ] ; 6 uses
  %i.czp = getelementptr inbounds nuw i8, ptr %i.ctu, i64 3256 ; 2 uses
  %i.czq = load float, ptr %i.czp, align 8, !tbaa !1472 ; 4 uses
  %i.czr = fcmp ogt float %i.czq, 0.000000e+00
  %i.czs = fcmp olt float %i.czq, 1.000000e+00
  %or.cond.i684 = and i1 %i.czr, %i.czs
  br i1 %or.cond.i684, label %bb.pc, label %._crit_edge.i686

bb.pc:                                            ; preds = %bb.pb
  %i.czt = fadd float %i.czq, -5.000000e-01
  %i.czu = call float @llvm.fabs.f32(float %i.czt)
  %i.czv = fneg float %i.czu
  %i.czw = call float @llvm.fmuladd.f32(float %i.czv, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.czx = fcmp olt float %i.czw, 0.000000e+00
  %i.czy = fcmp ogt float %i.czw, 1.000000e+00
  %i.czz = select i1 %i.czy, float 1.000000e+00, float %i.czw
  %i.daa = select i1 %i.czx, float 0.000000e+00, float %i.czz
  %i.dab = fcmp oge float %.192.i, %.2.i683
  %i.dac = select i1 %i.dab, float %.192.i, float %.2.i683 ; 2 uses
  %i.dad = fsub float %i.ctr, %i.ctn
  %i.dae = fsub float %i.dad, %.192.i
  %i.daf = fsub float %i.dae, %.2.i683
  %i.dag = extractelement <2 x float> %i.czf, i64 0
  %i.dah = fsub float %i.daf, %i.dag              ; 2 uses
  %i.dai = fcmp olt float %i.dac, %i.dah
  %i.daj = select i1 %i.dai, float %i.dac, float %i.dah
  %i.dak = fmul float %i.daj, %i.daa              ; 4 uses
  %i.dal = fcmp oge float %.192.i, %i.dak
  %i.dam = select i1 %i.dal, float %.192.i, float %i.dak
  %i.dan = fcmp oge float %.2.i683, %i.dak
  %i.dao = select i1 %i.dan, float %.2.i683, float %i.dak
  br label %._crit_edge.i686

._crit_edge.i686:                                 ; preds = %bb.pb, %bb.pc
  %.293.i = phi float [ %i.dam, %bb.pc ], [ %.192.i, %bb.pb ]
  %.3.i688 = phi float [ %i.dao, %bb.pc ], [ %.2.i683, %bb.pb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.dap = fadd float %i.ctn, %.293.i             ; 7 uses
  %i.daq = fsub float %i.ctr, %.3.i688            ; 5 uses
  store float %i.dap, ptr %6, align 4, !tbaa !249
  %i.dar = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ctp, ptr %i.dar, align 4, !tbaa !250
  %i.das = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.daq, ptr %i.das, align 4, !tbaa !249
  %i.dat = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ctt, ptr %i.dat, align 4, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.dau = getelementptr inbounds nuw i8, ptr %i.ctu, i64 3308
  %i.dav = load float, ptr %i.dau, align 4, !tbaa !960
  %i.daw = fadd float %i.daq, %i.dav              ; 2 uses
  %i.dax = fcmp olt float %i.daw, %i.ctr
  %i.day = select i1 %i.dax, float %i.daw, float %i.ctr ; 3 uses
  store float %i.dap, ptr %7, align 4, !tbaa !249
  %i.daz = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.ctp, ptr %i.daz, align 4, !tbaa !250
  %i.dba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.day, ptr %i.dba, align 4, !tbaa !249
  %i.dbb = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.ctt, ptr %i.dbb, align 4, !tbaa !250
  br i1 %.not97.i, label %bb.pf, label %bb.pd

bb.pd:                                            ; preds = %._crit_edge.i686
  %i.dbc = fsub float %i.daq, %i.dap
  %i.dbd = extractelement <2 x float> %i.czf, i64 0 ; 2 uses
  %i.dbe = fsub float %i.dbc, %i.dbd
  %i.dbf = call float @llvm.fmuladd.f32(float %i.dbe, float %i.czq, float %i.dap)
  %i.dbg = fadd float %i.dbd, %i.dbf              ; 3 uses
  %i.dbh = fcmp olt float %i.dbg, %i.dap
  %i.dbi = fcmp ogt float %i.dbg, %i.daq
  %i.dbj = select i1 %i.dbi, float %i.daq, float %i.dbg
  %i.dbk = select i1 %i.dbh, float %i.dap, float %i.dbj ; 3 uses
  %i.dbl = fcmp ogt float %i.dbk, %i.dap
  br i1 %i.dbl, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %.sroa.0.0.vec.insert.i689 = insertelement <2 x float> poison, float %i.dbk, i64 0
  %i.dbm = fadd float %i.ctp, %i.ctt
  %i.dbn = fmul float %i.dbm, 5.000000e-01
  %.sroa.0.4.vec.insert.i690 = insertelement <2 x float> %.sroa.0.0.vec.insert.i689, float %i.dbn, i64 1
  %i.dbo = getelementptr inbounds nuw i8, ptr %.pre1059, i64 712
  %i.dbp = load ptr, ptr %i.dbo, align 8, !tbaa !408
  %i.dbq = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 4428
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbq, i64 3220
  %i.dbt = load float, ptr %i.dbs, align 4, !tbaa !383
  %i.dbu = load <4 x float>, ptr %i.dbr, align 4, !tbaa !75
  %i.dbv = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dbt, i64 3
  %i.dbw = fmul <4 x float> %i.dbu, %i.dbv        ; 3 uses
  %i.dbx = fcmp olt <4 x float> %i.dbw, zeroinitializer
  %i.dby = fcmp ogt <4 x float> %i.dbw, splat (float 1.000000e+00)
  %i.dbz = select <4 x i1> %i.dby, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dbw
  %i.dca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dbz, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.dcb = select <4 x i1> %i.dbx, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dca
  %i.dcc = fptosi <4 x float> %i.dcb to <4 x i32>
  %i.dcd = shl <4 x i32> %i.dcc, <i32 0, i32 8, i32 16, i32 24>
  %i.dce = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dcd)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.dbp, <2 x float> %.sroa.0.4.vec.insert.i690, i32 noundef %i.dce)
  %i.dcf = fmul float %i.cyg, 5.000000e-01
  %i.dcg = fptosi float %i.dcf to i32
  %i.dch = sitofp i32 %i.dcg to float
  %i.dci = fsub float %i.dbk, %i.dch              ; 2 uses
  %i.dcj = fcmp olt float %i.day, %i.dci
  %i.dck = select i1 %i.dcj, float %i.day, float %i.dci
  store float %i.dck, ptr %i.dba, align 4, !tbaa !374
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %._crit_edge.i686
  br i1 %.not147.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.lr.ph.preheader.i.i110.i

.lr.ph.preheader.i.i110.i:                        ; preds = %bb.pf
  %i.dcl = ptrtoaddr ptr %0 to i64
  %i.dcm = xor i64 %i.dcl, -1
  %scevgep.i.i111.i = getelementptr i8, ptr %0, i64 %i.dcm
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.critedge2.i.i115.i, %.lr.ph.preheader.i.i110.i
  %.015.i.i113.i = phi ptr [ %i.dcq, %.critedge2.i.i115.i ], [ %0, %.lr.ph.preheader.i.i110.i ] ; 5 uses
  %i.dcn = load i8, ptr %.015.i.i113.i, align 1, !tbaa !82
  switch i8 %i.dcn, label %.critedge2.i.i115.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i
    i8 35, label %bb.pg
  ]

bb.pg:                                            ; preds = %.lr.ph.i.i112.i
  %i.dco = getelementptr inbounds nuw i8, ptr %.015.i.i113.i, i64 1
  %i.dcp = load i8, ptr %i.dco, align 1, !tbaa !82
  %.not14.i.i114.i = icmp eq i8 %i.dcp, 35
  br i1 %.not14.i.i114.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.critedge2.i.i115.i

.critedge2.i.i115.i:                              ; preds = %bb.pg, %.lr.ph.i.i112.i
  %i.dcq = getelementptr inbounds nuw i8, ptr %.015.i.i113.i, i64 1 ; 2 uses
  %exitcond.not.i.i116.i = icmp eq ptr %i.dcq, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i116.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.lr.ph.i.i112.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i: ; preds = %.critedge2.i.i115.i, %bb.pg, %.lr.ph.i.i112.i, %bb.pf
  %.0.lcssa.i.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.pf ], [ %.015.i.i113.i, %.lr.ph.i.i112.i ], [ %scevgep.i.i111.i, %.critedge2.i.i115.i ], [ %.015.i.i113.i, %bb.pg ] ; 3 uses
  %i.dcr = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dcs = ptrtoint ptr %0 to i64
  %i.dct = sub i64 %i.dcr, %i.dcs
  %i.dcu = and i64 %i.dct, 4294967295
  %i.dcv = icmp eq i64 %i.dcu, 0
  br i1 %i.dcv, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, label %bb.ph

bb.ph:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i
  %i.dcw = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcw, i64 5312
  %i.dcy = load ptr, ptr %i.dcx, align 8, !tbaa !289
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 712
  %i.dda = load ptr, ptr %i.dcz, align 8, !tbaa !408
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.dda, ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.das, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.czp, ptr noundef nonnull readonly %7)
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dcw, i64 10264
  %i.ddc = load i8, ptr %i.ddb, align 8, !tbaa !368, !range !100, !noundef !236
  %i.ddd = trunc nuw i8 %i.ddc to i1
  br i1 %i.ddd, label %bb.pi, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

bb.pi:                                            ; preds = %bb.ph
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i)
  br label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit: ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, %bb.ph, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.pre1058 = load ptr, ptr %i.g, align 8, !tbaa !601
  br label %bb.pj

bb.pj:                                            ; preds = %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, %_ZN5ImGui14LogToClipboardEi.exit
  %i.dde = phi ptr [ %.pre1058, %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit ], [ %.pre1059, %_ZN5ImGui14LogToClipboardEi.exit ] ; 9 uses
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dde, i64 650
  store i16 0, ptr %i.ddf, align 2, !tbaa !736
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.dde, i64 648
  store i16 0, ptr %i.ddg, align 8, !tbaa !734
  br i1 %.not463, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.j, i64 9864
  store ptr %i.dde, ptr %i.ddh, align 8, !tbaa !572
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  br i1 %.not462, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.kb, i64 239
  %i.ddj = load i32, ptr %i.ddi, align 1
  %31 = trunc i32 %i.ddj to i8
  br label %bb.po

bb.pn:                                            ; preds = %bb.pl
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.j, i64 130
  %i.ddl = load i8, ptr %i.ddk, align 2, !tbaa !1473, !range !100, !noundef !236
  %i.ddm = xor i8 %i.ddl, 1
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm
  %32 = phi i8 [ %31, %bb.pm ], [ %i.ddm, %bb.pn ]
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.dde, i64 239
  store i8 %32, ptr %i.ddn, align 1
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.dde, i64 480
  %i.ddp = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.ddq = load <2 x float>, ptr %30, align 8, !tbaa !75 ; 2 uses
  %i.ddr = load <2 x float>, ptr %i.bkb, align 8, !tbaa !75 ; 2 uses
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddp, i64 272
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.ddp, i64 3324
  %i.ddu = load float, ptr %i.dds, align 4, !tbaa !249 ; 2 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %i.ddq, i64 0
  %i.ddv = load float, ptr %i.ddt, align 4, !tbaa !249 ; 2 uses
  %i.ddw = fsub float %.sroa.0.0.vec.extract8.i, %i.ddv
  %i.ddx = fcmp ult float %i.ddu, %i.ddw
  br i1 %i.ddx, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.ddp, i64 276
  %i.ddz = load float, ptr %i.ddy, align 4, !tbaa !250 ; 2 uses
  %.sroa.0.4.vec.extract10.i = extractelement <2 x float> %i.ddq, i64 1
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddp, i64 3328
  %i.deb = load float, ptr %i.dea, align 4, !tbaa !250 ; 2 uses
  %i.dec = fsub float %.sroa.0.4.vec.extract10.i, %i.deb
  %i.ded = fcmp oge float %i.ddz, %i.dec
  %.sroa.8.8.vec.extract13.i = extractelement <2 x float> %i.ddr, i64 0
  %i.dee = fadd float %.sroa.8.8.vec.extract13.i, %i.ddv
  %i.def = fcmp olt float %i.ddu, %i.dee
  %or.cond.i700 = select i1 %i.ded, i1 %i.def, i1 false
  br i1 %or.cond.i700, label %bb.pq, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

bb.pq:                                            ; preds = %bb.pp
  %.sroa.8.12.vec.extract15.i = extractelement <2 x float> %i.ddr, i64 1
  %i.deg = fadd float %.sroa.8.12.vec.extract15.i, %i.deb
  %i.deh = fcmp olt float %i.ddz, %i.deg
  %i.dei = zext i1 %i.deh to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.po, %bb.pp, %bb.pq
  %i.dej = phi i32 [ %i.dei, %bb.pq ], [ 0, %bb.pp ], [ 0, %bb.po ] ; 2 uses
  store i32 %i.dej, ptr %i.ddo, align 8, !tbaa !1474
  %i.dek = getelementptr i8, ptr %i.dde, i64 140  ; 2 uses
  %.val552 = load i32, ptr %i.dek, align 4, !tbaa !639
  %i.del = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7784
  %i.dem = load i32, ptr %i.del, align 8, !tbaa !792
  %i.den = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7848
  store i32 %.val552, ptr %i.den, align 8, !tbaa !425
  %i.deo = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7852
  store i32 %i.dem, ptr %i.deo, align 4, !tbaa !426
  %i.dep = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7856
  store i32 %i.dej, ptr %i.dep, align 8, !tbaa !670
  %i.deq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.deq, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !386
  %i.der = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.der, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false)
  %i.des = getelementptr inbounds nuw i8, ptr %i.j, i64 7788
  %i.det = load i32, ptr %i.des, align 4, !tbaa !862 ; 3 uses
  %.not504 = icmp eq i32 %i.det, 0
  br i1 %.not504, label %bb.pu, label %bb.pr

bb.pr:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %i.deu = getelementptr inbounds nuw i8, ptr %i.dde, i64 16
  %i.dev = load i32, ptr %i.deu, align 8, !tbaa !618
  %i.dew = icmp eq i32 %i.dev, %i.det
  br i1 %i.dew, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.dex = load i32, ptr %i.dek, align 4, !tbaa !639
  %i.dey = icmp eq i32 %i.dex, %i.det
  br i1 %i.dey, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  call void @_ZN5ImGui34DebugLocateItemResolveWithLastItemEv()
  %.pre1065.pre = load ptr, ptr %i.g, align 8, !tbaa !601
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre1065 = phi ptr [ %.pre1065.pre, %bb.pt ], [ %i.dde, %bb.ps ], [ %i.dde, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.qd

bb.pv:                                            ; preds = %bb.cy
  br i1 %i.wb, label %.thread1189, label %.thread990

.thread1189:                                      ; preds = %bb.cz, %bb.pv
  call fastcc void @_ZL29SetWindowActiveForSkipRefreshP11ImGuiWindow(ptr noundef nonnull %.pre1060)
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !601, !nonnull !236, !noundef !236
  br label %.thread990

.thread990:                                       ; preds = %bb.pv, %.thread1189
  %.pr.sink = phi ptr [ %.pr, %.thread1189 ], [ %.pre1060, %bb.pv ] ; 4 uses
  %i.dez = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 5312
  store ptr %.pr.sink, ptr %i.dfa, align 8, !tbaa !289
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dez, i64 5264
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dez, i64 5272
  %i.dfd = load ptr, ptr %i.dfc, align 8, !tbaa !497
  %i.dfe = load i32, ptr %i.dfb, align 8, !tbaa !499
  %i.dff = sext i32 %i.dfe to i64
  %i.dfg = getelementptr [120 x i8], ptr %i.dfd, i64 %i.dff
  %i.dfh = getelementptr i8, ptr %i.dfg, i64 -32
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dez, i64 10392
  store ptr %i.dfh, ptr %i.dfi, align 8, !tbaa !577
  %i.dfj = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 464
  %i.dfk = load i32, ptr %i.dfj, align 8, !tbaa !918 ; 2 uses
  %.not23.i702 = icmp eq i32 %i.dfk, -1
  br i1 %.not23.i702, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %.thread990
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dez, i64 9024
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !596
  %i.dfn = sext i32 %i.dfk to i64
  %i.dfo = getelementptr inbounds [592 x i8], ptr %i.dfm, i64 %i.dfn
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %.thread990
  %.ph.i703 = phi ptr [ null, %.thread990 ], [ %i.dfo, %bb.pw ]
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dez, i64 8984
  store ptr %.ph.i703, ptr %i.dfp, align 8, !tbaa !328
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dez, i64 4584
  store float 1.000000e+00, ptr %i.dfq, align 8, !tbaa !922
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dez, i64 44
  %i.dfs = load i32, ptr %i.dfr, align 4, !tbaa !744
  %i.dft = and i32 %i.dfs, 16
  %.not24.i704 = icmp eq i32 %i.dft, 0
  br i1 %.not24.i704, label %bb.qb, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.dfu = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 32
  %i.dfv = load ptr, ptr %i.dfu, align 8, !tbaa !921
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfv, i64 24
  %i.dfx = load float, ptr %i.dfw, align 8, !tbaa !923 ; 2 uses
  %i.dfy = fcmp une float %i.dfx, 0.000000e+00
  br i1 %i.dfy, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dez, i64 56
  %i.dga = load float, ptr %i.dfz, align 8, !tbaa !924
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.dgb = phi float [ %i.dga, %bb.pz ], [ %i.dfx, %bb.py ]
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dez, i64 4580
  store float %i.dgb, ptr %i.dgc, align 4, !tbaa !925
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.px
  %i.dgd = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 209 ; 3 uses
  %i.dge = load i8, ptr %i.dgd, align 1, !tbaa !926, !range !100, !noundef !236
  store i8 0, ptr %i.dgd, align 1, !tbaa !926
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.dge, ptr %i.dgd, align 1, !tbaa !926
  %i.dgf = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 10 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 5312
  %i.dgh = load ptr, ptr %i.dgg, align 8, !tbaa !289 ; 2 uses
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgf, i64 8984
  %i.dgj = load ptr, ptr %i.dgi, align 8, !tbaa !328
  %i.dgk = icmp eq ptr %i.dgj, null
  br i1 %i.dgk, label %bb.qc, label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705

bb.qc:                                            ; preds = %bb.qb
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgh, i64 456
  %i.dgm = load ptr, ptr %i.dgl, align 8, !tbaa !323
  %i.dgn = icmp eq ptr %i.dgm, null
  %i.dgo = zext i1 %i.dgn to i8
  br label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705

_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705: ; preds = %bb.qc, %bb.qb
  %i.dgp = phi i8 [ 0, %bb.qb ], [ %i.dgo, %bb.qc ]
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dgh, i64 376
  store i8 %i.dgp, ptr %i.dgq, align 8, !tbaa !927
  %.pre1064 = load ptr, ptr %i.g, align 8, !tbaa !601 ; 6 uses
  %i.dgr = getelementptr inbounds nuw i8, ptr %.pre1064, i64 40
  %i.dgs = getelementptr inbounds nuw i8, ptr %.pre1064, i64 56
  %i.dgt = load float, ptr %i.dgs, align 8, !tbaa !725
  %i.dgu = getelementptr inbounds nuw i8, ptr %.pre1064, i64 104
  %i.dgv = load float, ptr %i.dgu, align 8, !tbaa !724
  %i.dgw = load <2 x float>, ptr %i.dgr, align 8, !tbaa !75 ; 3 uses
  %i.dgx = insertelement <2 x float> poison, float %i.dgt, i64 0
  %i.dgy = insertelement <2 x float> %i.dgx, float %i.dgv, i64 1
  %i.dgz = fadd <2 x float> %i.dgw, %i.dgy        ; 2 uses
  %i.dha = getelementptr i8, ptr %.pre1064, i64 140
  %.val550 = load i32, ptr %i.dha, align 4, !tbaa !639
  %i.dhb = getelementptr i8, ptr %.pre1064, i64 480
  %.val551 = load i32, ptr %i.dhb, align 8, !tbaa !1474
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7784
  %i.dhd = load i32, ptr %i.dhc, align 8, !tbaa !792
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7848
  store i32 %.val550, ptr %i.dhe, align 8, !tbaa !425
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7852
  store i32 %i.dhd, ptr %i.dhf, align 4, !tbaa !426
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7856
  store i32 %.val551, ptr %i.dhg, align 8, !tbaa !670
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7876
  store <2 x float> %i.dgw, ptr %i.dhh, align 4, !tbaa !75
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7884
  store <2 x float> %i.dgz, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !75
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7860
  store <2 x float> %i.dgw, ptr %i.dhi, align 4
  %.sroa.5.0..sroa_idx797 = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7868
  store <2 x float> %i.dgz, ptr %.sroa.5.0..sroa_idx797, align 4
end_hunk_0
