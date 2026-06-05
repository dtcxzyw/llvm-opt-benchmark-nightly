inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC13fillRectangleERK10aiVector2tIdES4_RSt6vectorIS2_SaIS2_EE:bb.a
bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.g
  %i.an = ashr exact i64 %i.al, 4                 ; 3 uses
  %.sroa.speculated.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i14, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 576460752303423487)
  %i.ar = select i1 %i.ap, i64 576460752303423487, i64 %i.aq ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i15)
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #25 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = load double, ptr %0, align 8
  %i.aw = load double, ptr %i.ac, align 8
  store double %i.av, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.aw, ptr %i.ax, align 8
  %.not10.i.i.i.i.i16 = icmp eq ptr %i.ai, %i.aa
  br i1 %.not10.i.i.i.i.i16, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i13, %.lr.ph.i.i.i.i.i17
  %.012.i.i.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i17 ], [ %i.at, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i13 ] ; 2 uses
  %.0911.i.i.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i17 ], [ %i.ai, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i19, i64 16, i1 false), !alias.scope !43
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i19, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i.i.i20 = icmp eq ptr %i.ay, %i.aa
  br i1 %.not.i.i.i.i.i20, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i21: ; preds = %.lr.ph.i.i.i.i.i17, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i13
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.at, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i13 ], [ %i.az, %.lr.ph.i.i.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i22, i64 16 ; 2 uses
  %.not.i34.i.i23 = icmp eq ptr %i.ai, null
  br i1 %.not.i34.i.i23, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i24, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i24

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i24: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i21
  store ptr %i.at, ptr %2, align 8
  store ptr %i.ba, ptr %i.b, align 8
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.bb, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit25

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit25: ; preds = %bb.f, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i24
  %i.bc = phi ptr [ %.pre60, %bb.f ], [ %i.bb, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i24 ] ; 4 uses
  %i.bd = phi ptr [ %i.ah, %bb.f ], [ %i.ba, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i24 ] ; 2 uses
  %.not.i26 = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit25
  %i.be = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.be, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bg, ptr %i.b, align 8
  %.pre61 = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit39

bb.k:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit25
  %i.bh = load ptr, ptr %2, align 8               ; 5 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775792
  br i1 %i.bl, label %bb.l, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27: ; preds = %bb.k
  %i.bm = ashr exact i64 %i.bk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i28, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 576460752303423487)
  %i.bq = select i1 %i.bo, i64 576460752303423487, i64 %i.bp ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i29)
  %i.br = shl nuw nsw i64 %i.bq, 4
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #25 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  %i.bu = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.bu, ptr %i.bt, align 8
  %.not10.i.i.i.i.i30 = icmp eq ptr %i.bh, %i.bc
  br i1 %.not10.i.i.i.i.i30, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i35, label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27, %.lr.ph.i.i.i.i.i31
  %.012.i.i.i.i.i32 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i31 ], [ %i.bs, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27 ] ; 2 uses
  %.0911.i.i.i.i.i33 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i31 ], [ %i.bh, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i33, i64 16, i1 false), !alias.scope !47
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i33, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.bv, %i.bc
  br i1 %.not.i.i.i.i.i34, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i35, label %.lr.ph.i.i.i.i.i31, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i35: ; preds = %.lr.ph.i.i.i.i.i31, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27
  %.0.lcssa.i.i.i.i.i36 = phi ptr [ %i.bs, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i27 ], [ %i.bw, %.lr.ph.i.i.i.i.i31 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i36, i64 16 ; 2 uses
  %.not.i34.i.i37 = icmp eq ptr %i.bh, null
  br i1 %.not.i34.i.i37, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i38, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i38

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i38: ; preds = %bb.m, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i35
  store ptr %i.bs, ptr %2, align 8
  store ptr %i.bx, ptr %i.b, align 8
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  store ptr %i.by, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit39

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit39: ; preds = %bb.j, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i38
  %i.bz = phi ptr [ %.pre61, %bb.j ], [ %i.by, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i38 ] ; 4 uses
  %i.ca = phi ptr [ %i.bg, %bb.j ], [ %i.bx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i38 ] ; 3 uses
  %.not.i40 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit39
  %i.cb = load double, ptr %1, align 8
  %i.cc = load double, ptr %i.a, align 8
  store double %i.cb, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store double %i.cc, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %i.b, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.cf, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit53

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit39
  %i.cg = load ptr, ptr %2, align 8               ; 5 uses
  %i.ch = ptrtoint ptr %i.bz to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775792
  br i1 %i.ck, label %bb.p, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41: ; preds = %bb.o
  %i.cl = ashr exact i64 %i.cj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i42, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 576460752303423487)
  %i.cp = select i1 %i.cn, i64 576460752303423487, i64 %i.co ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i43)
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #25 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj ; 2 uses
  %i.ct = load double, ptr %1, align 8
  %i.cu = load double, ptr %i.a, align 8
  store double %i.ct, ptr %i.cs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8
  %.not10.i.i.i.i.i44 = icmp eq ptr %i.cg, %i.bz
  br i1 %.not10.i.i.i.i.i44, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49, label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41, %.lr.ph.i.i.i.i.i45
  %.012.i.i.i.i.i46 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i45 ], [ %i.cr, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41 ] ; 2 uses
  %.0911.i.i.i.i.i47 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i45 ], [ %i.cg, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i46, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i47, i64 16, i1 false), !alias.scope !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i47, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i46, i64 16 ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.cw, %i.bz
  br i1 %.not.i.i.i.i.i48, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49, label %.lr.ph.i.i.i.i.i45, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49: ; preds = %.lr.ph.i.i.i.i.i45, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41
  %.0.lcssa.i.i.i.i.i50 = phi ptr [ %i.cr, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41 ], [ %i.cx, %.lr.ph.i.i.i.i.i45 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i50, i64 16
  %.not.i34.i.i51 = icmp eq ptr %i.cg, null
  br i1 %.not.i34.i.i51, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cj) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52: ; preds = %bb.q, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49
  store ptr %i.cr, ptr %2, align 8
  store ptr %i.cy, ptr %i.b, align 8
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cz, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit53

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit53: ; preds = %bb.n, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC26ExtractVerticesFromClipperERKSt6vectorIN10ClipperLib8IntPointESaIS3_EERS1_I10aiVector2tIdESaIS9_EEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i
  %.val1230 = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.d, %i.f
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit
  %i.h = phi ptr [ %.val1230, %.lr.ph ], [ %.val1229, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 8 uses
  %.sroa.022.027 = phi ptr [ %i.d, %.lr.ph ], [ %i.as, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.022.027, align 8
  %i.j = uitofp <2 x i64> %i.i to <2 x double>
  %i.k = fdiv <2 x double> %i.j, splat (double f0x41D6A09E66400000) ; 2 uses
  %i.l = fcmp ogt <2 x double> %i.k, splat (double 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x double> splat (double 1.000000e+00), <2 x double> %i.k ; 4 uses
  %.val11 = load ptr, ptr %1, align 8             ; 2 uses
  %.not10.not.i = icmp ne ptr %.val11, %i.h
  %or.cond.not = select i1 %2, i1 %.not10.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.preheader, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = extractelement <2 x double> %i.m, i64 1
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16 ; 2 uses
  %.not.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.not.i, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.06.011.i = phi ptr [ %i.p, %bb.c ], [ %.val11, %.lr.ph.i.preheader ] ; 3 uses
  %i.q = load double, ptr %.sroa.06.011.i, align 8
  %i.r = fsub double %i.q, %i.n                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 8
  %i.t = load double, ptr %i.s, align 8
  %i.u = fsub double %i.t, %i.o                   ; 2 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.v)
  %i.x = fcmp olt double %i.w, f0x3EE4F8B580000000
  br i1 %i.x, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit, label %bb.c

_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread: ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread
  store <2 x double> %i.m, ptr %i.h, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.b, align 8
  br label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit

bb.e:                                             ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread
  %i.ab = load ptr, ptr %1, align 8               ; 5 uses
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #25 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store <2 x double> %i.m, ptr %i.an, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !55
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.am, ptr %1, align 8
  store ptr %i.aq, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.g, align 8
  br label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit

_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %.val1229 = phi ptr [ %i.aa, %bb.d ], [ %i.aq, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.h, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.std::pair.3") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.a, %i.c
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = phi <2 x double> [ splat (double 1.000000e+10), %bb.a ], [ %i.o, %.lr.ph ]
  %i.e = phi <2 x double> [ splat (double -1.000000e+10), %bb.a ], [ %i.q, %.lr.ph ]
  store <2 x double> %i.d, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.e, ptr %i.f, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.025.033 = phi ptr [ %i.r, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = phi <2 x double> [ %i.o, %.lr.ph ], [ splat (double 1.000000e+10), %bb.a ] ; 2 uses
  %i.h = phi <2 x double> [ %i.q, %.lr.ph ], [ splat (double -1.000000e+10), %bb.a ] ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.025.033, align 8
  %i.j = uitofp <2 x i64> %i.i to <2 x double>
  %i.k = fdiv <2 x double> %i.j, splat (double f0x41D6A09E66400000) ; 2 uses
  %i.l = fcmp ogt <2 x double> %i.k, splat (double 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x double> splat (double 1.000000e+00), <2 x double> %i.k ; 4 uses
  %i.n = fcmp olt <2 x double> %i.m, %i.g
  %i.o = select <2 x i1> %i.n, <2 x double> %i.m, <2 x double> %i.g ; 2 uses
  %i.p = fcmp olt <2 x double> %i.h, %i.m
  %i.q = select <2 x i1> %i.p, <2 x double> %i.m, <2 x double> %i.h ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiVector3t, align 8          ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::set", align 8          ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not314 = icmp eq ptr %i.c, %i.d
  br i1 %.not314, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

._crit_edge313:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph312, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit
  %i.o = phi ptr [ %i.d, %.lr.ph312 ], [ %i.ny, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit ]
  %.0310 = phi i64 [ 0, %.lr.ph312 ], [ %i.nw, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %.0310 ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp eq i64 %i.x, 64
  br i1 %i.y, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.z

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.z = load double, ptr %i.q, align 8           ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load double, ptr %i.aa, align 8         ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.d ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ad = load double, ptr %i.ac, align 8         ; 2 uses
  %i.ae = fcmp oeq double %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = fcmp olt double %i.ag, %i.ab
  %i.ai = fcmp olt double %i.ad, %i.z
  %.0.i.i.i.i = select i1 %i.ae, i1 %i.ah, i1 %i.ai ; 4 uses
  %.19.i.i.i = select i1 %.0.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %.0.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %bb.d, !llvm.loop !59

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %bb.d
  %i.aj = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.aj, label %.critedge155, label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %i.e, align 8
  store ptr null, ptr %i.f, align 8
  store ptr %i.e, ptr %i.g, align 8
  store ptr %i.e, ptr %i.h, align 8
  store i64 0, ptr %i.i, align 8
  %i.ak = load ptr, ptr %i.p, align 8
  %i.al = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %bb.e unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.al, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27
  %i.an = load i64, ptr %i.i, align 8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.i, align 8
  %.pre = load ptr, ptr %i.p, align 8             ; 5 uses
  %.02123.i.i.1.pre = load ptr, ptr %i.f, align 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 4 uses
  %.not24.i.i.1 = icmp eq ptr %.02123.i.i.1.pre, null
  br i1 %.not24.i.i.1, label %._crit_edge.thread.i.i.1, label %.lr.ph.i.i222.1

.lr.ph.i.i222.1:                                  ; preds = %bb.e
  %i.aq = load double, ptr %i.ap, align 8         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i222.1
  %.02125.i.i.1 = phi ptr [ %.02123.i.i.1.pre, %.lr.ph.i.i222.1 ], [ %.021.i.i.1, %bb.f ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02125.i.i.1, i64 32
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %i.av = fcmp oeq double %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.02125.i.i.1, i64 40
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fcmp olt double %i.as, %i.ax
  %i.az = fcmp olt double %i.aq, %i.au
  %.0.i.i.i223.1 = select i1 %i.av, i1 %i.ay, i1 %i.az ; 2 uses
  %.in.v.i.i.1 = select i1 %.0.i.i.i223.1, i64 16, i64 24
  %.in.i.i.1 = getelementptr inbounds nuw i8, ptr %.02125.i.i.1, i64 %.in.v.i.i.1
  %.021.i.i.1 = load ptr, ptr %.in.i.i.1, align 8 ; 2 uses
  %.not.i.i224.1 = icmp eq ptr %.021.i.i.1, null
  br i1 %.not.i.i224.1, label %._crit_edge.i.i.1, label %bb.f, !llvm.loop !60

._crit_edge.i.i.1:                                ; preds = %bb.f
  br i1 %.0.i.i.i223.1, label %._crit_edge.thread.i.i.1, label %bb.h

._crit_edge.thread.i.i.1:                         ; preds = %._crit_edge.i.i.1, %bb.e
  %.020.lcssa30.i.i.1 = phi ptr [ %.02125.i.i.1, %._crit_edge.i.i.1 ], [ %i.e, %bb.e ] ; 4 uses
  %i.ba = load ptr, ptr %i.g, align 8
  %i.bb = icmp eq ptr %.020.lcssa30.i.i.1, %i.ba
  br i1 %i.bb, label %select.unfold.i.1, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.1
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i.i.1) #23 ; 2 uses
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.pre.i.1 = load double, ptr %.phi.trans.insert.i.1, align 8
  %.pre19.i.1 = load double, ptr %i.ap, align 8
  %.phi.trans.insert20.i.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.pre21.i.1 = load double, ptr %.phi.trans.insert20.i.1, align 8
  %.phi.trans.insert22.i.1 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre23.i.1 = load double, ptr %.phi.trans.insert22.i.1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.1
  %i.bd = phi double [ %.pre23.i.1, %bb.g ], [ %i.as, %._crit_edge.i.i.1 ]
  %i.be = phi double [ %.pre21.i.1, %bb.g ], [ %i.ax, %._crit_edge.i.i.1 ]
  %i.bf = phi double [ %.pre19.i.1, %bb.g ], [ %i.aq, %._crit_edge.i.i.1 ] ; 2 uses
  %i.bg = phi double [ %.pre.i.1, %bb.g ], [ %i.au, %._crit_edge.i.i.1 ] ; 2 uses
  %.020.lcssa29.i.i.1 = phi ptr [ %.020.lcssa30.i.i.1, %bb.g ], [ %.02125.i.i.1, %._crit_edge.i.i.1 ]
  %i.bh = fcmp oeq double %i.bg, %i.bf
  %i.bi = fcmp olt double %i.be, %i.bd
  %i.bj = fcmp olt double %i.bg, %i.bf
  %.0.i5.i.i.1 = select i1 %i.bh, i1 %i.bi, i1 %i.bj
  br i1 %.0.i5.i.i.1, label %select.unfold.i.1, label %bb.j

select.unfold.i.1:                                ; preds = %bb.h, %._crit_edge.thread.i.i.1
  %.sroa.4.0.i.ph.i.1 = phi ptr [ %.020.lcssa30.i.i.1, %._crit_edge.thread.i.i.1 ], [ %.020.lcssa29.i.i.1, %bb.h ] ; 4 uses
  %i.bk = icmp eq ptr %.sroa.4.0.i.ph.i.1, %i.e
  br i1 %i.bk, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.1, i64 32
  %i.bm = load double, ptr %i.ap, align 8         ; 2 uses
  %i.bn = load double, ptr %i.bl, align 8         ; 2 uses
  %i.bo = fcmp oeq double %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.1, i64 40
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp olt double %i.bq, %i.bs
  %i.bu = fcmp olt double %i.bm, %i.bn
  %.0.i.i6.i.1 = select i1 %i.bo, i1 %i.bt, i1 %i.bu
  br label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1: ; preds = %bb.i, %select.unfold.i.1
  %i.bv = phi i1 [ %.0.i.i6.i.1, %bb.i ], [ true, %select.unfold.i.1 ]
  %i.bw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc.1 unwind label %bb.u   ; 2 uses

.noexc.1:                                         ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %.sroa.4.0.i.ph.i.1, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27
  %i.by = load i64, ptr %i.i, align 8
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.i, align 8
  %.pre328 = load ptr, ptr %i.p, align 8
  %.02123.i.i.2.pre = load ptr, ptr %i.f, align 8
  br label %bb.j

bb.j:                                             ; preds = %.noexc.1, %bb.h
  %.02123.i.i.2 = phi ptr [ %.02123.i.i.2.pre, %.noexc.1 ], [ %.02123.i.i.1.pre, %bb.h ] ; 3 uses
  %i.ca = phi ptr [ %.pre328, %.noexc.1 ], [ %.pre, %bb.h ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 4 uses
  %.not24.i.i.2 = icmp eq ptr %.02123.i.i.2, null
  br i1 %.not24.i.i.2, label %._crit_edge.thread.i.i.2, label %.lr.ph.i.i222.2

.lr.ph.i.i222.2:                                  ; preds = %bb.j
  %i.cc = load double, ptr %i.cb, align 8         ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load double, ptr %i.cd, align 8         ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i222.2
  %.02125.i.i.2 = phi ptr [ %.02123.i.i.2, %.lr.ph.i.i222.2 ], [ %.021.i.i.2, %bb.k ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE:bb.a
  %i.lz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #25 ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lr ; 3 uses
  store double %.sroa.0236.0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store double %.sroa.7.0, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store double 0.000000e+00, ptr %i.mc, align 8
  %.not10.i.i.i.i.i212 = icmp eq ptr %i.lo, %i.kp
  br i1 %.not10.i.i.i.i.i212, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217, label %.lr.ph.i.i.i.i.i213

.lr.ph.i.i.i.i.i213:                              ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209, %.lr.ph.i.i.i.i.i213
  %.012.i.i.i.i.i214 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i213 ], [ %i.lz, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209 ] ; 2 uses
  %.0911.i.i.i.i.i215 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i213 ], [ %i.lo, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i214, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i215, i64 24, i1 false), !alias.scope !67
  %i.md = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i215, i64 24 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i214, i64 24 ; 2 uses
  %.not.i.i.i.i.i216 = icmp eq ptr %i.md, %i.kp
  br i1 %.not.i.i.i.i.i216, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217, label %.lr.ph.i.i.i.i.i213, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217: ; preds = %.lr.ph.i.i.i.i.i213, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209
  %.0.lcssa.i.i.i.i.i218 = phi ptr [ %i.lz, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209 ], [ %i.me, %.lr.ph.i.i.i.i.i213 ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i218, i64 24 ; 2 uses
  %.not.i35.i.i219 = icmp eq ptr %i.lo, null
  br i1 %.not.i35.i.i219, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lr) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217
  store ptr %i.lz, ptr %2, align 8
  store ptr %i.mf, ptr %i.j, align 8
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.lx
  store ptr %i.mg, ptr %i.k, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

bb.az:                                            ; preds = %bb.ah
  %i.mh = icmp eq i64 %i.iy, 1
  %.pre336 = load ptr, ptr %2, align 8            ; 4 uses
  br i1 %i.mh, label %bb.ba, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

bb.ba:                                            ; preds = %bb.az
  %i.mi = getelementptr inbounds i8, ptr %.pre336, i64 %i.iu ; 3 uses
  %.not.i.i = icmp eq ptr %i.mi, %i.kp
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.ba
  store ptr %i.mi, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit: ; preds = %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.ba, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.av, %bb.az
  %i.mj = phi ptr [ %.pre336, %bb.az ], [ %.pre336, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %.pre336, %bb.ba ], [ %i.lz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre335, %bb.av ]
  %i.mk = phi ptr [ %i.kp, %bb.az ], [ %i.mi, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.kp, %bb.ba ], [ %i.mf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ln, %bb.av ]
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = sdiv exact i64 %i.mn, 24                ; 2 uses
  %.not150 = icmp eq i64 %i.mo, %i.iv
  br i1 %.not150, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit
  %i.mp = sub nsw i64 %i.mo, %i.iv                ; 2 uses
  %i.mq = trunc i64 %i.mp to i32                  ; 2 uses
  %i.mr = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.ms = load ptr, ptr %i.n, align 8
  %.not.i.i221 = icmp eq ptr %i.mr, %i.ms
  br i1 %.not.i.i221, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.mq, ptr %i.mr, align 4
  %i.mt = load ptr, ptr %i.m, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store ptr %i.mu, ptr %i.m, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.bd:                                            ; preds = %bb.bb
  %i.mv = load ptr, ptr %i.l, align 8             ; 4 uses
  %i.mw = ptrtoint ptr %i.mr to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx                    ; 6 uses
  %i.mz = icmp eq i64 %i.my, 9223372036854775804
  br i1 %i.mz, label %bb.be, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bd
  %i.na = ashr exact i64 %i.my, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.na, i64 1)
  %i.nb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.na ; 2 uses
  %i.nc = icmp ult i64 %i.nb, %i.na
  %i.nd = call i64 @llvm.umin.i64(i64 %i.nb, i64 2305843009213693951)
  %i.ne = select i1 %i.nc, i64 2305843009213693951, i64 %i.nd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ne, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %i.ng = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nf) #25 ; 4 uses
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %i.my ; 2 uses
  store i32 %i.mq, ptr %i.nh, align 4
  %i.ni = icmp sgt i64 %i.my, 0
  br i1 %i.ni, label %bb.bf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.bf:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ng, ptr align 4 %i.mv, i64 %i.my, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bf, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.my) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ng, ptr %i.l, align 8
  store ptr %i.nj, ptr %i.m, align 8
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.ne
  store ptr %i.nk, ptr %i.n, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %.idx = mul i64 %i.mp, -24                      ; 2 uses
  %i.nl = icmp slt i64 %.idx, -24
  br i1 %i.nl, label %.lr.ph.i.i.preheader, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.nm = load ptr, ptr %i.j, align 8, !noalias !71 ; 2 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 %.idx ; 2 uses
  %storemerge4.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.01.0.i = phi ptr [ %i.np, %.lr.ph.i.i ], [ %i.nm, %.lr.ph.i.i.preheader ]
  %.sroa.0.0.i = phi ptr [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge4.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.no = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i ], [ %i.nn, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.np, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr noundef nonnull align 8 dereferenceable(24) %i.no, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.no, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24 ; 2 uses
  %i.nq = icmp ult ptr %storemerge.i.i, %i.np
  br i1 %i.nq, label %.lr.ph.i.i, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit, !llvm.loop !74

_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit
  %.not151 = icmp eq i64 %.0135307.fr, %.0136306
  br i1 %.not151, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, label %.thread

.thread:                                          ; preds = %bb.af, %.critedge157, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit
  %.2133281 = phi i64 [ %.0135307.fr, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit ], [ %.0135307.fr, %.critedge157 ], [ %.0131309, %bb.af ]
  %.3139280 = phi i64 [ %.0136306, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit ], [ %.0135307.fr, %.critedge157 ], [ %.0136306, %bb.af ]
  %.sroa.8.2279 = phi double [ %.sroa.8.1, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit ], [ %.sroa.8.1, %.critedge157 ], [ %.sroa.8.0304, %bb.af ]
  %i.nr = add i64 %.0135307.fr, 1                 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, %i.ho
  %i.nt = select i1 %i.ns, i64 0, i64 %i.nr
  %i.nu = add i64 %.0134308, 1                    ; 2 uses
  %i.nv = icmp eq i64 %i.nu, %i.hp
  br i1 %i.nv, label %._crit_edge, label %bb.ab, !llvm.loop !75

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit: ; preds = %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit, %._crit_edge, %bb.aa, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit204, %bb.b
  %i.nw = add nuw i64 %.0310, 1                   ; 2 uses
  %i.nx = load ptr, ptr %i.b, align 8
  %i.ny = load ptr, ptr %0, align 8               ; 2 uses
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = sdiv exact i64 %i.ob, 104
  %i.od = icmp ult i64 %i.nw, %i.oc
  br i1 %i.od, label %bb.b, label %._crit_edge313, !llvm.loop !76
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC19MergeWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 20 uses
  %4 = alloca %"class.std::vector.10", align 8    ; 24 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.k, %i.m
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.p = invoke noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 6 uses
  %.sroa.060.071 = phi ptr [ %i.k, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 3 uses
  %i.r = load double, ptr %.sroa.060.071, align 8
  %i.s = fmul double %i.r, f0x41D6A09E66400000
  %i.t = fptoui double %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.060.071, i64 8
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %i.v, f0x41D6A09E66400000
  %i.x = fptoui double %i.w to i64                ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.q, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.t, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.n, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %4, align 8               ; 5 uses
  %i.ad = ptrtoint ptr %i.q to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc unwind label %.loopexit.split-lp65

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25
          to label %.noexc18 unwind label %.loopexit64 ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 2 uses
  store i64 %i.t, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.x, ptr %i.ap, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.an, %.noexc18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.noexc18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !78
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc18
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc18 ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.an, ptr %4, align 8
  store ptr %i.as, ptr %i.n, align 8
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  store ptr %i.at, ptr %i.o, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %i.au = phi ptr [ %i.as, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ab, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.060.071, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.m
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit64:                                      ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp65:                             ; preds = %bb.f
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %._crit_edge
  br i1 %i.p, label %bb.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %4, align 8               ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ne ptr %i.aw, %i.ay
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %i.ba = icmp ult ptr %i.aw, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %bb.i ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.aw, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -16 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %.sroa.0.0.i.i
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, !llvm.loop !83

bb.j:                                             ; preds = %bb.s, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42, %._crit_edge75, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %bb.i, %bb.h
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  %i.bi = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.k:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.bj = load ptr, ptr %4, align 8               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i19, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.k
  store ptr %i.bj, ptr %i.bk, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC19MergeWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE:bb.a
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %3, i64 %i.dg
  %i.di = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.j       ; 0 uses

bb.s:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42
  %i.dj = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef 1)
          to label %bb.t unwind label %bb.j       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.dq = load ptr, ptr @_ZTTN10ClipperLib7ClipperE, align 8 ; 2 uses
  store ptr %i.dq, ptr %3, align 8
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN10ClipperLib7ClipperE, i64 8), align 8
  %i.ds = getelementptr i8, ptr %i.dq, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %3, i64 %i.dt
  store ptr %i.dr, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.dw, %i.dv
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i44

.lr.ph.i.i.i.i44:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i44
  %.09.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i44 ], [ %i.dw, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit ] ; 2 uses
  %i.dx = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #26
  %.not.i.i.i.i45 = icmp eq ptr %i.dx, %i.dv
  br i1 %.not.i.i.i.i45, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i44, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i44, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8            ; 3 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #26
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.v, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #26
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #26
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.et) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit64, %.loopexit.split-lp65, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.j ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp65 ], [ %lpad.loopexit66, %.loopexit64 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit48

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit48: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn
}

declare void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135), i32 noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) unnamed_addr #6

