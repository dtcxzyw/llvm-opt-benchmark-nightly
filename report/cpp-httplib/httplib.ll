Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail12read_headersERNS_6StreamERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE:bb.a
  %i.if = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.3, align 1, !tbaa !177, !noalias !1525
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !177, !noalias !1525
  %i.ij = load i8, ptr %i.ft, align 1, !tbaa !177, !noalias !1525
  %i.ik = icmp eq i8 %i.ii, %i.ij
  br i1 %i.ik, label %.lr.ph.i.i.i.i.i.i.4, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.4:                             ; preds = %.lr.ph.i.i.i.i.i.i.3
  %.sroa.03.07.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.il = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.4, align 1, !tbaa !177, !noalias !1525
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !177, !noalias !1525
  %i.ip = load i8, ptr %i.fx, align 1, !tbaa !177, !noalias !1525
  %i.iq = icmp eq i8 %i.io, %i.ip
  br i1 %i.iq, label %.lr.ph.i.i.i.i.i.i.5, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.5:                             ; preds = %.lr.ph.i.i.i.i.i.i.4
  %.sroa.03.07.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.hm, i64 5
  %i.ir = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.5, align 1, !tbaa !177, !noalias !1525
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !177, !noalias !1525
  %i.iv = load i8, ptr %i.gb, align 1, !tbaa !177, !noalias !1525
  %i.iw = icmp eq i8 %i.iu, %i.iv
  br i1 %i.iw, label %.lr.ph.i.i.i.i.i.i.6, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.6:                             ; preds = %.lr.ph.i.i.i.i.i.i.5
  %.sroa.03.07.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.hm, i64 6
  %i.ix = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.6, align 1, !tbaa !177, !noalias !1525
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !177, !noalias !1525
  %i.jb = load i8, ptr %i.gf, align 1, !tbaa !177, !noalias !1525
  %i.jc = icmp eq i8 %i.ja, %i.jb
  br i1 %i.jc, label %.lr.ph.i.i.i.i.i.i.7, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.7:                             ; preds = %.lr.ph.i.i.i.i.i.i.6
  %.sroa.03.07.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.hm, i64 7
  %i.jd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.7, align 1, !tbaa !177, !noalias !1525
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !177, !noalias !1525
  %i.jh = load i8, ptr %i.gj, align 1, !tbaa !177, !noalias !1525
  %i.ji = icmp eq i8 %i.jg, %i.jh
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i.i.8, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.8:                             ; preds = %.lr.ph.i.i.i.i.i.i.7
  %.sroa.03.07.i.i.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.jj = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.8, align 1, !tbaa !177, !noalias !1525
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !177, !noalias !1525
  %i.jn = load i8, ptr %i.gn, align 1, !tbaa !177, !noalias !1525
  %i.jo = icmp eq i8 %i.jm, %i.jn
  br i1 %i.jo, label %.lr.ph.i.i.i.i.i.i.9, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.9:                             ; preds = %.lr.ph.i.i.i.i.i.i.8
  %.sroa.03.07.i.i.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.hm, i64 9
  %i.jp = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.9, align 1, !tbaa !177, !noalias !1525
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !177, !noalias !1525
  %i.jt = load i8, ptr %i.gr, align 1, !tbaa !177, !noalias !1525
  %i.ju = icmp eq i8 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph.i.i.i.i.i.i.10, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.10:                            ; preds = %.lr.ph.i.i.i.i.i.i.9
  %.sroa.03.07.i.i.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %i.hm, i64 10
  %i.jv = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.10, align 1, !tbaa !177, !noalias !1525
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !177, !noalias !1525
  %i.jz = load i8, ptr %i.gv, align 1, !tbaa !177, !noalias !1525
  %i.ka = icmp eq i8 %i.jy, %i.jz
  br i1 %i.ka, label %.lr.ph.i.i.i.i.i.i.11, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.11:                            ; preds = %.lr.ph.i.i.i.i.i.i.10
  %.sroa.03.07.i.i.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %i.hm, i64 11
  %i.kb = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.11, align 1, !tbaa !177, !noalias !1525
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !177, !noalias !1525
  %i.kf = load i8, ptr %i.gz, align 1, !tbaa !177, !noalias !1525
  %i.kg = icmp eq i8 %i.ke, %i.kf
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.12, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.12:                            ; preds = %.lr.ph.i.i.i.i.i.i.11
  %.sroa.03.07.i.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.kh = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.12, align 1, !tbaa !177, !noalias !1525
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !177, !noalias !1525
  %i.kl = load i8, ptr %i.hd, align 1, !tbaa !177, !noalias !1525
  %i.km = icmp eq i8 %i.kk, %i.kl
  br i1 %i.km, label %.lr.ph.i.i.i.i.i.i.13, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.13:                            ; preds = %.lr.ph.i.i.i.i.i.i.12
  %.sroa.03.07.i.i.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %i.hm, i64 13
  %i.kn = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.13, align 1, !tbaa !177, !noalias !1525
  %i.ko = zext i8 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !177, !noalias !1525
  %i.kr = load i8, ptr %i.hh, align 1, !tbaa !177, !noalias !1525
  %i.ks = icmp eq i8 %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.i.13
  %i.kt = icmp eq i64 %.0712.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not221 = icmp eq i64 %.0712.i.i, %.pre30.i
  %.not = select i1 %i.kt, i1 true, i1 %.not221
  br i1 %.not, label %.critedge, label %.preheader.split.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.8, %.lr.ph.i.i.i.i.i.i.9, %.lr.ph.i.i.i.i.i.i.10, %.lr.ph.i.i.i.i.i.i.11, %.lr.ph.i.i.i.i.i.i.12, %.lr.ph.i.i.i.i.i.i.13, %.lr.ph.i.split.i
  %i.ku = add i64 %.0712.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ku, %.pre30.i
  br i1 %exitcond.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge

