Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonCastOperator?download=true
inline.NumInlined: 36269
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE0EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.kg = icmp eq i64 %i.kf, %.sroa.7.1.i.i.i
  %i.kh = and i64 %i.ji, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.kg, i64 %i.kh, i64 %i.ji
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.080.i.i.i = phi i64 [ %i.ji, %bb.av ], [ %spec.select90.i.i.i, %bb.aw ] ; 2 uses
  %i.ki = and i64 %.080.i.i.i, 1
  %i.kj = add nuw nsw i64 %i.ki, %.080.i.i.i      ; 2 uses
  %i.kk = icmp samesign ugt i64 %i.kj, 18014398509481983 ; 2 uses
  %i.kl = zext i1 %i.kk to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.jj, %i.kl ; 2 uses
  %i.km = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.km, label %.noexc57.i.i, label %bb.ay, !prof !330

bb.ay:                                            ; preds = %bb.ax
  %i.kn = lshr i64 %i.kj, 1
  %i.ko = and i64 %i.kn, 13510798882111487
  %i.kp = select i1 %i.kk, i64 0, i64 %i.ko
  %i.kq = shl nuw nsw i64 %spec.select92.i.i.i, 52
  %i.kr = select i1 %i.dy, i64 -9223372036854775808, i64 0
  %i.ks = or disjoint i64 %i.kp, %i.kr
  %i.kt = or i64 %i.ks, %i.kq
  %i.ku = bitcast i64 %i.kt to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i

.noexc57.i.i:                                     ; preds = %bb.ax
  %i.kv = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.a) #38 ; 2 uses
  %i.kw = call double @llvm.fabs.f64(double %i.kv)
  %spec.select.i74.i.i = fcmp ule double %i.kw, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i74.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86

bb.az:                                            ; preds = %bb.ae
  %i.kx = select i1 %i.dy, i64 19, i64 20         ; 2 uses
  %i.ky = icmp ugt i64 %.044.i.i.i, %i.kx
  br i1 %i.ky, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kz = icmp eq i64 %.044.i.i.i, %i.kx
  br i1 %i.kz, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.dy, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.la = icmp ugt i64 %.6246.i.i, -9223372036854775808
  br i1 %i.la, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lb = sub i64 0, %.6246.i.i
  %i.lc = bitcast i64 %i.lb to double
  %i.ld = zext i8 %i.gd to i64
  %i.le = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !413, !range !396, !noalias !9636, !noundef !397
  %.not58.i.i.i = icmp eq i8 %i.lf, 0
  br i1 %.not58.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86

bb.be:                                            ; preds = %bb.bb
  %i.lg = icmp ne i8 %i.dx, 49
  %i.lh = icmp sgt i64 %.6246.i.i, -1
  %or.cond5.i.i.i = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %or.cond5.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86, label %.thread296.i.i

bb.bf:                                            ; preds = %bb.ba
  %i.li = icmp slt i64 %.6246.i.i, 0
  br i1 %i.li, label %.thread296.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lj = sub nsw i64 0, %.6246.i.i
  %i.lk = select i1 %i.dy, i64 %i.lj, i64 %.6246.i.i
  br label %.thread296.i.i