declare noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTN10ClipperLib7ClipperE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN10ClipperLib7ClipperE, i64 8), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #26
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i:     ; preds = %.lr.ph.i.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #26
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i3.i, label %_ZN10ClipperLib7ClipperD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #26
  br label %_ZN10ClipperLib7ClipperD2Ev.exit

_ZN10ClipperLib7ClipperD2Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ad) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC26MakeDisjunctWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 20 uses
  %4 = alloca %"class.std::vector.10", align 8    ; 24 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.k, %i.m
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.p = invoke noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 6 uses
  %.sroa.060.071 = phi ptr [ %i.k, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 3 uses
  %i.r = load double, ptr %.sroa.060.071, align 8
  %i.s = fmul double %i.r, f0x41D6A09E66400000
  %i.t = fptoui double %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.060.071, i64 8
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %i.v, f0x41D6A09E66400000
  %i.x = fptoui double %i.w to i64                ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.q, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.t, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.n, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %4, align 8               ; 5 uses
  %i.ad = ptrtoint ptr %i.q to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc unwind label %.loopexit.split-lp65

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25
          to label %.noexc18 unwind label %.loopexit64 ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 2 uses
  store i64 %i.t, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.x, ptr %i.ap, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.an, %.noexc18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.noexc18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !89
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc18
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc18 ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.an, ptr %4, align 8
  store ptr %i.as, ptr %i.n, align 8
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  store ptr %i.at, ptr %i.o, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %i.au = phi ptr [ %i.as, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ab, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.060.071, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.m
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit64:                                      ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp65:                             ; preds = %bb.f
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %._crit_edge
  br i1 %i.p, label %bb.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %4, align 8               ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ne ptr %i.aw, %i.ay
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %i.ba = icmp ult ptr %i.aw, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %bb.i ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.aw, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -16 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %.sroa.0.0.i.i
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, !llvm.loop !83

bb.j:                                             ; preds = %bb.s, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42, %._crit_edge75, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %bb.i, %bb.h
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  %i.bi = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.k:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.bj = load ptr, ptr %4, align 8               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i19, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.k
  store ptr %i.bj, ptr %i.bk, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC26MakeDisjunctWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE:bb.a
  %.not.i.i.i23 = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i.i23)
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #25
          to label %.noexc34 unwind label %.loopexit ; 5 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store i64 %i.bv, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.bz, ptr %i.cr, align 8
  %.not10.i.i.i.i.i24 = icmp eq ptr %i.ce, %i.bs
  br i1 %.not10.i.i.i.i.i24, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i29, label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.noexc34, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i26 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i25 ], [ %i.cp, %.noexc34 ] ; 2 uses
  %.0911.i.i.i.i.i27 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i25 ], [ %i.ce, %.noexc34 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i27, i64 16, i1 false), !alias.scope !93
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i27, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i26, i64 16 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.cs, %i.bs
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i29, label %.lr.ph.i.i.i.i.i25, !llvm.loop !82

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i29: ; preds = %.lr.ph.i.i.i.i.i25, %.noexc34
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.cp, %.noexc34 ], [ %i.ct, %.lr.ph.i.i.i.i.i25 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i34.i.i31 = icmp eq ptr %i.ce, null
  br i1 %.not.i34.i.i31, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i32, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i29
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i32

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i32: ; preds = %bb.p, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i29
  store ptr %i.cp, ptr %4, align 8
  store ptr %i.cu, ptr %i.bk, align 8
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.cv, ptr %i.bq, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit35

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit35: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i32, %bb.m
  %i.cw = phi ptr [ %i.cu, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i32 ], [ %i.cd, %bb.m ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 16 ; 2 uses
  %.not63 = icmp eq ptr %i.cx, %i.bp
  br i1 %.not63, label %._crit_edge75, label %bb.l

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i21
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %._crit_edge75
  br i1 %i.br, label %bb.r, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42

bb.r:                                             ; preds = %bb.q
  %i.cy = load ptr, ptr %4, align 8               ; 3 uses
  %i.cz = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.da = icmp ne ptr %i.cy, %i.cz
  %.sroa.0.08.i.i36 = getelementptr inbounds i8, ptr %i.cz, i64 -16 ; 2 uses
  %i.db = icmp ult ptr %i.cy, %.sroa.0.08.i.i36
  %or.cond.i.i37 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond.i.i37, label %.lr.ph.i.i38, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42

.lr.ph.i.i38:                                     ; preds = %bb.r, %.lr.ph.i.i38
  %.sroa.0.010.i.i39 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i38 ], [ %.sroa.0.08.i.i36, %bb.r ] ; 3 uses
  %.sroa.05.09.i.i40 = phi ptr [ %i.dc, %.lr.ph.i.i38 ], [ %i.cy, %bb.r ] ; 3 uses
  %.sroa.0109.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i40, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i39, i64 16, i1 false)
  store <2 x i64> %.sroa.0109.0.copyload, ptr %.sroa.0.010.i.i39, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i40, i64 16 ; 2 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i39, i64 -16 ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %.sroa.0.0.i.i41
  br i1 %i.dd, label %.lr.ph.i.i38, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42, !llvm.loop !83

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42: ; preds = %.lr.ph.i.i38, %bb.r, %bb.q
  %i.de = load ptr, ptr %3, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %3, i64 %i.dg
  %i.di = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.j       ; 0 uses

bb.s:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit42
  %i.dj = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef 1)
          to label %bb.t unwind label %bb.j       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.dq = load ptr, ptr @_ZTTN10ClipperLib7ClipperE, align 8 ; 2 uses
  store ptr %i.dq, ptr %3, align 8
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN10ClipperLib7ClipperE, i64 8), align 8
  %i.ds = getelementptr i8, ptr %i.dq, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %3, i64 %i.dt
  store ptr %i.dr, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.dw, %i.dv
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i44

.lr.ph.i.i.i.i44:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i44
  %.09.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i44 ], [ %i.dw, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit ] ; 2 uses
  %i.dx = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #26
  %.not.i.i.i.i45 = icmp eq ptr %i.dx, %i.dv
  br i1 %.not.i.i.i.i45, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i44, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i44, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8            ; 3 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #26
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.v, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #26
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #26
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.et) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit64, %.loopexit.split-lp65, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.j ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp65 ], [ %lpad.loopexit66, %.loopexit64 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit48

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit48: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20CleanupWindowContourERNS0_22ProjectedWindowContourE(ptr noundef nonnull align 8 captures(none) dereferenceable(97) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %2 = alloca %"class.std::vector.10", align 8    ; 13 uses
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 19 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 0)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not3738 = icmp eq ptr %i.c, %i.e
  br i1 %.not3738, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit, %bb.b
  %i.h = load ptr, ptr %3, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  %i.l = invoke noundef zeroext i1 @_ZN10ClipperLib11ClipperBase7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.m       ; 0 uses

.thread:                                          ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit28

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 6 uses
  %.sroa.034.039 = phi ptr [ %i.c, %.lr.ph ], [ %i.as, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 3 uses
  %i.o = load double, ptr %.sroa.034.039, align 8
  %i.p = fmul double %i.o, f0x41D6A09E66400000
  %i.q = fptoui double %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.034.039, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = fmul double %i.s, f0x41D6A09E66400000
  %i.u = fptoui double %i.t to i64                ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.n, %i.v
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.q, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.u, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.f, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %2, align 8                ; 5 uses
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775792
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 576460752303423487)
  %i.ai = select i1 %i.ag, i64 576460752303423487, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #25
          to label %.noexc12 unwind label %.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store i64 %i.q, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.u, ptr %i.am, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ak, %.noexc12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc12 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !97
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %.noexc12 ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ak, ptr %2, align 8
  store ptr %i.ap, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.aq, ptr %i.g, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %i.ar = phi ptr [ %i.ap, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.y, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.034.039, i64 16 ; 2 uses
  %.not37 = icmp eq ptr %i.as, %i.e
  br i1 %.not37, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %._crit_edge
  %i.at = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, i32 noundef 1)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load ptr, ptr %4, align 8               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not = icmp eq i64 %i.az, 24
  br i1 %.not, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp eq ptr %i.aw, %i.av
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.k
  br i1 %i.bb, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.bd = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc15 unwind label %bb.m

.noexc15:                                         ; preds = %.noexc14
  store ptr %i.bd, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA60_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(60) @.str.1)
          to label %.noexc16 unwind label %bb.m

.noexc16:                                         ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit: ; preds = %.noexc16, %.noexc13
  %i.be = load ptr, ptr %0, align 8               ; 2 uses
  %i.bf = load ptr, ptr %i.d, align 8
  %.not.i.i.i17 = icmp eq ptr %i.bf, %i.be
  br i1 %.not.i.i.i17, label %_ZN6Assimp3IFC22ProjectedWindowContour11FlagInvalidEv.exit, label %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit
  store ptr %i.be, ptr %i.d, align 8
  br label %_ZN6Assimp3IFC22ProjectedWindowContour11FlagInvalidEv.exit

bb.m:                                             ; preds = %.noexc20, %.noexc19, %bb.o, %bb.n, %.noexc15, %.noexc14, %bb.l, %bb.k, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA60_KcEEEvDpOT_.exit22, %bb.h, %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN6Assimp3IFC20CleanupWindowContourERNS0_22ProjectedWindowContourE:bb.a
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #26
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ca = load ptr, ptr @_ZTTN10ClipperLib7ClipperE, align 8 ; 2 uses
  store ptr %i.ca, ptr %3, align 8
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN10ClipperLib7ClipperE, i64 8), align 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd
  store ptr %i.cb, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.cg, %i.cf
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %i.cg, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit ] ; 2 uses
  %i.ch = load ptr, ptr %.09.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #26
  %.not.i.i.i.i = icmp eq ptr %i.ch, %i.cf
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i:   ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i24, label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #26
  br label %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.r, %_ZNSt7__cxx1110_List_baseIxSaIxEED2Ev.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #26
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN10ClipperLib13IntersectNodeESaIS2_EED2Ev.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i3.i.i, label %_ZN10ClipperLib7ClipperD1Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #26
  br label %_ZN10ClipperLib7ClipperD1Ev.exit

_ZN10ClipperLib7ClipperD1Ev.exit:                 ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EED2Ev.exit.i.i, %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @_ZN10ClipperLib11ClipperBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.dd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.de = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN10ClipperLib7ClipperD1Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %_ZN10ClipperLib7ClipperD1Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.dk = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.w:                                             ; preds = %bb.m, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN10ClipperLib7ClipperD1Ev(ptr noundef nonnull align 8 dereferenceable(135) %3) #27
  %.pre = load ptr, ptr %2, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not.i.i.i27 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit28, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %.pre to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.du) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit28

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit28: ; preds = %.thread, %bb.w, %bb.x
  %.pn.pn63 = phi { ptr, i32 } [ %i.m, %.thread ], [ %.pn, %bb.w ], [ %.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.dv = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit30, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit28
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit30

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit30:  ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit28, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn.pn63
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #26
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC21CleanupWindowContoursERSt6vectorINS0_22ProjectedWindowContourESaIS2_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator.86", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.a, %i.c
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.031.035 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  invoke void @_ZN6Assimp3IFC20CleanupWindowContourERNS0_22ProjectedWindowContourE(ptr noundef nonnull align 8 dereferenceable(97) %.sroa.031.035)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.031.035, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.c
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc                      ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #27
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i32 } %i.e, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.j, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %2, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @__cxa_end_catch() #27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret void

