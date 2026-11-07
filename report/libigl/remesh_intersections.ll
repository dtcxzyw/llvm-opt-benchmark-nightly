Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_intersections?download=true
inline.NumInlined: 39098
inline.NumDeleted: 8954
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN4CGALplERKNS_9cpp_floatES2_:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !635, !range !391, !noundef !392
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %i.ar, align 2, !range !391
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i13 = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i13, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %0, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #37
  br label %common.resume

_ZN4CGAL9cpp_floatC2IN5boost14multiprecision6detail10expressionINS4_14add_immediatesENS3_6numberINS3_8backends15cpp_int_backendILm512ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEELNS3_26expression_template_optionE1EEESF_vvEEEERKT_i.exit: ; preds = %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.b, ptr %i.bf, align 16, !tbaa !910
  br label %bb.n

bb.n:                                             ; preds = %_ZN4CGAL9cpp_floatC2IN5boost14multiprecision6detail10expressionINS4_14add_immediatesENS3_6numberINS3_8backends15cpp_int_backendILm512ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEELNS3_26expression_template_optionE1EEESF_vvEEEERKT_i.exit, %_ZN4CGAL9cpp_floatC2IN5boost14multiprecision6detail10expressionINS4_4plusENS3_6numberINS3_8backends15cpp_int_backendILm512ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEELNS3_26expression_template_optionE1EEENS5_INS4_10shift_leftESF_ivvEEvvEEEERKT_i.exit, %_ZN4CGAL9cpp_floatC2IN5boost14multiprecision6detail10expressionINS4_4plusENS5_INS4_10shift_leftENS3_6numberINS3_8backends15cpp_int_backendILm512ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEELNS3_26expression_template_optionE1EEEivvEESG_vvEEEERKT_i.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL23CartesianKernelFunctors28Construct_translated_point_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EERKNS_8Vector_3IS4_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.1059") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(288) %2, ptr noundef nonnull align 16 dereferenceable(288) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.05.i = alloca [3 x %"class.CGAL::cpp_float"], align 16 ; 42 uses
  %.sroa.022 = alloca [3 x %"class.CGAL::cpp_float"], align 16 ; 39 uses
  %4 = alloca %"class.CGAL::cpp_float", align 16  ; 17 uses
  %5 = alloca %"class.CGAL::cpp_float", align 16  ; 17 uses
  %6 = alloca %"class.CGAL::cpp_float", align 16  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4CGALplERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %4, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZN4CGALplERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %5, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 192
  invoke void @_ZN4CGALplERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c, ptr noundef nonnull align 16 dereferenceable(84) %i.d)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !8872)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8873)
  store i64 0, ptr %.sroa.05.i, align 16, !tbaa !438, !alias.scope !8873
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !904, !noalias !8873 ; 2 uses
  %.sroa.05.i.64.i.64.i.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 64
  store i64 %i.f, ptr %.sroa.05.i.64.i.64.i.64..sroa_idx, align 16, !tbaa !904, !alias.scope !8873
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.h = load i8, ptr %i.g, align 8, !tbaa !905, !range !391, !noalias !8873, !noundef !392
  %.sroa.05.i.72.i.72.i.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 72
  store i8 %i.h, ptr %.sroa.05.i.72.i.72.i.72..sroa_idx, align 8, !tbaa !905, !alias.scope !8873
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !635, !range !391, !noalias !8873, !noundef !392 ; 2 uses
  %.sroa.05.i.73.i.73.i.73..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 73
  store i8 %i.j, ptr %.sroa.05.i.73.i.73.i.73..sroa_idx, align 1, !tbaa !635, !alias.scope !8873
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 74 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !906, !range !391, !noalias !8873, !noundef !392
  %.sroa.05.i.74.i.74.i.74..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 74
  store i8 %i.l, ptr %.sroa.05.i.74.i.74.i.74..sroa_idx, align 2, !tbaa !906, !alias.scope !8873
  %i.m = trunc nuw i8 %i.j to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = shl i64 %i.f, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(288) %.sroa.05.i, ptr nonnull align 16 dereferenceable(84) %4, i64 %i.n, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.05.i, ptr noundef nonnull align 16 dereferenceable(84) %4, i64 16, i1 false), !tbaa.struct !872
  store i64 0, ptr %i.e, align 16, !tbaa !904, !noalias !8873
  store i8 1, ptr %i.i, align 1, !tbaa !635, !noalias !8873
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i:             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.p = load i32, ptr %i.o, align 16, !tbaa !910, !noalias !8873 ; 3 uses
  %.sroa.05.i.80.i.80.i.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 80
  store i32 %i.p, ptr %.sroa.05.i.80.i.80.i.80..sroa_idx, align 16, !tbaa !910, !alias.scope !8873
  %.sroa.05.i.96..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 96
  store i64 0, ptr %.sroa.05.i.96..sroa_idx166, align 16, !tbaa !438, !alias.scope !8873
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !904, !noalias !8873 ; 2 uses
  %.sroa.05.i.160.i.160.i.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 160
  store i64 %i.r, ptr %.sroa.05.i.160.i.160.i.160..sroa_idx, align 16, !tbaa !904, !alias.scope !8873
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = load i8, ptr %i.s, align 8, !tbaa !905, !range !391, !noalias !8873, !noundef !392
  %.sroa.05.i.168.i.168.i.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 168
  store i8 %i.t, ptr %.sroa.05.i.168.i.168.i.168..sroa_idx, align 8, !tbaa !905, !alias.scope !8873
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 73 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !635, !range !391, !noalias !8873, !noundef !392 ; 2 uses
  %.sroa.05.i.169.i.169.i.169..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 169
  store i8 %i.v, ptr %.sroa.05.i.169.i.169.i.169..sroa_idx, align 1, !tbaa !635, !alias.scope !8873
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 74 ; 2 uses
  %i.x = load i8, ptr %i.w, align 2, !tbaa !906, !range !391, !noalias !8873, !noundef !392
  %.sroa.05.i.170.i.170.i.170..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 170
  store i8 %i.x, ptr %.sroa.05.i.170.i.170.i.170..sroa_idx, align 2, !tbaa !906, !alias.scope !8873
  %i.y = trunc nuw i8 %i.v to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i
  %i.z = shl i64 %i.r, 3
  %.sroa.05.i.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %.sroa.05.i.96..sroa_idx, ptr nonnull align 16 dereferenceable(84) %5, i64 %i.z, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit4.i.i.i

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i
  %.sroa.05.96..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.05.96..sroa_idx66.i, ptr noundef nonnull align 16 dereferenceable(84) %5, i64 16, i1 false), !tbaa.struct !872
  store i64 0, ptr %i.q, align 16, !tbaa !904, !noalias !8873
  store i8 1, ptr %i.u, align 1, !tbaa !635, !noalias !8873
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit4.i.i.i