.thread296.i.i:                                   ; preds = %bb.bg, %bb.bf, %bb.be
  %.sroa.10144.2.i.i = phi i32 [ 2, %bb.bg ], [ 3, %bb.be ], [ 3, %bb.bf ]
  %.sroa.0143.2.in.i.i = phi i64 [ %i.lk, %bb.bg ], [ %.6246.i.i, %bb.be ], [ %.6246.i.i, %bb.bf ]
  %.sroa.0143.2.i.i = bitcast i64 %.sroa.0143.2.in.i.i to double
  %i.ll = zext i8 %i.gd to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !413, !range !396, !noalias !9636, !noundef !397
  %.not57.i.i.i = icmp eq i8 %i.ln, 0
  br i1 %.not57.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i: ; preds = %.noexc57.i.i, %bb.ay, %bb.au, %bb.at, %bb.ao, %bb.am, %bb.ah, %.noexc56.i.i
  %.sroa.0143.1.i.i = phi double [ %i.hl, %.noexc56.i.i ], [ %i.hq, %bb.ah ], [ %i.jm, %bb.at ], [ %i.jy, %bb.au ], [ %i.ku, %bb.ay ], [ %spec.select354.i.i, %bb.am ], [ %i.ie, %bb.ao ], [ %i.kv, %.noexc57.i.i ]
  %.1.i55.i.i = phi i32 [ %..i73.i.i, %.noexc56.i.i ], [ 0, %bb.ah ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.ay ], [ 0, %bb.am ], [ 0, %bb.ao ], [ 0, %.noexc57.i.i ] ; 2 uses
  %.not60.i.i.i = icmp eq i32 %.1.i55.i.i, 0      ; 2 uses
  %.not.i42.i.i = and i1 %.not59.i.i.i, %.not60.i.i.i
  br i1 %.not.i42.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i, %.thread296.i.i, %bb.bd
  %.sroa.0143.4311.i.i = phi double [ %.sroa.0143.1.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i ], [ %i.lc, %bb.bd ], [ %.sroa.0143.2.i.i, %.thread296.i.i ] ; 3 uses
  %.sroa.10144.4310.i.i = phi i32 [ 1, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i ], [ 2, %bb.bd ], [ %.sroa.10144.2.i.i, %.thread296.i.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !2415, !noalias !9636
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !2423, !noalias !9636
  %i.ls = icmp eq i32 %i.lr, 1
  br i1 %i.ls, label %bb.bh, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86

bb.bh:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9636
  switch i32 %.sroa.10144.4310.i.i, label %default.unreachable [
    i32 1, label %bb.bi
    i32 2, label %bb.bj
    i32 3, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.lt = fcmp une double %.sroa.0143.4311.i.i, 0.000000e+00
  %i.lu = zext i1 %i.lt to i8
  store i8 %i.lu, ptr %i.ck, align 4, !tbaa !413
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82

bb.bj:                                            ; preds = %bb.bh
  %i.lv = call i1 @llvm.is.fpclass.f64(double %.sroa.0143.4311.i.i, /* (nan inf nzero sub norm) */ i32 959)
  %i.lw = zext i1 %i.lv to i8
  store i8 %i.lw, ptr %i.ck, align 4, !tbaa !413
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82

bb.bk:                                            ; preds = %bb.bh
  %i.lx = call i1 @llvm.is.fpclass.f64(double %.sroa.0143.4311.i.i, /* (nan inf nzero sub norm) */ i32 959)
  %i.ly = zext i1 %i.lx to i8
  store i8 %i.ly, ptr %i.ck, align 4, !tbaa !413
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  %i.ma = icmp eq ptr %.sroa.10.0.copyload, %i.i
  %spec.select455.i.i = select i1 %i.ma, ptr %.sroa.10.0.copyload, ptr %i.i
  %i.mb = load i32, ptr %spec.select455.i.i, align 4, !tbaa !329, !noalias !9637
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.mc ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !328, !noalias !9637
  %.not.i65.i.i = icmp eq i8 %i.me, 34
  br i1 %.not.i65.i.i, label %bb.bl, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bl:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !2415, !noalias !9637 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !2423, !noalias !9637
  %i.mj = icmp eq i32 %i.mi, 1
  br i1 %i.mj, label %bb.bm, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bm:                                            ; preds = %bb.bl
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.ml = load ptr, ptr %i.mg, align 8, !tbaa !318, !noalias !9638
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !9638
  %i.mo = call noundef ptr %i.mn(ptr noundef nonnull align 8 dereferenceable(48) %i.mg, ptr noundef nonnull %i.mk, ptr noundef %i.g, i1 noundef zeroext false) #38, !noalias !9638, !inline_history !9623 ; 2 uses
  %.not.i71.i.i = icmp eq ptr %i.mo, null
  br i1 %.not.i71.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.g to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.g, ptr %2, align 8, !noalias !9639
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.ms, ptr %i.mt, align 8, !noalias !9639
  %i.mu = call i24 @_ZN5folly6detail11str_to_boolEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #38, !noalias !9639 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i = trunc i24 %i.mu to i8
  %i.mv = icmp eq i8 %.sroa.01.0.extract.trunc.i.i.i.i.i, 1
  br i1 %i.mv, label %bb.bo, label %bb.bq, !prof !398

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5.0.extract.shift.i.i.i.i.i = lshr i24 %i.mu, 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !466, !noalias !9640 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.mt, align 8, !tbaa !466, !noalias !9640 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.mw, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bo, %bb.bp
  %.0915.i.i.i.i.i.i.i.i = phi ptr [ %i.mw, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.mx = load i8, ptr %.0915.i.i.i.i.i.i.i.i, align 1, !tbaa !328
  %i.my = sext i8 %i.mx to i32
  %i.mz = call i32 @isspace(i32 noundef %i.my) #51
  %.not12.not.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bp

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.extract.trunc.i.i = trunc nuw i24 %.sroa.5.0.extract.shift.i.i.i.i.i to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %i.lz, align 4, !tbaa !413
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82

default.unreachable:                              ; preds = %bb.bh
  unreachable

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86: ; preds = %bb.ab, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.a, %.critedge.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i, %bb.v, %.thread296.i.i, %bb.bc, %bb.bd, %bb.az, %bb.be, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i, %.noexc.i.i, %bb.ag, %.noexc57.i.i
  %.sroa.11.1.ph.i.i.ph = phi i32 [ 9, %.noexc57.i.i ], [ 9, %bb.ag ], [ 9, %.noexc.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i ], [ 9, %bb.be ], [ 10, %bb.az ], [ 9, %bb.bd ], [ 10, %bb.bc ], [ 9, %.thread296.i.i ], [ 9, %bb.v ], [ %spec.select.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i ], [ 9, %.critedge.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.a ], [ 31, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread305.i.i ], [ 9, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9636
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i
  %..i.i.i = select i1 %.not59.i.i.i, i32 0, i32 9
  %.5.i.i.i = select i1 %.not60.i.i.i, i32 %..i.i.i, i32 %.1.i55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9636
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82: ; preds = %.thread271.i.i, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, %bb.bi, %bb.bj, %bb.bk
  %i.na = load ptr, ptr %1, align 8, !tbaa !318
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext true)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.thread267.i.i, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, %.thread265.i.i, %bb.bl, %bb.bm, %bb.bq, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82, %bb.g, %bb.h, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86, %bb.a
  %.2 = phi i32 [ %i.c, %bb.a ], [ %.5.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit ], [ 0, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread82 ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.11.1.ph.i.i.ph, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread86 ], [ 17, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit ], [ 17, %.thread265.i.i ], [ 31, %bb.bl ], [ 5, %bb.bm ], [ 17, %bb.bq ], [ 31, %.thread267.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i ], [ 17, %.lr.ph.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret i32 %.2
}

declare void @_ZN8facebook5velox13simdjsonParseERKN8simdjson18padded_string_viewE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14simdjson_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8simdjson14simdjson_error4whatEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2425
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [16 x i8], ptr @_ZN8simdjson8internal11error_codesE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9642
  ret ptr %i.f
}

; Function Attrs: nounwind
declare noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS9_EUlT_E0_ZNKS7_ILS8_0EEEvSB_SC_SF_SG_EUliE_EEvSF_SH_T0_EUlSH_E_EEvPKmiibSH_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.2068) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.2118, align 8           ; 6 uses
  %6 = alloca %class.anon.2117, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS5_RKNS0_17SelectivityVectorERSA_EUlT_E0_ZNKS8_ILS9_0EEEvSC_SD_SG_SH_EUliE_EEvSG_SI_T0_EUlSI_E_EEvPKmiibSI_EUlimE_ZNS3_ISM_EEvSO_iibSI_EUliE_EEviiSI_SL_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS9_EUlT_E0_ZNKS7_ILS8_0EEEvSB_SC_SF_SG_EUliE_EEvSF_SH_T0_EUlSH_E_EEvPKmiibSH_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS5_RKNS0_17SelectivityVectorERSA_EUlT_E0_ZNKS8_ILS9_0EEEvSC_SD_SG_SH_EUliE_EEvSG_SI_T0_EUlSI_E_EEvPKmiibSI_EUlimE_ZNS3_ISM_EEvSO_iibSI_EUliE_EEviiSI_SL_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS9_EUlT_E0_ZNKS7_ILS8_0EEEvSB_SC_SF_SG_EUliE_EEvSF_SH_T0_EUlSH_E_EEvPKmiibSH_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS5_RKNS0_17SelectivityVectorERSA_EUlT_E0_ZNKS8_ILS9_0EEEvSC_SD_SG_SH_EUliE_EEvSG_SI_T0_EUlSI_E_EEvPKmiibSI_EUlimE_ZNS3_ISM_EEvSO_iibSI_EUliE_EEviiSI_SL_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS9_EUlT_E0_ZNKS7_ILS8_0EEEvSB_SC_SF_SG_EUliE_EEvSF_SH_T0_EUlSH_E_EEvPKmiibSH_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9643

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS9_EUlT_E0_ZNKS7_ILS8_0EEEvSB_SC_SF_SG_EUliE_EEvSF_SH_T0_EUlSH_E_EEvPKmiibSH_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS5_RKNS0_17SelectivityVectorERSA_EUlT_E0_ZNKS8_ILS9_0EEEvSC_SD_SG_SH_EUliE_EEvSG_SI_T0_EUlSI_E_EEvPKmiibSI_EUlimE_ZNS3_ISM_EEvSO_iibSI_EUliE_EEviiSI_SL_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS5_RKNS0_17SelectivityVectorERSA_EUlT_E0_ZNKS8_ILS9_0EEEvSC_SD_SG_SH_EUliE_EEvSG_SI_T0_EUlSI_E_EEvPKmiibSI_EUlimE_ZNS3_ISM_EEvSO_iibSI_EUliE_EEviiSI_SL_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS9_EUlT_E0_ZNKS7_ILS8_0EEEvSB_SC_SF_SG_EUliE_EEvSF_SH_T0_EUlSH_E_EEvPKmiibSH_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.simdjson::padded_string_view", align 8 ; 6 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !9646, !range !396, !noundef !397
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9647
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !429
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit37, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS7_EUlT_E0_ZNKS5_ILS6_0EEEvS9_SA_SD_SE_EUliE_EEvSD_SF_T0_ENKUlSF_E_clIiEEDaSF_.exit
  %.047 = phi i64 [ %i.k, %.preheader ], [ %i.dn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_16JsonCastOperator12castFromJsonILNS0_8TypeKindE0EEEvRKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS7_EUlT_E0_ZNKS5_ILS6_0EEEvS9_SA_SD_SE_EUliE_EEvSD_SF_T0_ENKUlSF_E_clIiEEDaSF_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.047, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.m, %i.q               ; 7 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !1122 ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !2395, !nonnull !397, !align !437 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2397 ; 3 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !2398, !nonnull !397, !align !437 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 %i.r, ptr %i.x, align 8, !tbaa !1113
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1123 ; 3 uses
  %.not.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i21, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !318
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.z, i32 noundef %i.r)
          to label %.noexc unwind label %bb.g, !inline_history !2399

.noexc:                                           ; preds = %bb.b, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE3EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a

bb.ag:                                            ; preds = %bb.ab
  %i.go = icmp eq i64 %.1322.i.i.i, 0
  br i1 %i.go, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gp = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gq = mul nsw i64 %.1329365.i.i.i, 217706
  %i.gr = ashr i64 %i.gq, 16
  %i.gs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1322.i.i.i, i1 true) ; 2 uses
  %i.gt = shl i64 %.1322.i.i.i, %i.gs
  %i.gu = trunc nsw i64 %.1329365.i.i.i to i32
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 5472
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !429
  %i.ha = zext i64 %i.gt to i128                  ; 2 uses
  %i.hb = zext i64 %i.gz to i128
  %i.hc = mul nuw i128 %i.hb, %i.ha               ; 2 uses
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = lshr i128 %i.hc, 64
  %i.hf = trunc nuw i128 %i.he to i64             ; 3 uses
  %i.hg = and i64 %i.hf, 511
  %i.hh = icmp eq i64 %i.hg, 511
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr i8, ptr %i.gx, i64 5480
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !429
  %i.hk = zext i64 %i.hj to i128
  %i.hl = mul nuw i128 %i.hk, %i.ha
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = trunc nuw i128 %i.hm to i64             ; 2 uses
  %i.ho = add i64 %i.hn, %i.hd                    ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %spec.select.i.i.i.i = add nuw i64 %i.hq, %i.hf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.aj ], [ %i.hf, %bb.ai ] ; 3 uses
  %.sroa.037.0.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.hd, %bb.ai ]
  %i.hr = lshr i64 %.sroa.7.1.i.i.i.i, 63         ; 2 uses
  %i.hs = add nuw nsw i64 %i.hr, 9                ; 2 uses
  %i.ht = lshr i64 %.sroa.7.1.i.i.i.i, %i.hs      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gr, %i.gs
  %.neg.i.i.i = add nsw i64 %i.hr, %reass.sub.i.i.i ; 4 uses
  %i.hu = add nsw i64 %.neg.i.i.i, 1086
  %i.hv = icmp slt i64 %.neg.i.i.i, -1085
  br i1 %i.hv, label %bb.al, label %bb.ao, !prof !330

bb.al:                                            ; preds = %bb.ak
  %i.hw = icmp samesign ult i64 %.neg.i.i.i, -1148
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hx = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nuw nsw i64 -1085, %.neg.i.i.i
  %i.hz = lshr i64 %i.ht, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
  %i.ic = lshr i64 %i.ib, 1
  %i.id = icmp samesign ugt i64 %i.ib, 9007199254740991
  %i.ie = and i64 %i.ic, 13510798882111487
  %i.if = select i1 %i.id, i64 4503599627370496, i64 0
  %i.ig = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.ih = or disjoint i64 %i.if, %i.ig
  %i.ii = or disjoint i64 %i.ih, %i.ie
  %i.ij = bitcast i64 %i.ii to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.ik = icmp ult i64 %.sroa.037.0.i.i.i.i, 2
  %i.il = add nsw i64 %.1329365.i.i.i, 4
  %i.im = icmp ult i64 %i.il, 28
  %or.cond7.i.i.i.i = and i1 %i.im, %i.ik
  %i.in = and i64 %i.ht, 3
  %i.io = icmp eq i64 %i.in, 1
  %i.ip = select i1 %or.cond7.i.i.i.i, i1 %i.io, i1 false
  br i1 %i.ip, label %bb.ap, label %bb.aq, !prof !330

bb.ap:                                            ; preds = %bb.ao
  %i.iq = shl i64 %i.ht, %i.hs
  %i.ir = icmp eq i64 %i.iq, %.sroa.7.1.i.i.i.i
  %i.is = and i64 %i.ht, 72057594037927932
  %spec.select90.i.i.i.i = select i1 %i.ir, i64 %i.is, i64 %i.ht
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.080.i.i.i.i = phi i64 [ %i.ht, %bb.ao ], [ %spec.select90.i.i.i.i, %bb.ap ] ; 2 uses
  %i.it = and i64 %.080.i.i.i.i, 1
  %i.iu = add nuw nsw i64 %i.it, %.080.i.i.i.i    ; 2 uses
  %i.iv = icmp samesign ugt i64 %i.iu, 18014398509481983 ; 2 uses
  %i.iw = zext i1 %i.iv to i64
  %spec.select92.i.i.i.i = add nuw nsw i64 %i.hu, %i.iw ; 2 uses
  %i.ix = icmp samesign ugt i64 %spec.select92.i.i.i.i, 2046
  br i1 %i.ix, label %.noexc57.i.i.i, label %bb.ar, !prof !330

bb.ar:                                            ; preds = %bb.aq
  %i.iy = lshr i64 %i.iu, 1
  %i.iz = and i64 %i.iy, 13510798882111487
  %i.ja = select i1 %i.iv, i64 0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %spec.select92.i.i.i.i, 52
  %i.jc = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.jd = or disjoint i64 %i.ja, %i.jc
  %i.je = or i64 %i.jd, %i.jb
  %i.jf = bitcast i64 %i.je to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

