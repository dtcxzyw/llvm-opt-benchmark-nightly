Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRSE_SI_SI_EEOT_OT0_OT1_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !247, !range !82, !noundef !83
  store i8 %i.ah, ptr %i.af, align 2, !tbaa !247
  %i.ai = trunc nuw i8 %i.ae to i1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i
  %i.aj = shl i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.u, ptr nonnull align 16 dereferenceable(27) %i.v, i64 %i.aj, i1 false)
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.u, ptr noundef nonnull align 16 dereferenceable(27) %i.v, i64 16, i1 false), !tbaa.struct !256
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i: ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 0, ptr %i.ak, align 16, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.an = load i64, ptr %i.am, align 16, !tbaa !238 ; 2 uses
  store i64 %i.an, ptr %i.al, align 16, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !246, !range !82, !noundef !83
  store i8 %i.aq, ptr %i.ao, align 8, !tbaa !246
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 89
  %i.at = load i8, ptr %i.as, align 1, !tbaa !81, !range !82, !noundef !83 ; 2 uses
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 90
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !247, !range !82, !noundef !83
  store i8 %i.aw, ptr %i.au, align 2, !tbaa !247
  %i.ax = trunc nuw i8 %i.at to i1
  %i.ay = shl i64 %i.an, 3
  %.sink = select i1 %i.ax, i64 %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.ak, ptr nonnull align 16 dereferenceable(64) %i.a, i64 %.sink, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 0, ptr %i.az, align 16, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bd = load i64, ptr %i.bc, align 16, !tbaa !238 ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 16, !tbaa !238
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !246, !range !82, !noundef !83
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !246
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 121
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81, !range !82, !noundef !83 ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 122
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !247, !range !82, !noundef !83
  store i8 %i.bm, ptr %i.bk, align 2, !tbaa !247
  %i.bn = trunc nuw i8 %i.bj to i1
  %i.bo = shl i64 %i.bd, 3
  %.sink9 = select i1 %i.bn, i64 %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.az, ptr nonnull align 16 dereferenceable(27) %i.ba, i64 %.sink9, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i64 0, ptr %i.bp, align 16, !tbaa !91
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !238 ; 2 uses
  store i64 %i.bs, ptr %i.bq, align 16, !tbaa !238
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !246, !range !82, !noundef !83
  store i8 %i.bv, ptr %i.bt, align 8, !tbaa !246
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 153
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81, !range !82, !noundef !83 ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 154
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !247, !range !82, !noundef !83
  store i8 %i.cb, ptr %i.bz, align 2, !tbaa !247
  %i.cc = trunc nuw i8 %i.by to i1
  %i.cd = shl i64 %i.bs, 3
  %.sink10 = select i1 %i.cc, i64 %i.cd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.bp, ptr nonnull align 16 dereferenceable(64) %i.b, i64 %.sink10, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i64 0, ptr %i.ce, align 16, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ci = load i64, ptr %i.ch, align 16, !tbaa !238 ; 2 uses
  store i64 %i.ci, ptr %i.cg, align 16, !tbaa !238
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !246, !range !82, !noundef !83
  store i8 %i.cl, ptr %i.cj, align 8, !tbaa !246
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 185
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !81, !range !82, !noundef !83 ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 186
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !247, !range !82, !noundef !83
  store i8 %i.cr, ptr %i.cp, align 2, !tbaa !247
  %i.cs = trunc nuw i8 %i.co to i1
  br i1 %i.cs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ce, ptr noundef nonnull align 16 dereferenceable(27) %i.cf, i64 16, i1 false), !tbaa.struct !256
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  %i.ct = shl i64 %i.ci, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.ce, ptr nonnull align 16 dereferenceable(27) %i.cf, i64 %i.ct, i1 false)
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL14Surface_mesher22Uniform_size_criterionINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEE6is_badERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSD_IS5_NSE_IS5_NSF_IS5_NSG_IS5_NSH_ISO_EEEEEEEEEESP_SP_SP_EELb0EEEiERd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !231 ; 2 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !298    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !408  ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !171 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.n = sext i32 %i.f to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !95, !noalias !1386
  %i.q = load double, ptr %i.l, align 8, !tbaa !95, !noalias !1386
  %i.r = fsub double %i.p, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !95, !noalias !1386
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !95, !noalias !1386
  %i.w = fsub double %i.t, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !95, !noalias !1386
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !95, !noalias !1386
  %i.ab = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ac = fmul double %i.w, %i.w
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.ac)
  %i.ae = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ad)
  %i.af = fdiv double %i.b, %i.ae                 ; 2 uses
  %i.ag = fcmp olt double %i.af, 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.af, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.0 = phi i1 [ %i.ag, %bb.b ], [ false, %bb.a ]
  store double %.sink, ptr %2, align 8, !tbaa !95
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Surface_mesher22Uniform_size_criterionINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL14Surface_mesher22Aspect_ratio_criterionINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEE6is_badERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSD_IS5_NSE_IS5_NSF_IS5_NSG_IS5_NSH_ISO_EEEEEEEEEESP_SP_SP_EELb0EEEiERd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !233
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %2, align 8, !tbaa !95
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !298
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !408  ; 3 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !171
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.l = and i32 %i.f, 3
  %i.m = xor i32 %i.l, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %.sroa.0.0.copyload.i19 = load ptr, ptr %i.o, align 8, !tbaa !171 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i19, i64 16
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i19, i64 24
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i19, i64 32
  %.sroa.843.0.copyload = load double, ptr %.sroa.843.0..sroa_idx, align 8 ; 2 uses
  %i.q = add nsw i32 %i.f, 3
  %i.r = and i32 %i.q, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s
  %.sroa.0.0.copyload.i21 = load ptr, ptr %i.t, align 8, !tbaa !171 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i21, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i21, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i21, i64 32
  %.sroa.047.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %3 = load <3 x double>, ptr %.sroa.853.0..sroa_idx, align 8 ; 3 uses
  %i.v = load <2 x double>, ptr %i.p, align 8     ; 3 uses
  %.sroa.640.0.copyload = load double, ptr %.sroa.640.0..sroa_idx, align 8
  %i.w = load <2 x double>, ptr %i.u, align 8     ; 3 uses
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %i.x = shufflevector <2 x double> %i.v, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %i.y = shufflevector <3 x double> %3, <3 x double> poison, <2 x i32> zeroinitializer
  %i.z = fsub <2 x double> %i.x, %i.y             ; 6 uses
  %i.aa = shufflevector <2 x double> %i.v, <2 x double> %i.w, <2 x i32> <i32 1, i32 3>
  %4 = shufflevector <3 x double> %3, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fsub <2 x double> %i.aa, %4             ; 5 uses
  %i.ac = insertelement <2 x double> poison, double %.sroa.843.0.copyload, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %.sroa.047.0.copyload, i64 1
  %5 = shufflevector <3 x double> %3, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ae = fsub <2 x double> %i.ad, %5             ; 6 uses
  %i.af = fmul <2 x double> %i.ab, %i.ab
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ag) ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.w, %i.v
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aj = fsub double %.sroa.6.0.copyload, %.sroa.640.0.copyload ; 2 uses
  %i.ak = fsub double %.sroa.047.0.copyload, %.sroa.843.0.copyload ; 2 uses
  %i.al = fmul double %i.aj, %i.aj
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.al)
  %i.an = tail call noundef double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.am) ; 4 uses
  %i.ao = extractelement <2 x double> %i.ae, i64 0
  %i.ap = extractelement <2 x double> %i.ae, i64 1
  %i.aq = fneg double %i.ap
  %i.ar = extractelement <2 x double> %i.z, i64 0
  %i.as = fmul double %i.ar, %i.aq
  %i.at = extractelement <2 x double> %i.z, i64 1
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.at, double %i.as) ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = shufflevector <2 x double> %i.ab, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ax = fneg <2 x double> %i.aw
  %i.ay = shufflevector <2 x double> %i.ae, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.az = fmul <2 x double> %i.ay, %i.ax
  %i.ba = shufflevector <2 x double> %i.ae, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ba, <2 x double> %i.az) ; 2 uses
  %i.bc = fmul <2 x double> %i.bb, %i.bb          ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = fadd double %i.bd, %i.av
  %i.bf = extractelement <2 x double> %i.bc, i64 1
  %i.bg = fadd double %i.bf, %i.be
  %i.bh = fmul double %i.bg, 2.500000e-01
  %i.bi = fmul double %i.bh, 4.000000e+00
  %i.bj = extractelement <2 x double> %i.ah, i64 0 ; 4 uses
  %i.bk = extractelement <2 x double> %i.ah, i64 1 ; 4 uses
  %i.bl = fcmp ugt double %i.bj, %i.bk
  %i.bm = fcmp ugt double %i.bj, %i.an
  %or.cond.i22 = or i1 %i.bl, %i.bm
  %.inv.i = fcmp ole double %i.bk, %i.an
  %..i = select i1 %.inv.i, double %i.bk, double %i.an
  %.0.i = select i1 %or.cond.i22, double %..i, double %i.bj
  %i.bn = fmul double %.0.i, %i.bi
  %i.bo = fmul double %i.bj, %i.bk
  %i.bp = fmul double %i.an, %i.bo
  %i.bq = fdiv double %i.bn, %i.bp                ; 2 uses
  store double %i.bq, ptr %2, align 8, !tbaa !95
  %i.br = load double, ptr %i.a, align 8, !tbaa !233 ; 2 uses
  %i.bs = fcmp oeq double %i.br, 0.000000e+00
  %i.bt = fcmp olt double %i.bq, %i.br
  %spec.select = select i1 %i.bs, i1 true, i1 %i.bt
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %spec.select, %bb.c ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Surface_mesher22Aspect_ratio_criterionINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EEaSERKSV_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.c = load ptr, ptr %1, align 8, !tbaa !204    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.i = load ptr, ptr %0, align 8, !tbaa !204    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i, !prof !261

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #47 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !419

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !236
  store ptr %i.r, ptr %i.o, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit

