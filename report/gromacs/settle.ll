Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/settle?download=true
inline.NumInlined: 1717
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.cxd = getelementptr i8, ptr %i.cxb, i64 8
  store float %i.cwo, ptr %i.cxd, align 4, !tbaa !17, !noalias !143
  %i.cxe = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cwq ; 4 uses
  %i.cxf = load float, ptr %i.cxe, align 4, !tbaa !17, !alias.scope !143
  %i.cxg = getelementptr i8, ptr %i.cxe, i64 4    ; 2 uses
  %i.cxh = load float, ptr %i.cxg, align 4, !tbaa !17, !alias.scope !143
  %i.cxi = getelementptr i8, ptr %i.cxe, i64 8    ; 2 uses
  %i.cxj = load float, ptr %i.cxi, align 4, !tbaa !17, !alias.scope !143
  %i.cxk = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cwv ; 4 uses
  %i.cxl = load float, ptr %i.cxk, align 4, !tbaa !17, !alias.scope !143
  %i.cxm = getelementptr i8, ptr %i.cxk, i64 4    ; 2 uses
  %i.cxn = load float, ptr %i.cxm, align 4, !tbaa !17, !alias.scope !143
  %i.cxo = getelementptr i8, ptr %i.cxk, i64 8    ; 2 uses
  %i.cxp = load float, ptr %i.cxo, align 4, !tbaa !17, !alias.scope !143
  %i.cxq = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.cxa ; 4 uses
  %i.cxr = load float, ptr %i.cxq, align 4, !tbaa !17, !alias.scope !143
  %i.cxs = getelementptr i8, ptr %i.cxq, i64 4    ; 2 uses
  %i.cxt = load float, ptr %i.cxs, align 4, !tbaa !17, !alias.scope !143
  %i.cxu = getelementptr i8, ptr %i.cxq, i64 8    ; 2 uses
  %i.cxv = load float, ptr %i.cxu, align 4, !tbaa !17, !alias.scope !143
  %i.cxw = call noundef float @llvm.fmuladd.f32(float %i.cvo, float %6, float %i.cxf)
  %i.cxx = call noundef float @llvm.fmuladd.f32(float %i.cvr, float %6, float %i.cxh)
  %i.cxy = call noundef float @llvm.fmuladd.f32(float %i.cvu, float %6, float %i.cxj)
  %i.cxz = call noundef float @llvm.fmuladd.f32(float %i.cvx, float %6, float %i.cxl)
  %i.cya = call noundef float @llvm.fmuladd.f32(float %i.cwa, float %6, float %i.cxn)
  %i.cyb = call noundef float @llvm.fmuladd.f32(float %i.cwd, float %6, float %i.cxp)
  %i.cyc = call noundef float @llvm.fmuladd.f32(float %i.cwg, float %6, float %i.cxr)
  %i.cyd = call noundef float @llvm.fmuladd.f32(float %i.cwj, float %6, float %i.cxt)
  %i.cye = call noundef float @llvm.fmuladd.f32(float %i.cwm, float %6, float %i.cxv)
  %i.cyf = fcmp ole float %i.csa, f0x2B8CBCCC
  %i.cyg = or i1 %.029713.i.i, %i.cyf             ; 2 uses
  store float %i.cxw, ptr %i.cxe, align 4, !tbaa !17, !alias.scope !143
  store float %i.cxx, ptr %i.cxg, align 4, !tbaa !17, !alias.scope !143
  store float %i.cxy, ptr %i.cxi, align 4, !tbaa !17, !alias.scope !143
  store float %i.cxz, ptr %i.cxk, align 4, !tbaa !17, !alias.scope !143
  store float %i.cya, ptr %i.cxm, align 4, !tbaa !17, !alias.scope !143
  store float %i.cyb, ptr %i.cxo, align 4, !tbaa !17, !alias.scope !143
  store float %i.cyc, ptr %i.cxq, align 4, !tbaa !17, !alias.scope !143
  store float %i.cyd, ptr %i.cxs, align 4, !tbaa !17, !alias.scope !143
  store float %i.cye, ptr %i.cxu, align 4, !tbaa !17, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #18, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #18, !noalias !143
  %indvars.iv.next.i.i32 = add nsw i64 %indvars.iv.i.i31, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i32 to i32
  %exitcond.not.i.i = icmp eq i32 %i.cju, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i33, label %.preheader1.preheader.i.i, !llvm.loop !127

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.cyh = load float, ptr %i.cjw, align 8, !tbaa !13, !noalias !144 ; 2 uses
  %i.cyi = load float, ptr %i.cjx, align 4, !tbaa !16, !noalias !144 ; 2 uses
  %i.cyj = load float, ptr %i.cjy, align 4, !tbaa !22, !noalias !144 ; 3 uses
  %i.cyk = load float, ptr %i.cjz, align 8, !tbaa !18, !noalias !144
  %i.cyl = load float, ptr %0, align 8, !tbaa !11, !noalias !144
  %i.cym = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cyn = load float, ptr %i.cym, align 4, !tbaa !12, !noalias !144
  %i.cyo = icmp slt i32 %i.cjv, %i.cju
  br i1 %i.cyo, label %.lr.ph.i47.i40, label %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i

.lr.ph.i47.i40:                                   ; preds = %bb.n
  %i.cyp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cyq = load float, ptr %i.cyp, align 8, !tbaa !23, !noalias !144
  %i.cyr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cys = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cyt = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cza = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.czb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.czc = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.czd = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.czf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.czh = fmul float %i.cyj, %i.cyj
  %i.czi = fneg float %i.cyi
  %i.czj = fneg float %i.cyq
  %i.czk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.czl = sext i32 %i.cjv to i64
  %i.czm = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.czn = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.czo = insertelement <3 x float> poison, float %i.cyh, i64 0
  %i.czp = shufflevector <3 x float> %i.czo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.czq = insertelement <2 x float> poison, float %6, i64 0
  %i.czr = shufflevector <2 x float> %i.czq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %.preheader372.preheader.i.i

.preheader368.loopexit.i.i:                       ; preds = %.preheader372.preheader.i.i
  %i.czs = zext i1 %i.dmv to i8
  br label %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i