_ZN4CGAL9cpp_floatC2EOS0_.exit4.i.i.i:            ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !910, !noalias !8873 ; 3 uses
  %.sroa.05.i.176.i.176.i.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 176
  store i32 %i.ab, ptr %.sroa.05.i.176.i.176.i.176..sroa_idx, align 16, !tbaa !910, !alias.scope !8873
  %.sroa.05.i.192..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 192
  store i64 0, ptr %.sroa.05.i.192..sroa_idx172, align 16, !tbaa !438, !alias.scope !8873
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !904, !noalias !8873 ; 2 uses
  %.sroa.05.i.256.i.256.i.256..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 256
  store i64 %i.ad, ptr %.sroa.05.i.256.i.256.i.256..sroa_idx, align 16, !tbaa !904, !alias.scope !8873
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !905, !range !391, !noalias !8873, !noundef !392
  %.sroa.05.i.264.i.264.i.264..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 264
  store i8 %i.af, ptr %.sroa.05.i.264.i.264.i.264..sroa_idx, align 8, !tbaa !905, !alias.scope !8873
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 73 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !635, !range !391, !noalias !8873, !noundef !392 ; 2 uses
  %.sroa.05.i.265.i.265.i.265..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 265
  store i8 %i.ah, ptr %.sroa.05.i.265.i.265.i.265..sroa_idx, align 1, !tbaa !635, !alias.scope !8873
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !906, !range !391, !noalias !8873, !noundef !392 ; 2 uses
  %.sroa.05.i.266.i.266.i.266..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 266
  store i8 %i.aj, ptr %.sroa.05.i.266.i.266.i.266..sroa_idx, align 2, !tbaa !906, !alias.scope !8873
  %i.ak = trunc nuw i8 %i.ah to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit4.i.i.i
  %i.al = shl i64 %i.ad, 3
  %.sroa.05.i.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %.sroa.05.i.192..sroa_idx, ptr nonnull align 16 dereferenceable(84) %6, i64 %i.al, i1 false)
  br label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_S7_.exit.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit4.i.i.i
  %.sroa.05.192..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.05.192..sroa_idx85.i, ptr noundef nonnull align 16 dereferenceable(84) %6, i64 16, i1 false), !tbaa.struct !872
  store i64 0, ptr %i.ac, align 16, !tbaa !904, !noalias !8873
  store i8 1, ptr %i.ag, align 1, !tbaa !635, !noalias !8873
  br label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_S7_.exit.i

