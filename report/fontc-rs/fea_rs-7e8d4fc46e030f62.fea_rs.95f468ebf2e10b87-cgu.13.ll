Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.13?download=true
inline.NumInlined: 787
inline.NumDeleted: 330
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB30_11GdefBuilder20build_lig_caret_lists_0E0EB36_:bb.a
  %i.as = icmp slt i32 %.sroa.0.0.i.i2, %.sroa.0.0.i1.i3 ; 2 uses
  %i.at = zext i1 %i.v to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.at ; 6 uses
  %i.av = xor i1 %i.v, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aw ; 7 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ay ; 7 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ba ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.bc = load i16, ptr %i.az, align 8, !range !9, !alias.scope !267, !noalias !266, !noundef !4
  switch i16 %i.bc, label %default.unreachable [
    i16 0, label %bb.n
    i16 1, label %bb.o
    i16 2, label %bb.p
  ]

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !alias.scope !267, !noalias !266, !noundef !4
  %i.bf = sext i16 %i.be to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6

bb.o:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !alias.scope !267, !noalias !266, !noundef !4
  %i.bi = zext i16 %i.bh to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6

bb.p:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !alias.scope !267, !noalias !266, !noundef !4
  %i.bl = sext i16 %i.bk to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i.i7 = phi i32 [ %i.bf, %bb.n ], [ %i.bi, %bb.o ], [ %i.bl, %bb.p ]
  %i.bm = load i16, ptr %i.au, align 8, !range !9, !alias.scope !268, !noalias !265, !noundef !4
  switch i16 %i.bm, label %default.unreachable [
    i16 0, label %bb.q
    i16 1, label %bb.r
    i16 2, label %bb.s
  ]

bb.q:                                             ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !alias.scope !268, !noalias !265, !noundef !4
  %i.bp = sext i16 %i.bo to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10

bb.r:                                             ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !alias.scope !268, !noalias !265, !noundef !4
  %i.bs = zext i16 %i.br to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10

bb.s:                                             ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bu = load i16, ptr %i.bt, align 8, !alias.scope !268, !noalias !265, !noundef !4
  %i.bv = sext i16 %i.bu to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i1.i8 = phi i32 [ %i.bp, %bb.q ], [ %i.bs, %bb.r ], [ %i.bv, %bb.s ]
  %i.bw = icmp slt i32 %.sroa.0.0.i.i7, %.sroa.0.0.i1.i8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.bx = load i16, ptr %i.bb, align 8, !range !9, !alias.scope !271, !noalias !270, !noundef !4
  switch i16 %i.bx, label %default.unreachable [
    i16 0, label %bb.t
    i16 1, label %bb.u
    i16 2, label %bb.v
  ]

bb.t:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !alias.scope !271, !noalias !270, !noundef !4
  %i.ca = sext i16 %i.bz to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11

bb.u:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.cc = load i16, ptr %i.cb, align 2, !alias.scope !271, !noalias !270, !noundef !4
  %i.cd = zext i16 %i.cc to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11

bb.v:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cf = load i16, ptr %i.ce, align 8, !alias.scope !271, !noalias !270, !noundef !4
  %i.cg = sext i16 %i.cf to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11: ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i.i12 = phi i32 [ %i.ca, %bb.t ], [ %i.cd, %bb.u ], [ %i.cg, %bb.v ]
  %i.ch = load i16, ptr %i.ax, align 8, !range !9, !alias.scope !272, !noalias !269, !noundef !4
  switch i16 %i.ch, label %default.unreachable [
    i16 0, label %bb.w
    i16 1, label %bb.x
    i16 2, label %bb.y
  ]

bb.w:                                             ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !alias.scope !272, !noalias !269, !noundef !4
  %i.ck = sext i16 %i.cj to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15

bb.x:                                             ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !alias.scope !272, !noalias !269, !noundef !4
  %i.cn = zext i16 %i.cm to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15

bb.y:                                             ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i11
  %i.co = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cp = load i16, ptr %i.co, align 8, !alias.scope !272, !noalias !269, !noundef !4
  %i.cq = sext i16 %i.cp to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15: ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.0.0.i1.i13 = phi i32 [ %i.ck, %bb.w ], [ %i.cn, %bb.x ], [ %i.cq, %bb.y ]
  %i.cr = icmp slt i32 %.sroa.0.0.i.i12, %.sroa.0.0.i1.i13 ; 3 uses
  %i.cs = select i1 %i.cr, ptr %i.az, ptr %i.ax, !unpredictable !4
  %i.ct = select i1 %i.bw, ptr %i.au, ptr %i.cs, !unpredictable !4 ; 6 uses
  %i.cu = select i1 %i.bw, ptr %i.ax, ptr %i.az, !unpredictable !4
  %i.cv = select i1 %i.cr, ptr %i.bb, ptr %i.cu, !unpredictable !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.cw = load i16, ptr %i.cv, align 8, !range !9, !alias.scope !275, !noalias !274, !noundef !4
  switch i16 %i.cw, label %default.unreachable [
    i16 0, label %bb.z
    i16 1, label %bb.aa
    i16 2, label %bb.ab
  ]

bb.z:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !alias.scope !275, !noalias !274, !noundef !4
  %i.cz = sext i16 %i.cy to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16

bb.aa:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.db = load i16, ptr %i.da, align 2, !alias.scope !275, !noalias !274, !noundef !4
  %i.dc = zext i16 %i.db to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16

bb.ab:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.de = load i16, ptr %i.dd, align 8, !alias.scope !275, !noalias !274, !noundef !4
  %i.df = sext i16 %i.de to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16: ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.0.0.i.i17 = phi i32 [ %i.cz, %bb.z ], [ %i.dc, %bb.aa ], [ %i.df, %bb.ab ]
  %i.dg = load i16, ptr %i.ct, align 8, !range !9, !alias.scope !276, !noalias !273, !noundef !4
  switch i16 %i.dg, label %default.unreachable [
    i16 0, label %bb.ac
    i16 1, label %bb.ad
    i16 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !alias.scope !276, !noalias !273, !noundef !4
  %i.dj = sext i16 %i.di to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit20

bb.ad:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !alias.scope !276, !noalias !273, !noundef !4
  %i.dm = zext i16 %i.dl to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit20

bb.ae:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.do = load i16, ptr %i.dn, align 8, !alias.scope !276, !noalias !273, !noundef !4
  %i.dp = sext i16 %i.do to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit20

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit20: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sroa.0.0.i1.i18 = phi i32 [ %i.dj, %bb.ac ], [ %i.dm, %bb.ad ], [ %i.dp, %bb.ae ]
  %i.dq = select i1 %i.cr, ptr %i.ax, ptr %i.bb, !unpredictable !4
  %i.dr = select i1 %i.bw, ptr %i.az, ptr %i.au, !unpredictable !4
  %i.ds = icmp slt i32 %.sroa.0.0.i.i17, %.sroa.0.0.i1.i18 ; 2 uses
  %i.dt = select i1 %i.ds, ptr %i.cv, ptr %i.ct, !unpredictable !4
  %i.du = select i1 %i.ds, ptr %i.ct, ptr %i.cv, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i16, ptr %i.b, align 8, !alias.scope !345, !noalias !346, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !346, !noalias !345, !noundef !4 ; 2 uses
  %i.f = icmp eq i16 %i.c, %i.e
  %i.g = icmp ult i16 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !345, !noalias !346, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !346, !noalias !345, !noundef !4 ; 2 uses
  %i.l = icmp eq i16 %i.i, %i.k
  %i.m = icmp ult i16 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i16, ptr %i.n, align 4, !alias.scope !345, !noalias !346, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i16, ptr %i.p, align 4, !alias.scope !346, !noalias !345, !noundef !4 ; 2 uses
  %i.r = icmp eq i16 %i.o, %i.q
  %i.s = icmp ult i16 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.u = load i16, ptr %i.t, align 2, !alias.scope !345, !noalias !346, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.w = load i16, ptr %i.v, align 2, !alias.scope !346, !noalias !345, !noundef !4 ; 2 uses
  %i.x = icmp eq i16 %i.u, %i.w
  %i.y = icmp ult i16 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !345, !noalias !346, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !346, !noalias !345, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !347, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !347, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !347, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !347, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.ac, ptr nonnull %i.ag, i64 %spec.store.select.i.i.i.i), !noalias !347 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.ae, %i.ai
  %spec.select.i.i.i.i = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = icmp slt i64 %spec.select.i.i.i.i, 0
  br label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.an, %bb.e ], [ %i.y, %bb.d ], [ %i.s, %bb.c ], [ %i.m, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i16, ptr %i.aq, align 8, !alias.scope !356, !noalias !357, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i16, ptr %i.as, align 8, !alias.scope !357, !noalias !356, !noundef !4 ; 2 uses
  %i.au = icmp eq i16 %i.ar, %i.at
  %i.av = icmp ult i16 %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4

bb.f:                                             ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ax = load i16, ptr %i.aw, align 2, !alias.scope !356, !noalias !357, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.az = load i16, ptr %i.ay, align 2, !alias.scope !357, !noalias !356, !noundef !4 ; 2 uses
  %i.ba = icmp eq i16 %i.ax, %i.az
  %i.bb = icmp ult i16 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bd = load i16, ptr %i.bc, align 4, !alias.scope !356, !noalias !357, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = load i16, ptr %i.be, align 4, !alias.scope !357, !noalias !356, !noundef !4 ; 2 uses
  %i.bg = icmp eq i16 %i.bd, %i.bf
  %i.bh = icmp ult i16 %i.bd, %i.bf
  br i1 %i.bg, label %bb.h, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bj = load i16, ptr %i.bi, align 2, !alias.scope !356, !noalias !357, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.bl = load i16, ptr %i.bk, align 2, !alias.scope !357, !noalias !356, !noundef !4 ; 2 uses
  %i.bm = icmp eq i16 %i.bj, %i.bl
  %i.bn = icmp ult i16 %i.bj, %i.bl
  br i1 %i.bm, label %bb.i, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.ao, align 8, !alias.scope !356, !noalias !357, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = load ptr, ptr %i.ap, align 8, !alias.scope !357, !noalias !356, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !358, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !358, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !358, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !358, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i2 = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bx)
  %i.by = tail call i32 @memcmp(ptr nonnull %i.br, ptr nonnull %i.bv, i64 %spec.store.select.i.i.i.i2), !noalias !358 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bt, %i.bx
  %spec.select.i.i.i.i3 = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = icmp slt i64 %spec.select.i.i.i.i3, 0
  br label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4: ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i1 = phi i1 [ %i.cc, %bb.i ], [ %i.bn, %bb.h ], [ %i.bh, %bb.g ], [ %i.bb, %bb.f ], [ %i.av, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit ] ; 2 uses
  %i.cd = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cd ; 7 uses
  %i.cf = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.cg = zext i1 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cg ; 8 uses
  %i.ci = select i1 %.sroa.0.0.i.i.i.i1, i64 3, i64 2
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ci ; 8 uses
  %i.ck = select i1 %.sroa.0.0.i.i.i.i1, i64 2, i64 3
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i16, ptr %i.cm, align 8, !alias.scope !367, !noalias !368, !noundef !4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !alias.scope !368, !noalias !367, !noundef !4 ; 2 uses
  %i.cq = icmp eq i16 %i.cn, %i.cp
  %i.cr = icmp ult i16 %i.cn, %i.cp
  br i1 %i.cq, label %bb.j, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit8

bb.j:                                             ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  %i.ct = load i16, ptr %i.cs, align 2, !alias.scope !367, !noalias !368, !noundef !4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  %i.cv = load i16, ptr %i.cu, align 2, !alias.scope !368, !noalias !367, !noundef !4 ; 2 uses
  %i.cw = icmp eq i16 %i.ct, %i.cv
  %i.cx = icmp ult i16 %i.ct, %i.cv
  br i1 %i.cw, label %bb.k, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit8

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cz = load i16, ptr %i.cy, align 4, !alias.scope !367, !noalias !368, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.db = load i16, ptr %i.da, align 4, !alias.scope !368, !noalias !367, !noundef !4 ; 2 uses
  %i.dc = icmp eq i16 %i.cz, %i.db
  %i.dd = icmp ult i16 %i.cz, %i.db
  br i1 %i.dc, label %bb.l, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit8

bb.l:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.df = load i16, ptr %i.de, align 2, !alias.scope !367, !noalias !368, !noundef !4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 14
  %i.dh = load i16, ptr %i.dg, align 2, !alias.scope !368, !noalias !367, !noundef !4 ; 2 uses
  %i.di = icmp eq i16 %i.df, %i.dh
  %i.dj = icmp ult i16 %i.df, %i.dh
  br i1 %i.di, label %bb.m, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit8

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.cj, align 8, !alias.scope !367, !noalias !368, !nonnull !4, !noundef !4 ; 2 uses
  %i.dl = load ptr, ptr %i.ce, align 8, !alias.scope !368, !noalias !367, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !369, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noalias !369, !noundef !4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !369, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !369, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i6 = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dt)
  %i.du = tail call i32 @memcmp(ptr nonnull %i.dn, ptr nonnull %i.dr, i64 %spec.store.select.i.i.i.i6), !noalias !369 ; 2 uses
  %i.dv = sext i32 %i.du to i64
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1f_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = load i32, ptr %i.bu, align 1
  %i.bx = load i32, ptr %i.bv, align 1
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.ca = icmp ult i32 %i.by, %i.bz               ; 2 uses
  %.lobit.i26.i = lshr i32 %i.bs, 31
  %i.cb = zext nneg i32 %.lobit.i26.i to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cb ; 3 uses
  %i.cd = zext i1 %i.bt to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cd ; 4 uses
  %i.cf = select i1 %i.ca, i64 3, i64 2
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cf ; 4 uses
  %i.ch = select i1 %i.ca, i64 2, i64 3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.cg, align 1
  %i.ck = load i32, ptr %i.cc, align 1
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cn = icmp ult i32 %i.cl, %i.cm               ; 3 uses
  %i.co = load i32, ptr %i.ci, align 1
  %i.cp = load i32, ptr %i.ce, align 1
  %i.cq = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cs = icmp ult i32 %i.cq, %i.cr               ; 3 uses
  %i.ct = select i1 %i.cn, ptr %i.cg, ptr %i.cc, !unpredictable !4
  %i.cu = select i1 %i.cs, ptr %i.ce, ptr %i.ci, !unpredictable !4
  %i.cv = select i1 %i.cs, ptr %i.cg, ptr %i.ce, !unpredictable !4
  %i.cw = select i1 %i.cn, ptr %i.cc, ptr %i.cv, !unpredictable !4 ; 3 uses
  %i.cx = select i1 %i.cn, ptr %i.ce, ptr %i.cg, !unpredictable !4
  %i.cy = select i1 %i.cs, ptr %i.ci, ptr %i.cx, !unpredictable !4 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = load i32, ptr %i.cw, align 1
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dd = icmp ult i32 %i.db, %i.dc               ; 2 uses
  %i.de = select i1 %i.dd, ptr %i.cy, ptr %i.cw, !unpredictable !4
  %i.df = select i1 %i.dd, ptr %i.cw, ptr %i.cy, !unpredictable !4
  %i.dg = load i32, ptr %i.ct, align 1, !alias.scope !537, !noalias !538
  store i32 %i.dg, ptr %i.bm, align 4, !alias.scope !538, !noalias !537
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.di = load i32, ptr %i.de, align 1, !alias.scope !537, !noalias !538
  store i32 %i.di, ptr %i.dh, align 4, !alias.scope !538, !noalias !537
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.dk = load i32, ptr %i.df, align 1, !alias.scope !537, !noalias !538
  store i32 %i.dk, ptr %i.dj, align 4, !alias.scope !538, !noalias !537
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.dm = load i32, ptr %i.cu, align 1, !alias.scope !537, !noalias !538
  store i32 %i.dm, ptr %i.dl, align 4, !alias.scope !538, !noalias !537
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dn = load i32, ptr %0, align 1, !alias.scope !537, !noalias !538
  store i32 %i.dn, ptr %i.b, align 4, !alias.scope !538, !noalias !537
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.dq = load i32, ptr %i.do, align 1, !alias.scope !537, !noalias !538
  store i32 %i.dq, ptr %i.dp, align 4, !alias.scope !538, !noalias !537
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.dr = sub nuw nsw i64 %1, %i.e                ; 2 uses
  %i.ds = icmp samesign ult i64 %.sroa.0.0.i, %i.e
  br i1 %i.ds, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i, %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.du = getelementptr [4 x i8], ptr %i.b, i64 %i.e ; 6 uses
  %i.dv = icmp samesign ult i64 %.sroa.0.0.i, %i.dr
  br i1 %i.dv, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.05.08.1.i
  %.idx38 = shl nuw nsw i64 %.sroa.05.08.1.i, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx38 ; 4 uses
  %i.dy = load i32, ptr %i.dw, align 1, !alias.scope !537, !noalias !538 ; 3 uses
  store i32 %i.dy, ptr %i.dx, align 4, !alias.scope !538, !noalias !537
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 3 uses
  %i.ea = load i32, ptr %i.dx, align 1
  %i.eb = load i32, ptr %i.dz, align 1
  %i.ec = call i32 @llvm.bswap.i32(i32 %i.ea)
  %i.ed = call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ee = icmp ult i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i

bb.j:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  store i32 %i.dy, ptr %i.a, align 4, !noalias !539
  %i.ef = load i32, ptr %i.dz, align 4, !alias.scope !538, !noalias !537
  store i32 %i.ef, ptr %i.dx, align 4, !alias.scope !538, !noalias !537
  %i.eg = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.eg, label %._crit_edge34, label %.lr.ph33

bb.k:                                             ; preds = %.lr.ph33
  %i.eh = load i32, ptr %i.ej, align 1, !alias.scope !538, !noalias !537
  store i32 %i.eh, ptr %.sroa.0.0.i28.1.i31, align 1, !alias.scope !538, !noalias !537
  %i.ei = icmp eq ptr %i.ej, %i.du
  br i1 %i.ei, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i28.1.i31 = phi ptr [ %i.ej, %bb.k ], [ %i.dz, %bb.j ] ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.0.i28.1.i31, i64 -4 ; 4 uses
  %i.ek = load i32, ptr %i.a, align 4
  %i.el = load i32, ptr %i.ej, align 1
  %i.em = call i32 @llvm.bswap.i32(i32 %i.ek)
  %i.en = call i32 @llvm.bswap.i32(i32 %i.el)
  %i.eo = icmp ult i32 %i.em, %i.en
  br i1 %i.eo, label %bb.k, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.k, %.lr.ph33, %bb.j
  %.sroa.0.0.i28.lcssa.1.i = phi ptr [ %i.du, %bb.j ], [ %i.du, %bb.k ], [ %.sroa.0.0.i28.1.i31, %.lr.ph33 ]
  store i32 %i.dy, ptr %.sroa.0.0.i28.lcssa.1.i, align 1, !alias.scope !538, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !539
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i: ; preds = %._crit_edge34, %.lr.ph.1.i
  %i.ep = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ep, %i.dr
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.eq = add nsw i64 %1, -1                      ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eq
  %i.et = getelementptr i8, ptr %i.du, i64 -4
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.eu = getelementptr i8, ptr %i.fr, i64 4      ; 2 uses
  %i.ev = getelementptr i8, ptr %i.fq, i64 4
  %i.ew = and i64 %1, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.011.i.i = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.010.i.i = phi i64 [ %i.ey, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.09.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.b, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.08.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.du, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.07.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %i.et, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.06.i.i = phi ptr [ %i.fq, %.lr.ph.i.i ], [ %i.es, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.05.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %i.er, %.loopexit.1.i ] ; 2 uses
  %i.ey = add nuw nsw i64 %.sroa.04.010.i.i, 1    ; 2 uses
  %i.ez = load i32, ptr %.sroa.011.08.i.i, align 1
  %i.fa = load i32, ptr %.sroa.06.09.i.i, align 1
  %i.fb = call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fc = call i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fd = call i32 @llvm.ucmp.i32.i32(i32 %i.fb, i32 %i.fc) ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, -1                  ; 2 uses
  %..i21.i.i = select i1 %i.fe, ptr %.sroa.06.09.i.i, ptr %.sroa.011.08.i.i
  %i.ff = load i32, ptr %..i21.i.i, align 1, !alias.scope !542, !noalias !543
  store i32 %i.ff, ptr %.sroa.0.011.i.i, align 1, !alias.scope !537, !noalias !544
  %.lobit.i27.i = lshr i32 %i.fd, 31
  %i.fg = zext nneg i32 %.lobit.i27.i to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.08.i.i, i64 %i.fg ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fe, i64 4, i64 0
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 4 ; 2 uses
  %i.fj = load i32, ptr %.sroa.017.06.i.i, align 1
  %i.fk = load i32, ptr %.sroa.015.07.i.i, align 1
  %i.fl = call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fm = call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fn = call i32 @llvm.ucmp.i32.i32(i32 %i.fl, i32 %i.fm) ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, -1                  ; 2 uses
  %..i.i.i = select i1 %i.fo, ptr %.sroa.017.06.i.i, ptr %.sroa.015.07.i.i
  %i.fp = load i32, ptr %..i.i.i, align 1, !alias.scope !542, !noalias !545
  store i32 %i.fp, ptr %.sroa.019.05.i.i, align 1, !alias.scope !537, !noalias !546
  %.neg.i.i.i = sext i1 %i.fo to i64
  %i.fq = getelementptr [4 x i8], ptr %.sroa.017.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.lobit4.i.i = ashr i32 %i.fn, 31
  %.neg13.i.i.i = sext i32 %.lobit4.i.i to i64
  %i.fr = getelementptr [4 x i8], ptr %.sroa.015.07.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.019.05.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %i.ey, %i.e
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ft = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.eu ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ft, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %i.fh
  %i.fu = load i32, ptr %.sroa.06.0..sroa.011.0.i.i, align 1, !alias.scope !542, !noalias !537
  store i32 %i.fu, ptr %i.fi, align 1, !alias.scope !537, !noalias !542
  %.sroa.sel.idx.sroa.sel.idx = select i1 %i.ft, i64 4, i64 0
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ft, i64 0, i64 4
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.fh, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.l ]
  %i.fv = icmp ne ptr %.sroa.06.1.i.i, %i.eu
  %i.fw = icmp ne ptr %.sroa.011.1.i.i, %i.ev
  %or.cond.i.i = select i1 %i.fv, i1 true, i1 %i.fw, !prof !11
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1s_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, !prof !11

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc.i unwind label %bb.o, !noalias !537

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = shl nuw nsw i64 %1, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 4 %i.b, i64 %i.fy, i1 false), !alias.scope !539, !noalias !547
  resume { ptr, i32 } %i.fx

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i
  %.sroa.05.08.i = phi i64 [ %i.gs, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 4 uses
  %i.gb = load i32, ptr %i.fz, align 1, !alias.scope !537, !noalias !538 ; 3 uses
  store i32 %i.gb, ptr %i.ga, align 4, !alias.scope !538, !noalias !537
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -4 ; 3 uses
  %i.gd = load i32, ptr %i.ga, align 1
  %i.ge = load i32, ptr %i.gc, align 1
  %i.gf = call i32 @llvm.bswap.i32(i32 %i.gd)
  %i.gg = call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gh = icmp ult i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.p, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  store i32 %i.gb, ptr %i.a, align 4, !noalias !539
  %i.gi = load i32, ptr %i.gc, align 4, !alias.scope !538, !noalias !537
  store i32 %i.gi, ptr %i.ga, align 4, !alias.scope !538, !noalias !537
  %i.gj = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.gj, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.gk = load i32, ptr %i.gm, align 1, !alias.scope !538, !noalias !537
  store i32 %i.gk, ptr %.sroa.0.0.i28.i28, align 1, !alias.scope !538, !noalias !537
  %i.gl = icmp eq ptr %i.gm, %i.b
  br i1 %i.gl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.0.0.i28.i28 = phi ptr [ %i.gm, %bb.q ], [ %i.gc, %bb.p ] ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %.sroa.0.0.i28.i28, i64 -4 ; 4 uses
  %i.gn = load i32, ptr %i.a, align 4
  %i.go = load i32, ptr %i.gm, align 1
  %i.gp = call i32 @llvm.bswap.i32(i32 %i.gn)
  %i.gq = call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gr = icmp ult i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.p
  %.sroa.0.0.i28.lcssa.i = phi ptr [ %i.b, %bb.p ], [ %i.b, %bb.q ], [ %.sroa.0.0.i28.i28, %.lr.ph ]
  store i32 %i.gb, ptr %.sroa.0.0.i28.lcssa.i, align 1, !alias.scope !538, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !539
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gs = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gs, %i.e
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1s_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1f_20sort_unstable_by_keyNtB1h_5LevelNCNvMs0_B1h_NtB1h_13DiagnosticSet18split_off_warnings0E0EB1j_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2304 x i8], align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1s_20sort_unstable_by_keyNtB1u_5LevelNCNvMs0_B1u_NtB1u_13DiagnosticSet18split_off_warnings0E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 88
  %.val8.i.i = load i8, ptr %i.f, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val9.i.i = load i8, ptr %i.g, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.h = icmp samesign ult i8 %.val8.i.i, %.val9.i.i ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 184
  %.val6.i.i = load i8, ptr %i.i, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.j = getelementptr i8, ptr %0, i64 136
  %.val7.i.i = load i8, ptr %i.j, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.k = icmp samesign ult i8 %.val6.i.i, %.val7.i.i ; 2 uses
  %i.l = zext i1 %i.h to i64
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = xor i1 %i.h, true
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.q = select i1 %i.k, i64 3, i64 2
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.s = select i1 %i.k, i64 2, i64 3
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.r, i64 40
  %.val4.i.i = load i8, ptr %i.u, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.v = getelementptr i8, ptr %i.m, i64 40
  %.val5.i.i = load i8, ptr %i.v, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.w = icmp samesign ult i8 %.val4.i.i, %.val5.i.i ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 40
  %.val2.i.i = load i8, ptr %i.x, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.y = getelementptr i8, ptr %i.p, i64 40
  %.val3.i.i = load i8, ptr %i.y, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.z = icmp samesign ult i8 %.val2.i.i, %.val3.i.i ; 3 uses
  %i.aa = select i1 %i.w, ptr %i.r, ptr %i.m, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.p, ptr %i.t, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.r, ptr %i.p, !unpredictable !4
  %i.ad = select i1 %i.w, ptr %i.m, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.w, ptr %i.p, ptr %i.r, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.t, ptr %i.ae, !unpredictable !4 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %.val.i.i = load i8, ptr %i.ag, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.ah = getelementptr i8, ptr %i.ad, i64 40
  %.val1.i.i = load i8, ptr %i.ah, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.ai = icmp samesign ult i8 %.val.i.i, %.val1.i.i ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ak = select i1 %i.ai, ptr %i.ad, ptr %i.af, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !alias.scope !569
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false), !alias.scope !569
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !alias.scope !569
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !alias.scope !569
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 88
  %.val8.i26.i = load i8, ptr %i.aq, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.ar = getelementptr i8, ptr %i.ao, i64 40
  %.val9.i27.i = load i8, ptr %i.ar, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.as = icmp samesign ult i8 %.val8.i26.i, %.val9.i27.i ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 184
  %.val6.i28.i = load i8, ptr %i.at, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.au = getelementptr i8, ptr %i.ao, i64 136
  %.val7.i29.i = load i8, ptr %i.au, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.av = icmp samesign ult i8 %.val6.i28.i, %.val7.i29.i ; 2 uses
  %i.aw = zext i1 %i.as to i64
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.aw ; 3 uses
  %i.ay = xor i1 %i.as, true
  %i.az = zext i1 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.az ; 4 uses
  %i.bb = select i1 %i.av, i64 3, i64 2
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.bb ; 4 uses
  %i.bd = select i1 %i.av, i64 2, i64 3
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.bd ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 40
  %.val4.i30.i = load i8, ptr %i.bf, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.bg = getelementptr i8, ptr %i.ax, i64 40
  %.val5.i31.i = load i8, ptr %i.bg, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.bh = icmp samesign ult i8 %.val4.i30.i, %.val5.i31.i ; 3 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 40
  %.val2.i32.i = load i8, ptr %i.bi, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.bj = getelementptr i8, ptr %i.ba, i64 40
  %.val3.i33.i = load i8, ptr %i.bj, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.bk = icmp samesign ult i8 %.val2.i32.i, %.val3.i33.i ; 3 uses
  %i.bl = select i1 %i.bh, ptr %i.bc, ptr %i.ax, !unpredictable !4
  %i.bm = select i1 %i.bk, ptr %i.ba, ptr %i.be, !unpredictable !4
  %i.bn = select i1 %i.bk, ptr %i.bc, ptr %i.ba, !unpredictable !4
  %i.bo = select i1 %i.bh, ptr %i.ax, ptr %i.bn, !unpredictable !4 ; 3 uses
  %i.bp = select i1 %i.bh, ptr %i.ba, ptr %i.bc, !unpredictable !4
  %i.bq = select i1 %i.bk, ptr %i.be, ptr %i.bp, !unpredictable !4 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %.val.i34.i = load i8, ptr %i.br, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.bs = getelementptr i8, ptr %i.bo, i64 40
  %.val1.i35.i = load i8, ptr %i.bs, align 8, !range !8, !alias.scope !567, !noalias !568, !noundef !4
  %i.bt = icmp samesign ult i8 %.val.i34.i, %.val1.i35.i ; 2 uses
  %i.bu = select i1 %i.bt, ptr %i.bq, ptr %i.bo, !unpredictable !4
  %i.bv = select i1 %i.bt, ptr %i.bo, ptr %i.bq, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false), !alias.scope !569
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i64 48, i1 false), !alias.scope !569
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i64 48, i1 false), !alias.scope !569
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i64 48, i1 false), !alias.scope !569
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !alias.scope !569
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false), !alias.scope !569
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.cb = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.cc, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i, %bb.g
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.ce = getelementptr [48 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.cf = icmp samesign ult i64 %.sroa.0.0.i, %i.cb
  br i1 %i.cf, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.cd, i64 %.sroa.05.08.1.i ; 3 uses
  %.idx46 = mul nuw nsw i64 %.sroa.05.08.1.i, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx46 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !alias.scope !569
  %i.ci = getelementptr i8, ptr %i.ch, i64 40
  %.val9.i36.1.i = load i8, ptr %i.ci, align 8, !range !8, !alias.scope !568, !noalias !567, !noundef !4 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.1.i = load i8, ptr %i.cj, align 8, !range !8, !alias.scope !568, !noalias !567, !noundef !4
  %i.ck = icmp samesign ult i8 %.val9.i36.1.i, %.val10.i.1.i
  br i1 %i.ck, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 41
  %.sroa.0.0.i37.1.i35 = getelementptr inbounds i8, ptr %i.ch, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.1.i35, i64 48, i1 false), !alias.scope !568, !noalias !567
  %i.cm = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cm, label %._crit_edge40, label %.lr.ph39

