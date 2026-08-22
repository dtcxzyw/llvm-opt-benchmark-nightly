Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edge?download=true
inline.NumInlined: 10255
inline.NumDeleted: 2799
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b:bb.a
  %i.jo = trunc nuw i8 %i.jn to i1
  %or.cond.i.i = select i1 %i.jm, i1 true, i1 %i.jo
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = load i64, ptr %7, align 16
  %i.js = shl i64 %i.jr, 3
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.js) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.bc:                                            ; preds = %bb.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %12, ptr noundef nonnull align 16 dereferenceable(27) %9, ptr noundef nonnull align 16 dereferenceable(27) %10)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit106.invoke unwind label %bb.x

_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit54: ; preds = %bb.g, %bb.f
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %9, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %i.v)
          to label %bb.bd unwind label %bb.x

bb.bd:                                            ; preds = %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit54
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %10, ptr noundef nonnull align 16 dereferenceable(27) %i.u, ptr noundef nonnull align 16 dereferenceable(27) %2)
          to label %bb.be unwind label %bb.x

bb.be:                                            ; preds = %bb.bd
  %i.jt = load i8, ptr %i.f, align 8, !tbaa !709, !range !13, !noundef !14
  %i.ju = load i8, ptr %i.j, align 8, !tbaa !709, !range !13, !noundef !14
  %.not.i103 = icmp eq i8 %i.jt, %i.ju
  %i.jv = xor i1 %3, %.not.i103
  br i1 %i.jv, label %.invoke116, label %.invoke

.invoke116:                                       ; preds = %bb.be
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %9, ptr noundef nonnull align 16 dereferenceable(27) %10)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit106.invoke unwind label %bb.x

.invoke:                                          ; preds = %bb.be
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %9, ptr noundef nonnull align 16 dereferenceable(27) %10)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit106.invoke unwind label %bb.x

_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit106.invoke: ; preds = %.invoke, %.invoke116, %bb.bc, %bb.ao
  %i.jw = phi ptr [ %12, %bb.bc ], [ %9, %bb.ao ], [ %i.u, %.invoke116 ], [ %i.u, %.invoke ]
  %i.jx = phi ptr [ %11, %bb.bc ], [ %i.u, %bb.ao ], [ %i.v, %.invoke116 ], [ %i.v, %.invoke ]
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %i.jy, ptr noundef nonnull align 16 dereferenceable(27) %i.jw, ptr noundef nonnull align 16 dereferenceable(27) %i.jx)
          to label %bb.bf unwind label %bb.x