_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_S7_.exit.i: ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.an = load i32, ptr %i.am, align 16, !tbaa !910, !noalias !8873 ; 3 uses
  %.sroa.05.i.272.i.272.i.272..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 272
  store i32 %i.an, ptr %.sroa.05.i.272.i.272.i.272..sroa_idx, align 16, !tbaa !910, !alias.scope !8873
  store i64 0, ptr %.sroa.022, align 16, !tbaa !438
  %.sroa.05.i.64.i.64.i.64..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 64
  %.sroa.05.i.64..sroa.05.i.64..sroa.05.i.64..sroa.05.64..sroa.05.64..sroa.05.64..i = load i64, ptr %.sroa.05.i.64.i.64.i.64..sroa_idx161, align 16, !tbaa !904 ; 3 uses
  %.sroa.022.64..sroa_idx130 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 64
  store i64 %.sroa.05.i.64..sroa.05.i.64..sroa.05.i.64..sroa.05.64..sroa.05.64..sroa.05.64..i, ptr %.sroa.022.64..sroa_idx130, align 16, !tbaa !904
  %.sroa.05.i.72.i.72.i.72..sroa_idx162 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 72
  %.sroa.05.i.72..sroa.05.i.72..sroa.05.i.72..sroa.05.72..sroa.05.72..sroa.05.72..i = load i8, ptr %.sroa.05.i.72.i.72.i.72..sroa_idx162, align 8, !tbaa !905 ; 2 uses
  %.sroa.022.72..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 72
  store i8 %.sroa.05.i.72..sroa.05.i.72..sroa.05.i.72..sroa.05.72..sroa.05.72..sroa.05.72..i, ptr %.sroa.022.72..sroa_idx132, align 8, !tbaa !905
  %.sroa.05.i.73.i.73.i.73..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 73
  %.sroa.05.i.73..sroa.05.i.73..sroa.05.i.73..sroa.05.73..sroa.05.73..sroa.05.73..i = load i8, ptr %.sroa.05.i.73.i.73.i.73..sroa_idx163, align 1, !tbaa !635 ; 2 uses
  %.sroa.022.73..sroa_idx134 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 73
  store i8 %.sroa.05.i.73..sroa.05.i.73..sroa.05.i.73..sroa.05.73..sroa.05.73..sroa.05.73..i, ptr %.sroa.022.73..sroa_idx134, align 1, !tbaa !635
  %.sroa.05.i.74.i.74.i.74..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 74
  %.sroa.05.i.74..sroa.05.i.74..sroa.05.i.74..sroa.05.74..sroa.05.74..sroa.05.74..i = load i8, ptr %.sroa.05.i.74.i.74.i.74..sroa_idx164, align 2, !tbaa !906 ; 2 uses
  %.sroa.022.74..sroa_idx136 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 74
  store i8 %.sroa.05.i.74..sroa.05.i.74..sroa.05.i.74..sroa.05.74..sroa.05.74..sroa.05.74..i, ptr %.sroa.022.74..sroa_idx136, align 2, !tbaa !906
  %i.ao = trunc nuw i8 %.sroa.05.i.73..sroa.05.i.73..sroa.05.i.73..sroa.05.73..sroa.05.73..sroa.05.73..i to i1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_S7_.exit.i
  %i.ap = shl i64 %.sroa.05.i.64..sroa.05.i.64..sroa.05.i.64..sroa.05.64..sroa.05.64..sroa.05.64..i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(288) %.sroa.022, ptr nonnull align 16 dereferenceable(288) %.sroa.05.i, i64 %i.ap, i1 false)
  %.sroa.022.64..sroa_idx131 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 64
  %.sroa.022.64..sroa.022.64..sroa.022.64..sroa.022.64..pre = load i64, ptr %.sroa.022.64..sroa_idx131, align 16, !tbaa !904, !noalias !8872
  %.sroa.022.72..sroa_idx133 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 72
  %.sroa.022.72..sroa.022.72..sroa.022.72..sroa.022.72..pre = load i8, ptr %.sroa.022.72..sroa_idx133, align 8, !tbaa !905, !noalias !8872
  %.sroa.022.73..sroa_idx135 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 73
  %.sroa.022.73..sroa.022.73..sroa.022.73..sroa.022.73..pre = load i8, ptr %.sroa.022.73..sroa_idx135, align 1, !tbaa !635, !noalias !8872
  %.sroa.022.74..sroa_idx137 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 74
  %.sroa.022.74..sroa.022.74..sroa.022.74..sroa.022.74..pre = load i8, ptr %.sroa.022.74..sroa_idx137, align 2, !tbaa !906, !noalias !8872
  %7 = freeze i8 %.sroa.022.73..sroa.022.73..sroa.022.73..sroa.022.73..pre
  br label %bb.l