bb.i:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.j:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.l:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %1, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.l
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ac, %bb.l ] ; 2 uses
  %i.ai = load ptr, ptr %2, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ] ; 2 uses
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @__cxa_end_catch() #27
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.c
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.d, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.k = load i64, ptr %i.e, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.10", align 8    ; 18 uses
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 22 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 13 uses
  %5 = alloca %"class.std::vector.10", align 8    ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::allocator.86", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not223 = icmp eq ptr %i.b, %i.c
  br i1 %.not223, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %.sroa.20209.12 = phi ptr [ %i.j, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 8 uses
  %.sroa.12205.4 = phi ptr [ %i.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc63 unwind label %.thread

.noexc63:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %.not224 = icmp eq ptr %i.m, %i.n
  br i1 %.not224, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25
          to label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.e
  %.sroa.20.10 = phi ptr [ %i.t, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.e ] ; 6 uses
  %.sroa.12.3 = phi ptr [ %i.s, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.e ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = load ptr, ptr %0, align 8                ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc71 unwind label %bb.j

.noexc71:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not496 = icmp eq ptr %i.v, %i.w
  br i1 %.not496, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #25
          to label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.j ; 4 uses

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ac, ptr %5, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  store ptr %i.ae, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.h
  %i.af = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.h ]
  %.not225332 = icmp eq ptr %i.w, %i.v
  br i1 %.not225332, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit
  %i.ah = invoke noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.p unwind label %bb.j

.thread:                                          ; preds = %bb.b, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %bb.d, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.sroa.20209.0 = phi ptr [ null, %bb.b ], [ %.sroa.20209.12, %bb.d ], [ %.sroa.20209.12, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ]
  %.sroa.0200.0 = phi ptr [ null, %bb.b ], [ %.sroa.12205.4, %bb.d ], [ %.sroa.12205.4, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit156

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.ba

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i75, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, %bb.g, %._crit_edge
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.ay

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit
  %i.al = phi ptr [ %i.af, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 6 uses
  %.sroa.0185.0333 = phi ptr [ %i.w, %.lr.ph ], [ %i.bq, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 3 uses
  %i.am = load double, ptr %.sroa.0185.0333, align 8
  %i.an = fmul double %i.am, f0x41D6A09E66400000
  %i.ao = fptoui double %i.an to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0185.0333, i64 8
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fmul double %i.aq, f0x41D6A09E66400000
  %i.as = fptoui double %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.ab, align 8
  %.not.i = icmp eq ptr %i.al, %i.at
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.ao, ptr %i.al, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.as, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.ag, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ag, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %5, align 8               ; 5 uses
  %i.ay = ptrtoint ptr %i.al to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 4 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775792
  br i1 %i.bb, label %bb.n, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc73 unwind label %.loopexit.split-lp240

.noexc73:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bc = ashr exact i64 %i.ba, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #25
          to label %.noexc74 unwind label %.loopexit239 ; 5 uses

end_hunk_4
begin_hunk_5_@_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE:bb.a
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ke = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #27
  %i.kf = icmp eq i32 %.338, %i.ke
  br i1 %i.kf, label %bb.bc, label %bb.bo

bb.bc:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137
  %.3 = extractvalue { ptr, i32 } %.pn54.pn, 0
  %i.kg = call ptr @__cxa_begin_catch(ptr %.3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.kg, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.kh = load ptr, ptr %6, align 8               ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  %i.kk = load i64, ptr %i.ki, align 8
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.km = load ptr, ptr %7, align 8               ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kp = load i64, ptr %i.kn, align 8
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.kr = load ptr, ptr %8, align 8               ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.ku = load i64, ptr %i.ks, align 8
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @__cxa_end_catch() #27
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bc
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.bi:                                            ; preds = %bb.bd
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.bj:                                            ; preds = %bb.be
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.bk:                                            ; preds = %bb.bf
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %6, align 8               ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.bk
  %i.ld = load i64, ptr %i.lb, align 8
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.bj
  %.pn57 = phi { ptr, i32 } [ %i.ky, %bb.bj ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.kz, %bb.bk ] ; 2 uses
  %i.lf = load ptr, ptr %7, align 8               ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.li = load i64, ptr %i.lg, align 8
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.bi
  %.pn57.pn = phi { ptr, i32 } [ %i.kx, %bb.bi ], [ %.pn57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ] ; 2 uses
  %i.lk = load ptr, ptr %8, align 8               ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.ln = load i64, ptr %i.ll, align 8
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.bh
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.bh ], [ %.pn57.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn57.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @__cxa_end_catch() #27
  br label %bb.bo

bb.bl:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.sroa.20.8 = phi ptr [ %.sroa.20.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.fb, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ]
  %.sroa.0188.8 = phi ptr [ %.sroa.0188.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ez, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ] ; 3 uses
  %.sroa.20209.10 = phi ptr [ %.sroa.20209.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ey, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ]
  %.sroa.0200.10 = phi ptr [ %.sroa.0200.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ew, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ] ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %.sroa.0188.8, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lp = ptrtoint ptr %.sroa.20.8 to i64
  %i.lq = ptrtoint ptr %.sroa.0188.8 to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.8, i64 noundef %i.lr) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bl, %bb.bm
  %.not.i.i.i154 = icmp eq ptr %.sroa.0200.10, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ls = ptrtoint ptr %.sroa.20209.10 to i64
  %i.lt = ptrtoint ptr %.sroa.0200.10 to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.10, i64 noundef %i.lu) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.bn
  ret void

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137
  %.merged = phi { ptr, i32 } [ %.pn57.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn54.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137 ] ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %.sroa.0188.7, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIjSaIjEED2Ev.exit156, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lv = ptrtoint ptr %.sroa.20.7 to i64
  %i.lw = ptrtoint ptr %.sroa.0188.7 to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.7, i64 noundef %i.lx) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit156

_ZNSt6vectorIjSaIjEED2Ev.exit156:                 ; preds = %.thread, %bb.bo, %bb.bp
  %.merged222 = phi { ptr, i32 } [ %i.ai, %.thread ], [ %.merged, %bb.bo ], [ %.merged, %bb.bp ]
  %.sroa.0200.11221 = phi ptr [ %.sroa.0200.0, %.thread ], [ %.sroa.0200.9, %bb.bo ], [ %.sroa.0200.9, %bb.bp ] ; 3 uses
  %.sroa.20209.11220 = phi ptr [ %.sroa.20209.0, %.thread ], [ %.sroa.20209.9, %bb.bo ], [ %.sroa.20209.9, %bb.bp ]
  %.not.i.i.i157 = icmp eq ptr %.sroa.0200.11221, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit156
  %i.ly = ptrtoint ptr %.sroa.20209.11220 to i64
  %i.lz = ptrtoint ptr %.sroa.0200.11221 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.11221, i64 noundef %i.ma) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit156, %bb.bq
  resume { ptr, i32 } %.merged222
}

declare void @_ZN10ClipperLib11ClipperBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8           ; 3 uses
  %i.c = load double, ptr %1, align 8             ; 3 uses
  %i.d = fsub double %i.b, %i.c
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp olt double %i.e, f0x3E80000000000000
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8
  %i.k = fcmp ugt double %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp ult double %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = load double, ptr %0, align 8             ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  %i.t = fsub double %i.q, %i.s
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp olt double %i.u, f0x3E80000000000000
  br i1 %i.v, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre32 = load double, ptr %.phi.trans.insert31, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8           ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8           ; 3 uses
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fcmp ult double %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.e
  %i.ag = phi double [ %.pre32, %._crit_edge ], [ %i.x, %bb.f ], [ %i.x, %bb.e ]
  %i.ah = phi double [ %.pre, %._crit_edge ], [ %i.z, %bb.f ], [ %i.z, %bb.e ]
  %i.ai = fsub double %i.ah, %i.ag
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp uge double %i.aj, f0x3E80000000000000
  %i.al = fcmp ugt double %i.q, %i.s
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  %i.am = fcmp ult double %i.b, %i.c
  %or.cond28 = select i1 %or.cond, i1 true, i1 %i.am
  br i1 %or.cond28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp olt double %i.as, f0x3E80000000000000
  %i.au = fcmp ole double %i.c, %i.b
  %or.cond29.not = select i1 %i.at, i1 %i.au, i1 false
  %i.av = fcmp oge double %i.s, %i.q
  %spec.select = select i1 %or.cond29.not, i1 %i.av, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %i.aw = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.c ], [ %spec.select, %bb.h ]
  ret i1 %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 2 uses
  %i.b = load double, ptr %0, align 8             ; 4 uses
  %i.c = fsub double %i.a, %i.b                   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8           ; 4 uses
  %i.h = fsub double %i.e, %i.g                   ; 11 uses
  %i.i = load double, ptr %2, align 8
  %i.j = fsub double %i.i, %i.b                   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = fsub double %i.l, %i.g                   ; 5 uses
  %i.n = load double, ptr %3, align 8             ; 2 uses
  %i.o = fsub double %i.n, %i.a                   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = fsub double %i.q, %i.e                   ; 3 uses
  %i.s = fsub double %i.n, %i.b                   ; 2 uses
  %i.t = fsub double %i.q, %i.g                   ; 2 uses
  %i.u = fmul double %i.m, %i.m
  %i.v = tail call noundef double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.u) ; 2 uses
  %i.w = fcmp olt double %i.v, f0x3DDB7CDFC28AE400
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = fmul double %i.h, %i.m
  %i.y = tail call noundef double @llvm.fmuladd.f64(double %i.j, double %i.c, double %i.x)
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.v)
  %i.aa = fmul double %i.h, %i.h
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.aa)
  %sqrt.i27 = tail call noundef double @llvm.sqrt.f64(double %i.ab)
  %i.ac = fmul double %sqrt.i27, %sqrt.i
  %i.ad = fdiv double %i.z, %i.ac
  %i.ae = fcmp ogt double %i.ad, 9.999900e-01
  br i1 %i.ae, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.af = fmul double %i.r, %i.r
  %i.ag = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.af) ; 2 uses
  %i.ah = fcmp olt double %i.ag, f0x3DDB7CDFC28AE400
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = fmul double %i.h, %i.r
  %i.aj = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.c, double %i.ai)
  %i.ak = tail call double @llvm.fabs.f64(double %i.aj)
  %sqrt.i28 = tail call noundef double @llvm.sqrt.f64(double %i.ag)
  %i.al = fmul double %i.h, %i.h
  %i.am = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.al)
  %sqrt.i29 = tail call noundef double @llvm.sqrt.f64(double %i.am)
  %i.an = fmul double %sqrt.i29, %sqrt.i28
  %i.ao = fdiv double %i.ak, %i.an
  %i.ap = fcmp ogt double %i.ao, 9.999900e-01
  br i1 %i.ap, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = tail call double @llvm.fabs.f64(double %i.c)
  %i.ar = tail call double @llvm.fabs.f64(double %i.h)
  %i.as = fcmp ogt double %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.at = fdiv double %i.j, %i.c                  ; 2 uses
  %i.au = fdiv double %i.s, %i.c                  ; 2 uses
  %i.av = tail call double @llvm.fabs.f64(double %i.at)
  %i.aw = fcmp oeq double %i.av, +inf
  %i.ax = tail call double @llvm.fabs.f64(double %i.j)
  %i.ay = fcmp olt double %i.ax, f0x3E112E0BE0000000
  %or.cond100 = select i1 %i.aw, i1 %i.ay, i1 false
  %.0 = select i1 %or.cond100, double 0.000000e+00, double %i.at ; 2 uses
  %i.az = tail call double @llvm.fabs.f64(double %i.au)
  %i.ba = fcmp oeq double %i.az, +inf
  %i.bb = tail call double @llvm.fabs.f64(double %i.s)
  %i.bc = fcmp olt double %i.bb, f0x3E112E0BE0000000
  %or.cond = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.bd = fdiv double %i.m, %i.h                  ; 2 uses
  %i.be = fdiv double %i.t, %i.h                  ; 2 uses
  %i.bf = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bg = fcmp oeq double %i.bf, +inf
  %i.bh = tail call double @llvm.fabs.f64(double %i.m)
  %i.bi = fcmp olt double %i.bh, f0x3E112E0BE0000000
  %or.cond102 = select i1 %i.bg, i1 %i.bi, i1 false
  %.196 = select i1 %or.cond102, double 0.000000e+00, double %i.bd ; 2 uses
  %i.bj = tail call double @llvm.fabs.f64(double %i.be)
  %i.bk = fcmp oeq double %i.bj, +inf
  %i.bl = tail call double @llvm.fabs.f64(double %i.t)
  %i.bm = fcmp olt double %i.bl, f0x3E112E0BE0000000
  %or.cond20 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.097 = phi double [ 0.000000e+00, %bb.g ], [ %i.au, %bb.f ], [ 0.000000e+00, %bb.i ], [ %i.be, %bb.h ] ; 3 uses
  %.2 = phi double [ %.0, %bb.g ], [ %.0, %bb.f ], [ %.196, %bb.i ], [ %.196, %bb.h ] ; 3 uses
  %i.bn = fcmp olt double %.097, %.2              ; 2 uses
  %.198 = select i1 %i.bn, double %.2, double %.097 ; 2 uses
  %.3 = select i1 %i.bn, double %.097, double %.2 ; 2 uses
  %i.bo = fcmp ogt double %.3, 0.000000e+00
  %.sroa.speculated52 = select i1 %i.bo, double %.3, double 0.000000e+00 ; 2 uses
  %i.bp = fcmp ogt double %.198, 0.000000e+00
  %.sroa.speculated48 = select i1 %i.bp, double %.198, double 0.000000e+00 ; 2 uses
  %i.bq = fcmp olt double %.sroa.speculated52, 1.000000e+00
  %.sroa.speculated44 = select i1 %i.bq, double %.sroa.speculated52, double 1.000000e+00 ; 3 uses
  %i.br = fcmp olt double %.sroa.speculated48, 1.000000e+00
  %.sroa.speculated = select i1 %i.br, double %.sroa.speculated48, double 1.000000e+00 ; 3 uses
  %i.bs = fsub double %.sroa.speculated, %.sroa.speculated44
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp uge double %i.bt, f0x3EE4F8B580000000
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = fmul double %i.c, %.sroa.speculated44
  %i.bw = fmul double %i.h, %.sroa.speculated44
  %i.bx = fadd double %i.b, %i.bv
  %i.by = fadd double %i.g, %i.bw
  store double %i.bx, ptr %4, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.by, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bz = fmul double %i.c, %.sroa.speculated
  %i.ca = fmul double %i.h, %.sroa.speculated
  %i.cb = load double, ptr %0, align 8
  %i.cc = fadd double %i.bz, %i.cb
  %i.cd = load double, ptr %i.f, align 8
  %i.ce = fadd double %i.ca, %i.cd
  store double %i.cc, ptr %5, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.ce, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not192 = icmp eq ptr %i.c, %i.e
  br i1 %.not192, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.b

._crit_edge197:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph196, %.loopexit
  %.sroa.0165.0193 = phi ptr [ %i.c, %.lr.ph196 ], [ %i.lp, %.loopexit ] ; 14 uses
  %i.m = load ptr, ptr %.sroa.0165.0193, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq ptr %.sroa.0165.0193, %0         ; 2 uses
  br i1 %i.q, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 24
  %i.s = load double, ptr %i.f, align 8           ; 3 uses
  %i.t = load double, ptr %i.r, align 8           ; 3 uses
  %i.u = fsub double %i.s, %i.t
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp olt double %i.v, f0x3E80000000000000
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load double, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fcmp ult double %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = load double, ptr %i.a, align 8          ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 40
  %i.ah = load double, ptr %i.ag, align 8         ; 3 uses
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp olt double %i.aj, f0x3E80000000000000
  br i1 %i.ak, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load double, ptr %i.h, align 8
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %.pre32.i = load double, ptr %.phi.trans.insert31.i, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %i.am = load double, ptr %i.al, align 8         ; 3 uses
  %i.an = load double, ptr %i.h, align 8          ; 3 uses
  %i.ao = fcmp ugt double %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = load double, ptr %i.g, align 8
  %i.as = fcmp ult double %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i
  %i.at = phi double [ %.pre32.i, %._crit_edge.i ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.au = phi double [ %.pre.i, %._crit_edge.i ], [ %i.an, %bb.i ], [ %i.an, %bb.h ]
  %i.av = fsub double %i.au, %i.at
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp uge double %i.aw, f0x3E80000000000000
  %i.ay = fcmp ugt double %i.af, %i.ah
  %or.cond.i = select i1 %i.ax, i1 true, i1 %i.ay
  %i.az = fcmp ult double %i.s, %i.t
  %or.cond28.i = select i1 %or.cond.i, i1 true, i1 %i.az
  br i1 %or.cond28.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit: ; preds = %bb.j
  %i.ba = load double, ptr %i.g, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp olt double %i.be, f0x3E80000000000000
  %i.bg = fcmp ole double %i.t, %i.s
  %or.cond29.not.i = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = fcmp oge double %i.ah, %i.af
  %spec.select.i = select i1 %or.cond29.not.i, i1 %i.bh, i1 false
  br i1 %spec.select.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %.loopexit

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread: ; preds = %bb.f, %bb.i, %bb.j, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.c
  %i.bi = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bj = load ptr, ptr %0, align 8               ; 3 uses
  %.not198 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not198, label %.loopexit, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %._crit_edge
  %i.bo = phi ptr [ %i.ck, %._crit_edge ], [ %i.bj, %.lr.ph191.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.cl, %._crit_edge ], [ %i.bi, %.lr.ph191.preheader ]
  %i.bq = phi i64 [ %i.cp, %._crit_edge ], [ %i.bn, %.lr.ph191.preheader ]
  %.0190 = phi i64 [ %.pre-phi, %._crit_edge ], [ 0, %.lr.ph191.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0190 ; 2 uses
  %.sroa.0158.0.copyload = load double, ptr %i.br, align 8 ; 6 uses
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.6161.0.copyload = load double, ptr %.sroa.6161.0..sroa_idx, align 8 ; 6 uses
  %i.bs = add nuw i64 %.0190, 1                   ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  %i.bu = select i1 %i.bt, i64 0, i64 %i.bs
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu ; 2 uses
  %.sroa.0155.0.copyload = load double, ptr %i.bv, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph191
  %i.bw = load ptr, ptr %i.n, align 8
  %i.bx = load ptr, ptr %.sroa.0165.0193, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph191, %bb.k
  %i.cc = phi i64 [ %i.cb, %bb.k ], [ %.0190, %.lr.ph191 ] ; 2 uses
  %.not199 = icmp eq i64 %i.cc, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cd = fsub double %.sroa.0155.0.copyload, %.sroa.0158.0.copyload ; 9 uses
  %i.ce = fsub double %.sroa.5.0.copyload, %.sroa.6161.0.copyload ; 9 uses
  %i.cf = fmul double %i.ce, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.cf)
  %sqrt.i27.i = tail call double @llvm.sqrt.f64(double %i.cg) ; 2 uses
  %i.ch = tail call double @llvm.fabs.f64(double %i.cd)
  %i.ci = tail call double @llvm.fabs.f64(double %i.ce)
  %i.cj = fcmp ogt double %i.ch, %i.ci
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.pre = load ptr, ptr %i.i, align 8
  %.pre203 = load ptr, ptr %0, align 8
  %.pre204 = add i64 %.3, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre204, %._crit_edge.loopexit ], [ %i.bs, %bb.l ] ; 2 uses
  %i.ck = phi ptr [ %.pre203, %._crit_edge.loopexit ], [ %i.bo, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %bb.l ] ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 4                 ; 2 uses
  %i.cq = icmp ult i64 %.pre-phi, %i.cp
  br i1 %i.cq, label %.lr.ph191, label %.loopexit, !llvm.loop !117

bb.m:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.1189 = phi i64 [ %.0190, %.lr.ph ], [ %.3, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 10 uses
  %.058188 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.0165.0193, align 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.058188 ; 2 uses
  %.sroa.0153.0.copyload = load double, ptr %i.cs, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.4154.0.copyload = load double, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.ct = add nuw i64 %.058188, 1                 ; 3 uses
  %i.cu = load ptr, ptr %i.n, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 4
  %i.cz = urem i64 %i.ct, %i.cy
end_hunk_5
begin_hunk_6_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a
  store ptr %i.je, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

bb.aq:                                            ; preds = %bb.ao
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false)
  %i.jg = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.jh, ptr %i.i, align 8
  %i.ji = getelementptr inbounds i8, ptr %i.jg, i64 -16 ; 2 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.iy                    ; 3 uses
  %i.jl = ashr exact i64 %i.jk, 4                 ; 2 uses
  %i.jm = icmp sgt i64 %i.jl, 1
  br i1 %i.jm, label %bb.ar, label %bb.as, !prof !118