.preheader372.preheader.i.i:                      ; preds = %.preheader372.preheader.i.i, %.lr.ph.i47.i40
  %.sroa.27.1.i.i46 = phi float [ 0.000000e+00, %.lr.ph.i47.i40 ], [ %i.dmt, %.preheader372.preheader.i.i ]
  %indvars.iv.i48.i47 = phi i64 [ %i.czl, %.lr.ph.i47.i40 ], [ %indvars.iv.next.i50.i, %.preheader372.preheader.i.i ] ; 5 uses
  %.0352391.i.i = phi i1 [ false, %.lr.ph.i47.i40 ], [ %i.dmv, %.preheader372.preheader.i.i ]
  %i.czt = phi <8 x float> [ zeroinitializer, %.lr.ph.i47.i40 ], [ %i.dmo, %.preheader372.preheader.i.i ]
  %i.czu = load ptr, ptr %i.cyr, align 8, !tbaa !55, !noalias !144
  %i.czv = getelementptr inbounds [4 x i8], ptr %i.czu, i64 %indvars.iv.i48.i47 ; 3 uses
  %i.czw = load ptr, ptr %i.cys, align 8, !tbaa !55, !noalias !144
  %i.czx = getelementptr inbounds [4 x i8], ptr %i.czw, i64 %indvars.iv.i48.i47 ; 3 uses
  %i.czy = load ptr, ptr %i.cyt, align 8, !tbaa !55, !noalias !144
  %i.czz = getelementptr inbounds [4 x i8], ptr %i.czy, i64 %indvars.iv.i48.i47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #18, !noalias !144
  %.val360.i.i = load i32, ptr %i.czv, align 4, !tbaa !43, !noalias !144
  %i.daa = mul nsw i32 %.val360.i.i, 3
  %i.dab = sext i32 %i.daa to i64
  %i.dac = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dab ; 3 uses
  %i.dad = load float, ptr %i.dac, align 4, !tbaa !17, !noalias !144
  store float %i.dad, ptr %i.u, align 16, !tbaa !17, !noalias !144
  %i.dae = getelementptr i8, ptr %i.dac, i64 4
  %i.daf = load float, ptr %i.dae, align 4, !tbaa !17, !noalias !144
  store float %i.daf, ptr %i.cyu, align 4, !tbaa !17, !noalias !144
  %i.dag = getelementptr i8, ptr %i.dac, i64 8
  %i.dah = load float, ptr %i.dag, align 4, !tbaa !17, !noalias !144
  store float %i.dah, ptr %i.cyv, align 8, !tbaa !17, !noalias !144
  %.val359.i.i = load i32, ptr %i.czx, align 4, !tbaa !43, !noalias !144
  %i.dai = mul nsw i32 %.val359.i.i, 3
  %i.daj = sext i32 %i.dai to i64
  %i.dak = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.daj ; 3 uses
  %i.dal = load float, ptr %i.dak, align 4, !tbaa !17, !noalias !144
  store float %i.dal, ptr %i.v, align 4, !tbaa !17, !noalias !144
  %i.dam = getelementptr i8, ptr %i.dak, i64 4
  %i.dan = load float, ptr %i.dam, align 4, !tbaa !17, !noalias !144
  store float %i.dan, ptr %i.cyw, align 4, !tbaa !17, !noalias !144
  %i.dao = getelementptr i8, ptr %i.dak, i64 8
  %i.dap = load float, ptr %i.dao, align 4, !tbaa !17, !noalias !144
  store float %i.dap, ptr %i.cyx, align 4, !tbaa !17, !noalias !144
  %.val358.i.i = load i32, ptr %i.czz, align 4, !tbaa !43, !noalias !144
  %i.daq = mul nsw i32 %.val358.i.i, 3
  %i.dar = sext i32 %i.daq to i64
  %i.das = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dar ; 3 uses
  %i.dat = load float, ptr %i.das, align 4, !tbaa !17, !noalias !144
  store float %i.dat, ptr %i.w, align 4, !tbaa !17, !noalias !144
  %i.dau = getelementptr i8, ptr %i.das, i64 4
  %i.dav = load float, ptr %i.dau, align 4, !tbaa !17, !noalias !144
  store float %i.dav, ptr %i.cyy, align 4, !tbaa !17, !noalias !144
  %i.daw = getelementptr i8, ptr %i.das, i64 8
  %i.dax = load float, ptr %i.daw, align 4, !tbaa !17, !noalias !144
  store float %i.dax, ptr %i.cyz, align 4, !tbaa !17, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #18, !noalias !144
  %.val357.i.i = load i32, ptr %i.czv, align 4, !tbaa !43, !noalias !144
  %i.day = mul nsw i32 %.val357.i.i, 3
  %i.daz = sext i32 %i.day to i64
  %i.dba = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.daz ; 3 uses
  %i.dbb = load float, ptr %i.dba, align 4, !tbaa !17, !noalias !144
  store float %i.dbb, ptr %i.x, align 8, !tbaa !17, !noalias !144
  %i.dbc = getelementptr i8, ptr %i.dba, i64 4
  %i.dbd = load float, ptr %i.dbc, align 4, !tbaa !17, !noalias !144
  store float %i.dbd, ptr %i.cza, align 4, !tbaa !17, !noalias !144
  %i.dbe = getelementptr i8, ptr %i.dba, i64 8
  %i.dbf = load float, ptr %i.dbe, align 4, !tbaa !17, !noalias !144
  store float %i.dbf, ptr %i.czb, align 8, !tbaa !17, !noalias !144
  %.val356.i.i = load i32, ptr %i.czx, align 4, !tbaa !43, !noalias !144
  %i.dbg = mul nsw i32 %.val356.i.i, 3
  %i.dbh = sext i32 %i.dbg to i64
  %i.dbi = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dbh ; 3 uses
  %i.dbj = load float, ptr %i.dbi, align 4, !tbaa !17, !noalias !144
  store float %i.dbj, ptr %i.y, align 8, !tbaa !17, !noalias !144
  %i.dbk = getelementptr i8, ptr %i.dbi, i64 4
  %i.dbl = load float, ptr %i.dbk, align 4, !tbaa !17, !noalias !144
  store float %i.dbl, ptr %i.czc, align 4, !tbaa !17, !noalias !144
  %i.dbm = getelementptr i8, ptr %i.dbi, i64 8
  %i.dbn = load float, ptr %i.dbm, align 4, !tbaa !17, !noalias !144
  store float %i.dbn, ptr %i.czd, align 8, !tbaa !17, !noalias !144
  %.val355.i.i = load i32, ptr %i.czz, align 4, !tbaa !43, !noalias !144
  %i.dbo = mul nsw i32 %.val355.i.i, 3
  %i.dbp = sext i32 %i.dbo to i64
  %i.dbq = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dbp ; 3 uses
  %i.dbr = load float, ptr %i.dbq, align 4, !tbaa !17, !noalias !144
  store float %i.dbr, ptr %i.z, align 8, !tbaa !17, !noalias !144
  %i.dbs = getelementptr i8, ptr %i.dbq, i64 4
  %i.dbt = load float, ptr %i.dbs, align 4, !tbaa !17, !noalias !144
  store float %i.dbt, ptr %i.cze, align 4, !tbaa !17, !noalias !144
  %i.dbu = getelementptr i8, ptr %i.dbq, i64 8
  %i.dbv = load float, ptr %i.dbu, align 4, !tbaa !17, !noalias !144
  store float %i.dbv, ptr %i.czf, align 8, !tbaa !17, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #18, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #18, !noalias !144
  %i.dbw = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.u, ptr noundef nonnull %i.aa), !noalias !144 ; 0 uses
  %i.dbx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab), !noalias !144 ; 0 uses
  %i.dby = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ac), !noalias !144 ; 0 uses
  %i.dbz = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ad), !noalias !144 ; 0 uses
  %i.dca = load <3 x float>, ptr %i.ac, align 16, !tbaa !17, !noalias !144 ; 4 uses
  %i.dcb = extractelement <3 x float> %i.dca, i64 0
  %i.dcc = load float, ptr %i.czm, align 4, !tbaa !17, !noalias !144
  %i.dcd = load <3 x float>, ptr %i.ad, align 16, !tbaa !17, !noalias !144 ; 4 uses
  %i.dce = extractelement <3 x float> %i.dcd, i64 0
  %i.dcf = load float, ptr %i.czn, align 4, !tbaa !17, !noalias !144
  %12 = shufflevector <3 x float> %i.dca, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %13 = insertelement <2 x float> %12, float %i.dcc, i64 1
  %14 = shufflevector <3 x float> %i.dcd, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %15 = insertelement <2 x float> %14, float %i.dcf, i64 1
  %16 = fadd <2 x float> %13, %15
  %17 = fneg <2 x float> %16                      ; 2 uses
  %foldExtExtBinop.a = fadd <3 x float> %i.dca, %i.dcd
  %18 = extractelement <2 x float> %17, i64 0
  %19 = fmul float %i.cyh, %18                    ; 3 uses
  %i.dcg = fneg <3 x float> %foldExtExtBinop.a
  %20 = shufflevector <3 x float> %i.dcg, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %21 = shufflevector <2 x float> %17, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %22 = shufflevector <3 x float> %20, <3 x float> %21, <3 x i32> <i32 0, i32 3, i32 4>
  %i.dch = fmul <3 x float> %i.czp, %22           ; 5 uses
  %i.dci = shufflevector <3 x float> %i.dch, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 3 uses
  %i.dcj = fadd <3 x float> %i.dca, %i.dci        ; 2 uses
  %i.dck = shufflevector <3 x float> %i.dcj, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 4 uses
  %i.dcl = fadd float %i.dcb, %19                 ; 3 uses
  %i.dcm = fadd <3 x float> %i.dcd, %i.dci        ; 2 uses
  %i.dcn = shufflevector <3 x float> %i.dcm, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 4 uses
  %i.dco = fadd float %i.dce, %19                 ; 3 uses
  %i.dcp = load <3 x float>, ptr %i.ab, align 16, !tbaa !17, !noalias !144 ; 5 uses
  %i.dcq = shufflevector <3 x float> %i.dcp, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dcr = load float, ptr %i.czg, align 4, !tbaa !17, !noalias !144 ; 2 uses
  %i.dcs = load float, ptr %i.aa, align 16, !tbaa !17, !noalias !144 ; 2 uses
  %i.dct = load <3 x float>, ptr %i.aa, align 16, !tbaa !17, !noalias !144 ; 5 uses
  %i.dcu = shufflevector <3 x float> %i.dct, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dcv = fneg <3 x float> %i.dcp
  %i.dcw = shufflevector <3 x float> %i.dcv, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dcx = fmul <3 x float> %i.dct, %i.dcw
  %i.dcy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dcu, <3 x float> %i.dcp, <3 x float> %i.dcx) ; 9 uses
  %23 = extractelement <3 x float> %i.dcy, i64 0  ; 2 uses
  %24 = extractelement <3 x float> %i.dcy, i64 1  ; 3 uses
  %25 = fneg float %24
  %i.dcz = extractelement <3 x float> %i.dcy, i64 2 ; 2 uses
  %i.dda = fneg <3 x float> %i.dcy
  %26 = shufflevector <3 x float> %i.dda, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %27 = insertelement <3 x float> poison, float %25, i64 0
  %28 = shufflevector <2 x float> %26, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %29 = shufflevector <3 x float> %27, <3 x float> %28, <3 x i32> <i32 0, i32 3, i32 4>
  %30 = fmul <3 x float> %i.dci, %29
  %i.ddb = shufflevector <3 x float> %i.dcy, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.ddc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dch, <3 x float> %i.ddb, <3 x float> %30) ; 7 uses
  %31 = extractelement <3 x float> %i.ddc, i64 1  ; 3 uses
  %i.ddd = fneg <3 x float> %i.ddc
  %32 = shufflevector <3 x float> %i.ddd, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %33 = shufflevector <3 x float> %i.dcy, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %34 = fmul <2 x float> %33, %32                 ; 2 uses
  %i.dde = extractelement <3 x float> %i.ddc, i64 2 ; 3 uses
  %35 = fneg float %i.dde
  %36 = fmul float %23, %35
  %37 = insertelement <3 x float> poison, float %36, i64 0
  %38 = shufflevector <2 x float> %34, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %39 = shufflevector <3 x float> %37, <3 x float> %38, <3 x i32> <i32 0, i32 3, i32 4>
  %40 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ddb, <3 x float> %i.ddc, <3 x float> %39) ; 4 uses
  %i.ddf = extractelement <2 x float> %34, i64 0
  %41 = call float @llvm.fmuladd.f32(float %23, float %31, float %i.ddf) ; 2 uses
  %foldExtExtBinop241 = fmul <3 x float> %i.ddc, %i.ddc
  %i.ddg = extractelement <3 x float> %foldExtExtBinop241, i64 0
  %i.ddh = call float @llvm.fmuladd.f32(float %i.dde, float %i.dde, float %i.ddg)
  %i.ddi = call float @llvm.fmuladd.f32(float %31, float %31, float %i.ddh)
  %i.ddj = call noundef float @sqrtf(float noundef %i.ddi) #18, !noalias !144
  %foldExtExtBinop243.a = fmul <3 x float> %40, %40
  %i.ddk = extractelement <3 x float> %foldExtExtBinop243.a, i64 2
  %i.ddl = call float @llvm.fmuladd.f32(float %41, float %41, float %i.ddk)
  %i.ddm = extractelement <3 x float> %40, i64 0  ; 2 uses
  %i.ddn = call float @llvm.fmuladd.f32(float %i.ddm, float %i.ddm, float %i.ddl)
  %i.ddo = call noundef float @sqrtf(float noundef %i.ddn) #18, !noalias !144
  %foldExtExtBinop245.a = fmul <3 x float> %i.dcy, %i.dcy
  %i.ddp = extractelement <3 x float> %foldExtExtBinop245.a, i64 0
  %i.ddq = call float @llvm.fmuladd.f32(float %i.dcz, float %i.dcz, float %i.ddp)
  %i.ddr = call float @llvm.fmuladd.f32(float %24, float %24, float %i.ddq)
  %i.dds = call noundef float @sqrtf(float noundef %i.ddr) #18, !noalias !144
  %i.ddt = insertelement <3 x float> poison, float %i.ddj, i64 0
  %i.ddu = insertelement <3 x float> %i.ddt, float %i.ddo, i64 1
  %i.ddv = insertelement <3 x float> %i.ddu, float %i.dds, i64 2
  %i.ddw = fdiv <3 x float> splat (float 1.000000e+00), %i.ddv ; 3 uses
  %i.ddx = shufflevector <3 x float> %i.ddw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ddy = fmul <3 x float> %i.ddx, %i.ddc        ; 8 uses
  %i.ddz = shufflevector <3 x float> %i.ddw, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dea = shufflevector <3 x float> %40, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.deb = fmul <3 x float> %i.ddz, %i.dea        ; 8 uses
  %i.dec = shufflevector <3 x float> %i.ddw, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ded = fmul <3 x float> %i.dcy, %i.dec        ; 8 uses
  %i.dee = extractelement <3 x float> %i.dct, i64 1 ; 2 uses
  %i.def = extractelement <3 x float> %i.ddy, i64 0 ; 2 uses
  %i.deg = fmul float %i.dee, %i.def
  %i.deh = extractelement <3 x float> %i.ddy, i64 2 ; 4 uses
  %i.dei = call float @llvm.fmuladd.f32(float %i.deh, float %i.dcs, float %i.deg)
  %i.dej = extractelement <3 x float> %i.dct, i64 2 ; 3 uses
  %i.dek = extractelement <3 x float> %i.ddy, i64 1 ; 4 uses
  %i.del = call float @llvm.fmuladd.f32(float %i.dek, float %i.dej, float %i.dei) ; 3 uses
  %i.dem = fmul float %i.dcr, %i.def
  %i.den = extractelement <3 x float> %i.dcp, i64 0 ; 2 uses
  %i.deo = call float @llvm.fmuladd.f32(float %i.deh, float %i.den, float %i.dem)
  %i.dep = extractelement <3 x float> %i.dcp, i64 2 ; 3 uses
  %i.deq = call float @llvm.fmuladd.f32(float %i.dek, float %i.dep, float %i.deo) ; 3 uses
  %i.der = extractelement <3 x float> %i.deb, i64 0 ; 2 uses
  %i.des = fmul float %i.dee, %i.der
  %i.det = extractelement <3 x float> %i.deb, i64 2 ; 4 uses
  %i.deu = call float @llvm.fmuladd.f32(float %i.det, float %i.dcs, float %i.des)
  %i.dev = extractelement <3 x float> %i.deb, i64 1 ; 4 uses
  %i.dew = call float @llvm.fmuladd.f32(float %i.dev, float %i.dej, float %i.deu) ; 3 uses
  %i.dex = fmul float %i.dcr, %i.der
  %i.dey = call float @llvm.fmuladd.f32(float %i.det, float %i.den, float %i.dex)
  %i.dez = call float @llvm.fmuladd.f32(float %i.dev, float %i.dep, float %i.dey) ; 3 uses
  %foldExtExtBinop247.a = fmul <3 x float> %i.dck, %i.ddy
  %i.dfa = extractelement <3 x float> %foldExtExtBinop247.a, i64 0
  %i.dfb = call float @llvm.fmuladd.f32(float %i.deh, float %i.dcl, float %i.dfa)
  %i.dfc = extractelement <3 x float> %i.dcj, i64 2 ; 3 uses
  %i.dfd = call float @llvm.fmuladd.f32(float %i.dek, float %i.dfc, float %i.dfb)
  %foldExtExtBinop249.a = fmul <3 x float> %i.dcn, %i.ddy
  %i.dfe = extractelement <3 x float> %foldExtExtBinop249.a, i64 0
  %i.dff = call float @llvm.fmuladd.f32(float %i.deh, float %i.dco, float %i.dfe)
  %i.dfg = extractelement <3 x float> %i.dcm, i64 2 ; 3 uses
  %i.dfh = call float @llvm.fmuladd.f32(float %i.dek, float %i.dfg, float %i.dff)
  %foldExtExtBinop251.a = fmul <3 x float> %i.dck, %i.deb
  %i.dfi = extractelement <3 x float> %foldExtExtBinop251.a, i64 0
  %i.dfj = call float @llvm.fmuladd.f32(float %i.det, float %i.dcl, float %i.dfi)
  %i.dfk = call float @llvm.fmuladd.f32(float %i.dev, float %i.dfc, float %i.dfj)
  %foldExtExtBinop253.a = fmul <3 x float> %i.dcn, %i.deb
  %i.dfl = extractelement <3 x float> %foldExtExtBinop253.a, i64 0
  %i.dfm = call float @llvm.fmuladd.f32(float %i.det, float %i.dco, float %i.dfl)
  %i.dfn = call float @llvm.fmuladd.f32(float %i.dev, float %i.dfg, float %i.dfm)
  %foldExtExtBinop255.a = fmul <3 x float> %i.dck, %i.ded
  %i.dfo = extractelement <3 x float> %foldExtExtBinop255.a, i64 0
  %i.dfp = extractelement <3 x float> %i.ded, i64 2 ; 3 uses
  %i.dfq = call float @llvm.fmuladd.f32(float %i.dfp, float %i.dcl, float %i.dfo)
  %i.dfr = extractelement <3 x float> %i.ded, i64 1 ; 3 uses
  %i.dfs = call float @llvm.fmuladd.f32(float %i.dfr, float %i.dfc, float %i.dfq) ; 2 uses
  %foldExtExtBinop257.a = fmul <3 x float> %i.dcn, %i.ded
  %i.dft = extractelement <3 x float> %foldExtExtBinop257.a, i64 0
  %i.dfu = call float @llvm.fmuladd.f32(float %i.dfp, float %i.dco, float %i.dft)
  %i.dfv = call float @llvm.fmuladd.f32(float %i.dfr, float %i.dfg, float %i.dfu) ; 2 uses
  %shift = shufflevector <3 x float> %i.dch, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %foldExtExtBinop259.a = fmul <3 x float> %shift, %i.ded
  %i.dfw = extractelement <3 x float> %foldExtExtBinop259.a, i64 0
  %i.dfx = call float @llvm.fmuladd.f32(float %i.dfp, float %19, float %i.dfw)
  %i.dfy = extractelement <3 x float> %i.dch, i64 0
  %i.dfz = call float @llvm.fmuladd.f32(float %i.dfr, float %i.dfy, float %i.dfx) ; 2 uses
  %i.dga = call noundef float @sqrtf(float noundef %i.czh) #18, !noalias !144
  %i.dgb = fdiv float 1.000000e+00, %i.dga
  %i.dgc = fmul float %i.dgb, %i.dfz              ; 3 uses
  %i.dgd = fmul float %i.dgc, %i.dgc
  %i.dge = fsub float 1.000000e+00, %i.dgd        ; 3 uses
  %i.dgf = fcmp olt float %i.dge, f0x2B8CBCCC
  %.sroa.speculated.i.i49.i = select i1 %i.dgf, float f0x2B8CBCCC, float %i.dge ; 2 uses
  %i.dgg = call noundef float @sqrtf(float noundef %.sroa.speculated.i.i49.i) #18, !noalias !144
  %i.dgh = fdiv float 1.000000e+00, %i.dgg        ; 2 uses
  %i.dgi = fmul float %i.dgh, %.sroa.speculated.i.i49.i ; 2 uses
  %i.dgj = fsub float %i.dfs, %i.dfv
  %i.dgk = fmul float %i.cyk, %i.dgj
  %i.dgl = fmul float %i.dgh, %i.dgk              ; 3 uses
  %i.dgm = fmul float %i.dgl, %i.dgl
  %i.dgn = fsub float 1.000000e+00, %i.dgm        ; 2 uses
  %i.dgo = call noundef float @sqrtf(float noundef %i.dgn) #18, !noalias !144
  %i.dgp = fdiv float 1.000000e+00, %i.dgo
  %i.dgq = fmul float %i.dgp, %i.dgn
  %i.dgr = fmul float %i.cyj, %i.dgi              ; 2 uses
  %i.dgs = fmul float %i.dgq, %i.czi              ; 5 uses
  %i.dgt = fmul float %i.dgi, %i.czj              ; 2 uses
  %i.dgu = fmul float %i.cyi, %i.dgl
  %i.dgv = fmul float %i.dgc, %i.dgu              ; 2 uses
  %i.dgw = fsub float %i.dgt, %i.dgv              ; 4 uses
  %i.dgx = fadd float %i.dgv, %i.dgt              ; 4 uses
  %i.dgy = fsub float %i.del, %i.deq
  %i.dgz = fmul float %i.dew, %i.dgw
  %i.dha = call float @llvm.fmuladd.f32(float %i.dgs, float %i.dgy, float %i.dgz)
  %i.dhb = call float @llvm.fmuladd.f32(float %i.dez, float %i.dgx, float %i.dha) ; 3 uses
  %i.dhc = fsub float %i.dez, %i.dew
  %i.dhd = fmul float %i.del, %i.dgw
  %i.dhe = call float @llvm.fmuladd.f32(float %i.dgs, float %i.dhc, float %i.dhd)
  %i.dhf = call float @llvm.fmuladd.f32(float %i.deq, float %i.dgx, float %i.dhe) ; 3 uses
  %i.dhg = fneg float %i.dew
  %i.dhh = fmul float %i.dfd, %i.dhg
  %i.dhi = call float @llvm.fmuladd.f32(float %i.del, float %i.dfk, float %i.dhh)
  %i.dhj = call float @llvm.fmuladd.f32(float %i.deq, float %i.dfn, float %i.dhi)
  %i.dhk = fneg float %i.dfh
  %i.dhl = call float @llvm.fmuladd.f32(float %i.dhk, float %i.dez, float %i.dhj) ; 3 uses
  %i.dhm = fmul float %i.dhf, %i.dhf
  %i.dhn = call float @llvm.fmuladd.f32(float %i.dhb, float %i.dhb, float %i.dhm) ; 3 uses
  %i.dho = fneg float %i.dhl
  %i.dhp = call float @llvm.fmuladd.f32(float %i.dho, float %i.dhl, float %i.dhn) ; 2 uses
  %i.dhq = fmul float %i.dhf, %i.dhp
  %i.dhr = call noundef float @sqrtf(float noundef %i.dhp) #18, !noalias !144
  %i.dhs = fdiv float -1.000000e+00, %i.dhr
  %i.dht = fmul float %i.dhs, %i.dhq
  %i.dhu = call float @llvm.fmuladd.f32(float %i.dhb, float %i.dhl, float %i.dht)
  %i.dhv = fmul float %i.dhn, %i.dhn
  %i.dhw = call noundef float @sqrtf(float noundef %i.dhv) #18, !noalias !144
  %i.dhx = fdiv float 1.000000e+00, %i.dhw
  %i.dhy = fmul float %i.dhx, %i.dhu              ; 6 uses
  %i.dhz = fmul float %i.dhy, %i.dhy
  %i.dia = fsub float 1.000000e+00, %i.dhz        ; 2 uses
  %i.dib = call noundef float @sqrtf(float noundef %i.dia) #18, !noalias !144
  %i.dic = fdiv float 1.000000e+00, %i.dib
  %i.did = fmul float %i.dic, %i.dia              ; 5 uses
  %i.die = fneg float %i.dgr
  %i.dif = fmul float %i.dhy, %i.die
  %i.dig = fmul float %i.dgr, %i.did
  %i.dih = fneg float %i.dhy                      ; 2 uses
  %i.dii = fmul float %i.dgw, %i.dih
  %i.dij = call float @llvm.fmuladd.f32(float %i.dgs, float %i.did, float %i.dii)
  %i.dik = fmul float %i.dgw, %i.did
  %i.dil = call float @llvm.fmuladd.f32(float %i.dgs, float %i.dhy, float %i.dik) ; 2 uses
  %i.dim = fneg float %i.dgs                      ; 2 uses
  %i.din = fmul float %i.dgx, %i.dih
  %i.dio = call float @llvm.fmuladd.f32(float %i.dim, float %i.did, float %i.din)
  %i.dip = fmul float %i.dgx, %i.did
  %i.diq = call float @llvm.fmuladd.f32(float %i.dim, float %i.dhy, float %i.dip)
  %i.dir = insertelement <3 x float> poison, float %i.dig, i64 0
  %i.dis = shufflevector <3 x float> %i.dir, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dit = fmul <3 x float> %i.deb, %i.dis
  %i.diu = insertelement <3 x float> poison, float %i.dif, i64 0
  %i.div = shufflevector <3 x float> %i.diu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.diw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ddy, <3 x float> %i.div, <3 x float> %i.dit)
  %i.dix = insertelement <3 x float> poison, float %i.dfz, i64 0
  %i.diy = shufflevector <3 x float> %i.dix, <3 x float> poison, <3 x i32> zeroinitializer
  %i.diz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ded, <3 x float> %i.diy, <3 x float> %i.diw)
  %42 = insertelement <2 x float> poison, float %i.dil, i64 0
  %i.dja = insertelement <3 x float> poison, float %i.dij, i64 0
  %i.djb = shufflevector <3 x float> %i.dja, <3 x float> poison, <3 x i32> zeroinitializer
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.djc = insertelement <3 x float> %43, float %i.dil, i64 2
  %44 = fmul <3 x float> %i.deb, %i.djc
  %i.djd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ddy, <3 x float> %i.djb, <3 x float> %44)
  %i.dje = insertelement <3 x float> poison, float %i.dfs, i64 0
  %i.djf = shufflevector <3 x float> %i.dje, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ded, <3 x float> %i.djf, <3 x float> %i.djd)
  %i.djh = insertelement <3 x float> poison, float %i.diq, i64 0
  %i.dji = shufflevector <3 x float> %i.djh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djj = fmul <3 x float> %i.deb, %i.dji
  %i.djk = insertelement <3 x float> poison, float %i.dio, i64 0
  %i.djl = shufflevector <3 x float> %i.djk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ddy, <3 x float> %i.djl, <3 x float> %i.djj)
  %i.djn = insertelement <3 x float> poison, float %i.dfv, i64 0
  %i.djo = shufflevector <3 x float> %i.djn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.djp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ded, <3 x float> %i.djo, <3 x float> %i.djm)
  %i.djq = shufflevector <3 x float> %i.dch, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.djr = fsub <3 x float> %i.diz, %i.djq        ; 3 uses
  %i.djs = load float, ptr %i.czb, align 8, !tbaa !17, !noalias !144
  %i.djt = extractelement <3 x float> %i.djr, i64 1 ; 2 uses
  %i.dju = fadd float %i.djs, %i.djt              ; 2 uses
  store float %i.dju, ptr %i.czb, align 8, !tbaa !17, !noalias !144
  %i.djv = fsub <3 x float> %i.djg, %i.dck        ; 3 uses
  %i.djw = extractelement <3 x float> %i.djv, i64 1 ; 3 uses
  %i.djx = load float, ptr %i.czd, align 8, !tbaa !17, !noalias !144
  %i.djy = fadd float %i.djx, %i.djw              ; 2 uses
  store float %i.djy, ptr %i.czd, align 8, !tbaa !17, !noalias !144
  %i.djz = fsub <3 x float> %i.djp, %i.dcn        ; 3 uses
  %i.dka = extractelement <3 x float> %i.djz, i64 1 ; 3 uses
  %i.dkb = load float, ptr %i.czf, align 8, !tbaa !17, !noalias !144
  %i.dkc = fadd float %i.dkb, %i.dka              ; 2 uses
  store float %i.dkc, ptr %i.czf, align 8, !tbaa !17, !noalias !144
  %.val366.i.i = load i32, ptr %i.czv, align 4, !tbaa !43, !noalias !144
  %i.dkd = mul nsw i32 %.val366.i.i, 3
  %i.dke = sext i32 %i.dkd to i64                 ; 2 uses
  %i.dkf = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dke ; 2 uses
  %i.dkg = getelementptr i8, ptr %i.dkf, i64 8
  %.val365.i.i = load i32, ptr %i.czx, align 4, !tbaa !43, !noalias !144
  %i.dkh = mul nsw i32 %.val365.i.i, 3
  %i.dki = sext i32 %i.dkh to i64                 ; 2 uses
  %i.dkj = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dki ; 2 uses
  %i.dkk = getelementptr i8, ptr %i.dkj, i64 8
  %.val364.i.i = load i32, ptr %i.czz, align 4, !tbaa !43, !noalias !144
  %i.dkl = mul nsw i32 %.val364.i.i, 3
  %i.dkm = sext i32 %i.dkl to i64                 ; 2 uses
  %i.dkn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dkm ; 2 uses
  %i.dko = load <2 x float>, ptr %i.z, align 8, !tbaa !17, !noalias !144
  %i.dkp = shufflevector <3 x float> %i.djz, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.dkq = fadd <2 x float> %i.dko, %i.dkp        ; 2 uses
  store <2 x float> %i.dkq, ptr %i.z, align 8, !tbaa !17, !noalias !144
  %i.dkr = load <2 x float>, ptr %i.y, align 8, !tbaa !17, !noalias !144
  %i.dks = shufflevector <3 x float> %i.djv, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.dkt = fadd <2 x float> %i.dkr, %i.dks        ; 2 uses
  store <2 x float> %i.dkt, ptr %i.y, align 8, !tbaa !17, !noalias !144
  %i.dku = load <2 x float>, ptr %i.x, align 8, !tbaa !17, !noalias !144
  %i.dkv = shufflevector <3 x float> %i.djr, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.dkw = fadd <2 x float> %i.dku, %i.dkv        ; 2 uses
  store <2 x float> %i.dkw, ptr %i.x, align 8, !tbaa !17, !noalias !144
  store <2 x float> %i.dkw, ptr %i.dkf, align 4, !tbaa !17, !noalias !144
  store float %i.dju, ptr %i.dkg, align 4, !tbaa !17, !noalias !144
  store <2 x float> %i.dkt, ptr %i.dkj, align 4, !tbaa !17, !noalias !144
  store float %i.djy, ptr %i.dkk, align 4, !tbaa !17, !noalias !144
  store <2 x float> %i.dkq, ptr %i.dkn, align 4, !tbaa !17, !noalias !144
  %i.dkx = getelementptr i8, ptr %i.dkn, i64 8
  store float %i.dkc, ptr %i.dkx, align 4, !tbaa !17, !noalias !144
  %i.dky = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dke ; 3 uses
  %i.dkz = getelementptr i8, ptr %i.dky, i64 8    ; 2 uses
  %i.dla = load float, ptr %i.dkz, align 4, !tbaa !17, !alias.scope !144
  %i.dlb = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dki ; 3 uses
  %i.dlc = getelementptr i8, ptr %i.dlb, i64 8    ; 2 uses
  %i.dld = load float, ptr %i.dlc, align 4, !tbaa !17, !alias.scope !144
  %i.dle = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dkm ; 3 uses
  %i.dlf = getelementptr i8, ptr %i.dle, i64 8    ; 2 uses
  %i.dlg = load float, ptr %i.dlf, align 4, !tbaa !17, !alias.scope !144
  %i.dlh = call noundef float @llvm.fmuladd.f32(float %i.djt, float %6, float %i.dla)
  %i.dli = call noundef float @llvm.fmuladd.f32(float %i.djw, float %6, float %i.dld)
  %i.dlj = call noundef float @llvm.fmuladd.f32(float %i.dka, float %6, float %i.dlg)
  store float %i.dlh, ptr %i.dkz, align 4, !tbaa !17, !alias.scope !144
  store float %i.dli, ptr %i.dlc, align 4, !tbaa !17, !alias.scope !144
  %i.dlk = load <2 x float>, ptr %i.dle, align 4, !tbaa !17, !alias.scope !144
  %i.dll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dkp, <2 x float> %i.czr, <2 x float> %i.dlk)
  %i.dlm = load <2 x float>, ptr %i.dlb, align 4, !tbaa !17, !alias.scope !144
  %i.dln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dks, <2 x float> %i.czr, <2 x float> %i.dlm)
  %i.dlo = load <2 x float>, ptr %i.dky, align 4, !tbaa !17, !alias.scope !144
  %i.dlp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dkv, <2 x float> %i.czr, <2 x float> %i.dlo)
  store <2 x float> %i.dlp, ptr %i.dky, align 4, !tbaa !17, !alias.scope !144
  store <2 x float> %i.dln, ptr %i.dlb, align 4, !tbaa !17, !alias.scope !144
  store <2 x float> %i.dll, ptr %i.dle, align 4, !tbaa !17, !alias.scope !144
  store float %i.dlj, ptr %i.dlf, align 4, !tbaa !17, !alias.scope !144
  %i.dlq = load ptr, ptr %i.czk, align 8, !tbaa !54, !noalias !144
  %i.dlr = getelementptr inbounds [4 x i8], ptr %i.dlq, i64 %indvars.iv.i48.i47
  %.val367.i.i = load float, ptr %i.dlr, align 4, !tbaa !17, !noalias !144 ; 2 uses
  %i.dls = fmul float %i.cyl, %.val367.i.i
  %i.dlt = fmul float %i.cyn, %.val367.i.i        ; 3 uses
  %i.dlu = fmul float %i.djw, %i.dlt
  %i.dlv = insertelement <3 x float> poison, float %i.dlt, i64 0
  %i.dlw = shufflevector <3 x float> %i.dlv, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.dlx = fmul <3 x float> %i.djv, %i.dlw        ; 2 uses
  %i.dly = fmul float %i.dka, %i.dlt
  %i.dlz = fmul <3 x float> %i.djz, %i.dlw        ; 2 uses
  %i.dma = shufflevector <3 x float> %i.dlz, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.dmb = insertelement <3 x float> poison, float %i.dls, i64 0
  %i.dmc = shufflevector <3 x float> %i.dmb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dmd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dmc, <3 x float> %i.djr, <3 x float> %i.dlx)
  %i.dme = fadd <3 x float> %i.dlz, %i.dmd        ; 2 uses
  %i.dmf = shufflevector <3 x float> %i.dme, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.dmg = load float, ptr %i.cyv, align 8, !tbaa !17, !noalias !144
  %i.dmh = load <3 x float>, ptr %i.u, align 16, !tbaa !17, !noalias !144
  %i.dmi = shufflevector <3 x float> %i.dmh, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dmj = shufflevector <3 x float> %i.dct, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.dmk = shufflevector <3 x float> %i.dlx, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.dml = fmul <8 x float> %i.dmj, %i.dmk
  %i.dmm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dmi, <8 x float> %i.dmf, <8 x float> %i.dml)
  %i.dmn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dcq, <8 x float> %i.dma, <8 x float> %i.dmm)
  %i.dmo = fsub <8 x float> %i.czt, %i.dmn        ; 2 uses
  %i.dmp = fmul float %i.dej, %i.dlu
  %i.dmq = extractelement <3 x float> %i.dme, i64 1
  %i.dmr = call float @llvm.fmuladd.f32(float %i.dmg, float %i.dmq, float %i.dmp)
  %i.dms = call float @llvm.fmuladd.f32(float %i.dep, float %i.dly, float %i.dmr)
  %i.dmt = fsub float %.sroa.27.1.i.i46, %i.dms   ; 2 uses
  %i.dmu = fcmp ole float %i.dge, f0x2B8CBCCC
  %i.dmv = or i1 %.0352391.i.i, %i.dmu            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18, !noalias !144
  %indvars.iv.next.i50.i = add nsw i64 %indvars.iv.i48.i47, 1 ; 2 uses
  %lftr.wideiv.i51.i = trunc i64 %indvars.iv.next.i50.i to i32
  %exitcond.not.i52.i = icmp eq i32 %i.cju, %lftr.wideiv.i51.i
  br i1 %exitcond.not.i52.i, label %.preheader368.loopexit.i.i, label %.preheader372.preheader.i.i, !llvm.loop !130