_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #43
  br label %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit

_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit: ; preds = %_ZNSt6vectorIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKST_SV_EEEEPST_mT_S13_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !205
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !419

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !236
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !236
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !419

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !204
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !234 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !204
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !234
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !236
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !236
  br label %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit

_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !419

bb.r:                                             ; preds = %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESU_ET0_T_SW_SV_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !236
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !236
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4CGAL14Surface_mesher16Refine_criterionINS2_24Delaunay_triangulation_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS8_NS2_27Triangulation_vertex_base_3IS8_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS2_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS2_24Surface_mesh_cell_base_3IS8_NS2_34Delaunay_triangulation_cell_base_3IS8_NS2_25Triangulation_cell_base_3IS8_NS2_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS2_14Sequential_tagEEENS2_7DefaultESS_EEEESt6vectorISV_SaISV_EEEENS1_IPSV_S10_EEET0_T_S15_S14_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4CGAL14Surface_mesher16Refine_criterionINS0_24Delaunay_triangulation_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS6_NS0_27Triangulation_vertex_base_3IS6_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS0_24Surface_mesh_cell_base_3IS6_NS0_34Delaunay_triangulation_cell_base_3IS6_NS0_25Triangulation_cell_base_3IS6_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS0_14Sequential_tagEEENS0_7DefaultESQ_EEEESaIST_EE13_M_deallocateEPST_m.exit
end_hunk_0
begin_hunk_1_@_ZN4CGAL17make_surface_meshINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEvEENS_14Surface_mesher25Implicit_surface_oracle_3IS5_NS_18Implicit_surface_3IS5_St8functionIFdNS_7Point_3IS4_EEEEEENS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSS_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSX_EENSS_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISQ_EENS_12Manifold_tagEEEvRT_RKNT0_9Surface_3ERKS1K_RKT1_T2_i:bb.a
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vl, %.noexc23 ] ; 5 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vm, %.noexc23 ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !170 ; 2 uses
  %i.vp = icmp ult ptr %i.vo, %..i.i.i.i.i.i.i.i.i.i
  br i1 %i.vp, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vq = icmp ult ptr %..i.i.i.i.i.i.i.i.i.i, %i.vo
  br i1 %i.vq, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.vr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !170
  %i.vt = icmp ult ptr %i.vs, %.10.i.i.i.i.i.i.i.i.i.i
  br i1 %i.vt, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.bh ], [ 16, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.19.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vu, align 8, !tbaa !319 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !34

_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vv = icmp ne ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, %i.vm
  call void @llvm.assume(i1 %i.vv)
  %i.vw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !170 ; 2 uses
  %i.vy = icmp uge ptr %..i.i.i.i.i.i.i.i.i.i, %i.vx
  call void @llvm.assume(i1 %i.vy)
  %i.vz = icmp ult ptr %i.vx, %..i.i.i.i.i.i.i.i.i.i
  br i1 %i.vz, label %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !170
  %i.wc = icmp uge ptr %.10.i.i.i.i.i.i.i.i.i.i, %i.wb
  call void @llvm.assume(i1 %i.wc)
  br label %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i

_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 80
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !178 ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 32
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.wf, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.we, i64 40
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8 ; 5 uses
  %i.wg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.we) #49 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  %spec.select37.i.i.i.i.i.i.i.i = select i1 %i.wi, ptr %i.we, ptr %i.wg ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.i.i, i64 32
  %i.wk = load ptr, ptr %i.wj, align 8            ; 2 uses
  %i.wl = icmp ne ptr %i.wk, %.sroa.04.0.copyload.i.i.i.i.i.i.i.i
  %i.wm = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.i.i, i64 40
  %i.wn = load i32, ptr %i.wm, align 8            ; 2 uses
  %i.wo = icmp ne i32 %i.wn, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i
  %.not3.i26.i.i.i.i.i.i.i.i = select i1 %i.wl, i1 true, i1 %i.wo
  br i1 %.not3.i26.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i
  %i.wp = sext i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.wq = getelementptr inbounds [8 x i8], ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, i64 %i.wp
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i = load ptr, ptr %i.wq, align 8, !tbaa !345 ; 4 uses
  %i.wr = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i, align 8, !tbaa !298
  %i.ws = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i.i.i.i.i.i, i64 24
  %i.wx = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i.i.i.i.i.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.wy = phi i32 [ %i.wn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.zs, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wz = phi ptr [ %i.wk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.zp, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.622.029.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.622.2.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.021.028.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.021.2.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.513.127.i.i.i.i.i.i.i.i = phi ptr [ %spec.select37.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %spec.select38.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ]
  br i1 %i.ws, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xa = load ptr, ptr %i.wt, align 8, !tbaa !298
  %i.xb = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %i.xa
  br i1 %i.xb, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.xc = load ptr, ptr %i.wu, align 8, !tbaa !298
  %i.xd = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %i.xc
  %..i.i.i.i.i.i.i.i.i.i14.i.i = select i1 %i.xd, i32 2, i32 3
  br label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16

_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16: ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %bb.bj ], [ 0, %bb.bi ], [ %..i.i.i.i.i.i.i.i.i.i14.i.i, %bb.bk ]
  %i.xe = icmp ne ptr %i.wz, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i
  %i.xf = icmp ne i32 %i.wy, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %.not3.i29.i.i.i.i.i.i.i.i = select i1 %i.xe, i1 true, i1 %i.xf
  br i1 %.not3.i29.i.i.i.i.i.i.i.i, label %bb.bl, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC

bb.bl:                                            ; preds = %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wz, i64 80
  %i.xh = sext i32 %i.wy to i64                   ; 2 uses
  %i.xi = getelementptr inbounds [24 x i8], ptr %i.xg, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !95, !noalias !1497
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i.i.i.i.i.i.i.i, i64 80
  %i.xm = sext i32 %.sroa.622.029.i.i.i.i.i.i.i.i to i64
  %i.xn = getelementptr inbounds [24 x i8], ptr %i.xl, i64 %i.xm ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !95, !noalias !1498
  %i.xq = load <2 x double>, ptr %i.xi, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xr = load double, ptr %i.ww, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xs = load double, ptr %i.wv, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xt = load double, ptr %i.wx, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xu = load <2 x double>, ptr %i.xn, align 8, !tbaa !95, !noalias !1498 ; 2 uses
  %i.xv = insertelement <2 x double> poison, double %i.xs, i64 0
  %i.xw = shufflevector <2 x double> %i.xv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xx = shufflevector <2 x double> %i.xq, <2 x double> %i.xu, <2 x i32> <i32 0, i32 2>
  %i.xy = fsub <2 x double> %i.xw, %i.xx          ; 2 uses
  %i.xz = insertelement <2 x double> poison, double %i.xr, i64 0
  %i.ya = shufflevector <2 x double> %i.xz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yb = shufflevector <2 x double> %i.xq, <2 x double> %i.xu, <2 x i32> <i32 1, i32 3>
  %i.yc = fsub <2 x double> %i.ya, %i.yb          ; 2 uses
  %i.yd = insertelement <2 x double> poison, double %i.xt, i64 0
  %i.ye = shufflevector <2 x double> %i.yd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yf = insertelement <2 x double> poison, double %i.xk, i64 0
  %i.yg = insertelement <2 x double> %i.yf, double %i.xp, i64 1
  %i.yh = fsub <2 x double> %i.ye, %i.yg          ; 2 uses
  %i.yi = fmul <2 x double> %i.yc, %i.yc
  %i.yj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xy, <2 x double> %i.xy, <2 x double> %i.yi)
  %i.yk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yh, <2 x double> %i.yh, <2 x double> %i.yj) ; 2 uses
  %i.yl = extractelement <2 x double> %i.yk, i64 0
  %i.ym = extractelement <2 x double> %i.yk, i64 1 ; 2 uses
  %i.yn = fcmp ogt double %i.yl, %i.ym
  br i1 %i.yn, label %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.yo = getelementptr inbounds [8 x i8], ptr %i.wz, i64 %i.xh
  %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i = load ptr, ptr %i.yo, align 8, !tbaa !345 ; 5 uses
  %i.yp = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, align 8, !tbaa !298
  %i.yq = icmp eq ptr %i.wz, %i.yp
  br i1 %i.yq, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !298
  %i.yt = icmp eq ptr %i.wz, %i.ys
  br i1 %i.yt, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !298
  %i.yw = icmp eq ptr %i.wz, %i.yv
  %..i.i.i.i36.i.i.i.i.i.i.i.i = select i1 %i.yw, i32 2, i32 3
  br label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41

