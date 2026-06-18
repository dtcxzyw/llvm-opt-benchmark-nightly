inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC13fillRectangleERK10aiVector2tIdES4_RSt6vectorIS2_SaIS2_EE:bb.a
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
define hidden void @_ZN6Assimp3IFC26ExtractVerticesFromClipperERKSt6vectorIN10ClipperLib8IntPointESaIS3_EERS1_I10aiVector2tIdESaIS9_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  br i1 %2, label %3, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread

3:                                                ; preds = %bb.b
  %.val11 = load ptr, ptr %1, align 8             ; 2 uses
  %.not10.not.i = icmp eq ptr %.val11, %i.h
  br i1 %.not10.not.i, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %3
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

_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread: ; preds = %bb.c, %3, %bb.b
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
define hidden void @_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 {
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
define hidden void @_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a
bb.ab:                                            ; preds = %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232, %bb.s
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc248, %.noexc247, %bb.w, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit245
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.il = load ptr, ptr %12, align 8              ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.dy
  br i1 %i.im, label %.body243, label %.body243.sink.split

.body243.sink.split:                              ; preds = %bb.ac, %bb.u
  %.sink996 = phi ptr [ %i.hl, %bb.u ], [ %i.il, %bb.ac ]
  %.pn154.ph = phi { ptr, i32 } [ %i.hk, %bb.u ], [ %i.ik, %bb.ac ]
  %i.in = load i64, ptr %i.dy, align 8
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %.sink996, i64 noundef %i.io) #26
  br label %.body243