_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i: ; preds = %.preheader368.loopexit.i.i, %bb.n
  %.sroa.27.0.i.i39 = phi float [ %i.dmt, %.preheader368.loopexit.i.i ], [ 0.000000e+00, %bb.n ]
  %.0352.lcssa.i.i = phi i8 [ %i.czs, %.preheader368.loopexit.i.i ], [ 0, %bb.n ]
  %i.dmw = phi <8 x float> [ %i.dmo, %.preheader368.loopexit.i.i ], [ zeroinitializer, %bb.n ]
  %i.dmx = load <8 x float>, ptr %9, align 4, !tbaa !17, !noalias !144
  %i.dmy = fadd <8 x float> %i.dmw, %i.dmx
  store <8 x float> %i.dmy, ptr %9, align 4, !tbaa !17, !noalias !144
  %i.dmz = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.dna = load float, ptr %i.dmz, align 4, !tbaa !17, !noalias !144
  %i.dnb = fadd float %.sroa.27.0.i.i39, %i.dna
  store float %i.dnb, ptr %i.dmz, align 4, !tbaa !17, !noalias !144
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

bb.o:                                             ; preds = %bb.k
  %i.dnc = load float, ptr %i.cjw, align 8, !tbaa !13 ; 5 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dne = load float, ptr %i.dnd, align 4, !tbaa !16 ; 4 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dng = load float, ptr %i.dnf, align 4, !tbaa !22 ; 6 uses
  %i.dnh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dni = load float, ptr %i.dnh, align 8, !tbaa !18 ; 2 uses
  br i1 %8, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dnj = icmp slt i32 %i.cjv, %i.cju
  br i1 %i.dnj, label %.lr.ph.i53.i, label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