bb.k:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_S7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.022, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.05.i, i64 16, i1 false), !tbaa.struct !872
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.022.74..sroa.022.74..sroa.022.74. = phi i8 [ %.sroa.022.74..sroa.022.74..sroa.022.74..sroa.022.74..pre, %bb.j ], [ %.sroa.05.i.74..sroa.05.i.74..sroa.05.i.74..sroa.05.74..sroa.05.74..sroa.05.74..i, %bb.k ]
  %.sroa.022.73..sroa.022.73..sroa.022.73. = phi i8 [ %7, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %.sroa.022.72..sroa.022.72..sroa.022.72. = phi i8 [ %.sroa.022.72..sroa.022.72..sroa.022.72..sroa.022.72..pre, %bb.j ], [ %.sroa.05.i.72..sroa.05.i.72..sroa.05.i.72..sroa.05.72..sroa.05.72..sroa.05.72..i, %bb.k ]
  %.sroa.022.64..sroa.022.64..sroa.022.64. = phi i64 [ %.sroa.022.64..sroa.022.64..sroa.022.64..sroa.022.64..pre, %bb.j ], [ %.sroa.05.i.64..sroa.05.i.64..sroa.05.i.64..sroa.05.64..sroa.05.64..sroa.05.64..i, %bb.k ] ; 2 uses
  %.sroa.022.80..sroa_idx138 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 80
  store i32 %i.p, ptr %.sroa.022.80..sroa_idx138, align 16, !tbaa !910
  %.sroa.022.96..sroa_idx140 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 96
  store i64 0, ptr %.sroa.022.96..sroa_idx140, align 16, !tbaa !438
  %.sroa.05.i.160.i.160.i.160..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 160
  %.sroa.05.i.160..sroa.05.i.160..sroa.05.i.160..sroa.05.160..sroa.05.160..sroa.05.160..i = load i64, ptr %.sroa.05.i.160.i.160.i.160..sroa_idx167, align 16, !tbaa !904 ; 2 uses
  %.sroa.022.160..sroa_idx141 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 160
  store i64 %.sroa.05.i.160..sroa.05.i.160..sroa.05.i.160..sroa.05.160..sroa.05.160..sroa.05.160..i, ptr %.sroa.022.160..sroa_idx141, align 16, !tbaa !904
  %.sroa.05.i.168.i.168.i.168..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 168
  %.sroa.05.i.168..sroa.05.i.168..sroa.05.i.168..sroa.05.168..sroa.05.168..sroa.05.168..i = load i8, ptr %.sroa.05.i.168.i.168.i.168..sroa_idx168, align 8, !tbaa !905
  %.sroa.022.168..sroa_idx143 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 168
  store i8 %.sroa.05.i.168..sroa.05.i.168..sroa.05.i.168..sroa.05.168..sroa.05.168..sroa.05.168..i, ptr %.sroa.022.168..sroa_idx143, align 8, !tbaa !905
  %.sroa.05.i.169.i.169.i.169..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 169
  %.sroa.05.i.169..sroa.05.i.169..sroa.05.i.169..sroa.05.169..sroa.05.169..sroa.05.169..i = load i8, ptr %.sroa.05.i.169.i.169.i.169..sroa_idx169, align 1, !tbaa !635 ; 2 uses
  %.sroa.022.169..sroa_idx145 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 169
  store i8 %.sroa.05.i.169..sroa.05.i.169..sroa.05.i.169..sroa.05.169..sroa.05.169..sroa.05.169..i, ptr %.sroa.022.169..sroa_idx145, align 1, !tbaa !635
  %.sroa.05.i.170.i.170.i.170..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 170
  %.sroa.05.i.170..sroa.05.i.170..sroa.05.i.170..sroa.05.170..sroa.05.170..sroa.05.170..i = load i8, ptr %.sroa.05.i.170.i.170.i.170..sroa_idx170, align 2, !tbaa !906
  %.sroa.022.170..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 170
  store i8 %.sroa.05.i.170..sroa.05.i.170..sroa.05.i.170..sroa.05.170..sroa.05.170..sroa.05.170..i, ptr %.sroa.022.170..sroa_idx147, align 2, !tbaa !906
  %i.aq = trunc nuw i8 %.sroa.05.i.169..sroa.05.i.169..sroa.05.i.169..sroa.05.169..sroa.05.169..sroa.05.169..i to i1
  %i.ar = shl i64 %.sroa.05.i.160..sroa.05.i.160..sroa.05.i.160..sroa.05.160..sroa.05.160..sroa.05.160..i, 3
  %.sink.i21 = select i1 %i.aq, i64 %i.ar, i64 16
  %.sroa.022.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 96
  %.sroa.05.i.96..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(16) %.sroa.022.96..sroa_idx, ptr nonnull align 16 dereferenceable(16) %.sroa.05.i.96..sroa_idx165, i64 %.sink.i21, i1 false)
  %.sroa.022.176..sroa_idx149 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 176
  store i32 %i.ab, ptr %.sroa.022.176..sroa_idx149, align 16, !tbaa !910
  %.sroa.022.192..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 192
  store i64 0, ptr %.sroa.022.192..sroa_idx151, align 16, !tbaa !438
  %.sroa.05.i.256.i.256.i.256..sroa_idx173 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 256
  %.sroa.05.i.256..sroa.05.i.256..sroa.05.i.256..sroa.05.256..sroa.05.256..sroa.05.256..i = load i64, ptr %.sroa.05.i.256.i.256.i.256..sroa_idx173, align 16, !tbaa !904 ; 2 uses
  %.sroa.022.256..sroa_idx152 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 256
  store i64 %.sroa.05.i.256..sroa.05.i.256..sroa.05.i.256..sroa.05.256..sroa.05.256..sroa.05.256..i, ptr %.sroa.022.256..sroa_idx152, align 16, !tbaa !904
  %.sroa.05.i.264.i.264.i.264..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 264
  %.sroa.05.i.264..sroa.05.i.264..sroa.05.i.264..sroa.05.264..sroa.05.264..sroa.05.264..i = load i8, ptr %.sroa.05.i.264.i.264.i.264..sroa_idx174, align 8, !tbaa !905
  %.sroa.022.264..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 264
  store i8 %.sroa.05.i.264..sroa.05.i.264..sroa.05.i.264..sroa.05.264..sroa.05.264..sroa.05.264..i, ptr %.sroa.022.264..sroa_idx154, align 8, !tbaa !905
  %.sroa.05.i.265.i.265.i.265..sroa_idx175 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 265
  %.sroa.05.i.265..sroa.05.i.265..sroa.05.i.265..sroa.05.265..sroa.05.265..sroa.05.265..i = load i8, ptr %.sroa.05.i.265.i.265.i.265..sroa_idx175, align 1, !tbaa !635 ; 2 uses
  %.sroa.022.265..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 265
  store i8 %.sroa.05.i.265..sroa.05.i.265..sroa.05.i.265..sroa.05.265..sroa.05.265..sroa.05.265..i, ptr %.sroa.022.265..sroa_idx156, align 1, !tbaa !635
  %.sroa.05.i.266.i.266.i.266..sroa_idx176 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 266
  %.sroa.05.i.266..sroa.05.i.266..sroa.05.i.266..sroa.05.266..sroa.05.266..sroa.05.266..i = load i8, ptr %.sroa.05.i.266.i.266.i.266..sroa_idx176, align 2, !tbaa !906
  %.sroa.022.266..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 266
  store i8 %.sroa.05.i.266..sroa.05.i.266..sroa.05.i.266..sroa.05.266..sroa.05.266..sroa.05.266..i, ptr %.sroa.022.266..sroa_idx158, align 2, !tbaa !906
  %i.as = trunc nuw i8 %.sroa.05.i.265..sroa.05.i.265..sroa.05.i.265..sroa.05.265..sroa.05.265..sroa.05.265..i to i1
  %i.at = shl i64 %.sroa.05.i.256..sroa.05.i.256..sroa.05.i.256..sroa.05.256..sroa.05.256..sroa.05.256..i, 3
  %.sink132.i = select i1 %i.as, i64 %i.at, i64 16
  %.sroa.022.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 192
  %.sroa.05.i.192..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(16) %.sroa.022.192..sroa_idx, ptr nonnull align 16 dereferenceable(16) %.sroa.05.i.192..sroa_idx171, i64 %.sink132.i, i1 false)
  %.sroa.022.272..sroa_idx160 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 272
  store i32 %i.an, ptr %.sroa.022.272..sroa_idx160, align 16, !tbaa !910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  store i64 0, ptr %0, align 16, !tbaa !438, !alias.scope !8872
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.022.64..sroa.022.64..sroa.022.64., ptr %i.au, align 16, !tbaa !904, !alias.scope !8872
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.022.72..sroa.022.72..sroa.022.72., ptr %i.av, align 8, !tbaa !905, !alias.scope !8872
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.sroa.022.73..sroa.022.73..sroa.022.73., ptr %i.aw, align 1, !tbaa !635, !alias.scope !8872
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %.sroa.022.74..sroa.022.74..sroa.022.74., ptr %i.ax, align 2, !tbaa !906, !alias.scope !8872
  %i.ay = trunc i8 %.sroa.022.73..sroa.022.73..sroa.022.73. to i1
  %i.az = shl i64 %.sroa.022.64..sroa.022.64..sroa.022.64., 3
  %.sink.i = select i1 %i.ay, i64 %i.az, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(288) %0, ptr nonnull align 16 dereferenceable(288) %.sroa.022, i64 %.sink.i, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.p, ptr %i.ba, align 16, !tbaa !910, !alias.scope !8872
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.bb, align 16, !tbaa !438, !alias.scope !8872
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.022.160..sroa_idx142 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 160
  %.sroa.022.160..sroa.022.160..sroa.022.160..sroa.022.160. = load i64, ptr %.sroa.022.160..sroa_idx142, align 16, !tbaa !904, !noalias !8872 ; 2 uses
  store i64 %.sroa.022.160..sroa.022.160..sroa.022.160..sroa.022.160., ptr %i.bc, align 16, !tbaa !904, !alias.scope !8872
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.022.168..sroa_idx144 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 168
  %.sroa.022.168..sroa.022.168..sroa.022.168..sroa.022.168. = load i8, ptr %.sroa.022.168..sroa_idx144, align 8, !tbaa !905, !noalias !8872
  store i8 %.sroa.022.168..sroa.022.168..sroa.022.168..sroa.022.168., ptr %i.bd, align 8, !tbaa !905, !alias.scope !8872
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 169
  %.sroa.022.169..sroa_idx146 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 169
  %.sroa.022.169..sroa.022.169..sroa.022.169..sroa.022.169. = load i8, ptr %.sroa.022.169..sroa_idx146, align 1, !tbaa !635, !noalias !8872 ; 2 uses
  store i8 %.sroa.022.169..sroa.022.169..sroa.022.169..sroa.022.169., ptr %i.be, align 1, !tbaa !635, !alias.scope !8872
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 170
  %.sroa.022.170..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 170
  %.sroa.022.170..sroa.022.170..sroa.022.170..sroa.022.170. = load i8, ptr %.sroa.022.170..sroa_idx148, align 2, !tbaa !906, !noalias !8872
  store i8 %.sroa.022.170..sroa.022.170..sroa.022.170..sroa.022.170., ptr %i.bf, align 2, !tbaa !906, !alias.scope !8872
  %i.bg = trunc nuw i8 %.sroa.022.169..sroa.022.169..sroa.022.169..sroa.022.169. to i1
  %i.bh = shl i64 %.sroa.022.160..sroa.022.160..sroa.022.160..sroa.022.160., 3
  %.sink.i.i = select i1 %i.bg, i64 %i.bh, i64 16
  %.sroa.022.96..sroa_idx139 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.bb, ptr nonnull align 16 dereferenceable(84) %.sroa.022.96..sroa_idx139, i64 %.sink.i.i, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.ab, ptr %i.bi, align 16, !tbaa !910, !alias.scope !8872
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store i64 0, ptr %i.bj, align 16, !tbaa !438, !alias.scope !8872
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.022.256..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 256
  %.sroa.022.256..sroa.022.256..sroa.022.256..sroa.022.256. = load i64, ptr %.sroa.022.256..sroa_idx153, align 16, !tbaa !904, !noalias !8872 ; 2 uses
  store i64 %.sroa.022.256..sroa.022.256..sroa.022.256..sroa.022.256., ptr %i.bk, align 16, !tbaa !904, !alias.scope !8872
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.022.264..sroa_idx155 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 264
  %.sroa.022.264..sroa.022.264..sroa.022.264..sroa.022.264. = load i8, ptr %.sroa.022.264..sroa_idx155, align 8, !tbaa !905, !noalias !8872
  store i8 %.sroa.022.264..sroa.022.264..sroa.022.264..sroa.022.264., ptr %i.bl, align 8, !tbaa !905, !alias.scope !8872
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 265
  %.sroa.022.265..sroa_idx157 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 265
  %.sroa.022.265..sroa.022.265..sroa.022.265..sroa.022.265. = load i8, ptr %.sroa.022.265..sroa_idx157, align 1, !tbaa !635, !noalias !8872 ; 2 uses
  store i8 %.sroa.022.265..sroa.022.265..sroa.022.265..sroa.022.265., ptr %i.bm, align 1, !tbaa !635, !alias.scope !8872
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 266
  %.sroa.022.266..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 266
  %.sroa.022.266..sroa.022.266..sroa.022.266..sroa.022.266. = load i8, ptr %.sroa.022.266..sroa_idx159, align 2, !tbaa !906, !noalias !8872
  store i8 %.sroa.022.266..sroa.022.266..sroa.022.266..sroa.022.266., ptr %i.bn, align 2, !tbaa !906, !alias.scope !8872
  %i.bo = trunc nuw i8 %.sroa.022.265..sroa.022.265..sroa.022.265..sroa.022.265. to i1
  %i.bp = shl i64 %.sroa.022.256..sroa.022.256..sroa.022.256..sroa.022.256., 3
  %.sink5.i.i = select i1 %i.bo, i64 %i.bp, i64 16
  %.sroa.022.192..sroa_idx150 = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.bj, ptr nonnull align 16 dereferenceable(84) %.sroa.022.192..sroa_idx150, i64 %.sink5.i.i, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.an, ptr %i.bq, align 16, !tbaa !910, !alias.scope !8872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022)
  %i.br = load i8, ptr %i.ag, align 1, !tbaa !635, !range !391, !noundef !392
  %i.bs = or i8 %i.br, %i.aj
  %or.cond.i.i.i.not = icmp eq i8 %i.bs, 0
  br i1 %or.cond.i.i.i.not, label %bb.m, label %_ZN4CGAL9cpp_floatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load i64, ptr %6, align 16
  %i.bw = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bw) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bx = load i8, ptr %i.u, align 1, !tbaa !635, !range !391, !noundef !392
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i8, ptr %i.w, align 2, !range !391
  %i.ca = trunc nuw i8 %i.bz to i1
  %or.cond.i.i.i11 = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond.i.i.i11, label %_ZN4CGAL9cpp_floatD2Ev.exit12, label %bb.n