bb.i:                                             ; preds = %.lr.ph39
  %.sroa.0.0.i37.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i37.1.i37, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.1.i37, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.1.i, i64 48, i1 false), !alias.scope !568, !noalias !567
  %i.cn = icmp eq ptr %.sroa.0.0.i37.1.i, %i.ce
  br i1 %i.cn, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37.1.i37 = phi ptr [ %.sroa.0.0.i37.1.i, %bb.i ], [ %.sroa.0.0.i37.1.i35, %bb.h ] ; 5 uses
  %.sroa.5.0.i.1.i36 = phi ptr [ %.sroa.0.0.i37.1.i37, %bb.i ], [ %i.ch, %bb.h ] ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.5.0.i.1.i36, i64 -56
  %.val8.i38.1.i = load i8, ptr %i.co, align 8, !range !8, !alias.scope !568, !noalias !567, !noundef !4
  %i.cp = icmp samesign ult i8 %.val9.i36.1.i, %.val8.i38.1.i
  br i1 %i.cp, label %bb.i, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.i, %.lr.ph39, %bb.h
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.ch, %bb.h ], [ %.sroa.0.0.i37.1.i37, %bb.i ], [ %.sroa.5.0.i.1.i36, %.lr.ph39 ] ; 2 uses
  %.sroa.0.0.i37.lcssa.1.i = phi ptr [ %i.ce, %bb.h ], [ %i.ce, %bb.i ], [ %.sroa.0.0.i37.1.i37, %.lr.ph39 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i37.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 40, i1 false), !alias.scope !569
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i8 %.val9.i36.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !568, !noalias !570
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 1 dereferenceable(7) %i.cl, i64 7, i1 false), !alias.scope !569
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i: ; preds = %._crit_edge40, %.lr.ph.1.i
  %i.cq = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cq, %i.cb
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i, %.loopexit.i
  %i.cr = add nsw i64 %1, -1                      ; 2 uses
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.cr
  %i.cu = getelementptr i8, ptr %i.ce, i64 -48
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cv = getelementptr i8, ptr %i.di, i64 48     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.dh, i64 48
  %i.cx = and i64 %1, 1
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cz, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.ce, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cu, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.ct, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cs, %.loopexit.1.i ] ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.da = getelementptr i8, ptr %.sroa.011.07.i.i, i64 40
  %.sroa.011.0.val.i.i = load i8, ptr %i.da, align 8, !range !8, !alias.scope !571, !noalias !567, !noundef !4
  %i.db = getelementptr i8, ptr %.sroa.06.08.i.i, i64 40
  %.sroa.06.0.val.i.i = load i8, ptr %i.db, align 8, !range !8, !alias.scope !571, !noalias !567, !noundef !4
  %.not = icmp samesign ult i8 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(48) %..i21.i.i, i64 48, i1 false), !alias.scope !569, !noalias !572
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 48, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 48
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 48 ; 2 uses
  %i.dd = getelementptr i8, ptr %.sroa.017.05.i.i, i64 40
  %.sroa.017.0.val.i.i = load i8, ptr %i.dd, align 8, !range !8, !alias.scope !571, !noalias !567, !noundef !4
  %i.de = getelementptr i8, ptr %.sroa.015.06.i.i, i64 40
  %.sroa.015.0.val.i.i = load i8, ptr %i.de, align 8, !range !8, !alias.scope !571, !noalias !567, !noundef !4
  %i.df = icmp samesign ult i8 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.df, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dg = xor i1 %i.df, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(48) %..i.i.i, i64 48, i1 false), !alias.scope !569, !noalias !573
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.dh = getelementptr [48 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.df to i64
  %i.di = getelementptr [48 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -48
  %exitcond.not.i.i = icmp eq i64 %i.cz, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not23 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cv ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not23, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.0..sroa.011.0.i.i, i64 48, i1 false), !alias.scope !569
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not23, i64 48, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not23, i64 0, i64 48
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.dk = icmp ne ptr %.sroa.06.1.i.i, %i.cv
  %i.dl = icmp ne ptr %.sroa.011.1.i.i, %i.cw
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl, !prof !11
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1s_20sort_unstable_by_keyNtB1u_5LevelNCNvMs0_B1u_NtB1u_13DiagnosticSet18split_off_warnings0E0EB1w_.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = mul nuw nsw i64 %1, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.dn, i1 false), !alias.scope !569, !noalias !574
  resume { ptr, i32 } %i.dm

.lr.ph.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.05.08.i ; 3 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.do, i64 48, i1 false), !alias.scope !569
  %i.dq = getelementptr i8, ptr %i.dp, i64 40
  %.val9.i36.i = load i8, ptr %i.dq, align 8, !range !8, !alias.scope !568, !noalias !567, !noundef !4 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 -8
  %.val10.i.i = load i8, ptr %i.dr, align 8, !range !8, !alias.scope !568, !noalias !567, !noundef !4
  %i.ds = icmp samesign ult i8 %.val9.i36.i, %.val10.i.i
  br i1 %i.ds, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 41
  %.sroa.0.0.i37.i28 = getelementptr inbounds i8, ptr %i.dp, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.i28, i64 48, i1 false), !alias.scope !568, !noalias !567
  %i.du = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.du, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %.sroa.0.0.i37.i = getelementptr inbounds i8, ptr %.sroa.0.0.i37.i30, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.i30, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.i, i64 48, i1 false), !alias.scope !568, !noalias !567
  %i.dv = icmp eq ptr %.sroa.0.0.i37.i, %i.a
  br i1 %i.dv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i37.i30 = phi ptr [ %.sroa.0.0.i37.i, %bb.o ], [ %.sroa.0.0.i37.i28, %bb.n ] ; 5 uses
  %.sroa.5.0.i.i29 = phi ptr [ %.sroa.0.0.i37.i30, %bb.o ], [ %i.dp, %bb.n ] ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.5.0.i.i29, i64 -56
  %.val8.i38.i = load i8, ptr %i.dw, align 8, !range !8, !alias.scope !568, !noalias !567, !noundef !4
  %i.dx = icmp samesign ult i8 %.val9.i36.i, %.val8.i38.i
  br i1 %i.dx, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %bb.n
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.dp, %bb.n ], [ %.sroa.0.0.i37.i30, %bb.o ], [ %.sroa.5.0.i.i29, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i37.lcssa.i = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.o ], [ %.sroa.0.0.i37.i30, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i37.lcssa.i, ptr noundef nonnull align 8 dereferenceable(40) %i.do, i64 40, i1 false), !alias.scope !569
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i8 %.val9.i36.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !568, !noalias !570
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.dt, i64 7, i1 false), !alias.scope !569
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.dy = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1s_20sort_unstable_by_keyNtB1u_5LevelNCNvMs0_B1u_NtB1u_13DiagnosticSet18split_off_warnings0E0EB1w_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1f_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3A_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3G_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [768 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.j = icmp samesign ult i64 %1, 2
  br i1 %i.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3N_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %1, 32
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %1, 1                           ; 10 uses
  %i.m = icmp samesign ugt i64 %1, 15
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %1, 7
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.l ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB19_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3u_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3A_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.i, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB19_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3u_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3A_(ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB19_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3u_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3A_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.i), !alias.scope !596
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB19_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3u_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3A_(ptr noundef %i.o, ptr noundef %i.p), !alias.scope !596
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !alias.scope !596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !596
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.u = sub nuw nsw i64 %1, %i.l                 ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.v, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.i, %bb.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.x = getelementptr [16 x i8], ptr %i.i, i64 %i.l ; 6 uses
  %i.y = icmp samesign ult i64 %.sroa.0.0.i, %i.u
  br i1 %i.y, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.aq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.05.08.1.i
  %.idx46 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx46 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !596
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val9.i.1.i = load i32, ptr %i.ab, align 8, !alias.scope !595, !noalias !594 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 -8
  %.val10.i.1.i = load i32, ptr %i.ac, align 8, !alias.scope !595, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !596
  store i32 %.val9.i.1.i, ptr %i.d, align 4, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !596
  store i32 %.val10.i.1.i, ptr %i.c, align 4, !noalias !596
  %i.ad = load i32, ptr %i.d, align 4
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ag = call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = icmp ult i32 %i.af, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !596
  br i1 %i.ah, label %bb.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.1.i

bb.j:                                             ; preds = %.lr.ph.1.i
  %.sroa.08.0.copyload.i.1.i = load i64, ptr %i.aa, align 8, !alias.scope !595, !noalias !594
  %.sroa.510.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.510.0.copyload.i.1.i = load i32, ptr %.sroa.510.0..sroa_idx.i.1.i, align 4, !alias.scope !595, !noalias !594
  %.sroa.0.0.i26.1.i35 = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i26.1.i35, i64 16, i1 false), !alias.scope !595, !noalias !594
  %i.ai = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ai, label %._crit_edge40, label %.lr.ph39

bb.k:                                             ; preds = %.lr.ph39
  %.sroa.0.0.i26.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i26.1.i37, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i26.1.i37, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i26.1.i, i64 16, i1 false), !alias.scope !595, !noalias !594
  %i.aj = icmp eq ptr %.sroa.0.0.i26.1.i, %i.x
  br i1 %i.aj, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i26.1.i37 = phi ptr [ %.sroa.0.0.i26.1.i, %bb.k ], [ %.sroa.0.0.i26.1.i35, %bb.j ] ; 5 uses
  %.sroa.5.0.i.1.i36 = phi ptr [ %.sroa.0.0.i26.1.i37, %bb.k ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.5.0.i.1.i36, i64 -24
  %.val8.i.1.i = load i32, ptr %i.ak, align 8, !alias.scope !595, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !596
  store i32 %.val9.i.1.i, ptr %i.b, align 4, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !596
  store i32 %.val8.i.1.i, ptr %i.a, align 4, !noalias !596
  %i.al = load i32, ptr %i.b, align 4
  %i.am = load i32, ptr %i.a, align 4
  %i.an = call i32 @llvm.bswap.i32(i32 %i.al)
  %i.ao = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ap = icmp ult i32 %i.an, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !596
  br i1 %i.ap, label %bb.k, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.k, %.lr.ph39, %bb.j
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.aa, %bb.j ], [ %.sroa.0.0.i26.1.i37, %bb.k ], [ %.sroa.5.0.i.1.i36, %.lr.ph39 ] ; 2 uses
  %.sroa.0.0.i26.lcssa.1.i = phi ptr [ %i.x, %bb.j ], [ %i.x, %bb.k ], [ %.sroa.0.0.i26.1.i37, %.lr.ph39 ]
  store i64 %.sroa.08.0.copyload.i.1.i, ptr %.sroa.0.0.i26.lcssa.1.i, align 8, !alias.scope !595, !noalias !597
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i32 %.val9.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !595, !noalias !597
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -4
  store i32 %.sroa.510.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !595, !noalias !597
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.1.i: ; preds = %._crit_edge40, %.lr.ph.1.i
  %i.aq = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.aq, %i.u
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.ar = add nsw i64 %1, -1                      ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.x, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %i.bu, i64 16     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.bt, i64 16
  %i.ax = and i64 %1, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.011.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.010.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.09.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.i, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.08.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.x, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.07.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.au, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.06.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.at, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.05.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.as, %.loopexit.1.i ] ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.04.010.i.i, 1    ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.011.08.i.i, i64 8
  %.sroa.011.0.val.i.i = load i32, ptr %i.ba, align 8, !alias.scope !599, !noalias !594
  %i.bb = getelementptr i8, ptr %.sroa.06.09.i.i, i64 8
  %.sroa.06.0.val.i.i = load i32, ptr %i.bb, align 8, !alias.scope !599, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !600
  store i32 %.sroa.011.0.val.i.i, ptr %i.h, align 4, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !600
  store i32 %.sroa.06.0.val.i.i, ptr %i.g, align 4, !noalias !600
  %i.bc = load i32, ptr %i.h, align 4
  %i.bd = load i32, ptr %i.g, align 4
  %i.be = call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bg = call i32 @llvm.ucmp.i32.i32(i32 %i.be, i32 %i.bf) ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !600
  %..i21.i.i = select i1 %i.bh, ptr %.sroa.06.09.i.i, ptr %.sroa.011.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !596, !noalias !601
  %.lobit.i.i = lshr i32 %i.bg, 31
  %i.bi = zext nneg i32 %.lobit.i.i to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.08.i.i, i64 %i.bi ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bh, i64 16, i64 0
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 16 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.017.06.i.i, i64 8
  %.sroa.017.0.val.i.i = load i32, ptr %i.bl, align 8, !alias.scope !599, !noalias !594
  %i.bm = getelementptr i8, ptr %.sroa.015.07.i.i, i64 8
  %.sroa.015.0.val.i.i = load i32, ptr %i.bm, align 8, !alias.scope !599, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !600
  store i32 %.sroa.017.0.val.i.i, ptr %i.f, align 4, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !600
  store i32 %.sroa.015.0.val.i.i, ptr %i.e, align 4, !noalias !600
  %i.bn = load i32, ptr %i.f, align 4
  %i.bo = load i32, ptr %i.e, align 4
  %i.bp = call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bq = call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.br = call i32 @llvm.ucmp.i32.i32(i32 %i.bp, i32 %i.bq) ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !600
  %..i.i.i = select i1 %i.bs, ptr %.sroa.017.06.i.i, ptr %.sroa.015.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.05.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !596, !noalias !602
  %.neg.i.i.i = sext i1 %i.bs to i64
  %i.bt = getelementptr [16 x i8], ptr %.sroa.017.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.lobit4.i.i = ashr i32 %i.br, 31
  %.neg13.i.i.i = sext i32 %.lobit4.i.i to i64
  %i.bu = getelementptr [16 x i8], ptr %.sroa.015.07.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.019.05.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bw = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.av ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bw, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !596
  %.sroa.sel.idx.sroa.sel.idx = select i1 %i.bw, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bw, i64 0, i64 16
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.l ]
  %i.bx = icmp ne ptr %.sroa.06.1.i.i, %i.av
  %i.by = icmp ne ptr %.sroa.011.1.i.i, %i.aw
  %or.cond.i.i = select i1 %i.bx, i1 true, i1 %i.by, !prof !11
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3N_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3T_.exit, !prof !11

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc.i unwind label %bb.o, !noalias !594

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = shl nuw nsw i64 %1, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.i, i64 %i.ca, i1 false), !alias.scope !596, !noalias !603
  resume { ptr, i32 } %i.bz

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.cs, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !alias.scope !596
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val9.i.i = load i32, ptr %i.cd, align 8, !alias.scope !595, !noalias !594 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 -8
  %.val10.i.i = load i32, ptr %i.ce, align 8, !alias.scope !595, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !596
  store i32 %.val9.i.i, ptr %i.d, align 4, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !596
  store i32 %.val10.i.i, ptr %i.c, align 4, !noalias !596
  %i.cf = load i32, ptr %i.d, align 4
  %i.cg = load i32, ptr %i.c, align 4
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = icmp ult i32 %i.ch, %i.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !596
  br i1 %i.cj, label %bb.p, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.cc, align 8, !alias.scope !595, !noalias !594
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %.sroa.510.0.copyload.i.i = load i32, ptr %.sroa.510.0..sroa_idx.i.i, align 4, !alias.scope !595, !noalias !594
  %.sroa.0.0.i26.i28 = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i26.i28, i64 16, i1 false), !alias.scope !595, !noalias !594
  %i.ck = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ck, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.sroa.0.0.i26.i = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i30, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i26.i30, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i26.i, i64 16, i1 false), !alias.scope !595, !noalias !594
  %i.cl = icmp eq ptr %.sroa.0.0.i26.i, %i.i
  br i1 %i.cl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.0.0.i26.i30 = phi ptr [ %.sroa.0.0.i26.i, %bb.q ], [ %.sroa.0.0.i26.i28, %bb.p ] ; 5 uses
  %.sroa.5.0.i.i29 = phi ptr [ %.sroa.0.0.i26.i30, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.5.0.i.i29, i64 -24
  %.val8.i.i = load i32, ptr %i.cm, align 8, !alias.scope !595, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !596
  store i32 %.val9.i.i, ptr %i.b, align 4, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !596
  store i32 %.val8.i.i, ptr %i.a, align 4, !noalias !596
  %i.cn = load i32, ptr %i.b, align 4
  %i.co = load i32, ptr %i.a, align 4
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.cn)
  %i.cq = call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cr = icmp ult i32 %i.cp, %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !596
  br i1 %i.cr, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.p
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.cc, %bb.p ], [ %.sroa.0.0.i26.i30, %bb.q ], [ %.sroa.5.0.i.i29, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i26.lcssa.i = phi ptr [ %i.i, %bb.p ], [ %i.i, %bb.q ], [ %.sroa.0.0.i26.i30, %.lr.ph ]
  store i64 %.sroa.08.0.copyload.i.i, ptr %.sroa.0.0.i26.lcssa.i, align 8, !alias.scope !595, !noalias !597
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i32 %.val9.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !595, !noalias !597
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4
  store i32 %.sroa.510.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !595, !noalias !597
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3t_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3z_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.cs = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base17BaseLangSysRecordNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB3N_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax0E0EB3T_.exit: ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1f_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1h_NtB1h_15BaseAxisBuilder3new0E0EB1n_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [1536 x i8], align 8              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.j = icmp samesign ult i64 %1, 2
  br i1 %i.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1u_NtB1u_15BaseAxisBuilder3new0E0EB1A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %1, 32
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %1, 1                           ; 6 uses
  %i.m = icmp samesign ugt i64 %1, 7
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.o = getelementptr [32 x i8], ptr %i.i, i64 %i.l ; 8 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB19_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1b_NtB1b_15BaseAxisBuilder3new0E0EB1h_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.i), !alias.scope !625
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB19_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1b_NtB1b_15BaseAxisBuilder3new0E0EB1h_(ptr noundef %i.n, ptr noundef %i.o), !alias.scope !625
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !alias.scope !625
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.p = sub nuw nsw i64 %1, %i.l                 ; 2 uses
  %i.q = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.q, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.i, %bb.g
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.p
  br i1 %i.r, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.aj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx46 = shl nuw nsw i64 %.sroa.05.08.1.i, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx46 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !alias.scope !625
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val9.i.1.i = load i32, ptr %i.u, align 8, !alias.scope !624, !noalias !623 ; 3 uses
  %i.v = getelementptr i8, ptr %i.t, i64 -8
  %.val10.i.1.i = load i32, ptr %i.v, align 8, !alias.scope !624, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !625
  store i32 %.val9.i.1.i, ptr %i.d, align 4, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !625
  store i32 %.val10.i.1.i, ptr %i.c, align 4, !noalias !625
  %i.w = load i32, ptr %i.d, align 4
  %i.x = load i32, ptr %i.c, align 4
  %i.y = call i32 @llvm.bswap.i32(i32 %i.w)
  %i.z = call i32 @llvm.bswap.i32(i32 %i.x)
  %i.aa = icmp ult i32 %i.y, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !625
  br i1 %i.aa, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  %.sroa.59.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.sroa.59.0.copyload.i.1.i = load i32, ptr %.sroa.59.0..sroa_idx.i.1.i, align 4, !alias.scope !624, !noalias !623
  %.sroa.0.0.i26.1.i35 = getelementptr inbounds i8, ptr %i.t, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i26.1.i35, i64 32, i1 false), !alias.scope !624, !noalias !623
  %i.ab = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ab, label %._crit_edge40, label %.lr.ph39