.noexc57.i.i.i:                                   ; preds = %bb.aq
  %i.jg = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.a) #38 ; 2 uses
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %spec.select.i76.i.i.i = fcmp ule double %i.jh, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i76.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

bb.as:                                            ; preds = %bb.x
  %i.ji = select i1 %i.cj, i64 19, i64 20         ; 2 uses
  %i.jj = icmp ugt i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jk = icmp eq i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jk, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %i.cj, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.jl = icmp ugt i64 %.1322.i.i.i, -9223372036854775808
  br i1 %i.jl, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = sub i64 0, %.1322.i.i.i
  %i.jn = bitcast i64 %i.jm to double
  %i.jo = zext i8 %i.eo to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !413, !range !396, !noalias !9678, !noundef !397
  %.not58.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not58.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.jr = icmp ne i8 %i.ci, 49
  %i.js = icmp sgt i64 %.1322.i.i.i, -1
  %or.cond5.i.i.i.i = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond5.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, label %.thread369.i.i.i

bb.ay:                                            ; preds = %bb.at
  %i.jt = icmp slt i64 %.1322.i.i.i, 0
  br i1 %i.jt, label %.thread369.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = sub nsw i64 0, %.1322.i.i.i
  %i.jv = select i1 %i.cj, i64 %i.ju, i64 %.1322.i.i.i
  br label %.thread369.i.i.i

.thread369.i.i.i:                                 ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10221.1.i.i.i = phi i32 [ 2, %bb.az ], [ 3, %bb.ax ], [ 3, %bb.ay ]
  %.sroa.0220.1.in.i.i.i = phi i64 [ %i.jv, %bb.az ], [ %.1322.i.i.i, %bb.ax ], [ %.1322.i.i.i, %bb.ay ]
  %.sroa.0220.1.i.i.i = bitcast i64 %.sroa.0220.1.in.i.i.i to double
  %i.jw = zext i8 %i.eo to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !413, !range !396, !noalias !9678, !noundef !397
  %.not57.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not57.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i: ; preds = %.noexc57.i.i.i, %bb.ar, %bb.an, %bb.am, %bb.ah, %bb.af, %bb.aa, %.noexc56.i.i.i
  %.sroa.0220.4.i.i.i = phi double [ %i.fw, %.noexc56.i.i.i ], [ %i.gb, %bb.aa ], [ %i.hx, %bb.am ], [ %i.ij, %bb.an ], [ %i.jf, %bb.ar ], [ %spec.select428.i.i.i, %bb.af ], [ %i.gp, %bb.ah ], [ %i.jg, %.noexc57.i.i.i ]
  %.1.i55.i.i.i = phi i32 [ %..i75.i.i.i, %.noexc56.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %.noexc57.i.i.i ] ; 2 uses
  %.not60.i.i.i.i = icmp eq i32 %.1.i55.i.i.i, 0  ; 2 uses
  %..i.i.i.i = select i1 %.not59.i.i.i.i, i32 0, i32 9
  %.5.i.i.i.i = select i1 %.not60.i.i.i.i, i32 %..i.i.i.i, i32 %.1.i55.i.i.i
  %.not.i42.i.i.i = and i1 %.not59.i.i.i.i, %.not60.i.i.i.i
  br i1 %.not.i42.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread369.i.i.i, %bb.aw
  %.sroa.0220.2384.i.i.i = phi double [ %.sroa.0220.4.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ %i.jn, %bb.aw ], [ %.sroa.0220.1.i.i.i, %.thread369.i.i.i ] ; 2 uses
  %.sroa.10221.2383.i.i.i = phi i32 [ 1, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 2, %bb.aw ], [ %.sroa.10221.1.i.i.i, %.thread369.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !2415, !noalias !9678
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !2423, !noalias !9678
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.ba, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

bb.ba:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9678
  switch i32 %.sroa.10221.2383.i.i.i, label %default.unreachable [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
    i32 3, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit
  ]

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread369.i.i.i, %bb.ax, %bb.aw, %bb.av, %bb.as, %.noexc57.i.i.i, %bb.z, %bb.u, %.noexc.i.i.i, %bb.o, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i, %.critedge.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a
  %.sroa.11.1.ph.i.i.i = phi i32 [ 9, %bb.u ], [ %.5.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 31, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a ], [ 9, %.critedge.i.i.i.i ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i ], [ 9, %bb.o ], [ 9, %.thread369.i.i.i ], [ 10, %bb.av ], [ 9, %bb.aw ], [ 10, %bb.as ], [ 9, %bb.ax ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i ], [ 9, %.noexc.i.i.i ], [ 9, %bb.z ], [ 9, %.noexc57.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9678
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ke = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIidEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %.sroa.0220.2384.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ax)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kf = bitcast double %.sroa.0220.2384.i.i.i to i64 ; 2 uses
  %i.kg = add i64 %i.kf, 2147483648
  %or.cond.i77.i.i.i = icmp ult i64 %i.kg, 4294967296
  br i1 %or.cond.i77.i.i.i, label %bb.bd, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kh = trunc nsw i64 %i.kf to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

bb.be:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.ki = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.ki, label %bb.bf, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.kj = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.kk
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i = phi ptr [ %i.kl, %bb.bf ], [ %i.az, %bb.be ] ; 3 uses
  br i1 %i.s, label %bb.bg, label %.thread393.i.i.i.a

bb.bg:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %.0.copyload.i13.i.i.i.i = load i32, ptr %.0.i.i.i.i.i, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1702195828
  %i.km = icmp ne i32 %..i, 4                     ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.km, label %.thread.i.i.i, label %.thread395.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bh
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 4
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !328
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !413, !range !396, !noundef !397
  br label %.thread393.i.i.i.a

bb.bi:                                            ; preds = %bb.bg
  %.not10.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1936482662
  %or.cond.i.i.i = and i1 %i.km, %.not10.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bj, label %.thread393.i.i.i.a

bb.bj:                                            ; preds = %bb.bi
  %i.ks = icmp eq i32 %..i, 5
  br i1 %i.ks, label %.thread395.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 5
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !328
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !413, !range !396, !noundef !397
  %i.ky = icmp ne i8 %i.kx, 0
  br label %.thread393.i.i.i.a

.thread393.i.i.i.a:                               ; preds = %bb.bk, %bb.bi, %.thread.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %i.kz = phi i8 [ %i.kr, %.thread.i.i.i ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = phi i1 [ false, %.thread.i.i.i ], [ false, %bb.bi ], [ %i.ky, %bb.bk ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ]
  %i.la = icmp ne i8 %i.kz, 0
  %brmerge.i.i.i.i = or i1 %i.la, %.not12.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %.thread395.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread395.i.i.i:                                 ; preds = %.thread393.i.i.i.a, %bb.bj, %bb.bh
  %i.lb = phi i8 [ %i.kz, %.thread393.i.i.i.a ], [ 0, %bb.bj ], [ 1, %bb.bh ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !2415
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !2423
  %i.lg = icmp eq i32 %i.lf, 1
  br i1 %i.lg, label %.thread399.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread399.i.i.i:                                 ; preds = %.thread395.i.i.i
  %i.lh = zext nneg i8 %i.lb to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

bb.bl:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.li = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.li, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, label %.thread512.i.i.i.a

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i: ; preds = %bb.bl
  %i.lj = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329, !noalias !9679
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lk
  %.pre.i.i.i = load i8, ptr %i.ll, align 1, !tbaa !328, !noalias !9679
  %i.lm = icmp eq i8 %.pre.i.i.i, 34
  br i1 %i.lm, label %bb.bm, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bm:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !2415, !noalias !9679 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !2423, !noalias !9679
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %.thread513.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread512.i.i.i.a:                               ; preds = %bb.bl
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !2415, !noalias !9679 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !2423, !noalias !9679
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %.thread513.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread513.i.i.i:                                 ; preds = %bb.bm, %.thread512.i.i.i.a
  %i.lx = phi i64 [ %i.ay, %.thread512.i.i.i.a ], [ %i.lk, %bb.bm ]
  %i.ly = phi ptr [ %i.lt, %.thread512.i.i.i.a ], [ %i.lo, %bb.bm ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lx
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !318, !noalias !9680
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !9680
  %i.me = call noundef ptr %i.md(ptr noundef nonnull align 8 dereferenceable(48) %i.ly, ptr noundef nonnull %i.ma, ptr noundef %i.g, i1 noundef zeroext false) #38, !noalias !9680, !inline_history !9671 ; 2 uses
  %.not.i71.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i71.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread513.i.i.i
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.g to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.g, ptr %2, align 8, !noalias !9681
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.mi, ptr %i.mj, align 8, !noalias !9681
  %i.mk = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #38, !noalias !9681 ; 2 uses
  %i.ml = and i64 %i.mk, 255
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.bo, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i.i, !prof !398

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !466, !noalias !9682 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mj, align 8, !tbaa !466, !noalias !9682 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mn, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bo, %bb.bp
  %.0915.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mn, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.mo = load i8, ptr %.0915.i.i.i.i.i.i.i.i.i, align 1, !tbaa !328
  %i.mp = sext i8 %i.mo to i32
  %i.mq = call i32 @isspace(i32 noundef %i.mp) #51
  %.not12.not.i.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bp

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i: ; preds = %bb.bp, %bb.bo
  %.sroa.63.0.extract.shift.i.i.i.i = lshr i64 %i.mk, 32
  %.sroa.0.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.63.0.extract.shift.i.i.i.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

default.unreachable:                              ; preds = %bb.ba
  unreachable

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, %bb.bb
  %.6.i.i.i = phi i32 [ %i.ke, %bb.bb ], [ %.sroa.11.1.ph.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i ] ; 2 uses
  %.not10 = icmp eq i32 %.6.i.i.i, 0
  br i1 %.not10, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split: ; preds = %.thread399.i.i.i, %bb.bd, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.sink = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i ], [ %i.kh, %bb.bd ], [ %i.lh, %.thread399.i.i.i ]
  %.sink152.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sink152 = load ptr, ptr %.sink152.in, align 8
  %i.mr = load ptr, ptr %.sink152, align 8, !tbaa !1123
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %.sink139 = load ptr, ptr %i.ms, align 8, !tbaa !1495
  %.sink141.in = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sink141 = load ptr, ptr %.sink141.in, align 8
  %i.mt = load i32, ptr %.sink141, align 4, !tbaa !329
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %.sink139, i64 %i.mu
  store i32 %.sroa.0.0.extract.trunc.i.i.i.sink, ptr %i.mv, align 4, !tbaa !329
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78: ; preds = %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit
  %i.mw = load ptr, ptr %1, align 8, !tbaa !318
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext true)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.thread395.i.i.i, %.thread393.i.i.i.a, %.thread512.i.i.i.a, %bb.bm, %bb.bc, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %bb.ba, %.thread513.i.i.i, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78, %bb.g, %bb.h, %bb.a
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE1EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a

bb.ag:                                            ; preds = %bb.ab
  %i.go = icmp eq i64 %.1322.i.i.i, 0
  br i1 %i.go, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gp = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gq = mul nsw i64 %.1329365.i.i.i, 217706
  %i.gr = ashr i64 %i.gq, 16
  %i.gs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1322.i.i.i, i1 true) ; 2 uses
  %i.gt = shl i64 %.1322.i.i.i, %i.gs
  %i.gu = trunc nsw i64 %.1329365.i.i.i to i32
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 5472
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !429
  %i.ha = zext i64 %i.gt to i128                  ; 2 uses
  %i.hb = zext i64 %i.gz to i128
  %i.hc = mul nuw i128 %i.hb, %i.ha               ; 2 uses
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = lshr i128 %i.hc, 64
  %i.hf = trunc nuw i128 %i.he to i64             ; 3 uses
  %i.hg = and i64 %i.hf, 511
  %i.hh = icmp eq i64 %i.hg, 511
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr i8, ptr %i.gx, i64 5480
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !429
  %i.hk = zext i64 %i.hj to i128
  %i.hl = mul nuw i128 %i.hk, %i.ha
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = trunc nuw i128 %i.hm to i64             ; 2 uses
  %i.ho = add i64 %i.hn, %i.hd                    ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %spec.select.i.i.i.i = add nuw i64 %i.hq, %i.hf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.aj ], [ %i.hf, %bb.ai ] ; 3 uses
  %.sroa.037.0.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.hd, %bb.ai ]
  %i.hr = lshr i64 %.sroa.7.1.i.i.i.i, 63         ; 2 uses
  %i.hs = add nuw nsw i64 %i.hr, 9                ; 2 uses
  %i.ht = lshr i64 %.sroa.7.1.i.i.i.i, %i.hs      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gr, %i.gs
  %.neg.i.i.i = add nsw i64 %i.hr, %reass.sub.i.i.i ; 4 uses
  %i.hu = add nsw i64 %.neg.i.i.i, 1086
  %i.hv = icmp slt i64 %.neg.i.i.i, -1085
  br i1 %i.hv, label %bb.al, label %bb.ao, !prof !330