.body243:                                         ; preds = %.body243.sink.split, %bb.ac, %bb.u
  %.pn154 = phi { ptr, i32 } [ %i.hk, %bb.u ], [ %i.ik, %bb.ac ], [ %.pn154.ph, %.body243.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  br label %bb.ad

bb.ad:                                            ; preds = %.body243, %bb.ab
  %.pn154.pn = phi { ptr, i32 } [ %.pn154, %.body243 ], [ %i.ij, %bb.ab ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn154.pn.pn = phi { ptr, i32 } [ %.pn154.pn, %bb.ad ], [ %i.ii, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.af:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit230
  %i.ip = load ptr, ptr %1, align 8
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.0111742 ; 3 uses
  %i.is = load double, ptr %i.ir, align 8, !noalias !360 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iu = load double, ptr %i.it, align 8, !noalias !360 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iw = load double, ptr %i.iv, align 8, !noalias !360 ; 3 uses
  %i.ix = fmul double %i.iu, %i.at
  %i.iy = call double @llvm.fmuladd.f64(double %i.ap, double %i.is, double %i.ix)
  %i.iz = call double @llvm.fmuladd.f64(double %i.ax, double %i.iw, double %i.iy) ; 2 uses
  %i.ja = fsub double %i.iz, %3
  %i.jb = call double @llvm.fabs.f64(double %i.ja)
  %i.jc = fcmp olt double %i.jb, f0x3EB0C6F7A0000000 ; 4 uses
  %.0118730 = add i64 %.0111742, 1                ; 2 uses
  %i.jd = icmp ult i64 %.0118730, %i.es
  br i1 %i.jd, label %.lr.ph738.preheader, label %._crit_edge

.lr.ph738.preheader:                              ; preds = %bb.af
  %.0114 = zext i1 %i.jc to i8
  %i.je = fmul double %i.t, %i.iu
  %i.jf = call double @llvm.fmuladd.f64(double %i.p, double %i.is, double %i.je)
  %i.jg = call double @llvm.fmuladd.f64(double %i.x, double %i.iw, double %i.jf) ; 2 uses
  %.sroa.0562.0 = select i1 %i.jc, double %i.jg, double 0.000000e+00
  %i.jh = fmul double %i.iu, %i.ag
  %i.ji = call double @llvm.fmuladd.f64(double %i.ac, double %i.is, double %i.jh)
  %i.jj = call double @llvm.fmuladd.f64(double %i.ak, double %i.iw, double %i.ji) ; 2 uses
  %.sroa.9564.0 = select i1 %i.jc, double %i.jj, double 0.000000e+00
  br label %.lr.ph738

._crit_edge.loopexit:                             ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265
  %i.jk = trunc nuw i8 %.3117 to i1
  br i1 %i.jk, label %bb.aw, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

._crit_edge:                                      ; preds = %bb.af
  br i1 %i.jc, label %bb.aw, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

.lr.ph738:                                        ; preds = %.lr.ph738.preheader, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265
  %.0118737 = phi i64 [ %.0118, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %.0118730, %.lr.ph738.preheader ] ; 2 uses
  %.1115736 = phi i8 [ %.3117, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %.0114, %.lr.ph738.preheader ] ; 2 uses
  %.sroa.0562.1735 = phi double [ %.sroa.0562.2, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %.sroa.0562.0, %.lr.ph738.preheader ] ; 6 uses
  %.sroa.9564.1734 = phi double [ %.sroa.9564.2, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %.sroa.9564.0, %.lr.ph738.preheader ] ; 6 uses
  %.sroa.12.0733 = phi double [ %i.kb, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %i.iz, %.lr.ph738.preheader ] ; 4 uses
  %.sroa.8560.0732 = phi double [ %i.jy, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %i.jj, %.lr.ph738.preheader ] ; 4 uses
  %.sroa.0559.0731 = phi double [ %i.jv, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265 ], [ %i.jg, %.lr.ph738.preheader ] ; 4 uses
  %i.jl = load ptr, ptr %1, align 8
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %.0118737 ; 3 uses
  %i.jo = load double, ptr %i.jn, align 8, !noalias !363 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load double, ptr %i.jp, align 8, !noalias !363 ; 3 uses
  %i.jr = fmul double %i.t, %i.jq
  %i.js = call double @llvm.fmuladd.f64(double %i.p, double %i.jo, double %i.jr)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.ju = load double, ptr %i.jt, align 8, !noalias !363 ; 3 uses
  %i.jv = call double @llvm.fmuladd.f64(double %i.x, double %i.ju, double %i.js) ; 3 uses
  %i.jw = fmul double %i.ag, %i.jq
  %i.jx = call double @llvm.fmuladd.f64(double %i.ac, double %i.jo, double %i.jw)
  %i.jy = call double @llvm.fmuladd.f64(double %i.ak, double %i.ju, double %i.jx) ; 3 uses
  %i.jz = fmul double %i.at, %i.jq
  %i.ka = call double @llvm.fmuladd.f64(double %i.ap, double %i.jo, double %i.jz)
  %i.kb = call double @llvm.fmuladd.f64(double %i.ax, double %i.ju, double %i.ka) ; 4 uses
  %i.kc = fsub double %i.kb, %3
  %i.kd = call double @llvm.fabs.f64(double %i.kc)
  %i.ke = fcmp olt double %i.kd, f0x3EB0C6F7A0000000
  br i1 %i.ke, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph738
  %i.kf = fcmp ogt double %i.kb, %3
  %i.kg = fcmp ule double %.sroa.12.0733, %3
  %.not = xor i1 %i.kg, %i.kf
  br i1 %.not, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kh = fsub double %i.jv, %.sroa.0559.0731
  %i.ki = fsub double %i.jy, %.sroa.8560.0732
  %i.kj = fsub double %i.kb, %.sroa.12.0733
  %i.kk = fsub double %3, %.sroa.12.0733
  %i.kl = fdiv double %i.kk, %i.kj                ; 2 uses
  %i.km = fmul double %i.kh, %i.kl
  %i.kn = fmul double %i.ki, %i.kl
  %i.ko = fadd double %.sroa.0559.0731, %i.km
  %i.kp = fadd double %.sroa.8560.0732, %i.kn
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph738, %bb.ah
  %.sroa.9543.0 = phi double [ %i.kp, %bb.ah ], [ %i.jy, %.lr.ph738 ] ; 5 uses
  %.sroa.0540.0 = phi double [ %i.ko, %bb.ah ], [ %i.jv, %.lr.ph738 ] ; 5 uses
  %i.kq = trunc nuw i8 %.1115736 to i1
  br i1 %i.kq, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kr = fsub double %.sroa.12.0733, %3
  %i.ks = call double @llvm.fabs.f64(double %i.kr)
  %i.kt = fcmp olt double %i.ks, f0x3EB0C6F7A0000000
  br i1 %i.kt, label %bb.ak, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store double %.sroa.0559.0731, ptr %13, align 8
  store double %.sroa.8560.0732, ptr %.sroa.9564.0..sroa_idx, align 8
  store double %.sroa.0540.0, ptr %i.do, align 8
  store double %.sroa.9543.0, ptr %.sroa.5529.0..sroa_idx, align 8
  invoke fastcc void @_ZN6Assimp3IFCL10logSegmentESt4pairI10aiVector2tIdES3_E(ptr noundef nonnull byval(%"struct.std::pair.3") align 8 %13)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ku = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.kv = load ptr, ptr %i.dq, align 8
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -32
  %.not.i = icmp eq ptr %i.ku, %i.kw
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.kx = load ptr, ptr %i.dp, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  store ptr %i.ky, ptr %i.dp, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit unwind label %bb.ao

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.ap:                                            ; preds = %bb.ai
  store double %.sroa.0562.1735, ptr %14, align 8
  store double %.sroa.9564.1734, ptr %.sroa.0518.sroa.7.0..sroa_idx, align 8
  store double %.sroa.0540.0, ptr %.sroa.7519.0..sroa_idx, align 8
  store double %.sroa.9543.0, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_ZN6Assimp3IFCL10logSegmentESt4pairI10aiVector2tIdES3_E(ptr noundef nonnull byval(%"struct.std::pair.3") align 8 %14)
          to label %bb.aq unwind label %.loopexit604

bb.aq:                                            ; preds = %bb.ap
  %i.la = load ptr, ptr %i.dp, align 8            ; 6 uses
  %i.lb = load ptr, ptr %i.dq, align 8
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -32
  %.not.i263 = icmp eq ptr %i.la, %i.lc
  br i1 %.not.i263, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store double %.sroa.0562.1735, ptr %i.la, align 8
  %.sroa.0518.sroa.7.0..sroa_idx568 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store double %.sroa.9564.1734, ptr %.sroa.0518.sroa.7.0..sroa_idx568, align 8
  %.sroa.7519.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store double %.sroa.0540.0, ptr %.sroa.7519.0..sroa_idx520, align 8
  %.sroa.8.0..sroa_idx524 = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  store double %.sroa.9543.0, ptr %.sroa.8.0..sroa_idx524, align 8
  %i.ld = load ptr, ptr %i.dp, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  store ptr %i.le, ptr %i.dp, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

bb.as:                                            ; preds = %bb.aq
  %i.lf = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.lg = load ptr, ptr %i.dt, align 8
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = ashr exact i64 %i.lj, 3
  %i.ll = icmp ne ptr %i.lf, null
  %.neg.i.i.i = sext i1 %i.ll to i64
  %i.lm = add nsw i64 %i.lk, %.neg.i.i.i
  %i.ln = shl nsw i64 %i.lm, 4
  %i.lo = load ptr, ptr %i.du, align 8
  %i.lp = ptrtoint ptr %i.la to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = ashr exact i64 %i.lr, 5
  %i.lt = add nsw i64 %i.ln, %i.ls
  %i.lu = load ptr, ptr %i.dv, align 8
  %i.lv = load ptr, ptr %i.dr, align 8
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = ashr exact i64 %i.ly, 5
  %i.ma = add nsw i64 %i.lt, %i.lz
  %i.mb = icmp eq i64 %i.ma, 288230376151711743
  br i1 %i.mb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.noexc409 unwind label %.loopexit.split-lp605

.noexc409:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.mc = load i64, ptr %i.dw, align 8
  %i.md = load ptr, ptr %8, align 8
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.lh, %i.me
  %i.mg = ashr exact i64 %i.mf, 3
  %i.mh = sub i64 %i.mc, %i.mg
  %i.mi = icmp ult i64 %i.mh, 2
  br i1 %i.mi, label %bb.av, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %8, i64 noundef 1, i1 noundef zeroext false)
          to label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i unwind label %.loopexit604

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %bb.av, %bb.au
  %i.mj = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc264 unwind label %.loopexit604

.noexc264:                                        ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %24 = load ptr, ptr %i.ds, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.mj, ptr %i.mk, align 8
  %i.ml = load ptr, ptr %i.dp, align 8            ; 4 uses
  store double %.sroa.0562.1735, ptr %i.ml, align 8
  %.sroa.0518.sroa.7.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store double %.sroa.9564.1734, ptr %.sroa.0518.sroa.7.0..sroa_idx570, align 8
  %.sroa.7519.0..sroa_idx522 = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store double %.sroa.0540.0, ptr %.sroa.7519.0..sroa_idx522, align 8
  %.sroa.8.0..sroa_idx526 = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  store double %.sroa.9543.0, ptr %.sroa.8.0..sroa_idx526, align 8
  %i.mm = load ptr, ptr %i.ds, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 2 uses
  store ptr %i.mn, ptr %i.ds, align 8
  %i.mo = load ptr, ptr %i.mn, align 8            ; 3 uses
  store ptr %i.mo, ptr %i.du, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 512
  store ptr %i.mp, ptr %i.dq, align 8
  store ptr %i.mo, ptr %i.dp, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265

.loopexit604:                                     ; preds = %bb.ap, %bb.av, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %lpad.loopexit606 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

.loopexit.split-lp605:                            ; preds = %bb.at
  %lpad.loopexit.split-lp607 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit265: ; preds = %bb.ar, %.noexc264, %bb.aj, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit, %bb.ag
  %.sroa.9564.2 = phi double [ %.sroa.9543.0, %bb.aj ], [ %.sroa.8560.0732, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.9564.1734, %bb.ag ], [ %.sroa.9564.1734, %.noexc264 ], [ %.sroa.9564.1734, %bb.ar ]
  %.sroa.0562.2 = phi double [ %.sroa.0540.0, %bb.aj ], [ %.sroa.0559.0731, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.0562.1735, %bb.ag ], [ %.sroa.0562.1735, %.noexc264 ], [ %.sroa.0562.1735, %bb.ar ]
  %.3117 = phi i8 [ 1, %bb.aj ], [ 0, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ], [ %.1115736, %bb.ag ], [ 0, %.noexc264 ], [ 0, %bb.ar ] ; 2 uses
  %.0118 = add nuw i64 %.0118737, 1               ; 2 uses
  %exitcond792.not = icmp eq i64 %.0118, %i.es
  br i1 %exitcond792.not, label %._crit_edge.loopexit, label %.lr.ph738, !llvm.loop !366

bb.aw:                                            ; preds = %._crit_edge.loopexit, %._crit_edge
  %i.mq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc266 unwind label %bb.ay

.noexc266:                                        ; preds = %bb.aw
  br i1 %i.mq, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit, label %bb.ax

bb.ax:                                            ; preds = %.noexc266
  %i.mr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc267 unwind label %bb.ay

.noexc267:                                        ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ms = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc268 unwind label %bb.ay

.noexc268:                                        ; preds = %.noexc267
  store ptr %i.ms, ptr %i.e, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA61_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(61) @.str.23)
          to label %.noexc269 unwind label %bb.ay

.noexc269:                                        ; preds = %.noexc268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit

bb.ay:                                            ; preds = %.noexc268, %.noexc267, %bb.ax, %bb.aw
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA61_KcEEEvDpOT_.exit: ; preds = %._crit_edge.loopexit, %._crit_edge, %.noexc266, %.noexc269, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit255
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0579.0741, i64 4 ; 2 uses
  %.not587.a = icmp eq ptr %i.mu, %i.db
  br i1 %.not587.a, label %._crit_edge744, label %bb.i

bb.az:                                            ; preds = %._crit_edge744
  %i.mv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.mw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull @.str.24, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271: ; preds = %bb.az
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 7 uses
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8            ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 6 uses
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = ashr exact i64 %i.nf, 3
  %i.nh = icmp ne ptr %i.na, null
  %.neg.i.i = sext i1 %i.nh to i64
  %i.ni = add nsw i64 %i.ng, %.neg.i.i
  %i.nj = shl nsw i64 %i.ni, 4
  %i.nk = load ptr, ptr %i.mx, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = ptrtoint ptr %i.nk to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = ashr exact i64 %i.np, 5
  %i.nr = add nsw i64 %i.nj, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = load ptr, ptr %i.my, align 8
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 5
  %i.nz = add nsw i64 %i.nr, %i.ny
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, i64 noundef %i.nz)
          to label %_ZNSolsEm.exit unwind label %bb.bf

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, ptr noundef nonnull @.str.25, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.oc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.oc, ptr %16, align 8, !alias.scope !373
  %i.od = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.od, align 8, !alias.scope !373
  store i8 0, ptr %i.oc, align 8, !alias.scope !373
  %i.oe = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !373 ; 3 uses
  %.not.i.not.i.i275 = icmp eq ptr %i.of, null
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !373 ; 2 uses
  %i.oi = icmp ugt ptr %i.of, %i.oh
  %.08.i.i.i276 = select i1 %i.oi, ptr %i.of, ptr %i.oh ; 2 uses
  %.not5.i.i277 = icmp eq ptr %.08.i.i.i276, null
  %.not.i.i278 = select i1 %.not.i.not.i.i275, i1 true, i1 %.not5.i.i277
  br i1 %.not.i.i278, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274
  %i.oj = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !373 ; 2 uses
  %i.ol = ptrtoint ptr %.08.i.i.i276 to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.ok, i64 noundef %i.on)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit284 unwind label %bb.bb ; 0 uses

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oq = load ptr, ptr %16, align 8, !alias.scope !373 ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.oc
  br i1 %i.or, label %.body282, label %.body282.sink.split

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274
  %i.os = getelementptr inbounds nuw i8, ptr %15, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.os)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit284 unwind label %bb.bb

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit284: ; preds = %bb.bc, %bb.ba
  %i.ot = load ptr, ptr %16, align 8
  store ptr %i.ot, ptr %i.l, align 8
  %i.ou = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc285 unwind label %bb.bg