bb.i:                                             ; preds = %.lr.ph39
  %.sroa.0.0.i26.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i26.1.i37, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i26.1.i37, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i26.1.i, i64 32, i1 false), !alias.scope !624, !noalias !623
  %i.ac = icmp eq ptr %.sroa.0.0.i26.1.i, %i.o
  br i1 %i.ac, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i26.1.i37 = phi ptr [ %.sroa.0.0.i26.1.i, %bb.i ], [ %.sroa.0.0.i26.1.i35, %bb.h ] ; 5 uses
  %.sroa.5.0.i.1.i36 = phi ptr [ %.sroa.0.0.i26.1.i37, %bb.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.5.0.i.1.i36, i64 -40
  %.val8.i.1.i = load i32, ptr %i.ad, align 8, !alias.scope !624, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !625
  store i32 %.val9.i.1.i, ptr %i.b, align 4, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !625
  store i32 %.val8.i.1.i, ptr %i.a, align 4, !noalias !625
  %i.ae = load i32, ptr %i.b, align 4
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = icmp ult i32 %i.ag, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !625
  br i1 %i.ai, label %bb.i, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.i, %.lr.ph39, %bb.h
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.t, %bb.h ], [ %.sroa.0.0.i26.1.i37, %bb.i ], [ %.sroa.5.0.i.1.i36, %.lr.ph39 ] ; 2 uses
  %.sroa.0.0.i26.lcssa.1.i = phi ptr [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %.sroa.0.0.i26.1.i37, %.lr.ph39 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i26.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !alias.scope !625
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i32 %.val9.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !624, !noalias !626
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -4
  store i32 %.sroa.59.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !624, !noalias !626
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.1.i: ; preds = %._crit_edge40, %.lr.ph.1.i
  %i.aj = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.aj, %i.p
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.o, i64 -32
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.bn, i64 32     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.bm, i64 32
  %i.aq = and i64 %1, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.011.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.010.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.09.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.i, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.08.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.o, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.07.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %i.an, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.06.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.am, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.05.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.al, %.loopexit.1.i ] ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.04.010.i.i, 1    ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.011.08.i.i, i64 24
  %.sroa.011.0.val.i.i = load i32, ptr %i.at, align 8, !alias.scope !628, !noalias !623
  %i.au = getelementptr i8, ptr %.sroa.06.09.i.i, i64 24
  %.sroa.06.0.val.i.i = load i32, ptr %i.au, align 8, !alias.scope !628, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !629
  store i32 %.sroa.011.0.val.i.i, ptr %i.h, align 4, !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !629
  store i32 %.sroa.06.0.val.i.i, ptr %i.g, align 4, !noalias !629
  %i.av = load i32, ptr %i.h, align 4
  %i.aw = load i32, ptr %i.g, align 4
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.az = call i32 @llvm.ucmp.i32.i32(i32 %i.ax, i32 %i.ay) ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !629
  %..i21.i.i = select i1 %i.ba, ptr %.sroa.06.09.i.i, ptr %.sroa.011.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.011.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i.i, i64 32, i1 false), !alias.scope !625, !noalias !630
  %.lobit.i.i = lshr i32 %i.az, 31
  %i.bb = zext nneg i32 %.lobit.i.i to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.08.i.i, i64 %i.bb ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ba, i64 32, i64 0
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 32 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.017.06.i.i, i64 24
  %.sroa.017.0.val.i.i = load i32, ptr %i.be, align 8, !alias.scope !628, !noalias !623
  %i.bf = getelementptr i8, ptr %.sroa.015.07.i.i, i64 24
  %.sroa.015.0.val.i.i = load i32, ptr %i.bf, align 8, !alias.scope !628, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !629
  store i32 %.sroa.017.0.val.i.i, ptr %i.f, align 4, !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !629
  store i32 %.sroa.015.0.val.i.i, ptr %i.e, align 4, !noalias !629
  %i.bg = load i32, ptr %i.f, align 4
  %i.bh = load i32, ptr %i.e, align 4
  %i.bi = call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bj = call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bk = call i32 @llvm.ucmp.i32.i32(i32 %i.bi, i32 %i.bj) ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !629
  %..i.i.i = select i1 %i.bl, ptr %.sroa.017.06.i.i, ptr %.sroa.015.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i, i64 32, i1 false), !alias.scope !625, !noalias !631
  %.neg.i.i.i = sext i1 %i.bl to i64
  %i.bm = getelementptr [32 x i8], ptr %.sroa.017.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.lobit4.i.i = ashr i32 %i.bk, 31
  %.neg13.i.i.i = sext i32 %.lobit4.i.i to i64
  %i.bn = getelementptr [32 x i8], ptr %.sroa.015.07.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.05.i.i, i64 -32
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bp = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.ao ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bp, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i.i, i64 32, i1 false), !alias.scope !625
  %.sroa.sel.idx.sroa.sel.idx = select i1 %i.bp, i64 32, i64 0
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bp, i64 0, i64 32
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bc, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %i.bq = icmp ne ptr %.sroa.06.1.i.i, %i.ao
  %i.br = icmp ne ptr %.sroa.011.1.i.i, %i.ap
  %or.cond.i.i = select i1 %i.bq, i1 true, i1 %i.br, !prof !11
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1u_NtB1u_15BaseAxisBuilder3new0E0EB1A_.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc.i unwind label %bb.m, !noalias !623

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = shl nuw nsw i64 %1, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.i, i64 %i.bt, i1 false), !alias.scope !625, !noalias !632
  resume { ptr, i32 } %i.bs

.lr.ph.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.cl, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.08.i ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false), !alias.scope !625
  %i.bw = getelementptr i8, ptr %i.bv, i64 24
  %.val9.i.i = load i32, ptr %i.bw, align 8, !alias.scope !624, !noalias !623 ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 -8
  %.val10.i.i = load i32, ptr %i.bx, align 8, !alias.scope !624, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !625
  store i32 %.val9.i.i, ptr %i.d, align 4, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !625
  store i32 %.val10.i.i, ptr %i.c, align 4, !noalias !625
  %i.by = load i32, ptr %i.d, align 4
  %i.bz = load i32, ptr %i.c, align 4
  %i.ca = call i32 @llvm.bswap.i32(i32 %i.by)
  %i.cb = call i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cc = icmp ult i32 %i.ca, %i.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !625
  br i1 %i.cc, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %.sroa.59.0.copyload.i.i = load i32, ptr %.sroa.59.0..sroa_idx.i.i, align 4, !alias.scope !624, !noalias !623
  %.sroa.0.0.i26.i28 = getelementptr inbounds i8, ptr %i.bv, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i26.i28, i64 32, i1 false), !alias.scope !624, !noalias !623
  %i.cd = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.cd, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %.sroa.0.0.i26.i = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i30, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i26.i30, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i26.i, i64 32, i1 false), !alias.scope !624, !noalias !623
  %i.ce = icmp eq ptr %.sroa.0.0.i26.i, %i.i
  br i1 %i.ce, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i26.i30 = phi ptr [ %.sroa.0.0.i26.i, %bb.o ], [ %.sroa.0.0.i26.i28, %bb.n ] ; 5 uses
  %.sroa.5.0.i.i29 = phi ptr [ %.sroa.0.0.i26.i30, %bb.o ], [ %i.bv, %bb.n ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.5.0.i.i29, i64 -40
  %.val8.i.i = load i32, ptr %i.cf, align 8, !alias.scope !624, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !625
  store i32 %.val9.i.i, ptr %i.b, align 4, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !625
  store i32 %.val8.i.i, ptr %i.a, align 4, !noalias !625
  %i.cg = load i32, ptr %i.b, align 4
  %i.ch = load i32, ptr %i.a, align 4
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.ck = icmp ult i32 %i.ci, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !625
  br i1 %i.ck, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %bb.n
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.bv, %bb.n ], [ %.sroa.0.0.i26.i30, %bb.o ], [ %.sroa.5.0.i.i29, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i26.lcssa.i = phi ptr [ %i.i, %bb.n ], [ %i.i, %bb.o ], [ %.sroa.0.0.i26.i30, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i26.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !alias.scope !625
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i32 %.val9.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !624, !noalias !626
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4
  store i32 %.sroa.59.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !624, !noalias !626
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.cl = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1u_NtB1u_15BaseAxisBuilder3new0E0EB1A_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvNtB1K_4edit11apply_edits0E0EB1M_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 8 uses
  %i.a = alloca [1920 x i8], align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvNtB1X_4edit11apply_edits0E0EB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i.i = load i64, ptr %i.f, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val9.i.i = load i64, ptr %0, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.g = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val6.i.i = load i64, ptr %i.h, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val7.i.i = load i64, ptr %i.i, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.j = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i.i = load i64, ptr %i.q, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val5.i.i = load i64, ptr %i.l, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.t = icmp ult i64 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i64, ptr %i.s, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val3.i.i = load i64, ptr %i.o, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.u = icmp ult i64 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !4
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !4
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !4
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !4 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !4
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !4 ; 3 uses
  %.val.i.i = load i64, ptr %i.aa, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.ab = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !4
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !alias.scope !654
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !alias.scope !654
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !alias.scope !654
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false), !alias.scope !654
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.val8.i26.i = load i64, ptr %i.aj, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val9.i27.i = load i64, ptr %i.ah, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.ak = icmp ult i64 %.val8.i26.i, %.val9.i27.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %.val6.i28.i = load i64, ptr %i.al, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val7.i29.i = load i64, ptr %i.am, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.an = icmp ult i64 %.val6.i28.i, %.val7.i29.i ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i30.i = load i64, ptr %i.au, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val5.i31.i = load i64, ptr %i.ap, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.ax = icmp ult i64 %.val4.i30.i, %.val5.i31.i ; 3 uses
  %.val2.i32.i = load i64, ptr %i.aw, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val3.i33.i = load i64, ptr %i.as, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.ay = icmp ult i64 %.val2.i32.i, %.val3.i33.i ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !4
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !4
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !4 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !4
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !4 ; 3 uses
  %.val.i34.i = load i64, ptr %i.be, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %.val1.i35.i = load i64, ptr %i.bc, align 8, !alias.scope !652, !noalias !653, !noundef !4
  %i.bf = icmp ult i64 %.val.i34.i, %.val1.i35.i  ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !4
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false), !alias.scope !654
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !alias.scope !654
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !alias.scope !654
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 40, i1 false), !alias.scope !654
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !alias.scope !654
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i64 40, i1 false), !alias.scope !654
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bo, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.i, %bb.g
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [40 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0.i, %i.bn
  br i1 %i.br, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx38 = mul nuw nsw i64 %.sroa.05.08.1.i, 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx38 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i64 40, i1 false), !alias.scope !654
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -40 ; 3 uses
  %.val9.i36.1.i = load i64, ptr %i.bt, align 8, !alias.scope !653, !noalias !652, !noundef !4 ; 3 uses
  %.val10.i.1.i = load i64, ptr %i.bu, align 8, !alias.scope !653, !noalias !652, !noundef !4
  %i.bv = icmp ult i64 %.val9.i36.1.i, %.val10.i.1.i
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 32, i1 false), !noalias !653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 40, i1 false), !alias.scope !653, !noalias !652
  %i.bx = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.bx, label %._crit_edge34, label %.lr.ph33

bb.i:                                             ; preds = %.lr.ph33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i37.1.i31, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false), !alias.scope !653, !noalias !652
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37.1.i31 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i37.1.i31, i64 -40 ; 4 uses
  %.val8.i38.1.i = load i64, ptr %i.bz, align 8, !alias.scope !653, !noalias !652, !noundef !4
  %i.ca = icmp ult i64 %.val9.i36.1.i, %.val8.i38.1.i
  br i1 %i.ca, label %bb.i, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.i, %.lr.ph33, %bb.h
  %.sroa.0.0.i37.lcssa.1.i = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i37.1.i31, %.lr.ph33 ] ; 2 uses
  store i64 %.val9.i36.1.i, ptr %.sroa.0.0.i37.lcssa.1.i, align 8, !alias.scope !653, !noalias !655
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa.1.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.1.i: ; preds = %._crit_edge34, %.lr.ph.1.i
  %i.cb = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.1.i, %.loopexit.i
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cg = getelementptr i8, ptr %i.cp, i64 40     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.co, i64 40
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.bq, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cf, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.ce, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cd, %.loopexit.1.i ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.07.i.i, align 8, !alias.scope !656, !noalias !652, !noundef !4
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.08.i.i, align 8, !alias.scope !656, !noalias !652, !noundef !4
  %.not = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i21.i.i, i64 40, i1 false), !alias.scope !654, !noalias !657
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 40, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 40
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.05.i.i, align 8, !alias.scope !656, !noalias !652, !noundef !4
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.06.i.i, align 8, !alias.scope !656, !noalias !652, !noundef !4
  %i.cm = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.cm, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.cn = xor i1 %i.cm, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !654, !noalias !658
  %.neg.i.i.i = sext i1 %i.cn to i64
  %i.co = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.cm to i64
  %i.cp = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not23 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cg ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not23, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !654
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not23, i64 40, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not23, i64 0, i64 40
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.cr = icmp ne ptr %.sroa.06.1.i.i, %i.cg
  %i.cs = icmp ne ptr %.sroa.011.1.i.i, %i.ch
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs, !prof !11
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvNtB1X_4edit11apply_edits0E0EB1Z_.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc.i unwind label %bb.m, !noalias !652

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = mul nuw nsw i64 %1, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.cu, i1 false), !alias.scope !654, !noalias !659
  resume { ptr, i32 } %i.ct

.lr.ph.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.de, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.05.08.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false), !alias.scope !654
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -40 ; 3 uses
  %.val9.i36.i = load i64, ptr %i.cw, align 8, !alias.scope !653, !noalias !652, !noundef !4 ; 3 uses
  %.val10.i.i = load i64, ptr %i.cx, align 8, !alias.scope !653, !noalias !652, !noundef !4
  %i.cy = icmp ult i64 %.val9.i36.i, %.val10.i.i
  br i1 %i.cy, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !alias.scope !653, !noalias !652
  %i.da = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.da, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i37.i28, ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i64 40, i1 false), !alias.scope !653, !noalias !652
  %i.db = icmp eq ptr %i.dc, %i.a
  br i1 %i.db, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i37.i28 = phi ptr [ %i.dc, %bb.o ], [ %i.cx, %bb.n ] ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i37.i28, i64 -40 ; 4 uses
  %.val8.i38.i = load i64, ptr %i.dc, align 8, !alias.scope !653, !noalias !652, !noundef !4
  %i.dd = icmp ult i64 %.val9.i36.i, %.val8.i38.i
  br i1 %i.dd, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %bb.n
  %.sroa.0.0.i37.lcssa.i = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.o ], [ %.sroa.0.0.i37.i28, %.lr.ph ] ; 2 uses
  store i64 %.val9.i36.i, ptr %.sroa.0.0.i37.lcssa.i, align 8, !alias.scope !653, !noalias !655
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.de = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.de, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvNtB1X_4edit11apply_edits0E0EB1Z_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1f_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [128 x i8], align 1               ; 5 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %1, 32
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = lshr i64 %1, 1                           ; 4 uses
  %i.f = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.f, i64 %1, i64 %i.e
  %i.g = getelementptr [4 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.h = sub nuw nsw i64 %1, %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.h, %bb.n ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.g, %bb.n ] ; 47 uses
  %i.i = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.j, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 8 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = load i32, ptr %.sroa.02.0, align 1
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.p = icmp ult i32 %i.n, %i.o                  ; 2 uses
  %i.q = select i1 %i.p, ptr %i.k, ptr %.sroa.02.0, !unpredictable !4
  %i.r = select i1 %i.p, ptr %.sroa.02.0, ptr %i.k, !unpredictable !4
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.r, align 1, !alias.scope !678 ; 3 uses
  %i.s = load i32, ptr %i.q, align 1, !alias.scope !678 ; 3 uses
  store i32 %i.s, ptr %.sroa.02.0, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.k, align 1, !alias.scope !678
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 4 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 16 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = load i32, ptr %i.t, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.z = icmp ult i32 %i.x, %i.y                  ; 2 uses
  %i.aa = select i1 %i.z, ptr %i.u, ptr %i.t, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.u, !unpredictable !4
  %.sroa.02.0.copyload.i1.i = load i32, ptr %i.ab, align 1, !alias.scope !678 ; 3 uses
  %i.ac = load i32, ptr %i.aa, align 1, !alias.scope !678 ; 3 uses
  store i32 %i.ac, ptr %i.t, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i1.i, ptr %i.u, align 1, !alias.scope !678
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 36 ; 18 uses
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = load i32, ptr %i.ad, align 1
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.aj = icmp ult i32 %i.ah, %i.ai               ; 2 uses
  %i.ak = select i1 %i.aj, ptr %i.ae, ptr %i.ad, !unpredictable !4
  %i.al = select i1 %i.aj, ptr %i.ad, ptr %i.ae, !unpredictable !4
  %.sroa.02.0.copyload.i2.i = load i32, ptr %i.al, align 1, !alias.scope !678 ; 3 uses
  %i.am = load i32, ptr %i.ak, align 1, !alias.scope !678 ; 3 uses
  store i32 %i.am, ptr %i.ad, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i2.i, ptr %i.ae, align 1, !alias.scope !678
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 12 ; 18 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 28 ; 16 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = load i32, ptr %i.an, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.at = icmp ult i32 %i.ar, %i.as               ; 2 uses
  %i.au = select i1 %i.at, ptr %i.ao, ptr %i.an, !unpredictable !4
  %i.av = select i1 %i.at, ptr %i.an, ptr %i.ao, !unpredictable !4
  %.sroa.02.0.copyload.i3.i = load i32, ptr %i.av, align 1, !alias.scope !678 ; 3 uses
  %i.aw = load i32, ptr %i.au, align 1, !alias.scope !678 ; 3 uses
  store i32 %i.aw, ptr %i.an, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i3.i, ptr %i.ao, align 1, !alias.scope !678
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 20 ; 18 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 44 ; 16 uses
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = load i32, ptr %i.ax, align 1
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bd = icmp ult i32 %i.bb, %i.bc               ; 2 uses
  %i.be = select i1 %i.bd, ptr %i.ay, ptr %i.ax, !unpredictable !4
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.ay, !unpredictable !4
  %.sroa.02.0.copyload.i4.i = load i32, ptr %i.bf, align 1, !alias.scope !678
  %i.bg = load i32, ptr %i.be, align 1, !alias.scope !678 ; 3 uses
  store i32 %i.bg, ptr %i.ax, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i4.i, ptr %i.ay, align 1, !alias.scope !678
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 22 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 18 uses
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = load i32, ptr %i.bh, align 1
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bn = icmp ult i32 %i.bl, %i.bm               ; 2 uses
  %i.bo = select i1 %i.bn, ptr %i.bi, ptr %i.bh, !unpredictable !4
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bi, !unpredictable !4
  %.sroa.02.0.copyload.i5.i = load i32, ptr %i.bp, align 1, !alias.scope !678 ; 3 uses
  %i.bq = load i32, ptr %i.bo, align 1, !alias.scope !678 ; 3 uses
  store i32 %i.bq, ptr %i.bh, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i5.i, ptr %i.bi, align 1, !alias.scope !678
  %i.br = load i32, ptr %i.bh, align 1
  %i.bs = load i32, ptr %i.t, align 1
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bv = icmp ult i32 %i.bt, %i.bu               ; 2 uses
  %.sroa.02.0.copyload.i6.i = select i1 %i.bv, i32 %i.ac, i32 %i.bq, !unpredictable !4 ; 3 uses
  %i.bw = select i1 %i.bv, i32 %i.bq, i32 %i.ac, !unpredictable !4 ; 3 uses
  store i32 %i.bw, ptr %i.t, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i6.i, ptr %i.bh, align 1, !alias.scope !678
  %i.bx = load i32, ptr %i.an, align 1
  %i.by = load i32, ptr %i.ad, align 1
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.by)
  %i.cb = icmp ult i32 %i.bz, %i.ca               ; 2 uses
  %.sroa.02.0.copyload.i7.i = select i1 %i.cb, i32 %i.am, i32 %i.aw, !unpredictable !4 ; 3 uses
  %i.cc = select i1 %i.cb, i32 %i.aw, i32 %i.am, !unpredictable !4 ; 3 uses
  store i32 %i.cc, ptr %i.ad, align 1, !alias.scope !678
  store i32 %.sroa.02.0.copyload.i7.i, ptr %i.an, align 1, !alias.scope !678
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 18 uses
  %i.ce = load i32, ptr %i.ay, align 1
  %i.cf = load i32, ptr %i.cd, align 1
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.ce)
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ci = icmp ult i32 %i.cg, %i.ch               ; 2 uses
  %i.cj = select i1 %i.ci, ptr %i.ay, ptr %i.cd, !unpredictable !4
  %i.ck = select i1 %i.ci, ptr %i.cd, ptr %i.ay, !unpredictable !4
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB3j_11GdefBuilder20build_lig_caret_lists_0E0EB3p_:bb.a
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = mul nuw nsw i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dw, i1 false), !noalias !903
  resume { ptr, i32 } %i.dv

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB37_11GdefBuilder20build_lig_caret_lists_0E0EB3d_.exit: ; preds = %bb.ai, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB2Z_11GdefBuilder20build_lig_caret_lists_0E0EB35_.exit
  %.sroa.05.041 = phi i64 [ %i.fo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB2Z_11GdefBuilder20build_lig_caret_lists_0E0EB35_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.041 ; 3 uses
  %.idx = mul nuw nsw i64 %.sroa.05.041, 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 12 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.ea = load i16, ptr %i.dy, align 8, !range !9, !alias.scope !906, !noalias !905, !noundef !4 ; 3 uses
  switch i16 %i.ea, label %.lr.ph.unreachabledefault [
    i16 0, label %bb.al
    i16 1, label %bb.am
    i16 2, label %bb.an
  ]

.lr.ph.i.unreachabledefault:                      ; preds = %.lr.ph.i
  unreachable

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i.unreachabledefault: ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i
  unreachable

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i.unreachabledefault: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i
  unreachable

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i22.i.unreachabledefault: ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i22.i
  unreachable

.unreachabledefault:                              ; preds = %.lr.ph91
  unreachable

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i.1.unreachabledefault: ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i.1
  unreachable

.lr.ph.1.unreachabledefault:                      ; preds = %.lr.ph.1
  unreachable

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26.1.unreachabledefault: ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26.1
  unreachable

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable:                              ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26, %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i, %.lr.ph86
  unreachable

bb.al:                                            ; preds = %.lr.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !alias.scope !906, !noalias !905, !noundef !4
  %i.ed = sext i16 %i.ec to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26

bb.am:                                            ; preds = %.lr.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !alias.scope !906, !noalias !905, !noundef !4
  %i.eg = zext i16 %i.ef to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26

bb.an:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ei = load i16, ptr %i.eh, align 8, !alias.scope !906, !noalias !905, !noundef !4
  %i.ej = sext i16 %i.ei to i32
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26: ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.0.0.i.i.i27 = phi i32 [ %i.ed, %bb.al ], [ %i.eg, %bb.am ], [ %i.ej, %bb.an ]
  %i.ek = load i16, ptr %i.dz, align 8, !range !9, !alias.scope !907, !noalias !904, !noundef !4
  switch i16 %i.ek, label %default.unreachable [
    i16 0, label %bb.ao
    i16 1, label %bb.ap
    i16 2, label %bb.aq
  ]

bb.ao:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26
  %i.el = getelementptr inbounds i8, ptr %i.dy, i64 -22
  %i.em = load i16, ptr %i.el, align 2, !alias.scope !907, !noalias !904, !noundef !4
  %i.en = sext i16 %i.em to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i28

bb.ap:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26
  %i.eo = getelementptr inbounds i8, ptr %i.dy, i64 -22
  %i.ep = load i16, ptr %i.eo, align 2, !alias.scope !907, !noalias !904, !noundef !4
  %i.eq = zext i16 %i.ep to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i28

bb.aq:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i.i26
  %i.er = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.es = load i16, ptr %i.er, align 8, !alias.scope !907, !noalias !904, !noundef !4
  %i.et = sext i16 %i.es to i32
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i28

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i28: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.0.i1.i.i29 = phi i32 [ %i.en, %bb.ao ], [ %i.eq, %bb.ap ], [ %i.et, %bb.aq ]
  %i.eu = icmp slt i32 %.sroa.0.0.i.i.i27, %.sroa.0.0.i1.i.i29
  br i1 %i.eu, label %bb.ar, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB2Z_11GdefBuilder20build_lig_caret_lists_0E0EB35_.exit

bb.ar:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ev, i64 12, i1 false)
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.615.0.copyload.i = load i16, ptr %.sroa.615.0..sroa_idx.i, align 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dx, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, ptr noundef nonnull align 2 dereferenceable(6) %i.ew, i64 6, i1 false)
  %i.ex = sext i16 %.sroa.615.0.copyload.i to i32
  %i.ey = zext i16 %.sroa.4.0.copyload.i to i32
  %i.ez = sext i16 %.sroa.4.0.copyload.i to i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  %i.fa = icmp eq i64 %.sroa.05.041, 1
  br i1 %i.fa, label %._crit_edge, label %.lr.ph86