bb.bf:                                            ; preds = %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit106.invoke
  %i.jz = load i8, ptr %i.s, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = load i8, ptr %i.t, align 2, !range !13
  %i.kc = trunc nuw i8 %i.kb to i1
  %or.cond.i29 = select i1 %i.ka, i1 true, i1 %i.kc
  br i1 %or.cond.i29, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit30, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = load i64, ptr %12, align 16
  %i.kg = shl i64 %i.kf, 3
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kg) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit30

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit30: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.kh = load i8, ptr %i.o, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = load i8, ptr %i.p, align 2, !range !13
  %i.kk = trunc nuw i8 %i.kj to i1
  %or.cond.i27 = select i1 %i.ki, i1 true, i1 %i.kk
  br i1 %or.cond.i27, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit30
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = load i64, ptr %11, align 16
  %i.ko = shl i64 %i.kn, 3
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.ko) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit30, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.kp = load i8, ptr %i.k, align 1, !tbaa !9, !range !13, !noundef !14
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = load i8, ptr %i.l, align 2, !range !13
  %i.ks = trunc nuw i8 %i.kr to i1
  %or.cond.i25 = select i1 %i.kq, i1 true, i1 %i.ks
  br i1 %or.cond.i25, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26, label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28
  %i.kt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = load i64, ptr %10, align 16
  %i.kw = shl i64 %i.kv, 3
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kw) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit28, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.kx = load i8, ptr %i.g, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ky = trunc nuw i8 %i.kx to i1
  %i.kz = load i8, ptr %i.h, align 2, !range !13
  %i.la = trunc nuw i8 %i.kz to i1
  %or.cond.i23 = select i1 %i.ky, i1 true, i1 %i.la
  br i1 %or.cond.i23, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24, label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = load i64, ptr %9, align 16
  %i.le = shl i64 %i.ld, 3
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.le) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit26, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.lf = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
  %i.lg = trunc nuw i8 %i.lf to i1
  %i.lh = load i8, ptr %i.d, align 2, !range !13
  %i.li = trunc nuw i8 %i.lh to i1
  %or.cond.i = select i1 %i.lg, i1 true, i1 %i.li
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24
  %i.lj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = load i64, ptr %8, align 16
  %i.lm = shl i64 %i.ll, 3
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lm) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit24, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.432, align 8            ; 5 uses
  %7 = alloca %class.anon.431, align 8            ; 4 uses
  %8 = alloca %class.anon.432, align 8            ; 5 uses
  %9 = alloca %class.anon.431, align 8            ; 4 uses
  %10 = alloca %class.anon.432, align 8           ; 5 uses
  %11 = alloca %class.anon.431, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::PointC3.411", align 16 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #36
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !20     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.04.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %.sroa.04.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !897
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !899
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !902
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors17Construct_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !20
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ad = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ai = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.am = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ao = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = and i32 %i.av, -24577
  %i.ax = or disjoint i32 %i.aw, %i.i
  store i32 %i.ax, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.013 = extractvalue { ptr, i32 } %i.ay, 1
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ba = icmp eq i32 %.013, %i.az
  br i1 %i.ba, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.ay, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.014) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bc = load i32, ptr %i.c, align 4
  %i.bd = and i32 %i.bc, -24577
  %i.be = or disjoint i32 %i.bd, %i.i
  store i32 %i.be, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bg = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.bg, ptr %11, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !907
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !907
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !907
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.bo, ptr %9, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !907
  store ptr %8, ptr %i.bi, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !907
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #35
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.bu, ptr %7, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !907
  store ptr %6, ptr %i.bi, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !907
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #35
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 8
  invoke void @_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRKSE_SJ_SJ_EEOT_OT0_OT1_(ptr noundef nonnull align 16 dereferenceable(192) %12, ptr noundef nonnull align 16 dereferenceable(64) %i.bn, ptr noundef nonnull align 16 dereferenceable(64) %i.bt, ptr noundef nonnull align 16 dereferenceable(64) %i.bz)
          to label %_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit unwind label %bb.ab

_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit: ; preds = %bb.s
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_7PointC3ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(80) %i.bf, ptr noundef nonnull align 16 dereferenceable(192) %12)
          to label %_ZN4CGAL6HandleD2Ev.exit34 unwind label %bb.ac

_ZN4CGAL6HandleD2Ev.exit34:                       ; preds = %_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit
  store ptr %i.bf, ptr %0, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 185
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 186
end_hunk_0
begin_hunk_1_@_ZN4CGAL13orientationC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.aj = load i8, ptr %i.ai, align 2, !range !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i19 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i19, label %_ZN4CGAL9cpp_floatD2Ev.exit20, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %6, align 16
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit20

_ZN4CGAL9cpp_floatD2Ev.exit20:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit18, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i32 %i.a

bb.j:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit26

bb.k:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit24

bb.l:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit22

bb.m:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.au = load i8, ptr %i.at, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.ax = load i8, ptr %i.aw, align 2, !range !13
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i.i.i21 = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %or.cond.i.i.i21, label %_ZN4CGAL9cpp_floatD2Ev.exit22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %9, align 16
  %i.bc = shl i64 %i.bb, 3
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit22

_ZN4CGAL9cpp_floatD2Ev.exit22:                    ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.as, %bb.m ], [ %i.as, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.bh = load i8, ptr %i.bg, align 2, !range !13
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i23 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i23, label %_ZN4CGAL9cpp_floatD2Ev.exit24, label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit22
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %8, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit24

_ZN4CGAL9cpp_floatD2Ev.exit24:                    ; preds = %bb.o, %_ZN4CGAL9cpp_floatD2Ev.exit22, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn, %_ZN4CGAL9cpp_floatD2Ev.exit22 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 73
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 74
  %i.br = load i8, ptr %i.bq, align 2, !range !13
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i.i.i25 = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i25, label %_ZN4CGAL9cpp_floatD2Ev.exit26, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit24
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load i64, ptr %7, align 16
  %i.bw = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bw) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit26

