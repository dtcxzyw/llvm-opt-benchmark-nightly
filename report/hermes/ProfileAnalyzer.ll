inline.NumInlined: 3091
inline.NumDeleted: 1557
begin_hunk_0_@_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.am = phi ptr [ %i.ai, %bb.c ], [ %i.w, %_ZNKSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE12_M_check_lenEmPKc.exit ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !110
  %i.ap = zext i16 %i.ao to i64
  %i.aq = urem i64 %i.ap, %i.z
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.aa, ptr %i.ar, align 8, !tbaa !203
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit: ; preds = %bb.d, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.as, align 8, !tbaa !328
  store i64 1, ptr %i.y, align 8, !tbaa !81
  store ptr null, ptr %i.aj, align 8, !tbaa !206
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.at = load i32, ptr %.0911.i.i.i, align 8, !tbaa !315, !alias.scope !760, !noalias !757
  store i32 %i.at, ptr %.012.i.i.i, align 8, !tbaa !315, !alias.scope !757, !noalias !760
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %i.av, i64 16, i1 false), !alias.scope !762
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !80, !alias.scope !760, !noalias !757 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !80, !alias.scope !757, !noalias !760
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !81, !alias.scope !760, !noalias !757 ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !81, !alias.scope !757, !noalias !760
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84, !alias.scope !760, !noalias !757 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !49, !alias.scope !757, !noalias !760
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !205, !alias.scope !760, !noalias !757
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !205, !alias.scope !757, !noalias !760
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !317, !alias.scope !762
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 4 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !206, !alias.scope !757, !noalias !760
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 4 uses
  %i.bm = icmp eq ptr %i.ay, %i.bl
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bk, ptr %i.aw, align 8, !tbaa !80, !alias.scope !757, !noalias !760
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !206, !alias.scope !760, !noalias !757
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !206, !alias.scope !757, !noalias !760
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.bo = phi ptr [ %i.bk, %bb.f ], [ %i.ay, %.lr.ph.i.i.i ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !110, !noalias !760
  %i.br = zext i16 %i.bq to i64
  %i.bs = urem i64 %i.br, %i.bb
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bs
  store ptr %i.bc, ptr %i.bt, align 8, !tbaa !203, !noalias !760
  br label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  store i64 0, ptr %i.bu, align 8, !tbaa !328, !alias.scope !760, !noalias !757
  store i64 1, ptr %i.ba, align 8, !tbaa !81, !alias.scope !760, !noalias !757
  store ptr %i.bl, ptr %i.ax, align 8, !tbaa !80, !alias.scope !760, !noalias !757
  store i64 0, ptr %i.bl, align 8, !alias.scope !760, !noalias !757
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !760, !noalias !757
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !763

_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit ], [ %i.bw, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.db, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bx, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 9 uses
  %.0911.i.i.i19 = phi ptr [ %i.da, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.by = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !315, !alias.scope !767, !noalias !764
  store i32 %i.by, ptr %.012.i.i.i18, align 8, !tbaa !315, !alias.scope !764, !noalias !767
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, i64 16, i1 false), !alias.scope !769
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80, !alias.scope !767, !noalias !764 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !80, !alias.scope !764, !noalias !767
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !81, !alias.scope !767, !noalias !764 ; 2 uses
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !81, !alias.scope !764, !noalias !767
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !84, !alias.scope !767, !noalias !764 ; 3 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !49, !alias.scope !764, !noalias !767
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !205, !alias.scope !767, !noalias !764
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !205, !alias.scope !764, !noalias !767
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !317, !alias.scope !769
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 4 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !206, !alias.scope !764, !noalias !767
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 4 uses
  %i.cr = icmp eq ptr %i.cd, %i.cq
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i17
  store ptr %i.cp, ptr %i.cb, align 8, !tbaa !80, !alias.scope !764, !noalias !767
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !206, !alias.scope !767, !noalias !764
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !206, !alias.scope !764, !noalias !767
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i17
  %i.ct = phi ptr [ %i.cp, %bb.i ], [ %i.cd, %.lr.ph.i.i.i17 ]
  %.not.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !110, !noalias !767
  %i.cw = zext i16 %i.cv to i64
  %i.cx = urem i64 %i.cw, %i.cg
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cx
  store ptr %i.ch, ptr %i.cy, align 8, !tbaa !203, !noalias !767
  br label %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.k, %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  store i64 0, ptr %i.cz, align 8, !tbaa !328, !alias.scope !767, !noalias !764
  store i64 1, ptr %i.cf, align 8, !tbaa !81, !alias.scope !767, !noalias !764
  store ptr %i.cq, ptr %i.cc, align 8, !tbaa !80, !alias.scope !767, !noalias !764
  store i64 0, ptr %i.cq, align 8, !alias.scope !767, !noalias !764
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !alias.scope !767, !noalias !764
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 80 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.da, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !763

_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24: ; preds = %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bx, %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.db, %_ZSt19__relocate_object_aISt4pairIjN6hermes25FunctionRuntimeStatisticsEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !327
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.df) #22
  br label %_ZNSt12_Vector_baseISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIjN6hermes25FunctionRuntimeStatisticsEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, %bb.l
  store ptr %i.p, ptr %0, align 8, !tbaa !419
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !324
  %i.dg = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %4 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %5 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %6 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1280
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph70

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEET_SG_SG_T0_.exit"
  %i.i = icmp eq i64 %i.fl, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph70, !llvm.loop !770

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa66 = phi i64 [ %i.c, %.lr.ph ], [ %i.gr, %bb.b ]
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa66, 80             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bp, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ab = getelementptr inbounds [80 x i8], ptr %0, i64 %.08.i.i.i ; 9 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !315 ; 2 uses
  store i32 %i.ac, ptr %5, align 8, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !81 ; 4 uses
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84 ; 3 uses
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !205 ; 2 uses
  store i64 %i.al, ptr %i.q, align 8, !tbaa !205
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !317
  store ptr null, ptr %i.s, align 8, !tbaa !206
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 4 uses
  %i.ao = icmp eq ptr %i.af, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.s, ptr %i.n, align 8, !tbaa !80
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !206
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !206
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi ptr [ %i.s, %bb.d ], [ %i.af, %bb.c ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !110
  %i.at = zext i16 %i.as to i64
  %i.au = urem i64 %i.at, %i.ah
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  store ptr %i.p, ptr %i.av, align 8, !tbaa !203
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !84
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.aw = phi ptr [ null, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 0, ptr %i.ax, align 8, !tbaa !328
  store i64 1, ptr %i.ag, align 8, !tbaa !81
  store ptr null, ptr %i.an, align 8, !tbaa !206
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i32 %i.ac, ptr %6, align 8, !tbaa !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 16, i1 false)
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !80
  store i64 %i.ah, ptr %i.v, align 8, !tbaa !81
  store ptr %i.aw, ptr %i.w, align 8, !tbaa !49
  store i64 %i.al, ptr %i.x, align 8, !tbaa !205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !317
  store ptr null, ptr %i.z, align 8, !tbaa !206
  %i.ay = icmp eq ptr %i.aq, %i.s
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i
  store ptr %i.z, ptr %i.u, align 8, !tbaa !80
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !206
  store ptr %i.az, ptr %i.z, align 8, !tbaa !206
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i
  %i.ba = phi ptr [ %i.z, %bb.g ], [ %i.aq, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i.i.i ]
  %.not.i.i.i.i.i.i9.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i9.i.i.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !110
  %i.bd = zext i16 %i.bc to i64
  %i.be = urem i64 %i.bd, %i.ah
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be
  store ptr %i.w, ptr %i.bf, align 8, !tbaa !203
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i: ; preds = %bb.i, %bb.h
  store i64 0, ptr %i.aa, align 8, !tbaa !328
  store i64 1, ptr %i.o, align 8, !tbaa !81
  store ptr null, ptr %i.s, align 8, !tbaa !206
  store ptr %i.s, ptr %i.n, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef %.08.i.i.i, i64 noundef %i.j, ptr noundef %6)
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !84  ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bg, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i ] ; 2 uses
  %i.bh = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i11.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i11.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !95

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit10.i.i.i
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.bj = load i64, ptr %i.v, align 8, !tbaa !81
  %i.bk = shl i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !80  ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.z
  br i1 %i.bm, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.v, align 8, !tbaa !81
  %i.bo = shl i64 %i.bn, 3
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #22
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.bp = add nsw i64 %.08.i.i.i, -1
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !84  ; 2 uses
  %.not5.i.i.i.i.i.i12.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not5.i.i.i.i.i.i12.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i.i13.i.i.i