.noexc285:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit284
  br i1 %i.ou, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit289, label %bb.bd

bb.bd:                                            ; preds = %.noexc285
  %i.ov = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc286 unwind label %bb.bg

.noexc286:                                        ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ow = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc287 unwind label %bb.bg

.noexc287:                                        ; preds = %.noexc286
  store ptr %i.ow, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ov, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc288 unwind label %bb.bg

.noexc288:                                        ; preds = %.noexc287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit289

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit289: ; preds = %.noexc288, %.noexc285
  %i.ox = load ptr, ptr %16, align 8              ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.oc
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit289
  %i.oz = load i64, ptr %i.oc, align 8
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJPKcEEEvDpOT_.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  %i.pb = load ptr, ptr %i.my, align 8, !noalias !374 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a
          cleanup
  br label %bb.fz

bb.by:                                            ; preds = %bb.bx
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.fz

bb.bz:                                            ; preds = %bb.bv, %bb.bw
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0483.0752, i64 16 ; 3 uses
  br i1 %i.sm, label %bb.ca, label %bb.ct

bb.ca:                                            ; preds = %bb.bz
  %i.tx = load ptr, ptr %i.qg, align 8
  %.not.i304 = icmp eq ptr %i.rz, %i.tx
  br i1 %.not.i304, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ty = getelementptr inbounds i8, ptr %i.rz, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, ptr noundef nonnull align 8 dereferenceable(16) %i.tw, i64 16, i1 false)
  %i.tz = load ptr, ptr %i.qb, align 8
  %i.ua = getelementptr inbounds i8, ptr %i.tz, i64 -16
  store ptr %i.ua, ptr %i.qb, align 8
  br label %bb.ff

bb.cc:                                            ; preds = %bb.ca
  %i.ub = load ptr, ptr %i.py, align 8            ; 10 uses
  %i.uc = ptrtoint ptr %i.se to i64
  %i.ud = ptrtoint ptr %i.ub to i64               ; 4 uses
  %i.ue = sub i64 %i.uc, %i.ud
  %i.uf = ashr exact i64 %i.ue, 3                 ; 3 uses
  %i.ug = icmp ne ptr %i.se, null
  %.neg.i.i.i.i = sext i1 %i.ug to i64
  %i.uh = add nsw i64 %i.uf, %.neg.i.i.i.i
  %i.ui = shl nsw i64 %i.uh, 5
  %i.uj = ptrtoint ptr %i.sb to i64
  %i.uk = ptrtoint ptr %i.sc to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = ashr exact i64 %i.ul, 4
  %i.un = load ptr, ptr %i.qe, align 8
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = ptrtoint ptr %i.rz to i64
  %i.uq = sub i64 %i.uo, %i.up
  %i.ur = ashr exact i64 %i.uq, 4
  %i.us = add nsw i64 %i.ur, %i.um
  %i.ut = add i64 %i.us, %i.ui
  %i.uu = icmp eq i64 %i.ut, 576460752303423487
  br i1 %i.uu, label %.invoke, label %bb.cd

.invoke:                                          ; preds = %bb.eo, %bb.ds, %bb.cw, %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.cont unwind label %.loopexit.split-lp595

.cont:                                            ; preds = %.invoke
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.uv = load ptr, ptr %17, align 8              ; 3 uses
  %i.uw = icmp eq ptr %i.ub, %i.uv
  br i1 %i.uw, label %bb.ce, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i

bb.ce:                                            ; preds = %bb.cd
  %i.ux = add nsw i64 %i.uf, 1                    ; 2 uses
  %i.uy = add nsw i64 %i.uf, 2                    ; 3 uses
  %i.uz = load i64, ptr %i.qf, align 8            ; 5 uses
  %i.va = shl nsw i64 %i.uy, 1
  %i.vb = icmp ugt i64 %i.uz, %i.va
  br i1 %i.vb, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %bb.ce
  %i.vc = sub i64 %i.uz, %i.uy
  %i.vd = lshr i64 %i.vc, 1
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 10 uses
  %i.vg = icmp ult ptr %i.vf, %i.ub
  %i.vh = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  br i1 %i.vg, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = sub i64 %i.vi, %i.ud                    ; 3 uses
  %i.vk = icmp sgt i64 %i.vj, 8
  br i1 %i.vk, label %bb.ch, label %bb.ci, !prof !118

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vf, ptr nonnull align 8 %i.ub, i64 %i.vj, i1 false)
  br label %.noexc306

bb.ci:                                            ; preds = %bb.cg
  %i.vl = icmp eq i64 %i.vj, 8
  br i1 %i.vl, label %bb.cj, label %.noexc306

bb.cj:                                            ; preds = %bb.ci
  %i.vm = load ptr, ptr %i.ub, align 8
  store ptr %i.vm, ptr %i.vf, align 8
  br label %.noexc306

bb.ck:                                            ; preds = %bb.cf
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.ux ; 2 uses
  %i.vo = ptrtoint ptr %i.vh to i64
  %i.vp = sub i64 %i.vo, %i.ud                    ; 3 uses
  %i.vq = ashr exact i64 %i.vp, 3                 ; 2 uses
  %i.vr = icmp sgt i64 %i.vq, 1
  br i1 %i.vr, label %bb.cl, label %bb.cm, !prof !118

bb.cl:                                            ; preds = %bb.ck
  %i.vs = sub nsw i64 0, %i.vq
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.vn, i64 %i.vs
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vt, ptr align 8 %i.ub, i64 %i.vp, i1 false)
  br label %.noexc306

bb.cm:                                            ; preds = %bb.ck
  %i.vu = icmp eq i64 %i.vp, 8
  br i1 %i.vu, label %bb.cn, label %.noexc306

bb.cn:                                            ; preds = %bb.cm
  %i.vv = getelementptr inbounds i8, ptr %i.vn, i64 -8
  %i.vw = load ptr, ptr %i.ub, align 8
  store ptr %i.vw, ptr %i.vv, align 8
  br label %.noexc306

bb.co:                                            ; preds = %bb.ce
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.uz, i64 1)
  %i.vx = add i64 %i.uz, 2
  %i.vy = add i64 %i.vx, %.sroa.speculated.i      ; 5 uses
  %i.vz = icmp ugt i64 %i.vy, 1152921504606846975
  br i1 %i.vz, label %bb.cp, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i, !prof !233

bb.cp:                                            ; preds = %bb.co
  %i.wa = icmp ugt i64 %i.vy, 2305843009213693951
  br i1 %i.wa, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

.noexc.i.i.invoke:                                ; preds = %bb.fb, %bb.ef, %bb.dj, %bb.cp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i.cont unwind label %.loopexit.split-lp595