bb.ar:                                            ; preds = %bb.aq
  %i.jn = sub nsw i64 0, %i.jl
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.jg, i64 %i.jn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jo, ptr nonnull align 8 %i.ix, i64 %i.jk, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.jp = icmp eq i64 %i.jk, 16
  br i1 %i.jp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i64 16, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  store double %i.fh, ptr %i.ix, align 8
  %.sroa.7.i69.sroa.4.0..sroa.7.8..sroa_idx11.i73.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store double %i.fi, ptr %.sroa.7.i69.sroa.4.0..sroa.7.8..sroa_idx11.i73.sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

bb.av:                                            ; preds = %bb.an
  %i.jq = ptrtoint ptr %i.ja to i64
  %i.jr = sub i64 %i.jq, %i.iz                    ; 2 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775792
  br i1 %i.js, label %bb.aw, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74: ; preds = %bb.av
  %i.jt = ashr exact i64 %i.jr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i75, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 576460752303423487)
  %i.jx = select i1 %i.jv, i64 576460752303423487, i64 %i.jw ; 3 uses
  %.not.i.i.i76 = icmp ne i64 %i.jx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i76)
  %i.jy = shl nuw nsw i64 %i.jx, 4
  %i.jz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #25 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.idx182 ; 2 uses
  store double %i.fh, ptr %i.ka, align 8
  %.sroa.9.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store double %i.fi, ptr %.sroa.9.0..sroa_idx144, align 8
  %.not10.i.i.i.i.i77 = icmp eq i64 %i.iv, 0
  br i1 %.not10.i.i.i.i.i77, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74
  %i.kb = and i64 %.2, 1152921504606846975
  %i.kc = add i64 %.2, 1
  %xtraiter244 = and i64 %i.kc, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.lr.ph.i.i.i.i.i78.prol.loopexit, label %.lr.ph.i.i.i.i.i78.prol

.lr.ph.i.i.i.i.i78.prol:                          ; preds = %.lr.ph.i.i.i.i.i78.preheader, %.lr.ph.i.i.i.i.i78.prol
  %.012.i.i.i.i.i79.prol = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i78.prol ], [ %i.jz, %.lr.ph.i.i.i.i.i78.preheader ] ; 2 uses
  %.0911.i.i.i.i.i80.prol = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i78.prol ], [ %i.iw, %.lr.ph.i.i.i.i.i78.preheader ] ; 2 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %.lr.ph.i.i.i.i.i78.prol ], [ 0, %.lr.ph.i.i.i.i.i78.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i79.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i80.prol, i64 16, i1 false), !alias.scope !129
  %i.kd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80.prol, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79.prol, i64 16 ; 3 uses
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %.lr.ph.i.i.i.i.i78.prol.loopexit, label %.lr.ph.i.i.i.i.i78.prol, !llvm.loop !133

.lr.ph.i.i.i.i.i78.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i78.prol, %.lr.ph.i.i.i.i.i78.preheader
  %.lcssa242.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.ke, %.lr.ph.i.i.i.i.i78.prol ]
  %.012.i.i.i.i.i79.unr = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.ke, %.lr.ph.i.i.i.i.i78.prol ]
  %.0911.i.i.i.i.i80.unr = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.kd, %.lr.ph.i.i.i.i.i78.prol ]
  %i.kf = icmp samesign ult i64 %i.kb, 3
  br i1 %i.kf, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.prol.loopexit, %.lr.ph.i.i.i.i.i78
  %.012.i.i.i.i.i79 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i78 ], [ %.012.i.i.i.i.i79.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i80 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i78 ], [ %.0911.i.i.i.i.i80.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i79, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i80, i64 16, i1 false), !alias.scope !129
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.kg, i64 16, i1 false), !alias.scope !129
  %i.ki = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i64 16, i1 false), !alias.scope !129
  %i.kk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 48
  %i.kl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i64 16, i1 false), !alias.scope !129
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 64 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 64 ; 2 uses
  %.not.i.i.i.i.i81.3 = icmp eq ptr %i.km, %i.ix
  br i1 %.not.i.i.i.i.i81.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82: ; preds = %.lr.ph.i.i.i.i.i78.prol.loopexit, %.lr.ph.i.i.i.i.i78, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74
  %.0.lcssa.i.i.i.i.i83 = phi ptr [ %i.jz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74 ], [ %.lcssa242.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ], [ %i.kn, %.lr.ph.i.i.i.i.i78 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i83, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i84 = icmp eq ptr %i.ix, %i.ja
  br i1 %.not10.i.i.i16.i.i84, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89, label %.lr.ph.i.i.i17.i.i85

.lr.ph.i.i.i17.i.i85:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, %.lr.ph.i.i.i17.i.i85
  %.012.i.i.i18.i.i86 = phi ptr [ %i.kq, %.lr.ph.i.i.i17.i.i85 ], [ %i.ko, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ] ; 2 uses
  %.0911.i.i.i19.i.i87 = phi ptr [ %i.kp, %.lr.ph.i.i.i17.i.i85 ], [ %i.ix, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i86, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i87, i64 16, i1 false), !alias.scope !134
  %i.kp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i87, i64 16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i86, i64 16 ; 2 uses
  %.not.i.i.i20.i.i88 = icmp eq ptr %i.kp, %i.ja
  br i1 %.not.i.i.i20.i.i88, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89, label %.lr.ph.i.i.i17.i.i85, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89: ; preds = %.lr.ph.i.i.i17.i.i85, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82
  %.0.lcssa.i.i.i21.i.i90 = phi ptr [ %i.ko, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ], [ %i.kq, %.lr.ph.i.i.i17.i.i85 ]
  %.not.i23.i.i91 = icmp eq ptr %i.iw, null
  br i1 %.not.i23.i.i91, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89
  %i.kr = load ptr, ptr %i.j, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = sub i64 %i.ks, %i.iz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.kt) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92: ; preds = %bb.ax, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89
  store ptr %i.jz, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i.i90, ptr %i.i, align 8
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.ku, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93: ; preds = %bb.ap, %bb.au, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92
  %i.kv = load ptr, ptr %i.b, align 8
  %i.kw = sdiv i64 %i.iv, 64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = and i64 %i.iv, -9223372036854775745
  %i.kz = icmp ugt i64 %i.ky, -9223372036854775808
  %storemerge.idx.i.i.i99 = select i1 %i.kz, i64 -8, i64 0
  %storemerge.i.i.i100 = getelementptr inbounds i8, ptr %i.kx, i64 %storemerge.idx.i.i.i99 ; 2 uses
  %i.la = trunc i64 %i.iv to i32
  %i.lb = and i32 %i.la, 63                       ; 4 uses
  %i.lc = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.ld = load ptr, ptr %i.l, align 8
  %.not.i103 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not.i103, label %.critedge.i106, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93
  %.sroa.2.0.copyload.i.i105 = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.le = icmp eq ptr %storemerge.i.i.i100, %i.lc
  %i.lf = icmp eq i32 %i.lb, %.sroa.2.0.copyload.i.i105
  %i.lg = select i1 %i.le, i1 %i.lf, i1 false
  br i1 %i.lg, label %bb.az, label %.critedge.i106

bb.az:                                            ; preds = %bb.ay
  %i.lh = add nuw nsw i32 %i.lb, 1
  store i32 %i.lh, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.li = icmp eq i32 %i.lb, 63
  br i1 %i.li, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %i.lj, ptr %i.k, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.lk = and i64 %i.iv, 63
  %i.ll = shl nuw i64 1, %i.lk
  %i.lm = xor i64 %i.ll, -1
  %i.ln = load i64, ptr %i.lc, align 8
  %i.lo = and i64 %i.ln, %i.lm
  store i64 %i.lo, ptr %i.lc, align 8
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

.critedge.i106:                                   ; preds = %bb.ay, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %storemerge.i.i.i100, i32 %i.lb, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread: ; preds = %.critedge.i106, %bb.bb, %bb.v, %bb.n, %bb.p, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %.3 = phi i64 [ %.1189, %bb.v ], [ %.2, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit ], [ %.1189, %bb.p ], [ %.1189, %bb.n ], [ %i.iv, %bb.bb ], [ %i.iv, %.critedge.i106 ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.m, !llvm.loop !138

.loopexit:                                        ; preds = %._crit_edge, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.b
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.lp, %i.e
  br i1 %.not, label %._crit_edge197, label %bb.b, !llvm.loop !139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC18FindBorderContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr readonly captures(none) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %.not50 = icmp eq ptr %i.b, %i.d
  br i1 %.not50, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load double, ptr %i.b, align 8           ; 4 uses
  %i.g = fcmp ugt double %i.f, 1.000000e-04
  %i.h = fcmp ult double %i.f, 9.999000e-01
  %or.cond18.peel = and i1 %i.g, %i.h
  br i1 %or.cond18.peel, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 3 uses
  %i.k = fcmp ugt double %i.j, 1.000000e-04
  %i.l = fcmp ult double %i.j, 9.999000e-01
  %or.cond19.peel = and i1 %i.k, %i.l
  br i1 %or.cond19.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.sroa.6.0..sroa.032.0.33.sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.peel.pre = load double, ptr %.sroa.6.0..sroa.032.0.33.sroa_idx.peel.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.copyload.peel = phi double [ %i.j, %bb.b ], [ %.sroa.6.0.copyload.peel.pre, %bb.c ] ; 2 uses
  %.2.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  %.1.peel = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.m, %i.d
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.1.lcssa = phi i8 [ %.1.peel, %bb.d ], [ %.1, %bb.i ]
  %.sroa.041.0.copyload.lcssa = phi double [ %i.f, %bb.d ], [ %.sroa.041.0.copyload, %bb.i ]
  %.sroa.6.0.copyload.lcssa = phi double [ %.sroa.6.0.copyload.peel, %bb.d ], [ %.sroa.6.0.copyload, %bb.i ]
  %i.n = trunc nuw i8 %.1.lcssa to i1
  %i.o = and i1 %.2.peel, %i.n
  br i1 %i.o, label %bb.j, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.055 = phi i8 [ %.1, %bb.i ], [ %.1.peel, %bb.d ]
  %.sroa.041.053 = phi double [ %.sroa.041.0.copyload, %bb.i ], [ %i.f, %bb.d ]
  %.sroa.6.052 = phi double [ %.sroa.6.0.copyload, %bb.i ], [ %.sroa.6.0.copyload.peel, %bb.d ]
  %.sroa.032.051 = phi ptr [ %i.ar, %bb.i ], [ %i.m, %bb.d ] ; 7 uses
  %i.p = load double, ptr %.sroa.032.051, align 8 ; 6 uses
  %i.q = fcmp ugt double %i.p, 1.000000e-04
  %i.r = fcmp ult double %i.p, 9.999000e-01
  %or.cond18 = and i1 %i.q, %i.r
  br i1 %or.cond18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fcmp ugt double %i.t, 1.000000e-04
  %i.v = fcmp ult double %i.t, 9.999000e-01
  %or.cond19 = and i1 %i.u, %i.v
  br i1 %or.cond19, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.w = trunc nuw i8 %.055 to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = fsub double %i.p, %.sroa.041.053
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fsub double %i.z, %.sroa.6.052
  %i.ab = fmul double %i.x, %i.aa
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp olt double %i.ac, f0x3E80000000000000
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %.sroa.032.051 to i64
  %i.af = sub i64 %i.ae, %i.e
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = sdiv i64 %i.ah, 64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = and i64 %i.ah, -9223372036854775745
  %i.am = icmp ugt i64 %i.al, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.am, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ak, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.an = and i64 %i.ah, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.aq = or i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %storemerge.i.i.i.i.i, align 8
  %.sroa.041.0.copyload.pre = load double, ptr %.sroa.032.051, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h, %bb.g
  %.sroa.041.0.copyload = phi double [ %i.p, %bb.e ], [ %.sroa.041.0.copyload.pre, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.e ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %.sroa.6.0..sroa.032.0.33.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.032.0.33.sroa_idx, align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !140

bb.j:                                             ; preds = %._crit_edge
  %i.as = load double, ptr %i.b, align 8
  %i.at = fsub double %i.as, %.sroa.041.0.copyload.lcssa
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fsub double %i.av, %.sroa.6.0.copyload.lcssa
  %i.ax = fmul double %i.at, %i.aw
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp olt double %i.ay, f0x3E80000000000000
  br i1 %i.az, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = zext i32 %i.bd to i64
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = sdiv i64 %i.bl, 64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bm
  %i.bo = and i64 %i.bl, -9223372036854775745
  %i.bp = icmp ugt i64 %i.bo, -9223372036854775808
  %storemerge.idx.i.i.i.i.i22 = select i1 %i.bp, i64 -8, i64 0
  %storemerge.i.i.i.i.i23 = getelementptr inbounds i8, ptr %i.bn, i64 %storemerge.idx.i.i.i.i.i22 ; 2 uses
  %i.bq = and i64 %i.bl, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %storemerge.i.i.i.i.i23, align 8
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %storemerge.i.i.i.i.i23, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.j, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC23FindLikelyCrossingLinesEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr readonly captures(none) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %.not38 = icmp eq ptr %i.b, %i.d
  %.pre46 = load double, ptr %i.b, align 8        ; 4 uses
  br i1 %.not38, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.019.0.20.sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.peel.pre = load double, ptr %.sroa.6.0..sroa.019.0.20.sroa_idx.peel.phi.trans.insert, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.f, %i.d
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge.loopexit.loopexit:                    ; preds = %bb.d
  %.pre.pre = load double, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.loopexit, %bb.a
  %i.g = phi double [ %.pre46, %bb.a ], [ %.pre46, %bb.b ], [ %.pre.pre, %._crit_edge.loopexit.loopexit ]
  %.sroa.6.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.6.0.copyload.peel.pre, %bb.b ], [ %.sroa.6.0.copyload, %._crit_edge.loopexit.loopexit ]
  %.sroa.028.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.pre46, %bb.b ], [ %.sroa.028.0.copyload, %._crit_edge.loopexit.loopexit ]
  %i.h = fsub double %i.g, %.sroa.028.0.lcssa
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8
  %i.k = fsub double %i.j, %.sroa.6.0.lcssa
  %i.l = tail call double @llvm.fabs.f64(double %i.h) ; 3 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.k) ; 3 uses
  %i.n = fsub double %i.l, %i.m
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.l, %i.m
  %.sroa.speculated.i = select i1 %i.p, double %i.m, double %i.l
  %i.q = fmul double %.sroa.speculated.i, 8.000000e-01
  %i.r = fcmp olt double %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

.lr.ph.peel.next:                                 ; preds = %bb.b, %bb.d
  %.sroa.028.041 = phi double [ %.sroa.028.0.copyload, %bb.d ], [ %.pre46, %bb.b ]
  %.sroa.6.040 = phi double [ %.sroa.6.0.copyload, %bb.d ], [ %.sroa.6.0.copyload.peel.pre, %bb.b ]
  %.sroa.019.039 = phi ptr [ %i.ar, %bb.d ], [ %i.f, %bb.b ] ; 6 uses
  %i.s = load double, ptr %.sroa.019.039, align 8
  %i.t = fsub double %i.s, %.sroa.028.041
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.019.039, i64 8
  %i.v = load double, ptr %i.u, align 8
  %i.w = fsub double %i.v, %.sroa.6.040
  %i.x = tail call double @llvm.fabs.f64(double %i.t) ; 3 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.w) ; 3 uses
  %i.z = fsub double %i.x, %i.y
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp olt double %i.x, %i.y
  %.sroa.speculated.i12 = select i1 %i.ab, double %i.y, double %i.x
  %i.ac = fmul double %.sroa.speculated.i12, 8.000000e-01
  %i.ad = fcmp olt double %i.aa, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.peel.next
  %i.ae = ptrtoint ptr %.sroa.019.039 to i64
  %i.af = sub i64 %i.ae, %i.e
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = sdiv i64 %i.ah, 64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = and i64 %i.ah, -9223372036854775745
  %i.am = icmp ugt i64 %i.al, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.am, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ak, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.an = and i64 %i.ah, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.aq = or i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %storemerge.i.i.i.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.peel.next, %bb.c
  %.sroa.028.0.copyload = load double, ptr %.sroa.019.039, align 8 ; 2 uses
  %.sroa.6.0..sroa.019.0.20.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.019.039, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.019.0.20.sroa_idx, align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.019.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph.peel.next, !llvm.loop !142

bb.e:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = shl nsw i64 %i.az, 3
  %i.bb = zext i32 %i.av to i64
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = sdiv i64 %i.bd, 64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.be
  %i.bg = and i64 %i.bd, -9223372036854775745
  %i.bh = icmp ugt i64 %i.bg, -9223372036854775808
  %storemerge.idx.i.i.i.i.i13 = select i1 %i.bh, i64 -8, i64 0
  %storemerge.i.i.i.i.i14 = getelementptr inbounds i8, ptr %i.bf, i64 %storemerge.idx.i.i.i.i.i13 ; 2 uses
  %i.bi = and i64 %i.bd, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = load i64, ptr %storemerge.i.i.i.i.i14, align 8
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %storemerge.i.i.i.i.i14, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.aiVector3t, align 8          ; 7 uses
  %5 = alloca %class.aiVector3t, align 8          ; 7 uses
  %6 = alloca %class.aiVector3t, align 8          ; 7 uses
  %7 = alloca %class.aiVector3t, align 8          ; 7 uses
  %8 = alloca %class.aiVector3t, align 8          ; 10 uses
  %9 = alloca %class.aiVector3t, align 8          ; 11 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not348434 = icmp eq ptr %i.a, %i.c
  br i1 %.not348434, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.b

._crit_edge443:                                   ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.692, %.loopexit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph442, %.loopexit
  %.0439 = phi i64 [ 0, %.lr.ph442 ], [ %.692, %.loopexit ] ; 5 uses
  %.sroa.0327.0435 = phi ptr [ %i.a, %.lr.ph442 ], [ %i.sj, %.loopexit ] ; 16 uses
  %i.z = load ptr, ptr %.sroa.0327.0435, align 8  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 8 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = ptrtoint ptr %.sroa.0327.0435 to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 104
  %i.ai = load ptr, ptr %2, align 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ah ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not349.not401 = icmp eq ptr %i.ak, %i.am
  br i1 %.not349.not401, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0323.0402, i64 8 ; 2 uses
  %.not349.not = icmp eq ptr %i.an, %i.am
  br i1 %.not349.not, label %.lr.ph433, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0323.0402 = phi ptr [ %i.an, %bb.d ], [ %i.ak, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.0323.0402, align 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 56 ; 3 uses
  %i.av = ptrtoint ptr %i.ab to i64
  %i.aw = ptrtoint ptr %i.z to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 4                 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 72 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 80 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.bd = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = zext i32 %i.bc to i64
  %i.bj = add nsw i64 %i.bh, %i.bi                ; 2 uses
  %i.bk = icmp ult i64 %i.ay, %i.bj
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = sdiv i64 %i.ay, 64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bl
  %i.bn = and i64 %i.ay, -9223372036854775745
  %i.bo = icmp ugt i64 %i.bn, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bo, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bm, i64 %storemerge.idx.i.i.i.i.i
  %i.bp = trunc i64 %i.ay to i32
  %i.bq = and i32 %i.bp, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.az, align 8
  store i32 %i.bq, ptr %i.bb, align 8
  br label %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit

bb.g:                                             ; preds = %bb.e
  %i.br = sub nuw i64 %i.ay, %i.bj
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr %i.ba, i32 %i.bc, i64 noundef %i.br, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit

_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit: ; preds = %bb.g, %bb.f
  call void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr nonnull %.sroa.0327.0435, ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @_ZN6Assimp3IFC18FindBorderContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nonnull %.sroa.0327.0435)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 96
  %i.bt = load i8, ptr %i.bs, align 8, !range !143, !noundef !144
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit
  call void @_ZN6Assimp3IFC23FindLikelyCrossingLinesEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nonnull %.sroa.0327.0435)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit
  %i.bv = load ptr, ptr %i.au, align 8
  %i.bw = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bx = load ptr, ptr %3, align 8               ; 5 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = sdiv exact i64 %i.ca, 24
  %i.cc = load ptr, ptr %i.aa, align 8
  %i.cd = load ptr, ptr %.sroa.0327.0435, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = add nsw i64 %i.ch, %i.cb                ; 4 uses
  %i.cj = icmp ugt i64 %i.ci, 384307168202282325
  br i1 %i.cj, label %.noexc130, label %bb.j