bb.n:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load i64, ptr %5, align 16
  %i.ce = shl i64 %i.cd, 3
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.ce) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit12

_ZN4CGAL9cpp_floatD2Ev.exit12:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cf = load i8, ptr %i.i, align 1, !tbaa !635, !range !391, !noundef !392
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = load i8, ptr %i.k, align 2, !range !391
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond.i.i.i13 = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i.i.i13, label %_ZN4CGAL9cpp_floatD2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit12
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load i64, ptr %4, align 16
  %i.cm = shl i64 %i.cl, 3
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cm) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit14

_ZN4CGAL9cpp_floatD2Ev.exit14:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit12, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.p:                                             ; preds = %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit18

bb.q:                                             ; preds = %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !635, !range !391, !noundef !392
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.ct = load i8, ptr %i.cs, align 2, !range !391
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond.i.i.i17 = select i1 %i.cr, i1 true, i1 %i.cu
  br i1 %or.cond.i.i.i17, label %_ZN4CGAL9cpp_floatD2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i64, ptr %5, align 16
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cy) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit18

_ZN4CGAL9cpp_floatD2Ev.exit18:                    ; preds = %bb.r, %bb.q, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.p ], [ %i.co, %bb.q ], [ %i.co, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !635, !range !391, !noundef !392
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.dd = load i8, ptr %i.dc, align 2, !range !391
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i.i.i19 = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond.i.i.i19, label %_ZN4CGAL9cpp_floatD2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i64, ptr %4, align 16
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.di) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit20