bb.al:                                            ; preds = %bb.ak
  %i.hw = icmp samesign ult i64 %.neg.i.i.i, -1148
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hx = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nuw nsw i64 -1085, %.neg.i.i.i
  %i.hz = lshr i64 %i.ht, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
  %i.ic = lshr i64 %i.ib, 1
  %i.id = icmp samesign ugt i64 %i.ib, 9007199254740991
  %i.ie = and i64 %i.ic, 13510798882111487
  %i.if = select i1 %i.id, i64 4503599627370496, i64 0
  %i.ig = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.ih = or disjoint i64 %i.if, %i.ig
  %i.ii = or disjoint i64 %i.ih, %i.ie
  %i.ij = bitcast i64 %i.ii to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.ik = icmp ult i64 %.sroa.037.0.i.i.i.i, 2
  %i.il = add nsw i64 %.1329365.i.i.i, 4
  %i.im = icmp ult i64 %i.il, 28
  %or.cond7.i.i.i.i = and i1 %i.im, %i.ik
  %i.in = and i64 %i.ht, 3
  %i.io = icmp eq i64 %i.in, 1
  %i.ip = select i1 %or.cond7.i.i.i.i, i1 %i.io, i1 false
  br i1 %i.ip, label %bb.ap, label %bb.aq, !prof !330

bb.ap:                                            ; preds = %bb.ao
  %i.iq = shl i64 %i.ht, %i.hs
  %i.ir = icmp eq i64 %i.iq, %.sroa.7.1.i.i.i.i
  %i.is = and i64 %i.ht, 72057594037927932
  %spec.select90.i.i.i.i = select i1 %i.ir, i64 %i.is, i64 %i.ht
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.080.i.i.i.i = phi i64 [ %i.ht, %bb.ao ], [ %spec.select90.i.i.i.i, %bb.ap ] ; 2 uses
  %i.it = and i64 %.080.i.i.i.i, 1
  %i.iu = add nuw nsw i64 %i.it, %.080.i.i.i.i    ; 2 uses
  %i.iv = icmp samesign ugt i64 %i.iu, 18014398509481983 ; 2 uses
  %i.iw = zext i1 %i.iv to i64
  %spec.select92.i.i.i.i = add nuw nsw i64 %i.hu, %i.iw ; 2 uses
  %i.ix = icmp samesign ugt i64 %spec.select92.i.i.i.i, 2046
  br i1 %i.ix, label %.noexc57.i.i.i, label %bb.ar, !prof !330

bb.ar:                                            ; preds = %bb.aq
  %i.iy = lshr i64 %i.iu, 1
  %i.iz = and i64 %i.iy, 13510798882111487
  %i.ja = select i1 %i.iv, i64 0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %spec.select92.i.i.i.i, 52
  %i.jc = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.jd = or disjoint i64 %i.ja, %i.jc
  %i.je = or i64 %i.jd, %i.jb
  %i.jf = bitcast i64 %i.je to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

.noexc57.i.i.i:                                   ; preds = %bb.aq
  %i.jg = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.a) #38 ; 2 uses
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %spec.select.i76.i.i.i = fcmp ule double %i.jh, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i76.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

bb.as:                                            ; preds = %bb.x
  %i.ji = select i1 %i.cj, i64 19, i64 20         ; 2 uses
  %i.jj = icmp ugt i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jk = icmp eq i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jk, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %i.cj, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.jl = icmp ugt i64 %.1322.i.i.i, -9223372036854775808
  br i1 %i.jl, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = sub i64 0, %.1322.i.i.i
  %i.jn = bitcast i64 %i.jm to double
  %i.jo = zext i8 %i.eo to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !413, !range !396, !noalias !9718, !noundef !397
  %.not58.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not58.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.jr = icmp ne i8 %i.ci, 49
  %i.js = icmp sgt i64 %.1322.i.i.i, -1
  %or.cond5.i.i.i.i = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond5.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, label %.thread369.i.i.i

bb.ay:                                            ; preds = %bb.at
  %i.jt = icmp slt i64 %.1322.i.i.i, 0
  br i1 %i.jt, label %.thread369.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = sub nsw i64 0, %.1322.i.i.i
  %i.jv = select i1 %i.cj, i64 %i.ju, i64 %.1322.i.i.i
  br label %.thread369.i.i.i