.noexc130:                                        ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.e, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = sdiv exact i64 %i.cm, 24
  %i.co = icmp ult i64 %i.cn, %i.ci
  br i1 %i.co, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.cp = mul nuw nsw i64 %i.ci, 24
  %i.cq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #25 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bx, %i.bw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.bx, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !145
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cr, %i.bw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bx, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cm) #26
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.cq, ptr %3, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ca
  store ptr %i.ct, ptr %i.d, align 8
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.ci
  store ptr %i.cu, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.aa, align 8
  %.pre453 = load ptr, ptr %.sroa.0327.0435, align 8
  %.pre459 = ptrtoint ptr %.pre to i64
  %.pre460 = ptrtoint ptr %.pre453 to i64
  %.pre462 = sub i64 %.pre459, %.pre460
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.j
  %.pre-phi463 = phi i64 [ %.pre462, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.cg, %bb.j ]
  %i.cv = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cw = load ptr, ptr %i.f, align 8             ; 5 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp3IFC8QuadrifyERKSt6vectorISt4pairI10aiVector2tIdES4_ESaIS5_EERNS0_8TempMeshE:bb.a
          to label %_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %._crit_edge76
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #28
  unreachable

_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev.exit: ; preds = %._crit_edge76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.dq = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev.exit
  %i.dr = load ptr, ptr %i.l, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.u:                                             ; preds = %._crit_edge
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.z

bb.v:                                             ; preds = %bb.m
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.z

bb.w:                                             ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %bb.p
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph75:                                         ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.x
  %.sroa.042.074 = phi ptr [ %i.ea, %bb.x ], [ %i.dm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.042.074, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store double 0.000000e+00, ptr %i.c, align 8
  %i.dz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_dEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.074, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %.lr.ph75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.042.074, i64 16 ; 2 uses
  %.not63 = icmp eq ptr %i.ea, %i.dl
  br i1 %.not63, label %._crit_edge76, label %.lr.ph75

bb.y:                                             ; preds = %.lr.ph75
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %bb.y, %bb.w, %bb.v, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.u ], [ %i.eb, %bb.y ], [ %i.dx, %bb.w ], [ %i.dw, %bb.v ], [ %i.av, %bb.h ]
  call void @_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.v, %bb.d ]
  %i.ec = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit41

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit41:  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_dEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %1, align 8
  %i.f = load double, ptr %2, align 8
  %i.g = load double, ptr %3, align 8
  store double %i.e, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.g, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.k, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8                ; 5 uses
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.q = sdiv exact i64 %i.o, 24                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325)
  %i.u = select i1 %i.s, i64 384307168202282325, i64 %i.t ; 3 uses
  %.not.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 3 uses
  %i.y = load double, ptr %1, align 8
  %i.z = load double, ptr %2, align 8
  %i.aa = load double, ptr %3, align 8
  store double %i.y, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store double %i.aa, ptr %i.ac, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.l, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !211
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ae, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24
  %.not.i35.i = icmp eq ptr %i.l, null
  br i1 %.not.i35.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_dEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_dEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_dEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i, %bb.e
  store ptr %i.w, ptr %0, align 8
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ag, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_dEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.ah = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_dEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.j, %bb.b ]
  ret ptr %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 104                 ; 3 uses
  %i.h = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not56 = icmp eq ptr %i.b, %i.c
  br i1 %.not56, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 5
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #25
          to label %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.e ; 3 uses