bb.as:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3085, ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i64 24, i1 false)
  %i.fb = icmp eq ptr %i.fc, %2
  br i1 %i.fb, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ar, %bb.as
  %.sroa.0.0.i3085 = phi ptr [ %i.fc, %bb.as ], [ %i.dz, %bb.ar ] ; 6 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.0.0.i3085, i64 -24 ; 4 uses
  switch i16 %i.ea, label %default.unreachable [
    i16 0, label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i
    i16 1, label %bb.at
    i16 2, label %bb.au
  ]

bb.at:                                            ; preds = %.lr.ph86
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i

bb.au:                                            ; preds = %.lr.ph86
  br label %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i

_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i: ; preds = %.lr.ph86, %bb.au, %bb.at
  %.sroa.0.0.i.i9.i = phi i32 [ %i.ex, %bb.au ], [ %i.ey, %bb.at ], [ %i.ez, %.lr.ph86 ]
  %i.fd = load i16, ptr %i.fc, align 8, !range !9, !alias.scope !890, !noalias !891, !noundef !4
  switch i16 %i.fd, label %default.unreachable [
    i16 0, label %bb.av
    i16 1, label %bb.aw
    i16 2, label %bb.ax
  ]

bb.av:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0.0.i3085, i64 -22
  %i.ff = load i16, ptr %i.fe, align 2, !alias.scope !890, !noalias !891, !noundef !4
  %i.fg = sext i16 %i.ff to i32
  br label %bb.ay

bb.aw:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0.0.i3085, i64 -22
  %i.fi = load i16, ptr %i.fh, align 2, !alias.scope !890, !noalias !891, !noundef !4
  %i.fj = zext i16 %i.fi to i32
  br label %bb.ay

bb.ax:                                            ; preds = %_RNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB4_11GdefBuilder20build_lig_caret_lists_0Ba_.exit.i8.i
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.i3085, i64 -8
  %i.fl = load i16, ptr %i.fk, align 8, !alias.scope !890, !noalias !891, !noundef !4
  %i.fm = sext i16 %i.fl to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i1.i10.i = phi i32 [ %i.fg, %bb.av ], [ %i.fj, %bb.aw ], [ %i.fm, %bb.ax ]
  %i.fn = icmp slt i32 %.sroa.0.0.i.i9.i, %.sroa.0.0.i1.i10.i
  br i1 %i.fn, label %bb.as, label %._crit_edge

._crit_edge:                                      ; preds = %bb.as, %bb.ay, %bb.ar
  %.sroa.0.0.i30.lcssa = phi ptr [ %2, %bb.ar ], [ %2, %bb.as ], [ %.sroa.0.0.i3085, %bb.ay ] ; 5 uses
  store i16 %i.ea, ptr %.sroa.0.0.i30.lcssa, align 8, !noalias !892
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa, i64 2
  store i16 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 2, !noalias !892
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i, i64 12, i1 false), !noalias !892
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa, i64 16
  store i16 %.sroa.615.0.copyload.i, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !892
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, i64 6, i1 false), !noalias !892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB2Z_11GdefBuilder20build_lig_caret_lists_0E0EB35_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB2Z_11GdefBuilder20build_lig_caret_lists_0E0EB35_.exit: ; preds = %._crit_edge, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10CaretValue11sort_by_keylNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB1M_11GdefBuilder20build_lig_caret_lists_0E0B1S_.exit.i28
  %i.fo = add nuw nsw i64 %.sroa.05.041, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB1s_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 9 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %1 ; 5 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %0, ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef %i.j, ptr noundef %i.k)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB1g_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 8, ptr noundef nonnull %2)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %i.l, ptr noundef nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef %i.o, ptr noundef %i.p)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB1g_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef 8, ptr noundef nonnull %i.m)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef %i.g, ptr noundef %i.h)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.q = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.r, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, %bb.i
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 3 uses
  %i.u = icmp samesign ult i64 %.sroa.0.0, %i.q
  br i1 %i.u, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1
  %.sroa.05.029.1 = phi i64 [ %i.cs, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.sroa.05.029.1
  %.idx.1 = shl nuw nsw i64 %.sroa.05.029.1, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.1 ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i16, ptr %i.y, align 8, !alias.scope !960, !noalias !961, !noundef !4 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load i16, ptr %i.aa, align 8, !alias.scope !961, !noalias !960, !noundef !4 ; 2 uses
  %i.ac = icmp eq i16 %i.z, %i.ab
  %i.ad = icmp ult i16 %i.z, %i.ab
  br i1 %i.ac, label %bb.j, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1

bb.j:                                             ; preds = %.lr.ph.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !alias.scope !960, !noalias !961, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -6
  %i.ah = load i16, ptr %i.ag, align 2, !alias.scope !961, !noalias !960, !noundef !4 ; 2 uses
  %i.ai = icmp eq i16 %i.af, %i.ah
  %i.aj = icmp ult i16 %i.af, %i.ah
  br i1 %i.ai, label %bb.k, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.al = load i16, ptr %i.ak, align 4, !alias.scope !960, !noalias !961, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.an = load i16, ptr %i.am, align 4, !alias.scope !961, !noalias !960, !noundef !4 ; 2 uses
  %i.ao = icmp eq i16 %i.al, %i.an
  %i.ap = icmp ult i16 %i.al, %i.an
  br i1 %i.ao, label %bb.l, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.ar = load i16, ptr %i.aq, align 2, !alias.scope !960, !noalias !961, !noundef !4 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.w, i64 -2
  %i.at = load i16, ptr %i.as, align 2, !alias.scope !961, !noalias !960, !noundef !4 ; 2 uses
  %i.au = icmp eq i16 %i.ar, %i.at
  %i.av = icmp ult i16 %i.ar, %i.at
  br i1 %i.au, label %.split.i.1, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.1
  %.sroa.0.0.i.i.i.i.i.1 = phi i1 [ %i.ad, %.lr.ph.1 ], [ %i.av, %bb.l ], [ %i.ap, %bb.k ], [ %i.aj, %bb.j ]
  br i1 %.sroa.0.0.i.i.i.i.i.1, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1: ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1
  %.sroa.014.0.copyload.pre.i.1 = load ptr, ptr %i.w, align 8
  %.sroa.515.0..sroa_idx.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %.sroa.515.0.copyload.pre.i.1 = load i16, ptr %.sroa.515.0..sroa_idx.phi.trans.insert.i.1, align 2
  %.sroa.616.0..sroa_idx.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.616.0.copyload.pre.i.1 = load i16, ptr %.sroa.616.0..sroa_idx.phi.trans.insert.i.1, align 4
  %.sroa.717.0..sroa_idx.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %.sroa.717.0.copyload.pre.i.1 = load i16, ptr %.sroa.717.0..sroa_idx.phi.trans.insert.i.1, align 2
  br label %bb.m

.split.i.1:                                       ; preds = %bb.l
  %i.aw = load ptr, ptr %i.w, align 8, !alias.scope !960, !noalias !961, !nonnull !4, !noundef !4 ; 3 uses
  %i.ax = load ptr, ptr %i.x, align 8, !alias.scope !961, !noalias !960, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !962, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !962, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !962, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !962, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bf)
  %i.bg = tail call i32 @memcmp(ptr nonnull %i.az, ptr nonnull %i.bd, i64 %spec.store.select.i.i.i.i.i.1), !noalias !962 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub i64 %i.bb, %i.bf
  %spec.select.i.i.i.i.i.1 = select i1 %i.bi, i64 %i.bj, i64 %i.bh
  %i.bk = icmp slt i64 %spec.select.i.i.i.i.i.1, 0
  br i1 %i.bk, label %bb.m, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1

bb.m:                                             ; preds = %.split.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1
  %.sroa.717.0.copyload.i.1 = phi i16 [ %.sroa.717.0.copyload.pre.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1 ], [ %i.ar, %.split.i.1 ] ; 3 uses
  %.sroa.616.0.copyload.i.1 = phi i16 [ %.sroa.616.0.copyload.pre.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1 ], [ %i.al, %.split.i.1 ] ; 3 uses
  %.sroa.515.0.copyload.i.1 = phi i16 [ %.sroa.515.0.copyload.pre.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1 ], [ %i.af, %.split.i.1 ] ; 3 uses
  %.sroa.014.0.copyload.i.1 = phi ptr [ %.sroa.014.0.copyload.pre.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit._crit_edge.i.1 ], [ %i.aw, %.split.i.1 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.bl = icmp eq i64 %.sroa.05.029.1, 1
  br i1 %i.bl, label %.split5._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i.1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i.1, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.backedge.i.1, %.lr.ph.i.1
  %.sroa.0.06.i.1 = phi ptr [ %i.x, %.lr.ph.i.1 ], [ %i.bo, %.backedge.i.1 ] ; 8 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -8
  %i.bq = load i16, ptr %i.bp, align 8, !alias.scope !967, !noalias !968, !noundef !4 ; 2 uses
  %i.br = icmp eq i16 %i.z, %i.bq
  %i.bs = icmp ult i16 %i.z, %i.bq
  br i1 %i.br, label %bb.o, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -6
  %i.bu = load i16, ptr %i.bt, align 2, !alias.scope !967, !noalias !968, !noundef !4 ; 2 uses
  %i.bv = icmp eq i16 %.sroa.515.0.copyload.i.1, %i.bu
  %i.bw = icmp ult i16 %.sroa.515.0.copyload.i.1, %i.bu
  br i1 %i.bv, label %bb.p, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -4
  %i.by = load i16, ptr %i.bx, align 4, !alias.scope !967, !noalias !968, !noundef !4 ; 2 uses
  %i.bz = icmp eq i16 %.sroa.616.0.copyload.i.1, %i.by
  %i.ca = icmp ult i16 %.sroa.616.0.copyload.i.1, %i.by
  br i1 %i.bz, label %bb.q, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.06.i.1, i64 -2
  %i.cc = load i16, ptr %i.cb, align 2, !alias.scope !967, !noalias !968, !noundef !4 ; 2 uses
  %i.cd = icmp eq i16 %.sroa.717.0.copyload.i.1, %i.cc
  %i.ce = icmp ult i16 %.sroa.717.0.copyload.i.1, %i.cc
  br i1 %i.cd, label %.split5.i.1, label %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1

_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i8.i.1 = phi i1 [ %i.bs, %bb.n ], [ %i.ce, %bb.q ], [ %i.ca, %bb.p ], [ %i.bw, %bb.o ]
  br i1 %.sroa.0.0.i.i.i.i8.i.1, label %.backedge.i.1, label %.split5._crit_edge.i.1

.split5.i.1:                                      ; preds = %bb.q
  %i.cf = load ptr, ptr %i.bo, align 8, !alias.scope !967, !noalias !968, !nonnull !4, !noundef !4 ; 2 uses
  %i.cg = load ptr, ptr %i.bm, align 8, !noalias !969, !nonnull !4, !noundef !4
  %i.ch = load i64, ptr %i.bn, align 8, !noalias !969, !noundef !4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !969, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !969, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i9.i.1 = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cl)
  %i.cm = tail call i32 @memcmp(ptr nonnull %i.cg, ptr nonnull %i.cj, i64 %spec.store.select.i.i.i.i9.i.1), !noalias !969 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp eq i32 %i.cm, 0
  %i.cp = sub i64 %i.ch, %i.cl
  %spec.select.i.i.i.i10.i.1 = select i1 %i.co, i64 %i.cp, i64 %i.cn
  %i.cq = icmp slt i64 %spec.select.i.i.i.i10.i.1, 0
  br i1 %i.cq, label %.backedge.i.1, label %.split5._crit_edge.i.1

.backedge.i.1:                                    ; preds = %.split5.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
  %i.cr = icmp eq ptr %i.bo, %i.t
  br i1 %i.cr, label %.split5._crit_edge.i.1, label %bb.n