_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41: ; preds = %bb.bo, %bb.bn, %bb.bm
  %.0.i.i.i.i37.i.i.i.i.i.i.i.i = phi i32 [ 1, %bb.bn ], [ 0, %bb.bm ], [ %..i.i.i.i36.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, i64 80
  %i.yy = zext nneg i32 %.0.i.i.i.i37.i.i.i.i.i.i.i.i to i64
  %i.yz = getelementptr inbounds nuw [24 x i8], ptr %i.yx, i64 %i.yy ; 3 uses
  %i.za = load double, ptr %i.yz, align 8, !tbaa !95, !noalias !1499
  %i.zb = fsub double %i.xs, %i.za                ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !95, !noalias !1499
  %i.ze = fsub double %i.xr, %i.zd                ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !95, !noalias !1499
  %i.zh = fsub double %i.xt, %i.zg                ; 2 uses
  %i.zi = fmul double %i.ze, %i.ze
  %i.zj = call double @llvm.fmuladd.f64(double %i.zb, double %i.zb, double %i.zi)
  %i.zk = call noundef double @llvm.fmuladd.f64(double %i.zh, double %i.zh, double %i.zj)
  %i.zl = fcmp ogt double %i.zk, %i.ym            ; 2 uses
  %spec.select.i.i.i.i.i.i17.i.i = select i1 %i.zl, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, ptr %.sroa.021.028.i.i.i.i.i.i.i.i
  %spec.select25.i.i.i.i.i.i.i.i = select i1 %i.zl, i32 %.0.i.i.i.i37.i.i.i.i.i.i.i.i, i32 %.sroa.622.029.i.i.i.i.i.i.i.i
  br label %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i

_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i: ; preds = %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41, %bb.bl
  %.sroa.021.2.i.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i17.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41 ], [ %i.wz, %bb.bl ] ; 2 uses
  %.sroa.622.2.i.i.i.i.i.i.i.i = phi i32 [ %spec.select25.i.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41 ], [ %i.wy, %bb.bl ] ; 2 uses
  %i.zm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.513.127.i.i.i.i.i.i.i.i) #49 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, %i.wh
  %spec.select38.i.i.i.i.i.i.i.i = select i1 %i.zn, ptr %i.we, ptr %i.zm ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i.i.i.i, i64 32
  %i.zp = load ptr, ptr %i.zo, align 8            ; 2 uses
  %i.zq = icmp ne ptr %i.zp, %.sroa.04.0.copyload.i.i.i.i.i.i.i.i
  %i.zr = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i.i.i.i, i64 40
  %i.zs = load i32, ptr %i.zr, align 8            ; 2 uses
  %i.zt = icmp ne i32 %i.zs, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i.i = select i1 %i.zq, i1 true, i1 %i.zt
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %bb.bi, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC, !llvm.loop !1435