_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.g
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %.promoted28 = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 3 uses
  %.promoted = phi ptr [ %i.m, %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.not25 = icmp eq ptr %i.c, %i.b
  br i1 %.not25, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit
  store ptr %i.ak, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit
  %.lcssa22 = phi ptr [ %i.ai, %._crit_edge ], [ %.promoted28, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit ]
  %.lcssa18 = phi ptr [ %i.aj, %._crit_edge ], [ %.promoted, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit ]
  store ptr %.lcssa18, ptr %i.i, align 8
  store ptr %.lcssa22, ptr %2, align 8
  invoke void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorISt4pairI10aiVector2tIdES4_ESaIS5_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i, %bb.b, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %2, align 8
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit
  %i.p = phi ptr [ %.promoted28, %.lr.ph ], [ %i.ak, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 8 uses
  %.sroa.015.026 = phi ptr [ %i.c, %.lr.ph ], [ %i.al, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 4 uses
  %i.r = phi ptr [ %.promoted28, %.lr.ph ], [ %i.ai, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.026, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775776
  br i1 %i.w, label %bb.i, label %_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.p, ptr %i.n, align 8
  store ptr %i.q, ptr %i.i, align 8
  store ptr %i.r, ptr %2, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.x = ashr exact i64 %i.v, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711743)
  %i.ab = select i1 %i.z, i64 288230376151711743, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #25
          to label %.noexc11 unwind label %.loopexit ; 5 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ad, %.noexc11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.r, %.noexc11 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !215
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !219

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc11
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %.noexc11 ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #26
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.g
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.p, %bb.g ]
  %i.ai = phi ptr [ %i.ad, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.r, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %i.ah, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.026, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.b
  br i1 %.not, label %._crit_edge, label %bb.f

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.n, align 8
  store ptr %i.q, ptr %i.i, align 8
  store ptr %i.r, ptr %2, align 8
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.i, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %i.ar = phi ptr [ %.pre, %bb.e ], [ %i.r, %.loopexit ], [ %i.r, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #26
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind noalias writable writeonly sret(%class.aiMatrix4x4t) align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) initializes((0, 1)) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.aiMatrix3x3t, align 8        ; 8 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1
  store double 1.000000e+00, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.j, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix3x3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.o = load <3 x double>, ptr %5, align 8       ; 6 uses
  %i.p = shufflevector <3 x double> %i.o, <3 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.q = load double, ptr %i.k, align 8
  %i.r = load <3 x double>, ptr %i.l, align 8     ; 4 uses
  %i.s = shufflevector <3 x double> %i.r, <3 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.t = load <3 x double>, ptr %i.m, align 8     ; 5 uses
  %i.u = shufflevector <3 x double> %i.t, <3 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.v = load double, ptr %i.n, align 8           ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.w = load i8, ptr %3, align 1, !range !143, !noundef !144
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ad, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.af = load ptr, ptr %2, align 8               ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 576460752303423487
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %1, align 8               ; 6 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 4
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ap
  %i.ax = shl nuw nsw i64 %i.aj, 4
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #25 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.ay, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.an, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !220
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.au
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ay, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.bb, ptr %i.at, align 8
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.aj
  store ptr %i.bc, ptr %i.al, align 8
  %.pre = load ptr, ptr %2, align 8
  %.pre170 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.bd = phi ptr [ %i.an, %bb.g ], [ %i.ay, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.be = phi ptr [ %i.ae, %bb.g ], [ %.pre170, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.bf = phi ptr [ %i.af, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.not142 = icmp eq ptr %i.bf, %i.be
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre175 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit
  %i.bg = extractelement <3 x double> %i.t, i64 0
  %i.bh = extractelement <3 x double> %i.t, i64 2
  %i.bi = shufflevector <3 x double> %i.o, <3 x double> %i.r, <2 x i32> <i32 1, i32 4>
  %i.bj = shufflevector <3 x double> %i.o, <3 x double> %i.r, <2 x i32> <i32 0, i32 3>
  %i.bk = shufflevector <3 x double> %i.o, <3 x double> %i.r, <2 x i32> <i32 2, i32 5>
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %.pre172 = load ptr, ptr %i.b, align 8
  %.pre173 = load ptr, ptr %2, align 8
  %.pre174 = load ptr, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit, %._crit_edge.loopexit
  %i.bl = phi ptr [ %i.eo, %._crit_edge.loopexit ], [ %.pre175, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.bm = phi ptr [ %.pre174, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.bn = phi ptr [ %.pre173, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bo = phi ptr [ %.pre172, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %.0.lcssa = phi double [ %i.df, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bp = phi <2 x double> [ %i.dt, %._crit_edge.loopexit ], [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bq = phi <2 x double> [ %i.dr, %._crit_edge.loopexit ], [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fsub <2 x double> %i.bp, %i.bq          ; 4 uses
  %.not136155 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not136155, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %i.bx = ptrtoint ptr %i.bm to i64
  %i.by = ptrtoint ptr %i.bl to i64
  %i.bz = add i64 %i.by, -16
  %i.ca = sub i64 %i.bz, %i.bx
  %i.cb = lshr i64 %i.ca, 4                       ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.iters.check, label %.lr.ph158.preheader217, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph158.preheader
  %n.vec = and i64 %i.cc, 2305843009213693950     ; 3 uses
  %i.cd = shl i64 %n.vec, 4
  %i.ce = getelementptr i8, ptr %i.bm, i64 %i.cd
  %broadcast.splat = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat211 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat213 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat215 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.cf ; 2 uses
  %wide.vec = load <4 x double>, ptr %next.gep, align 8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec216 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.cg = fsub <2 x double> %strided.vec, %broadcast.splat
  %i.ch = fdiv <2 x double> %i.cg, %broadcast.splat211 ; 2 uses
  %i.ci = fsub <2 x double> %strided.vec216, %broadcast.splat213
  %i.cj = fdiv <2 x double> %i.ci, %broadcast.splat215 ; 2 uses
  %i.ck = fcmp olt <2 x double> %i.ch, zeroinitializer
  %i.cl = select <2 x i1> %i.ck, <2 x double> zeroinitializer, <2 x double> %i.ch ; 2 uses
  %i.cm = fcmp olt <2 x double> %i.cj, zeroinitializer
  %i.cn = select <2 x i1> %i.cm, <2 x double> zeroinitializer, <2 x double> %i.cj ; 2 uses
  %i.co = fcmp ogt <2 x double> %i.cl, splat (double 1.000000e+00)
end_hunk_7
begin_hunk_8_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge159, label %.lr.ph158.preheader217

.lr.ph158.preheader217:                           ; preds = %.lr.ph158.preheader, %middle.block
  %.sroa.078.0156.ph = phi ptr [ %i.bm, %.lr.ph158.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph158

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.ct = phi ptr [ %i.eo, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %.pre175, %.lr.ph.preheader ] ; 5 uses
  %.0150 = phi double [ %i.df, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.097.0143 = phi ptr [ %i.ep, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.bf, %.lr.ph.preheader ] ; 4 uses
  %i.cu = phi <2 x double> [ %i.dt, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double -1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cv = phi <2 x double> [ %i.dr, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double 1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cw = load double, ptr %.sroa.097.0143, align 8, !noalias !225 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !noalias !225 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.da = load double, ptr %i.cz, align 8, !noalias !225 ; 2 uses
  %i.db = fmul double %i.v, %i.cy
  %i.dc = call double @llvm.fmuladd.f64(double %i.bg, double %i.cw, double %i.db)
  %i.dd = call double @llvm.fmuladd.f64(double %i.bh, double %i.da, double %i.dc)
  %i.de = fadd double %i.dd, 0.000000e+00
  %i.df = fadd double %.0150, %i.de               ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.bi, %i.dh
  %i.dj = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.dk, <2 x double> %i.di)
  %i.dm = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.dn, <2 x double> %i.dl) ; 3 uses
  %i.dp = fadd <2 x double> %i.do, zeroinitializer ; 4 uses
  %i.dq = fcmp olt <2 x double> %i.cv, %i.do
  %i.dr = select <2 x i1> %i.dq, <2 x double> %i.cv, <2 x double> %i.dp ; 2 uses
  %i.ds = fcmp olt <2 x double> %i.do, %i.cu
  %i.dt = select <2 x i1> %i.ds, <2 x double> %i.cu, <2 x double> %i.dp ; 2 uses
  %i.du = load ptr, ptr %i.al, align 8
  %.not.i = icmp eq ptr %i.ct, %i.du
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store <2 x double> %i.dp, ptr %i.ct, align 8
  %i.dv = load ptr, ptr %.phi.trans.insert, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store ptr %i.dw, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.dx = load ptr, ptr %1, align 8               ; 5 uses
  %i.dy = ptrtoint ptr %i.ct to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775792
  br i1 %i.eb, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ec = ashr exact i64 %i.ea, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 576460752303423487)
  %i.eg = select i1 %i.ee, i64 576460752303423487, i64 %i.ef ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #25 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  store <2 x double> %i.dp, ptr %i.ej, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.dx, %i.ct
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i ], [ %i.ei, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i ], [ %i.dx, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !228
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, %i.ct
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ei, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.el, %.lr.ph.i.i.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ea) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ei, ptr %1, align 8
  store ptr %i.em, ptr %.phi.trans.insert, align 8
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.en, ptr %i.al, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.eo = phi ptr [ %i.dw, %bb.i ], [ %i.em, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ep, %i.be
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %.lr.ph158, %middle.block, %._crit_edge
  %i.eq = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 4 uses
  %i.er = fneg <2 x double> %i.bq
  %i.es = fneg double %.0.lcssa
  %i.et = fdiv double %i.es, %i.bv                ; 4 uses
  %i.eu = extractelement <2 x double> %i.eq, i64 0
  %i.ev = call double @llvm.fmuladd.f64(double %i.eu, double 0.000000e+00, double 0.000000e+00)
  %i.ew = extractelement <2 x double> %i.eq, i64 1
  %i.ex = fmul double %i.ew, 0.000000e+00
  %i.ey = fmul <2 x double> %i.eq, %i.er          ; 2 uses
  %i.ez = shufflevector <2 x double> %i.eq, <2 x double> poison, <6 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fa = shufflevector <6 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison, double poison, double poison>, <6 x double> %i.ez, <6 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11>
  %i.fb = fmul <6 x double> %i.s, %i.fa           ; 4 uses
  %i.fc = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.ex, i64 1
  %i.fe = fadd <2 x double> %i.fd, zeroinitializer
  %i.ff = fadd <2 x double> %i.ey, %i.fe
  %i.fg = shufflevector <2 x double> %i.ey, <2 x double> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <6 x double> %i.u, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fi = shufflevector <6 x double> %i.p, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fj = shufflevector <6 x double> %i.ez, <6 x double> <double poison, double poison, double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.fk = shufflevector <6 x double> %i.fb, <6 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fl = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fi, <8 x double> %i.fj, <8 x double> %i.fk)
  %i.fm = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fh, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fl)
  %i.fn = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fg, <8 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double undef, double undef>, <8 x double> %i.fm)
  %i.fo = shufflevector <2 x double> %i.ff, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = extractelement <3 x double> %i.o, i64 0
  %i.fq = extractelement <6 x double> %i.fb, i64 0
  %i.fr = call double @llvm.fmuladd.f64(double %i.fp, double 0.000000e+00, double %i.fq) ; 2 uses
  %i.fs = extractelement <3 x double> %i.t, i64 0 ; 2 uses
  %i.ft = fadd double %i.fr, %i.fs
  %i.fu = call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double %i.ft)
  %i.fv = extractelement <6 x double> %i.fb, i64 1
  %i.fw = call double @llvm.fmuladd.f64(double %i.q, double 0.000000e+00, double %i.fv) ; 2 uses
  %i.fx = fadd double %i.fw, %i.v
  %i.fy = call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double %i.fx)
  %i.fz = extractelement <3 x double> %i.o, i64 2
  %i.ga = extractelement <6 x double> %i.fb, i64 2
  %i.gb = call double @llvm.fmuladd.f64(double %i.fz, double 0.000000e+00, double %i.ga) ; 2 uses
  %i.gc = extractelement <3 x double> %i.t, i64 2 ; 2 uses
  %i.gd = fadd double %i.gb, %i.gc
  %i.ge = call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double %i.gd)
  %i.gf = call double @llvm.fmuladd.f64(double %i.fs, double 0.000000e+00, double %i.fr)
  %i.gg = call double @llvm.fmuladd.f64(double %i.v, double 0.000000e+00, double %i.fw)
  %i.gh = fadd double %i.gg, 0.000000e+00
  %i.gi = call double @llvm.fmuladd.f64(double %i.gc, double 0.000000e+00, double %i.gb)
  %i.gj = fadd double %i.gi, 0.000000e+00
  %i.gk = shufflevector <8 x double> %i.fn, <8 x double> %i.fo, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 3, i32 4, i32 5, i32 9>
  store <8 x double> %i.gk, ptr %0, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.fu, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.fy, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ge, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = insertelement <2 x double> poison, double %i.et, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gf, i64 1
  %i.gn = fadd <2 x double> %i.gm, zeroinitializer
  store <2 x double> %i.gn, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.gh, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.gj, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader217, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.gv, %.lr.ph158 ], [ %.sroa.078.0156.ph, %.lr.ph158.preheader217 ] ; 3 uses
  %i.go = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.gp = fsub <2 x double> %i.go, %i.bq
  %i.gq = fdiv <2 x double> %i.gp, %i.bw          ; 2 uses
  %i.gr = fcmp olt <2 x double> %i.gq, zeroinitializer
  %i.gs = select <2 x i1> %i.gr, <2 x double> zeroinitializer, <2 x double> %i.gq ; 2 uses
  %i.gt = fcmp ogt <2 x double> %i.gs, splat (double 1.000000e+00)
  %i.gu = select <2 x i1> %i.gt, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gs
  store <2 x double> %i.gu, ptr %.sroa.078.0156, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.078.0156, i64 16 ; 2 uses
  %.not136 = icmp eq ptr %i.gv, %i.bl
  br i1 %.not136, label %._crit_edge159, label %.lr.ph158, !llvm.loop !232

bb.m:                                             ; preds = %bb.d, %._crit_edge159, %bb.b
  ret void
}

declare void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind writable sret(%class.aiMatrix3x3t) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.91", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %7 = alloca %class.aiVector3t, align 8          ; 9 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 8        ; 17 uses
  %10 = alloca %class.aiMatrix4x4t, align 8       ; 5 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 21 uses
  %.sroa.0419 = alloca ptr, align 8               ; 10 uses
  %.sroa.11424 = alloca ptr, align 8              ; 9 uses
  %.sroa.18 = alloca ptr, align 8                 ; 9 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 13 uses
  %14 = alloca %"class.std::vector.96", align 8   ; 11 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 14 uses
  %16 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %..sroa.gep412 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %..sroa.gep418 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  invoke void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !range !143, !noundef !144
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.cz

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 128, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %_ZN10aiVector3tIdE9NormalizeEv.exit unwind label %bb.e

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  store ptr null, ptr %.sroa.0419, align 8
  store ptr null, ptr %.sroa.11424, align 8
  store ptr null, ptr %.sroa.18, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not456651 = icmp eq ptr %i.i, %i.k
  br i1 %.not456651, label %.loopexit482, label %.lr.ph654

.lr.ph654:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.11360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.11354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cy

bb.f:                                             ; preds = %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

bb.g:                                             ; preds = %.lr.ph654, %bb.ce
  %.0653 = phi i1 [ undef, %.lr.ph654 ], [ %.8, %bb.ce ] ; 6 uses
  %.sroa.0406.0652 = phi ptr [ %i.i, %.lr.ph654 ], [ %i.sw, %bb.ce ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 8
  %.sroa.0385.0.copyload = load double, ptr %i.ab, align 8 ; 3 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 16
  %.sroa.10390.0.copyload = load double, ptr %.sroa.10390.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 24
  %.sroa.15396.0.copyload = load double, ptr %.sroa.15396.0..sroa_idx, align 8 ; 3 uses
  %i.ac = fmul double %.sroa.10390.0.copyload, %.sroa.10390.0.copyload
  %i.ad = call double @llvm.fmuladd.f64(double %.sroa.0385.0.copyload, double %.sroa.0385.0.copyload, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0.copyload, double %.sroa.15396.0.copyload, double %i.ad) ; 2 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e-10
  br i1 %i.af, label %_ZN10aiVector3tIdEdVEd.exit.i180, label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdEdVEd.exit.i180:                 ; preds = %bb.g
  %sqrt.i.i181 = call noundef double @llvm.sqrt.f64(double %i.ae)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.i181  ; 3 uses
  %i.ah = fmul double %.sroa.0385.0.copyload, %i.ag
  %i.ai = fmul double %.sroa.10390.0.copyload, %i.ag
  %i.aj = fmul double %.sroa.15396.0.copyload, %i.ag
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdE9NormalizeEv.exit182:           ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i180
  %.sroa.0385.0 = phi double [ %i.ah, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.10390.0 = phi double [ %i.ai, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.15396.0 = phi double [ %i.aj, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not457 = icmp eq ptr %i.an, null
  br i1 %.not457, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %i.ao = fmul double %.sroa.10390.0, %.sroa.10390.0
  %i.ap = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %.sroa.0385.0, double %i.ao)
  %i.aq = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %.sroa.15396.0, double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.as = load double, ptr %7, align 8
  %i.at = load double, ptr %i.l, align 8
  %i.au = fmul double %.sroa.10390.0, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %i.as, double %i.au)
  %i.aw = load double, ptr %i.m, align 8
  %i.ax = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %i.aw, double %i.av)
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, 9.000000e-01
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %.0144 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 2 uses
  %.0143 = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load ptr, ptr %.0143, align 8           ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i, label %.noexc183, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, 384307168202282325
  br i1 %i.bh, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, !prof !233

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp468

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #25
          to label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge unwind label %.loopexit467

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge: ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %.0143, align 8
  %.pre749 = load ptr, ptr %i.ba, align 8
  br label %.noexc183

.noexc183:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge, %bb.k
  %i.bj = phi ptr [ %i.bb, %bb.k ], [ %.pre749, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 2 uses
  %i.bk = phi ptr [ %i.bc, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 2 uses
  %i.bl = phi ptr [ null, %bb.k ], [ %i.bi, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 9 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc183, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.noexc183 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc183 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
end_hunk_8
begin_hunk_9_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.d, double %i.bn)
  %i.br = fmul double %i.bo, %i.at
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %i.ae, double %i.bq)
  %i.bt = fmul double %i.t, %i.s                  ; 2 uses
  %i.bu = fmul double %i.w, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.n, double %i.bs)
  %i.bw = fmul double %i.bt, %i.az
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.d, double %i.bv)
  %i.by = extractelement <14 x double> %i.l, i64 2 ; 3 uses
  %i.bz = fmul double %i.r, %i.by                 ; 2 uses
  %i.ca = fmul double %i.bz, %i.ah
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.m, double %i.bx)
  %i.cc = fmul double %i.o, %i.bz
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ae, double %i.cb)
  %i.ce = fmul double %i.t, %i.by                 ; 2 uses
  %i.cf = fmul double %i.ce, %i.ao
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.n, double %i.cd)
  %i.ch = fmul double %i.p, %i.ce
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.m, double %i.cg)
  %i.cj = fmul double %i.q, %i.by                 ; 2 uses
  %i.ck = fmul double %i.cj, %i.az
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ae, double %i.ci)
  %i.cm = fmul double %i.ag, %i.cj
  %i.cn = tail call noundef double @llvm.fmuladd.f64(double %i.cm, double %i.n, double %i.cl) ; 2 uses
  %i.co = fcmp oeq double %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cp = shufflevector <14 x double> %i.y, <14 x double> poison, <2 x i32> <i32 13, i32 9> ; 2 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cr = fdiv double 1.000000e+00, %i.cn         ; 3 uses
  %i.cs = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 10, i32 6, i32 6, i32 10>
  %i.ct = fmul <4 x double> %i.cs, %i.cq
  %i.cu = fneg double %i.d                        ; 2 uses
  %i.cv = fneg double %i.ae                       ; 2 uses
  %i.cw = fneg double %i.cr                       ; 3 uses
  %i.cx = fneg double %i.n                        ; 4 uses
  %i.cy = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 8, i32 4, i32 4, i32 7> ; 2 uses
  %i.cz = insertelement <4 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <4 x double> %i.cz, double %i.at, i64 2
  %i.db = shufflevector <4 x double> %i.da, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.dc = fmul <4 x double> %i.cy, %i.db
  %i.dd = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 12, i32 6, i32 8, i32 10>
  %i.de = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 2, i32 poison, i32 6, i32 11> ; 2 uses
  %i.df = shufflevector <4 x double> %i.de, <4 x double> poison, <14 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <14 x double> %i.l, <14 x double> %i.df, <4 x i32> <i32 10, i32 12, i32 16, i32 17>
  %i.dh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dd, <4 x double> %i.dg, <4 x double> %i.dc) ; 4 uses
  %i.di = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 poison, i32 5, i32 10, i32 9> ; 2 uses
  %i.dj = insertelement <4 x double> poison, double %i.d, i64 0
  %i.dk = insertelement <4 x double> %i.di, double %i.d, i64 0
  %i.dl = shufflevector <4 x double> %i.di, <4 x double> %i.dj, <3 x i32> <i32 3, i32 4, i32 poison>
  %i.dm = shufflevector <14 x double> %i.l, <14 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 5>
  %i.dn = shufflevector <3 x double> %i.dl, <3 x double> %i.dm, <4 x i32> <i32 0, i32 1, i32 5, i32 1>
  %i.do = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dk, <4 x double> %i.dn, <4 x double> %i.ct) ; 3 uses
  %i.dp = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 9, i32 5, i32 5, i32 9>
  %i.dq = insertelement <4 x double> poison, double %i.cv, i64 0
  %i.dr = insertelement <4 x double> %i.dq, double %i.ah, i64 2
  %i.ds = insertelement <4 x double> %i.dr, double %i.cx, i64 3
  %i.dt = shufflevector <4 x double> %i.ds, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.du = fmul <4 x double> %i.dp, %i.dt
  %i.dv = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 9, i32 7>
  %i.dw = shufflevector <4 x double> %i.cy, <4 x double> %i.dv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dx = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 13, i32 13, i32 4, i32 13>
  %i.dy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dw, <4 x double> %i.dx, <4 x double> %i.du) ; 5 uses
  %i.dz = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ea = fmul <4 x double> %i.dz, %i.dh
  %i.eb = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ec = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eb, <4 x double> %i.do, <4 x double> %i.ea)
  %i.ed = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 6> ; 2 uses
  %i.ee = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ed, <4 x double> %i.dy, <4 x double> %i.ec)
  %i.ef = insertelement <4 x double> poison, double %i.cw, i64 0
  %i.eg = insertelement <4 x double> %i.ef, double %i.cr, i64 1
  %i.eh = shufflevector <4 x double> %i.eg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.ei = fmul <4 x double> %i.ee, %i.eh
  %i.ej = fmul double %i.r, %i.cu
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.n, double %i.ej) ; 2 uses
  %i.el = fmul double %i.q, %i.cx
  %i.em = tail call double @llvm.fmuladd.f64(double %i.r, double %i.m, double %i.el)
  %i.en = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 6, i32 4> ; 3 uses
  %i.eo = insertelement <2 x double> %i.en, double %i.s, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eq = shufflevector <4 x double> %i.dh, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 3>
  %i.er = insertelement <4 x double> %i.eq, double %i.ek, i64 1
  %i.es = insertelement <4 x double> poison, double %i.a, i64 0
  %i.et = insertelement <4 x double> %i.es, double %i.r, i64 1
  %i.eu = shufflevector <4 x double> %i.et, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ev = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 12, i32 8> ; 2 uses
  %i.ew = insertelement <2 x double> %i.ev, double %i.q, i64 0
  %i.ex = insertelement <2 x double> poison, double %i.az, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.cx, i64 1
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.fb = insertelement <2 x double> %i.fa, double %i.p, i64 1 ; 2 uses
  %i.fc = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 4, i32 12> ; 2 uses
  %i.fd = insertelement <2 x double> %i.fc, double %i.o, i64 0
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.fd, <2 x double> %i.ez) ; 2 uses
  %i.ff = insertelement <4 x double> poison, double %i.em, i64 0
  %i.fg = shufflevector <4 x double> %i.dy, <4 x double> %i.ff, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.fh = shufflevector <2 x double> %i.fe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fi = shufflevector <4 x double> %i.fg, <4 x double> %i.fh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fj = insertelement <4 x double> poison, double %i.cr, i64 0 ; 2 uses
  %i.fk = insertelement <4 x double> %i.fj, double %i.cw, i64 1
  %i.fl = shufflevector <4 x double> %i.fk, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fm = fmul double %i.ak, %i.ah
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.fm)
  %i.fo = shufflevector <14 x double> %i.y, <14 x double> poison, <2 x i32> <i32 poison, i32 13>
  %i.fp = insertelement <2 x double> %i.fo, double %i.at, i64 0
  %i.fq = fmul <2 x double> %i.fb, %i.fp
  %i.fr = insertelement <2 x double> %i.en, double %i.o, i64 1
  %i.fs = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.n, i64 1
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.ft, <2 x double> %i.fq)
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.fw = shufflevector <4 x double> %i.er, <4 x double> %i.fv, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fx = fmul <4 x double> %i.ep, %i.fw
  %i.fy = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 10, i32 6>
  %i.fz = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %i.fy, %i.ga
  %i.gc = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 8, i32 4>
  %i.gd = insertelement <2 x double> poison, double %i.d, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.ge, <2 x double> %i.gb) ; 2 uses
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.gh = shufflevector <4 x double> %i.do, <4 x double> %i.gg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eu, <4 x double> %i.gh, <4 x double> %i.fx)
  %i.gj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ed, <4 x double> %i.fi, <4 x double> %i.gi)
  %i.gk = fmul <4 x double> %i.gj, %i.fl
  %i.gl = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.gm = insertelement <4 x double> poison, double %i.ek, i64 0
  %i.gn = shufflevector <4 x double> %i.dh, <4 x double> %i.gm, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.go = shufflevector <4 x double> %i.gn, <4 x double> %i.fv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gp = fmul <4 x double> %i.gl, %i.go
  %i.gq = insertelement <4 x double> poison, double %i.fn, i64 0
  %i.gr = shufflevector <4 x double> %i.gq, <4 x double> %i.dy, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.gs = shufflevector <2 x double> %i.gf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> %i.gr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eu, <4 x double> %i.gt, <4 x double> %i.gp)
  %i.gv = shufflevector <2 x double> %i.fe, <2 x double> poison, <14 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <14 x double> %i.gv, <14 x double> %i.l, <4 x i32> <i32 1, i32 16, i32 16, i32 1>
  %i.gx = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.gy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.az, i64 1
  %i.ha = fmul <2 x double> %i.gx, %i.gz
  %i.hb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.ev, <2 x double> %i.ha) ; 2 uses
  %i.hd = fmul <2 x double> %i.hb, %i.cp
  %i.he = insertelement <2 x double> poison, double %i.q, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = insertelement <2 x double> poison, double %i.n, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.p, i64 1
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hh, <2 x double> %i.hd)
  %i.hj = shufflevector <14 x double> %i.l, <14 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hk = insertelement <2 x double> %i.hj, double %i.q, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hm = shufflevector <4 x double> %i.dh, <4 x double> %i.fv, <2 x i32> <i32 0, i32 5>
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ho = fmul <4 x double> %i.hl, %i.hn
  %i.hp = insertelement <2 x double> %i.fc, double %i.a, i64 1
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hr = shufflevector <4 x double> %i.do, <4 x double> %i.dy, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.hs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hq, <4 x double> %i.hr, <4 x double> %i.ho)
  %i.ht = insertelement <2 x double> %i.en, double %i.s, i64 1
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hv = shufflevector <4 x double> %i.dy, <4 x double> %i.fh, <2 x i32> <i32 0, i32 5>
  %i.hw = shufflevector <2 x double> %i.hc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hx = shufflevector <2 x double> %i.hv, <2 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hu, <4 x double> %i.hx, <4 x double> %i.hs)
  %i.hz = shufflevector <4 x double> %i.de, <4 x double> %i.hw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ia = insertelement <4 x double> %i.hz, double %i.q, i64 3
  %i.ib = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ia, <4 x double> %i.gw, <4 x double> %i.gu)
  %i.ic = fmul <4 x double> %i.ib, %i.eh
  %i.id = insertelement <4 x double> %i.fj, double %i.cw, i64 2
  %i.ie = shufflevector <4 x double> %i.id, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.if = fmul <4 x double> %i.hy, %i.ie
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ig = phi <4 x double> [ %i.ei, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.ih = phi <4 x double> [ %i.gk, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.ii = phi <4 x double> [ %i.ic, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.ij = phi <4 x double> [ %i.if, %bb.b ], [ splat (double +qnan), %bb.a ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.in = extractelement <4 x double> %i.ij, i64 0
  store double %i.in, ptr %0, align 8
  store <4 x double> %i.ig, ptr %i.g, align 8
  store <4 x double> %i.ih, ptr %i.im, align 8
  store <4 x double> %i.ii, ptr %i.ik, align 8
  %i.io = extractelement <4 x double> %i.ij, i64 1
  store double %i.io, ptr %i.il, align 8
  %i.ip = extractelement <4 x double> %i.ij, i64 2
  store double %i.ip, ptr %i.e, align 8
  %i.iq = extractelement <4 x double> %i.ij, i64 3
  store double %i.iq, ptr %i.c, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %3 = alloca %class.aiMatrix3x3t, align 16       ; 15 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 15 uses
  %5 = alloca %"class.std::vector.43", align 8    ; 17 uses
  %6 = alloca %class.aiVector3t, align 8          ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.ClipperLib::Clipper", align 8 ; 45 uses
  %8 = alloca %"class.std::vector.119", align 8   ; 11 uses
  %9 = alloca %"class.std::vector.10", align 8    ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 41 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.10", align 8   ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::vector.132", align 8  ; 13 uses
  %17 = alloca %"class.std::vector.137", align 8  ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator.86", align 1 ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::allocator.86", align 1 ; 4 uses
  %26 = alloca %"class.std::vector.147", align 8  ; 9 uses
  %i.i = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.i, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.k = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.k, ptr %i.e, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA65_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(65) @.str.31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix3x3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.l = load i8, ptr %i.f, align 1, !range !143, !noundef !144
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

bb.c:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit
  %.sroa.6596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.8599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.12604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.16.0.copyload = load double, ptr %.sroa.16.0..sroa_idx, align 16 ; 3 uses
  %.sroa.18611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.n = load <2 x double>, ptr %3, align 16      ; 3 uses
  %.sroa.6596.0.copyload = load double, ptr %.sroa.6596.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8599.0.copyload = load double, ptr %.sroa.8599.0..sroa_idx, align 16 ; 3 uses
  %i.o = load <2 x double>, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12604.0.copyload = load double, ptr %.sroa.12604.0..sroa_idx, align 16 ; 3 uses
  %.sroa.14.0.copyload = load double, ptr %.sroa.14.0..sroa_idx, align 8 ; 3 uses
  %i.p = load <2 x double>, ptr %.sroa.18611.0..sroa_idx, align 8 ; 2 uses
  %.sroa.20.0.copyload = load double, ptr %.sroa.20.0..sroa_idx, align 16 ; 2 uses
  %i.q = extractelement <2 x double> %i.n, i64 0  ; 3 uses
  %i.r = fmul double %i.q, %.sroa.12604.0.copyload
  %i.s = fmul double %i.q, %.sroa.14.0.copyload
  %i.t = extractelement <2 x double> %i.p, i64 0  ; 2 uses
  %i.u = fneg double %i.t                         ; 2 uses
  %i.v = fmul double %i.s, %i.u
  %i.w = call double @llvm.fmuladd.f64(double %i.r, double %.sroa.20.0.copyload, double %i.v)
  %i.x = fmul double %.sroa.6596.0.copyload, %.sroa.14.0.copyload
  %i.y = call double @llvm.fmuladd.f64(double %i.x, double %.sroa.16.0.copyload, double %i.w)
  %i.z = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = fmul double %.sroa.6596.0.copyload, %i.aa ; 2 uses
  %i.ac = call double @llvm.fmuladd.f64(double %i.ab, double %.sroa.20.0.copyload, double %i.y)
  %i.ad = fmul double %.sroa.8599.0.copyload, %i.z
  %i.ae = call double @llvm.fmuladd.f64(double %i.ad, double %i.t, double %i.ac)
  %i.af = fneg double %.sroa.12604.0.copyload
  %i.ag = fmul double %.sroa.8599.0.copyload, %i.af ; 2 uses
  %i.ah = call noundef double @llvm.fmuladd.f64(double %i.ag, double %.sroa.16.0.copyload, double %i.ae) ; 2 uses
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00
  br i1 %i.ai, label %_ZN12aiMatrix3x3tIdE7InverseEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = fdiv double 1.000000e+00, %i.ah         ; 3 uses
  %i.ak = fneg double %i.aj
  %i.al = fneg double %.sroa.16.0.copyload
  %i.am = shufflevector <2 x double> %i.o, <2 x double> %i.n, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 3> ; 2 uses
  %i.an = insertelement <8 x double> %i.am, double %.sroa.14.0.copyload, i64 0 ; 2 uses
  %i.ao = insertelement <8 x double> %i.an, double %.sroa.8599.0.copyload, i64 1
  %i.ap = insertelement <8 x double> %i.ao, double %i.ag, i64 2
  %i.aq = shufflevector <8 x double> %i.ap, <8 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 1, i32 6, i32 7>
  %i.ar = insertelement <8 x double> <double poison, double 1.000000e+00, double poison, double poison, double poison, double poison, double poison, double poison>, double %i.u, i64 0
  %i.as = insertelement <8 x double> %i.ar, double %i.al, i64 2
  %i.at = insertelement <8 x double> %i.as, double %i.aa, i64 3
  %i.au = shufflevector <8 x double> %i.at, <8 x double> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 2, i32 3, i32 2, i32 2>
  %i.av = fmul <8 x double> %i.aq, %i.au
  %i.aw = shufflevector <2 x double> %i.o, <2 x double> %i.n, <8 x i32> <i32 poison, i32 poison, i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <8 x double> %i.am, <8 x double> %i.aw, <8 x i32> <i32 6, i32 7, i32 7, i32 10, i32 11, i32 11, i32 10, i32 11>
  %i.ay = shufflevector <2 x double> %i.p, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <8 x double> %i.ay, <8 x double> %i.an, <8 x i32> <i32 1, i32 1, i32 8, i32 1, i32 1, i32 8, i32 0, i32 0>
  %i.ba = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ax, <8 x double> %i.az, <8 x double> %i.av)
  %i.bb = insertelement <8 x double> poison, double %i.aj, i64 0
  %i.bc = insertelement <8 x double> %i.bb, double %i.ak, i64 1
  %i.bd = shufflevector <8 x double> %i.bc, <8 x double> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.be = fmul <8 x double> %i.ba, %i.bd
  %i.bf = call double @llvm.fmuladd.f64(double %i.q, double %.sroa.12604.0.copyload, double %i.ab)
  %i.bg = fmul double %i.bf, %i.aj
  br label %_ZN12aiMatrix3x3tIdE7InverseEv.exit

_ZN12aiMatrix3x3tIdE7InverseEv.exit:              ; preds = %bb.c, %bb.d
  %storemerge.i = phi double [ %i.bg, %bb.d ], [ +qnan, %bb.c ] ; 3 uses
  %i.bh = phi <8 x double> [ %i.be, %bb.d ], [ splat (double +qnan), %bb.c ] ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = load ptr, ptr %1, align 8               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 24                ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 576460752303423487
  br i1 %i.bp, label %.noexc, label %bb.e

.noexc:                                           ; preds = %_ZN12aiMatrix3x3tIdE7InverseEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.e:                                             ; preds = %_ZN12aiMatrix3x3tIdE7InverseEv.exit
  %.not = icmp eq ptr %i.bj, %i.bk
  br i1 %.not, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bq = shl nuw nsw i64 %i.bo, 4
  %i.br = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #25 ; 3 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bo
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.bt = fmul double %i.cg, %i.ck
  %i.bu = call double @llvm.fmuladd.f64(double %i.cj, double %i.ce, double %i.bt)
  %i.bv = call double @llvm.fmuladd.f64(double %i.cl, double %i.ci, double %i.bu)
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit.thread

_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit.thread: ; preds = %bb.e, %._crit_edge
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.18.3, %._crit_edge ], [ null, %bb.e ] ; 2 uses
  %.sroa.11587.0.lcssa = phi ptr [ %.sroa.11587.2, %._crit_edge ], [ null, %bb.e ] ; 2 uses
  %.sroa.0582.0.lcssa = phi ptr [ %.sroa.0582.3, %._crit_edge ], [ null, %bb.e ] ; 6 uses
  %.0104.lcssa = phi double [ %i.bv, %._crit_edge ], [ -1.000000e+00, %bb.e ] ; 10 uses
  %i.bw = phi <4 x double> [ %i.df, %._crit_edge ], [ <double -1.000000e+10, double -1.000000e+10, double 1.000000e+10, double 1.000000e+10>, %bb.e ] ; 4 uses
  %i.bx = extractelement <4 x double> %i.bw, i64 1
  %i.by = extractelement <4 x double> %i.bw, i64 3 ; 6 uses
  %i.bz = fsub double %i.bx, %i.by                ; 5 uses
  %i.ca = extractelement <4 x double> %i.bw, i64 0
  %i.cb = extractelement <4 x double> %i.bw, i64 2 ; 6 uses
  %i.cc = fsub double %i.ca, %i.cb                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i8 1, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) %7, i32 noundef 0)
          to label %bb.j unwind label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %.sroa.0582.0810 = phi ptr [ %.sroa.0582.3, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.br, %.lr.ph.preheader ] ; 8 uses
  %.sroa.11587.0809 = phi ptr [ %.sroa.11587.2, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.br, %.lr.ph.preheader ] ; 8 uses
  %.sroa.18.0808 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.bs, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0559.0803 = phi ptr [ %i.dx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.bk, %.lr.ph.preheader ] ; 4 uses
  %i.cd = phi <4 x double> [ %i.df, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ <double -1.000000e+10, double -1.000000e+10, double 1.000000e+10, double 1.000000e+10>, %.lr.ph.preheader ] ; 3 uses
  %i.ce = load double, ptr %.sroa.0559.0803, align 8, !noalias !264 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0559.0803, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !noalias !264 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0559.0803, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !noalias !264 ; 2 uses
  %i.cj = load double, ptr %.sroa.16.0..sroa_idx, align 16, !noalias !264
  %i.ck = load double, ptr %.sroa.18611.0..sroa_idx, align 8, !noalias !264
  %i.cl = load double, ptr %.sroa.20.0..sroa_idx, align 16, !noalias !264
  %i.cm = load <4 x double>, ptr %3, align 16, !noalias !264 ; 3 uses
  %i.cn = load <2 x double>, ptr %.sroa.12604.0..sroa_idx, align 16, !noalias !264
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cp = shufflevector <4 x double> %i.co, <4 x double> %i.cm, <2 x i32> <i32 0, i32 5>
  %i.cq = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEERS5_DpOT_:bb.a