.lr.ph.i53.i:                                     ; preds = %bb.p
  %i.dnk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dnl = load float, ptr %i.dnk, align 8, !tbaa !23
  %i.dnm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dnn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dno = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dns = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dnt = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.dny = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.doa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.dob = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.doc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dod = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.doe = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dof = fmul float %i.dng, %i.dng
  %i.dog = fneg float %i.dne
  %i.doh = fneg float %i.dnl
  %i.doi = sext i32 %i.cjv to i64
  %i.doj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.dok = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.dol = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dom = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %.preheader1.preheader.i54.i

._crit_edge.loopexit.i60.i:                       ; preds = %.preheader1.preheader.i54.i
  %i.don = zext i1 %i.dzv to i8
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

.preheader1.preheader.i54.i:                      ; preds = %.preheader1.preheader.i54.i, %.lr.ph.i53.i
  %indvars.iv.i55.i = phi i64 [ %i.doi, %.lr.ph.i53.i ], [ %indvars.iv.next.i57.i, %.preheader1.preheader.i54.i ] ; 4 uses
  %.026410.i.i = phi i1 [ false, %.lr.ph.i53.i ], [ %i.dzv, %.preheader1.preheader.i54.i ]
  %i.doo = load ptr, ptr %i.dnm, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZN3gmx7csettleERKNS_10SettleDataEiiPK5t_pbcNS_19ArrayRefWithPaddingIKNS_11BasicVectorIfEEEENS6_IS8_EEfSB_bPA3_fPb:bb.a
  %i.dzh = fadd float %i.dzg, %i.dzf              ; 2 uses
  store float %i.dzh, ptr %i.dnx, align 4, !tbaa !17
  %i.dzi = fsub float %i.dyj, %i.drl
  %i.dzj = load float, ptr %i.dny, align 4, !tbaa !17
  %i.dzk = fadd float %i.dzj, %i.dzi              ; 2 uses
  store float %i.dzk, ptr %i.dny, align 4, !tbaa !17
  %i.dzl = fsub float %i.dym, %i.drm
  %i.dzm = load float, ptr %i.p, align 4, !tbaa !17
  %i.dzn = fadd float %i.dzm, %i.dzl              ; 2 uses
  store float %i.dzn, ptr %i.p, align 4, !tbaa !17
  %i.dzo = fsub float %i.dyp, %i.drn
  %i.dzp = load float, ptr %i.dnz, align 4, !tbaa !17
  %i.dzq = fadd float %i.dzp, %i.dzo              ; 2 uses
  store float %i.dzq, ptr %i.dnz, align 4, !tbaa !17
  %i.dzr = fsub float %i.dys, %i.dro
  %i.dzs = load float, ptr %i.doa, align 4, !tbaa !17
  %i.dzt = fadd float %i.dzs, %i.dzr              ; 2 uses
  store float %i.dzt, ptr %i.doa, align 4, !tbaa !17
  %i.dzu = fcmp ole float %i.dvf, f0x2B8CBCCC
  %i.dzv = or i1 %.026410.i.i, %i.dzu             ; 2 uses
  %.val272.i.i = load i32, ptr %i.dop, align 4, !tbaa !43
  %i.dzw = mul nsw i32 %.val272.i.i, 3
  %i.dzx = sext i32 %i.dzw to i64
  %i.dzy = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dzx ; 3 uses
  store float %i.dyv, ptr %i.dzy, align 4, !tbaa !17
  %i.dzz = getelementptr i8, ptr %i.dzy, i64 4
  store float %i.dyy, ptr %i.dzz, align 4, !tbaa !17
  %i.eaa = getelementptr i8, ptr %i.dzy, i64 8
  store float %i.dzb, ptr %i.eaa, align 4, !tbaa !17
  %.val271.i.i = load i32, ptr %i.dor, align 4, !tbaa !43
  %i.eab = mul nsw i32 %.val271.i.i, 3
  %i.eac = sext i32 %i.eab to i64
  %i.ead = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.eac ; 3 uses
  store float %i.dze, ptr %i.ead, align 4, !tbaa !17
  %i.eae = getelementptr i8, ptr %i.ead, i64 4
  store float %i.dzh, ptr %i.eae, align 4, !tbaa !17
  %i.eaf = getelementptr i8, ptr %i.ead, i64 8
  store float %i.dzk, ptr %i.eaf, align 4, !tbaa !17
  %.val270.i.i = load i32, ptr %i.dot, align 4, !tbaa !43
  %i.eag = mul nsw i32 %.val270.i.i, 3
  %i.eah = sext i32 %i.eag to i64
  %i.eai = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.eah ; 3 uses
  store float %i.dzn, ptr %i.eai, align 4, !tbaa !17
  %i.eaj = getelementptr i8, ptr %i.eai, i64 4
  store float %i.dzq, ptr %i.eaj, align 4, !tbaa !17
  %i.eak = getelementptr i8, ptr %i.eai, i64 8
  store float %i.dzt, ptr %i.eak, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  %indvars.iv.next.i57.i = add nsw i64 %indvars.iv.i55.i, 1 ; 2 uses
  %lftr.wideiv.i58.i = trunc i64 %indvars.iv.next.i57.i to i32
  %exitcond.not.i59.i = icmp eq i32 %i.cju, %lftr.wideiv.i58.i
  br i1 %exitcond.not.i59.i, label %._crit_edge.loopexit.i60.i, label %.preheader1.preheader.i54.i, !llvm.loop !131