.split5._crit_edge.i.1:                           ; preds = %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1, %.split5.i.1, %.backedge.i.1, %bb.m
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.x, %bb.m ], [ %i.t, %.backedge.i.1 ], [ %.sroa.0.06.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit11.i.1 ], [ %.sroa.0.06.i.1, %.split5.i.1 ] ; 5 uses
  store ptr %.sroa.014.0.copyload.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !970
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i16 %i.z, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !970
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 10
  store i16 %.sroa.515.0.copyload.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 2, !noalias !970
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 12
  store i16 %.sroa.616.0.copyload.i.1, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1, align 4, !noalias !970
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 14
  store i16 %.sroa.717.0.copyload.i.1, ptr %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.1, align 2, !noalias !970
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1: ; preds = %.split5._crit_edge.i.1, %.split.i.1, %_RNvYNvYNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutCscScJTt9VrQp_6fea_rs.exit.i.1
  %i.cs = add nuw nsw i64 %.sroa.05.029.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cs, %i.q
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_11sort_by_keytNCNvMB1v_NtB1v_11StatBuilder5build0E0EB1B_:bb.a
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keytNCNvMB1c_NtB1c_11StatBuilder5build0E0EB1i_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keytNCNvMB1c_NtB1c_11StatBuilder5build0E0EB1i_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.k, align 8, !nonnull !4, !align !12, !noundef !4
  %.val9.i = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.val8.i, i64 28
  %i.m = load i16, ptr %i.l, align 4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i, i64 28
  %i.o = load i16, ptr %i.n, align 4, !noundef !4
  %i.p = icmp ult i16 %i.m, %i.o                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load ptr, ptr %i.q, align 8, !nonnull !4, !align !12, !noundef !4
  %.val7.i = load ptr, ptr %i.r, align 8, !nonnull !4, !align !12, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.val6.i, i64 28
  %i.t = load i16, ptr %i.s, align 4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.val7.i, i64 28
  %i.v = load i16, ptr %i.u, align 4, !noundef !4
  %i.w = icmp ult i16 %i.t, %i.v                  ; 2 uses
  %i.x = zext i1 %i.p to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.z = xor i1 %i.p, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 3 uses
  %i.ac = select i1 %i.w, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ae = select i1 %i.w, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 2 uses
  %.val4.i = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val5.i = load ptr, ptr %i.y, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4.i, i64 28
  %i.ah = load i16, ptr %i.ag, align 4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i, i64 28
  %i.aj = load i16, ptr %i.ai, align 4, !noundef !4
  %i.ak = icmp ult i16 %i.ah, %i.aj               ; 3 uses
  %.val2.i = load ptr, ptr %i.af, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val3.i = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i, i64 28
  %i.am = load i16, ptr %i.al, align 4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %.val3.i, i64 28
  %i.ao = load i16, ptr %i.an, align 4, !noundef !4
  %i.ap = icmp ult i16 %i.am, %i.ao               ; 3 uses
  %i.aq = select i1 %i.ap, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.ar = select i1 %i.ak, ptr %i.y, ptr %i.aq, !unpredictable !4
  %i.as = select i1 %i.ak, ptr %i.ab, ptr %i.ad, !unpredictable !4
  %i.at = select i1 %i.ap, ptr %i.af, ptr %i.as, !unpredictable !4
  %.val.i = load ptr, ptr %i.at, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val1.i = load ptr, ptr %i.ar, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 28
  %i.av = load i16, ptr %i.au, align 4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i, i64 28
  %i.ax = load i16, ptr %i.aw, align 4, !noundef !4
  %i.ay = icmp ult i16 %i.av, %i.ax               ; 2 uses
  %.v.i = select i1 %i.ak, ptr %.val4.i, ptr %.val5.i, !unpredictable !4
  %i.az = ptrtoint ptr %.v.i to i64
  store i64 %i.az, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.bc = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.bd = select i1 %i.ay, i64 %i.bb, i64 %i.bc, !unpredictable !4
  store i64 %i.bd, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = select i1 %i.ay, i64 %i.bc, i64 %i.bb, !unpredictable !4
  store i64 %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.v = select i1 %i.ap, ptr %.val3.i, ptr %.val2.i, !unpredictable !4
  %i.bh = ptrtoint ptr %.v to i64
  store i64 %i.bh, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val8.i26 = load ptr, ptr %i.bk, align 8, !nonnull !4, !align !12, !noundef !4
  %.val9.i27 = load ptr, ptr %i.bi, align 8, !nonnull !4, !align !12, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.val8.i26, i64 28
  %i.bm = load i16, ptr %i.bl, align 4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.val9.i27, i64 28
  %i.bo = load i16, ptr %i.bn, align 4, !noundef !4
  %i.bp = icmp ult i16 %i.bm, %i.bo               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.val6.i28 = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !12, !noundef !4
  %.val7.i29 = load ptr, ptr %i.br, align 8, !nonnull !4, !align !12, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.val6.i28, i64 28
  %i.bt = load i16, ptr %i.bs, align 4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val7.i29, i64 28
  %i.bv = load i16, ptr %i.bu, align 4, !noundef !4
  %i.bw = icmp ult i16 %i.bt, %i.bv               ; 2 uses
  %i.bx = zext i1 %i.bp to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bx ; 2 uses
  %i.bz = xor i1 %i.bp, true
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ca ; 3 uses
  %i.cc = select i1 %i.bw, i64 3, i64 2
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cc ; 3 uses
  %i.ce = select i1 %i.bw, i64 2, i64 3
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ce ; 2 uses
  %.val4.i30 = load ptr, ptr %i.cd, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val5.i31 = load ptr, ptr %i.by, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val4.i30, i64 28
  %i.ch = load i16, ptr %i.cg, align 4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %.val5.i31, i64 28
  %i.cj = load i16, ptr %i.ci, align 4, !noundef !4
  %i.ck = icmp ult i16 %i.ch, %i.cj               ; 3 uses
  %.val2.i32 = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val3.i33 = load ptr, ptr %i.cb, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2.i32, i64 28
  %i.cm = load i16, ptr %i.cl, align 4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.val3.i33, i64 28
  %i.co = load i16, ptr %i.cn, align 4, !noundef !4
  %i.cp = icmp ult i16 %i.cm, %i.co               ; 3 uses
  %i.cq = select i1 %i.cp, ptr %i.cd, ptr %i.cb, !unpredictable !4
  %i.cr = select i1 %i.ck, ptr %i.by, ptr %i.cq, !unpredictable !4
  %i.cs = select i1 %i.ck, ptr %i.cb, ptr %i.cd, !unpredictable !4
  %i.ct = select i1 %i.cp, ptr %i.cf, ptr %i.cs, !unpredictable !4
  %.val.i34 = load ptr, ptr %i.ct, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val1.i35 = load ptr, ptr %i.cr, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i34, i64 28
  %i.cv = load i16, ptr %i.cu, align 4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i35, i64 28
  %i.cx = load i16, ptr %i.cw, align 4, !noundef !4
  %i.cy = icmp ult i16 %i.cv, %i.cx               ; 2 uses
  %.v.i36 = select i1 %i.ck, ptr %.val4.i30, ptr %.val5.i31, !unpredictable !4
  %i.cz = ptrtoint ptr %.v.i36 to i64
  store i64 %i.cz, ptr %i.bj, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.db = ptrtoint ptr %.val.i34 to i64           ; 2 uses
  %i.dc = ptrtoint ptr %.val1.i35 to i64          ; 2 uses
  %i.dd = select i1 %i.cy, i64 %i.db, i64 %i.dc, !unpredictable !4
  store i64 %i.dd, ptr %i.da, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.df = select i1 %i.cy, i64 %i.dc, i64 %i.db, !unpredictable !4
  store i64 %i.df, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.v65 = select i1 %i.cp, ptr %.val3.i33, ptr %.val2.i32, !unpredictable !4
  %i.dh = ptrtoint ptr %.v65 to i64
  store i64 %i.dh, ptr %i.dg, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.di = load i64, ptr %0, align 8
  store i64 %i.di, ptr %2, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.dl = load i64, ptr %i.dj, align 8
  store i64 %i.dl, ptr %i.dk, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.dm = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dn = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.dn, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit, %bb.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.dp = getelementptr [8 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.dq = icmp samesign ult i64 %.sroa.0.0, %i.dm
  br i1 %i.dq, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit.1
  %.sroa.05.054.1 = phi i64 [ %i.ei, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.sroa.05.054.1
  %.idx82 = shl nuw nsw i64 %.sroa.05.054.1, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx82 ; 3 uses
  %i.dt = load i64, ptr %i.dr, align 8            ; 3 uses
  store i64 %i.dt, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %.val9.i44.cast.1 = inttoptr i64 %i.dt to ptr
  %.val10.i.1 = load ptr, ptr %i.du, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val9.i44.cast.1, i64 28 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 4, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 28
  %i.dy = load i16, ptr %i.dx, align 4, !noundef !4
  %i.dz = icmp ult i16 %i.dw, %i.dy
  br i1 %i.dz, label %.preheader.1.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit.1

.preheader.1.preheader:                           ; preds = %.lr.ph.1
  %i.ea = ptrtoint ptr %.val10.i.1 to i64
  store i64 %i.ea, ptr %i.ds, align 8
  %i.eb = icmp eq i64 %.sroa.05.054.1, 1
  br i1 %i.eb, label %._crit_edge79, label %.lr.ph78

.preheader.1:                                     ; preds = %.lr.ph78
  %i.ec = ptrtoint ptr %.val8.i46.1 to i64
  store i64 %i.ec, ptr %.sroa.0.0.i45.177, align 8
  %i.ed = icmp eq ptr %i.ee, %i.dp
  br i1 %i.ed, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader.1.preheader, %.preheader.1
  %.sroa.0.0.i45.177 = phi ptr [ %i.ee, %.preheader.1 ], [ %i.du, %.preheader.1.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i45.177, i64 -8 ; 3 uses
  %.val8.i46.1 = load ptr, ptr %i.ee, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %5 = load i16, ptr %i.dv, align 4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %.val8.i46.1, i64 28
  %i.eg = load i16, ptr %i.ef, align 4, !noundef !4
  %i.eh = icmp ult i16 %5, %i.eg
  br i1 %i.eh, label %.preheader.1, label %._crit_edge79

._crit_edge79:                                    ; preds = %.preheader.1, %.lr.ph78, %.preheader.1.preheader
  %.sroa.0.0.i45.lcssa.1 = phi ptr [ %i.dp, %.preheader.1.preheader ], [ %i.dp, %.preheader.1 ], [ %.sroa.0.0.i45.177, %.lr.ph78 ]
  store i64 %i.dt, ptr %.sroa.0.0.i45.lcssa.1, align 8, !noalias !1015
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit.1: ; preds = %._crit_edge79, %.lr.ph.1
  %i.ei = add nuw nsw i64 %.sroa.05.054.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ei, %i.dm
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.ej = add nsw i64 %1, -1                      ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ej
  %i.em = getelementptr i8, ptr %i.dp, i64 -8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.en = getelementptr i8, ptr %i.fm, i64 8      ; 2 uses
  %i.eo = getelementptr i8, ptr %i.fl, i64 8
  %i.ep = and i64 %1, 1
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.014.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.013.i = phi i64 [ %i.er, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.012.i = phi ptr [ %i.fc, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 2 uses
  %.sroa.011.011.i = phi ptr [ %i.fa, %.lr.ph.i ], [ %i.dp, %.loopexit.1 ] ; 2 uses
  %.sroa.015.010.i = phi ptr [ %i.fm, %.lr.ph.i ], [ %i.em, %.loopexit.1 ] ; 2 uses
  %.sroa.017.09.i = phi ptr [ %i.fl, %.lr.ph.i ], [ %i.el, %.loopexit.1 ] ; 2 uses
  %.sroa.019.08.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.ek, %.loopexit.1 ] ; 2 uses
  %i.er = add nuw nsw i64 %.sroa.04.013.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load ptr, ptr %.sroa.011.011.i, align 8, !alias.scope !1016, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.012.i, align 8, !alias.scope !1016, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val.i, i64 28
  %i.et = load i16, ptr %i.es, align 4, !noalias !1016, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i, i64 28
  %i.ev = load i16, ptr %i.eu, align 4, !noalias !1016, !noundef !4
  %i.ew = icmp ult i16 %i.et, %i.ev               ; 3 uses
  %i.ex = xor i1 %i.ew, true
  %.v.i43 = select i1 %i.ew, ptr %.sroa.011.0.val.i, ptr %.sroa.06.0.val.i
  %i.ey = ptrtoint ptr %.v.i43 to i64
  store i64 %i.ey, ptr %.sroa.0.014.i, align 8, !noalias !1017
  %i.ez = zext i1 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011.i, i64 %i.ez ; 4 uses
  %i.fb = zext i1 %i.ex to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012.i, i64 %i.fb ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i = load ptr, ptr %.sroa.017.09.i, align 8, !alias.scope !1016, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i = load ptr, ptr %.sroa.015.010.i, align 8, !alias.scope !1016, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val.i, i64 28
  %i.ff = load i16, ptr %i.fe, align 4, !noalias !1016, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val.i, i64 28
  %i.fh = load i16, ptr %i.fg, align 4, !noalias !1016, !noundef !4
  %i.fi = icmp ult i16 %i.ff, %i.fh               ; 3 uses
  %i.fj = xor i1 %i.fi, true
  %.v23.i = select i1 %i.fi, ptr %.sroa.015.0.val.i, ptr %.sroa.017.0.val.i
  %i.fk = ptrtoint ptr %.v23.i to i64
  store i64 %i.fk, ptr %.sroa.019.08.i, align 8, !noalias !1018
  %.neg.i.i = sext i1 %i.fj to i64
  %i.fl = getelementptr [8 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.fi to i64
  %i.fm = getelementptr [8 x i8], ptr %.sroa.015.010.i, i64 %.neg13.i.i ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.er, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.fo = icmp ult ptr %i.fc, %i.en               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.fo, ptr %i.fc, ptr %i.fa
  %i.fp = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8, !alias.scope !1016
  store i64 %i.fp, ptr %i.fd, align 8, !noalias !1016
  %i.fq = zext i1 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fq
  %i.fs = xor i1 %i.fo, true
  %i.ft = zext i1 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ft
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.fa, %._crit_edge.i ], [ %i.fu, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.fc, %._crit_edge.i ], [ %i.fr, %bb.j ]
  %i.fv = icmp ne ptr %.sroa.06.1.i, %i.en
  %i.fw = icmp ne ptr %.sroa.011.1.i, %i.eo
  %or.cond.i = select i1 %i.fv, i1 true, i1 %i.fw, !prof !11
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keytNCNvMB1j_NtB1j_11StatBuilder5build0E0EB1p_.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.fy, i1 false), !noalias !1019
  resume { ptr, i32 } %i.fx

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keytNCNvMB1j_NtB1j_11StatBuilder5build0E0EB1p_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit
  %.sroa.05.054 = phi i64 [ %i.gq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.054
  %.idx = shl nuw nsw i64 %.sroa.05.054, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.gb = load i64, ptr %i.fz, align 8            ; 3 uses
  store i64 %i.gb, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -8 ; 2 uses
  %.val9.i44.cast = inttoptr i64 %i.gb to ptr
  %.val10.i = load ptr, ptr %i.gc, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val9.i44.cast, i64 28 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %.val10.i, i64 28
  %i.gg = load i16, ptr %i.gf, align 4, !noundef !4
  %i.gh = icmp ult i16 %i.ge, %i.gg
  br i1 %i.gh, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.gi = ptrtoint ptr %.val10.i to i64
  store i64 %i.gi, ptr %i.ga, align 8
  %i.gj = icmp eq i64 %.sroa.05.054, 1
  br i1 %i.gj, label %._crit_edge, label %.lr.ph75

.preheader:                                       ; preds = %.lr.ph75
  %i.gk = ptrtoint ptr %.val8.i46 to i64
  store i64 %i.gk, ptr %.sroa.0.0.i4574, align 8
  %i.gl = icmp eq ptr %i.gm, %2
  br i1 %i.gl, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i4574 = phi ptr [ %i.gm, %.preheader ], [ %i.gc, %.preheader.preheader ] ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %.sroa.0.0.i4574, i64 -8 ; 3 uses
  %.val8.i46 = load ptr, ptr %i.gm, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %6 = load i16, ptr %i.gd, align 4, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %.val8.i46, i64 28
  %i.go = load i16, ptr %i.gn, align 4, !noundef !4
  %i.gp = icmp ult i16 %6, %i.go
  br i1 %i.gp, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph75, %.preheader.preheader
  %.sroa.0.0.i45.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4574, %.lr.ph75 ]
  store i64 %i.gb, ptr %.sroa.0.0.i45.lcssa, align 8, !noalias !1015
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.gq = add nuw nsw i64 %.sroa.05.054, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB37_11collections5btree3mapINtB3U_8BTreeMapB1t_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4X_8adapters5chain5ChainINtNtB5U_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1t_ENCNvMNtB2i_9glyph_mapNtB8o_8GlyphMap11reverse_map0EIB6m_IB6D_tB1t_ENCB8l_s_0EEE0E0EB2k_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [30 x i8], align 2          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3I_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4L_8adapters5chain5ChainINtNtB5I_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1h_ENCNvMNtB26_9glyph_mapNtB8c_8GlyphMap11reverse_map0EIB6a_IB6r_tB1h_ENCB89_s_0EEE0E0EB28_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8.i = load i16, ptr %i.f, align 8, !noundef !4
  %.val9.i = load i16, ptr %0, align 8, !noundef !4
  %i.g = icmp ult i16 %.val8.i, %.val9.i          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val6.i = load i16, ptr %i.h, align 8, !noundef !4
  %.val7.i = load i16, ptr %i.i, align 8, !noundef !4
  %i.j = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i = load i16, ptr %i.q, align 8, !noundef !4
  %.val5.i = load i16, ptr %i.l, align 8, !noundef !4
  %i.t = icmp ult i16 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i16, ptr %i.s, align 8, !noundef !4
  %.val3.i = load i16, ptr %i.o, align 8, !noundef !4
  %i.u = icmp ult i16 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !4
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !4
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !4
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !4 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !4
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !4 ; 3 uses
  %.val.i = load i16, ptr %i.aa, align 8, !noundef !4
  %.val1.i = load i16, ptr %i.y, align 8, !noundef !4
  %i.ab = icmp ult i16 %.val.i, %.val1.i          ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !4
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.val8.i26 = load i16, ptr %i.aj, align 8, !noundef !4
  %.val9.i27 = load i16, ptr %i.ah, align 8, !noundef !4
  %i.ak = icmp ult i16 %.val8.i26, %.val9.i27     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.val6.i28 = load i16, ptr %i.al, align 8, !noundef !4
  %.val7.i29 = load i16, ptr %i.am, align 8, !noundef !4
  %i.an = icmp ult i16 %.val6.i28, %.val7.i29     ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i30 = load i16, ptr %i.au, align 8, !noundef !4
  %.val5.i31 = load i16, ptr %i.ap, align 8, !noundef !4
  %i.ax = icmp ult i16 %.val4.i30, %.val5.i31     ; 3 uses
  %.val2.i32 = load i16, ptr %i.aw, align 8, !noundef !4
  %.val3.i33 = load i16, ptr %i.as, align 8, !noundef !4
  %i.ay = icmp ult i16 %.val2.i32, %.val3.i33     ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !4
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !4
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !4 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !4
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !4 ; 3 uses
  %.val.i34 = load i16, ptr %i.be, align 8, !noundef !4
  %.val1.i35 = load i16, ptr %i.bc, align 8, !noundef !4
  %i.bf = icmp ult i16 %.val.i34, %.val1.i35      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !4
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit, %bb.g
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [32 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0, %i.bn
  br i1 %i.br, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1
  %.sroa.05.046.1 = phi i64 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.05.046.1 ; 2 uses
  %.idx78 = shl nuw nsw i64 %.sroa.05.046.1, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx78 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32 ; 3 uses
  %.val9.i36.1 = load i16, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %.val10.i.1 = load i16, ptr %i.bu, align 8, !noundef !4
  %i.bv = icmp ult i16 %.val9.i36.1, %.val10.i.1
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %i.bw, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false)
  %i.bx = icmp eq i64 %.sroa.05.046.1, 1
  br i1 %i.bx, label %._crit_edge74, label %.lr.ph73

bb.i:                                             ; preds = %.lr.ph73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37.171, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false)
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37.171 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i37.171, i64 -32 ; 4 uses
  %.val8.i38.1 = load i16, ptr %i.bz, align 2, !noundef !4
  %i.ca = icmp ult i16 %.val9.i36.1, %.val8.i38.1
  br i1 %i.ca, label %bb.i, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.i, %.lr.ph73, %bb.h
  %.sroa.0.0.i37.lcssa.1 = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i37.171, %.lr.ph73 ] ; 2 uses
  store i16 %.val9.i36.1, ptr %.sroa.0.0.i37.lcssa.1, align 8, !noalias !1036
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa.1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.cb = add nuw nsw i64 %.sroa.05.046.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1, %.loopexit
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cg = getelementptr i8, ptr %i.cv, i64 32     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cu, i64 32
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.bq, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.ce, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cd, %.loopexit.1 ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i16, ptr %.sroa.011.07.i, align 2, !alias.scope !1037, !noundef !4
  %.sroa.06.0.val.i = load i16, ptr %.sroa.06.08.i, align 2, !alias.scope !1037, !noundef !4
  %i.cl = icmp ult i16 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.cl, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.cm = xor i1 %i.cl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i, i64 32, i1 false), !noalias !1038
  %i.cn = zext i1 %i.cl to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %i.cn ; 4 uses
  %i.cp = zext i1 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %.sroa.017.0.val.i = load i16, ptr %.sroa.017.05.i, align 2, !alias.scope !1037, !noundef !4
  %.sroa.015.0.val.i = load i16, ptr %.sroa.015.06.i, align 2, !alias.scope !1037, !noundef !4
  %i.cs = icmp ult i16 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.cs, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.ct = xor i1 %i.cs, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !1039
  %.neg.i.i = sext i1 %i.ct to i64
  %i.cu = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cs to i64
  %i.cv = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.cx = icmp ult ptr %i.cq, %i.cg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cx, ptr %i.cq, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cy
  %i.da = xor i1 %i.cx, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.db
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.co, %._crit_edge.i ], [ %i.dc, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cq, %._crit_edge.i ], [ %i.cz, %bb.j ]
  %i.dd = icmp ne ptr %.sroa.06.1.i, %i.cg
  %i.de = icmp ne ptr %.sroa.011.1.i, %i.ch
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !11
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3I_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4L_8adapters5chain5ChainINtNtB5I_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1h_ENCNvMNtB26_9glyph_mapNtB8c_8GlyphMap11reverse_map0EIB6a_IB6r_tB1h_ENCB89_s_0EEE0E0EB28_.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = shl nuw nsw i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dg, i1 false), !noalias !1040
  resume { ptr, i32 } %i.df

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3I_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4L_8adapters5chain5ChainINtNtB5I_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1h_ENCNvMNtB26_9glyph_mapNtB8c_8GlyphMap11reverse_map0EIB6a_IB6r_tB1h_ENCB89_s_0EEE0E0EB28_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit
  %.sroa.05.046 = phi i64 [ %i.dq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.046 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.05.046, 5
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -32 ; 3 uses
  %.val9.i36 = load i16, ptr %i.di, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i16, ptr %i.dj, align 8, !noundef !4
  %i.dk = icmp ult i16 %.val9.i36, %.val10.i
  br i1 %i.dk, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %i.dl, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false)
  %i.dm = icmp eq i64 %.sroa.05.046, 1
  br i1 %i.dm, label %._crit_edge, label %.lr.ph68