.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %i.j, align 8
  br label %_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit

_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
          to label %.noexc5.i unwind label %bb.g  ; 4 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %i.m, align 8
  %i.n = icmp samesign ugt i64 %i.g, 8
  br i1 %i.n, label %bb.d, label %bb.e, !prof !298

bb.d:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.sroa.01.0.copyload.i, i64 %i.g, i1 false)
  br label %_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %.noexc5.i
  %i.o = icmp eq i64 %i.g, 8
  br i1 %i.o, label %bb.f, label %_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %.sroa.01.0.copyload.i, align 8
  store ptr %i.p, ptr %i.k, align 8
  br label %_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i6.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit: ; preds = %bb.f, %bb.e, %bb.d, %.thread.i.i
  %i.x = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.i, %.thread.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit
  %i.ab = phi ptr [ %.pre, %bb.i ], [ %i.aa, %_ZNSt15__new_allocatorISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEE9constructIS6_JN9__gnu_cxx17__normal_iteratorIPS4_S6_EESC_EEEvPT_DpOT0_.exit ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -24
  ret ptr %i.ac
}

declare void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i:     ; preds = %bb.b, %.lr.ph.i.i
  %i.n = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i: ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !262

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !263

_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #26
  br label %_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC19GetContourInPlane2DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdE10aiVector3tIdEdS9_RS9_RbSB_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.5") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef readonly byval(%class.aiMatrix3x3t) align 8 captures(none) %2, ptr noundef readonly byval(%class.aiVector3t) align 8 captures(none) %3, double noundef %4, ptr noundef readonly byval(%class.aiVector3t) align 8 captures(none) %5, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 1 captures(none) dereferenceable(1) %7, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %class.aiVector3t, align 16        ; 10 uses
  %14 = alloca %class.aiVector3t, align 8         ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load double, ptr %i.g, align 8, !noalias !299
  %i.i = load double, ptr %i.f, align 8, !noalias !299 ; 2 uses
  %i.j = fsub double %i.h, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.l = load double, ptr %i.k, align 8, !noalias !299
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load double, ptr %i.m, align 8, !noalias !299 ; 2 uses
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.q = load double, ptr %i.p, align 8, !noalias !299
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load double, ptr %i.r, align 8, !noalias !299 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.v = load double, ptr %i.u, align 8, !noalias !302
  %i.w = fsub double %i.v, %i.i                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.y = load double, ptr %i.x, align 8, !noalias !302
  %i.z = fsub double %i.y, %i.n                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ab = load double, ptr %i.aa, align 8, !noalias !302
  %i.ac = fsub double %i.ab, %i.s                 ; 2 uses
  %i.ad = fneg double %i.z
  %i.ae = fmul double %i.t, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ac, double %i.ae) ; 4 uses
  %i.ag = fneg double %i.ac
  %i.ah = fmul double %i.j, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.ah) ; 4 uses
  %i.aj = fneg double %i.w
  %i.ak = fmul double %i.o, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.j, double %i.z, double %i.ak) ; 4 uses
  %i.am = fmul double %i.ai, %i.ai
  %i.an = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.am)
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.an) ; 2 uses
  %i.ap = fcmp oeq double %i.ao, 0.000000e+00
  br i1 %i.ap, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.a
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ao)
  %i.aq = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.ar = fmul double %i.af, %i.aq
  %i.as = fmul double %i.ai, %i.aq
  %i.at = fmul double %i.al, %i.aq
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.a
  %.sroa.0121.0 = phi double [ %i.af, %bb.a ], [ %i.ar, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 2 uses
  %.sroa.7122.0 = phi double [ %i.ai, %bb.a ], [ %i.as, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 2 uses
  %.sroa.10.0 = phi double [ %i.al, %bb.a ], [ %i.at, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 2 uses
  %i.au = load double, ptr %3, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load double, ptr %i.av, align 8         ; 2 uses
  %i.ax = fmul double %.sroa.7122.0, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.au, double %.sroa.0121.0, double %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load double, ptr %i.az, align 8         ; 2 uses
  %i.bb = tail call noundef double @llvm.fmuladd.f64(double %i.ba, double %.sroa.10.0, double %i.ay) ; 3 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp olt double %i.bc, f0x3FEFFFFDE0000000
  br i1 %i.bd, label %bb.b, label %bb.m

bb.b:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.9, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %i.au)
          to label %_ZNSolsEd.exit unwind label %bb.i ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZNSolsEd.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, double noundef %i.aw)
          to label %_ZNSolsEd.exit59 unwind label %bb.i ; 2 uses

_ZNSolsEd.exit59:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZNSolsEd.exit59
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, double noundef %i.ba)
          to label %_ZNSolsEd.exit61 unwind label %bb.i

_ZNSolsEd.exit61:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZNSolsEd.exit61
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.11, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %.sroa.0121.0)
          to label %_ZNSolsEd.exit64 unwind label %bb.i ; 2 uses

_ZNSolsEd.exit64:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZNSolsEd.exit64
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, double noundef %.sroa.7122.0)
          to label %_ZNSolsEd.exit66 unwind label %bb.i ; 2 uses

_ZNSolsEd.exit66:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZNSolsEd.exit66
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, double noundef %.sroa.10.0)
          to label %_ZNSolsEd.exit68 unwind label %bb.i ; 2 uses

_ZNSolsEd.exit68:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.12, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZNSolsEd.exit68
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.br, double noundef %i.bb)
          to label %_ZNSolsEd.exit70 unwind label %bb.i ; 0 uses

_ZNSolsEd.exit70:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.bu, ptr %10, align 8, !alias.scope !311
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bv, align 8, !alias.scope !311
  store i8 0, ptr %i.bu, align 8, !alias.scope !311
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !311 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !311 ; 2 uses
  %i.ca = icmp ugt ptr %i.bx, %i.bz
  %.08.i.i.i = select i1 %i.ca, ptr %i.bx, ptr %i.bz ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSolsEd.exit70
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !311 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %10, align 8, !alias.scope !311 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bu
  br i1 %i.cj, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZNSolsEd.exit70
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.cl = load ptr, ptr %10, align 8
  store ptr %i.cl, ptr %i.c, align 8
  %i.cm = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cm, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJPKcEEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.cn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc71 unwind label %bb.j

.noexc71:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.co = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
end_hunk_10
begin_hunk_11_@_ZN6Assimp3IFC19GetContourInPlane2DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdE10aiVector3tIdEdS9_RS9_RbSB_:bb.a
  br label %bb.ah

bb.y:                                             ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit
  %i.hh = phi ptr [ null, %.lr.ph ], [ %i.jy, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.0112.0132 = phi ptr [ %i.f, %.lr.ph ], [ %i.ka, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 4 uses
  %i.hi = phi ptr [ null, %.lr.ph ], [ %i.jz, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.hj = load double, ptr %.sroa.0112.0132, align 8, !noalias !312 ; 4 uses
  %i.hk = load double, ptr %i.ed, align 8, !noalias !312 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 8
  %i.hm = load double, ptr %i.hl, align 8, !noalias !312 ; 4 uses
  %i.hn = fmul double %i.hk, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.hj, double %i.hn)
  %i.hp = load double, ptr %i.ee, align 8, !noalias !312 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 16
  %i.hr = load double, ptr %i.hq, align 8, !noalias !312 ; 4 uses
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.ho)
  store double %i.hs, ptr %13, align 16, !alias.scope !312
  %i.ht = load double, ptr %i.ef, align 8, !noalias !312 ; 2 uses
  %i.hu = load double, ptr %i.eg, align 8, !noalias !312 ; 2 uses
  %i.hv = fmul double %i.hm, %i.hu
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hj, double %i.hv)
  %i.hx = load double, ptr %i.eh, align 8, !noalias !312 ; 2 uses
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hr, double %i.hw)
  store double %i.hy, ptr %i.ei, align 8, !alias.scope !312
  %i.hz = load double, ptr %i.ej, align 8, !noalias !312 ; 2 uses
  %i.ia = load double, ptr %i.ek, align 8, !noalias !312 ; 2 uses
  %i.ib = fmul double %i.hm, %i.ia
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.hj, double %i.ib)
  %i.id = load double, ptr %i.el, align 8, !noalias !312 ; 2 uses
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.hr, double %i.ic) ; 2 uses
  store double %i.ie, ptr %i.em, align 16, !alias.scope !312
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.if = fadd double %i.hj, %i.en                ; 3 uses
  %i.ig = load double, ptr %i.eo, align 8, !noalias !315
  %i.ih = fadd double %i.hm, %i.ig                ; 3 uses
  %i.ii = load double, ptr %i.ep, align 8, !noalias !315
  %i.ij = fadd double %i.hr, %i.ii                ; 3 uses
  %i.ik = fmul double %i.hk, %i.ih
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.if, double %i.ik)
  %i.im = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.ij, double %i.il)
  store double %i.im, ptr %14, align 8, !alias.scope !325
  %i.in = fmul double %i.hu, %i.ih
  %i.io = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.if, double %i.in)
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.ij, double %i.io)
  store double %i.ip, ptr %i.eq, align 8, !alias.scope !325
  %i.iq = fmul double %i.ia, %i.ih
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.if, double %i.iq)
  %i.is = tail call double @llvm.fmuladd.f64(double %i.id, double %i.ij, double %i.ir) ; 2 uses
  store double %i.is, ptr %i.er, align 8, !alias.scope !325
  %i.it = fsub double %i.ie, %4
  %i.iu = tail call double @llvm.fabs.f64(double %i.it)
  %i.iv = fsub double %i.is, %4
  %i.iw = tail call double @llvm.fabs.f64(double %i.iv)
  %i.ix = fcmp ogt double %i.iu, %i.iw            ; 2 uses
  %i.iy = load i8, ptr %7, align 1, !range !143, !noundef !144
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %7, align 1
  br i1 %i.es, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br i1 %i.ix, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ja = load double, ptr %i.et, align 8, !noalias !328
  %i.jb = fneg double %i.ja
  %i.jc = load <2 x double>, ptr %6, align 8, !noalias !328
  %i.jd = fneg <2 x double> %i.jc
  store <2 x double> %i.jd, ptr %6, align 8
  store double %i.jb, ptr %i.et, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa, %bb.y
  %. = select i1 %i.ix, ptr %14, ptr %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  %i.je = load ptr, ptr %i.ev, align 8
  %.not.i = icmp eq ptr %i.hh, %i.je
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jf = load <2 x double>, ptr %13, align 16
  store <2 x double> %i.jf, ptr %i.hh, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  store ptr %i.jg, ptr %i.eu, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.jh = ptrtoint ptr %i.hh to i64
  %i.ji = ptrtoint ptr %i.hi to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 4 uses
  %i.jk = icmp eq i64 %i.jj, 9223372036854775792
  br i1 %i.jk, label %bb.af, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  store ptr %i.hi, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.jl = ashr exact i64 %i.jj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 1)
  %i.jm = add nsw i64 %.sroa.speculated.i.i.i, %i.jl ; 2 uses
  %i.jn = icmp ult i64 %i.jm, %i.jl
  %i.jo = tail call i64 @llvm.umin.i64(i64 %i.jm, i64 576460752303423487)
  %i.jp = select i1 %i.jn, i64 576460752303423487, i64 %i.jo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.jq = shl nuw nsw i64 %i.jp, 4
  %i.jr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #25
          to label %.noexc107 unwind label %.loopexit ; 5 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jj
  %i.jt = load <2 x double>, ptr %13, align 16
  store <2 x double> %i.jt, ptr %i.js, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.hi, %i.hh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc107, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i ], [ %i.jr, %.noexc107 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i ], [ %i.hi, %.noexc107 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !331
  %i.ju = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ju, %i.hh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc107
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.jr, %.noexc107 ], [ %i.jv, %.lr.ph.i.i.i.i.i ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.jj) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.jw, ptr %i.eu, align 8
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.jp
  store ptr %i.jx, ptr %i.ev, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ad
  %i.jy = phi ptr [ %i.jw, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.jg, %bb.ad ]
  %i.jz = phi ptr [ %i.jr, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hi, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0112.0132, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ka, %i.dw
  br i1 %.not, label %._crit_edge, label %bb.y

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hi, ptr %0, align 8
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit102, %._crit_edge, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %.not.i.i.i108 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kb = ptrtoint ptr %i.hh to i64
  %i.kc = ptrtoint ptr %i.hi to i64
  %i.kd = sub i64 %i.kb, %i.kc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.kd) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %bb.x, %bb.l, %bb.ai, %bb.aj
  %.pn52.pn.pn.pn.pn162 = phi { ptr, i32 } [ %lpad.phi, %bb.aj ], [ %lpad.phi, %bb.ai ], [ %.pn47.pn.pn, %bb.x ], [ %.pn52.pn.pn, %bb.l ]
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn162
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef readonly byval(%class.aiMatrix3x3t) align 8 captures(none) %2, double noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::deque", align 8        ; 33 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"struct.std::pair.3", align 8     ; 10 uses
  %14 = alloca %"struct.std::pair.3", align 8     ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::deque.125", align 8   ; 27 uses
  %18 = alloca [2 x %class.aiVector2t], align 8   ; 6 uses
  %19 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %20 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %21 = alloca %"class.std::vector.5", align 8    ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.15, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.p = load double, ptr %2, align 8             ; 4 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %i.p)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %_ZNSolsEd.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 4 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, double noundef %i.t)
          to label %_ZNSolsEd.exit165 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit165:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %_ZNSolsEd.exit165
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load double, ptr %i.w, align 8           ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, double noundef %i.x)
          to label %_ZNSolsEd.exit167 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit167:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZNSolsEd.exit167
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load double, ptr %i.ab, align 8         ; 4 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %i.ac)
          to label %_ZNSolsEd.exit170 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit170:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %_ZNSolsEd.exit170
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load double, ptr %i.af, align 8         ; 4 uses
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, double noundef %i.ag)
          to label %_ZNSolsEd.exit172 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit172:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %_ZNSolsEd.exit172
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load double, ptr %i.aj, align 8         ; 4 uses
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, double noundef %i.ak)
          to label %_ZNSolsEd.exit174 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit174:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZNSolsEd.exit174
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ap = load double, ptr %i.ao, align 8         ; 4 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %i.ap)
          to label %_ZNSolsEd.exit177 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit177:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178: ; preds = %_ZNSolsEd.exit177
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.at = load double, ptr %i.as, align 8         ; 4 uses
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, double noundef %i.at)
          to label %_ZNSolsEd.exit179 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit179:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180: ; preds = %_ZNSolsEd.exit179
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ax = load double, ptr %i.aw, align 8         ; 4 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, double noundef %i.ax)
          to label %_ZNSolsEd.exit181 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit181:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182: ; preds = %_ZNSolsEd.exit181
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.18, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %3)
          to label %_ZNSolsEd.exit185 unwind label %bb.f ; 0 uses