.preheader.split.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kv = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.0712.i.i ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.0712.i.i ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %.not.i.us.i = icmp ult i64 %.0712.i.i, %.pre30.i
  br i1 %.not.i.us.i, label %bb.ad, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit

bb.ad:                                            ; preds = %.preheader.split.i
  %i.kz = add nuw i64 %.0712.i.i, 1               ; 4 uses
  %i.la = icmp ult i64 %i.kz, %.pre30.i
  br i1 %i.la, label %.lr.ph.i.i38, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit

.lr.ph.i.i38:                                     ; preds = %bb.ad
  %i.lb = load i64, ptr %i.ky, align 8, !tbaa !176
  %.fr33.i = freeze i64 %i.lb                     ; 3 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i64 %.fr33.i, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i41, label %.lr.ph.i.split.i39

.lr.ph.i.split.us.i41:                            ; preds = %.lr.ph.i.i38, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i
  %.sroa.5.3 = phi i64 [ %i.lg, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i ], [ %i.kz, %.lr.ph.i.i38 ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.sroa.5.3
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !176
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i: ; preds = %.lr.ph.i.split.us.i41
  %i.lg = add nuw i64 %.sroa.5.3, 1               ; 2 uses
  %exitcond.not.i.us.i42 = icmp eq i64 %i.lg, %.pre30.i
  br i1 %exitcond.not.i.us.i42, label %.critedge, label %.lr.ph.i.split.us.i41, !llvm.loop !1523

.lr.ph.i.split.i39:                               ; preds = %.lr.ph.i.i38, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i
  %.sroa.5.2 = phi i64 [ %i.lz, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i ], [ %i.kz, %.lr.ph.i.i38 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.sroa.5.2 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !176
  %i.lk = icmp eq i64 %i.lj, %.fr33.i
  br i1 %i.lk, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.split.i39
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !189 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.fr33.i
  %i.ln = load ptr, ptr %i.kx, align 8, !tbaa !189
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ae, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.ly, %bb.ae ], [ %i.ln, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.lx, %bb.ae ], [ %i.ll, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.lo = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !177
  %i.lp = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !177
  %i.lq = zext i8 %i.lo to i64
  %i.lr = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !177
  %i.lt = zext i8 %i.lp to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !177
  %i.lw = icmp eq i8 %i.ls, %i.lv
  br i1 %i.lw, label %bb.ae, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lx, %i.lm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.split.i39
  %i.lz = add nuw i64 %.sroa.5.2, 1               ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %i.lz, %.pre30.i
  br i1 %exitcond.not.i.i40, label %.critedge, label %.lr.ph.i.split.i39, !llvm.loop !1523

_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit: ; preds = %bb.ae, %.lr.ph.i.split.us.i41, %.preheader.split.i, %bb.ad
  %.sroa.5.6 = phi i64 [ %.0712.i.i, %.preheader.split.i ], [ %i.kz, %bb.ad ], [ %.sroa.5.3, %.lr.ph.i.split.us.i41 ], [ %.sroa.5.2, %bb.ae ] ; 2 uses
  %.not84118 = icmp eq i64 %.sroa.5.6, %.pre30.i
  br i1 %.not84118, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !176 ; 3 uses
  %i.mc = icmp eq i64 %i.mb, 0
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit
  %.sroa.7.0119 = phi i64 [ %.sroa.5.6, %.lr.ph ], [ %.sroa.7.2, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ] ; 4 uses
  %i.md = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.sroa.7.0119 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !176
  %i.mh = icmp eq i64 %i.mg, %i.mb
  br i1 %i.mh, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  br i1 %i.mc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ag
  %i.mi = load ptr, ptr %i.kw, align 8, !tbaa !189
  %i.mj = load ptr, ptr %i.me, align 8, !tbaa !189
  %bcmp.i.i = call i32 @bcmp(ptr %i.mj, ptr %i.mi, i64 %i.mb)
  %.not85 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82, label %.critedge

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82: ; preds = %bb.ag, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.not.i46 = icmp ult i64 %.sroa.7.0119, %.pre30.i
  br i1 %.not.i46, label %bb.ah, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit

bb.ah:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82
  %i.mk = add nuw i64 %.sroa.7.0119, 1            ; 4 uses
  %i.ml = icmp ult i64 %i.mk, %.pre30.i
  br i1 %i.ml, label %.lr.ph.i48, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit

.lr.ph.i48:                                       ; preds = %bb.ah
  %i.mm = load i64, ptr %i.ky, align 8, !tbaa !176
  %.fr = freeze i64 %i.mm                         ; 3 uses
  %.not6.i.i.i.i.i.i49 = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i.i.i49, label %.lr.ph.i48.split.us, label %.lr.ph.i48.split

.lr.ph.i48.split.us:                              ; preds = %.lr.ph.i48, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us
  %.sroa.7.1.us = phi i64 [ %i.mr, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %i.mk, %.lr.ph.i48 ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.sroa.7.1.us
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !176
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us: ; preds = %.lr.ph.i48.split.us
  %i.mr = add nuw i64 %.sroa.7.1.us, 1            ; 2 uses
  %exitcond.not.i50.us = icmp eq i64 %i.mr, %.pre30.i
  br i1 %exitcond.not.i50.us, label %.critedge, label %.lr.ph.i48.split.us, !llvm.loop !1523

.lr.ph.i48.split:                                 ; preds = %.lr.ph.i48, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i
  %.sroa.7.1 = phi i64 [ %i.nk, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i ], [ %i.mk, %.lr.ph.i48 ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [64 x i8], ptr %i.fe, i64 %.sroa.7.1 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !176
  %i.mv = icmp eq i64 %i.mu, %.fr
  br i1 %i.mv, label %.lr.ph.i.preheader.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i48.split
  %i.mw = load ptr, ptr %i.ms, align 8, !tbaa !189 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.fr
  %i.my = load ptr, ptr %i.kx, align 8, !tbaa !189
  br label %.lr.ph.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i51:                             ; preds = %bb.ai, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i52 = phi ptr [ %i.nj, %bb.ai ], [ %i.my, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i53 = phi ptr [ %i.ni, %bb.ai ], [ %i.mw, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.mz = load i8, ptr %.sroa.03.07.i.i.i.i.i.i53, align 1, !tbaa !177
  %i.na = load i8, ptr %.sroa.0.08.i.i.i.i.i.i52, align 1, !tbaa !177
  %i.nb = zext i8 %i.mz to i64
  %i.nc = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !177
  %i.ne = zext i8 %i.na to i64
  %i.nf = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !177
  %i.nh = icmp eq i8 %i.nd, %i.ng
  br i1 %i.nh, label %bb.ai, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i51
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i53, i64 1 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i52, i64 1
  %.not.i.i.i.i.i.i54 = icmp eq ptr %i.ni, %i.mx
  br i1 %.not.i.i.i.i.i.i54, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, label %.lr.ph.i.i.i.i.i.i51, !llvm.loop !4

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i51, %.lr.ph.i48.split
  %i.nk = add nuw i64 %.sroa.7.1, 1               ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %i.nk, %.pre30.i
  br i1 %exitcond.not.i50, label %.critedge, label %.lr.ph.i48.split, !llvm.loop !1523

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit: ; preds = %.lr.ph.i48.split.us, %bb.ai, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82, %bb.ah
  %.sroa.7.2 = phi i64 [ %i.mk, %bb.ah ], [ %.sroa.7.0119, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82 ], [ %.sroa.7.1, %bb.ai ], [ %.sroa.7.1.us, %.lr.ph.i48.split.us ] ; 2 uses
  %.not84 = icmp eq i64 %.sroa.7.2, %.pre30.i
  br i1 %.not84, label %.critedge, label %bb.af

.critedge:                                        ; preds = %bb.b, %bb.g, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.af, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184, %..critedge.loopexit130_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.nl = phi ptr [ %.pre137.pre138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre137.pre138, %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i ], [ %.pre137.pre138, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ], [ %.pre137.pre138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pre137.pre138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184 ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i ], [ %.pre137.pre, %..critedge.loopexit130_crit_edge ], [ %.pre137.pre138, %bb.af ], [ %.pre137.pre138, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.pre137.pre138, %bb.g ], [ %.pre137.pre138, %bb.b ] ; 2 uses
  %.5 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i ], [ true, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184 ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i ], [ false, %..critedge.loopexit130_crit_edge ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.af ], [ false, %bb.g ], [ false, %bb.b ]
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %.critedge
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !177
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit

_ZN7httplib6detail18stream_line_readerD2Ev.exit:  ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret i1 %.5

.body:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %bb.c
  %.pn27.pn = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i ], [ %i.r, %bb.c ], [ %i.ez, %bb.ac ]
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !189 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %.body
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !177
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit61

_ZN7httplib6detail18stream_line_readerD2Ev.exit61: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  resume { ptr, i32 } %.pn27.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !189
  %i.h = load ptr, ptr %0, align 8, !tbaa !189
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ true, %bb.a ], [ %i.i, %bb.c ], [ false, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail17parse_status_lineEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::match_results.259", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %.b = load i1, ptr @_ZGVZN7httplib6detail17parse_status_lineEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_E2reB5cxx11, align 1
  br i1 %.b, label %bb.c, label %bb.b, !prof !296

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN7httplib6detail17parse_status_lineEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_E2reB5cxx11, ptr noundef nonnull @.str.117, i32 noundef 16)
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev, ptr nonnull @_ZZN7httplib6detail17parse_status_lineEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_E2reB5cxx11, ptr nonnull @__dso_handle) #23 ; 0 uses
  store i1 true, ptr @_ZGVZN7httplib6detail17parse_status_lineEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_E2reB5cxx11, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail17parse_status_lineEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_E2reB5cxx11)
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = invoke noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIPKcSaINSt7__cxx119sub_matchIS2_EEEcNS3_12regex_traitsIcEEEEbT_S9_RNS3_13match_resultsIS9_T0_EERKNS3_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZSt11regex_matchIcSaINSt7__cxx119sub_matchIPKcEEENS0_12regex_traitsIcEEEbPKT_RNS0_13match_resultsISA_T0_EERKNS0_11basic_regexIS8_T1_EENSt15regex_constants15match_flag_typeE.exit unwind label %bb.d ; 2 uses

_ZSt11regex_matchIcSaINSt7__cxx119sub_matchIPKcEEENS0_12regex_traitsIcEEEbPKT_RNS0_13match_resultsISA_T0_EERKNS0_11basic_regexIS8_T1_EENSt15regex_constants15match_flag_typeE.exit: ; preds = %bb.c
  br i1 %i.i, label %bb.e, label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

end_hunk_0