.thread369.i.i.i:                                 ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10221.1.i.i.i = phi i32 [ 2, %bb.az ], [ 3, %bb.ax ], [ 3, %bb.ay ]
  %.sroa.0220.1.in.i.i.i = phi i64 [ %i.jv, %bb.az ], [ %.1322.i.i.i, %bb.ax ], [ %.1322.i.i.i, %bb.ay ]
  %.sroa.0220.1.i.i.i = bitcast i64 %.sroa.0220.1.in.i.i.i to double
  %i.jw = zext i8 %i.eo to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !413, !range !396, !noalias !9718, !noundef !397
  %.not57.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not57.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i: ; preds = %.noexc57.i.i.i, %bb.ar, %bb.an, %bb.am, %bb.ah, %bb.af, %bb.aa, %.noexc56.i.i.i
  %.sroa.0220.4.i.i.i = phi double [ %i.fw, %.noexc56.i.i.i ], [ %i.gb, %bb.aa ], [ %i.hx, %bb.am ], [ %i.ij, %bb.an ], [ %i.jf, %bb.ar ], [ %spec.select428.i.i.i, %bb.af ], [ %i.gp, %bb.ah ], [ %i.jg, %.noexc57.i.i.i ]
  %.1.i55.i.i.i = phi i32 [ %..i75.i.i.i, %.noexc56.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %.noexc57.i.i.i ] ; 2 uses
  %.not60.i.i.i.i = icmp eq i32 %.1.i55.i.i.i, 0  ; 2 uses
  %..i.i.i.i = select i1 %.not59.i.i.i.i, i32 0, i32 9
  %.5.i.i.i.i = select i1 %.not60.i.i.i.i, i32 %..i.i.i.i, i32 %.1.i55.i.i.i
  %.not.i42.i.i.i = and i1 %.not59.i.i.i.i, %.not60.i.i.i.i
  br i1 %.not.i42.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread369.i.i.i, %bb.aw
  %.sroa.0220.2384.i.i.i = phi double [ %.sroa.0220.4.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ %i.jn, %bb.aw ], [ %.sroa.0220.1.i.i.i, %.thread369.i.i.i ] ; 2 uses
  %.sroa.10221.2383.i.i.i = phi i32 [ 1, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 2, %bb.aw ], [ %.sroa.10221.1.i.i.i, %.thread369.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !2415, !noalias !9718
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !2423, !noalias !9718
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.ba, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i

bb.ba:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9718
  switch i32 %.sroa.10221.2383.i.i.i, label %default.unreachable [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
    i32 3, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit
  ]

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread369.i.i.i, %bb.ax, %bb.aw, %bb.av, %bb.as, %.noexc57.i.i.i, %bb.z, %bb.u, %.noexc.i.i.i, %bb.o, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i, %.critedge.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a
  %.sroa.11.1.ph.i.i.i = phi i32 [ 9, %bb.u ], [ %.5.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 31, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread378.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a ], [ 9, %.critedge.i.i.i.i ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i ], [ 9, %bb.o ], [ 9, %.thread369.i.i.i ], [ 10, %bb.av ], [ 9, %bb.aw ], [ 10, %bb.as ], [ 9, %bb.ax ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i ], [ 9, %.noexc.i.i.i ], [ 9, %bb.z ], [ 9, %.noexc57.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9718
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ke = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIadEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %.sroa.0220.2384.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ax)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kf = bitcast double %.sroa.0220.2384.i.i.i to i64 ; 2 uses
  %i.kg = add i64 %i.kf, 128
  %or.cond.i77.i.i.i = icmp ult i64 %i.kg, 256
  br i1 %or.cond.i77.i.i.i, label %bb.bd, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kh = trunc nsw i64 %i.kf to i8
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

bb.be:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.ki = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.ki, label %bb.bf, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.kj = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.kk
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i = phi ptr [ %i.kl, %bb.bf ], [ %i.az, %bb.be ] ; 3 uses
  br i1 %i.s, label %bb.bg, label %.thread393.i.i.i.a

bb.bg:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %.0.copyload.i13.i.i.i.i = load i32, ptr %.0.i.i.i.i.i, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1702195828
  %i.km = icmp ne i32 %..i, 4                     ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.km, label %.thread.i.i.i, label %.thread395.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bh
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 4
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !328
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !413, !range !396, !noundef !397
  br label %.thread393.i.i.i.a

bb.bi:                                            ; preds = %bb.bg
  %.not10.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1936482662
  %or.cond.i.i.i = and i1 %i.km, %.not10.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bj, label %.thread393.i.i.i.a

bb.bj:                                            ; preds = %bb.bi
  %i.ks = icmp eq i32 %..i, 5
  br i1 %i.ks, label %.thread395.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 5
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !328
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !413, !range !396, !noundef !397
  %i.ky = icmp ne i8 %i.kx, 0
  br label %.thread393.i.i.i.a

.thread393.i.i.i.a:                               ; preds = %bb.bk, %bb.bi, %.thread.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %i.kz = phi i8 [ %i.kr, %.thread.i.i.i ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = phi i1 [ false, %.thread.i.i.i ], [ false, %bb.bi ], [ %i.ky, %bb.bk ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ]
  %i.la = icmp ne i8 %i.kz, 0
  %brmerge.i.i.i.i = or i1 %i.la, %.not12.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %.thread395.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread395.i.i.i:                                 ; preds = %.thread393.i.i.i.a, %bb.bj, %bb.bh
  %i.lb = phi i8 [ %i.kz, %.thread393.i.i.i.a ], [ 0, %bb.bj ], [ 1, %bb.bh ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !2415
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !2423
  %i.lg = icmp eq i32 %i.lf, 1
  br i1 %i.lg, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bl:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.lh = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.lh, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, label %.thread512.i.i.i.a

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i: ; preds = %bb.bl
  %i.li = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329, !noalias !9719
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lj
  %.pre.i.i.i = load i8, ptr %i.lk, align 1, !tbaa !328, !noalias !9719
  %i.ll = icmp eq i8 %.pre.i.i.i, 34
  br i1 %i.ll, label %bb.bm, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bm:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !2415, !noalias !9719 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !2423, !noalias !9719
  %i.lq = icmp eq i32 %i.lp, 1
  br i1 %i.lq, label %.thread513.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread512.i.i.i.a:                               ; preds = %bb.bl
  %i.lr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !2415, !noalias !9719 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !2423, !noalias !9719
  %i.lv = icmp eq i32 %i.lu, 1
  br i1 %i.lv, label %.thread513.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread513.i.i.i:                                 ; preds = %bb.bm, %.thread512.i.i.i.a
  %i.lw = phi i64 [ %i.ay, %.thread512.i.i.i.a ], [ %i.lj, %bb.bm ]
  %i.lx = phi ptr [ %i.ls, %.thread512.i.i.i.a ], [ %i.ln, %bb.bm ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lw
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ma = load ptr, ptr %i.lx, align 8, !tbaa !318, !noalias !9720
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !9720
  %i.md = call noundef ptr %i.mc(ptr noundef nonnull align 8 dereferenceable(48) %i.lx, ptr noundef nonnull %i.lz, ptr noundef %i.g, i1 noundef zeroext false) #38, !noalias !9720, !inline_history !9711 ; 2 uses
  %.not.i71.i.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i71.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread513.i.i.i
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.g to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.g, ptr %2, align 8, !noalias !9721
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.mh, ptr %i.mi, align 8, !noalias !9721
  %i.mj = call i24 @_ZN5folly6detail15str_to_integralIaEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #38, !noalias !9721 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i.i = trunc i24 %i.mj to i8
  %i.mk = icmp eq i8 %.sroa.01.0.extract.trunc.i.i.i.i.i.i, 1
  br i1 %i.mk, label %bb.bo, label %bb.bq, !prof !398

bb.bo:                                            ; preds = %bb.bn
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i24 %i.mj, 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !466, !noalias !9722 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mi, align 8, !tbaa !466, !noalias !9722 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ml, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bo, %bb.bp
  %.0915.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ml, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.mm = load i8, ptr %.0915.i.i.i.i.i.i.i.i.i, align 1, !tbaa !328
  %i.mn = sext i8 %i.mm to i32
  %i.mo = call i32 @isspace(i32 noundef %i.mn) #51
  %.not12.not.i.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bp

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i: ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.extract.trunc.i.i.i = trunc nuw i24 %.sroa.5.0.extract.shift.i.i.i.i.i.i to i8
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

default.unreachable:                              ; preds = %bb.ba
  unreachable

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i, %bb.bb
  %.6.i.i.i = phi i32 [ %.sroa.11.1.ph.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread346.i.i.i ], [ %i.ke, %bb.bb ] ; 2 uses
  %.not10 = icmp eq i32 %.6.i.i.i, 0
  br i1 %.not10, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split: ; preds = %.thread395.i.i.i, %bb.bd, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.sink = phi i8 [ %.sroa.0.0.extract.trunc.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i ], [ %i.kh, %bb.bd ], [ %i.lb, %.thread395.i.i.i ]
  %.sink152.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sink152 = load ptr, ptr %.sink152.in, align 8
  %i.mp = load ptr, ptr %.sink152, align 8, !tbaa !1123
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %.sink139 = load ptr, ptr %i.mq, align 8, !tbaa !1599
  %.sink141.in = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sink141 = load ptr, ptr %.sink141.in, align 8
  %i.mr = load i32, ptr %.sink141, align 4, !tbaa !329
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds i8, ptr %.sink139, i64 %i.ms
  store i8 %.sroa.0.0.extract.trunc.i.i.i.sink, ptr %i.mt, align 1, !tbaa !328
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78: ; preds = %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit
  %i.mu = load ptr, ptr %1, align 8, !tbaa !318
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext true)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.thread395.i.i.i, %.thread393.i.i.i.a, %.thread512.i.i.i.a, %bb.bm, %bb.bc, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %.thread513.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, %bb.ba, %bb.bq, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78, %bb.g, %bb.h, %bb.a
  %.2 = phi i32 [ %i.c, %bb.a ], [ %.6.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit ], [ 0, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78 ], [ 0, %bb.g ], [ 0, %bb.h ], [ 17, %bb.bq ], [ 17, %.thread393.i.i.i.a ], [ 31, %.thread512.i.i.i.a ], [ 31, %bb.bm ], [ 18, %bb.bc ], [ 17, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit ], [ 5, %.thread513.i.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i ], [ 31, %.thread395.i.i.i ], [ 18, %bb.ba ], [ 17, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret i32 %.2
}
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE2EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a

bb.ag:                                            ; preds = %bb.ab
  %i.go = icmp eq i64 %.1323.i.i.i, 0
  br i1 %i.go, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gp = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gq = mul nsw i64 %.1330366.i.i.i, 217706
  %i.gr = ashr i64 %i.gq, 16
  %i.gs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1323.i.i.i, i1 true) ; 2 uses
  %i.gt = shl i64 %.1323.i.i.i, %i.gs
  %i.gu = trunc nsw i64 %.1330366.i.i.i to i32
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 5472
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !429
  %i.ha = zext i64 %i.gt to i128                  ; 2 uses
  %i.hb = zext i64 %i.gz to i128
  %i.hc = mul nuw i128 %i.hb, %i.ha               ; 2 uses
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = lshr i128 %i.hc, 64
  %i.hf = trunc nuw i128 %i.he to i64             ; 3 uses
  %i.hg = and i64 %i.hf, 511
  %i.hh = icmp eq i64 %i.hg, 511
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr i8, ptr %i.gx, i64 5480
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !429
  %i.hk = zext i64 %i.hj to i128
  %i.hl = mul nuw i128 %i.hk, %i.ha
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = trunc nuw i128 %i.hm to i64             ; 2 uses
  %i.ho = add i64 %i.hn, %i.hd                    ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %spec.select.i.i.i.i = add nuw i64 %i.hq, %i.hf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.aj ], [ %i.hf, %bb.ai ] ; 3 uses
  %.sroa.037.0.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.hd, %bb.ai ]
  %i.hr = lshr i64 %.sroa.7.1.i.i.i.i, 63         ; 2 uses
  %i.hs = add nuw nsw i64 %i.hr, 9                ; 2 uses
  %i.ht = lshr i64 %.sroa.7.1.i.i.i.i, %i.hs      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gr, %i.gs
  %.neg.i.i.i = add nsw i64 %i.hr, %reass.sub.i.i.i ; 4 uses
  %i.hu = add nsw i64 %.neg.i.i.i, 1086
  %i.hv = icmp slt i64 %.neg.i.i.i, -1085
  br i1 %i.hv, label %bb.al, label %bb.ao, !prof !330

