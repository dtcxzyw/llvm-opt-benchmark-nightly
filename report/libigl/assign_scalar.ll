Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/assign_scalar?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1060
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4CORE11BigFloatRep9floorlg10EN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEE:bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit.i: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit, %bb.c
  %i.bm = phi i8 [ %.pre39, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 0, ptr %2, align 16, !tbaa !87
  store i64 1, ptr %i.ab, align 16, !tbaa !154
  store i8 0, ptr %i.ac, align 8, !tbaa !73
  store i8 1, ptr %i.ad, align 1, !tbaa !74
  store i8 0, ptr %i.ae, align 2, !tbaa !155
  invoke void @_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvPT_RKT0_yRS8_(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(27) %3, i64 noundef 10, ptr noundef nonnull align 16 dereferenceable(27) %2)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit.i
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 %i.bm, ptr %i.p, align 8, !tbaa !73
  %i.bo = load i64, ptr %i.s, align 16
  %i.bp = icmp eq i64 %i.bo, 1
  %or.cond.i13 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond.i13, label %bb.k, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = load i8, ptr %i.t, align 1, !tbaa !74, !range !63, !noundef !64
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = load ptr, ptr %i.u, align 8
  %i.bt = select i1 %i.br, ptr %4, ptr %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !76
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.l, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.p, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.bw = load i8, ptr %i.ad, align 1, !tbaa !74, !range !63, !noundef !64
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i8, ptr %i.ae, align 2, !range !63
  %i.bz = trunc nuw i8 %i.by to i1
  %or.cond.i8.i = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond.i8.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit
  %i.ca = load ptr, ptr %i.af, align 8
  %i.cb = load i64, ptr %2, align 16
  %i.cc = shl i64 %i.cb, 3
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cc) #38
  br label %bb.p

bb.n:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load i8, ptr %i.ad, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i8, ptr %i.ae, align 2, !range !63
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond.i.i8 = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i.i8, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i9, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %i.af, align 8
  %i.cj = load i64, ptr %2, align 16
  %i.ck = shl i64 %i.cj, 3
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.ck) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i9

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i9: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.cl = load i8, ptr %i.y, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load i8, ptr %i.z, align 2, !range !63
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond.i.i = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i, label %bb.r

bb.p:                                             ; preds = %bb.m, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.cp = load i8, ptr %i.y, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = load i8, ptr %i.z, align 2, !range !63
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i3.i = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond.i3.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %i.aa, align 8
  %i.cu = load i64, ptr %3, align 16
  %i.cv = shl i64 %i.cu, 3
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cv) #38
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i9
  %i.cw = load ptr, ptr %i.aa, align 8
  %i.cx = load i64, ptr %3, align 16
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cy) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i: ; preds = %bb.r, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.s:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.cz = add nsw i64 %.0534, 1                   ; 2 uses
  %i.da = load i8, ptr %i.p, align 8, !tbaa !73, !range !63, !noundef !64
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZN5boost14multiprecisiongtINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread23, label %bb.b, !llvm.loop !1093

_ZN5boost14multiprecisiongtINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread23: ; preds = %_ZN5boost14multiprecisiongtINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit, %bb.s, %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread
  %.05.lcssa = phi i64 [ -1, %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread ], [ %i.cz, %bb.s ], [ %.0534, %_ZN5boost14multiprecisiongtINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit ]
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !74, !range !63, !noundef !64
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.dg = load i8, ptr %i.df, align 2, !range !63
  %i.dh = trunc nuw i8 %i.dg to i1
  %or.cond.i.i14 = select i1 %i.de, i1 true, i1 %i.dh
  br i1 %or.cond.i.i14, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecisiongtINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread23
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load i64, ptr %4, align 16
  %i.dl = shl i64 %i.dk, 3
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dl) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecisiongtINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread23, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.v

.body:                                            ; preds = %bb.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i
  %.pn = phi { ptr, i32 } [ %i.cd, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i ], [ %i.bl, %bb.i ]
  %i.dm = load i8, ptr %i.t, align 1, !tbaa !74, !range !63, !noundef !64
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = load i8, ptr %i.w, align 2, !range !63
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond.i.i16 = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond.i.i16, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit18, label %bb.u

bb.u:                                             ; preds = %.body
  %i.dq = load ptr, ptr %i.u, align 8
  %i.dr = load i64, ptr %4, align 16
  %i.ds = shl i64 %i.dr, 3
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.ds) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit18

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit18: ; preds = %.body, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  %.06 = phi i64 [ %.05.lcssa, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit ], [ 0, %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit ]
  ret i64 %.06
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CORE11BigFloatRep5roundENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERlj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !86   ; 4 uses
  %i.d = zext i32 %4 to i64                       ; 4 uses
  %.not = icmp ugt i64 %i.c, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !84
  %i.f = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.c, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !88
  %i.k = load i64, ptr %i.g, align 8, !tbaa !87
  store i64 %i.k, ptr %i.e, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8, !tbaa !86
  store ptr %i.g, ptr %2, align 8, !tbaa !88
  store i64 0, ptr %i.b, align 8, !tbaa !86
  store i8 0, ptr %i.g, align 8, !tbaa !87
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = sext i32 %4 to i64
  %i.n = load ptr, ptr %2, align 8, !tbaa !88     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87
  %i.q = add i8 %i.p, -53
  %or.cond20 = icmp ult i8 %i.q, 5
  br i1 %or.cond20, label %.preheader, label %._crit_edge.thread31

