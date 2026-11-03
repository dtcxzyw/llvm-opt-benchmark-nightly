Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/closest_facet?download=true
inline.NumInlined: 12983
inline.NumDeleted: 3806
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5boost14multiprecision8backends18multiply_karatsubaILm512ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE:bb.a
  %i.jr = load i64, ptr %13, align 16
  %i.js = shl i64 %i.jr, 3
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.js) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56, %bb.i
  %.pn = phi { ptr, i32 } [ %i.jl, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56 ], [ %i.ef, %bb.i ]
  %i.jt = load i8, ptr %i.dl, align 1, !tbaa !282, !range !70, !noundef !71
  %i.ju = trunc nuw i8 %i.jt to i1
  %i.jv = load i8, ptr %i.dm, align 2, !range !70
  %i.jw = trunc nuw i8 %i.jv to i1
  %or.cond.i53 = select i1 %i.ju, i1 true, i1 %i.jw
  br i1 %or.cond.i53, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jx = load ptr, ptr %i.di, align 8
  %i.jy = load i64, ptr %12, align 16
  %i.jz = shl i64 %i.jy, 3
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.jz) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ka = load i8, ptr %i.dc, align 1, !tbaa !282, !range !70, !noundef !71
  %i.kb = trunc nuw i8 %i.ka to i1
  %i.kc = load i8, ptr %i.dd, align 2, !range !70
  %i.kd = trunc nuw i8 %i.kc to i1
  %or.cond.i51 = select i1 %i.kb, i1 true, i1 %i.kd
  br i1 %or.cond.i51, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52, label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54
  %i.ke = load ptr, ptr %i.cz, align 8
  %i.kf = load i64, ptr %11, align 16
  %i.kg = shl i64 %i.kf, 3
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kg) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.kh = load i8, ptr %i.cr, align 1, !tbaa !282, !range !70, !noundef !71
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = load i8, ptr %i.cs, align 2, !range !70
  %i.kk = trunc nuw i8 %i.kj to i1
  %or.cond.i49 = select i1 %i.ki, i1 true, i1 %i.kk
  br i1 %or.cond.i49, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52
  %i.kl = load ptr, ptr %i.co, align 8
  %i.km = load i64, ptr %10, align 16
  %i.kn = shl i64 %i.km, 3
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kn) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ko = load i8, ptr %i.ck, align 1, !tbaa !282, !range !70, !noundef !71
  %i.kp = trunc nuw i8 %i.ko to i1
  %i.kq = load i8, ptr %i.cl, align 2, !range !70
  %i.kr = trunc nuw i8 %i.kq to i1
  %or.cond.i47 = select i1 %i.kp, i1 true, i1 %i.kr
  br i1 %or.cond.i47, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50
  %i.ks = load ptr, ptr %i.ch, align 8
  %i.kt = load i64, ptr %9, align 16
  %i.ku = shl i64 %i.kt, 3
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.ku) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.kv = load i8, ptr %i.cc, align 1, !tbaa !282, !range !70, !noundef !71
  %i.kw = trunc nuw i8 %i.kv to i1
  %i.kx = load i8, ptr %i.cd, align 2, !range !70
  %i.ky = trunc nuw i8 %i.kx to i1
  %or.cond.i45 = select i1 %i.kw, i1 true, i1 %i.ky
  br i1 %or.cond.i45, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48
  %i.kz = load ptr, ptr %i.bz, align 8
  %i.la = load i64, ptr %8, align 16
  %i.lb = shl i64 %i.la, 3
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lb) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.lc = load i8, ptr %i.bl, align 1, !tbaa !282, !range !70, !noundef !71
  %i.ld = trunc nuw i8 %i.lc to i1
  %i.le = load i8, ptr %i.bm, align 2, !range !70
  %i.lf = trunc nuw i8 %i.le to i1
  %or.cond.i43 = select i1 %i.ld, i1 true, i1 %i.lf
  br i1 %or.cond.i43, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46
  %i.lg = load ptr, ptr %i.bi, align 8
  %i.lh = load i64, ptr %7, align 16
  %i.li = shl i64 %i.lh, 3
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.li) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.lj = load i8, ptr %i.ay, align 1, !tbaa !282, !range !70, !noundef !71
  %i.lk = trunc nuw i8 %i.lj to i1
  %i.ll = load i8, ptr %i.az, align 2, !range !70
  %i.lm = trunc nuw i8 %i.ll to i1
  %or.cond.i41 = select i1 %i.lk, i1 true, i1 %i.lm
  br i1 %or.cond.i41, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42, label %bb.al

bb.al:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44
  %i.ln = load ptr, ptr %i.av, align 8
  %i.lo = load i64, ptr %6, align 16
  %i.lp = shl i64 %i.lo, 3
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lp) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.lq = load i8, ptr %i.al, align 1, !tbaa !282, !range !70, !noundef !71
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = load i8, ptr %i.am, align 2, !range !70
  %i.lt = trunc nuw i8 %i.ls to i1
  %or.cond.i39 = select i1 %i.lr, i1 true, i1 %i.lt
  br i1 %or.cond.i39, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40, label %bb.am