_ZN4CGAL9cpp_floatD2Ev.exit20:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL7PlaneC3INS_16Simple_cartesianINS_9cpp_floatEEEEC2ERKNS_7Point_3IS3_EES8_S8_(ptr noundef nonnull align 16 dereferenceable(384) %0, ptr noundef nonnull align 16 dereferenceable(288) %1, ptr noundef nonnull align 16 dereferenceable(288) %2, ptr noundef nonnull align 16 dereferenceable(288) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::PlaneC3.1251", align 16 ; 21 uses
  store i64 0, ptr %0, align 16, !tbaa !438
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.a, align 16, !tbaa !904
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.b, align 8, !tbaa !905
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %i.c, align 1, !tbaa !635
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 0, ptr %i.d, align 2, !tbaa !906
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.e, align 16, !tbaa !910
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.ptr.1.i, align 16, !tbaa !438
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 1, ptr %i.f, align 16, !tbaa !904
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.g, align 8, !tbaa !905
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 1, ptr %i.h, align 1, !tbaa !635
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 0, ptr %i.i, align 2, !tbaa !906
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.j, align 16, !tbaa !910
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %.ptr.2.i, align 16, !tbaa !438
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 1, ptr %i.k, align 16, !tbaa !904
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.l, align 8, !tbaa !905
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 1, ptr %i.m, align 1, !tbaa !635
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 266
  store i8 0, ptr %i.n, align 2, !tbaa !906
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.o, align 16, !tbaa !910
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %.ptr.3.i, align 16, !tbaa !438
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
end_hunk_0