.preheader:                                       ; preds = %bb.d
  %i.r = icmp sgt i32 %4, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %5 = phi ptr [ %.pre, %bb.e ], [ %i.n, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.d, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87
  %i.u = add i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 1, !tbaa !87
  %i.v = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !87
  %i.y = icmp sgt i8 %i.x, 57
  br i1 %i.y, label %bb.e, label %._crit_edge.thread31

bb.e:                                             ; preds = %.lr.ph
  store i8 48, ptr %i.w, align 1, !tbaa !87
  %.pre = load ptr, ptr %2, align 8, !tbaa !88
  %i.z = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !1095

._crit_edge.thread:                               ; preds = %bb.e, %.preheader
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 49) ; 0 uses
  %i.ab = load i64, ptr %3, align 8, !tbaa !56
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %3, align 8, !tbaa !56
  %i.ad = add i32 %4, 1
  %.pre26 = load ptr, ptr %2, align 8, !tbaa !88, !noalias !1098
  %.pre.a = zext i32 %i.ad to i64
  br label %._crit_edge.thread31

._crit_edge.thread31:                             ; preds = %.lr.ph, %._crit_edge.thread, %bb.d
  %.pre-phi = phi i64 [ %i.d, %bb.d ], [ %.pre.a, %._crit_edge.thread ], [ %i.d, %.lr.ph ]
  %6 = phi ptr [ %i.n, %bb.d ], [ %.pre26, %._crit_edge.thread ], [ %i.v, %.lr.ph ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !86, !noalias !1098
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !84, !alias.scope !1098
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ae) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1098
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !56, !noalias !1098
  %i.ag = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ag, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %._crit_edge.thread31
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !88, !alias.scope !1098
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !56, !noalias !1098
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !87, !alias.scope !1098
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %._crit_edge.thread31
  %i.aj = phi ptr [ %i.ah, %.noexc10.i.i ], [ %i.af, %._crit_edge.thread31 ] ; 2 uses
  %trunc = trunc nuw i64 %spec.select.i.i.i to i32
  switch i32 %trunc, label %bb.g [
    i32 1, label %bb.f
    i32 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %6, align 1, !tbaa !87
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !87
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %6, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.al = load i64, ptr %i.a, align 8, !tbaa !56, !noalias !1098 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !86, !alias.scope !1098
  %i.an = load ptr, ptr %0, align 8, !tbaa !88, !alias.scope !1098
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1098
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesEiS9_vvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 0, ptr %0, align 16, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 1, ptr %i.c, align 16, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 0, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  store i8 1, ptr %i.e, align 1, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.f, align 2, !tbaa !155
  %i.g = load i32, ptr %1, align 8, !tbaa !57, !noalias !1103 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1104, !noalias !1105, !nonnull !64, !align !161 ; 2 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.h, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(27) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail19multiply_immediatesEiS9_vvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.l = sub nsw i64 0, %i.h
  store i64 %i.l, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(27) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.m = load i8, ptr %i.d, align 8, !tbaa !73, !range !63, !noundef !64 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = xor i8 %i.m, 1
  store i8 %i.o, ptr %i.d, align 8, !tbaa !73
  %i.p = load i64, ptr %i.c, align 16
  %i.q = icmp ne i64 %i.p, 1
  %or.cond.i.i.not.i.i.i.i.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i.i.not.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail19multiply_immediatesEiS9_vvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc3
  %i.r = load i8, ptr %i.e, align 1, !tbaa !74, !range !63, !noundef !64
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %0, ptr %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !76
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail19multiply_immediatesEiS9_vvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.d, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail19multiply_immediatesEiS9_vvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail19multiply_immediatesEiS9_vvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit: ; preds = %bb.e, %bb.d, %.noexc3, %.noexc
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load i8, ptr %i.e, align 1, !tbaa !74, !range !63, !noundef !64
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load i8, ptr %i.f, align 2, !range !63
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i64, ptr %0, align 16
  %i.ag = shl i64 %i.af, 3
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.y
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log10f(float noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4CORE11BigFloatReplsERSo(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CORE::BigFloatRep::DecimalOutput", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !227
  %i.g = and i32 %i.f, 256
  %i.h = icmp ne i32 %i.g, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !226
  %i.k = trunc i64 %i.j to i32
  call void @_ZNK4CORE11BigFloatRep9toDecimalEjb(ptr dead_on_unwind nonnull writable sret(%"struct.CORE::BigFloatRep::DecimalOutput") align 8 %2, ptr noundef nonnull align 16 dereferenceable(64) %0, i32 noundef %i.k, i1 noundef zeroext %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !262
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.113, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4CORE11BigFloatRep13DecimalOutputD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !87
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #38
  br label %_ZN4CORE11BigFloatRep13DecimalOutputD2Ev.exit

_ZN4CORE11BigFloatRep13DecimalOutputD2Ev.exit:    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.p

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !88     ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !55
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !97
  %i.ac = or i32 %i.ab, 1
end_hunk_0