.noexc.i.i.cont:                                  ; preds = %.noexc.i.i.invoke
  unreachable

.noexc3.i.i.invoke:                               ; preds = %bb.fb, %bb.ef, %bb.dj, %bb.cp
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i.cont unwind label %.loopexit.split-lp595

.noexc3.i.i.cont:                                 ; preds = %.noexc3.i.i.invoke
  unreachable

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.co
  %i.wb = shl nuw nsw i64 %i.vy, 3
  %i.wc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wb) #25
          to label %.noexc416 unwind label %.loopexit594 ; 2 uses

.noexc416:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i
  %i.wd = sub nsw i64 %i.vy, %i.uy
  %i.we = lshr i64 %i.wd, 1
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.wi = ptrtoint ptr %i.wh to i64
  %i.wj = sub i64 %i.wi, %i.ud                    ; 3 uses
  %i.wk = icmp sgt i64 %i.wj, 8
  br i1 %i.wk, label %bb.cq, label %bb.cr, !prof !118

bb.cq:                                            ; preds = %.noexc416
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wg, ptr align 8 %i.ub, i64 %i.wj, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

bb.cr:                                            ; preds = %.noexc416
  %i.wl = icmp eq i64 %i.wj, 8
  br i1 %i.wl, label %bb.cs, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

bb.cs:                                            ; preds = %bb.cr
  %i.wm = load ptr, ptr %i.ub, align 8
  store ptr %i.wm, ptr %i.wg, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i: ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.wn = shl i64 %i.uz, 3
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.wn) #26
  store ptr %i.wc, ptr %17, align 8
  store i64 %i.vy, ptr %i.qf, align 8
  br label %.noexc306

.noexc306:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %bb.ch
  %.0.i = phi ptr [ %i.wg, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i ], [ %i.vf, %bb.cj ], [ %i.vf, %bb.ch ], [ %i.vf, %bb.ci ], [ %i.vf, %bb.cl ], [ %i.vf, %bb.cm ], [ %i.vf, %bb.cn ] ; 4 uses
  store ptr %.0.i, ptr %i.py, align 8
  %i.wo = load ptr, ptr %.0.i, align 8            ; 2 uses
  store ptr %i.wo, ptr %i.qg, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 512
  store ptr %i.wp, ptr %i.qe, align 8
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ux
  %i.wr = getelementptr inbounds i8, ptr %i.wq, i64 -8 ; 2 uses
  store ptr %i.wr, ptr %i.pz, align 8
  %i.ws = load ptr, ptr %i.wr, align 8            ; 2 uses
  store ptr %i.ws, ptr %i.qa, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 512
  store ptr %i.wt, ptr %i.qd, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i

_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i: ; preds = %.noexc306, %bb.cd
  %i.wu = phi ptr [ %.0.i, %.noexc306 ], [ %i.ub, %bb.cd ]
  %i.wv = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc307 unwind label %.loopexit594

.noexc307:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i
  %i.ww = getelementptr inbounds i8, ptr %i.wu, i64 -8
  store ptr %i.wv, ptr %i.ww, align 8
  %i.wx = load ptr, ptr %i.py, align 8
  %i.wy = getelementptr inbounds i8, ptr %i.wx, i64 -8 ; 2 uses
  store ptr %i.wy, ptr %i.py, align 8
  %i.wz = load ptr, ptr %i.wy, align 8            ; 3 uses
  store ptr %i.wz, ptr %i.qg, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 512
  store ptr %i.xa, ptr %i.qe, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 496 ; 2 uses
  store ptr %i.xb, ptr %i.qb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, ptr noundef nonnull align 8 dereferenceable(16) %i.tw, i64 16, i1 false)
  br label %bb.ff

bb.ct:                                            ; preds = %bb.bz
  %i.xc = load <2 x double>, ptr %i.tw, align 8   ; 2 uses
  %i.xd = fsub <2 x double> %i.xc, %i.sa
  %i.xe = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.xd)
  %i.xf = fcmp olt <2 x double> %i.xe, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.xg = extractelement <2 x i1> %i.xf, i64 0
  %i.xh = extractelement <2 x i1> %i.xf, i64 1
  %i.xi = select i1 %i.xg, i1 %i.xh, i1 false
  br i1 %i.xi, label %bb.cu, label %bb.dn

bb.cu:                                            ; preds = %bb.ct
  %i.xj = load ptr, ptr %i.qg, align 8
  %.not.i308 = icmp eq ptr %i.rz, %i.xj
  br i1 %.not.i308, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xk = getelementptr inbounds i8, ptr %i.rz, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0483.0752, i64 16, i1 false)
  %i.xl = load ptr, ptr %i.qb, align 8
  %i.xm = getelementptr inbounds i8, ptr %i.xl, i64 -16
  store ptr %i.xm, ptr %i.qb, align 8
  br label %bb.ff

bb.cw:                                            ; preds = %bb.cu
  %i.xn = load ptr, ptr %i.py, align 8            ; 10 uses
  %i.xo = ptrtoint ptr %i.se to i64
  %i.xp = ptrtoint ptr %i.xn to i64               ; 4 uses
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = ashr exact i64 %i.xq, 3                 ; 3 uses
  %i.xs = icmp ne ptr %i.se, null
  %.neg.i.i.i.i309 = sext i1 %i.xs to i64
  %i.xt = add nsw i64 %i.xr, %.neg.i.i.i.i309
  %i.xu = shl nsw i64 %i.xt, 5
  %i.xv = ptrtoint ptr %i.sb to i64
  %i.xw = ptrtoint ptr %i.sc to i64
  %i.xx = sub i64 %i.xv, %i.xw
  %i.xy = ashr exact i64 %i.xx, 4
  %i.xz = load ptr, ptr %i.qe, align 8
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = ptrtoint ptr %i.rz to i64
  %i.yc = sub i64 %i.ya, %i.yb
  %i.yd = ashr exact i64 %i.yc, 4
  %i.ye = add nsw i64 %i.yd, %i.xy
  %i.yf = add i64 %i.ye, %i.xu
  %i.yg = icmp eq i64 %i.yf, 576460752303423487
  br i1 %i.yg, label %.invoke, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.yh = load ptr, ptr %17, align 8              ; 3 uses
  %i.yi = icmp eq ptr %i.xn, %i.yh
  br i1 %i.yi, label %bb.cy, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310

bb.cy:                                            ; preds = %bb.cx
  %i.yj = add nsw i64 %i.xr, 1                    ; 2 uses
  %i.yk = add nsw i64 %i.xr, 2                    ; 3 uses
  %i.yl = load i64, ptr %i.qf, align 8            ; 5 uses
  %i.ym = shl nsw i64 %i.yk, 1
  %i.yn = icmp ugt i64 %i.yl, %i.ym
  br i1 %i.yn, label %bb.cz, label %bb.di

bb.cz:                                            ; preds = %bb.cy
  %i.yo = sub i64 %i.yl, %i.yk
  %i.yp = lshr i64 %i.yo, 1
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %i.yp
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 10 uses
  %i.ys = icmp ult ptr %i.yr, %i.xn
  %i.yt = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  br i1 %i.ys, label %bb.da, label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.yu = ptrtoint ptr %i.yt to i64
  %i.yv = sub i64 %i.yu, %i.xp                    ; 3 uses
  %i.yw = icmp sgt i64 %i.yv, 8
  br i1 %i.yw, label %bb.db, label %bb.dc, !prof !118

bb.db:                                            ; preds = %bb.da
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yr, ptr nonnull align 8 %i.xn, i64 %i.yv, i1 false)
  br label %.noexc313.a

bb.dc:                                            ; preds = %bb.da
  %i.yx = icmp eq i64 %i.yv, 8
  br i1 %i.yx, label %bb.dd, label %.noexc313.a

bb.dd:                                            ; preds = %bb.dc
  %i.yy = load ptr, ptr %i.xn, align 8
  store ptr %i.yy, ptr %i.yr, align 8
  br label %.noexc313.a

bb.de:                                            ; preds = %bb.cz
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.yj ; 2 uses
  %i.za = ptrtoint ptr %i.yt to i64
  %i.zb = sub i64 %i.za, %i.xp                    ; 3 uses
  %i.zc = ashr exact i64 %i.zb, 3                 ; 2 uses
  %i.zd = icmp sgt i64 %i.zc, 1
  br i1 %i.zd, label %bb.df, label %bb.dg, !prof !118