.lr.ph.i.i.i.i.i.i13.i.i.i:                       ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i.i.i13.i.i.i
  %.06.i.i.i.i.i.i14.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i13.i.i.i ], [ %i.bq, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i ] ; 2 uses
  %i.br = load ptr, ptr %.06.i.i.i.i.i.i14.i.i.i, align 8, !tbaa !49 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i14.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i15.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i15.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i.i13.i.i.i, !llvm.loop !95

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i13.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i.i.i
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !81
  %i.bu = shl i64 %i.bt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.bu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !80  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.s
  br i1 %i.bw, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !81
  %i.by = shl i64 %i.bx, 3
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i: ; preds = %bb.k, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_RT0_.exit.i.i", label %bb.c, !llvm.loop !771

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_RT0_.exit.i.i": ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit17.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_T0_T1_":bb.a
  store ptr %i.dy, ptr %i.dc, align 8, !tbaa !84
  %i.dz = load i64, ptr %i.ct, align 8, !tbaa !205
  store i64 %i.dz, ptr %i.de, align 8, !tbaa !205
  %.not.i12.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i12.i.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !110
  %i.ec = zext i16 %i.eb to i64
  %i.ed = urem i64 %i.ec, %i.dx
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ed
  store ptr %i.dc, ptr %i.ee, align 8, !tbaa !203
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  store i64 0, ptr %i.cu, align 8, !tbaa !328
  store i64 1, ptr %i.cr, align 8, !tbaa !81
  store ptr null, ptr %i.cq, align 8, !tbaa !206
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit.i: ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit.i
  %i.ef = ptrtoint ptr %i.cv to i64
  %i.eg = sub i64 %i.ef, %i.a                     ; 2 uses
  %i.eh = sdiv exact i64 %i.eg, 80
  store i32 %i.cw, ptr %4, align 8, !tbaa !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ch, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i64 16, i1 false)
  store ptr %i.dk, ptr %i.ci, align 8, !tbaa !80
  store i64 %i.db, ptr %i.cj, align 8, !tbaa !81
  %i.ei = load ptr, ptr %i.cc, align 8, !tbaa !84 ; 3 uses
  store ptr %i.ei, ptr %i.ck, align 8, !tbaa !49
  store i64 %i.df, ptr %i.cl, align 8, !tbaa !205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !317
  store ptr null, ptr %i.cn, align 8, !tbaa !206
  %i.ej = icmp eq ptr %i.dk, %i.cf
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit.i
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !80
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !206
  store ptr %i.ek, ptr %i.cn, align 8, !tbaa !206
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit.i
  %i.el = phi ptr [ %i.cn, %bb.r ], [ %i.dk, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit.i ]
  %.not.i.i.i.i.i.i3.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i3.i, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit4.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.en = load i16, ptr %i.em, align 2, !tbaa !110
  %i.eo = zext i16 %i.en to i64
  %i.ep = urem i64 %i.eo, %i.db
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ep
  store ptr %i.ck, ptr %i.eq, align 8, !tbaa !203
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit4.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit4.i: ; preds = %bb.t, %bb.s
  store i64 0, ptr %i.co, align 8, !tbaa !328
  store i64 1, ptr %i.cb, align 8, !tbaa !81
  store ptr null, ptr %i.cf, align 8, !tbaa !206
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.eh, ptr noundef %4)
  %i.er = load ptr, ptr %i.ck, align 8, !tbaa !84 ; 2 uses
  %.not5.i.i.i.i.i.i5.i = icmp eq ptr %i.er, null
  br i1 %.not5.i.i.i.i.i.i5.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i.i6.i:                            ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit4.i, %.lr.ph.i.i.i.i.i.i6.i
  %.06.i.i.i.i.i.i7.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i6.i ], [ %i.er, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit4.i ] ; 2 uses
  %i.es = load ptr, ptr %.06.i.i.i.i.i.i7.i, align 8, !tbaa !49 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i7.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i8.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i8.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i6.i, !llvm.loop !95

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i6.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEC2EOS2_.exit4.i
  %i.et = load ptr, ptr %i.ci, align 8, !tbaa !80
  %i.eu = load i64, ptr %i.cj, align 8, !tbaa !81
  %i.ev = shl i64 %i.eu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.et, i8 0, i64 %i.ev, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  %i.ew = load ptr, ptr %i.ci, align 8, !tbaa !80 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cn
  br i1 %i.ex, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.ey = load i64, ptr %i.cj, align 8, !tbaa !81
  %i.ez = shl i64 %i.ey, 3
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #22
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i: ; preds = %bb.u, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.fa = load ptr, ptr %i.cc, align 8, !tbaa !84 ; 2 uses
  %.not5.i.i.i.i.i.i9.i = icmp eq ptr %i.fa, null
  br i1 %.not5.i.i.i.i.i.i9.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i13.i, label %.lr.ph.i.i.i.i.i.i10.i