bb.q:                                             ; preds = %bb.o
  %i.eal = load float, ptr %0, align 8, !tbaa !11
  %i.eam = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ean = load float, ptr %i.eam, align 4, !tbaa !12
  %i.eao = icmp slt i32 %i.cjv, %i.cju
  br i1 %i.eao, label %.lr.ph.i67.i, label %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i

.lr.ph.i67.i:                                     ; preds = %bb.q
  %i.eap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eaq = load float, ptr %i.eap, align 8, !tbaa !23
  %i.ear = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eas = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eat = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eau = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eav = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.eaz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eba = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ebd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ebf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ebh = fmul float %i.dng, %i.dng
  %i.ebi = fneg float %i.dne
  %i.ebj = fneg float %i.eaq
  %i.ebk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ebl = sext i32 %i.cjv to i64
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ebo = insertelement <3 x float> poison, float %i.dnc, i64 0
  %i.ebp = shufflevector <3 x float> %i.ebo, <3 x float> poison, <3 x i32> zeroinitializer
  br label %.preheader2.preheader.i.i

.preheader1.loopexit.i.i:                         ; preds = %.preheader2.preheader.i.i
  %i.ebq = zext i1 %i.eob to i8
  br label %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i

.preheader2.preheader.i.i:                        ; preds = %.preheader2.preheader.i.i, %.lr.ph.i67.i
  %.sroa.27.1.i73.i = phi float [ 0.000000e+00, %.lr.ph.i67.i ], [ %i.enz, %.preheader2.preheader.i.i ]
  %indvars.iv.i74.i = phi i64 [ %i.ebl, %.lr.ph.i67.i ], [ %indvars.iv.next.i77.i, %.preheader2.preheader.i.i ] ; 5 uses
  %.031919.i.i = phi i1 [ false, %.lr.ph.i67.i ], [ %i.eob, %.preheader2.preheader.i.i ]
  %i.ebr = phi <8 x float> [ zeroinitializer, %.lr.ph.i67.i ], [ %i.enu, %.preheader2.preheader.i.i ]
  %i.ebs = load ptr, ptr %i.ear, align 8, !tbaa !55
  %i.ebt = getelementptr inbounds [4 x i8], ptr %i.ebs, i64 %indvars.iv.i74.i ; 3 uses
  %i.ebu = load ptr, ptr %i.eas, align 8, !tbaa !55
  %i.ebv = getelementptr inbounds [4 x i8], ptr %i.ebu, i64 %indvars.iv.i74.i ; 3 uses
  %i.ebw = load ptr, ptr %i.eat, align 8, !tbaa !55
  %i.ebx = getelementptr inbounds [4 x i8], ptr %i.ebw, i64 %indvars.iv.i74.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %.val324.i.i = load i32, ptr %i.ebt, align 4, !tbaa !43
  %i.eby = mul nsw i32 %.val324.i.i, 3
  %i.ebz = sext i32 %i.eby to i64
  %i.eca = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ebz ; 3 uses
  %i.ecb = load float, ptr %i.eca, align 4, !tbaa !17
  store float %i.ecb, ptr %i.a, align 16, !tbaa !17
  %i.ecc = getelementptr i8, ptr %i.eca, i64 4
  %i.ecd = load float, ptr %i.ecc, align 4, !tbaa !17
  store float %i.ecd, ptr %i.eau, align 4, !tbaa !17
  %i.ece = getelementptr i8, ptr %i.eca, i64 8
  %i.ecf = load float, ptr %i.ece, align 4, !tbaa !17
  store float %i.ecf, ptr %i.eav, align 8, !tbaa !17
  %.val323.i.i = load i32, ptr %i.ebv, align 4, !tbaa !43
  %i.ecg = mul nsw i32 %.val323.i.i, 3
  %i.ech = sext i32 %i.ecg to i64
  %i.eci = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ech ; 3 uses
  %i.ecj = load float, ptr %i.eci, align 4, !tbaa !17
  store float %i.ecj, ptr %i.b, align 4, !tbaa !17
  %i.eck = getelementptr i8, ptr %i.eci, i64 4
  %i.ecl = load float, ptr %i.eck, align 4, !tbaa !17
  store float %i.ecl, ptr %i.eaw, align 4, !tbaa !17
  %i.ecm = getelementptr i8, ptr %i.eci, i64 8
  %i.ecn = load float, ptr %i.ecm, align 4, !tbaa !17
  store float %i.ecn, ptr %i.eax, align 4, !tbaa !17
  %.val322.i.i = load i32, ptr %i.ebx, align 4, !tbaa !43
  %i.eco = mul nsw i32 %.val322.i.i, 3
  %i.ecp = sext i32 %i.eco to i64
  %i.ecq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ecp ; 3 uses
  %i.ecr = load float, ptr %i.ecq, align 4, !tbaa !17
  store float %i.ecr, ptr %i.c, align 4, !tbaa !17
  %i.ecs = getelementptr i8, ptr %i.ecq, i64 4
  %i.ect = load float, ptr %i.ecs, align 4, !tbaa !17
  store float %i.ect, ptr %i.eay, align 4, !tbaa !17
  %i.ecu = getelementptr i8, ptr %i.ecq, i64 8
  %i.ecv = load float, ptr %i.ecu, align 4, !tbaa !17
  store float %i.ecv, ptr %i.eaz, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %.val321.i.i = load i32, ptr %i.ebt, align 4, !tbaa !43
  %i.ecw = mul nsw i32 %.val321.i.i, 3
  %i.ecx = sext i32 %i.ecw to i64
  %i.ecy = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ecx ; 3 uses
  %i.ecz = load float, ptr %i.ecy, align 4, !tbaa !17
  store float %i.ecz, ptr %i.d, align 8, !tbaa !17
  %i.eda = getelementptr i8, ptr %i.ecy, i64 4
  %i.edb = load float, ptr %i.eda, align 4, !tbaa !17
  store float %i.edb, ptr %i.eba, align 4, !tbaa !17
  %i.edc = getelementptr i8, ptr %i.ecy, i64 8
  %i.edd = load float, ptr %i.edc, align 4, !tbaa !17
  store float %i.edd, ptr %i.ebb, align 8, !tbaa !17
  %.val320.i.i = load i32, ptr %i.ebv, align 4, !tbaa !43
  %i.ede = mul nsw i32 %.val320.i.i, 3
  %i.edf = sext i32 %i.ede to i64
  %i.edg = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.edf ; 3 uses
  %i.edh = load float, ptr %i.edg, align 4, !tbaa !17
  store float %i.edh, ptr %i.e, align 8, !tbaa !17
  %i.edi = getelementptr i8, ptr %i.edg, i64 4
  %i.edj = load float, ptr %i.edi, align 4, !tbaa !17
  store float %i.edj, ptr %i.ebc, align 4, !tbaa !17
  %i.edk = getelementptr i8, ptr %i.edg, i64 8
  %i.edl = load float, ptr %i.edk, align 4, !tbaa !17
  store float %i.edl, ptr %i.ebd, align 8, !tbaa !17
  %.val.i75.i = load i32, ptr %i.ebx, align 4, !tbaa !43
  %i.edm = mul nsw i32 %.val.i75.i, 3
  %i.edn = sext i32 %i.edm to i64
  %i.edo = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.edn ; 3 uses
  %i.edp = load float, ptr %i.edo, align 4, !tbaa !17
  store float %i.edp, ptr %i.f, align 8, !tbaa !17
  %i.edq = getelementptr i8, ptr %i.edo, i64 4
  %i.edr = load float, ptr %i.edq, align 4, !tbaa !17
  store float %i.edr, ptr %i.ebe, align 4, !tbaa !17
  %i.eds = getelementptr i8, ptr %i.edo, i64 8
  %i.edt = load float, ptr %i.eds, align 4, !tbaa !17
  store float %i.edt, ptr %i.ebf, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.edu = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) ; 0 uses
  %i.edv = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h) ; 0 uses
  %i.edw = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) ; 0 uses
  %i.edx = call noundef i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr noundef nonnull %.0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j) ; 0 uses
  %i.edy = load <3 x float>, ptr %i.i, align 16, !tbaa !17 ; 4 uses
  %i.edz = extractelement <3 x float> %i.edy, i64 0
  %i.eea = load float, ptr %i.ebm, align 4, !tbaa !17
  %i.eeb = load <3 x float>, ptr %i.j, align 16, !tbaa !17 ; 4 uses
  %i.eec = extractelement <3 x float> %i.eeb, i64 0
  %i.eed = load float, ptr %i.ebn, align 4, !tbaa !17
  %45 = shufflevector <3 x float> %i.edy, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %46 = insertelement <2 x float> %45, float %i.eea, i64 1
  %47 = shufflevector <3 x float> %i.eeb, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %48 = insertelement <2 x float> %47, float %i.eed, i64 1
  %49 = fadd <2 x float> %46, %48
  %50 = fneg <2 x float> %49                      ; 2 uses
  %foldExtExtBinop261.a = fadd <3 x float> %i.edy, %i.eeb
  %51 = extractelement <2 x float> %50, i64 0
  %52 = fmul float %i.dnc, %51                    ; 3 uses
  %i.eee = fneg <3 x float> %foldExtExtBinop261.a
  %53 = shufflevector <3 x float> %i.eee, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %54 = shufflevector <2 x float> %50, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %55 = shufflevector <3 x float> %53, <3 x float> %54, <3 x i32> <i32 0, i32 3, i32 4>
  %i.eef = fmul <3 x float> %i.ebp, %55           ; 5 uses
  %i.eeg = shufflevector <3 x float> %i.eef, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 3 uses
  %i.eeh = fadd <3 x float> %i.edy, %i.eeg        ; 2 uses
  %i.eei = shufflevector <3 x float> %i.eeh, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 4 uses
  %i.eej = fadd float %i.edz, %52                 ; 3 uses
  %i.eek = fadd <3 x float> %i.eeb, %i.eeg        ; 2 uses
  %i.eel = shufflevector <3 x float> %i.eek, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 4 uses
  %i.eem = fadd float %i.eec, %52                 ; 3 uses
  %i.een = load <3 x float>, ptr %i.h, align 16, !tbaa !17 ; 5 uses
  %i.eeo = shufflevector <3 x float> %i.een, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.eep = load float, ptr %i.ebg, align 4, !tbaa !17 ; 2 uses
  %i.eeq = load float, ptr %i.g, align 16, !tbaa !17 ; 2 uses
  %i.eer = load <3 x float>, ptr %i.g, align 16, !tbaa !17 ; 5 uses
  %i.ees = shufflevector <3 x float> %i.eer, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.eet = fneg <3 x float> %i.een
  %i.eeu = shufflevector <3 x float> %i.eet, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.eev = fmul <3 x float> %i.eer, %i.eeu
  %i.eew = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ees, <3 x float> %i.een, <3 x float> %i.eev) ; 9 uses
  %56 = extractelement <3 x float> %i.eew, i64 0  ; 2 uses
  %57 = extractelement <3 x float> %i.eew, i64 1  ; 3 uses
  %58 = fneg float %57
  %i.eex = extractelement <3 x float> %i.eew, i64 2 ; 2 uses
  %i.eey = fneg <3 x float> %i.eew
  %59 = shufflevector <3 x float> %i.eey, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %60 = insertelement <3 x float> poison, float %58, i64 0
  %61 = shufflevector <2 x float> %59, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %62 = shufflevector <3 x float> %60, <3 x float> %61, <3 x i32> <i32 0, i32 3, i32 4>
  %63 = fmul <3 x float> %i.eeg, %62
  %i.eez = shufflevector <3 x float> %i.eew, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.efa = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eef, <3 x float> %i.eez, <3 x float> %63) ; 7 uses
  %64 = extractelement <3 x float> %i.efa, i64 1  ; 3 uses
  %i.efb = fneg <3 x float> %i.efa
  %65 = shufflevector <3 x float> %i.efb, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %66 = shufflevector <3 x float> %i.eew, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %67 = fmul <2 x float> %66, %65                 ; 2 uses
  %i.efc = extractelement <3 x float> %i.efa, i64 2 ; 3 uses
  %68 = fneg float %i.efc
  %69 = fmul float %56, %68
  %70 = insertelement <3 x float> poison, float %69, i64 0
  %71 = shufflevector <2 x float> %67, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %72 = shufflevector <3 x float> %70, <3 x float> %71, <3 x i32> <i32 0, i32 3, i32 4>
  %73 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eez, <3 x float> %i.efa, <3 x float> %72) ; 4 uses
  %i.efd = extractelement <2 x float> %67, i64 0
  %74 = call float @llvm.fmuladd.f32(float %56, float %64, float %i.efd) ; 2 uses
  %foldExtExtBinop263 = fmul <3 x float> %i.efa, %i.efa
  %i.efe = extractelement <3 x float> %foldExtExtBinop263, i64 0
  %i.eff = call float @llvm.fmuladd.f32(float %i.efc, float %i.efc, float %i.efe)
  %i.efg = call float @llvm.fmuladd.f32(float %64, float %64, float %i.eff)
  %i.efh = call noundef float @sqrtf(float noundef %i.efg) #18
  %foldExtExtBinop265.a = fmul <3 x float> %73, %73
  %i.efi = extractelement <3 x float> %foldExtExtBinop265.a, i64 2
  %i.efj = call float @llvm.fmuladd.f32(float %74, float %74, float %i.efi)
  %i.efk = extractelement <3 x float> %73, i64 0  ; 2 uses
  %i.efl = call float @llvm.fmuladd.f32(float %i.efk, float %i.efk, float %i.efj)
  %i.efm = call noundef float @sqrtf(float noundef %i.efl) #18
  %foldExtExtBinop267.a = fmul <3 x float> %i.eew, %i.eew
  %i.efn = extractelement <3 x float> %foldExtExtBinop267.a, i64 0
  %i.efo = call float @llvm.fmuladd.f32(float %i.eex, float %i.eex, float %i.efn)
  %i.efp = call float @llvm.fmuladd.f32(float %57, float %57, float %i.efo)
  %i.efq = call noundef float @sqrtf(float noundef %i.efp) #18
  %i.efr = insertelement <3 x float> poison, float %i.efh, i64 0
  %i.efs = insertelement <3 x float> %i.efr, float %i.efm, i64 1
  %i.eft = insertelement <3 x float> %i.efs, float %i.efq, i64 2
  %i.efu = fdiv <3 x float> splat (float 1.000000e+00), %i.eft ; 3 uses
  %i.efv = shufflevector <3 x float> %i.efu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.efw = fmul <3 x float> %i.efv, %i.efa        ; 8 uses
  %i.efx = shufflevector <3 x float> %i.efu, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.efy = shufflevector <3 x float> %73, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.efz = fmul <3 x float> %i.efx, %i.efy        ; 8 uses
  %i.ega = shufflevector <3 x float> %i.efu, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.egb = fmul <3 x float> %i.eew, %i.ega        ; 8 uses
  %i.egc = extractelement <3 x float> %i.eer, i64 1 ; 2 uses
  %i.egd = extractelement <3 x float> %i.efw, i64 0 ; 2 uses
  %i.ege = fmul float %i.egc, %i.egd
  %i.egf = extractelement <3 x float> %i.efw, i64 2 ; 4 uses
  %i.egg = call float @llvm.fmuladd.f32(float %i.egf, float %i.eeq, float %i.ege)
  %i.egh = extractelement <3 x float> %i.eer, i64 2 ; 3 uses
  %i.egi = extractelement <3 x float> %i.efw, i64 1 ; 4 uses
  %i.egj = call float @llvm.fmuladd.f32(float %i.egi, float %i.egh, float %i.egg) ; 3 uses
  %i.egk = fmul float %i.eep, %i.egd
  %i.egl = extractelement <3 x float> %i.een, i64 0 ; 2 uses
  %i.egm = call float @llvm.fmuladd.f32(float %i.egf, float %i.egl, float %i.egk)
  %i.egn = extractelement <3 x float> %i.een, i64 2 ; 3 uses
  %i.ego = call float @llvm.fmuladd.f32(float %i.egi, float %i.egn, float %i.egm) ; 3 uses
  %i.egp = extractelement <3 x float> %i.efz, i64 0 ; 2 uses
  %i.egq = fmul float %i.egc, %i.egp
  %i.egr = extractelement <3 x float> %i.efz, i64 2 ; 4 uses
  %i.egs = call float @llvm.fmuladd.f32(float %i.egr, float %i.eeq, float %i.egq)
  %i.egt = extractelement <3 x float> %i.efz, i64 1 ; 4 uses
  %i.egu = call float @llvm.fmuladd.f32(float %i.egt, float %i.egh, float %i.egs) ; 3 uses
  %i.egv = fmul float %i.eep, %i.egp
  %i.egw = call float @llvm.fmuladd.f32(float %i.egr, float %i.egl, float %i.egv)
  %i.egx = call float @llvm.fmuladd.f32(float %i.egt, float %i.egn, float %i.egw) ; 3 uses
  %foldExtExtBinop269.a = fmul <3 x float> %i.eei, %i.efw
  %i.egy = extractelement <3 x float> %foldExtExtBinop269.a, i64 0
  %i.egz = call float @llvm.fmuladd.f32(float %i.egf, float %i.eej, float %i.egy)
  %i.eha = extractelement <3 x float> %i.eeh, i64 2 ; 3 uses
  %i.ehb = call float @llvm.fmuladd.f32(float %i.egi, float %i.eha, float %i.egz)
  %foldExtExtBinop271.a = fmul <3 x float> %i.eel, %i.efw
  %i.ehc = extractelement <3 x float> %foldExtExtBinop271.a, i64 0
  %i.ehd = call float @llvm.fmuladd.f32(float %i.egf, float %i.eem, float %i.ehc)
  %i.ehe = extractelement <3 x float> %i.eek, i64 2 ; 3 uses
  %i.ehf = call float @llvm.fmuladd.f32(float %i.egi, float %i.ehe, float %i.ehd)
  %foldExtExtBinop273.a = fmul <3 x float> %i.eei, %i.efz
  %i.ehg = extractelement <3 x float> %foldExtExtBinop273.a, i64 0
  %i.ehh = call float @llvm.fmuladd.f32(float %i.egr, float %i.eej, float %i.ehg)
  %i.ehi = call float @llvm.fmuladd.f32(float %i.egt, float %i.eha, float %i.ehh)
  %foldExtExtBinop275.a = fmul <3 x float> %i.eel, %i.efz
  %i.ehj = extractelement <3 x float> %foldExtExtBinop275.a, i64 0
  %i.ehk = call float @llvm.fmuladd.f32(float %i.egr, float %i.eem, float %i.ehj)
  %i.ehl = call float @llvm.fmuladd.f32(float %i.egt, float %i.ehe, float %i.ehk)
  %foldExtExtBinop277 = fmul <3 x float> %i.eei, %i.egb
  %i.ehm = extractelement <3 x float> %foldExtExtBinop277, i64 0
  %i.ehn = extractelement <3 x float> %i.egb, i64 2 ; 3 uses
  %i.eho = call float @llvm.fmuladd.f32(float %i.ehn, float %i.eej, float %i.ehm)
  %i.ehp = extractelement <3 x float> %i.egb, i64 1 ; 3 uses
  %i.ehq = call float @llvm.fmuladd.f32(float %i.ehp, float %i.eha, float %i.eho) ; 2 uses
  %foldExtExtBinop279 = fmul <3 x float> %i.eel, %i.egb
  %i.ehr = extractelement <3 x float> %foldExtExtBinop279, i64 0
  %i.ehs = call float @llvm.fmuladd.f32(float %i.ehn, float %i.eem, float %i.ehr)
  %i.eht = call float @llvm.fmuladd.f32(float %i.ehp, float %i.ehe, float %i.ehs) ; 2 uses
  %shift281 = shufflevector <3 x float> %i.eef, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %foldExtExtBinop282 = fmul <3 x float> %shift281, %i.egb
  %i.ehu = extractelement <3 x float> %foldExtExtBinop282, i64 0
  %i.ehv = call float @llvm.fmuladd.f32(float %i.ehn, float %52, float %i.ehu)
  %i.ehw = extractelement <3 x float> %i.eef, i64 0
  %i.ehx = call float @llvm.fmuladd.f32(float %i.ehp, float %i.ehw, float %i.ehv) ; 2 uses
  %i.ehy = call noundef float @sqrtf(float noundef %i.ebh) #18
  %i.ehz = fdiv float 1.000000e+00, %i.ehy
  %i.eia = fmul float %i.ehz, %i.ehx              ; 3 uses
  %i.eib = fmul float %i.eia, %i.eia
  %i.eic = fsub float 1.000000e+00, %i.eib        ; 3 uses
  %i.eid = fcmp olt float %i.eic, f0x2B8CBCCC
  %.sroa.speculated.i.i76.i = select i1 %i.eid, float f0x2B8CBCCC, float %i.eic ; 2 uses
  %i.eie = call noundef float @sqrtf(float noundef %.sroa.speculated.i.i76.i) #18
  %i.eif = fdiv float 1.000000e+00, %i.eie        ; 2 uses
  %i.eig = fmul float %i.eif, %.sroa.speculated.i.i76.i ; 2 uses
  %i.eih = fsub float %i.ehq, %i.eht
  %i.eii = fmul float %i.dni, %i.eih
  %i.eij = fmul float %i.eif, %i.eii              ; 3 uses
  %i.eik = fmul float %i.eij, %i.eij
  %i.eil = fsub float 1.000000e+00, %i.eik        ; 2 uses
  %i.eim = call noundef float @sqrtf(float noundef %i.eil) #18
  %i.ein = fdiv float 1.000000e+00, %i.eim
  %i.eio = fmul float %i.ein, %i.eil
  %i.eip = fmul float %i.dng, %i.eig              ; 2 uses
  %i.eiq = fmul float %i.eio, %i.ebi              ; 5 uses
  %i.eir = fmul float %i.eig, %i.ebj              ; 2 uses
  %i.eis = fmul float %i.dne, %i.eij
  %i.eit = fmul float %i.eia, %i.eis              ; 2 uses
  %i.eiu = fsub float %i.eir, %i.eit              ; 4 uses
  %i.eiv = fadd float %i.eit, %i.eir              ; 4 uses
  %i.eiw = fsub float %i.egj, %i.ego
  %i.eix = fmul float %i.egu, %i.eiu
  %i.eiy = call float @llvm.fmuladd.f32(float %i.eiq, float %i.eiw, float %i.eix)
  %i.eiz = call float @llvm.fmuladd.f32(float %i.egx, float %i.eiv, float %i.eiy) ; 3 uses
  %i.eja = fsub float %i.egx, %i.egu
  %i.ejb = fmul float %i.egj, %i.eiu
  %i.ejc = call float @llvm.fmuladd.f32(float %i.eiq, float %i.eja, float %i.ejb)
  %i.ejd = call float @llvm.fmuladd.f32(float %i.ego, float %i.eiv, float %i.ejc) ; 3 uses
  %i.eje = fneg float %i.egu
  %i.ejf = fmul float %i.ehb, %i.eje
  %i.ejg = call float @llvm.fmuladd.f32(float %i.egj, float %i.ehi, float %i.ejf)
  %i.ejh = call float @llvm.fmuladd.f32(float %i.ego, float %i.ehl, float %i.ejg)
  %i.eji = fneg float %i.ehf
  %i.ejj = call float @llvm.fmuladd.f32(float %i.eji, float %i.egx, float %i.ejh) ; 3 uses
  %i.ejk = fmul float %i.ejd, %i.ejd
  %i.ejl = call float @llvm.fmuladd.f32(float %i.eiz, float %i.eiz, float %i.ejk) ; 3 uses
  %i.ejm = fneg float %i.ejj
  %i.ejn = call float @llvm.fmuladd.f32(float %i.ejm, float %i.ejj, float %i.ejl) ; 2 uses
  %i.ejo = fmul float %i.ejd, %i.ejn
  %i.ejp = call noundef float @sqrtf(float noundef %i.ejn) #18
  %i.ejq = fdiv float -1.000000e+00, %i.ejp
  %i.ejr = fmul float %i.ejq, %i.ejo
  %i.ejs = call float @llvm.fmuladd.f32(float %i.eiz, float %i.ejj, float %i.ejr)
  %i.ejt = fmul float %i.ejl, %i.ejl
  %i.eju = call noundef float @sqrtf(float noundef %i.ejt) #18
  %i.ejv = fdiv float 1.000000e+00, %i.eju
  %i.ejw = fmul float %i.ejv, %i.ejs              ; 6 uses
  %i.ejx = fmul float %i.ejw, %i.ejw
  %i.ejy = fsub float 1.000000e+00, %i.ejx        ; 2 uses
  %i.ejz = call noundef float @sqrtf(float noundef %i.ejy) #18
  %i.eka = fdiv float 1.000000e+00, %i.ejz
  %i.ekb = fmul float %i.eka, %i.ejy              ; 5 uses
  %i.ekc = fneg float %i.eip
  %i.ekd = fmul float %i.ejw, %i.ekc
  %i.eke = fmul float %i.eip, %i.ekb
  %i.ekf = fneg float %i.ejw                      ; 2 uses
  %i.ekg = fmul float %i.eiu, %i.ekf
  %i.ekh = call float @llvm.fmuladd.f32(float %i.eiq, float %i.ekb, float %i.ekg)
  %i.eki = fmul float %i.eiu, %i.ekb
  %i.ekj = call float @llvm.fmuladd.f32(float %i.eiq, float %i.ejw, float %i.eki) ; 2 uses
  %i.ekk = fneg float %i.eiq                      ; 2 uses
  %i.ekl = fmul float %i.eiv, %i.ekf
  %i.ekm = call float @llvm.fmuladd.f32(float %i.ekk, float %i.ekb, float %i.ekl)
  %i.ekn = fmul float %i.eiv, %i.ekb
  %i.eko = call float @llvm.fmuladd.f32(float %i.ekk, float %i.ejw, float %i.ekn)
  %i.ekp = insertelement <3 x float> poison, float %i.eke, i64 0
  %i.ekq = shufflevector <3 x float> %i.ekp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ekr = fmul <3 x float> %i.efz, %i.ekq
  %i.eks = insertelement <3 x float> poison, float %i.ekd, i64 0
  %i.ekt = shufflevector <3 x float> %i.eks, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eku = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efw, <3 x float> %i.ekt, <3 x float> %i.ekr)
  %i.ekv = insertelement <3 x float> poison, float %i.ehx, i64 0
  %i.ekw = shufflevector <3 x float> %i.ekv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ekx = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.egb, <3 x float> %i.ekw, <3 x float> %i.eku)
  %75 = insertelement <2 x float> poison, float %i.ekj, i64 0
  %i.eky = insertelement <3 x float> poison, float %i.ekh, i64 0
  %i.ekz = shufflevector <3 x float> %i.eky, <3 x float> poison, <3 x i32> zeroinitializer
  %76 = shufflevector <2 x float> %75, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %i.ela = insertelement <3 x float> %76, float %i.ekj, i64 2
  %77 = fmul <3 x float> %i.efz, %i.ela
  %i.elb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efw, <3 x float> %i.ekz, <3 x float> %77)
  %i.elc = insertelement <3 x float> poison, float %i.ehq, i64 0
  %i.eld = shufflevector <3 x float> %i.elc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ele = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.egb, <3 x float> %i.eld, <3 x float> %i.elb)
  %i.elf = insertelement <3 x float> poison, float %i.eko, i64 0
  %i.elg = shufflevector <3 x float> %i.elf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.elh = fmul <3 x float> %i.efz, %i.elg
  %i.eli = insertelement <3 x float> poison, float %i.ekm, i64 0
  %i.elj = shufflevector <3 x float> %i.eli, <3 x float> poison, <3 x i32> zeroinitializer
  %i.elk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.efw, <3 x float> %i.elj, <3 x float> %i.elh)
  %i.ell = insertelement <3 x float> poison, float %i.eht, i64 0
  %i.elm = shufflevector <3 x float> %i.ell, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eln = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.egb, <3 x float> %i.elm, <3 x float> %i.elk)
  %i.elo = shufflevector <3 x float> %i.eef, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.elp = fsub <3 x float> %i.ekx, %i.elo        ; 3 uses
  %i.elq = load float, ptr %i.ebb, align 8, !tbaa !17
  %i.elr = extractelement <3 x float> %i.elp, i64 1
  %i.els = fadd float %i.elq, %i.elr              ; 2 uses
  store float %i.els, ptr %i.ebb, align 8, !tbaa !17
  %i.elt = fsub <3 x float> %i.ele, %i.eei        ; 3 uses
  %i.elu = extractelement <3 x float> %i.elt, i64 1 ; 2 uses
  %i.elv = load float, ptr %i.ebd, align 8, !tbaa !17
  %i.elw = fadd float %i.elv, %i.elu              ; 2 uses
  store float %i.elw, ptr %i.ebd, align 8, !tbaa !17
  %i.elx = fsub <3 x float> %i.eln, %i.eel        ; 3 uses
  %i.ely = extractelement <3 x float> %i.elx, i64 1 ; 2 uses
  %i.elz = load float, ptr %i.ebf, align 8, !tbaa !17
  %i.ema = fadd float %i.elz, %i.ely              ; 2 uses
  store float %i.ema, ptr %i.ebf, align 8, !tbaa !17
  %.val327.i.i = load i32, ptr %i.ebt, align 4, !tbaa !43
  %i.emb = mul nsw i32 %.val327.i.i, 3
  %i.emc = sext i32 %i.emb to i64
  %i.emd = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.emc ; 2 uses
  %i.eme = getelementptr i8, ptr %i.emd, i64 8
  %.val326.i.i = load i32, ptr %i.ebv, align 4, !tbaa !43
  %i.emf = mul nsw i32 %.val326.i.i, 3
  %i.emg = sext i32 %i.emf to i64
  %i.emh = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.emg ; 2 uses
  %i.emi = getelementptr i8, ptr %i.emh, i64 8
  %.val325.i.i = load i32, ptr %i.ebx, align 4, !tbaa !43
  %i.emj = mul nsw i32 %.val325.i.i, 3
  %i.emk = sext i32 %i.emj to i64
  %i.eml = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.emk ; 2 uses
  %i.emm = load <2 x float>, ptr %i.f, align 8, !tbaa !17
  %i.emn = shufflevector <3 x float> %i.elx, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.emo = fadd <2 x float> %i.emm, %i.emn        ; 2 uses
  store <2 x float> %i.emo, ptr %i.f, align 8, !tbaa !17
  %i.emp = load <2 x float>, ptr %i.e, align 8, !tbaa !17
  %i.emq = shufflevector <3 x float> %i.elt, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.emr = fadd <2 x float> %i.emp, %i.emq        ; 2 uses
  store <2 x float> %i.emr, ptr %i.e, align 8, !tbaa !17
  %i.ems = load <2 x float>, ptr %i.d, align 8, !tbaa !17
  %i.emt = shufflevector <3 x float> %i.elp, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.emu = fadd <2 x float> %i.ems, %i.emt        ; 2 uses
  store <2 x float> %i.emu, ptr %i.d, align 8, !tbaa !17
  store <2 x float> %i.emu, ptr %i.emd, align 4, !tbaa !17
  store float %i.els, ptr %i.eme, align 4, !tbaa !17
  store <2 x float> %i.emr, ptr %i.emh, align 4, !tbaa !17
  store float %i.elw, ptr %i.emi, align 4, !tbaa !17
  store <2 x float> %i.emo, ptr %i.eml, align 4, !tbaa !17
  %i.emv = getelementptr i8, ptr %i.eml, i64 8
  store float %i.ema, ptr %i.emv, align 4, !tbaa !17
  %i.emw = load ptr, ptr %i.ebk, align 8, !tbaa !54
  %i.emx = getelementptr inbounds [4 x i8], ptr %i.emw, i64 %indvars.iv.i74.i
  %.val328.i.i = load float, ptr %i.emx, align 4, !tbaa !17 ; 2 uses
  %i.emy = fmul float %i.eal, %.val328.i.i
  %i.emz = fmul float %i.ean, %.val328.i.i        ; 3 uses
  %i.ena = fmul float %i.elu, %i.emz
  %i.enb = insertelement <3 x float> poison, float %i.emz, i64 0
  %i.enc = shufflevector <3 x float> %i.enb, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.end = fmul <3 x float> %i.elt, %i.enc        ; 2 uses
  %i.ene = fmul float %i.ely, %i.emz
  %i.enf = fmul <3 x float> %i.elx, %i.enc        ; 2 uses
  %i.eng = shufflevector <3 x float> %i.enf, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.enh = insertelement <3 x float> poison, float %i.emy, i64 0
  %i.eni = shufflevector <3 x float> %i.enh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.enj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eni, <3 x float> %i.elp, <3 x float> %i.end)
  %i.enk = fadd <3 x float> %i.enf, %i.enj        ; 2 uses
  %i.enl = shufflevector <3 x float> %i.enk, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.enm = load float, ptr %i.eav, align 8, !tbaa !17
  %i.enn = load <3 x float>, ptr %i.a, align 16, !tbaa !17
  %i.eno = shufflevector <3 x float> %i.enn, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.enp = shufflevector <3 x float> %i.eer, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.enq = shufflevector <3 x float> %i.end, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.enr = fmul <8 x float> %i.enp, %i.enq
  %i.ens = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.eno, <8 x float> %i.enl, <8 x float> %i.enr)
  %i.ent = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.eeo, <8 x float> %i.eng, <8 x float> %i.ens)
  %i.enu = fsub <8 x float> %i.ebr, %i.ent        ; 2 uses
  %i.env = fmul float %i.egh, %i.ena
  %i.enw = extractelement <3 x float> %i.enk, i64 1
  %i.enx = call float @llvm.fmuladd.f32(float %i.enm, float %i.enw, float %i.env)
  %i.eny = call float @llvm.fmuladd.f32(float %i.egn, float %i.ene, float %i.enx)
  %i.enz = fsub float %.sroa.27.1.i73.i, %i.eny   ; 2 uses
  %i.eoa = fcmp ole float %i.eic, f0x2B8CBCCC
  %i.eob = or i1 %.031919.i.i, %i.eoa             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next.i77.i = add nsw i64 %indvars.iv.i74.i, 1 ; 2 uses
  %lftr.wideiv.i78.i = trunc i64 %indvars.iv.next.i77.i to i32
  %exitcond.not.i79.i = icmp eq i32 %i.cju, %lftr.wideiv.i78.i
  br i1 %exitcond.not.i79.i, label %.preheader1.loopexit.i.i, label %.preheader2.preheader.i.i, !llvm.loop !132