bb.al:                                            ; preds = %bb.ak
  %i.hw = icmp samesign ult i64 %.neg.i.i.i, -1148
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hx = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nuw nsw i64 -1085, %.neg.i.i.i
  %i.hz = lshr i64 %i.ht, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
  %i.ic = lshr i64 %i.ib, 1
  %i.id = icmp samesign ugt i64 %i.ib, 9007199254740991
  %i.ie = and i64 %i.ic, 13510798882111487
  %i.if = select i1 %i.id, i64 4503599627370496, i64 0
  %i.ig = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.ih = or disjoint i64 %i.if, %i.ig
  %i.ii = or disjoint i64 %i.ih, %i.ie
  %i.ij = bitcast i64 %i.ii to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.ik = icmp ult i64 %.sroa.037.0.i.i.i.i, 2
  %i.il = add nsw i64 %.1330366.i.i.i, 4
  %i.im = icmp ult i64 %i.il, 28
  %or.cond7.i.i.i.i = and i1 %i.im, %i.ik
  %i.in = and i64 %i.ht, 3
  %i.io = icmp eq i64 %i.in, 1
  %i.ip = select i1 %or.cond7.i.i.i.i, i1 %i.io, i1 false
  br i1 %i.ip, label %bb.ap, label %bb.aq, !prof !330

bb.ap:                                            ; preds = %bb.ao
  %i.iq = shl i64 %i.ht, %i.hs
  %i.ir = icmp eq i64 %i.iq, %.sroa.7.1.i.i.i.i
  %i.is = and i64 %i.ht, 72057594037927932
  %spec.select90.i.i.i.i = select i1 %i.ir, i64 %i.is, i64 %i.ht
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.080.i.i.i.i = phi i64 [ %i.ht, %bb.ao ], [ %spec.select90.i.i.i.i, %bb.ap ] ; 2 uses
  %i.it = and i64 %.080.i.i.i.i, 1
  %i.iu = add nuw nsw i64 %i.it, %.080.i.i.i.i    ; 2 uses
  %i.iv = icmp samesign ugt i64 %i.iu, 18014398509481983 ; 2 uses
  %i.iw = zext i1 %i.iv to i64
  %spec.select92.i.i.i.i = add nuw nsw i64 %i.hu, %i.iw ; 2 uses
  %i.ix = icmp samesign ugt i64 %spec.select92.i.i.i.i, 2046
  br i1 %i.ix, label %.noexc57.i.i.i, label %bb.ar, !prof !330

bb.ar:                                            ; preds = %bb.aq
  %i.iy = lshr i64 %i.iu, 1
  %i.iz = and i64 %i.iy, 13510798882111487
  %i.ja = select i1 %i.iv, i64 0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %spec.select92.i.i.i.i, 52
  %i.jc = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.jd = or disjoint i64 %i.ja, %i.jc
  %i.je = or i64 %i.jd, %i.jb
  %i.jf = bitcast i64 %i.je to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

.noexc57.i.i.i:                                   ; preds = %bb.aq
  %i.jg = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.a) #38 ; 2 uses
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %spec.select.i76.i.i.i = fcmp ule double %i.jh, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i76.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

bb.as:                                            ; preds = %bb.x
  %i.ji = select i1 %i.cj, i64 19, i64 20         ; 2 uses
  %i.jj = icmp ugt i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jk = icmp eq i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jk, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %i.cj, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.jl = icmp ugt i64 %.1323.i.i.i, -9223372036854775808
  br i1 %i.jl, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = sub i64 0, %.1323.i.i.i
  %i.jn = bitcast i64 %i.jm to double
  %i.jo = zext i8 %i.eo to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !413, !range !396, !noalias !9758, !noundef !397
  %.not58.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not58.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.jr = icmp ne i8 %i.ci, 49
  %i.js = icmp sgt i64 %.1323.i.i.i, -1
  %or.cond5.i.i.i.i = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond5.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, label %.thread370.i.i.i

bb.ay:                                            ; preds = %bb.at
  %i.jt = icmp slt i64 %.1323.i.i.i, 0
  br i1 %i.jt, label %.thread370.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = sub nsw i64 0, %.1323.i.i.i
  %i.jv = select i1 %i.cj, i64 %i.ju, i64 %.1323.i.i.i
  br label %.thread370.i.i.i

.thread370.i.i.i:                                 ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10222.1.i.i.i = phi i32 [ 2, %bb.az ], [ 3, %bb.ax ], [ 3, %bb.ay ]
  %.sroa.0221.1.in.i.i.i = phi i64 [ %i.jv, %bb.az ], [ %.1323.i.i.i, %bb.ax ], [ %.1323.i.i.i, %bb.ay ]
  %.sroa.0221.1.i.i.i = bitcast i64 %.sroa.0221.1.in.i.i.i to double
  %i.jw = zext i8 %i.eo to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !413, !range !396, !noalias !9758, !noundef !397
  %.not57.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not57.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i: ; preds = %.noexc57.i.i.i, %bb.ar, %bb.an, %bb.am, %bb.ah, %bb.af, %bb.aa, %.noexc56.i.i.i
  %.sroa.0221.4.i.i.i = phi double [ %i.fw, %.noexc56.i.i.i ], [ %i.gb, %bb.aa ], [ %i.hx, %bb.am ], [ %i.ij, %bb.an ], [ %i.jf, %bb.ar ], [ %spec.select430.i.i.i, %bb.af ], [ %i.gp, %bb.ah ], [ %i.jg, %.noexc57.i.i.i ]
  %.1.i55.i.i.i = phi i32 [ %..i75.i.i.i, %.noexc56.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %.noexc57.i.i.i ] ; 2 uses
  %.not60.i.i.i.i = icmp eq i32 %.1.i55.i.i.i, 0  ; 2 uses
  %..i.i.i.i = select i1 %.not59.i.i.i.i, i32 0, i32 9
  %.5.i.i.i.i = select i1 %.not60.i.i.i.i, i32 %..i.i.i.i, i32 %.1.i55.i.i.i
  %.not.i42.i.i.i = and i1 %.not59.i.i.i.i, %.not60.i.i.i.i
  br i1 %.not.i42.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread370.i.i.i, %bb.aw
  %.sroa.0221.2385.i.i.i = phi double [ %.sroa.0221.4.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ %i.jn, %bb.aw ], [ %.sroa.0221.1.i.i.i, %.thread370.i.i.i ] ; 2 uses
  %.sroa.10222.2384.i.i.i = phi i32 [ 1, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 2, %bb.aw ], [ %.sroa.10222.1.i.i.i, %.thread370.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !2415, !noalias !9758
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !2423, !noalias !9758
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.ba, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

bb.ba:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9758
  switch i32 %.sroa.10222.2384.i.i.i, label %default.unreachable [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
    i32 3, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit
  ]

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread370.i.i.i, %bb.ax, %bb.aw, %bb.av, %bb.as, %.noexc57.i.i.i, %bb.z, %bb.u, %.noexc.i.i.i, %bb.o, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i, %.critedge.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a
  %.sroa.11.1.ph.i.i.i = phi i32 [ 9, %bb.u ], [ %.5.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 31, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a ], [ 9, %.critedge.i.i.i.i ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i ], [ 9, %bb.o ], [ 9, %.thread370.i.i.i ], [ 10, %bb.av ], [ 9, %bb.aw ], [ 10, %bb.as ], [ 9, %bb.ax ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i ], [ 9, %.noexc.i.i.i ], [ 9, %bb.z ], [ 9, %.noexc57.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9758
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ke = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIsdEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %.sroa.0221.2385.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ax)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kf = bitcast double %.sroa.0221.2385.i.i.i to i64 ; 2 uses
  %i.kg = add i64 %i.kf, 32768
  %or.cond.i77.i.i.i = icmp ult i64 %i.kg, 65536
  br i1 %or.cond.i77.i.i.i, label %bb.bd, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kh = trunc nsw i64 %i.kf to i16
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

bb.be:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.ki = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.ki, label %bb.bf, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.kj = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.kk
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i = phi ptr [ %i.kl, %bb.bf ], [ %i.az, %bb.be ] ; 3 uses
  br i1 %i.s, label %bb.bg, label %.thread394.i.i.i.a

bb.bg:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %.0.copyload.i13.i.i.i.i = load i32, ptr %.0.i.i.i.i.i, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1702195828
  %i.km = icmp ne i32 %..i, 4                     ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.km, label %.thread.i.i.i, label %.thread396.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bh
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 4
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !328
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !413, !range !396, !noundef !397
  br label %.thread394.i.i.i.a

bb.bi:                                            ; preds = %bb.bg
  %.not10.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1936482662
  %or.cond.i.i.i = and i1 %i.km, %.not10.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bj, label %.thread394.i.i.i.a

bb.bj:                                            ; preds = %bb.bi
  %i.ks = icmp eq i32 %..i, 5
  br i1 %i.ks, label %.thread396.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 5
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !328
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !413, !range !396, !noundef !397
  %i.ky = icmp ne i8 %i.kx, 0
  br label %.thread394.i.i.i.a

.thread394.i.i.i.a:                               ; preds = %bb.bk, %bb.bi, %.thread.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %i.kz = phi i8 [ %i.kr, %.thread.i.i.i ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = phi i1 [ false, %.thread.i.i.i ], [ false, %bb.bi ], [ %i.ky, %bb.bk ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ]
  %i.la = icmp ne i8 %i.kz, 0
  %brmerge.i.i.i.i = or i1 %i.la, %.not12.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %.thread396.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread396.i.i.i:                                 ; preds = %.thread394.i.i.i.a, %bb.bj, %bb.bh
  %i.lb = phi i8 [ %i.kz, %.thread394.i.i.i.a ], [ 0, %bb.bj ], [ 1, %bb.bh ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !2415
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !2423
  %i.lg = icmp eq i32 %i.lf, 1
  br i1 %i.lg, label %.thread400.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread400.i.i.i:                                 ; preds = %.thread396.i.i.i
  %i.lh = zext nneg i8 %i.lb to i16
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

bb.bl:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.li = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.li, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, label %.thread514.i.i.i.a

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i: ; preds = %bb.bl
  %i.lj = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329, !noalias !9759
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lk
  %.pre.i.i.i = load i8, ptr %i.ll, align 1, !tbaa !328, !noalias !9759
  %i.lm = icmp eq i8 %.pre.i.i.i, 34
  br i1 %i.lm, label %bb.bm, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bm:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !2415, !noalias !9759 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !2423, !noalias !9759
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %.thread515.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread514.i.i.i.a:                               ; preds = %bb.bl
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !2415, !noalias !9759 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !2423, !noalias !9759
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %.thread515.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread515.i.i.i:                                 ; preds = %bb.bm, %.thread514.i.i.i.a
  %i.lx = phi i64 [ %i.ay, %.thread514.i.i.i.a ], [ %i.lk, %bb.bm ]
  %i.ly = phi ptr [ %i.lt, %.thread514.i.i.i.a ], [ %i.lo, %bb.bm ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lx
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !318, !noalias !9760
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !9760
  %i.me = call noundef ptr %i.md(ptr noundef nonnull align 8 dereferenceable(48) %i.ly, ptr noundef nonnull %i.ma, ptr noundef %i.g, i1 noundef zeroext false) #38, !noalias !9760, !inline_history !9751 ; 2 uses
  %.not.i71.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i71.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread515.i.i.i
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.g to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.g, ptr %2, align 8, !noalias !9761
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.mi, ptr %i.mj, align 8, !noalias !9761
  %i.mk = call i32 @_ZN5folly6detail15str_to_integralIsEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #38, !noalias !9761 ; 2 uses
  %i.ml = and i32 %i.mk, 255
  %i.mm = icmp eq i32 %i.ml, 1
  br i1 %i.mm, label %bb.bo, label %_ZN5folly5tryToIsEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i.i, !prof !398

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !466, !noalias !9762 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mj, align 8, !tbaa !466, !noalias !9762 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mn, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bo, %bb.bp
  %.0915.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mn, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.mo = load i8, ptr %.0915.i.i.i.i.i.i.i.i.i, align 1, !tbaa !328
  %i.mp = sext i8 %i.mo to i32
  %i.mq = call i32 @isspace(i32 noundef %i.mp) #51
  %.not12.not.i.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bp

_ZN5folly5tryToIsEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i: ; preds = %bb.bp, %bb.bo
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i32 %i.mk, 16
  %.sroa.0.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i to i16
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split

default.unreachable:                              ; preds = %bb.ba
  unreachable

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, %bb.bb
  %.6.i.i.i = phi i32 [ %i.ke, %bb.bb ], [ %.sroa.11.1.ph.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i ] ; 2 uses
  %.not10 = icmp eq i32 %.6.i.i.i, 0
  br i1 %.not10, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split: ; preds = %.thread400.i.i.i, %bb.bd, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.sink = phi i16 [ %.sroa.0.0.extract.trunc.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i ], [ %i.kh, %bb.bd ], [ %i.lh, %.thread400.i.i.i ]
  %.sink152.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sink152 = load ptr, ptr %.sink152.in, align 8
  %i.mr = load ptr, ptr %.sink152, align 8, !tbaa !1123
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %.sink139 = load ptr, ptr %i.ms, align 8, !tbaa !1715
  %.sink141.in = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sink141 = load ptr, ptr %.sink141.in, align 8
  %i.mt = load i32, ptr %.sink141, align 4, !tbaa !329
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [2 x i8], ptr %.sink139, i64 %i.mu
  store i16 %.sroa.0.0.extract.trunc.i.i.i.sink, ptr %i.mv, align 2, !tbaa !703
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78: ; preds = %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78.sink.split, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit
  %i.mw = load ptr, ptr %1, align 8, !tbaa !318
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext true)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.thread396.i.i.i, %.thread394.i.i.i.a, %.thread514.i.i.i.a, %bb.bm, %bb.bc, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %bb.ba, %.thread515.i.i.i, %_ZN5folly5tryToIsEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78, %bb.g, %bb.h, %bb.a
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE4EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a

bb.ag:                                            ; preds = %bb.ab
  %i.go = icmp eq i64 %.1323.i.i.i, 0
  br i1 %i.go, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gp = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gq = mul nsw i64 %.1330366.i.i.i, 217706
  %i.gr = ashr i64 %i.gq, 16
  %i.gs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1323.i.i.i, i1 true) ; 2 uses
  %i.gt = shl i64 %.1323.i.i.i, %i.gs
  %i.gu = trunc nsw i64 %.1330366.i.i.i to i32
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 5472
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !429
  %i.ha = zext i64 %i.gt to i128                  ; 2 uses
  %i.hb = zext i64 %i.gz to i128
  %i.hc = mul nuw i128 %i.hb, %i.ha               ; 2 uses
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = lshr i128 %i.hc, 64
  %i.hf = trunc nuw i128 %i.he to i64             ; 3 uses
  %i.hg = and i64 %i.hf, 511
  %i.hh = icmp eq i64 %i.hg, 511
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr i8, ptr %i.gx, i64 5480
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !429
  %i.hk = zext i64 %i.hj to i128
  %i.hl = mul nuw i128 %i.hk, %i.ha
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = trunc nuw i128 %i.hm to i64             ; 2 uses
  %i.ho = add i64 %i.hn, %i.hd                    ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %spec.select.i.i.i.i = add nuw i64 %i.hq, %i.hf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.aj ], [ %i.hf, %bb.ai ] ; 3 uses
  %.sroa.037.0.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.hd, %bb.ai ]
  %i.hr = lshr i64 %.sroa.7.1.i.i.i.i, 63         ; 2 uses
  %i.hs = add nuw nsw i64 %i.hr, 9                ; 2 uses
  %i.ht = lshr i64 %.sroa.7.1.i.i.i.i, %i.hs      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gr, %i.gs
  %.neg.i.i.i = add nsw i64 %i.hr, %reass.sub.i.i.i ; 4 uses
  %i.hu = add nsw i64 %.neg.i.i.i, 1086
  %i.hv = icmp slt i64 %.neg.i.i.i, -1085
  br i1 %i.hv, label %bb.al, label %bb.ao, !prof !330