.lr.ph.i.i.i.i.i.i10.i:                           ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i10.i
  %.06.i.i.i.i.i.i11.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i10.i ], [ %i.fa, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i ] ; 2 uses
  %i.fb = load ptr, ptr %.06.i.i.i.i.i.i11.i, align 8, !tbaa !49 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i11.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i12.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i12.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i13.i, label %.lr.ph.i.i.i.i.i.i10.i, !llvm.loop !95

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i13.i: ; preds = %.lr.ph.i.i.i.i.i.i10.i, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEED2Ev.exit.i
  %i.fc = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.fd = load i64, ptr %i.cb, align 8, !tbaa !81
  %i.fe = shl i64 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fc, i8 0, i64 %i.fe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %i.ca, align 8, !tbaa !80 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cf
  br i1 %i.fg, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_RT0_.exit", label %bb.v

bb.v:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i13.i
  %i.fh = load i64, ptr %i.cb, align 8, !tbaa !81
  %i.fi = shl i64 %i.fh, 3
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #22
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_RT0_.exit": ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i13.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fj = icmp sgt i64 %i.eg, 80
  br i1 %i.fj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_T0_.exit", !llvm.loop !772

.lr.ph70:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2769 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02868 = phi i64 [ %i.fl, %bb.b ], [ %2, %.lr.ph ]
  %i.fk = phi i64 [ %i.gr, %bb.b ], [ %i.c, %.lr.ph ]
  %i.fl = add nsw i64 %.02868, -1                 ; 3 uses
  %i.fm = udiv i64 %i.fk, 160
  %i.fn = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.fm ; 5 uses
  %i.fo = getelementptr inbounds i8, ptr %storemerge2769, i64 -80 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !363 ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fn, i64 8      ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.fp, align 8, !tbaa !363 ; 3 uses
  %i.fq = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.fr = getelementptr i8, ptr %storemerge2769, i64 -72 ; 3 uses
  %.val1.i27.i.i = load i64, ptr %i.fr, align 8, !tbaa !363 ; 4 uses
  br i1 %i.fq, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %.lr.ph70
  %i.fs = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.fs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ft = load i32, ptr %0, align 4, !tbaa !4
  %i.fu = load i32, ptr %i.fn, align 4, !tbaa !4
  store i32 %i.fu, ptr %0, align 4, !tbaa !4
  store i32 %i.ft, ptr %i.fn, align 4, !tbaa !4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"