_ZN4CGAL9cpp_floatD2Ev.exit26:                    ; preds = %bb.p, %_ZN4CGAL9cpp_floatD2Ev.exit24, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %.pn.pn, %_ZN4CGAL9cpp_floatD2Ev.exit24 ], [ %.pn.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.cb = load i8, ptr %i.ca, align 2, !range !13
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond.i.i.i27 = select i1 %i.bz, i1 true, i1 %i.cc
  br i1 %or.cond.i.i.i27, label %_ZN4CGAL9cpp_floatD2Ev.exit28, label %bb.q

bb.q:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit26
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i64, ptr %6, align 16
  %i.cg = shl i64 %i.cf, 3
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit28

_ZN4CGAL9cpp_floatD2Ev.exit28:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit26, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.461, align 8            ; 5 uses
  %7 = alloca %class.anon.460, align 8            ; 4 uses
  %8 = alloca %class.anon.461, align 8            ; 5 uses
  %9 = alloca %class.anon.460, align 8            ; 4 uses
  %10 = alloca %class.anon.461, align 8           ; 5 uses
  %11 = alloca %class.anon.460, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %14 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %15 = alloca %"class.CGAL::PlaneC3", align 16   ; 7 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.CGAL::PlaneC3.596", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #36
          to label %bb.b unwind label %bb.e       ; 12 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !20     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !20     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !1437
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !1440
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  invoke void @_ZN4CGAL19plane_from_pointsC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_S6_(ptr noundef nonnull align 16 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %14)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !792, !noalias !1437
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !792, !noalias !1437
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !792, !noalias !1437
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %15, i64 64, i1 false), !tbaa.struct !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !1437
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.ac, align 4, !tbaa !897
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ad, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1443
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.af, align 8, !tbaa !902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors17Construct_plane_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEESX_SX_EEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ah = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 16, !tbaa !20
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.an = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4
  %i.aq = add nsw i32 %i.ap, 1
  store atomic i32 %i.aq, ptr %i.ao monotonic, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add nsw i32 %i.au, 1
  store atomic i32 %i.av, ptr %i.at monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.aw = atomicrmw add ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ay = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.bc = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 16, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw add ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bf = load i32, ptr %i.c, align 4
  %i.bg = and i32 %i.bf, -24577
  %i.bh = or disjoint i32 %i.bg, %i.i
  store i32 %i.bh, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 128) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.f ], [ %i.bi, %bb.e ] ; 3 uses
  %.013 = extractvalue { ptr, i32 } %.pn, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.bl = icmp eq i32 %.013, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %.014 = extractvalue { ptr, i32 } %.pn, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %.014) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = and i32 %i.bn, -24577
  %i.bp = or disjoint i32 %i.bo, %i.i
  store i32 %i.bp, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bq = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.br = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.br, ptr %11, align 8, !tbaa !959
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !907
  %i.bt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bt, align 8, !tbaa !907
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bu, align 8, !tbaa !907
  %i.bv = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bv) #35
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  store ptr null, ptr %i.bu, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  store ptr null, ptr %i.bu, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.by = load atomic ptr, ptr %i.bx monotonic, align 8
  %i.bz = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.bz, ptr %9, align 8, !tbaa !959
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !907
  store ptr %8, ptr %i.bt, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bu, align 8, !tbaa !907
  %i.cb = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.p ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.m
  %.not.i.i.i.i23 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i23, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cb) #35
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  store ptr null, ptr %i.bu, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.q:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bt, align 8, !tbaa !907
  store ptr null, ptr %i.bu, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.ce = load atomic ptr, ptr %i.cd monotonic, align 8
  %i.cf = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.cf, ptr %7, align 8, !tbaa !959
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !907
  store ptr %6, ptr %i.bt, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bu, align 8, !tbaa !907
  %i.ch = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.t ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.q
  %.not.i.i.i.i28 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i28, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ch) #35
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN4CGAL24side_of_oriented_planeC3INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_S8_:bb.a
bb.n:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit29
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load i64, ptr %9, align 16
  %i.cv = shl i64 %i.cu, 3
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cv) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit31

_ZN4CGAL9cpp_floatD2Ev.exit31:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit29, %bb.n
  %i.cw = load i8, ptr %i.z, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = load i8, ptr %i.aa, align 2, !range !13
  %i.cz = trunc nuw i8 %i.cy to i1
  %or.cond.i.i.i32 = select i1 %i.cx, i1 true, i1 %i.cz
  br i1 %or.cond.i.i.i32, label %_ZN4CGAL9cpp_floatD2Ev.exit33, label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit31
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load i64, ptr %11, align 16
  %i.dd = shl i64 %i.dc, 3
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.dd) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit33