_ZNSolsEd.exit185:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bd, ptr %7, align 8, !alias.scope !341
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.be, align 8, !alias.scope !341
  store i8 0, ptr %i.bd, align 8, !alias.scope !341
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !341 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bg, null
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !341 ; 2 uses
  %i.bj = icmp ugt ptr %i.bg, %i.bi
  %.08.i.i.i = select i1 %i.bj, ptr %i.bg, ptr %i.bi ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit185
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !341 ; 2 uses
  %i.bm = ptrtoint ptr %.08.i.i.i to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bl, i64 noundef %i.bo)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %7, align 8, !alias.scope !341 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bd
  br i1 %i.bs, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZNSolsEd.exit185
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.bu = load ptr, ptr %7, align 8
  store ptr %i.bu, ptr %i.i, align 8
  %i.bv = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bv, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit, label %bb.e

end_hunk_11
begin_hunk_12_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a
  br i1 %i.aoq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit386
  %i.aor = load i64, ptr %i.anf, align 8
  %i.aos = add i64 %i.aor, 1
  call void @_ZdlPvm(ptr noundef %i.aop, i64 noundef %i.aos) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  store ptr %i.cc, ptr %22, align 8
  %i.aot = load i64, ptr %i.ce, align 8
  %i.aou = getelementptr inbounds i8, ptr %22, i64 %i.aot
  store ptr %i.cd, ptr %i.aou, align 8
  store ptr %i.ch, ptr %i.ams, align 8
  %i.aov = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aov, align 8
  %i.aow = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.aox = load ptr, ptr %i.aow, align 8          ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %22, i64 112 ; 2 uses
  %i.aoz = icmp eq ptr %i.aox, %i.aoy
  br i1 %i.aoz, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  %i.apa = load i64, ptr %i.aoy, align 8
  %i.apb = add i64 %i.apa, 1
  call void @_ZdlPvm(ptr noundef %i.aox, i64 noundef %i.apb) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit392

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i390
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aov, align 8
  %i.apc = getelementptr inbounds nuw i8, ptr %22, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.apc) #27
  store ptr %i.cq, ptr %22, align 8
  %i.apd = load i64, ptr %i.cs, align 8
  %i.ape = getelementptr inbounds i8, ptr %22, i64 %i.apd
  store ptr %i.cr, ptr %i.ape, align 8
  %i.apf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.apf, align 8
  %i.apg = getelementptr inbounds nuw i8, ptr %22, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.apg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.aph = load ptr, ptr %8, align 8              ; 2 uses
  %.not.i.i393 = icmp eq ptr %i.aph, null
  br i1 %.not.i.i393, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit392
  %i.api = load ptr, ptr %i.nc, align 8           ; 2 uses
  %i.apj = load ptr, ptr %i.na, align 8           ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  %i.apl = icmp ult ptr %i.api, %i.apk
  br i1 %i.apl, label %.lr.ph.i.i.i394, label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i394:                                  ; preds = %bb.gk, %.lr.ph.i.i.i394
  %.06.i.i.i395 = phi ptr [ %i.apn, %.lr.ph.i.i.i394 ], [ %i.api, %bb.gk ] ; 3 uses
  %i.apm = load ptr, ptr %.06.i.i.i395, align 8
  call void @_ZdlPvm(ptr noundef %i.apm, i64 noundef 512) #26
  %i.apn = getelementptr inbounds nuw i8, ptr %.06.i.i.i395, i64 8
  %i.apo = icmp ult ptr %.06.i.i.i395, %i.apj
  br i1 %i.apo, label %.lr.ph.i.i.i394, label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !421

_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i394
  %.pre.i.i396 = load ptr, ptr %8, align 8
  br label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.gk
  %i.app = phi ptr [ %.pre.i.i396, %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.aph, %bb.gk ]
  %i.apq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.apr = load i64, ptr %i.apq, align 8
  %i.aps = shl i64 %i.apr, 3
  call void @_ZdlPvm(ptr noundef %i.app, i64 noundef %i.aps) #26
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit392, %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

bb.gl:                                            ; preds = %.noexc384, %.noexc383, %bb.gj, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit369
  %i.apt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apu = load ptr, ptr %23, align 8             ; 2 uses
  %i.apv = icmp eq ptr %i.apu, %i.anf
  br i1 %i.apv, label %.body367, label %.body367.sink.split

.body367.sink.split:                              ; preds = %bb.gl, %bb.gd
  %.sink1002 = phi ptr [ %i.ant, %bb.gd ], [ %i.apu, %bb.gl ]
  %.pn131.ph = phi { ptr, i32 } [ %i.ans, %bb.gd ], [ %i.apt, %bb.gl ]
  %i.apw = load i64, ptr %i.anf, align 8
  %i.apx = add i64 %i.apw, 1
  call void @_ZdlPvm(ptr noundef %.sink1002, i64 noundef %i.apx) #26
  br label %.body367

.body367:                                         ; preds = %.body367.sink.split, %bb.gl, %bb.gd
  %.pn131 = phi { ptr, i32 } [ %i.ans, %bb.gd ], [ %i.apt, %bb.gl ], [ %.pn131.ph, %.body367.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gh, %bb.gi, %.body367, %bb.gg
  %.pn133.pn = phi { ptr, i32 } [ %i.anx, %bb.gg ], [ %.pn131, %.body367 ], [ %i.aok, %bb.gi ], [ %i.aod, %bb.gh ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22) #27
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gf
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %bb.gm ], [ %i.anw, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit353
  %.pn139.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn, %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit353 ], [ %.pn133.pn.pn, %bb.gn ] ; 2 uses
  %i.apy = load ptr, ptr %0, align 8              ; 3 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aqa = load ptr, ptr %i.apz, align 8          ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.apy, %i.aqa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i400

.lr.ph.i.i.i400:                                  ; preds = %bb.go, %_ZSt8_DestroyISt6vectorI10aiVector2tIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aqh, %_ZSt8_DestroyISt6vectorI10aiVector2tIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.apy, %bb.go ] ; 3 uses
  %i.aqb = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aqb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector2tIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %.lr.ph.i.i.i400
  %i.aqc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aqd = load ptr, ptr %i.aqc, align 8
  %i.aqe = ptrtoint ptr %i.aqd to i64
  %i.aqf = ptrtoint ptr %i.aqb to i64
  %i.aqg = sub i64 %i.aqe, %i.aqf
  call void @_ZdlPvm(ptr noundef nonnull %i.aqb, i64 noundef %i.aqg) #26
  br label %_ZSt8_DestroyISt6vectorI10aiVector2tIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector2tIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.gp, %.lr.ph.i.i.i400
  %i.aqh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %i.aqh, %i.aqa
  br i1 %.not.i.i.i401, label %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i400, !llvm.loop !271

_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector2tIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.go
  %i.aqi = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.apy, %bb.go ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aqi, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aqk = load ptr, ptr %i.aqj, align 8
  %i.aql = ptrtoint ptr %i.aqk to i64
  %i.aqm = ptrtoint ptr %i.aqi to i64
  %i.aqn = sub i64 %i.aql, %i.aqm
  call void @_ZdlPvm(ptr noundef nonnull %i.aqi, i64 noundef %i.aqn) #26
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %.loopexit604, %.loopexit.split-lp605, %bb.gq, %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.z, %bb.ae, %bb.ao, %bb.ay, %bb.bo
  %.pn158.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn, %bb.gq ], [ %.pn144.pn, %bb.bo ], [ %.pn158.pn, %bb.z ], [ %.pn154.pn.pn, %bb.ae ], [ %i.mu, %bb.ay ], [ %.pn139.pn.pn.pn, %_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i ], [ %i.kz, %bb.ao ], [ %lpad.loopexit606, %.loopexit604 ], [ %lpad.loopexit.split-lp607, %.loopexit.split-lp605 ]
  %i.aqo = load ptr, ptr %8, align 8              ; 2 uses
  %.not.i.i402 = icmp eq ptr %i.aqo, null
  br i1 %.not.i.i402, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit408, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit
  %i.aqp = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.aqq = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aqr = load ptr, ptr %i.aqq, align 8          ; 2 uses
  %i.aqs = load ptr, ptr %i.aqp, align 8          ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqu = icmp ult ptr %i.aqr, %i.aqt
  br i1 %i.aqu, label %.lr.ph.i.i.i404, label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i403

.lr.ph.i.i.i404:                                  ; preds = %bb.gr, %.lr.ph.i.i.i404
  %.06.i.i.i405 = phi ptr [ %i.aqw, %.lr.ph.i.i.i404 ], [ %i.aqr, %bb.gr ] ; 3 uses
  %i.aqv = load ptr, ptr %.06.i.i.i405, align 8
  call void @_ZdlPvm(ptr noundef %i.aqv, i64 noundef 512) #26
  %i.aqw = getelementptr inbounds nuw i8, ptr %.06.i.i.i405, i64 8
  %i.aqx = icmp ult ptr %.06.i.i.i405, %i.aqs
  br i1 %i.aqx, label %.lr.ph.i.i.i404, label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i406, !llvm.loop !421

_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i406: ; preds = %.lr.ph.i.i.i404
  %.pre.i.i407 = load ptr, ptr %8, align 8
  br label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i403

_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i403: ; preds = %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i406, %bb.gr
  %i.aqy = phi ptr [ %.pre.i.i407, %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i406 ], [ %i.aqo, %bb.gr ]
  %i.aqz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ara = load i64, ptr %i.aqz, align 8
  %i.arb = shl i64 %i.ara, 3
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arb) #26
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit408

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit408: ; preds = %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit, %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.gs

bb.gs:                                            ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit408, %bb.h
  %.pn158.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn158.pn.pn.pn, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit408 ], [ %.pn.pn, %bb.h ]
  resume { ptr, i32 } %.pn158.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp3IFCL10logSegmentESt4pairI10aiVector2tIdES3_E(ptr noundef readonly byval(%"struct.std::pair.3") align 8 captures(none) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.38, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.20, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load double, ptr %0, align 8
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.f)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEd.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.j)
          to label %_ZNSolsEd.exit7 unwind label %bb.f

_ZNSolsEd.exit7:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.30, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZNSolsEd.exit7
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.20, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load double, ptr %i.n, align 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.o)
          to label %_ZNSolsEd.exit10 unwind label %bb.f ; 2 uses

_ZNSolsEd.exit10:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEd.exit10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load double, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.s)
          to label %_ZNSolsEd.exit12 unwind label %bb.f

_ZNSolsEd.exit12:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.30, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZNSolsEd.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.v, ptr %2, align 8, !alias.scope !428
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.w, align 8, !alias.scope !428
  store i8 0, ptr %i.v, align 8, !alias.scope !428
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !noalias !428 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !428 ; 2 uses
  %i.ab = icmp ugt ptr %i.y, %i.aa
  %.08.i.i.i = select i1 %i.ab, ptr %i.y, ptr %i.aa ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !428 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !428 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.am = load ptr, ptr %2, align 8
  store ptr %i.am, ptr %i.b, align 8
  %i.an = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.an, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.ao = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ap = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc15 unwind label %bb.g

.noexc15:                                         ; preds = %.noexc14
  store ptr %i.ap, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc16 unwind label %bb.g

.noexc16:                                         ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit: ; preds = %.noexc16, %.noexc
  %i.aq = load ptr, ptr %2, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.v
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit
  %i.as = load i64, ptr %i.v, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.au, ptr %1, align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.bd, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ba, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #27
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bi, ptr %1, align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.f:                                             ; preds = %_ZNSolsEd.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEd.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZNSolsEd.exit7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.noexc15, %.noexc14, %bb.e, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %2, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.v
  br i1 %i.bs, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.aj, %bb.c ], [ %i.br, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %i.bq, %bb.g ]
  %i.bt = load i64, ptr %i.v, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bu) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %i.bq, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bp, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC18GetContoursInPlaneERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdE10aiVector3tIdEdS9_RS9_Rb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef readonly byval(%class.aiMatrix3x3t) align 8 captures(none) %2, ptr noundef readonly byval(%class.aiVector3t) align 8 captures(none) %3, double noundef %4, ptr noundef readonly byval(%class.aiVector3t) align 8 captures(none) %5, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 1 captures(none) dereferenceable(1) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.std::vector.5", align 16    ; 8 uses
  %9 = alloca [1 x %"class.std::vector.5"], align 16 ; 11 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN6Assimp3IFC19GetContourInPlane2DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdE10aiVector3tIdEdS9_RS9_RbSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%class.aiMatrix3x3t) align 8 %2, ptr noundef nonnull byval(%class.aiVector3t) align 8 %3, double noundef %4, ptr noundef nonnull byval(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.k = load i8, ptr %i.a, align 1, !range !143, !noundef !144
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.m = load <2 x ptr>, ptr %8, align 16
  store <2 x ptr> %i.m, ptr %9, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = load ptr, ptr %i.o, align 16
  store ptr %i.p, ptr %i.n, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt12_Vector_baseISt6vectorI10aiVector2tIdESaIS2_EESaIS4_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseISt6vectorI10aiVector2tIdESaIS2_EESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.q, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.u, align 8
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt6vectorI10aiVector2tIdESaIS2_EEPS4_ET0_T_S9_S8_(ptr noundef nonnull %9, ptr noundef nonnull %i.s, ptr noundef nonnull %i.q)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorI10aiVector2tIdESaIS2_EESaIS4_EE11_M_allocateEm.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 24) #26
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorI10aiVector2tIdESaIS2_EESaIS4_EE11_M_allocateEm.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.x, align 8
  %i.y = load ptr, ptr %9, align 16               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %.thread18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aa = load ptr, ptr %i.z, align 16
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %.thread18

.thread18:                                        ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit13

.body:                                            ; preds = %.thread, %bb.d
  %i.ae = phi { ptr, i32 } [ %i.r, %.thread ], [ %i.w, %bb.d ]
  %i.af = load ptr, ptr %9, align 16              ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit9

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit9:   ; preds = %.body, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.ae

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %8, align 16              ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = load ptr, ptr %i.al, align 16
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %.pre to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ap) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit13

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit13:  ; preds = %.thread18, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd(ptr dead_on_unwind writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%class.aiMatrix3x3t) align 8 %2, double noundef %4)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit13
  ret void
}

declare noundef zeroext i1 @_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN3p2t5PointC1Edd(ptr noundef nonnull align 8 dereferenceable(40), double noundef, double noundef) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZN3p2t3CDTC1ERKSt6vectorIPNS_5PointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

declare void @_ZN3p2t3CDT7AddHoleERKSt6vectorIPNS_5PointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN3p2t3CDT11TriangulateEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN3p2t3CDT12GetTrianglesEv(ptr dead_on_unwind writable sret(%"class.std::vector.147") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IPN3p2t5PointESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN3p2t5PointESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIPN3p2t5PointESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN3p2t5PointESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIPN3p2t5PointESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIPN3p2t5PointESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !293

_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIPN3p2t5PointESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIPN3p2t5PointESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN3p2t5PointESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEEvNSA_IPS5_S7_EEDpOT_
define linkonce_odr hidden void @_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.s = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.c, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #24
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.i

_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
          to label %.noexc5.i unwind label %bb.g  ; 4 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.x, ptr %i.q, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = icmp samesign ugt i64 %i.t, 8
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !298

bb.d:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %.sroa.01.0.copyload.i, i64 %i.t, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %.noexc5.i
  %i.ab = icmp eq i64 %i.t, 8
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %.sroa.01.0.copyload.i, align 8
  store ptr %i.ac, ptr %i.x, align 8
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i, %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = load ptr, ptr %i.q, align 8             ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i6.i, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread.i.i
  %i.ak = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.v, %.thread.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %bb.i ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %bb.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !536, !noalias !533
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !alias.scope !533, !noalias !536
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !536, !noalias !533
  store ptr %i.ap, ptr %i.an, align 8, !alias.scope !533, !noalias !536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !536, !noalias !533
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !538

_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.i ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i31 ], [ %i.as, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i33 = phi ptr [ %i.ax, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i33, align 8, !alias.scope !542, !noalias !539
  store <2 x ptr> %i.at, ptr %.012.i.i.i32, align 8, !alias.scope !539, !noalias !542
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !542, !noalias !539
  store ptr %i.aw, ptr %i.au, align 8, !alias.scope !539, !noalias !542
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i33, i8 0, i64 24, i1 false), !alias.scope !542, !noalias !539
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 24 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !538

_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %.lr.ph.i.i.i31 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #26
  br label %_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.j
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8
  ret void

bb.k:                                             ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.g
  %i.bf = extractvalue { ptr, i32 } %i.ad, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.be

bb.m:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #28
  unreachable

bb.n:                                             ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %5 = sdiv exact i64 %i.f, 104                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i, %5        ; 2 uses
  %7 = icmp ult i64 %6, %5
  %8 = tail call i64 @llvm.umin.i64(i64 %6, i64 88686269585142075)
  %9 = select i1 %7, i64 88686269585142075, i64 %8 ; 4 uses
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %10, %i.e
  %.not.i = icmp eq i64 %9, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit, label %12

12:                                               ; preds = %_ZNKSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12_M_check_lenEmPKc.exit
  %13 = mul nuw nsw i64 %9, 104
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #25
  br label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12_M_check_lenEmPKc.exit, %12
  %15 = phi ptr [ %14, %12 ], [ null, %_ZNKSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 %11 ; 15 uses
  %i.i = load i8, ptr %4, align 1, !range !143, !noundef !144
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %2, align 8                ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %.noexc30.thread, label %bb.c

.noexc30.thread:                                  ; preds = %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit
  %i.s = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !233

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %.noexc30 unwind label %bb.h   ; 4 uses

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %i.h, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.v, ptr %i.w, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc30, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc30 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %.noexc30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !256

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc30.thread
  %i.z = phi ptr [ %i.p, %.noexc30.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc30.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i8 %i.i, ptr %i.ag, align 8
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %15)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 2 uses
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ai)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.as
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aq) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i:     ; preds = %bb.d, %.lr.ph.i.i
  %i.au = load ptr, ptr %.05.i.i, align 8         ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i: ; preds = %bb.e, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !262

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #26
  br label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit, %bb.f
  store ptr %15, ptr %0, align 8
  store ptr %i.aj, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %15, i64 %9
  store ptr %i.bf, ptr %i.bb, align 8
  ret void

bb.g:                                             ; preds = %.loopexit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #27 ; 0 uses
  tail call void @_ZN6Assimp3IFC22ProjectedWindowContourD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.h) #27
  br label %bb.j

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %.0.ph = phi ptr [ %15, %.noexc.i.i.i ], [ %15, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_(ptr noundef nonnull %15, ptr noundef nonnull %.0.ph)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.h
  %16 = mul nuw nsw i64 %9, 104
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %16) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.023 = phi ptr [ %i.af, %bb.e ], [ %2, %bb.a ] ; 11 uses
  %.01222 = phi ptr [ %i.ae, %bb.e ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01222, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %.01222, align 8           ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %.023, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !233

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.023, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.023, i64 16
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %.01222, align 8           ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !256

_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc13 ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.01222, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.023, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %.01222, i64 56
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %.023, align 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %.body

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.01222, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !range !143, !noundef !144
  store i8 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01222, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.023, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !544

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ag = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.af, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ai

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n                   ; 5 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.p = add i64 %i.o, 63                         ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 2305843009213693944
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 4 uses
  %i.t = lshr i64 %i.p, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  %i.v = sdiv i64 %i.o, 64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = and i64 %i.o, -9223372036854775745
  %i.y = icmp ugt i64 %i.x, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.y, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.w, i64 %storemerge.idx.i.i.i.i
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 63
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8
end_hunk_13