bb.y:                                             ; preds = %bb.w
  %i.fv = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  %i.fw = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fx = load i32, ptr %i.fo, align 4, !tbaa !4
  store i32 %i.fx, ptr %0, align 4, !tbaa !4
  store i32 %i.fw, ptr %i.fo, align 4, !tbaa !4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"

bb.aa:                                            ; preds = %bb.y
  %i.fy = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.fy, ptr %0, align 4, !tbaa !4
  store i32 %i.fw, ptr %i.e, align 4, !tbaa !4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"

bb.ab:                                            ; preds = %.lr.ph70
  %i.fz = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.fz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ga = load i32, ptr %0, align 4, !tbaa !4
  %i.gb = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.gb, ptr %0, align 4, !tbaa !4
  store i32 %i.ga, ptr %i.e, align 4, !tbaa !4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"

bb.ad:                                            ; preds = %bb.ab
  %i.gc = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.gd = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  br i1 %i.gc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ge = load i32, ptr %i.fo, align 4, !tbaa !4
  store i32 %i.ge, ptr %0, align 4, !tbaa !4
  store i32 %i.gd, ptr %i.fo, align 4, !tbaa !4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"

bb.af:                                            ; preds = %bb.ad
  %i.gf = load i32, ptr %i.fn, align 4, !tbaa !4
  store i32 %i.gf, ptr %0, align 4, !tbaa !4
  store i32 %i.gd, ptr %i.fn, align 4, !tbaa !4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a": ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.z, %bb.x
  %.sink = phi ptr [ %i.fp, %bb.af ], [ %i.fr, %bb.ae ], [ %i.f, %bb.ac ], [ %i.f, %bb.aa ], [ %i.fr, %bb.z ], [ %i.fp, %bb.x ]
  tail call void @_ZSt4swapIN6hermes25FunctionRuntimeStatisticsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %.sink) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a"
  %.sroa.012.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a" ], [ %i.gi, %bb.aj ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2769, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_SG_T0_.exit.i.a" ], [ %.sroa.0.1.i.i, %bb.aj ]
  %.val1.i.i13.i = load i64, ptr %i.g, align 8, !tbaa !363 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.ag ], [ %i.gi, %bb.ah ] ; 10 uses
  %i.gg = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.gg, align 8, !tbaa !363
  %i.gh = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 80 ; 2 uses
  br i1 %i.gh, label %bb.ah, label %.preheader.i.i.preheader, !llvm.loop !773