bb.df:                                            ; preds = %bb.de
  %i.ze = sub nsw i64 0, %i.zc
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.yz, i64 %i.ze
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zf, ptr align 8 %i.xn, i64 %i.zb, i1 false)
  br label %.noexc313.a

bb.dg:                                            ; preds = %bb.de
  %i.zg = icmp eq i64 %i.zb, 8
  br i1 %i.zg, label %bb.dh, label %.noexc313.a

bb.dh:                                            ; preds = %bb.dg
  %i.zh = getelementptr inbounds i8, ptr %i.yz, i64 -8
  %i.zi = load ptr, ptr %i.xn, align 8
  store ptr %i.zi, ptr %i.zh, align 8
  br label %.noexc313.a

bb.di:                                            ; preds = %bb.cy
  %.sroa.speculated.i417 = call i64 @llvm.umax.i64(i64 %i.yl, i64 1)
  %i.zj = add i64 %i.yl, 2
  %i.zk = add i64 %i.zj, %.sroa.speculated.i417   ; 5 uses
  %i.zl = icmp ugt i64 %i.zk, 1152921504606846975
  br i1 %i.zl, label %bb.dj, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i418, !prof !233

bb.dj:                                            ; preds = %bb.di
  %i.zm = icmp ugt i64 %i.zk, 2305843009213693951
  br i1 %i.zm, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i418: ; preds = %bb.di
  %i.zn = shl nuw nsw i64 %i.zk, 3
  %i.zo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zn) #25
          to label %.noexc425 unwind label %.loopexit594 ; 2 uses

.noexc425:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i418
  %i.zp = sub nsw i64 %i.zk, %i.yk
  %i.zq = lshr i64 %i.zp, 1
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = sub i64 %i.zu, %i.xp                    ; 3 uses
  %i.zw = icmp sgt i64 %i.zv, 8
  br i1 %i.zw, label %bb.dk, label %bb.dl, !prof !118

bb.dk:                                            ; preds = %.noexc425
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zs, ptr align 8 %i.xn, i64 %i.zv, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i419

bb.dl:                                            ; preds = %.noexc425
  %i.zx = icmp eq i64 %i.zv, 8
  br i1 %i.zx, label %bb.dm, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i419

bb.dm:                                            ; preds = %bb.dl
  %i.zy = load ptr, ptr %i.xn, align 8
  store ptr %i.zy, ptr %i.zs, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i419

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i419: ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.zz = shl i64 %i.yl, 3
  call void @_ZdlPvm(ptr noundef %i.yh, i64 noundef %i.zz) #26
  store ptr %i.zo, ptr %17, align 8
  store i64 %i.zk, ptr %i.qf, align 8
  br label %.noexc313.a

.noexc313.a:                                      ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i419, %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.dc, %bb.db
  %.0.i420 = phi ptr [ %i.zs, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i419 ], [ %i.yr, %bb.dd ], [ %i.yr, %bb.db ], [ %i.yr, %bb.dc ], [ %i.yr, %bb.df ], [ %i.yr, %bb.dg ], [ %i.yr, %bb.dh ] ; 4 uses
  store ptr %.0.i420, ptr %i.py, align 8
  %i.aaa = load ptr, ptr %.0.i420, align 8        ; 2 uses
  store ptr %i.aaa, ptr %i.qg, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 512
  store ptr %i.aab, ptr %i.qe, align 8
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %.0.i420, i64 %i.yj
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 -8 ; 2 uses
  store ptr %i.aad, ptr %i.pz, align 8
  %i.aae = load ptr, ptr %i.aad, align 8          ; 2 uses
  store ptr %i.aae, ptr %i.qa, align 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 512
  store ptr %i.aaf, ptr %i.qd, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310

_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310: ; preds = %.noexc313.a, %bb.cx
  %i.aag = phi ptr [ %.0.i420, %.noexc313.a ], [ %i.xn, %bb.cx ]
  %i.aah = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc314 unwind label %.loopexit594

.noexc314:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310
  %i.aai = getelementptr inbounds i8, ptr %i.aag, i64 -8
  store ptr %i.aah, ptr %i.aai, align 8
  %i.aaj = load ptr, ptr %i.py, align 8
  %i.aak = getelementptr inbounds i8, ptr %i.aaj, i64 -8 ; 2 uses
  store ptr %i.aak, ptr %i.py, align 8
  %i.aal = load ptr, ptr %i.aak, align 8          ; 3 uses
  store ptr %i.aal, ptr %i.qg, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 512
  store ptr %i.aam, ptr %i.qe, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aal, i64 496 ; 2 uses
  store ptr %i.aan, ptr %i.qb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aan, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0483.0752, i64 16, i1 false)
  br label %bb.ff

bb.dn:                                            ; preds = %bb.ct
  br i1 %i.sd, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aao = load ptr, ptr %i.sf, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 512
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.aaq = phi ptr [ %i.aap, %bb.do ], [ %i.sb, %bb.dn ]
  %i.aar = getelementptr inbounds i8, ptr %i.aaq, i64 -16
  %i.aas = load <2 x double>, ptr %i.aar, align 8
  %i.aat = fsub <2 x double> %i.sg, %i.aas
  %i.aau = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aat)
  %i.aav = fcmp olt <2 x double> %i.aau, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.aaw = extractelement <2 x i1> %i.aav, i64 0
  %i.aax = extractelement <2 x i1> %i.aav, i64 1
  %i.aay = select i1 %i.aaw, i1 %i.aax, i1 false
  br i1 %i.aay, label %bb.dq, label %bb.ej

bb.dq:                                            ; preds = %bb.dp
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0483.0752, i64 16 ; 2 uses
  %i.aba = load ptr, ptr %i.qd, align 8
  %i.abb = getelementptr inbounds i8, ptr %i.aba, i64 -16
  %.not.i317 = icmp eq ptr %i.sb, %i.abb
  br i1 %.not.i317, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, ptr noundef nonnull align 8 dereferenceable(16) %i.aaz, i64 16, i1 false)
  %i.abc = load ptr, ptr %i.qc, align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  store ptr %i.abd, ptr %i.qc, align 8
  br label %bb.ff

bb.ds:                                            ; preds = %bb.dq
  %i.abe = load ptr, ptr %i.py, align 8           ; 8 uses
  %i.abf = ptrtoint ptr %i.se to i64              ; 2 uses
  %i.abg = ptrtoint ptr %i.abe to i64             ; 4 uses
  %i.abh = sub i64 %i.abf, %i.abg
  %i.abi = ashr exact i64 %i.abh, 3               ; 3 uses
  %i.abj = icmp ne ptr %i.se, null
  %.neg.i.i.i427 = sext i1 %i.abj to i64
  %i.abk = add nsw i64 %i.abi, %.neg.i.i.i427
  %i.abl = shl nsw i64 %i.abk, 5
  %i.abm = ptrtoint ptr %i.sb to i64
  %i.abn = ptrtoint ptr %i.sc to i64
  %i.abo = sub i64 %i.abm, %i.abn
  %i.abp = ashr exact i64 %i.abo, 4
  %i.abq = load ptr, ptr %i.qe, align 8
  %i.abr = ptrtoint ptr %i.abq to i64
  %i.abs = ptrtoint ptr %i.rz to i64
  %i.abt = sub i64 %i.abr, %i.abs
  %i.abu = ashr exact i64 %i.abt, 4
  %i.abv = add nsw i64 %i.abu, %i.abp
  %i.abw = add i64 %i.abv, %i.abl
  %i.abx = icmp eq i64 %i.abw, 576460752303423487
  br i1 %i.abx, label %.invoke, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aby = load i64, ptr %i.qf, align 8           ; 6 uses
  %i.abz = load ptr, ptr %17, align 8             ; 3 uses
  %i.aca = ptrtoint ptr %i.abz to i64
  %i.acb = sub i64 %i.abf, %i.aca
  %i.acc = ashr exact i64 %i.acb, 3
  %i.acd = sub i64 %i.aby, %i.acc
  %i.ace = icmp ult i64 %i.acd, 2
  br i1 %i.ace, label %bb.du, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.du:                                            ; preds = %bb.dt
  %i.acf = add nsw i64 %i.abi, 1                  ; 2 uses
  %i.acg = add nsw i64 %i.abi, 2                  ; 3 uses
  %i.ach = shl nsw i64 %i.acg, 1
  %i.aci = icmp ugt i64 %i.aby, %i.ach
  br i1 %i.aci, label %bb.dv, label %bb.ee