bb.al:                                            ; preds = %bb.ak
  %i.hw = icmp samesign ult i64 %.neg.i.i.i, -1148
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hx = select i1 %i.cj, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nuw nsw i64 -1085, %.neg.i.i.i
  %i.hz = lshr i64 %i.ht, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
  %i.ic = lshr i64 %i.ib, 1
  %i.id = icmp samesign ugt i64 %i.ib, 9007199254740991
  %i.ie = and i64 %i.ic, 13510798882111487
  %i.if = select i1 %i.id, i64 4503599627370496, i64 0
  %i.ig = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.ih = or disjoint i64 %i.if, %i.ig
  %i.ii = or disjoint i64 %i.ih, %i.ie
  %i.ij = bitcast i64 %i.ii to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.ik = icmp ult i64 %.sroa.037.0.i.i.i.i, 2
  %i.il = add nsw i64 %.1330366.i.i.i, 4
  %i.im = icmp ult i64 %i.il, 28
  %or.cond7.i.i.i.i = and i1 %i.im, %i.ik
  %i.in = and i64 %i.ht, 3
  %i.io = icmp eq i64 %i.in, 1
  %i.ip = select i1 %or.cond7.i.i.i.i, i1 %i.io, i1 false
  br i1 %i.ip, label %bb.ap, label %bb.aq, !prof !330

bb.ap:                                            ; preds = %bb.ao
  %i.iq = shl i64 %i.ht, %i.hs
  %i.ir = icmp eq i64 %i.iq, %.sroa.7.1.i.i.i.i
  %i.is = and i64 %i.ht, 72057594037927932
  %spec.select90.i.i.i.i = select i1 %i.ir, i64 %i.is, i64 %i.ht
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.080.i.i.i.i = phi i64 [ %i.ht, %bb.ao ], [ %spec.select90.i.i.i.i, %bb.ap ] ; 2 uses
  %i.it = and i64 %.080.i.i.i.i, 1
  %i.iu = add nuw nsw i64 %i.it, %.080.i.i.i.i    ; 2 uses
  %i.iv = icmp samesign ugt i64 %i.iu, 18014398509481983 ; 2 uses
  %i.iw = zext i1 %i.iv to i64
  %spec.select92.i.i.i.i = add nuw nsw i64 %i.hu, %i.iw ; 2 uses
  %i.ix = icmp samesign ugt i64 %spec.select92.i.i.i.i, 2046
  br i1 %i.ix, label %.noexc57.i.i.i, label %bb.ar, !prof !330

bb.ar:                                            ; preds = %bb.aq
  %i.iy = lshr i64 %i.iu, 1
  %i.iz = and i64 %i.iy, 13510798882111487
  %i.ja = select i1 %i.iv, i64 0, i64 %i.iz
  %i.jb = shl nuw nsw i64 %spec.select92.i.i.i.i, 52
  %i.jc = select i1 %i.cj, i64 -9223372036854775808, i64 0
  %i.jd = or disjoint i64 %i.ja, %i.jc
  %i.je = or i64 %i.jd, %i.jb
  %i.jf = bitcast i64 %i.je to double
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

.noexc57.i.i.i:                                   ; preds = %bb.aq
  %i.jg = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.a) #38 ; 2 uses
  %i.jh = call double @llvm.fabs.f64(double %i.jg)
  %spec.select.i76.i.i.i = fcmp ule double %i.jh, f0x7FEFFFFFFFFFFFFF
  br i1 %spec.select.i76.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

bb.as:                                            ; preds = %bb.x
  %i.ji = select i1 %i.cj, i64 19, i64 20         ; 2 uses
  %i.jj = icmp ugt i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jk = icmp eq i64 %.044.i.i.i.i, %i.ji
  br i1 %i.jk, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %i.cj, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.jl = icmp ugt i64 %.1323.i.i.i, -9223372036854775808
  br i1 %i.jl, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = sub i64 0, %.1323.i.i.i
  %i.jn = bitcast i64 %i.jm to double
  %i.jo = zext i8 %i.eo to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !413, !range !396, !noalias !9798, !noundef !397
  %.not58.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not58.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.jr = icmp ne i8 %i.ci, 49
  %i.js = icmp sgt i64 %.1323.i.i.i, -1
  %or.cond5.i.i.i.i = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond5.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, label %.thread370.i.i.i

bb.ay:                                            ; preds = %bb.at
  %i.jt = icmp slt i64 %.1323.i.i.i, 0
  br i1 %i.jt, label %.thread370.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = sub nsw i64 0, %.1323.i.i.i
  %i.jv = select i1 %i.cj, i64 %i.ju, i64 %.1323.i.i.i
  br label %.thread370.i.i.i