_ZN4CGAL9cpp_floatD2Ev.exit33:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit31, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.de = load i8, ptr %i.g, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load i8, ptr %i.h, align 2, !range !13
  %i.dh = trunc nuw i8 %i.dg to i1
  %or.cond.i.i.i34 = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond.i.i.i34, label %_ZN4CGAL9cpp_floatD2Ev.exit35, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit33
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load i64, ptr %10, align 16
  %i.dl = shl i64 %i.dk, 3
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dl) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit35

_ZN4CGAL9cpp_floatD2Ev.exit35:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit33, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i32 %.0.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit43

bb.r:                                             ; preds = %bb.h
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4CGAL9cpp_floatD2Ev.exit39

bb.s:                                             ; preds = %bb.i
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.dt = load i8, ptr %i.ds, align 2, !range !13
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond.i.i.i38 = select i1 %i.dr, i1 true, i1 %i.du
  br i1 %or.cond.i.i.i38, label %_ZN4CGAL9cpp_floatD2Ev.exit39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load i64, ptr %8, align 16
  %i.dy = shl i64 %i.dx, 3
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dy) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit39

_ZN4CGAL9cpp_floatD2Ev.exit39:                    ; preds = %bb.t, %bb.s, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.r ], [ %i.do, %bb.s ], [ %i.do, %bb.t ] ; 2 uses
  %i.dz = load i8, ptr %i.ao, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = load i8, ptr %i.ap, align 2, !range !13
  %i.ec = trunc nuw i8 %i.eb to i1
  %or.cond.i.i.i40 = select i1 %i.ea, i1 true, i1 %i.ec
  br i1 %or.cond.i.i.i40, label %.body23, label %.body23.sink.split

.body23.sink.split:                               ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit39, %bb.g
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %.pn.pn, %_ZN4CGAL9cpp_floatD2Ev.exit39 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = load i64, ptr %12, align 16
  %i.eg = shl i64 %i.ef, 3
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eg) #34
  br label %.body23

.body23:                                          ; preds = %.body23.sink.split, %_ZN4CGAL9cpp_floatD2Ev.exit39, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %.pn.pn, %_ZN4CGAL9cpp_floatD2Ev.exit39 ], [ %.pn.pn.pn.ph, %.body23.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 73
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 74
  %i.el = load i8, ptr %i.ek, align 2, !range !13
  %i.em = trunc nuw i8 %i.el to i1
  %or.cond.i.i.i42 = select i1 %i.ej, i1 true, i1 %i.em
  br i1 %or.cond.i.i.i42, label %_ZN4CGAL9cpp_floatD2Ev.exit43, label %bb.u

bb.u:                                             ; preds = %.body23
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load i64, ptr %9, align 16
  %i.eq = shl i64 %i.ep, 3
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.eq) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit43

_ZN4CGAL9cpp_floatD2Ev.exit43:                    ; preds = %bb.u, %.body23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.q ], [ %.pn.pn.pn, %.body23 ], [ %.pn.pn.pn, %bb.u ] ; 2 uses
  %i.er = load i8, ptr %i.z, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = load i8, ptr %i.aa, align 2, !range !13
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond.i.i.i44 = select i1 %i.es, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i44, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit43, %bb.d
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %.pn.pn.pn.pn, %_ZN4CGAL9cpp_floatD2Ev.exit43 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = load i64, ptr %11, align 16
  %i.ey = shl i64 %i.ex, 3
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ey) #34
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZN4CGAL9cpp_floatD2Ev.exit43, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %.pn.pn.pn.pn, %_ZN4CGAL9cpp_floatD2Ev.exit43 ], [ %.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ez = load i8, ptr %i.g, align 1, !tbaa !1014, !range !13, !noundef !14
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = load i8, ptr %i.h, align 2, !range !13
  %i.fc = trunc nuw i8 %i.fb to i1
  %or.cond.i.i.i46 = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond.i.i.i46, label %_ZN4CGAL9cpp_floatD2Ev.exit47, label %bb.v

bb.v:                                             ; preds = %.body
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load i64, ptr %10, align 16
  %i.fg = shl i64 %i.ff, 3
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fg) #34
  br label %_ZN4CGAL9cpp_floatD2Ev.exit47