bb.bp:                                            ; preds = %.noexc22
  %i.zu = load ptr, ptr %i.io, align 8, !tbaa !178
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  %.sroa.02.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.zv, align 8, !tbaa !171 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  store ptr %35, ptr %i.sj, align 8, !tbaa !132
  store ptr %35, ptr %35, align 8, !tbaa !133
  store i64 0, ptr %i.sk, align 8, !tbaa !1500
  %i.zw = load ptr, ptr %i.ho, align 8, !tbaa !505, !nonnull !83, !align !332 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 48
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !430, !nonnull !83, !align !332
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 3 uses
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !166
  %i.aab = icmp eq i32 %i.aaa, 3
  br i1 %i.aab, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.aac = invoke { ptr, ptr } @_ZNK4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEE20visit_incident_cellsINSL_15Facet_extractorINS_22Filter_output_iteratorISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSA_IS4_NSB_IS4_NSC_IS4_NSD_IS4_NSE_ISL_EEEEEEEEEENS_7DefaultES11_S11_EELb0EEEiESaIS14_EEEENS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3IS4_SL_S11_S11_EEvE20Facet_not_in_complexEEENSL_12False_filterEEES1D_S1E_EET0_NSU_INSV_INS1_IS4_NS5_IS4_NS6_ISL_EEEEEES11_S11_S11_EELb0EEES1G_T1_(ptr noundef nonnull align 8 dereferenceable(184) %i.zz, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, ptr nonnull %35, ptr nonnull align 8 dereferenceable(112) %i.zw)
          to label %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i unwind label %bb.bt ; 0 uses