bb.o:                                             ; preds = %.lr.ph68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i3767, ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.dn = icmp eq ptr %i.do, %2
  br i1 %i.dn, label %._crit_edge, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i3767 = phi ptr [ %i.do, %bb.o ], [ %i.dj, %bb.n ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i3767, i64 -32 ; 4 uses
  %.val8.i38 = load i16, ptr %i.do, align 2, !noundef !4
  %i.dp = icmp ult i16 %.val9.i36, %.val8.i38
  br i1 %i.dp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph68, %bb.n
  %.sroa.0.0.i37.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i3767, %.lr.ph68 ] ; 2 uses
  store i16 %.val9.i36, ptr %.sroa.0.0.i37.lcssa, align 8, !noalias !1036
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dq = add nuw nsw i64 %.sroa.05.046, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3d_8BTreeMapB1t_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4d_8adapters6filter6FilterINtNtB5a_3map3MapINtB3d_4IterB1t_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB6j_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB82_19ClassDefBuilderImplIB47_B1s_E9from_iterB5D_E0EE0E0EB6p_(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtB31_4IterB1h_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB67_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7Q_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB6d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapB1a_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB3U_8adapters6filter6FilterINtNtB4R_3map3MapINtB2U_4IterB1a_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB60_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7J_19ClassDefBuilderImplIB3O_B19_E9from_iterB5k_E0EE0E0EB66_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapB1a_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB3U_8adapters6filter6FilterINtNtB4R_3map3MapINtB2U_4IterB1a_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB60_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7J_19ClassDefBuilderImplIB3O_B19_E9from_iterB5k_E0EE0E0EB66_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i = load i16, ptr %i.k, align 2, !noundef !4
  %.val9.i = load i16, ptr %0, align 2, !noundef !4
  %i.l = icmp ult i16 %.val8.i, %.val9.i          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i16, ptr %i.m, align 2, !noundef !4
  %.val7.i = load i16, ptr %i.n, align 2, !noundef !4
  %i.o = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i = load i16, ptr %i.v, align 2, !noundef !4
  %.val5.i = load i16, ptr %i.q, align 2, !noundef !4
  %i.y = icmp ult i16 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i16, ptr %i.x, align 2, !noundef !4
  %.val3.i = load i16, ptr %i.t, align 2, !noundef !4
  %i.z = icmp ult i16 %.val2.i, %.val3.i          ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i = load i16, ptr %i.af, align 2, !noundef !4
  %.val1.i = load i16, ptr %i.ad, align 2, !noundef !4
  %i.ag = icmp ult i16 %.val.i, %.val1.i          ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  %i.aj = load i32, ptr %i.aa, align 2
  store i32 %i.aj, ptr %2, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ah, align 2
  store i32 %i.al, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.ai, align 2
  store i32 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ab, align 2
  store i32 %i.ap, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.val8.i26 = load i16, ptr %i.as, align 2, !noundef !4
  %.val9.i27 = load i16, ptr %i.aq, align 2, !noundef !4
  %i.at = icmp ult i16 %.val8.i26, %.val9.i27     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val6.i28 = load i16, ptr %i.au, align 2, !noundef !4
  %.val7.i29 = load i16, ptr %i.av, align 2, !noundef !4
  %i.aw = icmp ult i16 %.val6.i28, %.val7.i29     ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i30 = load i16, ptr %i.bd, align 2, !noundef !4
  %.val5.i31 = load i16, ptr %i.ay, align 2, !noundef !4
  %i.bg = icmp ult i16 %.val4.i30, %.val5.i31     ; 3 uses
  %.val2.i32 = load i16, ptr %i.bf, align 2, !noundef !4
  %.val3.i33 = load i16, ptr %i.bb, align 2, !noundef !4
  %i.bh = icmp ult i16 %.val2.i32, %.val3.i33     ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %.val.i34 = load i16, ptr %i.bn, align 2, !noundef !4
  %.val1.i35 = load i16, ptr %i.bl, align 2, !noundef !4
  %i.bo = icmp ult i16 %.val.i34, %.val1.i35      ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.br = load i32, ptr %i.bi, align 2
  store i32 %i.br, ptr %i.ar, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bt = load i32, ptr %i.bp, align 2
  store i32 %i.bt, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bv = load i32, ptr %i.bq, align 2
  store i32 %i.bv, ptr %i.bu, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bx = load i32, ptr %i.bj, align 2
  store i32 %i.bx, ptr %i.bw, align 2
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i32, ptr %0, align 2
  store i32 %i.by, ptr %2, align 2
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.cb = load i32, ptr %i.bz, align 2
  store i32 %i.cb, ptr %i.ca, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit, %bb.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0, %i.cc
  br i1 %i.cg, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1
  %.sroa.05.046.1 = phi i64 [ %i.ct, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.sroa.05.046.1
  %.idx78 = shl nuw nsw i64 %.sroa.05.046.1, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx78 ; 3 uses
  %i.cj = load i32, ptr %i.ch, align 2            ; 3 uses
  store i32 %i.cj, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 3 uses
  %i.cl = trunc i32 %i.cj to i16                  ; 2 uses
  %.val10.i.1 = load i16, ptr %i.ck, align 2, !noundef !4
  %i.cm = icmp ugt i16 %.val10.i.1, %i.cl
  br i1 %i.cm, label %.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1

.preheader:                                       ; preds = %.lr.ph.1
  %i.cn = load i32, ptr %i.ck, align 2
  store i32 %i.cn, ptr %i.ci, align 2
  %i.co = icmp eq i64 %.sroa.05.046.1, 1
  br i1 %i.co, label %._crit_edge74, label %.lr.ph73

bb.j:                                             ; preds = %.lr.ph73
  %i.cp = load i32, ptr %i.cr, align 2
  store i32 %i.cp, ptr %.sroa.0.0.i37.172, align 2
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader, %bb.j
  %.sroa.0.0.i37.172 = phi ptr [ %i.cr, %bb.j ], [ %i.ck, %.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i37.172, i64 -4 ; 4 uses
  %.val8.i38.1 = load i16, ptr %i.cr, align 2, !noundef !4
  %i.cs = icmp ugt i16 %.val8.i38.1, %i.cl
  br i1 %i.cs, label %bb.j, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.j, %.lr.ph73, %.preheader
  %.sroa.0.0.i37.lcssa.1 = phi ptr [ %i.cf, %.preheader ], [ %i.cf, %bb.j ], [ %.sroa.0.0.i37.172, %.lr.ph73 ]
  store i32 %i.cj, ptr %.sroa.0.0.i37.lcssa.1, align 2, !noalias !1057
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.ct = add nuw nsw i64 %.sroa.05.046.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cf, i64 -4
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cy = getelementptr i8, ptr %i.dp, i64 4      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.do, i64 4
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.cx, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.do, %.lr.ph.i ], [ %i.cw, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.cv, %.loopexit.1 ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i16, ptr %.sroa.011.07.i, align 2, !alias.scope !1058, !noundef !4
  %.sroa.06.0.val.i = load i16, ptr %.sroa.06.08.i, align 2, !alias.scope !1058, !noundef !4
  %i.dd = icmp ult i16 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.dd, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.de = xor i1 %i.dd, true
  %i.df = load i32, ptr %..i21.i, align 2, !alias.scope !1058, !noalias !1059
  store i32 %i.df, ptr %.sroa.0.010.i, align 2, !noalias !1060
  %i.dg = zext i1 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.07.i, i64 %i.dg ; 4 uses
  %i.di = zext i1 %i.de to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.08.i, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.sroa.017.0.val.i = load i16, ptr %.sroa.017.05.i, align 2, !alias.scope !1058, !noundef !4
  %.sroa.015.0.val.i = load i16, ptr %.sroa.015.06.i, align 2, !alias.scope !1058, !noundef !4
  %i.dl = icmp ult i16 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.dl, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.dm = xor i1 %i.dl, true
  %i.dn = load i32, ptr %..i.i, align 2, !alias.scope !1058, !noalias !1061
  store i32 %i.dn, ptr %.sroa.019.04.i, align 2, !noalias !1062
  %.neg.i.i = sext i1 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dl to i64
  %i.dp = getelementptr [4 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -4
  %exitcond.not.i = icmp eq i64 %i.dc, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.dr = icmp ult ptr %i.dj, %i.cy               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dr, ptr %i.dj, ptr %i.dh
  %i.ds = load i32, ptr %.sroa.06.0..sroa.011.0.i, align 2, !alias.scope !1058
  store i32 %i.ds, ptr %i.dk, align 2, !noalias !1058
  %i.dt = zext i1 %i.dr to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = xor i1 %i.dr, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dh, %._crit_edge.i ], [ %i.dx, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.dj, %._crit_edge.i ], [ %i.du, %bb.k ]
  %i.dy = icmp ne ptr %.sroa.06.1.i, %i.cy
  %i.dz = icmp ne ptr %.sroa.011.1.i, %i.cz
  %or.cond.i = select i1 %i.dy, i1 true, i1 %i.dz, !prof !11
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtB31_4IterB1h_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB67_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7Q_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB6d_.exit, !prof !11

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = shl nuw nsw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %2, i64 %i.eb, i1 false), !noalias !1063
  resume { ptr, i32 } %i.ea

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtB31_4IterB1h_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB67_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7Q_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB6d_.exit: ; preds = %bb.l, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit
  %.sroa.05.046 = phi i64 [ %i.eo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.046
  %.idx = shl nuw nsw i64 %.sroa.05.046, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 2            ; 3 uses
  store i32 %i.ee, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -4 ; 3 uses
  %i.eg = trunc i32 %i.ee to i16                  ; 2 uses
  %.val10.i = load i16, ptr %i.ef, align 2, !noundef !4
  %i.eh = icmp ugt i16 %.val10.i, %i.eg
  br i1 %i.eh, label %.preheader63, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit

.preheader63:                                     ; preds = %.lr.ph
  %i.ei = load i32, ptr %i.ef, align 2
  store i32 %i.ei, ptr %i.ed, align 2
  %i.ej = icmp eq i64 %.sroa.05.046, 1
  br i1 %i.ej, label %._crit_edge, label %.lr.ph69

bb.o:                                             ; preds = %.lr.ph69
  %i.ek = load i32, ptr %i.em, align 2
  store i32 %i.ek, ptr %.sroa.0.0.i3768, align 2
  %i.el = icmp eq ptr %i.em, %2
  br i1 %i.el, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader63, %bb.o
  %.sroa.0.0.i3768 = phi ptr [ %i.em, %bb.o ], [ %i.ef, %.preheader63 ] ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.sroa.0.0.i3768, i64 -4 ; 4 uses
  %.val8.i38 = load i16, ptr %i.em, align 2, !noundef !4
  %i.en = icmp ugt i16 %.val8.i38, %i.eg
  br i1 %i.en, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph69, %.preheader63
  %.sroa.0.0.i37.lcssa = phi ptr [ %2, %.preheader63 ], [ %2, %bb.o ], [ %.sroa.0.0.i3768, %.lr.ph69 ]
  store i32 %i.ee, ptr %.sroa.0.0.i37.lcssa, align 2, !noalias !1057
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.eo = add nuw nsw i64 %.sroa.05.046, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3d_8BTreeMapB1t_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4d_8adapters6filter6FilterINtNtB5a_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1t_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7V_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB9s_19ClassDefBuilderImplIB47_B1s_E9from_iterB5D_E0EE0E0EB81_(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1h_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7J_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB9g_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB7P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapB1a_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB3U_8adapters6filter6FilterINtNtB4R_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1a_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7C_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB99_19ClassDefBuilderImplIB3O_B19_E9from_iterB5k_E0EE0E0EB7I_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapB1a_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB3U_8adapters6filter6FilterINtNtB4R_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1a_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7C_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB99_19ClassDefBuilderImplIB3O_B19_E9from_iterB5k_E0EE0E0EB7I_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i = load i16, ptr %i.k, align 2, !noundef !4
  %.val9.i = load i16, ptr %0, align 2, !noundef !4
  %i.l = icmp ult i16 %.val8.i, %.val9.i          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i16, ptr %i.m, align 2, !noundef !4
  %.val7.i = load i16, ptr %i.n, align 2, !noundef !4
  %i.o = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i = load i16, ptr %i.v, align 2, !noundef !4
  %.val5.i = load i16, ptr %i.q, align 2, !noundef !4
  %i.y = icmp ult i16 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i16, ptr %i.x, align 2, !noundef !4
  %.val3.i = load i16, ptr %i.t, align 2, !noundef !4
  %i.z = icmp ult i16 %.val2.i, %.val3.i          ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i = load i16, ptr %i.af, align 2, !noundef !4
  %.val1.i = load i16, ptr %i.ad, align 2, !noundef !4
  %i.ag = icmp ult i16 %.val.i, %.val1.i          ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  %i.aj = load i32, ptr %i.aa, align 2
  store i32 %i.aj, ptr %2, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ah, align 2
  store i32 %i.al, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.ai, align 2
  store i32 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ab, align 2
  store i32 %i.ap, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.val8.i26 = load i16, ptr %i.as, align 2, !noundef !4
  %.val9.i27 = load i16, ptr %i.aq, align 2, !noundef !4
  %i.at = icmp ult i16 %.val8.i26, %.val9.i27     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val6.i28 = load i16, ptr %i.au, align 2, !noundef !4
  %.val7.i29 = load i16, ptr %i.av, align 2, !noundef !4
  %i.aw = icmp ult i16 %.val6.i28, %.val7.i29     ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i30 = load i16, ptr %i.bd, align 2, !noundef !4
  %.val5.i31 = load i16, ptr %i.ay, align 2, !noundef !4
  %i.bg = icmp ult i16 %.val4.i30, %.val5.i31     ; 3 uses
  %.val2.i32 = load i16, ptr %i.bf, align 2, !noundef !4
  %.val3.i33 = load i16, ptr %i.bb, align 2, !noundef !4
  %i.bh = icmp ult i16 %.val2.i32, %.val3.i33     ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %.val.i34 = load i16, ptr %i.bn, align 2, !noundef !4
  %.val1.i35 = load i16, ptr %i.bl, align 2, !noundef !4
  %i.bo = icmp ult i16 %.val.i34, %.val1.i35      ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.br = load i32, ptr %i.bi, align 2
  store i32 %i.br, ptr %i.ar, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bt = load i32, ptr %i.bp, align 2
  store i32 %i.bt, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bv = load i32, ptr %i.bq, align 2
  store i32 %i.bv, ptr %i.bu, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bx = load i32, ptr %i.bj, align 2
  store i32 %i.bx, ptr %i.bw, align 2
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i32, ptr %0, align 2
  store i32 %i.by, ptr %2, align 2
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.cb = load i32, ptr %i.bz, align 2
  store i32 %i.cb, ptr %i.ca, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit, %bb.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0, %i.cc
  br i1 %i.cg, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit.1
  %.sroa.05.046.1 = phi i64 [ %i.ct, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.sroa.05.046.1
  %.idx78 = shl nuw nsw i64 %.sroa.05.046.1, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx78 ; 3 uses
  %i.cj = load i32, ptr %i.ch, align 2            ; 3 uses
  store i32 %i.cj, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 3 uses
  %i.cl = trunc i32 %i.cj to i16                  ; 2 uses
  %.val10.i.1 = load i16, ptr %i.ck, align 2, !noundef !4
  %i.cm = icmp ugt i16 %.val10.i.1, %i.cl
  br i1 %i.cm, label %.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit.1

.preheader:                                       ; preds = %.lr.ph.1
  %i.cn = load i32, ptr %i.ck, align 2
  store i32 %i.cn, ptr %i.ci, align 2
  %i.co = icmp eq i64 %.sroa.05.046.1, 1
  br i1 %i.co, label %._crit_edge74, label %.lr.ph73

bb.j:                                             ; preds = %.lr.ph73
  %i.cp = load i32, ptr %i.cr, align 2
  store i32 %i.cp, ptr %.sroa.0.0.i37.172, align 2
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader, %bb.j
  %.sroa.0.0.i37.172 = phi ptr [ %i.cr, %bb.j ], [ %i.ck, %.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i37.172, i64 -4 ; 4 uses
  %.val8.i38.1 = load i16, ptr %i.cr, align 2, !noundef !4
  %i.cs = icmp ugt i16 %.val8.i38.1, %i.cl
  br i1 %i.cs, label %bb.j, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.j, %.lr.ph73, %.preheader
  %.sroa.0.0.i37.lcssa.1 = phi ptr [ %i.cf, %.preheader ], [ %i.cf, %bb.j ], [ %.sroa.0.0.i37.172, %.lr.ph73 ]
  store i32 %i.cj, ptr %.sroa.0.0.i37.lcssa.1, align 2, !noalias !1080
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.ct = add nuw nsw i64 %.sroa.05.046.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit.1, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cf, i64 -4
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cy = getelementptr i8, ptr %i.dp, i64 4      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.do, i64 4
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.cx, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.do, %.lr.ph.i ], [ %i.cw, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.cv, %.loopexit.1 ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i16, ptr %.sroa.011.07.i, align 2, !alias.scope !1081, !noundef !4
  %.sroa.06.0.val.i = load i16, ptr %.sroa.06.08.i, align 2, !alias.scope !1081, !noundef !4
  %i.dd = icmp ult i16 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.dd, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.de = xor i1 %i.dd, true
  %i.df = load i32, ptr %..i21.i, align 2, !alias.scope !1081, !noalias !1082
  store i32 %i.df, ptr %.sroa.0.010.i, align 2, !noalias !1083
  %i.dg = zext i1 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.07.i, i64 %i.dg ; 4 uses
  %i.di = zext i1 %i.de to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.08.i, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.sroa.017.0.val.i = load i16, ptr %.sroa.017.05.i, align 2, !alias.scope !1081, !noundef !4
  %.sroa.015.0.val.i = load i16, ptr %.sroa.015.06.i, align 2, !alias.scope !1081, !noundef !4
  %i.dl = icmp ult i16 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.dl, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.dm = xor i1 %i.dl, true
  %i.dn = load i32, ptr %..i.i, align 2, !alias.scope !1081, !noalias !1084
  store i32 %i.dn, ptr %.sroa.019.04.i, align 2, !noalias !1085
  %.neg.i.i = sext i1 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dl to i64
  %i.dp = getelementptr [4 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -4
  %exitcond.not.i = icmp eq i64 %i.dc, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.dr = icmp ult ptr %i.dj, %i.cy               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dr, ptr %i.dj, ptr %i.dh
  %i.ds = load i32, ptr %.sroa.06.0..sroa.011.0.i, align 2, !alias.scope !1081
  store i32 %i.ds, ptr %i.dk, align 2, !noalias !1081
  %i.dt = zext i1 %i.dr to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dt
  %i.dv = xor i1 %i.dr, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dh, %._crit_edge.i ], [ %i.dx, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.dj, %._crit_edge.i ], [ %i.du, %bb.k ]
  %i.dy = icmp ne ptr %.sroa.06.1.i, %i.cy
  %i.dz = icmp ne ptr %.sroa.011.1.i, %i.cz
  %or.cond.i = select i1 %i.dy, i1 true, i1 %i.dz, !prof !11
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1h_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7J_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB9g_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB7P_.exit, !prof !11

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = shl nuw nsw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %2, i64 %i.eb, i1 false), !noalias !1086
  resume { ptr, i32 } %i.ea

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1h_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7J_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB9g_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB7P_.exit: ; preds = %bb.l, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit
  %.sroa.05.046 = phi i64 [ %i.eo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.046
  %.idx = shl nuw nsw i64 %.sroa.05.046, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 2            ; 3 uses
  store i32 %i.ee, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -4 ; 3 uses
  %i.eg = trunc i32 %i.ee to i16                  ; 2 uses
  %.val10.i = load i16, ptr %i.ef, align 2, !noundef !4
  %i.eh = icmp ugt i16 %.val10.i, %i.eg
  br i1 %i.eh, label %.preheader63, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit

.preheader63:                                     ; preds = %.lr.ph
  %i.ei = load i32, ptr %i.ef, align 2
  store i32 %i.ei, ptr %i.ed, align 2
  %i.ej = icmp eq i64 %.sroa.05.046, 1
  br i1 %i.ej, label %._crit_edge, label %.lr.ph69

bb.o:                                             ; preds = %.lr.ph69
  %i.ek = load i32, ptr %i.em, align 2
  store i32 %i.ek, ptr %.sroa.0.0.i3768, align 2
  %i.el = icmp eq ptr %i.em, %2
  br i1 %i.el, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader63, %bb.o
  %.sroa.0.0.i3768 = phi ptr [ %i.em, %bb.o ], [ %i.ef, %.preheader63 ] ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.sroa.0.0.i3768, i64 -4 ; 4 uses
  %.val8.i38 = load i16, ptr %i.em, align 2, !noundef !4
  %i.en = icmp ugt i16 %.val8.i38, %i.eg
  br i1 %i.en, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph69, %.preheader63
  %.sroa.0.0.i37.lcssa = phi ptr [ %2, %.preheader63 ], [ %2, %bb.o ], [ %.sroa.0.0.i3768, %.lr.ph69 ]
  store i32 %i.ee, ptr %.sroa.0.0.i37.lcssa, align 2, !noalias !1080
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.eo = add nuw nsw i64 %.sroa.05.046, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1x_7lookups8LookupIdNtB38_14PositionLookupEEENCINvMNtB2D_5sliceSB1s_11sort_by_keyB1t_NCNvMs1_B1v_NtB1v_8MergeCtx13finalize_gpos0E0EB1z_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [24 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1l_7lookups8LookupIdNtB2W_14PositionLookupEEENCINvMNtB2r_5sliceSB1g_11sort_by_keyB1h_NCNvMs1_B1j_NtB1j_8MergeCtx13finalize_gpos0E0EB1n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1e_7lookups8LookupIdNtB2P_14PositionLookupEEENCINvMNtB2k_5sliceSB19_11sort_by_keyB1a_NCNvMs1_B1c_NtB1c_8MergeCtx13finalize_gpos0E0EB1g_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1e_7lookups8LookupIdNtB2P_14PositionLookupEEENCINvMNtB2k_5sliceSB19_11sort_by_keyB1a_NCNvMs1_B1c_NtB1c_8MergeCtx13finalize_gpos0E0EB1g_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [48 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit.1
  %.sroa.05.054.1 = phi i64 [ %i.an, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.05.054.1 ; 2 uses
  %.idx105 = mul nuw nsw i64 %.sroa.05.054.1, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx105 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %.sroa.0.0.copyload.i.i26.1 = load i64, ptr %i.n, align 8, !alias.scope !1140, !noalias !1139 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i27.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0.copyload.i.i28.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i27.1, align 8, !alias.scope !1140, !noalias !1139 ; 11 uses
  %.sroa.5.0..sroa_idx.i.i29.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.0.copyload.i.i30.1 = load i64, ptr %.sroa.5.0..sroa_idx.i.i29.1, align 8, !alias.scope !1140, !noalias !1139 ; 3 uses
  %.sroa.01.0.copyload.i.i31.1 = load i64, ptr %i.o, align 8, !alias.scope !1141, !noalias !1138 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i32.1 = getelementptr inbounds i8, ptr %i.n, i64 -40
  %.sroa.42.0.copyload.i.i33.1 = load i64, ptr %.sroa.42.0..sroa_idx.i.i32.1, align 8, !alias.scope !1141, !noalias !1138 ; 5 uses
  %.sroa.53.0..sroa_idx.i.i34.1 = getelementptr inbounds i8, ptr %i.n, i64 -32
  %.sroa.53.0.copyload.i.i35.1 = load i64, ptr %.sroa.53.0..sroa_idx.i.i34.1, align 8, !alias.scope !1141, !noalias !1138
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.0.0.copyload.i.i26.1, i64 %.sroa.01.0.copyload.i.i31.1)
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i.i26.1, %.sroa.01.0.copyload.i.i31.1
  br i1 %i.q, label %bb.h, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1

bb.h:                                             ; preds = %.lr.ph.1
  switch i64 %.sroa.0.0.copyload.i.i26.1, label %default.unreachable.i.i.i42 [
    i64 0, label %bb.m
    i64 1, label %bb.l
    i64 2, label %bb.k
    i64 3, label %bb.j
    i64 4, label %bb.i
    i64 5, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41.1
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i.i33.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1

bb.j:                                             ; preds = %bb.h
  %i.s = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i.i33.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1

bb.k:                                             ; preds = %bb.h
  %i.t = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i.i33.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1

bb.l:                                             ; preds = %bb.h
  %i.u = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i.i33.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1

bb.m:                                             ; preds = %bb.h
  %i.v = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i.i33.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.1
  %.sroa.0.0.i.i.i.i.i.i37.1 = phi i8 [ %i.v, %bb.m ], [ %i.p, %.lr.ph.1 ], [ %i.u, %bb.l ], [ %i.t, %bb.k ], [ %i.s, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.w = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i37.1, 0
  br i1 %i.w, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38.1

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41.1: ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1, %bb.h
  %i.x = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.5.0.copyload.i.i30.1, i64 %.sroa.53.0.copyload.i.i35.1)
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38.1: ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41.1, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1
  %.sroa.0.0.i.i.i.i.i39.1 = phi i8 [ %i.x, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41.1 ], [ %.sroa.0.0.i.i.i.i.i.i37.1, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36.1 ]
  %i.y = icmp slt i8 %.sroa.0.0.i.i.i.i.i39.1, 0
  br i1 %i.y, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit.1

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.aa = icmp eq i64 %.sroa.05.054.1, 1
  br i1 %i.aa, label %._crit_edge101, label %.lr.ph100

bb.o:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i40.198, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  %i.ab = icmp eq ptr %i.ac, %i.k
  br i1 %i.ab, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.n, %bb.o
  %.sroa.0.0.i40.198 = phi ptr [ %i.ac, %bb.o ], [ %i.o, %bb.n ] ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.i40.198, i64 -48 ; 4 uses
  %.sroa.01.0.copyload.i13.i.1 = load i64, ptr %i.ac, align 8, !alias.scope !1142, !noalias !1143 ; 2 uses
  %.sroa.42.0..sroa_idx.i14.i.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i40.198, i64 -40
  %.sroa.42.0.copyload.i15.i.1 = load i64, ptr %.sroa.42.0..sroa_idx.i14.i.1, align 8, !alias.scope !1142, !noalias !1143 ; 5 uses
  %.sroa.53.0..sroa_idx.i16.i.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i40.198, i64 -32
  %.sroa.53.0.copyload.i17.i.1 = load i64, ptr %.sroa.53.0..sroa_idx.i16.i.1, align 8, !alias.scope !1142, !noalias !1143
  %i.ad = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.0.0.copyload.i.i26.1, i64 %.sroa.01.0.copyload.i13.i.1)
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i26.1, %.sroa.01.0.copyload.i13.i.1
  br i1 %i.ae, label %bb.p, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1

bb.p:                                             ; preds = %.lr.ph100
  switch i64 %.sroa.0.0.copyload.i.i26.1, label %default.unreachable.i.i22.i [
    i64 0, label %bb.u
    i64 1, label %bb.t
    i64 2, label %bb.s
    i64 3, label %bb.r
    i64 4, label %bb.q
    i64 5, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i.1
  ]

bb.q:                                             ; preds = %bb.p
  %i.af = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i15.i.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1

bb.r:                                             ; preds = %bb.p
  %i.ag = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i15.i.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1

bb.s:                                             ; preds = %bb.p
  %i.ah = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i15.i.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1

bb.t:                                             ; preds = %bb.p
  %i.ai = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i15.i.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1

bb.u:                                             ; preds = %bb.p
  %i.aj = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28.1, i64 %.sroa.42.0.copyload.i15.i.1)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %.lr.ph100
  %.sroa.0.0.i.i.i.i.i19.i.1 = phi i8 [ %i.aj, %bb.u ], [ %i.ad, %.lr.ph100 ], [ %i.ai, %bb.t ], [ %i.ah, %bb.s ], [ %i.ag, %bb.r ], [ %i.af, %bb.q ] ; 2 uses
  %i.ak = icmp eq i8 %.sroa.0.0.i.i.i.i.i19.i.1, 0
  br i1 %i.ak, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i.1, label %bb.v

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i.1: ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1, %bb.p
  %i.al = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.5.0.copyload.i.i30.1, i64 %.sroa.53.0.copyload.i17.i.1)
  br label %bb.v

bb.v:                                             ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i.1, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1
  %.sroa.0.0.i.i.i.i20.i.1 = phi i8 [ %i.al, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i.1 ], [ %.sroa.0.0.i.i.i.i.i19.i.1, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i.1 ]
  %i.am = icmp slt i8 %.sroa.0.0.i.i.i.i20.i.1, 0
  br i1 %i.am, label %bb.o, label %._crit_edge101

._crit_edge101:                                   ; preds = %bb.o, %bb.v, %bb.n
  %.sroa.0.0.i40.lcssa.1 = phi ptr [ %i.k, %bb.n ], [ %i.k, %bb.o ], [ %.sroa.0.0.i40.198, %bb.v ] ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i26.1, ptr %.sroa.0.0.i40.lcssa.1, align 8, !noalias !1144
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40.lcssa.1, i64 8
  store i64 %.sroa.4.0.copyload.i.i28.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1144
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40.lcssa.1, i64 16
  store i64 %.sroa.5.0.copyload.i.i30.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1144
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40.lcssa.1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit.1: ; preds = %._crit_edge101, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38.1
  %i.an = add nuw nsw i64 %.sroa.05.054.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.an, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit.1, %.loopexit
  %i.ao = add nsw i64 %1, -1                      ; 2 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.ao
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1x_7lookups8LookupIdNtB38_14PositionLookupEEENCINvMNtB2D_5sliceSB1s_11sort_by_keyB1t_NCNvMs1_B1v_NtB1v_8MergeCtx13finalize_gpos0E0EB1z_:bb.a
  %exitcond.not.i = icmp eq i64 %i.aw, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.ai:                                            ; preds = %._crit_edge.i
  %i.bz = icmp ult ptr %i.bk, %i.as               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bz, ptr %i.bk, ptr %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.06.0..sroa.011.0.i, i64 48, i1 false)
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %i.ca
  %i.cc = xor i1 %i.bz, true
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %i.cd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bi, %._crit_edge.i ], [ %i.ce, %bb.ai ]
  %.sroa.06.1.i = phi ptr [ %i.bk, %._crit_edge.i ], [ %i.cb, %bb.ai ]
  %i.cf = icmp ne ptr %.sroa.06.1.i, %i.as
  %i.cg = icmp ne ptr %.sroa.011.1.i, %i.at
  %or.cond.i = select i1 %i.cf, i1 true, i1 %i.cg, !prof !11
  br i1 %or.cond.i, label %bb.ak, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1l_7lookups8LookupIdNtB2W_14PositionLookupEEENCINvMNtB2r_5sliceSB1g_11sort_by_keyB1h_NCNvMs1_B1j_NtB1j_8MergeCtx13finalize_gpos0E0EB1n_.exit, !prof !11

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = mul nuw nsw i64 %1, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.ci, i1 false), !noalias !1155
  resume { ptr, i32 } %i.ch

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1l_7lookups8LookupIdNtB2W_14PositionLookupEEENCINvMNtB2r_5sliceSB1g_11sort_by_keyB1h_NCNvMs1_B1j_NtB1j_8MergeCtx13finalize_gpos0E0EB1n_.exit: ; preds = %bb.aj, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit
  %.sroa.05.054 = phi i64 [ %i.dk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.05.054 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.054, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.cj, i64 48, i1 false)
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.ck, align 8, !alias.scope !1158, !noalias !1157 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.4.0.copyload.i.i28 = load i64, ptr %.sroa.4.0..sroa_idx.i.i27, align 8, !alias.scope !1158, !noalias !1157 ; 11 uses
  %.sroa.5.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.5.0.copyload.i.i30 = load i64, ptr %.sroa.5.0..sroa_idx.i.i29, align 8, !alias.scope !1158, !noalias !1157 ; 3 uses
  %.sroa.01.0.copyload.i.i31 = load i64, ptr %i.cl, align 8, !alias.scope !1159, !noalias !1156 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i32 = getelementptr inbounds i8, ptr %i.ck, i64 -40
  %.sroa.42.0.copyload.i.i33 = load i64, ptr %.sroa.42.0..sroa_idx.i.i32, align 8, !alias.scope !1159, !noalias !1156 ; 5 uses
  %.sroa.53.0..sroa_idx.i.i34 = getelementptr inbounds i8, ptr %i.ck, i64 -32
  %.sroa.53.0.copyload.i.i35 = load i64, ptr %.sroa.53.0..sroa_idx.i.i34, align 8, !alias.scope !1159, !noalias !1156
  %i.cm = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.0.0.copyload.i.i26, i64 %.sroa.01.0.copyload.i.i31)
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i26, %.sroa.01.0.copyload.i.i31
  br i1 %i.cn, label %bb.am, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36

bb.am:                                            ; preds = %.lr.ph
  switch i64 %.sroa.0.0.copyload.i.i26, label %default.unreachable.i.i.i42 [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 4, label %bb.ar
    i64 5, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41
  ]

default.unreachable.i.i.i42:                      ; preds = %bb.am, %bb.h
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.co = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i.i33)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36

bb.ao:                                            ; preds = %bb.am
  %i.cp = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i.i33)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36

bb.ap:                                            ; preds = %bb.am
  %i.cq = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i.i33)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36

bb.aq:                                            ; preds = %bb.am
  %i.cr = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i.i33)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36

bb.ar:                                            ; preds = %bb.am
  %i.cs = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i.i33)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph
  %.sroa.0.0.i.i.i.i.i.i37 = phi i8 [ %i.co, %bb.an ], [ %i.cm, %.lr.ph ], [ %i.cp, %bb.ao ], [ %i.cq, %bb.ap ], [ %i.cr, %bb.aq ], [ %i.cs, %bb.ar ] ; 2 uses
  %i.ct = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i37, 0
  br i1 %i.ct, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41: ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36, %bb.am
  %i.cu = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.5.0.copyload.i.i30, i64 %.sroa.53.0.copyload.i.i35)
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38: ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36
  %.sroa.0.0.i.i.i.i.i39 = phi i8 [ %i.cu, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i.i41 ], [ %.sroa.0.0.i.i.i.i.i.i37, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i.i36 ]
  %i.cv = icmp slt i8 %.sroa.0.0.i.i.i.i.i39, 0
  br i1 %i.cv, label %bb.as, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit

bb.as:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.cl, i64 48, i1 false)
  %i.cx = icmp eq i64 %.sroa.05.054, 1
  br i1 %i.cx, label %._crit_edge, label %.lr.ph95

bb.at:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i4094, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false)
  %i.cy = icmp eq ptr %i.cz, %2
  br i1 %i.cy, label %._crit_edge, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.as, %bb.at
  %.sroa.0.0.i4094 = phi ptr [ %i.cz, %bb.at ], [ %i.cl, %bb.as ] ; 5 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.i4094, i64 -48 ; 4 uses
  %.sroa.01.0.copyload.i13.i = load i64, ptr %i.cz, align 8, !alias.scope !1142, !noalias !1143 ; 2 uses
  %.sroa.42.0..sroa_idx.i14.i = getelementptr inbounds i8, ptr %.sroa.0.0.i4094, i64 -40
  %.sroa.42.0.copyload.i15.i = load i64, ptr %.sroa.42.0..sroa_idx.i14.i, align 8, !alias.scope !1142, !noalias !1143 ; 5 uses
  %.sroa.53.0..sroa_idx.i16.i = getelementptr inbounds i8, ptr %.sroa.0.0.i4094, i64 -32
  %.sroa.53.0.copyload.i17.i = load i64, ptr %.sroa.53.0..sroa_idx.i16.i, align 8, !alias.scope !1142, !noalias !1143
  %i.da = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.0.0.copyload.i.i26, i64 %.sroa.01.0.copyload.i13.i)
  %i.db = icmp eq i64 %.sroa.0.0.copyload.i.i26, %.sroa.01.0.copyload.i13.i
  br i1 %i.db, label %bb.au, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i

bb.au:                                            ; preds = %.lr.ph95
  switch i64 %.sroa.0.0.copyload.i.i26, label %default.unreachable.i.i22.i [
    i64 0, label %bb.av
    i64 1, label %bb.aw
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 4, label %bb.az
    i64 5, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i
  ]

default.unreachable.i.i22.i:                      ; preds = %bb.au, %bb.p
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.dc = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i15.i)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i

bb.aw:                                            ; preds = %bb.au
  %i.dd = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i15.i)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i

bb.ax:                                            ; preds = %bb.au
  %i.de = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i15.i)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i

bb.ay:                                            ; preds = %bb.au
  %i.df = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i15.i)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i

bb.az:                                            ; preds = %bb.au
  %i.dg = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4.0.copyload.i.i28, i64 %.sroa.42.0.copyload.i15.i)
  br label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %.lr.ph95
  %.sroa.0.0.i.i.i.i.i19.i = phi i8 [ %i.dc, %bb.av ], [ %i.da, %.lr.ph95 ], [ %i.dd, %bb.aw ], [ %i.de, %bb.ax ], [ %i.df, %bb.ay ], [ %i.dg, %bb.az ] ; 2 uses
  %i.dh = icmp eq i8 %.sroa.0.0.i.i.i.i.i19.i, 0
  br i1 %i.dh, label %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i, label %bb.ba