bb.dv:                                            ; preds = %bb.du
  %i.acj = sub i64 %i.aby, %i.acg
  %i.ack = lshr i64 %i.acj, 1
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.ack ; 10 uses
  %i.acm = icmp ult ptr %i.acl, %i.abe
  %i.acn = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  br i1 %i.acm, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  %i.aco = ptrtoint ptr %i.acn to i64
  %i.acp = sub i64 %i.aco, %i.abg                 ; 3 uses
  %i.acq = icmp sgt i64 %i.acp, 8
  br i1 %i.acq, label %bb.dx, label %bb.dy, !prof !118

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acl, ptr nonnull align 8 %i.abe, i64 %i.acp, i1 false)
  br label %.noexc430

bb.dy:                                            ; preds = %bb.dw
  %i.acr = icmp eq i64 %i.acp, 8
  br i1 %i.acr, label %bb.dz, label %.noexc430

bb.dz:                                            ; preds = %bb.dy
  %i.acs = load ptr, ptr %i.abe, align 8
  store ptr %i.acs, ptr %i.acl, align 8
  br label %.noexc430

bb.ea:                                            ; preds = %bb.dv
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %i.acf ; 2 uses
  %i.acu = ptrtoint ptr %i.acn to i64
  %i.acv = sub i64 %i.acu, %i.abg                 ; 3 uses
  %i.acw = ashr exact i64 %i.acv, 3               ; 2 uses
  %i.acx = icmp sgt i64 %i.acw, 1
  br i1 %i.acx, label %bb.eb, label %bb.ec, !prof !118

bb.eb:                                            ; preds = %bb.ea
  %i.acy = sub nsw i64 0, %i.acw
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.act, i64 %i.acy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acz, ptr align 8 %i.abe, i64 %i.acv, i1 false)
  br label %.noexc430

bb.ec:                                            ; preds = %bb.ea
  %i.ada = icmp eq i64 %i.acv, 8
  br i1 %i.ada, label %bb.ed, label %.noexc430

bb.ed:                                            ; preds = %bb.ec
  %i.adb = getelementptr inbounds i8, ptr %i.act, i64 -8
  %i.adc = load ptr, ptr %i.abe, align 8
  store ptr %i.adc, ptr %i.adb, align 8
  br label %.noexc430

bb.ee:                                            ; preds = %bb.du
  %.sroa.speculated.i439 = call i64 @llvm.umax.i64(i64 %i.aby, i64 1)
  %i.add = add i64 %i.aby, 2
  %i.ade = add i64 %i.add, %.sroa.speculated.i439 ; 5 uses
  %i.adf = icmp ugt i64 %i.ade, 1152921504606846975
  br i1 %i.adf, label %bb.ef, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i440, !prof !233

bb.ef:                                            ; preds = %bb.ee
  %i.adg = icmp ugt i64 %i.ade, 2305843009213693951
  br i1 %i.adg, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i440: ; preds = %bb.ee
  %i.adh = shl nuw nsw i64 %i.ade, 3
  %i.adi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adh) #25
          to label %.noexc447 unwind label %.loopexit594 ; 2 uses

.noexc447:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i440
  %i.adj = sub nsw i64 %i.ade, %i.acg
  %i.adk = lshr i64 %i.adj, 1
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.adk ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.adn = ptrtoint ptr %i.adm to i64
  %i.ado = sub i64 %i.adn, %i.abg                 ; 3 uses
  %i.adp = icmp sgt i64 %i.ado, 8
  br i1 %i.adp, label %bb.eg, label %bb.eh, !prof !118

bb.eg:                                            ; preds = %.noexc447
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adl, ptr align 8 %i.abe, i64 %i.ado, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i441

bb.eh:                                            ; preds = %.noexc447
  %i.adq = icmp eq i64 %i.ado, 8
  br i1 %i.adq, label %bb.ei, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i441

bb.ei:                                            ; preds = %bb.eh
  %i.adr = load ptr, ptr %i.abe, align 8
  store ptr %i.adr, ptr %i.adl, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i441

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i441: ; preds = %bb.ei, %bb.eh, %bb.eg
  %i.ads = shl i64 %i.aby, 3
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.ads) #26
  store ptr %i.adi, ptr %17, align 8
  store i64 %i.ade, ptr %i.qf, align 8
  br label %.noexc430

.noexc430:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i441, %bb.ed, %bb.ec, %bb.eb, %bb.dz, %bb.dy, %bb.dx
  %.0.i442 = phi ptr [ %i.adl, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i441 ], [ %i.acl, %bb.dz ], [ %i.acl, %bb.dx ], [ %i.acl, %bb.dy ], [ %i.acl, %bb.eb ], [ %i.acl, %bb.ec ], [ %i.acl, %bb.ed ] ; 3 uses
  store ptr %.0.i442, ptr %i.py, align 8
  %i.adt = load ptr, ptr %.0.i442, align 8        ; 2 uses
  store ptr %i.adt, ptr %i.qg, align 8
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 512
  store ptr %i.adu, ptr %i.qe, align 8
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %.0.i442, i64 %i.acf
  %i.adw = getelementptr inbounds i8, ptr %i.adv, i64 -8 ; 3 uses
  store ptr %i.adw, ptr %i.pz, align 8
  %i.adx = load ptr, ptr %i.adw, align 8          ; 2 uses
  store ptr %i.adx, ptr %i.qa, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 512
  store ptr %i.ady, ptr %i.qd, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i

_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %.noexc430, %bb.dt
  %i.adz = phi ptr [ %i.adw, %.noexc430 ], [ %i.se, %bb.dt ]
  %i.aea = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc318 unwind label %.loopexit594

.noexc318:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store ptr %i.aea, ptr %i.aeb, align 8
  %i.aec = load ptr, ptr %i.qc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aec, ptr noundef nonnull align 8 dereferenceable(16) %i.aaz, i64 16, i1 false)
  %i.aed = load ptr, ptr %i.pz, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8 ; 2 uses
  store ptr %i.aee, ptr %i.pz, align 8
  %i.aef = load ptr, ptr %i.aee, align 8          ; 3 uses
  store ptr %i.aef, ptr %i.qa, align 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 512
  store ptr %i.aeg, ptr %i.qd, align 8
  store ptr %i.aef, ptr %i.qc, align 8
  br label %bb.ff

bb.ej:                                            ; preds = %bb.dp
  br i1 %i.sd, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aeh = load ptr, ptr %i.sf, align 8
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 512
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aej = phi ptr [ %i.aei, %bb.ek ], [ %i.sb, %bb.ej ]
  %i.aek = getelementptr inbounds i8, ptr %i.aej, i64 -16
  %i.ael = load <2 x double>, ptr %i.aek, align 8
  %i.aem = fsub <2 x double> %i.xc, %i.ael
  %i.aen = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aem)
  %i.aeo = fcmp olt <2 x double> %i.aen, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.aep = extractelement <2 x i1> %i.aeo, i64 0
  %i.aeq = extractelement <2 x i1> %i.aeo, i64 1
  %i.aer = select i1 %i.aep, i1 %i.aeq, i1 false
  br i1 %i.aer, label %bb.em, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit

bb.em:                                            ; preds = %bb.el
  %i.aes = load ptr, ptr %i.qd, align 8
  %i.aet = getelementptr inbounds i8, ptr %i.aes, i64 -16
  %.not.i320 = icmp eq ptr %i.sb, %i.aet
  br i1 %.not.i320, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0483.0752, i64 16, i1 false)
  %i.aeu = load ptr, ptr %i.qc, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  store ptr %i.aev, ptr %i.qc, align 8
  br label %bb.ff