bb.br:                                            ; preds = %bb.bp
  %i.aad = invoke { ptr, ptr } @_ZNK4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEE20visit_incident_cellsINSL_26DegCell_as_Facet_extractorINS_22Filter_output_iteratorISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSA_IS4_NSB_IS4_NSC_IS4_NSD_IS4_NSE_ISL_EEEEEEEEEENS_7DefaultES11_S11_EELb0EEEiESaIS14_EEEENS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3IS4_SL_S11_S11_EEvE20Facet_not_in_complexEEENSL_12False_filterEEES1D_S1E_EET0_NSU_INSV_INS1_IS4_NS5_IS4_NS6_ISL_EEEEEES11_S11_S11_EELb0EEES1G_T1_(ptr noundef nonnull align 8 dereferenceable(184) %i.zz, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, ptr nonnull %35, ptr nonnull align 8 dereferenceable(112) %i.zw)
          to label %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i unwind label %bb.bt ; 0 uses

_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %i.aae = load ptr, ptr %35, align 8, !tbaa !133 ; 5 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %.sroa.026.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.aaf, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.021.028.i.i.i.i.i.i.i = load ptr, ptr %i.aae, align 8, !tbaa !133 ; 2 uses
  %.not29.i.i.i.i.i.i.i = icmp eq ptr %.sroa.021.028.i.i.i.i.i.i.i, %35
  br i1 %.not29.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, i64 16
  %48 = load <3 x double>, ptr %i.aag, align 8, !tbaa !95, !noalias !1501 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.copyload.i.i.i.i.i.i.i, i64 80
  %.phi.trans.insert34.i.i.i.i.i.i.i = sext i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i to i64
  %.phi.trans.insert35.i.i.i.i.i.i.i = getelementptr inbounds [24 x i8], ptr %.phi.trans.insert.i.i.i.i.i18.i.i, i64 %.phi.trans.insert34.i.i.i.i.i.i.i ; 3 uses
  %.pre.i.i.i.i.i19.i.i = load double, ptr %.phi.trans.insert35.i.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !1502
  %.phi.trans.insert36.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert35.i.i.i.i.i.i.i, i64 8
  %.pre37.i.i.i.i.i.i.i = load double, ptr %.phi.trans.insert36.i.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !1502
  %.phi.trans.insert38.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert35.i.i.i.i.i.i.i, i64 16
  %.pre39.i.i.i.i.i.i.i = load double, ptr %.phi.trans.insert38.i.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !1502
  %49 = shufflevector <3 x double> %48, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.aah = shufflevector <3 x double> %48, <3 x double> poison, <2 x i32> zeroinitializer
  %50 = shufflevector <3 x double> %48, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i.i.i.i.i.i.i
  %i.aai = phi double [ %.pre39.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.abl, %bb.bs ] ; 2 uses
  %i.aaj = phi double [ %.pre37.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.abk, %bb.bs ] ; 2 uses
  %i.aak = phi double [ %.pre.i.i.i.i.i19.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.abj, %bb.bs ] ; 2 uses
  %.sroa.021.032.i.i.i.i.i.i.i = phi ptr [ %.sroa.021.028.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.021.0.i.i.i.i.i.i.i, %bb.bs ] ; 3 uses
  %.sroa.4.031.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %spec.select27.i.i.i.i.i.i.i, %bb.bs ]
  %.sroa.026.030.i.i.i.i.i.i.i = phi ptr [ %.sroa.026.0.copyload.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %bb.bs ]
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i.i.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.aal, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i.i.i.i.i.i.i, i64 24
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 80
  %i.aan = sext i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i to i64
  %i.aao = getelementptr inbounds [24 x i8], ptr %i.aam, i64 %i.aan ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !95, !noalias !1501 ; 2 uses
  %i.aas = load <2 x double>, ptr %i.aao, align 8, !tbaa !95, !noalias !1501 ; 3 uses
  %i.aat = load double, ptr %i.aap, align 8, !tbaa !95, !noalias !1501
  %i.aau = insertelement <2 x double> %i.aas, double %i.aak, i64 1
  %i.aav = fsub <2 x double> %i.aah, %i.aau       ; 2 uses
  %i.aaw = shufflevector <2 x double> %i.aas, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aax = insertelement <2 x double> %i.aaw, double %i.aaj, i64 1
  %i.aay = fsub <2 x double> %50, %i.aax          ; 2 uses
  %i.aaz = insertelement <2 x double> poison, double %i.aar, i64 0
  %i.aba = insertelement <2 x double> %i.aaz, double %i.aai, i64 1
  %i.abb = fsub <2 x double> %49, %i.aba          ; 2 uses
  %i.abc = fmul <2 x double> %i.aay, %i.aay
  %i.abd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aav, <2 x double> %i.aav, <2 x double> %i.abc)
  %i.abe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abb, <2 x double> %i.abb, <2 x double> %i.abd) ; 2 uses
  %i.abf = extractelement <2 x double> %i.abe, i64 0
  %i.abg = extractelement <2 x double> %i.abe, i64 1
  %i.abh = fcmp ogt double %i.abf, %i.abg         ; 5 uses
  %spec.select.i.i.i.i.i.i.i = select i1 %i.abh, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.026.030.i.i.i.i.i.i.i ; 2 uses
  %spec.select27.i.i.i.i.i.i.i = select i1 %i.abh, i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i, i32 %.sroa.4.031.i.i.i.i.i.i.i ; 2 uses
  %.sroa.021.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.021.032.i.i.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.i.i.i20.i.i = icmp eq ptr %.sroa.021.0.i.i.i.i.i.i.i, %35
  %i.abi = extractelement <2 x double> %i.aas, i64 0
  %i.abj = select i1 %i.abh, double %i.abi, double %i.aak
  %i.abk = select i1 %i.abh, double %i.aat, double %i.aaj
  %i.abl = select i1 %i.abh, double %i.aar, double %i.aai
  br i1 %.not.i.i.i.i.i20.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.bs, !llvm.loop !1448

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.abm = landingpad { ptr, i32 }
          cleanup
  %i.abn = load ptr, ptr %35, align 8, !tbaa !133 ; 2 uses
  %.not8.i.i15.i.i.i.i.i.i.i = icmp eq ptr %i.abn, %35
  br i1 %.not8.i.i15.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEiESaIS10_EED2Ev.exit19.i.i.i.i.i.i.i, label %.lr.ph.i.i16.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bs, %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i
  %.sroa.026.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.026.0.copyload.i.i.i.i.i.i.i, %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %bb.bs ]
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i ], [ %spec.select27.i.i.i.i.i.i.i, %bb.bs ]
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aae, %35
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL14Surface_mesher28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EENS0_33Surface_mesher_regular_edges_baseISS_SZ_S1E_S1G_Lb0EEEE33biggest_incident_facet_in_complexENS_8internal11CC_iteratorINS_17C, label %.lr.ph.i.i.i.i.i.i.i21.i.i