_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i: ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i, %bb.au
  %i.di = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.5.0.copyload.i.i30, i64 %.sroa.53.0.copyload.i17.i)
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i
  %.sroa.0.0.i.i.i.i20.i = phi i8 [ %i.di, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.thread.i.i.i.i21.i ], [ %.sroa.0.0.i.i.i.i.i19.i, %_RNvXsE_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i.i18.i ]
  %i.dj = icmp slt i8 %.sroa.0.0.i.i.i.i20.i, 0
  br i1 %i.dj, label %bb.at, label %._crit_edge

._crit_edge:                                      ; preds = %bb.at, %bb.ba, %bb.as
  %.sroa.0.0.i40.lcssa = phi ptr [ %2, %bb.as ], [ %2, %bb.at ], [ %.sroa.0.0.i4094, %bb.ba ] ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i26, ptr %.sroa.0.0.i40.lcssa, align 8, !noalias !1144
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40.lcssa, i64 8
  store i64 %.sroa.4.0.copyload.i.i28, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1144
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40.lcssa, i64 16
  store i64 %.sroa.5.0.copyload.i.i30, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1144
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i40.lcssa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_.exit: ; preds = %._crit_edge, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtB7_3vec3VecTNtNtBD_7lookups8LookupIdNtB1X_14PositionLookupEEE11sort_by_keyBz_NCNvMs1_BB_NtBB_8MergeCtx13finalize_gpos0E0BF_.exit.i38
  %i.dk = add nuw nsw i64 %.sroa.05.054, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_11sort_by_keyB1t_NCNvMs1_NtB1x_14feature_writerNtB3I_8MergeCtx13finalize_gposs_0E0EB1z_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [40 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvMs1_NtB1l_14feature_writerNtB3w_8MergeCtx13finalize_gposs_0E0EB1n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1c_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs1_NtB1e_14feature_writerNtB3p_8MergeCtx13finalize_gposs_0E0EB1g_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1c_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMs1_NtB1e_14feature_writerNtB3p_8MergeCtx13finalize_gposs_0E0EB1g_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [56 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1
  %.sroa.05.039.1 = phi i64 [ %i.ag, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.sroa.05.039.1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %.sroa.05.039.1, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 4 uses
  %.val11.i.1 = load i64, ptr %i.n, align 8, !range !10, !noundef !4 ; 6 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8       ; 7 uses
  %.val13.i.1 = load i64, ptr %i.o, align 8, !range !10, !noundef !4 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -48
  %.val14.i.1 = load i64, ptr %i.q, align 8       ; 5 uses
  %i.r = icmp eq i64 %.val11.i.1, %.val13.i.1
  br i1 %i.r, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26.1: ; preds = %.lr.ph.1
  %i.s = icmp samesign ult i64 %.val11.i.1, %.val13.i.1
  br i1 %i.s, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  switch i64 %.val11.i.1, label %default.unreachable [
    i64 0, label %.split.i30.1
    i64 1, label %.split9.i29.1
    i64 2, label %.split8.i.1
    i64 3, label %.split7.i.1
    i64 4, label %.split6.i.1
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1
  ]

.split6.i.1:                                      ; preds = %bb.h
  %i.t = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.t, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

.split7.i.1:                                      ; preds = %bb.h
  %i.u = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.u, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

.split8.i.1:                                      ; preds = %bb.h
  %i.v = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.v, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

.split9.i29.1:                                    ; preds = %bb.h
  %i.w = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.w, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

.split.i30.1:                                     ; preds = %bb.h
  %i.x = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.x, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

bb.i:                                             ; preds = %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  %i.z = icmp eq i64 %.sroa.05.039.1, 1
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %bb.i, %.backedge.i.1
  %.sroa.0.017.i.1 = phi ptr [ %i.aa, %.backedge.i.1 ], [ %i.o, %bb.i ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.017.i.1, i64 -56 ; 4 uses
  %.val9.i.1 = load i64, ptr %i.aa, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ab, label %bb.j, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i.1: ; preds = %.lr.ph.i28.1
  %i.ac = icmp samesign ult i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ac, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i.1

bb.j:                                             ; preds = %.lr.ph.i28.1
  %i.ad = getelementptr i8, ptr %.sroa.0.017.i.1, i64 -48
  %.val10.i.1 = load i64, ptr %i.ad, align 8
  %i.ae = icmp ult i64 %.val12.i.1, %.val10.i.1
  br i1 %i.ae, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i.1

.backedge.i.1:                                    ; preds = %bb.j, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.017.i.1, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  %i.af = icmp eq ptr %i.aa, %i.k
  br i1 %i.af, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i.1, %bb.j, %.backedge.i.1, %bb.i
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.i ], [ %.sroa.0.017.i.1, %bb.j ], [ %.sroa.0.017.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i.1 ], [ %i.k, %.backedge.i.1 ] ; 3 uses
  store i64 %.val11.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !1176
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1176
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i.1, %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %bb.h, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26.1
  %i.ag = add nuw nsw i64 %.sroa.05.039.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit.1, %.loopexit
  %i.ah = add nsw i64 %1, -1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.k, i64 -56
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i
  %i.al = getelementptr i8, ptr %i.bs, i64 56     ; 2 uses
  %i.am = getelementptr i8, ptr %i.br, i64 56
  %i.an = and i64 %1, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.o

.lr.ph.i:                                         ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i, %.loopexit.1
  %.sroa.0.050.i = phi ptr [ %i.bf, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.049.i = phi i64 [ %i.ap, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.047.i = phi ptr [ %i.be, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ %2, %.loopexit.1 ] ; 10 uses
  %.sroa.011.046.i = phi ptr [ %i.bc, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.045.i = phi ptr [ %i.bs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ %i.ak, %.loopexit.1 ] ; 4 uses
  %.sroa.017.043.i = phi ptr [ %i.br, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ %i.aj, %.loopexit.1 ] ; 10 uses
  %.sroa.019.042.i = phi ptr [ %i.bt, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i ], [ %i.ai, %.loopexit.1 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.04.049.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.046.i, align 8, !range !10, !alias.scope !1177, !noundef !4 ; 3 uses
  %i.aq = getelementptr i8, ptr %.sroa.011.046.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.aq, align 8, !alias.scope !1177 ; 5 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.047.i, align 8, !range !10, !alias.scope !1177, !noundef !4 ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.06.047.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ar, align 8, !alias.scope !1177 ; 5 uses
  %i.as = icmp eq i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  br i1 %i.as, label %bb.k, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  switch i64 %.sroa.011.0.val.i, label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %.split15.i
    i64 2, label %.split13.i
    i64 3, label %.split11.i
    i64 4, label %.split9.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i
  ]

.split.i:                                         ; preds = %bb.k
  %i.at = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr7.i = freeze i1 %i.at
  br i1 %cond.fr7.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i

.split15.i:                                       ; preds = %bb.k
  %i.au = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr16.i = freeze i1 %i.au
  br i1 %cond.fr16.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i

.split13.i:                                       ; preds = %bb.k
  %i.av = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr14.i = freeze i1 %i.av
  br i1 %cond.fr14.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i

.split11.i:                                       ; preds = %bb.k
  %i.aw = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr12.i = freeze i1 %i.aw
  br i1 %cond.fr12.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i

end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_11sort_by_keyB1t_NCNvMs1_NtB1x_14feature_writerNtB3I_8MergeCtx13finalize_gposs_0E0EB1z_:bb.a
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.043.i, align 8, !range !10, !alias.scope !1177, !noundef !4 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.017.043.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.bg, align 8, !alias.scope !1177 ; 5 uses
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.045.i, align 8, !range !10, !alias.scope !1177, !noundef !4 ; 2 uses
  %i.bh = getelementptr i8, ptr %.sroa.015.045.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bh, align 8, !alias.scope !1177 ; 5 uses
  %i.bi = icmp eq i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %i.bi, label %bb.m, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.i

bb.m:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i
  switch i64 %.sroa.017.0.val.i, label %default.unreachable [
    i64 0, label %.split21.i
    i64 1, label %.split30.i
    i64 2, label %.split28.i
    i64 3, label %.split26.i
    i64 4, label %.split24.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i
  ]

.split21.i:                                       ; preds = %bb.m
  %i.bj = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1722.i = freeze i1 %i.bj
  br i1 %cond.fr1722.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

.split30.i:                                       ; preds = %bb.m
  %i.bk = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1731.i = freeze i1 %i.bk
  br i1 %cond.fr1731.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

.split28.i:                                       ; preds = %bb.m
  %i.bl = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1729.i = freeze i1 %i.bl
  br i1 %cond.fr1729.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

.split26.i:                                       ; preds = %bb.m
  %i.bm = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1727.i = freeze i1 %i.bm
  br i1 %cond.fr1727.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

.split24.i:                                       ; preds = %bb.m
  %i.bn = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1725.i = freeze i1 %i.bn
  br i1 %cond.fr1725.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.thread.i
  %i.bo = icmp samesign ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %i.bo, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.i, %.split24.i, %.split26.i, %.split28.i, %.split30.i, %.split21.i
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.thread.i: ; preds = %bb.n, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.i, %.split24.i, %.split26.i, %.split28.i, %.split30.i, %.split21.i, %bb.m
  %.sroa.0.0.i.i.i.i2620.i = phi i1 [ true, %bb.n ], [ false, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.i ], [ false, %.split30.i ], [ false, %.split21.i ], [ false, %.split24.i ], [ false, %.split26.i ], [ false, %.split28.i ], [ false, %bb.m ] ; 2 uses
  %i.bp = phi ptr [ %.sroa.015.045.i, %bb.n ], [ %.sroa.017.043.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit28.i ], [ %.sroa.017.043.i, %.split30.i ], [ %.sroa.017.043.i, %.split21.i ], [ %.sroa.017.043.i, %.split24.i ], [ %.sroa.017.043.i, %.split26.i ], [ %.sroa.017.043.i, %.split28.i ], [ %.sroa.017.043.i, %bb.m ]
  %i.bq = xor i1 %.sroa.0.0.i.i.i.i2620.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.042.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !1179
  %.neg.i.i = sext i1 %i.bq to i64
  %i.br = getelementptr [56 x i8], ptr %.sroa.017.043.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i.i.i2620.i to i64
  %i.bs = getelementptr [56 x i8], ptr %.sroa.015.045.i, i64 %.neg13.i.i ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.019.042.i, i64 -56
  %exitcond.not.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bu = icmp ult ptr %i.be, %i.al               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bu, ptr %i.be, ptr %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i, i64 56, i1 false)
  %i.bv = zext i1 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %i.bv
  %i.bx = xor i1 %i.bu, true
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %i.by
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.bz, %bb.o ]
  %.sroa.06.1.i = phi ptr [ %i.be, %._crit_edge.i ], [ %i.bw, %bb.o ]
  %i.ca = icmp ne ptr %.sroa.06.1.i, %i.al
  %i.cb = icmp ne ptr %.sroa.011.1.i, %i.am
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.cb, !prof !11
  br i1 %or.cond.i, label %bb.q, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvMs1_NtB1l_14feature_writerNtB3w_8MergeCtx13finalize_gposs_0E0EB1n_.exit, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = mul nuw nsw i64 %1, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cd, i1 false), !noalias !1180
  resume { ptr, i32 } %i.cc

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvMs1_NtB1l_14feature_writerNtB3w_8MergeCtx13finalize_gposs_0E0EB1n_.exit: ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit
  %.sroa.05.039 = phi i64 [ %i.cy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.05.039 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.039, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -56 ; 4 uses
  %.val11.i = load i64, ptr %i.cf, align 8, !range !10, !noundef !4 ; 6 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  %.val12.i = load i64, ptr %i.ch, align 8        ; 7 uses
  %.val13.i = load i64, ptr %i.cg, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 -48
  %.val14.i = load i64, ptr %i.ci, align 8        ; 5 uses
  %i.cj = icmp eq i64 %.val11.i, %.val13.i
  br i1 %i.cj, label %bb.s, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26

bb.s:                                             ; preds = %.lr.ph
  switch i64 %.val11.i, label %default.unreachable [
    i64 0, label %.split.i30
    i64 1, label %.split9.i29
    i64 2, label %.split8.i
    i64 3, label %.split7.i
    i64 4, label %.split6.i
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit
  ]

default.unreachable:                              ; preds = %bb.s, %bb.h, %bb.m, %bb.k
  unreachable

.split.i30:                                       ; preds = %bb.s
  %i.ck = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.ck, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

.split9.i29:                                      ; preds = %bb.s
  %i.cl = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cl, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

.split8.i:                                        ; preds = %bb.s
  %i.cm = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cm, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

.split7.i:                                        ; preds = %bb.s
  %i.cn = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cn, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

.split6.i:                                        ; preds = %bb.s
  %i.co = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.co, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26: ; preds = %.lr.ph
  %i.cp = icmp samesign ult i64 %.val11.i, %.val13.i
  br i1 %i.cp, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

bb.t:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26, %.split6.i, %.split7.i, %.split8.i, %.split9.i29, %.split.i30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i64 56, i1 false)
  %i.cr = icmp eq i64 %.sroa.05.039, 1
  br i1 %i.cr, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.backedge.i
  %.sroa.0.017.i = phi ptr [ %i.cs, %.backedge.i ], [ %i.cg, %bb.t ] ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.017.i, i64 -56 ; 4 uses
  %.val9.i = load i64, ptr %i.cs, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ct = icmp eq i64 %.val11.i, %.val9.i
  br i1 %i.ct, label %bb.u, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i

bb.u:                                             ; preds = %.lr.ph.i28
  %i.cu = getelementptr i8, ptr %.sroa.0.017.i, i64 -48
  %.val10.i = load i64, ptr %i.cu, align 8
  %i.cv = icmp ult i64 %.val12.i, %.val10.i
  br i1 %i.cv, label %.backedge.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i: ; preds = %.lr.ph.i28
  %i.cw = icmp samesign ult i64 %.val11.i, %.val9.i
  br i1 %i.cw, label %.backedge.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i

.backedge.i:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i, %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.017.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i64 56, i1 false)
  %i.cx = icmp eq ptr %i.cs, %2
  br i1 %i.cx, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i, label %.lr.ph.i28

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i: ; preds = %.backedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i, %bb.u, %bb.t
  %.sroa.0.0.lcssa.i = phi ptr [ %i.cg, %bb.t ], [ %.sroa.0.017.i, %bb.u ], [ %.sroa.0.017.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.i ], [ %2, %.backedge.i ] ; 3 uses
  store i64 %.val11.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !1176
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1176
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMs1_NtB1d_14feature_writerNtB3o_8MergeCtx13finalize_gposs_0E0EB1f_.exit: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit17.thread.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE11sort_by_keyBz_NCNvMs1_NtBD_14feature_writerNtB29_8MergeCtx13finalize_gposs_0E0BF_.exit.i26, %.split6.i, %.split7.i, %.split8.i, %.split9.i29, %.split.i30, %bb.s
  %i.cy = add nuw nsw i64 %.sroa.05.039, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2O_11collections5btree3mapINtB3B_8BTreeMapB1t_B2j_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4E_8adapters6cloned6ClonedINtNtB8_4iter4IterB1s_EEE0E0EB1z_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [40 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2C_11collections5btree3mapINtB3p_8BTreeMapB1h_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4s_8adapters6cloned6ClonedINtNtB8_4iter4IterB1g_EEE0E0EB1n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1c_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB1a_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4l_8adapters6cloned6ClonedINtNtB8_4iter4IterB19_EEE0E0EB1g_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1c_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB1a_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4l_8adapters6cloned6ClonedINtNtB8_4iter4IterB19_EEE0E0EB1g_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [56 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1
  %.sroa.05.039.1 = phi i64 [ %i.ag, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.sroa.05.039.1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %.sroa.05.039.1, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 4 uses
  %.val11.i.1 = load i64, ptr %i.n, align 8, !range !10, !noundef !4 ; 6 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8       ; 7 uses
  %.val13.i.1 = load i64, ptr %i.o, align 8, !range !10, !noundef !4 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -48
  %.val14.i.1 = load i64, ptr %i.q, align 8       ; 5 uses
  %i.r = icmp eq i64 %.val11.i.1, %.val13.i.1
  br i1 %i.r, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1: ; preds = %.lr.ph.1
  %i.s = icmp samesign ult i64 %.val11.i.1, %.val13.i.1
  br i1 %i.s, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  switch i64 %.val11.i.1, label %default.unreachable [
    i64 0, label %.split.i30.1
    i64 1, label %.split9.i29.1
    i64 2, label %.split8.i.1
    i64 3, label %.split7.i.1
    i64 4, label %.split6.i.1
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1
  ]

.split6.i.1:                                      ; preds = %bb.h
  %i.t = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.t, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split7.i.1:                                      ; preds = %bb.h
  %i.u = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.u, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split8.i.1:                                      ; preds = %bb.h
  %i.v = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.v, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split9.i29.1:                                    ; preds = %bb.h
  %i.w = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.w, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split.i30.1:                                     ; preds = %bb.h
  %i.x = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.x, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

bb.i:                                             ; preds = %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  %i.z = icmp eq i64 %.sroa.05.039.1, 1
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %bb.i, %.backedge.i.1
  %.sroa.0.017.i.1 = phi ptr [ %i.aa, %.backedge.i.1 ], [ %i.o, %bb.i ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.017.i.1, i64 -56 ; 4 uses
  %.val9.i.1 = load i64, ptr %i.aa, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ab, label %bb.j, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1: ; preds = %.lr.ph.i28.1
  %i.ac = icmp samesign ult i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ac, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1

bb.j:                                             ; preds = %.lr.ph.i28.1
  %i.ad = getelementptr i8, ptr %.sroa.0.017.i.1, i64 -48
  %.val10.i.1 = load i64, ptr %i.ad, align 8
  %i.ae = icmp ult i64 %.val12.i.1, %.val10.i.1
  br i1 %i.ae, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1

.backedge.i.1:                                    ; preds = %bb.j, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.017.i.1, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  %i.af = icmp eq ptr %i.aa, %i.k
  br i1 %i.af, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1, %bb.j, %.backedge.i.1, %bb.i
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.i ], [ %.sroa.0.017.i.1, %bb.j ], [ %.sroa.0.017.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1 ], [ %i.k, %.backedge.i.1 ] ; 3 uses
  store i64 %.val11.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !1197
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1197
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1, %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %bb.h, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1
  %i.ag = add nuw nsw i64 %.sroa.05.039.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1, %.loopexit
  %i.ah = add nsw i64 %1, -1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.k, i64 -56
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i
  %i.al = getelementptr i8, ptr %i.bs, i64 56     ; 2 uses
  %i.am = getelementptr i8, ptr %i.br, i64 56
  %i.an = and i64 %1, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.o

.lr.ph.i:                                         ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i, %.loopexit.1
  %.sroa.0.050.i = phi ptr [ %i.bf, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.049.i = phi i64 [ %i.ap, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.047.i = phi ptr [ %i.be, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %2, %.loopexit.1 ] ; 10 uses
  %.sroa.011.046.i = phi ptr [ %i.bc, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.045.i = phi ptr [ %i.bs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.ak, %.loopexit.1 ] ; 4 uses
  %.sroa.017.043.i = phi ptr [ %i.br, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.aj, %.loopexit.1 ] ; 10 uses
  %.sroa.019.042.i = phi ptr [ %i.bt, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.ai, %.loopexit.1 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.04.049.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.046.i, align 8, !range !10, !alias.scope !1198, !noundef !4 ; 3 uses
  %i.aq = getelementptr i8, ptr %.sroa.011.046.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.aq, align 8, !alias.scope !1198 ; 5 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.047.i, align 8, !range !10, !alias.scope !1198, !noundef !4 ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.06.047.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ar, align 8, !alias.scope !1198 ; 5 uses
  %i.as = icmp eq i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  br i1 %i.as, label %bb.k, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  switch i64 %.sroa.011.0.val.i, label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %.split15.i
    i64 2, label %.split13.i
    i64 3, label %.split11.i
    i64 4, label %.split9.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i
  ]

.split.i:                                         ; preds = %bb.k
  %i.at = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr7.i = freeze i1 %i.at
  br i1 %cond.fr7.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

.split15.i:                                       ; preds = %bb.k
  %i.au = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr16.i = freeze i1 %i.au
  br i1 %cond.fr16.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

.split13.i:                                       ; preds = %bb.k
  %i.av = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr14.i = freeze i1 %i.av
  br i1 %cond.fr14.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

.split11.i:                                       ; preds = %bb.k
  %i.aw = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr12.i = freeze i1 %i.aw
  br i1 %cond.fr12.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2O_11collections5btree3mapINtB3B_8BTreeMapB1t_B2j_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4E_8adapters6cloned6ClonedINtNtB8_4iter4IterB1s_EEE0E0EB1z_:bb.a
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.043.i, align 8, !range !10, !alias.scope !1198, !noundef !4 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.017.043.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.bg, align 8, !alias.scope !1198 ; 5 uses
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.045.i, align 8, !range !10, !alias.scope !1198, !noundef !4 ; 2 uses
  %i.bh = getelementptr i8, ptr %.sroa.015.045.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bh, align 8, !alias.scope !1198 ; 5 uses
  %i.bi = icmp eq i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %i.bi, label %bb.m, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.i

bb.m:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i
  switch i64 %.sroa.017.0.val.i, label %default.unreachable [
    i64 0, label %.split21.i
    i64 1, label %.split30.i
    i64 2, label %.split28.i
    i64 3, label %.split26.i
    i64 4, label %.split24.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i
  ]

.split21.i:                                       ; preds = %bb.m
  %i.bj = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1722.i = freeze i1 %i.bj
  br i1 %cond.fr1722.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split30.i:                                       ; preds = %bb.m
  %i.bk = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1731.i = freeze i1 %i.bk
  br i1 %cond.fr1731.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split28.i:                                       ; preds = %bb.m
  %i.bl = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1729.i = freeze i1 %i.bl
  br i1 %cond.fr1729.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split26.i:                                       ; preds = %bb.m
  %i.bm = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1727.i = freeze i1 %i.bm
  br i1 %cond.fr1727.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split24.i:                                       ; preds = %bb.m
  %i.bn = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1725.i = freeze i1 %i.bn
  br i1 %cond.fr1725.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i
  %i.bo = icmp samesign ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %i.bo, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.i, %.split24.i, %.split26.i, %.split28.i, %.split30.i, %.split21.i
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i: ; preds = %bb.n, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.i, %.split24.i, %.split26.i, %.split28.i, %.split30.i, %.split21.i, %bb.m
  %.sroa.0.0.i.i.i2620.i = phi i1 [ true, %bb.n ], [ false, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.i ], [ false, %.split30.i ], [ false, %.split21.i ], [ false, %.split24.i ], [ false, %.split26.i ], [ false, %.split28.i ], [ false, %bb.m ] ; 2 uses
  %i.bp = phi ptr [ %.sroa.015.045.i, %bb.n ], [ %.sroa.017.043.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit28.i ], [ %.sroa.017.043.i, %.split30.i ], [ %.sroa.017.043.i, %.split21.i ], [ %.sroa.017.043.i, %.split24.i ], [ %.sroa.017.043.i, %.split26.i ], [ %.sroa.017.043.i, %.split28.i ], [ %.sroa.017.043.i, %bb.m ]
  %i.bq = xor i1 %.sroa.0.0.i.i.i2620.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.042.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !1200
  %.neg.i.i = sext i1 %i.bq to i64
  %i.br = getelementptr [56 x i8], ptr %.sroa.017.043.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i.i2620.i to i64
  %i.bs = getelementptr [56 x i8], ptr %.sroa.015.045.i, i64 %.neg13.i.i ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.019.042.i, i64 -56
  %exitcond.not.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bu = icmp ult ptr %i.be, %i.al               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bu, ptr %i.be, ptr %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i, i64 56, i1 false)
  %i.bv = zext i1 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %i.bv
  %i.bx = xor i1 %i.bu, true
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %i.by
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.bz, %bb.o ]
  %.sroa.06.1.i = phi ptr [ %i.be, %._crit_edge.i ], [ %i.bw, %bb.o ]
  %i.ca = icmp ne ptr %.sroa.06.1.i, %i.al
  %i.cb = icmp ne ptr %.sroa.011.1.i, %i.am
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.cb, !prof !11
  br i1 %or.cond.i, label %bb.q, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2C_11collections5btree3mapINtB3p_8BTreeMapB1h_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4s_8adapters6cloned6ClonedINtNtB8_4iter4IterB1g_EEE0E0EB1n_.exit, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = mul nuw nsw i64 %1, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cd, i1 false), !noalias !1201
  resume { ptr, i32 } %i.cc

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2C_11collections5btree3mapINtB3p_8BTreeMapB1h_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4s_8adapters6cloned6ClonedINtNtB8_4iter4IterB1g_EEE0E0EB1n_.exit: ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit
  %.sroa.05.039 = phi i64 [ %i.cy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.05.039 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.039, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -56 ; 4 uses
  %.val11.i = load i64, ptr %i.cf, align 8, !range !10, !noundef !4 ; 6 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  %.val12.i = load i64, ptr %i.ch, align 8        ; 7 uses
  %.val13.i = load i64, ptr %i.cg, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 -48
  %.val14.i = load i64, ptr %i.ci, align 8        ; 5 uses
  %i.cj = icmp eq i64 %.val11.i, %.val13.i
  br i1 %i.cj, label %bb.s, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26

bb.s:                                             ; preds = %.lr.ph
  switch i64 %.val11.i, label %default.unreachable [
    i64 0, label %.split.i30
    i64 1, label %.split9.i29
    i64 2, label %.split8.i
    i64 3, label %.split7.i
    i64 4, label %.split6.i
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit
  ]

default.unreachable:                              ; preds = %bb.s, %bb.h, %bb.m, %bb.k
  unreachable

.split.i30:                                       ; preds = %bb.s
  %i.ck = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.ck, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split9.i29:                                      ; preds = %bb.s
  %i.cl = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cl, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split8.i:                                        ; preds = %bb.s
  %i.cm = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cm, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split7.i:                                        ; preds = %bb.s
  %i.cn = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cn, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split6.i:                                        ; preds = %bb.s
  %i.co = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.co, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26: ; preds = %.lr.ph
  %i.cp = icmp samesign ult i64 %.val11.i, %.val13.i
  br i1 %i.cp, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

bb.t:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26, %.split6.i, %.split7.i, %.split8.i, %.split9.i29, %.split.i30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i64 56, i1 false)
  %i.cr = icmp eq i64 %.sroa.05.039, 1
  br i1 %i.cr, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.backedge.i
  %.sroa.0.017.i = phi ptr [ %i.cs, %.backedge.i ], [ %i.cg, %bb.t ] ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.017.i, i64 -56 ; 4 uses
  %.val9.i = load i64, ptr %i.cs, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ct = icmp eq i64 %.val11.i, %.val9.i
  br i1 %i.ct, label %bb.u, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i

bb.u:                                             ; preds = %.lr.ph.i28
  %i.cu = getelementptr i8, ptr %.sroa.0.017.i, i64 -48
  %.val10.i = load i64, ptr %i.cu, align 8
  %i.cv = icmp ult i64 %.val12.i, %.val10.i
  br i1 %i.cv, label %.backedge.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i: ; preds = %.lr.ph.i28
  %i.cw = icmp samesign ult i64 %.val11.i, %.val9.i
  br i1 %i.cw, label %.backedge.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i

.backedge.i:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i, %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.017.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i64 56, i1 false)
  %i.cx = icmp eq ptr %i.cs, %2
  br i1 %i.cx, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i, label %.lr.ph.i28

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i: ; preds = %.backedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i, %bb.u, %bb.t
  %.sroa.0.0.lcssa.i = phi ptr [ %i.cg, %bb.t ], [ %.sroa.0.017.i, %bb.u ], [ %.sroa.0.017.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.i ], [ %2, %.backedge.i ] ; 3 uses
  store i64 %.val11.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !1197
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1197
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4k_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_14PositionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB23_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB34_8adapters6cloned6ClonedINtNtNtB36_5slice4iter4IterBy_EEE0E0BF_.exit.i26, %.split6.i, %.split7.i, %.split8.i, %.split9.i29, %.split.i30, %bb.s
  %i.cy = add nuw nsw i64 %.sroa.05.039, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB1t_B2j_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4I_8adapters6cloned6ClonedINtNtB8_4iter4IterB1s_EEE0E0EB1z_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [40 x i8], align 8          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3t_8BTreeMapB1h_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4w_8adapters6cloned6ClonedINtNtB8_4iter4IterB1g_EEE0E0EB1n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1c_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB1a_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4p_8adapters6cloned6ClonedINtNtB8_4iter4IterB19_EEE0E0EB1g_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1c_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB1a_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB4p_8adapters6cloned6ClonedINtNtB8_4iter4IterB19_EEE0E0EB1g_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [56 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1
  %.sroa.05.039.1 = phi i64 [ %i.ag, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.sroa.05.039.1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %.sroa.05.039.1, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 4 uses
  %.val11.i.1 = load i64, ptr %i.n, align 8, !range !10, !noundef !4 ; 6 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8       ; 7 uses
  %.val13.i.1 = load i64, ptr %i.o, align 8, !range !10, !noundef !4 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -48
  %.val14.i.1 = load i64, ptr %i.q, align 8       ; 5 uses
  %i.r = icmp eq i64 %.val11.i.1, %.val13.i.1
  br i1 %i.r, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1: ; preds = %.lr.ph.1
  %i.s = icmp samesign ult i64 %.val11.i.1, %.val13.i.1
  br i1 %i.s, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  switch i64 %.val11.i.1, label %default.unreachable [
    i64 0, label %.split.i30.1
    i64 1, label %.split9.i29.1
    i64 2, label %.split8.i.1
    i64 3, label %.split7.i.1
    i64 4, label %.split6.i.1
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1
  ]

.split6.i.1:                                      ; preds = %bb.h
  %i.t = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.t, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split7.i.1:                                      ; preds = %bb.h
  %i.u = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.u, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split8.i.1:                                      ; preds = %bb.h
  %i.v = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.v, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split9.i29.1:                                    ; preds = %bb.h
  %i.w = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.w, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

.split.i30.1:                                     ; preds = %bb.h
  %i.x = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.x, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

bb.i:                                             ; preds = %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  %i.z = icmp eq i64 %.sroa.05.039.1, 1
  br i1 %i.z, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %bb.i, %.backedge.i.1
  %.sroa.0.017.i.1 = phi ptr [ %i.aa, %.backedge.i.1 ], [ %i.o, %bb.i ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.017.i.1, i64 -56 ; 4 uses
  %.val9.i.1 = load i64, ptr %i.aa, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ab, label %bb.j, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1: ; preds = %.lr.ph.i28.1
  %i.ac = icmp samesign ult i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ac, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1

bb.j:                                             ; preds = %.lr.ph.i28.1
  %i.ad = getelementptr i8, ptr %.sroa.0.017.i.1, i64 -48
  %.val10.i.1 = load i64, ptr %i.ad, align 8
  %i.ae = icmp ult i64 %.val12.i.1, %.val10.i.1
  br i1 %i.ae, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1

.backedge.i.1:                                    ; preds = %bb.j, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.017.i.1, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  %i.af = icmp eq ptr %i.aa, %i.k
  br i1 %i.af, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1, %bb.j, %.backedge.i.1, %bb.i
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.i ], [ %.sroa.0.017.i.1, %bb.j ], [ %.sroa.0.017.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i.1 ], [ %i.k, %.backedge.i.1 ] ; 3 uses
  store i64 %.val11.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !1218
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1218
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i.1, %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %bb.h, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26.1
  %i.ag = add nuw nsw i64 %.sroa.05.039.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit.1, %.loopexit
  %i.ah = add nsw i64 %1, -1                      ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.k, i64 -56
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i
  %i.al = getelementptr i8, ptr %i.bs, i64 56     ; 2 uses
  %i.am = getelementptr i8, ptr %i.br, i64 56
  %i.an = and i64 %1, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.o

.lr.ph.i:                                         ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i, %.loopexit.1
  %.sroa.0.050.i = phi ptr [ %i.bf, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.049.i = phi i64 [ %i.ap, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.047.i = phi ptr [ %i.be, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %2, %.loopexit.1 ] ; 10 uses
  %.sroa.011.046.i = phi ptr [ %i.bc, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.045.i = phi ptr [ %i.bs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.ak, %.loopexit.1 ] ; 4 uses
  %.sroa.017.043.i = phi ptr [ %i.br, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.aj, %.loopexit.1 ] ; 10 uses
  %.sroa.019.042.i = phi ptr [ %i.bt, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i ], [ %i.ai, %.loopexit.1 ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.04.049.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.046.i, align 8, !range !10, !alias.scope !1219, !noundef !4 ; 3 uses
  %i.aq = getelementptr i8, ptr %.sroa.011.046.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.aq, align 8, !alias.scope !1219 ; 5 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.047.i, align 8, !range !10, !alias.scope !1219, !noundef !4 ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.06.047.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.ar, align 8, !alias.scope !1219 ; 5 uses
  %i.as = icmp eq i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  br i1 %i.as, label %bb.k, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  switch i64 %.sroa.011.0.val.i, label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %.split15.i
    i64 2, label %.split13.i
    i64 3, label %.split11.i
    i64 4, label %.split9.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i
  ]

.split.i:                                         ; preds = %bb.k
  %i.at = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr7.i = freeze i1 %i.at
  br i1 %cond.fr7.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

.split15.i:                                       ; preds = %bb.k
  %i.au = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr16.i = freeze i1 %i.au
  br i1 %cond.fr16.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

.split13.i:                                       ; preds = %bb.k
  %i.av = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr14.i = freeze i1 %i.av
  br i1 %cond.fr14.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

.split11.i:                                       ; preds = %bb.k
  %i.aw = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr12.i = freeze i1 %i.aw
  br i1 %cond.fr12.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i

end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB1t_B2j_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4I_8adapters6cloned6ClonedINtNtB8_4iter4IterB1s_EEE0E0EB1z_:bb.a
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.043.i, align 8, !range !10, !alias.scope !1219, !noundef !4 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.017.043.i, i64 8
  %.sroa.017.0.val24.i = load i64, ptr %i.bg, align 8, !alias.scope !1219 ; 5 uses
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.045.i, align 8, !range !10, !alias.scope !1219, !noundef !4 ; 2 uses
  %i.bh = getelementptr i8, ptr %.sroa.015.045.i, i64 8
  %.sroa.015.0.val25.i = load i64, ptr %i.bh, align 8, !alias.scope !1219 ; 5 uses
  %i.bi = icmp eq i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %i.bi, label %bb.m, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.i

bb.m:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i
  switch i64 %.sroa.017.0.val.i, label %default.unreachable [
    i64 0, label %.split21.i
    i64 1, label %.split30.i
    i64 2, label %.split28.i
    i64 3, label %.split26.i
    i64 4, label %.split24.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i
  ]

.split21.i:                                       ; preds = %bb.m
  %i.bj = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1722.i = freeze i1 %i.bj
  br i1 %cond.fr1722.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split30.i:                                       ; preds = %bb.m
  %i.bk = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1731.i = freeze i1 %i.bk
  br i1 %cond.fr1731.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split28.i:                                       ; preds = %bb.m
  %i.bl = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1729.i = freeze i1 %i.bl
  br i1 %cond.fr1729.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split26.i:                                       ; preds = %bb.m
  %i.bm = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1727.i = freeze i1 %i.bm
  br i1 %cond.fr1727.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

.split24.i:                                       ; preds = %bb.m
  %i.bn = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %cond.fr1725.i = freeze i1 %i.bn
  br i1 %cond.fr1725.i, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.thread.i
  %i.bo = icmp samesign ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %i.bo, label %bb.n, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

bb.n:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.i, %.split24.i, %.split26.i, %.split28.i, %.split30.i, %.split21.i
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.thread.i: ; preds = %bb.n, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.i, %.split24.i, %.split26.i, %.split28.i, %.split30.i, %.split21.i, %bb.m
  %.sroa.0.0.i.i.i2620.i = phi i1 [ true, %bb.n ], [ false, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.i ], [ false, %.split30.i ], [ false, %.split21.i ], [ false, %.split24.i ], [ false, %.split26.i ], [ false, %.split28.i ], [ false, %bb.m ] ; 2 uses
  %i.bp = phi ptr [ %.sroa.015.045.i, %bb.n ], [ %.sroa.017.043.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit28.i ], [ %.sroa.017.043.i, %.split30.i ], [ %.sroa.017.043.i, %.split21.i ], [ %.sroa.017.043.i, %.split24.i ], [ %.sroa.017.043.i, %.split26.i ], [ %.sroa.017.043.i, %.split28.i ], [ %.sroa.017.043.i, %bb.m ]
  %i.bq = xor i1 %.sroa.0.0.i.i.i2620.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.042.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !1221
  %.neg.i.i = sext i1 %i.bq to i64
  %i.br = getelementptr [56 x i8], ptr %.sroa.017.043.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i.i2620.i to i64
  %i.bs = getelementptr [56 x i8], ptr %.sroa.015.045.i, i64 %.neg13.i.i ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.019.042.i, i64 -56
  %exitcond.not.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bu = icmp ult ptr %i.be, %i.al               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bu, ptr %i.be, ptr %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i, i64 56, i1 false)
  %i.bv = zext i1 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.be, i64 %i.bv
  %i.bx = xor i1 %i.bu, true
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %i.by
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.bz, %bb.o ]
  %.sroa.06.1.i = phi ptr [ %i.be, %._crit_edge.i ], [ %i.bw, %bb.o ]
  %i.ca = icmp ne ptr %.sroa.06.1.i, %i.al
  %i.cb = icmp ne ptr %.sroa.011.1.i, %i.am
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.cb, !prof !11
  br i1 %or.cond.i, label %bb.q, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3t_8BTreeMapB1h_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4w_8adapters6cloned6ClonedINtNtB8_4iter4IterB1g_EEE0E0EB1n_.exit, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = mul nuw nsw i64 %1, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.cd, i1 false), !noalias !1222
  resume { ptr, i32 } %i.cc

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1j_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3t_8BTreeMapB1h_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4w_8adapters6cloned6ClonedINtNtB8_4iter4IterB1g_EEE0E0EB1n_.exit: ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit
  %.sroa.05.039 = phi i64 [ %i.cy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.05.039 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.039, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -56 ; 4 uses
  %.val11.i = load i64, ptr %i.cf, align 8, !range !10, !noundef !4 ; 6 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  %.val12.i = load i64, ptr %i.ch, align 8        ; 7 uses
  %.val13.i = load i64, ptr %i.cg, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 -48
  %.val14.i = load i64, ptr %i.ci, align 8        ; 5 uses
  %i.cj = icmp eq i64 %.val11.i, %.val13.i
  br i1 %i.cj, label %bb.s, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26

bb.s:                                             ; preds = %.lr.ph
  switch i64 %.val11.i, label %default.unreachable [
    i64 0, label %.split.i30
    i64 1, label %.split9.i29
    i64 2, label %.split8.i
    i64 3, label %.split7.i
    i64 4, label %.split6.i
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit
  ]

default.unreachable:                              ; preds = %bb.s, %bb.h, %bb.m, %bb.k
  unreachable

.split.i30:                                       ; preds = %bb.s
  %i.ck = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.ck, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split9.i29:                                      ; preds = %bb.s
  %i.cl = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cl, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split8.i:                                        ; preds = %bb.s
  %i.cm = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cm, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split7.i:                                        ; preds = %bb.s
  %i.cn = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.cn, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

.split6.i:                                        ; preds = %bb.s
  %i.co = icmp ult i64 %.val12.i, %.val14.i
  br i1 %i.co, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26: ; preds = %.lr.ph
  %i.cp = icmp samesign ult i64 %.val11.i, %.val13.i
  br i1 %i.cp, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

bb.t:                                             ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26, %.split6.i, %.split7.i, %.split8.i, %.split9.i29, %.split.i30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i64 56, i1 false)
  %i.cr = icmp eq i64 %.sroa.05.039, 1
  br i1 %i.cr, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.backedge.i
  %.sroa.0.017.i = phi ptr [ %i.cs, %.backedge.i ], [ %i.cg, %bb.t ] ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.017.i, i64 -56 ; 4 uses
  %.val9.i = load i64, ptr %i.cs, align 8, !range !10, !noundef !4 ; 2 uses
  %i.ct = icmp eq i64 %.val11.i, %.val9.i
  br i1 %i.ct, label %bb.u, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i

bb.u:                                             ; preds = %.lr.ph.i28
  %i.cu = getelementptr i8, ptr %.sroa.0.017.i, i64 -48
  %.val10.i = load i64, ptr %i.cu, align 8
  %i.cv = icmp ult i64 %.val12.i, %.val10.i
  br i1 %i.cv, label %.backedge.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i: ; preds = %.lr.ph.i28
  %i.cw = icmp samesign ult i64 %.val11.i, %.val9.i
  br i1 %i.cw, label %.backedge.i, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i

.backedge.i:                                      ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i, %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.017.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i64 56, i1 false)
  %i.cx = icmp eq ptr %i.cs, %2
  br i1 %i.cx, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i, label %.lr.ph.i28

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i: ; preds = %.backedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i, %bb.u, %bb.t
  %.sroa.0.0.lcssa.i = phi ptr [ %i.cg, %bb.t ], [ %.sroa.0.017.i, %bb.u ], [ %.sroa.0.017.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.i ], [ %2, %.backedge.i ] ; 3 uses
  store i64 %.val11.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !1218
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1218
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB19_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4o_8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0E0EB1f_.exit: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit17.thread.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBB_18SubstitutionLookupE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB27_8BTreeMapBz_B1p_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB38_8adapters6cloned6ClonedINtNtNtB3a_5slice4iter4IterBy_EEE0E0BF_.exit.i26, %.split6.i, %.split7.i, %.split8.i, %.split9.i29, %.split.i30, %bb.s
  %i.cy = add nuw nsw i64 %.sroa.05.039, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1v_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_11sort_by_keyB1t_NCNvMNtB1x_8featuresNtB3K_11AllFeatures13finalize_aalts0_0E0EB1z_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1j_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keyB1h_NCNvMNtB1l_8featuresNtB3y_11AllFeatures13finalize_aalts0_0E0EB1n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1c_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMNtB1e_8featuresNtB3r_11AllFeatures13finalize_aalts0_0E0EB1g_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1c_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keyB1a_NCNvMNtB1e_8featuresNtB3r_11AllFeatures13finalize_aalts0_0E0EB1g_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit, %bb.g
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [24 x i8], ptr %2, i64 %i.d ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1
  %.sroa.05.039.1 = phi i64 [ %i.af, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.05.039.1
  %.idx.1 = mul nuw nsw i64 %.sroa.05.039.1, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.1 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 4 uses
  %.val11.i.1 = load i64, ptr %i.n, align 8, !range !10, !noundef !4 ; 6 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12.i.1 = load i64, ptr %i.p, align 8       ; 7 uses
  %.val13.i.1 = load i64, ptr %i.o, align 8, !range !10, !noundef !4 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -16
  %.val14.i.1 = load i64, ptr %i.q, align 8       ; 5 uses
  %i.r = icmp eq i64 %.val11.i.1, %.val13.i.1
  br i1 %i.r, label %bb.h, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.i26.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.i26.1: ; preds = %.lr.ph.1
  %i.s = icmp samesign ult i64 %.val11.i.1, %.val13.i.1
  br i1 %i.s, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  switch i64 %.val11.i.1, label %default.unreachable [
    i64 0, label %.split.i30.1
    i64 1, label %.split9.i29.1
    i64 2, label %.split8.i.1
    i64 3, label %.split7.i.1
    i64 4, label %.split6.i.1
    i64 5, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1
  ]

.split6.i.1:                                      ; preds = %bb.h
  %i.t = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.t, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

.split7.i.1:                                      ; preds = %bb.h
  %i.u = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.u, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

.split8.i.1:                                      ; preds = %bb.h
  %i.v = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.v, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

.split9.i29.1:                                    ; preds = %bb.h
  %i.w = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.w, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

.split.i30.1:                                     ; preds = %bb.h
  %i.x = icmp ult i64 %.val12.i.1, %.val14.i.1
  br i1 %i.x, label %bb.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

bb.i:                                             ; preds = %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.i26.1
  %.sroa.530.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.530.0.copyload.i.1 = load i64, ptr %.sroa.530.0..sroa_idx.i.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.y = icmp eq i64 %.sroa.05.039.1, 1
  br i1 %i.y, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %bb.i, %.backedge.i.1
  %.sroa.0.017.i.1 = phi ptr [ %i.z, %.backedge.i.1 ], [ %i.o, %bb.i ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.017.i.1, i64 -24 ; 4 uses
  %.val9.i.1 = load i64, ptr %i.z, align 8, !range !10, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %.val11.i.1, %.val9.i.1
  br i1 %i.aa, label %bb.j, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.i.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.i.1: ; preds = %.lr.ph.i28.1
  %i.ab = icmp samesign ult i64 %.val11.i.1, %.val9.i.1
  br i1 %i.ab, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.thread.i.1

bb.j:                                             ; preds = %.lr.ph.i28.1
  %i.ac = getelementptr i8, ptr %.sroa.0.017.i.1, i64 -16
  %.val10.i.1 = load i64, ptr %i.ac, align 8
  %i.ad = icmp ult i64 %.val12.i.1, %.val10.i.1
  br i1 %i.ad, label %.backedge.i.1, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.thread.i.1

.backedge.i.1:                                    ; preds = %bb.j, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.017.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ae = icmp eq ptr %i.z, %i.k
  br i1 %i.ae, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.thread.i.1, label %.lr.ph.i28.1

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.thread.i.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.i.1, %bb.j, %.backedge.i.1, %bb.i
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.o, %bb.i ], [ %.sroa.0.017.i.1, %bb.j ], [ %.sroa.0.017.i.1, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.i.1 ], [ %i.k, %.backedge.i.1 ] ; 3 uses
  store i64 %.val11.i.1, ptr %.sroa.0.0.lcssa.i.1, align 8, !noalias !1239
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 8
  store i64 %.val12.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1239
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1, i64 16
  store i64 %.sroa.530.0.copyload.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !1239
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit17.thread.i.1, %.split.i30.1, %.split9.i29.1, %.split8.i.1, %.split7.i.1, %.split6.i.1, %bb.h, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.i26.1
  %i.af = add nuw nsw i64 %.sroa.05.039.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.af, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtB1b_18SubstitutionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvMNtB1d_8featuresNtB3q_11AllFeatures13finalize_aalts0_0E0EB1f_.exit.1, %.loopexit
  %i.ag = add nsw i64 %1, -1                      ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.k, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i
  %i.ak = getelementptr i8, ptr %i.br, i64 24     ; 2 uses
  %i.al = getelementptr i8, ptr %i.bq, i64 24
  %i.am = and i64 %1, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.o

.lr.ph.i:                                         ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i, %.loopexit.1
  %.sroa.0.050.i = phi ptr [ %i.be, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.049.i = phi i64 [ %i.ao, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.047.i = phi ptr [ %i.bd, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ %2, %.loopexit.1 ] ; 10 uses
  %.sroa.011.046.i = phi ptr [ %i.bb, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ %i.k, %.loopexit.1 ] ; 4 uses
  %.sroa.015.045.i = phi ptr [ %i.br, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ %i.aj, %.loopexit.1 ] ; 4 uses
  %.sroa.017.043.i = phi ptr [ %i.bq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ %i.ai, %.loopexit.1 ] ; 10 uses
  %.sroa.019.042.i = phi ptr [ %i.bs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit28.thread.i ], [ %i.ah, %.loopexit.1 ] ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.04.049.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.046.i, align 8, !range !10, !alias.scope !1240, !noundef !4 ; 3 uses
  %i.ap = getelementptr i8, ptr %.sroa.011.046.i, i64 8
  %.sroa.011.0.val22.i = load i64, ptr %i.ap, align 8, !alias.scope !1240 ; 5 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.047.i, align 8, !range !10, !alias.scope !1240, !noundef !4 ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.06.047.i, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.aq, align 8, !alias.scope !1240 ; 5 uses
  %i.ar = icmp eq i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  br i1 %i.ar, label %bb.k, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  switch i64 %.sroa.011.0.val.i, label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %.split15.i
    i64 2, label %.split13.i
    i64 3, label %.split11.i
    i64 4, label %.split9.i
    i64 5, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.thread.i
  ]

.split.i:                                         ; preds = %bb.k
  %i.as = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr7.i = freeze i1 %i.as
  br i1 %cond.fr7.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.thread.i

.split15.i:                                       ; preds = %bb.k
  %i.at = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr16.i = freeze i1 %i.at
  br i1 %cond.fr16.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.thread.i

.split13.i:                                       ; preds = %bb.k
  %i.au = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr14.i = freeze i1 %i.au
  br i1 %cond.fr14.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.thread.i

.split11.i:                                       ; preds = %bb.k
  %i.av = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr12.i = freeze i1 %i.av
  br i1 %cond.fr12.i, label %bb.l, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBB_18SubstitutionLookupE11sort_by_keyBz_NCNvMNtBD_8featuresNtB2b_11AllFeatures13finalize_aalts0_0E0BF_.exit.thread.i

.split9.i:                                        ; preds = %bb.k
  %i.aw = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %cond.fr10.i = freeze i1 %i.aw
end_hunk_7