bb.eo:                                            ; preds = %bb.em
  %i.aew = load ptr, ptr %i.py, align 8           ; 8 uses
  %i.aex = ptrtoint ptr %i.se to i64              ; 2 uses
  %i.aey = ptrtoint ptr %i.aew to i64             ; 4 uses
  %i.aez = sub i64 %i.aex, %i.aey
  %i.afa = ashr exact i64 %i.aez, 3               ; 3 uses
  %i.afb = icmp ne ptr %i.se, null
  %.neg.i.i.i432 = sext i1 %i.afb to i64
  %i.afc = add nsw i64 %i.afa, %.neg.i.i.i432
  %i.afd = shl nsw i64 %i.afc, 5
  %i.afe = ptrtoint ptr %i.sb to i64
  %i.aff = ptrtoint ptr %i.sc to i64
  %i.afg = sub i64 %i.afe, %i.aff
  %i.afh = ashr exact i64 %i.afg, 4
  %i.afi = load ptr, ptr %i.qe, align 8
  %i.afj = ptrtoint ptr %i.afi to i64
  %i.afk = ptrtoint ptr %i.rz to i64
  %i.afl = sub i64 %i.afj, %i.afk
  %i.afm = ashr exact i64 %i.afl, 4
  %i.afn = add nsw i64 %i.afm, %i.afh
  %i.afo = add i64 %i.afn, %i.afd
  %i.afp = icmp eq i64 %i.afo, 576460752303423487
  br i1 %i.afp, label %.invoke, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afq = load i64, ptr %i.qf, align 8           ; 6 uses
  %i.afr = load ptr, ptr %17, align 8             ; 3 uses
  %i.afs = ptrtoint ptr %i.afr to i64
  %i.aft = sub i64 %i.aex, %i.afs
  %i.afu = ashr exact i64 %i.aft, 3
  %i.afv = sub i64 %i.afq, %i.afu
  %i.afw = icmp ult i64 %i.afv, 2
  br i1 %i.afw, label %bb.eq, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i433

bb.eq:                                            ; preds = %bb.ep
  %i.afx = add nsw i64 %i.afa, 1                  ; 2 uses
  %i.afy = add nsw i64 %i.afa, 2                  ; 3 uses
  %i.afz = shl nsw i64 %i.afy, 1
  %i.aga = icmp ugt i64 %i.afq, %i.afz
  br i1 %i.aga, label %bb.er, label %bb.fa

bb.er:                                            ; preds = %bb.eq
  %i.agb = sub i64 %i.afq, %i.afy
  %i.agc = lshr i64 %i.agb, 1
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.afr, i64 %i.agc ; 10 uses
  %i.age = icmp ult ptr %i.agd, %i.aew
  %i.agf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  br i1 %i.age, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.agg = ptrtoint ptr %i.agf to i64
  %i.agh = sub i64 %i.agg, %i.aey                 ; 3 uses
  %i.agi = icmp sgt i64 %i.agh, 8
  br i1 %i.agi, label %bb.et, label %bb.eu, !prof !118

bb.et:                                            ; preds = %bb.es
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.agd, ptr nonnull align 8 %i.aew, i64 %i.agh, i1 false)
  br label %.noexc436

bb.eu:                                            ; preds = %bb.es
  %i.agj = icmp eq i64 %i.agh, 8
  br i1 %i.agj, label %bb.ev, label %.noexc436

bb.ev:                                            ; preds = %bb.eu
  %i.agk = load ptr, ptr %i.aew, align 8
  store ptr %i.agk, ptr %i.agd, align 8
  br label %.noexc436

bb.ew:                                            ; preds = %bb.er
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.afx ; 2 uses
  %i.agm = ptrtoint ptr %i.agf to i64
  %i.agn = sub i64 %i.agm, %i.aey                 ; 3 uses
  %i.ago = ashr exact i64 %i.agn, 3               ; 2 uses
  %i.agp = icmp sgt i64 %i.ago, 1
  br i1 %i.agp, label %bb.ex, label %bb.ey, !prof !118

bb.ex:                                            ; preds = %bb.ew
  %i.agq = sub nsw i64 0, %i.ago
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.agl, i64 %i.agq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agr, ptr align 8 %i.aew, i64 %i.agn, i1 false)
  br label %.noexc436

bb.ey:                                            ; preds = %bb.ew
  %i.ags = icmp eq i64 %i.agn, 8
  br i1 %i.ags, label %bb.ez, label %.noexc436

bb.ez:                                            ; preds = %bb.ey
  %i.agt = getelementptr inbounds i8, ptr %i.agl, i64 -8
  %i.agu = load ptr, ptr %i.aew, align 8
  store ptr %i.agu, ptr %i.agt, align 8
  br label %.noexc436

bb.fa:                                            ; preds = %bb.eq
  %.sroa.speculated.i449 = call i64 @llvm.umax.i64(i64 %i.afq, i64 1)
  %i.agv = add i64 %i.afq, 2
  %i.agw = add i64 %i.agv, %.sroa.speculated.i449 ; 5 uses
  %i.agx = icmp ugt i64 %i.agw, 1152921504606846975
  br i1 %i.agx, label %bb.fb, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i450, !prof !233

bb.fb:                                            ; preds = %bb.fa
  %i.agy = icmp ugt i64 %i.agw, 2305843009213693951
  br i1 %i.agy, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i450: ; preds = %bb.fa
  %i.agz = shl nuw nsw i64 %i.agw, 3
  %i.aha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agz) #25
          to label %.noexc457 unwind label %.loopexit594 ; 2 uses

.noexc457:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i450
  %i.ahb = sub nsw i64 %i.agw, %i.afy
  %i.ahc = lshr i64 %i.ahb, 1
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %i.ahc ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.ahf = ptrtoint ptr %i.ahe to i64
  %i.ahg = sub i64 %i.ahf, %i.aey                 ; 3 uses
  %i.ahh = icmp sgt i64 %i.ahg, 8
  br i1 %i.ahh, label %bb.fc, label %bb.fd, !prof !118

bb.fc:                                            ; preds = %.noexc457
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahd, ptr align 8 %i.aew, i64 %i.ahg, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i451

bb.fd:                                            ; preds = %.noexc457
  %i.ahi = icmp eq i64 %i.ahg, 8
  br i1 %i.ahi, label %bb.fe, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i451

bb.fe:                                            ; preds = %bb.fd
  %i.ahj = load ptr, ptr %i.aew, align 8
  store ptr %i.ahj, ptr %i.ahd, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i451

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i451: ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.ahk = shl i64 %i.afq, 3
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.ahk) #26
  store ptr %i.aha, ptr %17, align 8
  store i64 %i.agw, ptr %i.qf, align 8
  br label %.noexc436

.noexc436:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i451, %bb.ez, %bb.ey, %bb.ex, %bb.ev, %bb.eu, %bb.et
  %.0.i452 = phi ptr [ %i.ahd, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i451 ], [ %i.agd, %bb.ev ], [ %i.agd, %bb.et ], [ %i.agd, %bb.eu ], [ %i.agd, %bb.ex ], [ %i.agd, %bb.ey ], [ %i.agd, %bb.ez ] ; 3 uses
  store ptr %.0.i452, ptr %i.py, align 8
  %i.ahl = load ptr, ptr %.0.i452, align 8        ; 2 uses
  store ptr %i.ahl, ptr %i.qg, align 8
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 512
  store ptr %i.ahm, ptr %i.qe, align 8
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %.0.i452, i64 %i.afx
  %i.aho = getelementptr inbounds i8, ptr %i.ahn, i64 -8 ; 3 uses
  store ptr %i.aho, ptr %i.pz, align 8
  %i.ahp = load ptr, ptr %i.aho, align 8          ; 2 uses
  store ptr %i.ahp, ptr %i.qa, align 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 512
  store ptr %i.ahq, ptr %i.qd, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i433

_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i433: ; preds = %.noexc436, %bb.ep
  %i.ahr = phi ptr [ %i.aho, %.noexc436 ], [ %i.se, %bb.ep ]
  %i.ahs = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc321 unwind label %.loopexit594

.noexc321:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i433
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  store ptr %i.ahs, ptr %i.aht, align 8
  %i.ahu = load ptr, ptr %i.qc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0483.0752, i64 16, i1 false)
  %i.ahv = load ptr, ptr %i.pz, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8 ; 2 uses
  store ptr %i.ahw, ptr %i.pz, align 8
  %i.ahx = load ptr, ptr %i.ahw, align 8          ; 3 uses
  store ptr %i.ahx, ptr %i.qa, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 512
  store ptr %i.ahy, ptr %i.qd, align 8
  store ptr %i.ahx, ptr %i.qc, align 8
  br label %bb.ff