.thread370.i.i.i:                                 ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10222.1.i.i.i = phi i32 [ 2, %bb.az ], [ 3, %bb.ax ], [ 3, %bb.ay ]
  %.sroa.0221.1.in.i.i.i = phi i64 [ %i.jv, %bb.az ], [ %.1323.i.i.i, %bb.ax ], [ %.1323.i.i.i, %bb.ay ]
  %.sroa.0221.1.i.i.i = bitcast i64 %.sroa.0221.1.in.i.i.i to double
  %i.jw = zext i8 %i.eo to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !413, !range !396, !noalias !9798, !noundef !397
  %.not57.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not57.i.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i: ; preds = %.noexc57.i.i.i, %bb.ar, %bb.an, %bb.am, %bb.ah, %bb.af, %bb.aa, %.noexc56.i.i.i
  %.sroa.0221.4.i.i.i = phi double [ %i.fw, %.noexc56.i.i.i ], [ %i.gb, %bb.aa ], [ %i.hx, %bb.am ], [ %i.ij, %bb.an ], [ %i.jf, %bb.ar ], [ %spec.select432.i.i.i, %bb.af ], [ %i.gp, %bb.ah ], [ %i.jg, %.noexc57.i.i.i ]
  %.1.i55.i.i.i = phi i32 [ %..i75.i.i.i, %.noexc56.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %.noexc57.i.i.i ] ; 2 uses
  %.not60.i.i.i.i = icmp eq i32 %.1.i55.i.i.i, 0  ; 2 uses
  %..i.i.i.i = select i1 %.not59.i.i.i.i, i32 0, i32 9
  %.5.i.i.i.i = select i1 %.not60.i.i.i.i, i32 %..i.i.i.i, i32 %.1.i55.i.i.i
  %.not.i42.i.i.i = and i1 %.not59.i.i.i.i, %.not60.i.i.i.i
  br i1 %.not.i42.i.i.i, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread370.i.i.i, %bb.aw
  %.sroa.0221.2385.i.i.i = phi double [ %.sroa.0221.4.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ %i.jn, %bb.aw ], [ %.sroa.0221.1.i.i.i, %.thread370.i.i.i ] ; 2 uses
  %.sroa.10222.2384.i.i.i = phi i32 [ 1, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 2, %bb.aw ], [ %.sroa.10222.1.i.i.i, %.thread370.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !2415, !noalias !9798
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !2423, !noalias !9798
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.ba, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i

bb.ba:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9798
  switch i32 %.sroa.10222.2384.i.i.i, label %default.unreachable [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
    i32 3, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit
  ]

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i, %.thread370.i.i.i, %bb.ax, %bb.aw, %bb.av, %bb.as, %.noexc57.i.i.i, %bb.z, %bb.u, %.noexc.i.i.i, %bb.o, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i, %.critedge.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a
  %.sroa.11.1.ph.i.i.i = phi i32 [ 9, %bb.u ], [ %.5.i.i.i.i, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i ], [ 31, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.thread379.i.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.i.i.i.a ], [ 9, %.critedge.i.i.i.i ], [ %spec.select.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread.i.i.i ], [ 9, %bb.o ], [ 9, %.thread370.i.i.i ], [ 10, %bb.av ], [ 9, %bb.aw ], [ 10, %bb.as ], [ 9, %bb.ax ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i.i.i ], [ 9, %.noexc.i.i.i ], [ 9, %bb.z ], [ 9, %.noexc57.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !9798
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ke = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_116convertIfInRangeIldEEN8simdjson10error_codeET0_RNS0_4exec13GenericWriterE(double noundef %.sroa.0221.2385.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ax)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.kf, align 8, !tbaa !1424
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val72.i.i.i = load ptr, ptr %i.kg, align 8, !tbaa !2492
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !1123
  %.val72.val.i.i.i = load i32, ptr %.val72.i.i.i, align 4, !tbaa !329
  %i.kh = getelementptr i8, ptr %.val.val.i.i.i, i64 24
  %.val.val.val.i.i.i = load ptr, ptr %i.kh, align 8, !tbaa !1829
  %i.ki = sext i32 %.val72.val.i.i.i to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %.val.val.val.i.i.i, i64 %i.ki
  store double %.sroa.0221.2385.i.i.i, ptr %i.kj, align 8, !tbaa !429
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78

bb.bd:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.kk = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.kk, label %bb.be, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kl = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.km
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i = phi ptr [ %i.kn, %bb.be ], [ %i.az, %bb.bd ] ; 3 uses
  br i1 %i.s, label %bb.bf, label %.thread396.i.i.i.a

bb.bf:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %.0.copyload.i13.i.i.i.i = load i32, ptr %.0.i.i.i.i.i, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1702195828
  %i.ko = icmp ne i32 %..i, 4                     ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ko, label %.thread506.i.i.i, label %.thread398.i.i.i

.thread506.i.i.i:                                 ; preds = %bb.bg
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 4
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !328
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !413, !range !396, !noundef !397
  br label %.thread396.i.i.i.a

bb.bh:                                            ; preds = %bb.bf
  %.not10.i.i.i.i = icmp eq i32 %.0.copyload.i13.i.i.i.i, 1936482662
  %or.cond.i.i.i = and i1 %i.ko, %.not10.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.bi, label %.thread396.i.i.i.a

bb.bi:                                            ; preds = %bb.bh
  %i.ku = icmp eq i32 %..i, 5
  br i1 %i.ku, label %.thread398.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 5
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !328
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !413, !range !396, !noundef !397
  %i.la = icmp ne i8 %i.kz, 0
  br label %.thread396.i.i.i.a

.thread396.i.i.i.a:                               ; preds = %bb.bj, %bb.bh, %.thread506.i.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i
  %i.lb = phi i8 [ %i.kt, %.thread506.i.i.i ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = phi i1 [ false, %.thread506.i.i.i ], [ false, %bb.bh ], [ %i.la, %bb.bj ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i.i.i ]
  %i.lc = icmp ne i8 %i.lb, 0
  %brmerge.i.i.i.i = or i1 %i.lc, %.not12.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %.thread398.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread398.i.i.i:                                 ; preds = %.thread396.i.i.i.a, %bb.bi, %bb.bg
  %i.ld = phi i8 [ %i.lb, %.thread396.i.i.i.a ], [ 0, %bb.bi ], [ 1, %bb.bg ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !2415
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !2423
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %.thread402.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread402.i.i.i:                                 ; preds = %.thread398.i.i.i
  %i.lj = zext nneg i8 %i.ld to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !1424, !nonnull !397, !align !437
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !1123
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !1829
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !2492, !nonnull !397, !align !820
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !329
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.ls
  store i64 %i.lj, ptr %i.lt, align 8, !tbaa !429
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78

bb.bk:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.lu = icmp eq ptr %.sroa.7.0.copyload, %i.i
  br i1 %i.lu, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i, label %.thread517.i.i.i.a

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i: ; preds = %bb.bk
  %i.lv = load i32, ptr %.sroa.7.0.copyload, align 4, !tbaa !329, !noalias !9799
  %i.lw = zext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lw
  %.pre.i.i.i = load i8, ptr %i.lx, align 1, !tbaa !328, !noalias !9799
  %i.ly = icmp eq i8 %.pre.i.i.i, 34
  br i1 %i.ly, label %bb.bl, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bl:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !2415, !noalias !9799 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !2423, !noalias !9799
  %i.md = icmp eq i32 %i.mc, 1
  br i1 %i.md, label %.thread518.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread517.i.i.i.a:                               ; preds = %bb.bk
  %i.me = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !2415, !noalias !9799 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !2423, !noalias !9799
  %i.mi = icmp eq i32 %i.mh, 1
  br i1 %i.mi, label %.thread518.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.thread518.i.i.i:                                 ; preds = %bb.bl, %.thread517.i.i.i.a
  %i.mj = phi i64 [ %i.ay, %.thread517.i.i.i.a ], [ %i.lw, %bb.bl ]
  %i.mk = phi ptr [ %i.mf, %.thread517.i.i.i.a ], [ %i.ma, %bb.bl ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.mj
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mn = load ptr, ptr %i.mk, align 8, !tbaa !318, !noalias !9800
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !9800
  %i.mq = call noundef ptr %i.mp(ptr noundef nonnull align 8 dereferenceable(48) %i.mk, ptr noundef nonnull %i.mm, ptr noundef %i.g, i1 noundef zeroext false) #38, !noalias !9800, !inline_history !9791 ; 2 uses
  %.not.i71.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i71.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bm

bb.bm:                                            ; preds = %.thread518.i.i.i
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.g to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.g, ptr %2, align 8, !noalias !9801
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.mu, ptr %i.mv, align 8, !noalias !9801
  %i.mw = call { i64, i64 } @_ZN5folly6detail15str_to_integralIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %2) #38, !noalias !9801 ; 2 uses
  %i.mx = extractvalue { i64, i64 } %i.mw, 0
  %i.my = and i64 %i.mx, 255
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.bn, label %_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i.i.i.i, !prof !398

bb.bn:                                            ; preds = %bb.bm
  %i.na = extractvalue { i64, i64 } %i.mw, 1
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !466, !noalias !9802 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mv, align 8, !tbaa !466, !noalias !9802 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not14.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nb, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bn, %bb.bo
  %.0915.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nb, %bb.bo ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bn ] ; 2 uses
  %i.nc = load i8, ptr %.0915.i.i.i.i.i.i.i.i.i, align 1, !tbaa !328
  %i.nd = sext i8 %i.nc to i32
  %i.ne = call i32 @isspace(i32 noundef %i.nd) #51
  %.not12.not.i.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bo

_ZN5folly5tryToIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.i.i.i.i: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.loopexit.i.i.i:                                  ; preds = %bb.bo, %bb.bn
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !1424, !nonnull !397, !align !437
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !1123
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !1829
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !2492, !nonnull !397, !align !820
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !329
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %i.nn
  store i64 %i.na, ptr %i.no, align 8, !tbaa !429
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit.thread78

default.unreachable:                              ; preds = %bb.ba
  unreachable

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i, %bb.bb
  %.6.i.i.i = phi i32 [ %.sroa.11.1.ph.i.i.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116check_if_integerEPKhm.exit.thread347.i.i.i ], [ %i.ke, %bb.bb ] ; 2 uses
end_hunk_4