.lr.ph.i.i.i.i.i.i.i21.i.i:                       ; preds = %._crit_edge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i21.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abo, %.lr.ph.i.i.i.i.i.i.i21.i.i ], [ %i.aae, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.abo = load ptr, ptr %.09.i.i.i.i.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i.i.i, i64 noundef 32) #43
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abo, %35
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL14Surface_mesher28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EENS0_33Surface_mesher_regular_edges_baseISS_SZ_S1E_S1G_Lb0EEEE33biggest_incident_facet_in_complexENS_8internal11CC_iteratorINS_17C, label %.lr.ph.i.i.i.i.i.i.i21.i.i, !llvm.loop !1449

.lr.ph.i.i16.i.i.i.i.i.i.i:                       ; preds = %bb.bt, %.lr.ph.i.i16.i.i.i.i.i.i.i
  %.09.i.i17.i.i.i.i.i.i.i = phi ptr [ %i.abp, %.lr.ph.i.i16.i.i.i.i.i.i.i ], [ %i.abn, %bb.bt ] ; 2 uses
  %i.abp = load ptr, ptr %.09.i.i17.i.i.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i17.i.i.i.i.i.i.i, i64 noundef 32) #43
  %.not.i.i18.i.i.i.i.i.i.i = icmp eq ptr %i.abp, %35
  br i1 %.not.i.i18.i.i.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEiESaIS10_EED2Ev.exit19.i.i.i.i.i.i.i, label %.lr.ph.i.i16.i.i.i.i.i.i.i, !llvm.loop !1449

