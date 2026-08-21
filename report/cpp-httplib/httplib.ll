inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN7httplib6detail12read_headersERNS_6StreamERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE:bb.a
  %i.ig = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.3, align 1, !tbaa !65, !noalias !580
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !65, !noalias !580
  %i.ik = load i8, ptr %i.fu, align 1, !tbaa !65, !noalias !580
  %i.il = icmp eq i8 %i.ij, %i.ik
  br i1 %i.il, label %.lr.ph.i.i.i.i.i.i.4, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.4:                             ; preds = %.lr.ph.i.i.i.i.i.i.3
  %.sroa.03.07.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.im = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.4, align 1, !tbaa !65, !noalias !580
  %i.in = zext i8 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !65, !noalias !580
  %i.iq = load i8, ptr %i.fy, align 1, !tbaa !65, !noalias !580
  %i.ir = icmp eq i8 %i.ip, %i.iq
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i.5, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.5:                             ; preds = %.lr.ph.i.i.i.i.i.i.4
  %.sroa.03.07.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.hn, i64 5
  %i.is = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.5, align 1, !tbaa !65, !noalias !580
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !65, !noalias !580
  %i.iw = load i8, ptr %i.gc, align 1, !tbaa !65, !noalias !580
  %i.ix = icmp eq i8 %i.iv, %i.iw
  br i1 %i.ix, label %.lr.ph.i.i.i.i.i.i.6, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.6:                             ; preds = %.lr.ph.i.i.i.i.i.i.5
  %.sroa.03.07.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  %i.iy = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.6, align 1, !tbaa !65, !noalias !580
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !65, !noalias !580
  %i.jc = load i8, ptr %i.gg, align 1, !tbaa !65, !noalias !580
  %i.jd = icmp eq i8 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph.i.i.i.i.i.i.7, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.7:                             ; preds = %.lr.ph.i.i.i.i.i.i.6
  %.sroa.03.07.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.hn, i64 7
  %i.je = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.7, align 1, !tbaa !65, !noalias !580
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !65, !noalias !580
  %i.ji = load i8, ptr %i.gk, align 1, !tbaa !65, !noalias !580
  %i.jj = icmp eq i8 %i.jh, %i.ji
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i.8, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.8:                             ; preds = %.lr.ph.i.i.i.i.i.i.7
  %.sroa.03.07.i.i.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.jk = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.8, align 1, !tbaa !65, !noalias !580
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !65, !noalias !580
  %i.jo = load i8, ptr %i.go, align 1, !tbaa !65, !noalias !580
  %i.jp = icmp eq i8 %i.jn, %i.jo
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i.i.9, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.9:                             ; preds = %.lr.ph.i.i.i.i.i.i.8
  %.sroa.03.07.i.i.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.hn, i64 9
  %i.jq = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.9, align 1, !tbaa !65, !noalias !580
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !65, !noalias !580
  %i.ju = load i8, ptr %i.gs, align 1, !tbaa !65, !noalias !580
  %i.jv = icmp eq i8 %i.jt, %i.ju
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i.i.10, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.10:                            ; preds = %.lr.ph.i.i.i.i.i.i.9
  %.sroa.03.07.i.i.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %i.hn, i64 10
  %i.jw = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.10, align 1, !tbaa !65, !noalias !580
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !65, !noalias !580
  %i.ka = load i8, ptr %i.gw, align 1, !tbaa !65, !noalias !580
  %i.kb = icmp eq i8 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph.i.i.i.i.i.i.11, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.11:                            ; preds = %.lr.ph.i.i.i.i.i.i.10
  %.sroa.03.07.i.i.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %i.hn, i64 11
  %i.kc = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.11, align 1, !tbaa !65, !noalias !580
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !65, !noalias !580
  %i.kg = load i8, ptr %i.ha, align 1, !tbaa !65, !noalias !580
  %i.kh = icmp eq i8 %i.kf, %i.kg
  br i1 %i.kh, label %.lr.ph.i.i.i.i.i.i.12, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.12:                            ; preds = %.lr.ph.i.i.i.i.i.i.11
  %.sroa.03.07.i.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.ki = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.12, align 1, !tbaa !65, !noalias !580
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !65, !noalias !580
  %i.km = load i8, ptr %i.he, align 1, !tbaa !65, !noalias !580
  %i.kn = icmp eq i8 %i.kl, %i.km
  br i1 %i.kn, label %.lr.ph.i.i.i.i.i.i.13, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.13:                            ; preds = %.lr.ph.i.i.i.i.i.i.12
  %.sroa.03.07.i.i.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %i.hn, i64 13
  %i.ko = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.ptr.13, align 1, !tbaa !65, !noalias !580
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !65, !noalias !580
  %i.ks = load i8, ptr %i.hi, align 1, !tbaa !65, !noalias !580
  %i.kt = icmp eq i8 %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.i.13
  %i.ku = icmp eq i64 %.0712.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not221 = icmp eq i64 %.0712.i.i, %.pre30.i
  %.not = select i1 %i.ku, i1 true, i1 %.not221
  br i1 %.not, label %.critedge, label %.preheader.split.i.preheader

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.8, %.lr.ph.i.i.i.i.i.i.9, %.lr.ph.i.i.i.i.i.i.10, %.lr.ph.i.i.i.i.i.i.11, %.lr.ph.i.i.i.i.i.i.12, %.lr.ph.i.i.i.i.i.i.13, %.lr.ph.i.split.i
  %i.kv = add i64 %.0712.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kv, %.pre30.i
  br i1 %exitcond.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge

.preheader.split.i.preheader:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kw = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.0712.i.i ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.0712.i.i ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %.not.i.us.i = icmp ult i64 %.0712.i.i, %.pre30.i
  br i1 %.not.i.us.i, label %bb.ad, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit

bb.ad:                                            ; preds = %.preheader.split.i.preheader
  %i.la = add nuw i64 %.0712.i.i, 1               ; 4 uses
  %i.lb = icmp ult i64 %i.la, %.pre30.i
  br i1 %i.lb, label %.lr.ph.i.i38, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit

.lr.ph.i.i38:                                     ; preds = %bb.ad
  %i.lc = load i64, ptr %i.kz, align 8, !tbaa !64
  %.fr42.i = freeze i64 %i.lc                     ; 3 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i64 %.fr42.i, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i41, label %.lr.ph.i.split.i39

.lr.ph.i.split.us.i41:                            ; preds = %.lr.ph.i.i38, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i
  %.sroa.5.3 = phi i64 [ %i.lh, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i ], [ %i.la, %.lr.ph.i.i38 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.sroa.5.3
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !64
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i: ; preds = %.lr.ph.i.split.us.i41
  %i.lh = add nuw i64 %.sroa.5.3, 1               ; 2 uses
  %exitcond.not.i.us.i42 = icmp eq i64 %i.lh, %.pre30.i
  br i1 %exitcond.not.i.us.i42, label %.critedge, label %.lr.ph.i.split.us.i41, !llvm.loop !583

.lr.ph.i.split.i39:                               ; preds = %.lr.ph.i.i38, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i
  %.sroa.5.2 = phi i64 [ %i.ma, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i ], [ %i.la, %.lr.ph.i.i38 ] ; 3 uses
  %i.li = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.sroa.5.2 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !64
  %i.ll = icmp eq i64 %i.lk, %.fr42.i
  br i1 %i.ll, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.split.i39
  %i.lm = load ptr, ptr %i.li, align 8, !tbaa !77 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.fr42.i
  %i.lo = load ptr, ptr %i.ky, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ae, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.lz, %bb.ae ], [ %i.lo, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.ly, %bb.ae ], [ %i.lm, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.lp = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !65
  %i.lq = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !65
  %i.lr = zext i8 %i.lp to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !65
  %i.lu = zext i8 %i.lq to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !65
  %i.lx = icmp eq i8 %i.lt, %i.lw
  br i1 %i.lx, label %bb.ae, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ly, %i.ln
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !119

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.split.i39
  %i.ma = add nuw i64 %.sroa.5.2, 1               ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %i.ma, %.pre30.i
  br i1 %exitcond.not.i.i40, label %.critedge, label %.lr.ph.i.split.i39, !llvm.loop !583

_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit: ; preds = %bb.ae, %.lr.ph.i.split.us.i41, %.preheader.split.i.preheader, %bb.ad
  %.sroa.5.6 = phi i64 [ %.0712.i.i, %.preheader.split.i.preheader ], [ %i.la, %bb.ad ], [ %.sroa.5.3, %.lr.ph.i.split.us.i41 ], [ %.sroa.5.2, %bb.ae ] ; 2 uses
  %.not84118 = icmp eq i64 %.sroa.5.6, %.pre30.i
  br i1 %.not84118, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !64 ; 3 uses
  %i.md = icmp eq i64 %i.mc, 0
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit
  %.sroa.7.0119 = phi i64 [ %.sroa.5.6, %.lr.ph ], [ %.sroa.7.2, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ] ; 4 uses
  %i.me = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.sroa.7.0119 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !64
  %i.mi = icmp eq i64 %i.mh, %i.mc
  br i1 %i.mi, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  br i1 %i.md, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ag
  %i.mj = load ptr, ptr %i.kx, align 8, !tbaa !77
  %i.mk = load ptr, ptr %i.mf, align 8, !tbaa !77
  %bcmp.i.i = call i32 @bcmp(ptr %i.mk, ptr %i.mj, i64 %i.mc)
  %.not85 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82, label %.critedge

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82: ; preds = %bb.ag, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.not.i46 = icmp ult i64 %.sroa.7.0119, %.pre30.i
  br i1 %.not.i46, label %bb.ah, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit

bb.ah:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82
  %i.ml = add nuw i64 %.sroa.7.0119, 1            ; 4 uses
  %i.mm = icmp ult i64 %i.ml, %.pre30.i
  br i1 %i.mm, label %.lr.ph.i48, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit

.lr.ph.i48:                                       ; preds = %bb.ah
  %i.mn = load i64, ptr %i.kz, align 8, !tbaa !64
  %.fr = freeze i64 %i.mn                         ; 3 uses
  %.not6.i.i.i.i.i.i49 = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i.i.i49, label %.lr.ph.i48.split.us, label %.lr.ph.i48.split

.lr.ph.i48.split.us:                              ; preds = %.lr.ph.i48, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us
  %.sroa.7.1.us = phi i64 [ %i.ms, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %i.ml, %.lr.ph.i48 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.sroa.7.1.us
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !64
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us: ; preds = %.lr.ph.i48.split.us
  %i.ms = add nuw i64 %.sroa.7.1.us, 1            ; 2 uses
  %exitcond.not.i50.us = icmp eq i64 %i.ms, %.pre30.i
  br i1 %exitcond.not.i50.us, label %.critedge, label %.lr.ph.i48.split.us, !llvm.loop !583

.lr.ph.i48.split:                                 ; preds = %.lr.ph.i48, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i
  %.sroa.7.1 = phi i64 [ %i.nl, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i ], [ %i.ml, %.lr.ph.i48 ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %.sroa.7.1 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !64
  %i.mw = icmp eq i64 %i.mv, %.fr
  br i1 %i.mw, label %.lr.ph.i.preheader.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i48.split
  %i.mx = load ptr, ptr %i.mt, align 8, !tbaa !77 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.fr
  %i.mz = load ptr, ptr %i.ky, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i51:                             ; preds = %bb.ai, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i52 = phi ptr [ %i.nk, %bb.ai ], [ %i.mz, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i53 = phi ptr [ %i.nj, %bb.ai ], [ %i.mx, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.na = load i8, ptr %.sroa.03.07.i.i.i.i.i.i53, align 1, !tbaa !65
  %i.nb = load i8, ptr %.sroa.0.08.i.i.i.i.i.i52, align 1, !tbaa !65
  %i.nc = zext i8 %i.na to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !65
  %i.nf = zext i8 %i.nb to i64
  %i.ng = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !65
  %i.ni = icmp eq i8 %i.ne, %i.nh
  br i1 %i.ni, label %bb.ai, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i51
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i53, i64 1 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i52, i64 1
  %.not.i.i.i.i.i.i54 = icmp eq ptr %i.nj, %i.my
  br i1 %.not.i.i.i.i.i.i54, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, label %.lr.ph.i.i.i.i.i.i51, !llvm.loop !119

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i51, %.lr.ph.i48.split
  %i.nl = add nuw i64 %.sroa.7.1, 1               ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %i.nl, %.pre30.i
  br i1 %exitcond.not.i50, label %.critedge, label %.lr.ph.i48.split, !llvm.loop !583

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit: ; preds = %.lr.ph.i48.split.us, %bb.ai, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82, %bb.ah
  %.sroa.7.2 = phi i64 [ %i.ml, %bb.ah ], [ %.sroa.7.0119, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread82 ], [ %.sroa.7.1, %bb.ai ], [ %.sroa.7.1.us, %.lr.ph.i48.split.us ] ; 2 uses
  %.not84 = icmp eq i64 %.sroa.7.2, %.pre30.i
  br i1 %.not84, label %.critedge, label %bb.af

.critedge:                                        ; preds = %bb.b, %bb.g, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.af, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184, %..critedge.loopexit130_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.nm = phi ptr [ %.pre137.pre138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre137.pre138, %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i ], [ %.pre137.pre138, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ], [ %.pre137.pre138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pre137.pre138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184 ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ %.pre137.pre138, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i ], [ %.pre137.pre, %..critedge.loopexit130_crit_edge ], [ %.pre137.pre138, %bb.af ], [ %.pre137.pre138, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.pre137.pre138, %bb.g ], [ %.pre137.pre138, %bb.b ] ; 2 uses
  %.5 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZSt4nextIN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEE10iterator_tISt4pairIS8_S8_EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.i ], [ true, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EEppEv.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread184 ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us.i ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i.us ], [ true, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10iterator_tISt4pairIS7_S7_EE7matchesEm.exit.i ], [ false, %..critedge.loopexit130_crit_edge ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.af ], [ false, %bb.g ], [ false, %bb.b ]
  %i.nn = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %.critedge
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !65
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit

_ZN7httplib6detail18stream_line_readerD2Ev.exit:  ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret i1 %.5

.body:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %bb.c
  %.pn27.pn = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i ], [ %i.r, %bb.c ], [ %i.fa, %bb.ac ]
  %i.nr = load ptr, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %.body
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !65
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #46
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !77
  %i.h = load ptr, ptr %0, align 8, !tbaa !77
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
  br i1 %.b, label %bb.c, label %bb.b, !prof !283

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