_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i: ; preds = %.preheader1.loopexit.i.i, %bb.q
  %.sroa.27.0.i66.i = phi float [ %i.enz, %.preheader1.loopexit.i.i ], [ 0.000000e+00, %bb.q ]
  %.0319.lcssa.i.i = phi i8 [ %i.ebq, %.preheader1.loopexit.i.i ], [ 0, %bb.q ]
  %i.eoc = phi <8 x float> [ %i.enu, %.preheader1.loopexit.i.i ], [ zeroinitializer, %bb.q ]
  %i.eod = load <8 x float>, ptr %9, align 4, !tbaa !17
  %i.eoe = fadd <8 x float> %i.eoc, %i.eod
  store <8 x float> %i.eoe, ptr %9, align 4, !tbaa !17
  %i.eof = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.eog = load float, ptr %i.eof, align 4, !tbaa !17
  %i.eoh = fadd float %.sroa.27.0.i66.i, %i.eog
  store float %i.eoh, ptr %i.eof, align 4, !tbaa !17
  br label %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit

_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit: ; preds = %bb.m, %._crit_edge.loopexit.i.i33, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i, %bb.p, %._crit_edge.loopexit.i60.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i
  %.0264.lcssa.i.sink.i = phi i8 [ %i.cli, %._crit_edge.loopexit.i.i33 ], [ %.0319.lcssa.i.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb0ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i ], [ %.0352.lcssa.i.i, %_ZN3gmxL14settleTemplateIfbLi1EPK5t_pbcLb1ELb1EEEvRKNS_10SettleDataEiiT2_PKfPffSA_PA3_fPb.exit.i ], [ 0, %bb.m ], [ 0, %bb.p ], [ %i.don, %._crit_edge.loopexit.i60.i ]
  store i8 %.0264.lcssa.i.sink.i, ptr %10, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZN3gmxL21settleTemplateWrapperIfbLi1EPK5t_pbcEEvRKNS_10SettleDataEiiT2_PKfPffSA_bPA3_fPb.exit, %_ZN3gmxL21settleTemplateWrapperINS_9SimdFloatENS_9SimdFBoolELi16EPKfEEvRKNS_10SettleDataEiiT2_S4_PffS9_bPA3_fPb.exit
  ret void
}

declare void @_Z12set_pbc_simdPK5t_pbcPf(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #17

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dps.512(ptr, <16 x i1>, <16 x i32>, <16 x float>, i32 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x float> @llvm.masked.load.v7f32.p0(ptr captures(none), <7 x i1>, <7 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
end_hunk_1