_ZNSt7__cxx1110_List_baseISt4pairIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEiESaIS10_EED2Ev.exit19.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i16.i.i.i.i.i.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %.body

_ZNK4CGAL14Surface_mesher28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EENS0_33Surface_mesher_regular_edges_baseISS_SZ_S1E_S1G_Lb0EEEE33biggest_incident_facet_in_complexENS_8internal11CC_iteratorINS_17C: ; preds = %.lr.ph.i.i.i.i.i.i.i21.i.i, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC

_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC: ; preds = %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16, %_ZNK4CGAL14Surface_mesher28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EENS0_33Surface_mesher_regular_edges_baseISS_SZ_S1E_S1G_Lb0EEEE33biggest_incident_facet_in_complexENS_8internal11CC_iteratorINS_17C, %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i, %bb.bf
  %.sroa.026.0.lcssa.i.pn.i.i.i.i.i.i = phi ptr [ %.sroa.026.0.lcssa.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EENS0_33Surface_mesher_regular_edges_baseISS_SZ_S1E_S1G_Lb0EEEE33biggest_incident_facet_in_complexENS_8internal11CC_iteratorINS_17C ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.bf ], [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.021.2.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ], [ %.sroa.021.028.i.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16 ] ; 6 uses
  %.sroa.4.0.lcssa.i.pn.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.lcssa.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EENS0_33Surface_mesher_regular_edges_baseISS_SZ_S1E_S1G_Lb0EEEE33biggest_incident_facet_in_complexENS_8internal11CC_iteratorINS_17C ], [ %.sroa.2.0.copyload.i.i.i.i.i.i1.i.i, %bb.bf ], [ %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.622.2.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ], [ %.sroa.622.029.i.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %.sroa.026.0.lcssa.i.pn.i.i.i.i.i.i, ptr %32, align 8
  store i32 %.sroa.4.0.lcssa.i.pn.i.i.i.i.i.i, ptr %i.sl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa.i.pn.i.i.i.i.i.i, i64 80
  %i.abr = sext i32 %.sroa.4.0.lcssa.i.pn.i.i.i.i.i.i to i64 ; 2 uses
  %i.abs = getelementptr inbounds [24 x i8], ptr %i.abq, i64 %i.abr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.abs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  invoke void @_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %34)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC
  %i.abt = load ptr, ptr %i.hp, align 8, !tbaa !498, !noalias !1505, !nonnull !83, !align !332
  %i.abu = invoke ptr @_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE12exact_locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb(ptr noundef nonnull align 8 dereferenceable(208) %i.abt, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(4) %34, ptr noundef nonnull align 4 dereferenceable(4) %i.sm, ptr noundef nonnull align 4 dereferenceable(4) %i.sn, ptr nonnull %.sroa.026.0.lcssa.i.pn.i.i.i.i.i.i, ptr noundef null)
          to label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE6locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb.exit.i.i.i.i.i.i.i unwind label %bb.bw ; 2 uses