bb.am:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42
  %i.lu = load ptr, ptr %i.ai, align 8
  %i.lv = load i64, ptr %5, align 16
  %i.lw = shl i64 %i.lv, 3
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lw) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.lx = load i8, ptr %i.u, align 1, !tbaa !282, !range !70, !noundef !71
  %i.ly = trunc nuw i8 %i.lx to i1
  %i.lz = load i8, ptr %i.v, align 2, !range !70
  %i.ma = trunc nuw i8 %i.lz to i1
  %or.cond.i = select i1 %i.ly, i1 true, i1 %i.ma
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40
  %i.mb = load ptr, ptr %i.r, align 8
  %i.mc = load i64, ptr %4, align 16
  %i.md = shl i64 %i.mc, 3
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.md) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi1ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmRbE0_clEmmS2J_ENKUlRKNS5_7Plane_3ISP_EEE_clES2O_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1293, !nonnull !71, !align !122 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not53 = icmp eq ptr %i.b, %i.d
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i41 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.122, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.021.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1294, !nonnull !71, !align !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %1, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %8 = load <8 x double>, ptr %i.n, align 16, !tbaa !103, !noalias !1295 ; 2 uses
  %9 = fneg <8 x double> %8                       ; 5 uses
  %10 = shufflevector <8 x double> %9, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %11 = shufflevector <8 x double> %8, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.o = fcmp oeq <4 x double> %11, %10
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <8 x double> %9, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !1295
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <8 x double> %9, i64 2
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1295
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <8 x double> %9, i64 4
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1295
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <8 x double> %9, i64 6
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1295
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !304, !alias.scope !1295
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !102  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !103, !noalias !1296
  %i.ac = load double, ptr %i.z, align 16, !tbaa !103, !noalias !1296
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !103, !noalias !1296
  %i.ai = load double, ptr %i.af, align 16, !tbaa !103, !noalias !1296
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !103, !noalias !1296
  %i.ao = load double, ptr %i.al, align 16, !tbaa !103, !noalias !1296
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !1296
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !1296
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !1296
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !176, !alias.scope !1297
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.av = icmp eq i32 %.1.i.i, 0
  %or.cond = select i1 %i.av, i1 %.021.lcssa, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.0.lcssa, i1 false
  %i.aw = icmp eq i32 %.1.i.i, 1
  %or.cond5 = and i1 %.021.lcssa, %i.aw
  %or.cond24 = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %or.cond24, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.056 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.02155 = phi i64 [ 0, %.lr.ph ], [ %.122, %bb.t ] ; 3 uses
  %.sroa.048.054 = phi ptr [ %i.b, %.lr.ph ], [ %i.ch, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ax = load ptr, ptr %1, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %12 = load <8 x double>, ptr %i.az, align 16, !tbaa !103, !noalias !1298 ; 2 uses
  %13 = fneg <8 x double> %12                     ; 5 uses
  %14 = shufflevector <8 x double> %13, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %15 = shufflevector <8 x double> %12, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fcmp oeq <4 x double> %15, %14
  %i.bb = freeze <4 x i1> %i.ba
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %i.bd = icmp eq i4 %i.bc, -1
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

bb.k:                                             ; preds = %bb.i
  %i.bf = extractelement <8 x double> %13, i64 0
  store double %i.bf, ptr %2, align 8, !alias.scope !1298
  %i.bg = extractelement <8 x double> %13, i64 2
  store double %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i41, align 8, !alias.scope !1298
  %i.bh = extractelement <8 x double> %13, i64 4
  store double %i.bh, ptr %.sroa.5.0..sroa_idx.i.i.i42, align 8, !alias.scope !1298
  %i.bi = extractelement <8 x double> %13, i64 6
  store double %i.bi, ptr %.sroa.6.0..sroa_idx.i.i.i43, align 8, !alias.scope !1298
  store i8 1, ptr %i.e, align 8, !tbaa !304, !alias.scope !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bj = load ptr, ptr %.sroa.048.054, align 8, !tbaa !102 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !103, !noalias !1299
  %i.bn = load double, ptr %i.bk, align 16, !tbaa !103, !noalias !1299
  %i.bo = fneg double %i.bn                       ; 2 uses
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !103, !noalias !1299
  %i.bt = load double, ptr %i.bq, align 16, !tbaa !103, !noalias !1299
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = fcmp oeq double %i.bs, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !103, !noalias !1299
  %i.bz = load double, ptr %i.bw, align 16, !tbaa !103, !noalias !1299
  %i.ca = fneg double %i.bz                       ; 2 uses
  %i.cb = fcmp oeq double %i.by, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cc = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bo, ptr %3, align 8, !alias.scope !1299
  store double %i.bu, ptr %.sroa.4.0..sroa_idx.i7.i.i45, align 8, !alias.scope !1299
  store double %i.ca, ptr %.sroa.5.0..sroa_idx.i8.i.i46, align 8, !alias.scope !1299
  store i8 1, ptr %i.f, align 8, !tbaa !176, !alias.scope !1300
  %i.cd = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i44 = phi i32 [ %i.cd, %bb.o ], [ %i.cc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47: ; preds = %bb.j, %bb.p
  %.1.i.i40 = phi i32 [ %.0.i.i44, %bb.p ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %.1.i.i40, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.ce = add i64 %.02155, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cf = add i64 %.056, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.111, ptr %i.cg, align 16, !tbaa !239
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %.122 = phi i64 [ %i.ce, %bb.q ], [ %.02155, %bb.r ], [ %.02155, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %.1 = phi i64 [ %.056, %bb.q ], [ %i.cf, %bb.r ], [ %.056, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.048.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ci = icmp eq i32 %.1.i.i, -1
  %i.cj = and i1 %.0.lcssa, %i.ci
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %.023 = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.cj, %bb.u ]
  ret i1 %.023
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !102 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #22, !inline_history !1301
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.g, -1
  store atomic i32 %i.l, ptr %i.f monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw add ptr %i.f, i32 -1 release, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.o = load ptr, ptr %.05.i.i, align 8, !tbaa !102 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #22, !inline_history !1301
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !169
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !168
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #37
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !178 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #37
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS3_INS_5BlockIKNS4_ISK_Lin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEEENS0_9assign_opISK_SK_EELi0EEELi1ELi3EE3runERSU_:bb.a
_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS3_INS_5BlockIKNS4_ISK_Lin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEEENS0_9assign_opISK_SK_EELi0EEELi2ELi3EE3runERSU_.exit: ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i.i, %bb.w, %bb.x, %bb.z, %bb.aa
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal11plain_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi3ELi1ELi16EED2Ev(ptr noundef nonnull align 16 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !102 ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw add ptr %i.d, i32 -1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !102 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !102 ; 4 uses
  %.not.i.i.1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.1, label %_ZN4CGAL6HandleD2Ev.exit.1, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.1 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.1, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i32 %i.v, -1
  store atomic i32 %i.x, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.1

bb.m:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit.1

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw add ptr %i.u, i32 -1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit.1

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.r, align 16, !tbaa !102 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit.1

_ZN4CGAL6HandleD2Ev.exit.1:                       ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %_ZN4CGAL6HandleD2Ev.exit
  %i.ai = load ptr, ptr %0, align 16, !tbaa !102  ; 4 uses
  %.not.i.i.2 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.2, label %_ZN4CGAL6HandleD2Ev.exit.2, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit.1
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.2 = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1                    ; 2 uses
  br i1 %.not.i.i.i.2, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = add nsw i32 %i.al, -1
  store atomic i32 %i.an, ptr %i.ak monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.2

bb.u:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit.2

bb.v:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = atomicrmw add ptr %i.ak, i32 -1 release, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.x, label %_ZN4CGAL6HandleD2Ev.exit.2

bb.x:                                             ; preds = %bb.w, %bb.v
  fence acquire
  %i.at = load ptr, ptr %0, align 16, !tbaa !102  ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4CGAL6HandleD2Ev.exit.2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.at) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit.2

_ZN4CGAL6HandleD2Ev.exit.2:                       ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %_ZN4CGAL6HandleD2Ev.exit.1
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmRbE0_clEmmS2J_ENKUlRKNS5_7Plane_3ISP_EEE_clES2O_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1705, !nonnull !71, !align !122 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not53 = icmp eq ptr %i.b, %i.d
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i41 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.122, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.021.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1706, !nonnull !71, !align !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %1, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %8 = load <8 x double>, ptr %i.n, align 16, !tbaa !103, !noalias !1707 ; 2 uses
  %9 = fneg <8 x double> %8                       ; 5 uses
  %10 = shufflevector <8 x double> %9, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %11 = shufflevector <8 x double> %8, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.o = fcmp oeq <4 x double> %11, %10
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <8 x double> %9, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !1707
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <8 x double> %9, i64 2
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1707
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <8 x double> %9, i64 4
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1707
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <8 x double> %9, i64 6
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1707
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !304, !alias.scope !1707
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !102  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !103, !noalias !1708
  %i.ac = load double, ptr %i.z, align 16, !tbaa !103, !noalias !1708
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !103, !noalias !1708
  %i.ai = load double, ptr %i.af, align 16, !tbaa !103, !noalias !1708
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !103, !noalias !1708
  %i.ao = load double, ptr %i.al, align 16, !tbaa !103, !noalias !1708
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !1708
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !1708
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !1708
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !176, !alias.scope !1709
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.av = icmp eq i32 %.1.i.i, 0
  %or.cond = select i1 %i.av, i1 %.021.lcssa, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.0.lcssa, i1 false
  %i.aw = icmp eq i32 %.1.i.i, 1
  %or.cond5 = and i1 %.021.lcssa, %i.aw
  %or.cond24 = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %or.cond24, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.056 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.02155 = phi i64 [ 0, %.lr.ph ], [ %.122, %bb.t ] ; 3 uses
  %.sroa.048.054 = phi ptr [ %i.b, %.lr.ph ], [ %i.ch, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ax = load ptr, ptr %1, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %12 = load <8 x double>, ptr %i.az, align 16, !tbaa !103, !noalias !1710 ; 2 uses
  %13 = fneg <8 x double> %12                     ; 5 uses
  %14 = shufflevector <8 x double> %13, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %15 = shufflevector <8 x double> %12, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fcmp oeq <4 x double> %15, %14
  %i.bb = freeze <4 x i1> %i.ba
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %i.bd = icmp eq i4 %i.bc, -1
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

bb.k:                                             ; preds = %bb.i
  %i.bf = extractelement <8 x double> %13, i64 0
  store double %i.bf, ptr %2, align 8, !alias.scope !1710
  %i.bg = extractelement <8 x double> %13, i64 2
  store double %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i41, align 8, !alias.scope !1710
  %i.bh = extractelement <8 x double> %13, i64 4
  store double %i.bh, ptr %.sroa.5.0..sroa_idx.i.i.i42, align 8, !alias.scope !1710
  %i.bi = extractelement <8 x double> %13, i64 6
  store double %i.bi, ptr %.sroa.6.0..sroa_idx.i.i.i43, align 8, !alias.scope !1710
  store i8 1, ptr %i.e, align 8, !tbaa !304, !alias.scope !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bj = load ptr, ptr %.sroa.048.054, align 8, !tbaa !102 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !103, !noalias !1711
  %i.bn = load double, ptr %i.bk, align 16, !tbaa !103, !noalias !1711
  %i.bo = fneg double %i.bn                       ; 2 uses
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !103, !noalias !1711
  %i.bt = load double, ptr %i.bq, align 16, !tbaa !103, !noalias !1711
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = fcmp oeq double %i.bs, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !103, !noalias !1711
  %i.bz = load double, ptr %i.bw, align 16, !tbaa !103, !noalias !1711
  %i.ca = fneg double %i.bz                       ; 2 uses
  %i.cb = fcmp oeq double %i.by, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cc = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bo, ptr %3, align 8, !alias.scope !1711
  store double %i.bu, ptr %.sroa.4.0..sroa_idx.i7.i.i45, align 8, !alias.scope !1711
  store double %i.ca, ptr %.sroa.5.0..sroa_idx.i8.i.i46, align 8, !alias.scope !1711
  store i8 1, ptr %i.f, align 8, !tbaa !176, !alias.scope !1712
  %i.cd = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i44 = phi i32 [ %i.cd, %bb.o ], [ %i.cc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47: ; preds = %bb.j, %bb.p
  %.1.i.i40 = phi i32 [ %.0.i.i44, %bb.p ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %.1.i.i40, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.ce = add i64 %.02155, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cf = add i64 %.056, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.111, ptr %i.cg, align 16, !tbaa !239
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %.122 = phi i64 [ %i.ce, %bb.q ], [ %.02155, %bb.r ], [ %.02155, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %.1 = phi i64 [ %.056, %bb.q ], [ %i.cf, %bb.r ], [ %.056, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.048.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ci = icmp eq i32 %.1.i.i, -1
  %i.cj = and i1 %.0.lcssa, %i.ci
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %.023 = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.cj, %bb.u ]
  ret i1 %.023
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPiS3_IiSaIiEEEEZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELi1ELi0ELin1ELi1EEENSG_ISW_Lin1ELi3ELi0ELin1ELi3EEESZ_SZ_SZ_NSH_5EpeckESZ_SZ_EEvRKNSF_10MatrixBaseIT_EERKNS12_IT0_EERKNS12_IT1_EERKNS12_IT2_EERKNS12_IT3_EERKNS12_IT4_EERKNS12_IT5_EERKS3_IS5_SaIS5_EES1Y_RKNSH_9AABB_treeINSH_13AABB_traits_3IT6_NSH_25AABB_triangle_primitive_3IS21_NS3_INS21_10Triangle_3ESaIS23_EE8iteratorESt17integral_constantIbLb0EEEENSH_7DefaultEEEEERKS25_RKS3_IbSaIbEERNSF_15PlainObjectBaseIT7_EERNS2L_IT8_EEENKUlmmmmRbE_clEmmmmS2S_EUlmE_ES17_S13_S13_S17_S1B_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%class.anon.527) align 8 %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not7 = icmp eq ptr %0, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1717, !nonnull !71, !align !122
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1718, !nonnull !71, !align !122
  %i.e = load i64, ptr %i.d, align 8, !tbaa !115  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1719, !nonnull !71, !align !122
  %i.h = load i64, ptr %i.g, align 8, !tbaa !115  ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1721, !nonnull !71 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120, !noalias !1722
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !80 ; 2 uses
  %.idx.i.i = shl nsw i64 %.pre.i.i, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit
  %.sroa.0.09 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.03.08 = phi ptr [ %0, %.lr.ph ], [ %i.af, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit ] ; 2 uses
  %i.l = load i64, ptr %.sroa.03.08, align 8, !tbaa !115 ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ne i64 %i.e, %i.o                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.pre.i.i
  %.pre63.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !118
  %i.q = sext i32 %.pre63.i.i to i64              ; 2 uses
  %i.r = icmp ne i64 %i.h, %i.q                   ; 2 uses
  %or.cond67.not.i.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond67.not.i.i, label %._crit_edge.i.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmE_clEmmm.exit.thread.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.s = icmp eq i64 %i.e, %i.q                   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp eq i64 %i.h, %i.v                   ; 2 uses
  %or.cond.i = select i1 %i.s, i1 %i.w, i1 false
  br i1 %or.cond.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, label %._crit_edge64.i.i

._crit_edge64.i.i:                                ; preds = %._crit_edge.i.i
  %i.x = icmp eq i64 %i.e, %i.v                   ; 2 uses
  %i.y = icmp eq i64 %i.h, %i.o                   ; 2 uses
  %or.cond.i.i = and i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge64.i.i
  %brmerge.not62.i.i = and i1 %i.y, %i.s
  %.not.i = xor i1 %i.r, true
  %brmerge54.not.i.i = and i1 %i.x, %.not.i
  %or.cond59.i.i = or i1 %brmerge.not62.i.i, %brmerge54.not.i.i
  %or.cond59.not.i.i = xor i1 %or.cond59.i.i, true
  %.not10 = xor i1 %i.w, true
  %brmerge57.i.i = or i1 %i.p, %.not10
  %or.cond60.i.i = and i1 %brmerge57.i.i, %or.cond59.not.i.i
  br i1 %or.cond60.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.114)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #22
  resume { ptr, i32 } %i.aa

_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmE_clEmmm.exit.thread.i: ; preds = %._crit_edge64.i.i, %._crit_edge.i.i, %bb.b
  %i.ab = xor i64 %i.l, -1
  br label %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = add i64 %i.l, 1
  br label %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit

_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit: ; preds = %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.g ], [ %i.ab, %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmE_clEmmm.exit.thread.i ]
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %.sroa.0.09, align 4, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1715

._crit_edge:                                      ; preds = %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ag, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmmmmRbE_clEmmmmS2J_ENKUlmE_clEm.exit ]
  ret ptr %.sroa.0.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EEENKUlmRKNS5_7Point_3ISP_EEE_clEmS2M_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
thread-pre-split.i.i.i.i.i.i.i:
  %3 = alloca %"class.CGAL::Static_filtered_predicate.493", align 1 ; 3 uses
  %4 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %5 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %7 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %8 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %9 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %10 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.as = add nsw i32 %i.an, -1
  store atomic i32 %i.as, ptr %i.m monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.l:                                             ; preds = %bb.h
  br i1 %i.ao, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = atomicrmw add ptr %i.m, i32 -1 release, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.n, label %_ZN4CGAL6HandleD2Ev.exit

bb.n:                                             ; preds = %bb.l, %bb.m
  fence acquire
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit, %bb.j, %bb.k, %bb.m, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS3_INS_5BlockIKNS4_ISK_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISK_SK_EELi0EEELi1ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !328, !nonnull !71, !align !122
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329, !nonnull !71, !align !122 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210, !noalias !1744
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !211, !noalias !1744
  %i.i = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102, !noalias !1744 ; 8 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103, !noalias !1744
  %.not.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i:         ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 1 monotonic, align 4, !noalias !1744 ; 0 uses
  %i.n = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.d

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i:  ; preds = %bb.a
  %i.p = load atomic i32, ptr %i.l monotonic, align 4, !noalias !1744
  %i.q = add nsw i32 %i.p, 1
  store atomic i32 %i.q, ptr %i.l monotonic, align 4, !noalias !1744
  %i.r = load atomic i32, ptr %i.l monotonic, align 4
  %i.s = add nsw i32 %i.r, 1
  store atomic i32 %i.s, ptr %i.l monotonic, align 4
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !102  ; 4 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i.i.i, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !105
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #22, !inline_history !31
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.c:                                             ; preds = %.thread.i.i.i.i.i
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.d:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = atomicrmw add ptr %i.ab, i32 -1 release, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.f, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  fence acquire
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !102 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) #22, !inline_history !31
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i: ; preds = %bb.c, %bb.b, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !102
  br label %bb.h

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !102
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  %i.am = load atomic i32, ptr %i.l monotonic, align 4 ; 2 uses
  %i.an = icmp eq i32 %i.am, 1                    ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #22, !inline_history !32
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.am, -1
  store atomic i32 %i.ar, ptr %i.l monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl.exit

bb.l:                                             ; preds = %bb.h
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = atomicrmw add ptr %i.l, i32 -1 release, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.n, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  fence acquire
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #22, !inline_history !32
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl.exit: ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, %bb.j, %bb.k, %bb.m, %bb.n
  tail call void @_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELi1ELi3ELi1ELi1ELi3EEEEENS2_INS_5BlockIKNS3_ISJ_Lin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS0_9assign_opISJ_SJ_EELi0EE11assignCoeffEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 2)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmRbE0_clEmmS2I_ENKUlRKNS5_7Plane_3ISO_EEE_clES2N_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1758, !nonnull !71, !align !122 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not53 = icmp eq ptr %i.b, %i.d
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i41 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.122, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.021.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1759, !nonnull !71, !align !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %1, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %8 = load <8 x double>, ptr %i.n, align 16, !tbaa !103, !noalias !1760 ; 2 uses
  %9 = fneg <8 x double> %8                       ; 5 uses
  %10 = shufflevector <8 x double> %9, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %11 = shufflevector <8 x double> %8, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.o = fcmp oeq <4 x double> %11, %10
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <8 x double> %9, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !1760
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <8 x double> %9, i64 2
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1760
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <8 x double> %9, i64 4
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1760
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <8 x double> %9, i64 6
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1760
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !304, !alias.scope !1760
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !102  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !103, !noalias !1761
  %i.ac = load double, ptr %i.z, align 16, !tbaa !103, !noalias !1761
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !103, !noalias !1761
  %i.ai = load double, ptr %i.af, align 16, !tbaa !103, !noalias !1761
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !103, !noalias !1761
  %i.ao = load double, ptr %i.al, align 16, !tbaa !103, !noalias !1761
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !1761
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !1761
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !1761
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !176, !alias.scope !1762
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.av = icmp eq i32 %.1.i.i, 0
  %or.cond = select i1 %i.av, i1 %.021.lcssa, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.0.lcssa, i1 false
  %i.aw = icmp eq i32 %.1.i.i, 1
  %or.cond5 = and i1 %.021.lcssa, %i.aw
  %or.cond24 = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %or.cond24, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.056 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.02155 = phi i64 [ 0, %.lr.ph ], [ %.122, %bb.t ] ; 3 uses
  %.sroa.048.054 = phi ptr [ %i.b, %.lr.ph ], [ %i.ch, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ax = load ptr, ptr %1, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %12 = load <8 x double>, ptr %i.az, align 16, !tbaa !103, !noalias !1763 ; 2 uses
  %13 = fneg <8 x double> %12                     ; 5 uses
  %14 = shufflevector <8 x double> %13, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %15 = shufflevector <8 x double> %12, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fcmp oeq <4 x double> %15, %14
  %i.bb = freeze <4 x i1> %i.ba
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %i.bd = icmp eq i4 %i.bc, -1
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

bb.k:                                             ; preds = %bb.i
  %i.bf = extractelement <8 x double> %13, i64 0
  store double %i.bf, ptr %2, align 8, !alias.scope !1763
  %i.bg = extractelement <8 x double> %13, i64 2
  store double %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i41, align 8, !alias.scope !1763
  %i.bh = extractelement <8 x double> %13, i64 4
  store double %i.bh, ptr %.sroa.5.0..sroa_idx.i.i.i42, align 8, !alias.scope !1763
  %i.bi = extractelement <8 x double> %13, i64 6
  store double %i.bi, ptr %.sroa.6.0..sroa_idx.i.i.i43, align 8, !alias.scope !1763
  store i8 1, ptr %i.e, align 8, !tbaa !304, !alias.scope !1763
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bj = load ptr, ptr %.sroa.048.054, align 8, !tbaa !102 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !103, !noalias !1764
  %i.bn = load double, ptr %i.bk, align 16, !tbaa !103, !noalias !1764
  %i.bo = fneg double %i.bn                       ; 2 uses
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !103, !noalias !1764
  %i.bt = load double, ptr %i.bq, align 16, !tbaa !103, !noalias !1764
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = fcmp oeq double %i.bs, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !103, !noalias !1764
  %i.bz = load double, ptr %i.bw, align 16, !tbaa !103, !noalias !1764
  %i.ca = fneg double %i.bz                       ; 2 uses
  %i.cb = fcmp oeq double %i.by, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cc = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bo, ptr %3, align 8, !alias.scope !1764
  store double %i.bu, ptr %.sroa.4.0..sroa_idx.i7.i.i45, align 8, !alias.scope !1764
  store double %i.ca, ptr %.sroa.5.0..sroa_idx.i8.i.i46, align 8, !alias.scope !1764
  store i8 1, ptr %i.f, align 8, !tbaa !176, !alias.scope !1765
  %i.cd = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i44 = phi i32 [ %i.cd, %bb.o ], [ %i.cc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47: ; preds = %bb.j, %bb.p
  %.1.i.i40 = phi i32 [ %.0.i.i44, %bb.p ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %.1.i.i40, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.ce = add i64 %.02155, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cf = add i64 %.056, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.111, ptr %i.cg, align 16, !tbaa !239
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %.122 = phi i64 [ %i.ce, %bb.q ], [ %.02155, %bb.r ], [ %.02155, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %.1 = phi i64 [ %.056, %bb.q ], [ %i.cf, %bb.r ], [ %.056, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.048.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ci = icmp eq i32 %.1.i.i, -1
  %i.cj = and i1 %.0.lcssa, %i.ci
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %.023 = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.cj, %bb.u ]
  ret i1 %.023
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPiS3_IiSaIiEEEEZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELi1ELi0ELin1ELi1EEESX_SZ_SZ_SZ_NSH_5EpeckESZ_SZ_EEvRKNSF_10MatrixBaseIT_EERKNS11_IT0_EERKNS11_IT1_EERKNS11_IT2_EERKNS11_IT3_EERKNS11_IT4_EERKNS11_IT5_EERKS3_IS5_SaIS5_EES1X_RKNSH_9AABB_treeINSH_13AABB_traits_3IT6_NSH_25AABB_triangle_primitive_3IS20_NS3_INS20_10Triangle_3ESaIS22_EE8iteratorESt17integral_constantIbLb0EEEENSH_7DefaultEEEEERKS24_RKS3_IbSaIbEERNSF_15PlainObjectBaseIT7_EERNS2K_IT8_EEENKUlmmmmRbE_clEmmmmS2R_EUlmE_ES16_S12_S12_S16_S1A_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%class.anon.551) align 8 %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not7 = icmp eq ptr %0, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1770, !nonnull !71, !align !122
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1771, !nonnull !71, !align !122
  %i.e = load i64, ptr %i.d, align 8, !tbaa !115  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1772, !nonnull !71, !align !122
  %i.h = load i64, ptr %i.g, align 8, !tbaa !115  ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1774, !nonnull !71 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120, !noalias !1775
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !80 ; 2 uses
  %.idx.i.i = shl nsw i64 %.pre.i.i, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit
  %.sroa.0.09 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.03.08 = phi ptr [ %0, %.lr.ph ], [ %i.af, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit ] ; 2 uses
  %i.l = load i64, ptr %.sroa.03.08, align 8, !tbaa !115 ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ne i64 %i.e, %i.o                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.pre.i.i
  %.pre63.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !118
  %i.q = sext i32 %.pre63.i.i to i64              ; 2 uses
  %i.r = icmp ne i64 %i.h, %i.q                   ; 2 uses
  %or.cond67.not.i.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond67.not.i.i, label %._crit_edge.i.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.s = icmp eq i64 %i.e, %i.q                   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp eq i64 %i.h, %i.v                   ; 2 uses
  %or.cond.i = select i1 %i.s, i1 %i.w, i1 false
  br i1 %or.cond.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, label %._crit_edge64.i.i

._crit_edge64.i.i:                                ; preds = %._crit_edge.i.i
  %i.x = icmp eq i64 %i.e, %i.v                   ; 2 uses
  %i.y = icmp eq i64 %i.h, %i.o                   ; 2 uses
  %or.cond.i.i = and i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge64.i.i
  %brmerge.not62.i.i = and i1 %i.y, %i.s
  %.not.i = xor i1 %i.r, true
  %brmerge54.not.i.i = and i1 %i.x, %.not.i
  %or.cond59.i.i = or i1 %brmerge.not62.i.i, %brmerge54.not.i.i
  %or.cond59.not.i.i = xor i1 %or.cond59.i.i, true
  %.not10 = xor i1 %i.w, true
  %brmerge57.i.i = or i1 %i.p, %.not10
  %or.cond60.i.i = and i1 %brmerge57.i.i, %or.cond59.not.i.i
  br i1 %or.cond60.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.114)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #22
  resume { ptr, i32 } %i.aa

_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i: ; preds = %._crit_edge64.i.i, %._crit_edge.i.i, %bb.b
  %i.ab = xor i64 %i.l, -1
  br label %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = add i64 %i.l, 1
  br label %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit

_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit: ; preds = %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.g ], [ %i.ab, %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i ]
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %.sroa.0.09, align 4, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1768

._crit_edge:                                      ; preds = %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ag, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit ]
  ret ptr %.sroa.0.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmRKNS5_7Point_3ISO_EEE_clEmS2L_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
thread-pre-split.i.i.i.i.i.i.i:
  %3 = alloca %"class.CGAL::Static_filtered_predicate.493", align 1 ; 3 uses
  %4 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %5 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %7 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %8 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %9 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %10 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal28conditional_aligned_new_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEPT_m:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %_ZN4CGAL6HandleD2Ev.exit
  %.0 = phi i64 [ %i.c, %_ZN4CGAL6HandleD2Ev.exit ], [ %1, %bb.a ]
  %i.c = add i64 %.0, -1                          ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.e) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.h, -1
  store atomic i32 %i.m, ptr %i.g monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = atomicrmw add ptr %i.g, i32 -1 release, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !102  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #22, !inline_history !1
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %.preheader, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %.old1.not = icmp eq i64 %i.c, 0
  br i1 %.old1.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Eigen8internal27construct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEPT_SJ_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.p, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.012
  %i.c = load i8, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i, !prof !318

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 4, !tbaa !266
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !320
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !271
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.e, align 16, !tbaa !105
  store ptr %i.e, ptr @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8, !tbaa !102
  %i.i = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4CGAL6HandleD2Ev, ptr nonnull @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, ptr nonnull @__dso_handle) #22 ; 0 uses
  store i8 1, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  br label %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i