.preheader.i.i.preheader:                         ; preds = %bb.ah
  %i.gj = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -80 ; 5 uses
  %i.gk = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -72
  %.val1.i9.i.i = load i64, ptr %i.gk, align 8, !tbaa !363
  %i.gl = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.gl, label %.preheader.i.i, label %bb.ai, !llvm.loop !774

bb.ai:                                            ; preds = %.preheader.i.i
  %i.gm = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gm, label %bb.aj, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEET_SG_SG_T0_.exit"

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -72
  %i.go = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !4
  %i.gp = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !4
  store i32 %i.gp, ptr %.sroa.012.1.i.i, align 4, !tbaa !4
  store i32 %i.go, ptr %.sroa.0.1.i.i, align 4, !tbaa !4
  tail call void @_ZSt4swapIN6hermes25FunctionRuntimeStatisticsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(72) %i.gj, ptr noundef nonnull align 8 dereferenceable(72) %i.gn) #21
  br label %bb.ag, !llvm.loop !775

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEET_SG_SG_T0_.exit": ; preds = %bb.ai
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2769, i64 noundef %i.fl)
  %i.gq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.gr = sub i64 %i.gq, %i.a                     ; 3 uses
  %i.gs = icmp sgt i64 %i.gr, 1280
  br i1 %i.gs, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_T0_.exit", !llvm.loop !770

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_SG_SG_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN6hermes25FunctionRuntimeStatisticsEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_15ProfileAnalyzer17dumpFunctionStatsEvE3$_1EEEvT_T0_SH_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.std::pair.217", align 8    ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit
  %.049 = phi i64 [ %spec.select, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.049, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [80 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [80 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !363
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !363
  %i.k = icmp ugt i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds [80 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.m = getelementptr inbounds [80 x i8], ptr %0, i64 %.049 ; 9 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !4
  store i32 %i.n, ptr %i.m, align 8, !tbaa !315
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.s = icmp eq i64 %spec.select, %.049
  br i1 %i.s, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !95

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !317
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !80  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !206
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !206
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i
  %i.ai = phi ptr [ %i.x, %bb.d ], [ %i.ae, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i ] ; 2 uses
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84 ; 3 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !205
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !205
  %.not.i12.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i12.i.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !110
  %i.at = zext i16 %i.as to i64
  %i.au = urem i64 %i.at, %i.ak
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.au
  store ptr %i.t, ptr %i.av, align 8, !tbaa !203
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 0, ptr %i.aw, align 8, !tbaa !328
  store i64 1, ptr %i.aj, align 8, !tbaa !81
  store ptr null, ptr %i.af, align 8, !tbaa !206
  store ptr %i.af, ptr %i.r, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit

_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit: ; preds = %.lr.ph, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i.i
  %i.ax = icmp slt i64 %spec.select, %i.b
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !776

._crit_edge:                                      ; preds = %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit ] ; 7 uses
  %i.ay = and i64 %2, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.g, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit32

bb.g:                                             ; preds = %._crit_edge
  %i.ba = add nsw i64 %2, -2
  %i.bb = ashr exact i64 %i.ba, 1
  %i.bc = icmp eq i64 %.0.lcssa, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit32

bb.h:                                             ; preds = %bb.g
  %i.bd = shl nsw i64 %.0.lcssa, 1
  %i.be = or disjoint i64 %i.bd, 1                ; 3 uses
  %i.bf = getelementptr inbounds [80 x i8], ptr %0, i64 %i.be ; 9 uses
  %i.bg = getelementptr inbounds [80 x i8], ptr %0, i64 %.0.lcssa ; 9 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !4
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !315
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bi, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bm = icmp eq i64 %i.be, %.0.lcssa
  br i1 %i.bm, label %_ZNSt4pairIjN6hermes25FunctionRuntimeStatisticsEEaSEOS2_.exit32, label %bb.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !84 ; 2 uses
  %.not5.i.i.i.i.i.i24 = icmp eq ptr %i.bo, null
  br i1 %.not5.i.i.i.i.i.i24, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i28, label %.lr.ph.i.i.i.i.i.i25

.lr.ph.i.i.i.i.i.i25:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i25
  %.06.i.i.i.i.i.i26 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i25 ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = load ptr, ptr %.06.i.i.i.i.i.i26, align 8, !tbaa !49 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i26, i64 noundef 24) #22
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i27, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i28, label %.lr.ph.i.i.i.i.i.i25, !llvm.loop !95

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i25, %bb.i
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 3 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i29, label %bb.j

bb.j:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !81
  %i.bv = shl i64 %i.bu, 3
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bv) #22
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i29

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i29: ; preds = %bb.j, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i.i.i28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !317
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 72 ; 4 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i29
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !206
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !206
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i29
  %i.cc = phi ptr [ %i.br, %bb.k ], [ %i.by, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i.i29 ] ; 2 uses
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !81 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !81
end_hunk_1