_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE6locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb.exit.i.i.i.i.i.i.i: ; preds = %.noexc24
  store ptr %i.abu, ptr %i.so, align 8, !tbaa !345, !alias.scope !1505
  %i.abv = load i32, ptr %34, align 8, !tbaa !524, !alias.scope !1505
  %.not.i.i.i5.i.i.i.i = icmp eq i32 %i.abv, 0
  br i1 %.not.i.i.i5.i.i.i.i, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11C7, label %bb.bu

bb.bu:                                            ; preds = %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE6locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb.exit.i.i.i.i.i.i.i
  %i.abw = load ptr, ptr %i.hp, align 8, !tbaa !498, !noalias !1505, !nonnull !83, !align !332
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38, !noalias !1505
  invoke void @_ZNK4CGAL24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESN_E14find_conflictsISt20back_insert_iteratorISt6vectorISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEiESaIS13_EEESQ_ISR_IS12_SaIS12_EEES16_EENS_6TripleIT_T0_T1_EERKNS_7Point_3IS2_EES12_S1B_S1C_S1D_Pb(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Triple.1082") align 8 %31, ptr noundef nonnull align 8 dereferenceable(209) %i.abw, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr %i.abu, ptr nonnull %i.sp, ptr nonnull %i.sq, i64 %i.ss, ptr noundef null)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38, !noalias !1505
  br label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11C7

bb.bw:                                            ; preds = %.noexc24
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  %i.aby = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38, !noalias !1505
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aby, %bb.bx ], [ %i.abx, %bb.bw ]
  call void @_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %34) #38
  br label %.body

_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11C7: ; preds = %bb.bv, %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE6locateERKNS_7Point_3IS2_EERNSO_11Locate_typeERiSV_NS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEPb.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  invoke void @_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneC2ERKSR_(ptr noundef nonnull align 8 dereferenceable(96) %30, ptr noundef nonnull align 8 dereferenceable(96) %34)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11C7
  %i.abz = load ptr, ptr %i.st, align 8, !tbaa !525 ; 3 uses
  %.not.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.abz, null
  br i1 %.not.i.i.i.i.i.i.i.i2.i.i, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc.i.i.i.i.i
  %i.aca = load ptr, ptr %i.su, align 8, !tbaa !526
  %i.acb = ptrtoint ptr %i.aca to i64
  %i.acc = ptrtoint ptr %i.abz to i64
  %i.acd = sub i64 %i.acb, %i.acc
  call void @_ZdlPvm(ptr noundef nonnull %i.abz, i64 noundef %i.acd) #43
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.bz, %.noexc.i.i.i.i.i
  %i.ace = load ptr, ptr %i.sv, align 8, !tbaa !525 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit2.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit.i.i.i.i.i.i.i
  %i.acf = load ptr, ptr %i.sw, align 8, !tbaa !526
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.ace to i64
  %i.aci = sub i64 %i.acg, %i.ach
  call void @_ZdlPvm(ptr noundef nonnull %i.ace, i64 noundef %i.aci) #43
  br label %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit2.i.i.i.i.i.i.i

_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit2.i.i.i.i.i.i.i: ; preds = %bb.ca, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit.i.i.i.i.i.i.i
  %i.acj = load ptr, ptr %i.sx, align 8, !tbaa !527 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i.i = icmp eq ptr %i.acj, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i.i, label %_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneD2Ev.exit.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit2.i.i.i.i.i.i.i
  %i.ack = load ptr, ptr %i.sy, align 8, !tbaa !528
  %i.acl = ptrtoint ptr %i.ack to i64
  %i.acm = ptrtoint ptr %i.acj to i64
  %i.acn = sub i64 %i.acl, %i.acm
  call void @_ZdlPvm(ptr noundef nonnull %i.acj, i64 noundef %i.acn) #43
  br label %_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneD2Ev.exit.i.i.i.i.i.i

_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cb, %_ZNSt6vectorISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiESaISZ_EED2Ev.exit2.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %34, align 8, !tbaa !524
  %i.aco = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.aco, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %_ZN4CGAL35Triangulation_mesher_level_traits_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE4ZoneD2Ev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %.noexc25.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i.i.i

.noexc25.i.i.i.i.i:                               ; preds = %bb.cc
  %i.acp = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.acq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acp, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i.i.i unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc25.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  %i.acr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4CGAL6insertINS_5EpickEEERSoS2_RKNS_7Point_3IT_EERKNS_13Cartesian_tagE(ptr noundef nonnull align 8 dereferenceable(8) %i.acp, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %i.acs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acr, ptr noundef nonnull @.str.146, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i.i.i.i.i.i.i.i unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i.i.i.i.i.i.i.i
  %i.act = load ptr, ptr %29, align 8, !tbaa !93
  invoke void @_ZN4CGAL14assertion_failEPKcS1_iS1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.140, i32 noundef 253, ptr noundef %i.act) #46
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i.i.i, %.noexc25.i.i.i.i.i
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i.i.i.i.i.i.i.i
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ce
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