_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i: ; preds = %.noexc, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !102
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  %i.n = add nsw i32 %i.m, 1
  store atomic i32 %i.n, ptr %i.l monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit

bb.e:                                             ; preds = %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit: ; preds = %bb.e, %bb.d
  %i.p = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1802

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  tail call void @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m(ptr noundef %0, i64 noundef %.012)
  invoke void @__cxa_rethrow() #38
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit, %bb.a
  ret ptr %0

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #42
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmRbE0_clEmmS2I_ENKUlRKNS5_7Plane_3ISO_EEE_clES2N_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %3 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %5 = alloca %"struct.std::pair.395", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.233", align 8    ; 7 uses
  %7 = alloca %"class.CGAL::Static_filtered_predicate.430", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1816, !nonnull !71, !align !122 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not53 = icmp eq ptr %i.b, %i.d
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i41 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i7.i.i45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx.i8.i.i46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.h = icmp eq i64 %.122, 0
  %i.i = icmp eq i64 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.021.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1817, !nonnull !71, !align !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %1, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  %8 = load <8 x double>, ptr %i.n, align 16, !tbaa !103, !noalias !1818 ; 2 uses
  %9 = fneg <8 x double> %8                       ; 5 uses
  %10 = shufflevector <8 x double> %9, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %11 = shufflevector <8 x double> %8, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.o = fcmp oeq <4 x double> %11, %10
  %i.p = freeze <4 x i1> %i.o
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, -1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = extractelement <8 x double> %9, i64 0
  store double %i.t, ptr %5, align 8, !alias.scope !1818
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractelement <8 x double> %9, i64 2
  store double %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1818
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = extractelement <8 x double> %9, i64 4
  store double %i.v, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1818
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = extractelement <8 x double> %9, i64 6
  store double %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1818
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !304, !alias.scope !1818
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !102  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !103, !noalias !1819
  %i.ac = load double, ptr %i.z, align 16, !tbaa !103, !noalias !1819
  %i.ad = fneg double %i.ac                       ; 2 uses
  %i.ae = fcmp oeq double %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !103, !noalias !1819
  %i.ai = load double, ptr %i.af, align 16, !tbaa !103, !noalias !1819
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !103, !noalias !1819
  %i.ao = load double, ptr %i.al, align 16, !tbaa !103, !noalias !1819
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ar = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store double %i.ad, ptr %6, align 8, !alias.scope !1819
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.aj, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !alias.scope !1819
  %.sroa.5.0..sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ap, ptr %.sroa.5.0..sroa_idx.i8.i.i, align 8, !alias.scope !1819
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !176, !alias.scope !1820
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.au = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit: ; preds = %bb.b, %bb.h
  %.1.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %i.s, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.av = icmp eq i32 %.1.i.i, 0
  %or.cond = select i1 %i.av, i1 %.021.lcssa, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.0.lcssa, i1 false
  %i.aw = icmp eq i32 %.1.i.i, 1
  %or.cond5 = and i1 %.021.lcssa, %i.aw
  %or.cond24 = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %or.cond24, label %bb.v, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.t
  %.056 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.02155 = phi i64 [ 0, %.lr.ph ], [ %.122, %bb.t ] ; 3 uses
  %.sroa.048.054 = phi ptr [ %i.b, %.lr.ph ], [ %i.ch, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ax = load ptr, ptr %1, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  %12 = load <8 x double>, ptr %i.az, align 16, !tbaa !103, !noalias !1821 ; 2 uses
  %13 = fneg <8 x double> %12                     ; 5 uses
  %14 = shufflevector <8 x double> %13, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %15 = shufflevector <8 x double> %12, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fcmp oeq <4 x double> %15, %14
  %i.bb = freeze <4 x i1> %i.ba
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %i.bd = icmp eq i4 %i.bc, -1
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

bb.k:                                             ; preds = %bb.i
  %i.bf = extractelement <8 x double> %13, i64 0
  store double %i.bf, ptr %2, align 8, !alias.scope !1821
  %i.bg = extractelement <8 x double> %13, i64 2
  store double %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.i41, align 8, !alias.scope !1821
  %i.bh = extractelement <8 x double> %13, i64 4
  store double %i.bh, ptr %.sroa.5.0..sroa_idx.i.i.i42, align 8, !alias.scope !1821
  %i.bi = extractelement <8 x double> %13, i64 6
  store double %i.bi, ptr %.sroa.6.0..sroa_idx.i.i.i43, align 8, !alias.scope !1821
  store i8 1, ptr %i.e, align 8, !tbaa !304, !alias.scope !1821
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bj = load ptr, ptr %.sroa.048.054, align 8, !tbaa !102 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !103, !noalias !1822
  %i.bn = load double, ptr %i.bk, align 16, !tbaa !103, !noalias !1822
  %i.bo = fneg double %i.bn                       ; 2 uses
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !103, !noalias !1822
  %i.bt = load double, ptr %i.bq, align 16, !tbaa !103, !noalias !1822
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = fcmp oeq double %i.bs, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !103, !noalias !1822
  %i.bz = load double, ptr %i.bw, align 16, !tbaa !103, !noalias !1822
  %i.ca = fneg double %i.bz                       ; 2 uses
  %i.cb = fcmp oeq double %i.by, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cc = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Plane_3ISO_EENS_7Point_3ISO_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.054)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.bo, ptr %3, align 8, !alias.scope !1822
  store double %i.bu, ptr %.sroa.4.0..sroa_idx.i7.i.i45, align 8, !alias.scope !1822
  store double %i.ca, ptr %.sroa.5.0..sroa_idx.i8.i.i46, align 8, !alias.scope !1822
  store i8 1, ptr %i.f, align 8, !tbaa !176, !alias.scope !1823
  %i.cd = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_20CommonKernelFunctors15Oriented_side_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Plane_3IST_EENS_7Point_3IST_EEEEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i44 = phi i32 [ %i.cd, %bb.o ], [ %i.cc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47

_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47: ; preds = %bb.j, %bb.p
  %.1.i.i40 = phi i32 [ %.0.i.i44, %bb.p ], [ %i.be, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %.1.i.i40, label %bb.s [
    i32 1, label %bb.q
    i32 -1, label %bb.r
    i32 0, label %bb.t
  ]

bb.q:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.ce = add i64 %.02155, 1
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cf = add i64 %.056, 1
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %i.cg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.111, ptr %i.cg, align 16, !tbaa !239
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIPKc, ptr null) #38
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47
  %.122 = phi i64 [ %i.ce, %bb.q ], [ %.02155, %bb.r ], [ %.02155, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %.1 = phi i64 [ %.056, %bb.q ], [ %i.cf, %bb.r ], [ %.056, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit47 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.048.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i

bb.u:                                             ; preds = %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %i.ci = icmp eq i32 %.1.i.i, -1
  %i.cj = and i1 %.0.lcssa, %i.ci
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit
  %.023 = phi i1 [ true, %_ZNK4CGAL7Plane_3INS_5EpeckEE13oriented_sideERKNS_7Point_3IS1_EE.exit ], [ %i.cj, %bb.u ]
  ret i1 %.023
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPiS3_IiSaIiEEEEZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELi1ELi0ELin1ELi1EEESX_SZ_SZ_SZ_NSH_5EpeckESZ_SZ_EEvRKNSF_10MatrixBaseIT_EERKNS11_IT0_EERKNS11_IT1_EERKNS11_IT2_EERKNS11_IT3_EERKNS11_IT4_EERKNS11_IT5_EERKS3_IS5_SaIS5_EES1X_RKNSH_9AABB_treeINSH_13AABB_traits_3IT6_NSH_25AABB_triangle_primitive_3IS20_NS3_INS20_10Triangle_3ESaIS22_EE8iteratorESt17integral_constantIbLb0EEEENSH_7DefaultEEEEERKS24_RKS3_IbSaIbEERNSF_15PlainObjectBaseIT7_EERNS2K_IT8_EEENKUlmmmmRbE_clEmmmmS2R_EUlmE_ES16_S12_S12_S16_S1A_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%class.anon.584) align 8 %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not7 = icmp eq ptr %0, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1828, !nonnull !71, !align !122
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1829, !nonnull !71, !align !122
  %i.e = load i64, ptr %i.d, align 8, !tbaa !115  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1830, !nonnull !71, !align !122
  %i.h = load i64, ptr %i.g, align 8, !tbaa !115  ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1832, !nonnull !71 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120, !noalias !1833
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !80 ; 2 uses
  %.idx.i.i = shl nsw i64 %.pre.i.i, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit
  %.sroa.0.09 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.03.08 = phi ptr [ %0, %.lr.ph ], [ %i.af, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit ] ; 2 uses
  %i.l = load i64, ptr %.sroa.03.08, align 8, !tbaa !115 ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ne i64 %i.e, %i.o                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.pre.i.i
  %.pre63.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !118
  %i.q = sext i32 %.pre63.i.i to i64              ; 2 uses
  %i.r = icmp ne i64 %i.h, %i.q                   ; 2 uses
  %or.cond67.not.i.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond67.not.i.i, label %._crit_edge.i.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.s = icmp eq i64 %i.e, %i.q                   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp eq i64 %i.h, %i.v                   ; 2 uses
  %or.cond.i = select i1 %i.s, i1 %i.w, i1 false
  br i1 %or.cond.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, label %._crit_edge64.i.i

._crit_edge64.i.i:                                ; preds = %._crit_edge.i.i
  %i.x = icmp eq i64 %i.e, %i.v                   ; 2 uses
  %i.y = icmp eq i64 %i.h, %i.o                   ; 2 uses
  %or.cond.i.i = and i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge64.i.i
  %brmerge.not62.i.i = and i1 %i.y, %i.s
  %.not.i = xor i1 %i.r, true
  %brmerge54.not.i.i = and i1 %i.x, %.not.i
  %or.cond59.i.i = or i1 %brmerge.not62.i.i, %brmerge54.not.i.i
  %or.cond59.not.i.i = xor i1 %or.cond59.i.i, true
  %.not10 = xor i1 %i.w, true
  %brmerge57.i.i = or i1 %i.p, %.not10
  %or.cond60.i.i = and i1 %brmerge57.i.i, %or.cond59.not.i.i
  br i1 %or.cond60.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.114)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #22
  resume { ptr, i32 } %i.aa

_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i: ; preds = %._crit_edge64.i.i, %._crit_edge.i.i, %bb.b
  %i.ab = xor i64 %i.l, -1
  br label %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = add i64 %i.l, 1
  br label %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit

_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit: ; preds = %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.g ], [ %i.ab, %_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmE_clEmmm.exit.thread.i ]
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %.sroa.0.09, align 4, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1826

._crit_edge:                                      ; preds = %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ag, %_ZZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmmmmRbE_clEmmmmS2I_ENKUlmE_clEm.exit ]
  ret ptr %.sroa.0.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESL_SN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNSP_IT4_EERKNSP_IT5_EERKSt6vectorIS1I_ImSaImEESaIS1K_EES1O_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1R_NS1I_INS1R_10Triangle_3ESaIS1T_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1V_RKS1I_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2B_IT8_EEENKUlmRKNS5_7Point_3ISO_EEE_clEmS2L_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
thread-pre-split.i.i.i.i.i.i.i:
  %3 = alloca %"class.CGAL::Static_filtered_predicate.493", align 1 ; 3 uses
  %4 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %5 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %7 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %8 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %9 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %10 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
end_hunk_3