bb.ff:                                            ; preds = %.noexc307, %.noexc314, %.noexc318, %bb.cb, %bb.cv, %bb.dr, %bb.en, %.noexc321
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  store ptr %.sroa.0483.0752, ptr %4, align 8, !alias.scope !396, !noalias !399
  %i.ahz = load ptr, ptr %.sroa.32.0754, align 8, !noalias !402 ; 2 uses
  store ptr %i.ahz, ptr %i.qh, align 8, !alias.scope !396, !noalias !399
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 512
  store ptr %i.aia, ptr %i.qi, align 8, !alias.scope !396, !noalias !399
  store ptr %.sroa.32.0754, ptr %i.qj, align 8, !alias.scope !396, !noalias !399
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %20, ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull dead_on_return %4)
          to label %.loopexit unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.fz

_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit: ; preds = %bb.el
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.0483.0752, i64 32 ; 2 uses
  %i.aid = icmp eq ptr %i.aic, %.sroa.27.0753
  br i1 %i.aid, label %bb.fh, label %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit

bb.fh:                                            ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.32.0754, i64 8 ; 2 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !noalias !403 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 512
  br label %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit

_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit: ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit, %bb.fh
  %.sroa.0483.1 = phi ptr [ %i.aif, %bb.fh ], [ %i.aic, %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit ] ; 2 uses
  %.sroa.27.1 = phi ptr [ %i.aig, %bb.fh ], [ %.sroa.27.0753, %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit ]
  %.sroa.32.1 = phi ptr [ %i.aie, %bb.fh ], [ %.sroa.32.0754, %_ZNSt5dequeI10aiVector2tIdESaIS1_EE10push_frontERKS1_.exit ]
  %.not590 = icmp eq ptr %.sroa.0483.1, %i.rv
  br i1 %.not590, label %.critedge, label %bb.bp, !llvm.loop !406

.loopexit:                                        ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.aih = load ptr, ptr %i.my, align 8, !noalias !383 ; 2 uses
  %i.aii = load ptr, ptr %i.mx, align 8, !noalias !380 ; 2 uses
  %.not590751 = icmp eq ptr %i.aih, %i.aii
  br i1 %.not590751, label %.critedge, label %.lr.ph756, !llvm.loop !407

.critedge:                                        ; preds = %.loopexit, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit
  %i.aij = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc325.a unwind label %bb.fj

.noexc325.a:                                      ; preds = %.critedge
  br i1 %i.aij, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit, label %bb.fi

bb.fi:                                            ; preds = %.noexc325.a
  %i.aik = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc326.a unwind label %bb.fj

.noexc326.a:                                      ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ail = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc327.a unwind label %bb.fj

.noexc327.a:                                      ; preds = %.noexc326.a
  store ptr %i.ail, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA44_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aik, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(44) @.str.26)
          to label %.noexc328 unwind label %bb.fj

.noexc328:                                        ; preds = %.noexc327.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit

bb.fj:                                            ; preds = %.noexc332.a, %.noexc331.a, %bb.fl, %bb.fk, %.noexc327.a, %.noexc326.a, %bb.fi, %.critedge
  %i.aim = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit: ; preds = %.split.us.thread, %.noexc328, %.noexc325.a
  %i.ain = load ptr, ptr %i.pz, align 8           ; 2 uses
  %i.aio = load ptr, ptr %i.py, align 8           ; 2 uses
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = ashr exact i64 %i.air, 3
  %i.ait = icmp ne ptr %i.ain, null
  %.neg.i.i329 = sext i1 %i.ait to i64
  %i.aiu = add nsw i64 %i.ais, %.neg.i.i329
  %i.aiv = shl nsw i64 %i.aiu, 5
  %i.aiw = load ptr, ptr %i.qc, align 8           ; 3 uses
  %i.aix = load ptr, ptr %i.qa, align 8
  %i.aiy = ptrtoint ptr %i.aiw to i64
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = ashr exact i64 %i.aja, 4
  %i.ajc = add nsw i64 %i.aiv, %i.ajb
  %i.ajd = load ptr, ptr %i.qe, align 8           ; 2 uses
  %i.aje = load ptr, ptr %i.qb, align 8           ; 3 uses
  %i.ajf = ptrtoint ptr %i.ajd to i64
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  %i.aji = ashr exact i64 %i.ajh, 4
  %i.ajj = add nsw i64 %i.ajc, %i.aji
  %i.ajk = icmp ult i64 %i.ajj, 3
  br i1 %i.ajk, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit
  %i.ajl = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc330.a unwind label %bb.fj

.noexc330.a:                                      ; preds = %bb.fk
  br i1 %i.ajl, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcEEEvDpOT_.exit, label %bb.fl

bb.fl:                                            ; preds = %.noexc330.a
  %i.ajm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc331.a unwind label %bb.fj

.noexc331.a:                                      ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ajn = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc332.a unwind label %bb.fj

.noexc332.a:                                      ; preds = %.noexc331.a
  store ptr %i.ajn, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA52_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ajm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(52) @.str.27)
          to label %.noexc333 unwind label %bb.fj

.noexc333:                                        ; preds = %.noexc332.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcEEEvDpOT_.exit

bb.fm:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %.not589758 = icmp eq ptr %i.aje, %i.aiw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  br i1 %.not589758, label %._crit_edge764, label %.lr.ph763

._crit_edge764:                                   ; preds = %_ZNSt15_Deque_iteratorI10aiVector2tIdERS1_PS1_EppEv.exit, %bb.fm
  %i.ajo = phi ptr [ null, %bb.fm ], [ %i.alc, %_ZNSt15_Deque_iteratorI10aiVector2tIdERS1_PS1_EppEv.exit ] ; 2 uses
  %i.ajp = load ptr, ptr %i.qp, align 8           ; 6 uses
  %i.ajq = load ptr, ptr %i.qq, align 8
  %.not.i334 = icmp eq ptr %i.ajp, %i.ajq
  br i1 %.not.i334, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %._crit_edge764
  %i.ajr = load ptr, ptr %21, align 8             ; 2 uses
  %i.ajs = ptrtoint ptr %i.ajo to i64
  %i.ajt = ptrtoint ptr %i.ajr to i64
  %i.aju = sub i64 %i.ajs, %i.ajt                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajp, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ajo, %i.ajr
  br i1 %.not.i.i.i.i.i, label %.noexc336, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ajv = icmp ugt i64 %i.aju, 9223372036854775792
  br i1 %i.ajv, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !233

.noexc.i.i.i:                                     ; preds = %bb.fo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc335.a unwind label %.loopexit.split-lp600

.noexc335.a:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.fo
  %i.ajw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aju) #25
          to label %.noexc336 unwind label %.loopexit599

.noexc336:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i, %bb.fn
  %i.ajx = phi ptr [ null, %bb.fn ], [ %i.ajw, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.ajx, ptr %i.ajp, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8 ; 2 uses
  store ptr %i.ajx, ptr %i.ajy, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.aju
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  store ptr %i.ajz, ptr %i.aka, align 8
  %i.akb = load ptr, ptr %21, align 8             ; 3 uses
  %i.akc = load ptr, ptr %i.qn, align 8           ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.akb, %i.akc
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc336, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ake, %.lr.ph.i.i.i.i.i.i ], [ %i.ajx, %.noexc336 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.akd, %.lr.ph.i.i.i.i.i.i ], [ %i.akb, %.noexc336 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@_ZN6Assimp6Logger4infoIJPKcS3_EEEvDpOT_:bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #27
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
  %3 = load ptr, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  store ptr %i.aq, ptr %i.o, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8
  store ptr %i.aq, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !118

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8
  store ptr %i.aa, ptr %i.t, align 8
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !118

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE15_M_allocate_mapEm.exit, !prof !233

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !118

bb.m:                                             ; preds = %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8
  store ptr %i.bb, ptr %i.av, align 8
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #26
  store ptr %i.aq, ptr %0, align 8
  store i64 %i.am, ptr %i.k, align 8
  br label %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt4pairI10aiVector2tIdES2_ES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8
  %i.be = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcRA61_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(61) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #27
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
end_hunk_3