_ZN4CGAL9cpp_floatD2Ev.exit47:                    ; preds = %.body, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Plane_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.630, align 8            ; 5 uses
  %5 = alloca %class.anon.629, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.q, align 4, !tbaa !897
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !792
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.s, align 8, !tbaa !1139
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.t, align 8, !tbaa !902
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !20
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = and i32 %i.ab, -24577
  %i.ad = or disjoint i32 %i.ac, %i.i
  store i32 %i.ad, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ae, 1
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ag = icmp eq i32 %.07, %i.af
  br i1 %i.ag, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ae, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %.08) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ai = load i32, ptr %i.c, align 4
  %i.aj = and i32 %i.ai, -24577
  %i.ak = or disjoint i32 %i.aj, %i.i
  store i32 %i.ak, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.am, ptr %5, align 8, !tbaa !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !907
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ao, align 8, !tbaa !907
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ap, align 8, !tbaa !907
  %i.aq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ao, align 8, !tbaa !907
  store ptr null, ptr %i.ap, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ao, align 8, !tbaa !907
  store ptr null, ptr %i.ap, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.av = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.aw = extractvalue { double, double } %i.av, 0
  %i.ax = extractvalue { double, double } %i.av, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 1, ptr %i.ay, align 4, !tbaa !897
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.al, align 16, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = fneg double %i.aw
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ax, i64 1
  store <2 x double> %i.bc, ptr %i.az, align 16, !tbaa !23
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, ptr noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 64) #34
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.bd, ptr %i.bf, align 16, !tbaa !1139
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 0, ptr %i.bg, align 8, !tbaa !902
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.al, align 16, !tbaa !24
  store ptr %i.al, ptr %0, align 8, !tbaa !20
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bi = load i32, ptr %i.a, align 4
  %i.bj = and i32 %i.bi, -24577
  %i.bk = or disjoint i32 %i.bj, %i.i
  store i32 %i.bk, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.bl, %bb.p ], [ %i.be, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #34
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_2
begin_hunk_3_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED0Ev:bb.a
  %i.ai = load i8, ptr %i.ah, align 2, !range !13
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i.i.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.s, align 16
  %i.an = shl i64 %i.am, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #34, !inline_history !1142
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #34, !inline_history !1142
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.630, align 8            ; 5 uses
  %3 = alloca %class.anon.629, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !20  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.c, ptr %3, align 8, !tbaa !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !907
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !907
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !907
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !907
  store ptr null, ptr %i.f, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !907
  store ptr null, ptr %i.f, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.l = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !20  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #22, !inline_history !1638
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.w, -1
  store atomic i32 %i.ab, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.v, i32 1 release, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !20 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !1638
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !20
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Plane_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.630, align 8            ; 5 uses
  %5 = alloca %class.anon.629, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !897
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !792
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !1139
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !902
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !20
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = and i32 %i.ac, -24577
  %i.ae = or disjoint i32 %i.ad, %i.i
  store i32 %i.ae, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.af, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ah = icmp eq i32 %.07, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.af, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %.08) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = and i32 %i.aj, -24577
  %i.al = or disjoint i32 %i.ak, %i.i
  store i32 %i.al, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.an, ptr %5, align 8, !tbaa !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !907
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ap, align 8, !tbaa !907
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !907
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !907
  store ptr null, ptr %i.aq, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !907
  store ptr null, ptr %i.aq, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aw = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.ax = extractvalue { double, double } %i.aw, 0
  %i.ay = extractvalue { double, double } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.az, align 4, !tbaa !897
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.am, align 16, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = fneg double %i.ax
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !23
  %i.be = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 64) #34
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.be, ptr %i.bg, align 16, !tbaa !1139
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 0, ptr %i.bh, align 8, !tbaa !902
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.am, align 16, !tbaa !24
  store ptr %i.am, ptr %0, align 8, !tbaa !20
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bj = load i32, ptr %i.a, align 4
  %i.bk = and i32 %i.bj, -24577
  %i.bl = or disjoint i32 %i.bk, %i.i
  store i32 %i.bl, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.bm, %bb.p ], [ %i.bf, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #34
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_3
begin_hunk_4_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED0Ev:bb.a
  %i.ai = load i8, ptr %i.ah, align 2, !range !13
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i.i.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.s, align 16
  %i.an = shl i64 %i.am, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #34, !inline_history !1142
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #34, !inline_history !1142
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.630, align 8            ; 5 uses
  %3 = alloca %class.anon.629, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !20  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.c, ptr %3, align 8, !tbaa !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !907
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !907
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !907
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !907
  store ptr null, ptr %i.f, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !907
  store ptr null, ptr %i.f, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.l = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !20  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #22, !inline_history !1638
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.w, -1
  store atomic i32 %i.ab, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.v, i32 1 release, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !20 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !1638
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !20
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Plane_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.630, align 8            ; 5 uses
  %5 = alloca %class.anon.629, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !897
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !792
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !1139
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !902
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !20
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = and i32 %i.ac, -24577
  %i.ae = or disjoint i32 %i.ad, %i.i
  store i32 %i.ae, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.af, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ah = icmp eq i32 %.07, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.af, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %.08) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = and i32 %i.aj, -24577
  %i.al = or disjoint i32 %i.ak, %i.i
  store i32 %i.al, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.an, ptr %5, align 8, !tbaa !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !907
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ap, align 8, !tbaa !907
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !907
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !907
  store ptr null, ptr %i.aq, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !907
  store ptr null, ptr %i.aq, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aw = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.ax = extractvalue { double, double } %i.aw, 0
  %i.ay = extractvalue { double, double } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.az, align 4, !tbaa !897
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.am, align 16, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = fneg double %i.ax
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !23
  %i.be = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 64) #34
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.be, ptr %i.bg, align 16, !tbaa !1139
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 0, ptr %i.bh, align 8, !tbaa !902
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.am, align 16, !tbaa !24
  store ptr %i.am, ptr %0, align 8, !tbaa !20
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bj = load i32, ptr %i.a, align 4
  %i.bk = and i32 %i.bj, -24577
  %i.bl = or disjoint i32 %i.bk, %i.i
  store i32 %i.bl, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.bm, %bb.p ], [ %i.bf, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #34
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_4
begin_hunk_5_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED0Ev:bb.a
_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #34, !inline_history !1142
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Plane_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.630, align 8            ; 5 uses
  %3 = alloca %class.anon.629, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !20  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.c, ptr %3, align 8, !tbaa !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !907
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !907
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !907
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !907
  store ptr null, ptr %i.f, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !907
  store ptr null, ptr %i.f, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.l = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !20  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #22, !inline_history !1638
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.w, -1
  store atomic i32 %i.ab, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.v, i32 1 release, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !20 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !1638
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !20
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Plane_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors21Construct_direction_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Direction_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.432, align 8            ; 5 uses
  %7 = alloca %class.anon.431, align 8            ; 4 uses
  %8 = alloca %class.anon.432, align 8            ; 5 uses
  %9 = alloca %class.anon.431, align 8            ; 4 uses
  %10 = alloca %class.anon.432, align 8           ; 5 uses
  %11 = alloca %class.anon.431, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::DirectionC3.680", align 16 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #36
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !20     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !792
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !792
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !792
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !897
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1641
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Direction_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors21Construct_direction_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !20
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ad = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ai = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.am = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ao = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = and i32 %i.av, -24577
  %i.ax = or disjoint i32 %i.aw, %i.i
  store i32 %i.ax, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.013 = extractvalue { ptr, i32 } %i.ay, 1
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ba = icmp eq i32 %.013, %i.az
  br i1 %i.ba, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.ay, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.014) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bc = load i32, ptr %i.c, align 4
  %i.bd = and i32 %i.bc, -24577
  %i.be = or disjoint i32 %i.bd, %i.i
  store i32 %i.be, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bg = load ptr, ptr %3, align 8, !tbaa !20    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.bg, ptr %11, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !907
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !907
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !907
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.bo, ptr %9, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !907
  store ptr %8, ptr %i.bi, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !907
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #35
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.bu, ptr %7, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !907
  store ptr %6, ptr %i.bi, align 8, !tbaa !907
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !907
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #35
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !907
  store ptr null, ptr %i.bj, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %12, ptr noundef nonnull align 16 dereferenceable(64) %i.bn)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ca, ptr noundef nonnull align 16 dereferenceable(64) %i.bt)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i unwind label %bb.t

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i: ; preds = %.noexc
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.cb, ptr noundef nonnull align 16 dereferenceable(64) %i.bz)
          to label %_ZNK4CGAL23CartesianKernelFunctors21Construct_direction_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_SK_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i, %.noexc
  %.0.i.i = phi ptr [ %i.cb, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i ], [ %i.ca, %.noexc ]
end_hunk_5
