inline.NumInlined: 16951
inline.NumDeleted: 7027
begin_hunk_0_@_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE:bb.a
  %i.mf = trunc nsw i64 %.370.i.i.i to i32
  %i.mg = shl nsw i32 %i.mf, 1
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.mh ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 5472
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !75
  %i.ml = zext i64 %i.me to i128                  ; 2 uses
  %i.mm = zext i64 %i.mk to i128
  %i.mn = mul nuw i128 %i.mm, %i.ml               ; 2 uses
  %i.mo = trunc i128 %i.mn to i64                 ; 2 uses
  %i.mp = lshr i128 %i.mn, 64
  %i.mq = trunc nuw i128 %i.mp to i64             ; 3 uses
  %i.mr = and i64 %i.mq, 511
  %i.ms = icmp eq i64 %i.mr, 511
  br i1 %i.ms, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mt = getelementptr i8, ptr %i.mi, i64 5480
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !75
  %i.mv = zext i64 %i.mu to i128
  %i.mw = mul nuw i128 %i.mv, %i.ml
  %i.mx = lshr i128 %i.mw, 64
  %i.my = trunc nuw i128 %i.mx to i64             ; 2 uses
  %i.mz = add i64 %i.my, %i.mo                    ; 2 uses
  %i.na = icmp ult i64 %i.mz, %i.my
  %i.nb = zext i1 %i.na to i64
  %spec.select.i.i.i = add nuw i64 %i.nb, %i.mq
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.037.0.i.i.i = phi i64 [ %i.mz, %bb.bt ], [ %i.mo, %bb.bs ]
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.bt ], [ %i.mq, %bb.bs ] ; 3 uses
  %i.nc = lshr i64 %.sroa.7.1.i.i.i, 63           ; 2 uses
  %i.nd = add nuw nsw i64 %i.nc, 9                ; 2 uses
  %i.ne = lshr i64 %.sroa.7.1.i.i.i, %i.nd        ; 5 uses
  %reass.sub.i = sub nsw i64 %i.mc, %i.md
  %.neg980.i = add nsw i64 %i.nc, %reass.sub.i    ; 2 uses
  %i.nf = add nsw i64 %.neg980.i, 1086
  %i.ng = icmp slt i64 %.neg980.i, -1085
  br i1 %i.ng, label %bb.by, label %bb.bv, !prof !71

bb.bv:                                            ; preds = %bb.bu
  %i.nh = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.ni = add nsw i64 %.370.i.i.i, 4
  %i.nj = icmp ult i64 %i.ni, 28
  %or.cond7.i.i.i = and i1 %i.nj, %i.nh
  %i.nk = and i64 %i.ne, 3
  %i.nl = icmp eq i64 %i.nk, 1
  %i.nm = select i1 %or.cond7.i.i.i, i1 %i.nl, i1 false
  br i1 %i.nm, label %bb.bw, label %bb.bx, !prof !71

bb.bw:                                            ; preds = %bb.bv
  %i.nn = shl i64 %i.ne, %i.nd
  %i.no = icmp eq i64 %i.nn, %.sroa.7.1.i.i.i
  %i.np = and i64 %i.ne, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.no, i64 %i.np, i64 %i.ne
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.080.i.i.i = phi i64 [ %i.ne, %bb.bv ], [ %spec.select90.i.i.i, %bb.bw ] ; 2 uses
  %i.nq = and i64 %.080.i.i.i, 1
  %i.nr = add nuw nsw i64 %i.nq, %.080.i.i.i
  %i.ns = icmp samesign ugt i64 %i.nr, 18014398509481983
  %i.nt = zext i1 %i.ns to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.nf, %i.nt
  %i.nu = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.nu, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.by, !prof !71

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.bx, %bb.bq
  %i.nv = getelementptr inbounds i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.neg79.i.i.i
  %i.nw = call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.nv) #26
  %i.nx = call double @llvm.fabs.f64(double %i.nw)
  %i.ny = fcmp ule double %i.nx, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ny, label %bb.by, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.by:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.bx, %bb.bu, %bb.br
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !28
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !29
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !31
  %i.of = icmp eq i32 %i.oe, 1
  br i1 %i.of, label %bb.bz, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.og = load ptr, ptr %i.il, align 8, !tbaa !21 ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.c
  br i1 %i.oh, label %bb.ca, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store ptr %i.oj, ptr %i.il, align 8, !tbaa !21
  store i32 0, ptr %i.oi, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i: ; preds = %bb.ca, %bb.bz, %bb.by, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.bp, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i, %bb.bn, %bb.bh, %bb.bg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i
  %.sroa.6657.1.i = phi i32 [ 9, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i ], [ 31, %bb.by ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ], [ 9, %bb.bp ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ], [ 9, %bb.bh ], [ 9, %bb.bg ], [ 9, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit

bb.cb:                                            ; preds = %bb.a
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !21, !noalias !76 ; 3 uses
  %i.om = icmp eq ptr %i.ol, %i.c
  br i1 %i.om, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, label %.thread1071.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %bb.cb
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.oo = load i32, ptr %i.ol, align 4, !tbaa !3, !noalias !76
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.op
  %.pre998.i = load i8, ptr %i.oq, align 1, !tbaa !20, !noalias !76
  %i.or = icmp eq i8 %.pre998.i, 34
  br i1 %i.or, label %bb.cc, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.cc:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !28, !noalias !76
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !29, !noalias !76 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !31, !noalias !76
  %i.oy = icmp eq i32 %i.ox, 1
  br i1 %i.oy, label %bb.cd, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

.thread1071.i:                                    ; preds = %bb.cb
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !28, !noalias !76
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !29, !noalias !76 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !31, !noalias !76
  %i.pf = icmp eq i32 %i.pe, 1
  br i1 %i.pf, label %.thread1072.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  store ptr %i.pg, ptr %i.ok, align 8, !tbaa !21, !noalias !76
  store i32 0, ptr %i.on, align 4, !tbaa !41, !noalias !76
  br label %.thread1072.i

.thread1072.i:                                    ; preds = %bb.cd, %.thread1071.i
  %i.ph = phi i64 [ %i.op, %bb.cd ], [ %i.f, %.thread1071.i ]
  %i.pi = phi ptr [ %i.ov, %bb.cd ], [ %i.pc, %.thread1071.i ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ph
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !79, !noalias !80
  %i.pn = load ptr, ptr %i.pi, align 8, !tbaa !83, !noalias !80
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !80
  %i.pq = tail call noundef ptr %i.pp(ptr noundef nonnull align 8 dereferenceable(48) %i.pi, ptr noundef nonnull %i.pk, ptr noundef %i.pm, i1 noundef zeroext false) #26, !noalias !80, !inline_history !85 ; 2 uses
  %.not.i2.i124.i = icmp eq ptr %i.pq, null
  br i1 %.not.i2.i124.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %.thread1072.i
  store ptr %i.pq, ptr %i.pl, align 8, !tbaa !79, !noalias !80
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

bb.cf:                                            ; preds = %bb.a, %bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pt = sub i32 %i.ps, %i.e
  %i.pu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = sub i32 %i.pv, %i.e
  %..i.i.i = tail call i32 @llvm.umin.i32(i32 %i.pt, i32 %i.pw) ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !21 ; 3 uses
  %i.pz = icmp ne ptr %i.py, %i.c                 ; 2 uses
  br i1 %i.pz, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qa = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.qb
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i133.i = phi ptr [ %i.qc, %bb.cg ], [ %i.g, %bb.cf ] ; 3 uses
  %i.qd = icmp ugt i32 %..i.i.i, 3
  br i1 %i.qd, label %bb.ch, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.ch:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i
  %.0.copyload.i13.i.i = load i32, ptr %.0.i.i133.i, align 1 ; 2 uses
  %.not.i136.i = icmp eq i32 %.0.copyload.i13.i.i, 1702195828
  %i.qe = icmp ne i32 %..i.i.i, 4                 ; 2 uses
  br i1 %.not.i136.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.qe, label %.thread1073.i, label %.thread921.i

.thread1073.i:                                    ; preds = %bb.ci
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i.i133.i, i64 4
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !20
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !74, !range !26, !noundef !27
  %.not18 = icmp eq i8 %i.qj, 0
  br i1 %.not18, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %.thread921.i

bb.cj:                                            ; preds = %bb.ch
  %.not10.i.i = icmp eq i32 %.0.copyload.i13.i.i, 1936482662
  %or.cond1113.i = and i1 %i.qe, %.not10.i.i
  br i1 %or.cond1113.i, label %bb.ck, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.qk = icmp eq i32 %..i.i.i, 5
  br i1 %i.qk, label %.thread921.i, label %.thread919.i

.thread919.i:                                     ; preds = %bb.ck
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i.i133.i, i64 5
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !20
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !74, !range !26, !noundef !27
  %.not17 = icmp eq i8 %i.qp, 0
  br i1 %.not17, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %.thread921.i

.thread921.i:                                     ; preds = %.thread1073.i, %.thread919.i, %bb.ck, %bb.ci
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !28
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !29
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !31
  %i.qw = icmp ne i32 %i.qv, 1                    ; 2 uses
  %brmerge.i = or i1 %i.pz, %i.qw
  %.mux931.i = select i1 %i.qw, i32 31, i32 0
  br i1 %brmerge.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit, label %bb.cl

bb.cl:                                            ; preds = %.thread921.i
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.qy = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  store ptr %i.qy, ptr %i.px, align 8, !tbaa !21
  store i32 0, ptr %i.qx, align 4, !tbaa !41
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

bb.cm:                                            ; preds = %bb.a
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3
  %i.rb = sub i32 %i.ra, %i.e
  %i.rc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !3
  %i.re = sub i32 %i.rd, %i.e
  %..i.i137.i = tail call i32 @llvm.umin.i32(i32 %i.rb, i32 %i.re) ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !21 ; 3 uses
  %i.rh = icmp ne ptr %i.rg, %i.c                 ; 2 uses
  br i1 %i.rh, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ri = load i32, ptr %i.rg, align 4, !tbaa !3
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rj
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138.i: ; preds = %bb.cn, %bb.cm
  %.0.i.i139.i = phi ptr [ %i.rk, %bb.cn ], [ %i.g, %bb.cm ] ; 3 uses
  %i.rl = icmp ugt i32 %..i.i137.i, 3
  br i1 %i.rl, label %bb.co, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138..critedge.i140_crit_edge.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138..critedge.i140_crit_edge.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138.i
  %.pre.i = load i8, ptr %.0.i.i139.i, align 1, !tbaa !20
  br label %.critedge.i140.i

bb.co:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138.i
  %.0.copyload.i.i141.i = load i32, ptr %.0.i.i139.i, align 1 ; 2 uses
  %.not.i142.i = icmp eq i32 %.0.copyload.i.i141.i, 1819047278
  %i.rm = trunc i32 %.0.copyload.i.i141.i to i8
  br i1 %.not.i142.i, label %bb.cp, label %.critedge.i140.i

bb.cp:                                            ; preds = %bb.co
  %i.rn = icmp eq i32 %..i.i137.i, 4
  br i1 %i.rn, label %.critedge7.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.i.i139.i, i64 4
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !20
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !74, !range !26, !noundef !27
  %.not.i = icmp eq i8 %i.rs, 0
  br i1 %.not.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, label %.critedge7.i.i

.critedge7.i.i:                                   ; preds = %bb.cq, %bb.cp
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !28
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !29
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !31
  %i.rz = icmp ne i32 %i.ry, 1                    ; 2 uses
  %brmerge934.i = or i1 %i.rh, %i.rz
  br i1 %brmerge934.i, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread.thread.i

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread.thread.i: ; preds = %.critedge7.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  store ptr %i.sb, ptr %i.rf, align 8, !tbaa !21
  store i32 0, ptr %i.sa, align 4, !tbaa !41
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

.critedge.i140.i:                                 ; preds = %bb.co, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138..critedge.i140_crit_edge.i
  %i.sc = phi i8 [ %.pre.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i138..critedge.i140_crit_edge.i ], [ %i.rm, %bb.co ]
  %i.sd = icmp eq i8 %i.sc, 110
  %spec.select.i = select i1 %i.sd, i32 17, i32 8
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i: ; preds = %.critedge7.i.i
  br i1 %i.rz, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread116, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14

_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread116: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ct

_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread: ; preds = %bb.n, %bb.ap, %.thread1072.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, %bb.m, %bb.a, %bb.c, %bb.ao, %.thread919.i, %bb.am, %bb.cc, %bb.ac, %.thread1071.i, %.thread1073.i, %bb.cq, %.critedge.i140.i, %bb.g, %bb.j, %bb.aj, %bb.ag, %bb.cj, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i
  %.14.i.ph = phi i32 [ 5, %.thread1072.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i ], [ 28, %bb.ag ], [ 28, %bb.aj ], [ 28, %bb.j ], [ 28, %bb.g ], [ %spec.select.i, %.critedge.i140.i ], [ %i.ge, %bb.ap ], [ 17, %bb.cq ], [ 17, %.thread1073.i ], [ 31, %.thread1071.i ], [ 17, %bb.ac ], [ 31, %bb.cc ], [ %i.fq, %bb.am ], [ 17, %.thread919.i ], [ 3, %bb.ao ], [ 17, %bb.c ], [ 17, %bb.a ], [ %i.bj, %bb.m ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i ], [ 17, %bb.cj ], [ %i.bm, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ct

_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i, %bb.aq, %bb.bb, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread.i, %bb.cl, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.preheader.i, %bb.ce, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.preheader.i, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.thread.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.cr

_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i, %.thread921.i
  %.14.i = phi i32 [ %.sroa.6657.1.i, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i ], [ %.mux931.i, %.thread921.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.not = icmp eq i32 %.14.i, 0
  br i1 %.not.not, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread14, %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !21
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !28 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !29 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !31
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sn = zext i32 %i.sl to i64
  %i.so = load ptr, ptr %i.sm, align 8, !tbaa !40
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sn
  %i.sq = icmp eq ptr %i.sf, %i.sp
  br i1 %i.sq, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.sr = load ptr, ptr %i.b, align 8, !tbaa !7
  store ptr %i.sr, ptr %i.se, align 8, !tbaa !21
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sh, i64 40
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !79
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.st, ptr %i.su, align 8, !tbaa !86
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.sv, align 4, !tbaa !41
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread116, %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread, %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit, %bb.cr, %bb.cs
  %.1 = phi i32 [ 0, %bb.cs ], [ %.14.i, %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit ], [ 31, %bb.cr ], [ %.14.i.ph, %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread ], [ 31, %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread116 ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERKN8simdjson13padded_stringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.simdjson::simdjson_result", align 8 ; 9 uses
  %2 = alloca %"class.simdjson::padded_string_view", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::document", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !87
  %i.c = load i64, ptr %0, align 8, !tbaa !92, !noalias !87 ; 3 uses
  %i.d = add i64 %i.c, 64
  store i64 %i.c, ptr %2, align 8, !tbaa !93, !alias.scope !87
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !95, !alias.scope !87
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %spec.select.i.i, ptr %i.f, align 8, !tbaa !96, !alias.scope !87
  call void @_ZN8facebook5velox13simdjsonParseERKN8simdjson18padded_string_viewE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 16, i1 false), !tbaa.struct !101
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !102
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load <2 x i32>, ptr %i.m, align 8, !tbaa !20
  store <2 x i32> %i.n, ptr %i.l, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7
  store ptr %i.q, ptr %i.o, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !25, !range !26, !noundef !27
  store i8 %i.t, ptr %i.r, align 8, !tbaa !25
  store ptr null, ptr %i.j, align 8, !tbaa !28
  %i.u = call noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i32 %.0
}

declare void @_ZN8facebook5velox13simdjsonParseERKN8simdjson18padded_string_viewE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions38registerVectorFunction_udf_json_formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %"class.std::shared_ptr"], align 16 ; 7 uses
  %2 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %7 = alloca %"struct.facebook::velox::exec::VectorFunctionMetadata", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !103
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i8 0, i64 208, i1 false), !noalias !103
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %2, align 8, !tbaa !106, !noalias !103
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !114, !noalias !103
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !103
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !115, !noalias !103
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !103
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr null, ptr %i.g, align 8, !tbaa !116, !noalias !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !103
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !121, !noalias !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.h, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false), !noalias !103
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.i, align 8, !tbaa !123, !noalias !103
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.j, align 1, !tbaa !20, !noalias !103
  %i.k = invoke noundef nonnull align 8 dereferenceable(233) ptr @_ZN8facebook5velox4exec24FunctionSignatureBuilder10returnTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(233) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %._crit_edge.i.i18.i unwind label %bb.j, !noalias !103

._crit_edge.i.i18.i:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !103
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !121, !noalias !103
  store i32 1852797802, ptr %i.l, align 8, !noalias !103
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !123, !noalias !103
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.n, align 4, !tbaa !20, !noalias !103
  %i.o = invoke noundef nonnull align 8 dereferenceable(233) ptr @_ZN8facebook5velox4exec24FunctionSignatureBuilder11addArgumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(233) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN8facebook5velox4exec24FunctionSignatureBuilder12argumentTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.k, !noalias !103

_ZN8facebook5velox4exec24FunctionSignatureBuilder12argumentTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %._crit_edge.i.i18.i
  invoke void @_ZN8facebook5velox4exec24FunctionSignatureBuilder5buildEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(233) %i.o)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_:bb.a
  %or.cond3.i = and i1 %i.kn, %or.cond.i90
  %i.ko = icmp eq i64 %.1591, 0
  %or.cond = or i1 %i.ko, %or.cond3.i
  br i1 %or.cond, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kp = mul nsw i64 %.370.i, 217706
  %i.kq = ashr i64 %i.kp, 16
  %i.kr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1591, i1 true) ; 2 uses
  %i.ks = shl i64 %.1591, %i.kr
  %i.kt = trunc nsw i64 %.370.i to i32
  %i.ku = shl nsw i32 %i.kt, 1
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.kv ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 5472
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !75
  %i.kz = zext i64 %i.ks to i128                  ; 2 uses
  %i.la = zext i64 %i.ky to i128
  %i.lb = mul nuw i128 %i.la, %i.kz               ; 2 uses
  %i.lc = trunc i128 %i.lb to i64                 ; 2 uses
  %i.ld = lshr i128 %i.lb, 64
  %i.le = trunc nuw i128 %i.ld to i64             ; 3 uses
  %i.lf = and i64 %i.le, 511
  %i.lg = icmp eq i64 %i.lf, 511
  br i1 %i.lg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lh = getelementptr i8, ptr %i.kw, i64 5480
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !75
  %i.lj = zext i64 %i.li to i128
  %i.lk = mul nuw i128 %i.lj, %i.kz
  %i.ll = lshr i128 %i.lk, 64
  %i.lm = trunc nuw i128 %i.ll to i64             ; 2 uses
  %i.ln = add i64 %i.lm, %i.lc                    ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.lm
  %i.lp = zext i1 %i.lo to i64
  %spec.select.i = add nuw i64 %i.lp, %i.le
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.037.0.i = phi i64 [ %i.ln, %bb.be ], [ %i.lc, %bb.bd ]
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %bb.be ], [ %i.le, %bb.bd ] ; 3 uses
  %i.lq = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.lr = add nuw nsw i64 %i.lq, 9                ; 2 uses
  %i.ls = lshr i64 %.sroa.7.1.i, %i.lr            ; 5 uses
  %reass.sub = sub nsw i64 %i.kq, %i.kr
  %.neg832 = add nsw i64 %reass.sub, %i.lq        ; 2 uses
  %i.lt = add nsw i64 %.neg832, 1086
  %i.lu = icmp slt i64 %.neg832, -1085
  br i1 %i.lu, label %bb.bj, label %bb.bg, !prof !71

bb.bg:                                            ; preds = %bb.bf
  %i.lv = icmp ult i64 %.sroa.037.0.i, 2
  %i.lw = add nsw i64 %.370.i, 4
  %i.lx = icmp ult i64 %i.lw, 28
  %or.cond7.i = and i1 %i.lx, %i.lv
  %i.ly = and i64 %i.ls, 3
  %i.lz = icmp eq i64 %i.ly, 1
  %i.ma = select i1 %or.cond7.i, i1 %i.lz, i1 false
  br i1 %i.ma, label %bb.bh, label %bb.bi, !prof !71

bb.bh:                                            ; preds = %bb.bg
  %i.mb = shl i64 %i.ls, %i.lr
  %i.mc = icmp eq i64 %i.mb, %.sroa.7.1.i
  %i.md = and i64 %i.ls, 72057594037927932
  %spec.select90.i = select i1 %i.mc, i64 %i.md, i64 %i.ls
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.080.i = phi i64 [ %i.ls, %bb.bg ], [ %spec.select90.i, %bb.bh ] ; 2 uses
  %i.me = and i64 %.080.i, 1
  %i.mf = add nuw nsw i64 %i.me, %.080.i
  %i.mg = icmp samesign ugt i64 %i.mf, 18014398509481983
  %i.mh = zext i1 %i.mg to i64
  %spec.select92.i = add nuw nsw i64 %i.lt, %i.mh
  %i.mi = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.mi, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, label %bb.bj, !prof !71

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit: ; preds = %bb.bi, %bb.bb
  %i.mj = getelementptr inbounds i8, ptr %i.hi, i64 %.neg79.i
  %i.mk = tail call noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef nonnull %i.mj) #26
  %i.ml = tail call double @llvm.fabs.f64(double %i.mk)
  %i.mm = fcmp ule double %i.ml, f0x7FEFFFFFFFFFFFFF
  br i1 %i.mm, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit
  %.pre844 = load ptr, ptr %0, align 8, !tbaa !243 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre844, i64 8
  %.pre845 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, %bb.bf, %bb.bc, %bb.bi
  %i.mn = phi ptr [ %.pre845, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.gy, %bb.bf ], [ %i.gy, %bb.bc ], [ %i.gy, %bb.bi ] ; 2 uses
  %i.mo = phi ptr [ %.pre844, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.a, %bb.bf ], [ %i.a, %bb.bc ], [ %i.a, %bb.bi ] ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.c
  br i1 %i.mp, label %bb.bk, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 36 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !41 ; 4 uses
  %i.mt = load i32, ptr %i.gw, align 8, !tbaa !249
  %i.mu = icmp eq i32 %i.ms, %i.mt
  tail call void @llvm.assume(i1 %i.mu)
  %i.mv = icmp sgt i32 %i.ms, 1
  tail call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store ptr %i.mw, ptr %i.mq, align 8, !tbaa !21
  %i.mx = add nsw i32 %i.ms, -1
  %or.cond.i.i85 = icmp ne i32 %i.ms, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i85)
  store i32 %i.mx, ptr %i.mr, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bl:                                            ; preds = %bb.a
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !21, !noalias !270 ; 3 uses
  %i.na = icmp eq ptr %i.mz, %i.c
  br i1 %i.na, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %.thread767

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %bb.bl
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !41, !noalias !270 ; 4 uses
  %i.ne = load i32, ptr %i.nb, align 8, !tbaa !249, !noalias !270
  %i.nf = icmp eq i32 %i.nd, %i.ne
  tail call void @llvm.assume(i1 %i.nf), !noalias !270
  %i.ng = icmp sgt i32 %i.nd, 0
  tail call void @llvm.assume(i1 %i.ng), !noalias !270
  %i.nh = load i32, ptr %i.mz, align 4, !tbaa !3, !noalias !270
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !20, !noalias !270
  %.not.i98 = icmp eq i8 %i.nk, 34
  br i1 %.not.i98, label %bb.bm, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bm:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  store ptr %i.nl, ptr %i.my, align 8, !tbaa !21, !noalias !270
  %i.nm = add nsw i32 %i.nd, -1
  %or.cond.i.i106 = icmp ne i32 %i.nd, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i106), !noalias !270
  store i32 %i.nm, ptr %i.nc, align 4, !tbaa !41, !noalias !270
  br label %.thread767

.thread767:                                       ; preds = %bb.bl, %bb.bm
  %i.nn = phi i64 [ %i.ni, %bb.bm ], [ %i.f, %bb.bl ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !28, !noalias !273
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !29, !noalias !276 ; 2 uses
  %i.nv = load ptr, ptr %i.ns, align 8, !tbaa !79, !noalias !276
  %i.nw = load ptr, ptr %i.nu, align 8, !tbaa !83, !noalias !276
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !noalias !276
  %i.nz = tail call noundef ptr %i.ny(ptr noundef nonnull align 8 dereferenceable(48) %i.nu, ptr noundef nonnull %i.np, ptr noundef %i.nv, i1 noundef zeroext false) #26, !noalias !276, !inline_history !279 ; 2 uses
  %.not.i107 = icmp eq ptr %i.nz, null
  br i1 %.not.i107, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread767
  store ptr %i.nz, ptr %i.ns, align 8, !tbaa !79, !noalias !276
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bo:                                            ; preds = %bb.a, %bb.a
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !21 ; 3 uses
  %i.od = icmp ne ptr %i.oc, %i.c                 ; 2 uses
  br i1 %i.od, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oe = load i32, ptr %i.oc, align 4, !tbaa !3
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.of
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.0.i.i108 = phi ptr [ %i.og, %bb.bp ], [ %i.g, %bb.bo ] ; 3 uses
  %.0.copyload.i111 = load i32, ptr %.0.i.i108, align 1 ; 2 uses
  %i.oh = xor i32 %.0.copyload.i111, 1936482662
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 4
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !20
  %i.ok = xor i8 %i.oj, 101
  %i.ol = zext i8 %i.ok to i32
  %i.om = or i32 %i.oh, %i.ol
  %i.on = icmp ne i32 %.0.copyload.i111, 1702195828 ; 2 uses
  %i.oo = icmp ne i32 %i.om, 0
  %or.cond.i109 = select i1 %i.on, i1 %i.oo, i1 false
  br i1 %or.cond.i109, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.op = select i1 %i.on, i64 5, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !20
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !74, !range !26, !noundef !27
  %.not783 = icmp ne i8 %i.ou, 0                  ; 2 uses
  %brmerge = or i1 %.not783, %i.od
  %.mux = select i1 %.not783, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !41 ; 4 uses
  %i.ox = load i32, ptr %i.oa, align 8, !tbaa !249
  %i.oy = icmp eq i32 %i.ow, %i.ox
  tail call void @llvm.assume(i1 %i.oy)
  %i.oz = icmp sgt i32 %i.ow, 1
  tail call void @llvm.assume(i1 %i.oz)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store ptr %i.pa, ptr %i.ob, align 8, !tbaa !21
  %i.pb = add nsw i32 %i.ow, -1
  %or.cond.i.i.i = icmp ne i32 %i.ow, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.pb, ptr %i.ov, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.bt:                                            ; preds = %bb.a
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !21 ; 3 uses
  %3 = icmp ne ptr %i.pe, %i.c                    ; 2 uses
  br i1 %3, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i112, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pg
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i112

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i112: ; preds = %bb.bt, %bb.bu
  %.0.i.i113 = phi ptr [ %i.ph, %bb.bu ], [ %i.g, %bb.bt ] ; 2 uses
  %.0.copyload.i.i = load i32, ptr %.0.i.i113, align 1 ; 2 uses
  %.not.i120 = icmp eq i32 %.0.copyload.i.i, 1819047278
  br i1 %.not.i120, label %bb.bv, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

bb.bv:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i112
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i.i113, i64 4
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !20
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !74, !range !26, !noundef !27
  %.not = icmp eq i8 %i.pm, 0                     ; 2 uses
  %brmerge1007 = or i1 %.not, %3
  %.mux1008 = select i1 %.not, i32 17, i32 0
  br i1 %brmerge1007, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.thread955

.thread955:                                       ; preds = %bb.bv
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !41 ; 4 uses
  %i.pp = load i32, ptr %i.pc, align 8, !tbaa !249
  %i.pq = icmp eq i32 %i.po, %i.pp
  tail call void @llvm.assume(i1 %i.pq)
  %i.pr = icmp sgt i32 %i.po, 1
  tail call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store ptr %i.ps, ptr %i.pd, align 8, !tbaa !21
  %i.pt = add nsw i32 %i.po, -1
  %or.cond.i.i.i119 = icmp ne i32 %i.po, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i119)
  store i32 %i.pt, ptr %i.pn, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i112
  %i.pu = and i32 %.0.copyload.i.i, 255
  %.not979 = icmp eq i32 %i.pu, 110
  %spec.select = select i1 %.not979, i32 17, i32 8
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %bb.g, %bb.ab, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, %.lr.ph826, %bb.bv, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, %.thread955, %bb.br, %bb.ay, %bb.bq, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread, %bb.bs, %bb.v, %.thread, %bb.c, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88, %bb.ar, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87, %bb.ba, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, %bb.as, %bb.aa, %bb.y, %bb.f, %bb.a, %.thread767, %bb.bn, %bb.bj, %bb.bk
  %.14 = phi i32 [ %.mux1008, %bb.bv ], [ 5, %.thread767 ], [ 0, %.thread955 ], [ 17, %bb.bq ], [ %i.aq, %bb.f ], [ 0, %bb.bk ], [ 17, %bb.a ], [ 0, %.thread ], [ 9, %bb.as ], [ 0, %bb.bj ], [ 9, %bb.ar ], [ 0, %bb.bn ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit ], [ %spec.select, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit ], [ %i.ee, %bb.y ], [ %.mux, %bb.br ], [ 3, %bb.aa ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit88 ], [ 9, %bb.ba ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit87 ], [ 17, %bb.v ], [ 17, %bb.c ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread ], [ 9, %bb.ay ], [ 0, %bb.bs ], [ 0, %.lr.ph826 ], [ %i.ev, %bb.ab ], [ %i.au, %bb.g ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ]
  ret i32 %.14
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %.not5 = icmp ugt i32 %i.p, %i.o
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.q = phi i32 [ %i.x, %bb.d ], [ %i.p, %bb.a ]
  %.07 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]     ; 3 uses
  %.sroa.5.06 = phi ptr [ %i.t, %bb.d ], [ %i.b, %bb.a ]
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.5.06, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !20
  switch i8 %i.u, label %bb.d [
    i8 91, label %bb.b
    i8 123, label %bb.b
    i8 93, label %bb.c
    i8 125, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.v = add nsw i32 %.07, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.w = add nsw i32 %.07, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi i32 [ %.07, %.lr.ph ], [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %.not = icmp ugt i32 %i.x, %i.o
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !280

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.y = icmp eq i32 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  ret i1 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nounwind
declare noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14VectorFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_118JsonFormatFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_118JsonFormatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.611", align 16 ; 5 uses
  %7 = alloca %"class.std::shared_ptr.142", align 8 ; 11 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::shared_ptr.190", align 8 ; 7 uses
  %10 = alloca %"class.std::vector.193", align 8  ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.std::shared_ptr.190", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %2, align 8, !tbaa !281
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !287
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.m = load ptr, ptr %4, align 8, !tbaa !304
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !319
  store ptr %i.n, ptr %i.a, align 8, !tbaa !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !341
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN8facebook5velox7VARCHAREv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.190") align 8 %9)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #46
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJPNS1_6memory10MemoryPoolEibSt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEES3_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.d unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !351

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 288) #47, !noalias !351
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %7, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !129  ; 8 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !129
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !135
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !355
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !355
  br label %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.kj = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !29
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !31
  %i.ko = icmp eq i32 %i.kn, 1
  br i1 %i.ko, label %bb.av, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.av:                                            ; preds = %bb.au
  %i.kp = load ptr, ptr %i.ev, align 8, !tbaa !21 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.en
  br i1 %i.kq, label %bb.aw, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store ptr %i.kr, ptr %i.ev, align 8, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i

_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i: ; preds = %bb.aw, %bb.av, %bb.au, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, %bb.al, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i, %bb.aj, %bb.ad, %bb.ac, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i
  %.sroa.6400.1.i = phi i32 [ 9, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i ], [ 31, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i ], [ 9, %bb.al ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ], [ 9, %bb.ad ], [ 9, %bb.ac ], [ 9, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i: ; preds = %bb.c
  %i.ks = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3, !noalias !2684
  %i.ku = sub i32 %i.kt, %i.ag
  %i.kv = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !3, !noalias !2684
  %i.kx = sub i32 %i.kw, %i.ag
  %..i.i86.i = call i32 @llvm.umin.i32(i32 %i.ku, i32 %i.kx)
  %i.ky = zext i32 %..i.i86.i to i64
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i
  %.0.i105.i = phi i64 [ %i.ky, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i ], [ %i.kz, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i ] ; 2 uses
  %i.kz = add i64 %.0.i105.i, -1                  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !20  ; 2 uses
  %i.lc = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ld = icmp eq i8 %i.lc, 0
  br i1 %i.ld, label %bb.ay, label %bb.az, !prof !2679

bb.ay:                                            ; preds = %bb.ax
  %i.le = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i110.i = icmp eq i32 %i.le, 0
  br i1 %.not.i.i110.i, label %bb.az, label %.noexc.i111.i

.noexc.i111.i:                                    ; preds = %bb.ay
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.lf = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.az

bb.az:                                            ; preds = %.noexc.i111.i, %bb.ay, %bb.ax
  %i.lg = icmp ult i8 %i.lb, 33
  br i1 %i.lg, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i: ; preds = %bb.az
  %i.lh = zext nneg i8 %i.lb to i64
  %i.li = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.lj = shl nuw nsw i64 1, %i.lh
  %i.lk = and i64 %i.li, %i.lj
  %.not.i109.i = icmp eq i64 %i.lk, 0
  br i1 %.not.i109.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i, label %bb.ax, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i, %bb.az
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i105.i, ptr nonnull %i.ai)
  %i.ll = load ptr, ptr %i.v, align 8, !tbaa !7, !noalias !2687 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !21, !noalias !2692 ; 3 uses
  %i.lo = icmp eq ptr %i.ln, %i.ll                ; 2 uses
  %spec.select756.i = select i1 %i.lo, ptr %i.ln, ptr %i.ll
  %i.lp = load ptr, ptr %9, align 8, !tbaa !19, !noalias !2692
  %i.lq = load i32, ptr %spec.select756.i, align 4, !tbaa !3, !noalias !2692
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lr ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !20, !noalias !2692
  %.not.i66.i = icmp eq i8 %i.lt, 34
  br i1 %.not.i66.i, label %bb.ba, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.ba:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i
  %i.lu = load ptr, ptr %i.k, align 8, !tbaa !28, !noalias !2692
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !29, !noalias !2692 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !31, !noalias !2692
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.bb, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.lo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store ptr %i.ma, ptr %i.lm, align 8, !tbaa !21, !noalias !2692
  store i32 0, ptr %i.r, align 4, !tbaa !41, !noalias !2692
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.mc = load ptr, ptr %i.m, align 8, !tbaa !79, !noalias !2695
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !83, !noalias !2695
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !noalias !2695
  %i.mg = call noundef ptr %i.mf(ptr noundef nonnull align 8 dereferenceable(48) %i.lw, ptr noundef nonnull %i.mb, ptr noundef %i.mc, i1 noundef zeroext true) #26, !noalias !2695, !inline_history !2698 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i2.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.mg, ptr %i.m, align 8, !tbaa !79, !noalias !2695
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread179

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i: ; preds = %bb.c, %bb.c
  %i.mh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !3, !noalias !2699
  %i.mj = sub i32 %i.mi, %i.ag
  %i.mk = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3, !noalias !2699
  %i.mm = sub i32 %i.ml, %i.ag
  %..i.i85.i = call i32 @llvm.umin.i32(i32 %i.mj, i32 %i.mm)
  %i.mn = zext i32 %..i.i85.i to i64
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i
  %.0.i113.i = phi i64 [ %i.mn, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i ], [ %i.mo, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i ] ; 2 uses
  %i.mo = add i64 %.0.i113.i, -1                  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !20  ; 2 uses
  %i.mr = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.bg, label %bb.bh, !prof !2679

bb.bg:                                            ; preds = %bb.bf
  %i.mt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i118.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i118.i, label %bb.bh, label %.noexc.i119.i

.noexc.i119.i:                                    ; preds = %bb.bg
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.mu = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc.i119.i, %bb.bg, %bb.bf
  %i.mv = icmp ult i8 %i.mq, 33
  br i1 %i.mv, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i: ; preds = %bb.bh
  %i.mw = zext nneg i8 %i.mq to i64
  %i.mx = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.my = shl nuw nsw i64 1, %i.mw
  %i.mz = and i64 %i.mx, %i.my
  %.not.i117.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i117.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i, label %bb.bf, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i, %bb.bh
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i113.i, ptr nonnull %i.ai)
  %i.na = load ptr, ptr %i.v, align 8, !tbaa !7, !noalias !2702 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !3
  %i.nd = load i32, ptr %i.na, align 4, !tbaa !3  ; 3 uses
  %i.ne = sub i32 %i.nc, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = sub i32 %i.ng, %i.nd
  %..i.i.i = call i32 @llvm.umin.i32(i32 %i.ne, i32 %i.nh) ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !21 ; 3 uses
  %i.nk = icmp ne ptr %i.nj, %i.na                ; 2 uses
  br i1 %i.nk, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i
  %i.nl = load i32, ptr %i.nj, align 4, !tbaa !3
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i, %bb.bi
  %.sink753.i = phi i32 [ %i.nl, %bb.bi ], [ %i.nd, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i ]
  %.sink751.i = load ptr, ptr %9, align 8, !tbaa !19
  %i.nm = zext i32 %.sink753.i to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %.sink751.i, i64 %i.nm ; 3 uses
  %i.no = icmp ugt i32 %..i.i.i, 3
  br i1 %i.no, label %bb.bj, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.bj:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i
  %.0.copyload.i13.i.i = load i32, ptr %i.nn, align 1 ; 2 uses
  %.not.i75.i = icmp eq i32 %.0.copyload.i13.i.i, 1702195828
  %i.np = icmp ne i32 %..i.i.i, 4                 ; 2 uses
  br i1 %.not.i75.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.np, label %.thread728.i, label %.thread628.i

.thread728.i:                                     ; preds = %bb.bk
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !20
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !74, !range !26, !noundef !27
  %.not193 = icmp eq i8 %i.nu, 0
  br i1 %.not193, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %.thread628.i

bb.bl:                                            ; preds = %bb.bj
  %.not10.i.i = icmp eq i32 %.0.copyload.i13.i.i, 1936482662
  %or.cond755.i = and i1 %i.np, %.not10.i.i
  br i1 %or.cond755.i, label %bb.bm, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.nv = icmp eq i32 %..i.i.i, 5
  br i1 %i.nv, label %.thread628.i, label %.thread626.i

.thread626.i:                                     ; preds = %bb.bm
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nn, i64 5
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !20
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !74, !range !26, !noundef !27
  %.not192 = icmp eq i8 %i.oa, 0
  br i1 %.not192, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %.thread628.i

.thread628.i:                                     ; preds = %.thread728.i, %.thread626.i, %bb.bm, %bb.bk
  %i.ob = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !29
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !31
  %i.og = icmp ne i32 %i.of, 1                    ; 2 uses
  %brmerge.i = or i1 %i.nk, %i.og
  %.mux637.i = select i1 %i.og, i32 31, i32 0
  br i1 %brmerge.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit, label %bb.bn

bb.bn:                                            ; preds = %.thread628.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store ptr %i.oh, ptr %i.ni, align 8, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !41
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread179

bb.bo:                                            ; preds = %bb.c
  %i.oi = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !3
  %i.ok = sub i32 %i.oj, %i.ag
  %i.ol = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !3
  %i.on = sub i32 %i.om, %i.ag
  %..i.i76.i = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.on) ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !21 ; 3 uses
  %i.oq = icmp ne ptr %i.op, %i.x                 ; 2 uses
  br i1 %i.oq, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.or = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.or)
  %i.os = load i32, ptr %i.op, align 4, !tbaa !3
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ot
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i78.i = phi ptr [ %i.ou, %bb.bp ], [ %i.ai, %bb.bo ] ; 3 uses
  %i.ov = icmp ugt i32 %..i.i76.i, 3
  br i1 %i.ov, label %bb.bq, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i
  %.pre.i = load i8, ptr %.0.i.i78.i, align 1, !tbaa !20
  br label %.critedge.i79.i

bb.bq:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i
  %.0.copyload.i.i80.i = load i32, ptr %.0.i.i78.i, align 1 ; 2 uses
  %.not.i81.i = icmp eq i32 %.0.copyload.i.i80.i, 1819047278
  %i.ow = trunc i32 %.0.copyload.i.i80.i to i8
  br i1 %.not.i81.i, label %bb.br, label %.critedge.i79.i

bb.br:                                            ; preds = %bb.bq
  %i.ox = icmp eq i32 %..i.i76.i, 4
  br i1 %i.ox, label %.critedge7.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i.i78.i, i64 4
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !20
  %i.pa = zext i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !74, !range !26, !noundef !27
  %.not.i = icmp eq i8 %i.pc, 0
  br i1 %.not.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %.critedge7.i.i

.critedge7.i.i:                                   ; preds = %bb.bs, %bb.br
  %i.pd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !29
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !31
  %i.ph = icmp ne i32 %i.pg, 1                    ; 2 uses
  %brmerge640.i = or i1 %i.oq, %i.ph
  br i1 %brmerge640.i, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i, label %bb.bt

bb.bt:                                            ; preds = %.critedge7.i.i
  %i.pi = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store ptr %i.pj, ptr %i.oo, align 8, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !41
  %.pre235.a = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !2705 ; 3 uses
  %.pre236.a = load i32, ptr %i.oi, align 4, !tbaa !3, !noalias !2705
  %.pre237 = load i32, ptr %i.ol, align 4, !tbaa !3, !noalias !2705
  %.pre240.a = zext i32 %.pre235.a to i64
  %.pre241.a = sub i32 %.pre236.a, %.pre235.a
  %.pre243.a = sub i32 %.pre237, %.pre235.a
  %.pre245.a = call i32 @llvm.umin.i32(i32 %.pre241.a, i32 %.pre243.a)
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i

.critedge.i79.i:                                  ; preds = %bb.bq, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i
  %i.pk = phi i8 [ %.pre.i, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i ], [ %i.ow, %bb.bq ]
  %i.pl = icmp eq i8 %i.pk, 110
  br i1 %i.pl, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i: ; preds = %.critedge7.i.i
  br i1 %i.ph, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread295, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread295: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ev

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i, %.critedge.i79.i, %bb.bt
  %..i.i84.i.pre-phi = phi i32 [ %..i.i76.i, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i ], [ %..i.i76.i, %.critedge.i79.i ], [ %.pre245.a, %bb.bt ]
  %.pre-phi = phi i64 [ %i.ah, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i ], [ %i.ah, %.critedge.i79.i ], [ %.pre240.a, %bb.bt ]
  %.sroa.0476.0733.i = phi i1 [ true, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i ], [ false, %.critedge.i79.i ], [ true, %bb.bt ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi ; 2 uses
  %i.pn = zext i32 %..i.i84.i.pre-phi to i64
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i
  %.0.i121.i = phi i64 [ %i.pn, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i ], [ %i.po, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i ] ; 2 uses
  %i.po = add i64 %.0.i121.i, -1                  ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !20  ; 2 uses
  %i.pr = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ps = icmp eq i8 %i.pr, 0
  br i1 %i.ps, label %bb.bv, label %bb.bw, !prof !2679

bb.bv:                                            ; preds = %bb.bu
  %i.pt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i126.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i.i126.i, label %bb.bw, label %.noexc.i127.i

.noexc.i127.i:                                    ; preds = %bb.bv
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.pu = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc.i127.i, %bb.bv, %bb.bu
  %i.pv = icmp ult i8 %i.pq, 33
  br i1 %i.pv, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i: ; preds = %bb.bw
  %i.pw = zext nneg i8 %i.pq to i64
  %i.px = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.py = shl nuw nsw i64 1, %i.pw
  %i.pz = and i64 %i.px, %i.py
  %.not.i125.i = icmp eq i64 %i.pz, 0
  br i1 %.not.i125.i, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i, label %bb.bu, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i, %bb.bw
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i121.i, ptr nonnull %i.pm)
  br i1 %.sroa.0476.0733.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread179, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread: ; preds = %bb.t, %bb.r, %bb.j, %bb.h, %bb.bd, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i, %bb.o, %bb.c, %bb.e, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i, %bb.ba, %.thread626.i, %.critedge.i79.i, %bb.bs, %.thread728.i, %bb.bl, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i
  %.4.i.ph = phi i32 [ 17, %.thread728.i ], [ 5, %bb.bd ], [ 17, %bb.bs ], [ 17, %.critedge.i79.i ], [ 28, %bb.j ], [ 28, %bb.r ], [ 28, %bb.h ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i ], [ 17, %.thread626.i ], [ 31, %bb.ba ], [ 8, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i ], [ 17, %bb.e ], [ 17, %bb.c ], [ 17, %bb.o ], [ 17, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i ], [ 17, %bb.bl ], [ 28, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ev

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread179: ; preds = %bb.be, %bb.bn, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.es

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit: ; preds = %bb.m, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i, %.thread628.i
  %.4.i = phi i32 [ %.sroa.6400.1.i, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i ], [ %.mux637.i, %.thread628.i ], [ %i.dt, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i ], [ %i.cb, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not16 = icmp eq i32 %.4.i, 0
  br i1 %.not16, label %bb.es, label %bb.ev

bb.bx:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.qa = load ptr, ptr %9, align 8, !tbaa !19    ; 13 uses
  %i.qb = load i32, ptr %i.x, align 4, !tbaa !3   ; 9 uses
  %i.qc = zext i32 %i.qb to i64                   ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qc ; 8 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !20
  switch i8 %i.qe, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread [
    i8 123, label %bb.ci
    i8 91, label %bb.by
    i8 34, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i139
    i8 110, label %bb.ej
    i8 116, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i94
    i8 102, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i94
    i8 45, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 48, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 49, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 50, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 51, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 52, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 53, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 54, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 55, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 56, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
    i8 57, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i19
  ]

bb.by:                                            ; preds = %bb.bx
  %i.qf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !21, !noalias !2708 ; 4 uses
  %i.qh = icmp eq ptr %i.qg, %i.x
  br i1 %i.qh, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.qi = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.qi), !noalias !2708
  %i.qj = load i32, ptr %i.qg, align 4, !tbaa !3, !noalias !2708
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !20, !noalias !2708
  %.not8.i.i158 = icmp eq i8 %i.qm, 91
  br i1 %.not8.i.i158, label %bb.ca, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.ca:                                            ; preds = %bb.bz
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qg, i64 4 ; 2 uses
  store ptr %i.qn, ptr %i.qf, align 8, !tbaa !21, !noalias !2708
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %i.qo = phi ptr [ %i.qn, %bb.ca ], [ %i.qg, %bb.by ] ; 2 uses
  %i.qp = trunc nuw i8 %i.aa to i1
  br i1 %i.qp, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !29, !noalias !2708 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !31, !noalias !2708 ; 3 uses
  %i.qu = icmp ne i32 %i.qt, 0
  call void @llvm.assume(i1 %i.qu), !noalias !2708
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qw = add i32 %i.qt, -1
  %i.qx = zext i32 %i.qw to i64
  %i.qy = load ptr, ptr %i.qv, align 8, !tbaa !40, !noalias !2708 ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.qx
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3, !noalias !2708
  %i.rb = zext i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !20, !noalias !2708
  %.not.i50.i150 = icmp eq i8 %i.rd, 93
  br i1 %.not.i50.i150, label %bb.cd, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.cd:                                            ; preds = %bb.cc
  %i.re = zext i32 %i.qt to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3, !noalias !2708
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !20, !noalias !2708
  %i.rk = icmp eq i8 %i.rj, 93
  br i1 %i.rk, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.rl = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %9) #26, !noalias !2708
  br i1 %i.rl, label %._crit_edge.i155, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

._crit_edge.i155:                                 ; preds = %bb.ce
  %.pre678.i156 = load ptr, ptr %i.qf, align 8, !tbaa !43, !noalias !2708
  %.pre679.i157 = load ptr, ptr %9, align 8, !tbaa !19, !noalias !2708
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i155, %bb.cd, %bb.cb
  %i.rm = phi ptr [ %.pre679.i157, %._crit_edge.i155 ], [ %i.qa, %bb.cd ], [ %i.qa, %bb.cb ]
  %i.rn = phi ptr [ %.pre678.i156, %._crit_edge.i155 ], [ %i.qo, %bb.cd ], [ %i.qo, %bb.cb ] ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.rp = icmp eq ptr %i.rn, %i.ro
  call void @llvm.assume(i1 %i.rp), !noalias !2708
  %i.rq = load i32, ptr %i.rn, align 4, !tbaa !3, !noalias !2708
  %i.rr = zext i32 %i.rq to i64
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.aae = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !29
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !31
  %i.aaj = icmp eq i32 %i.aai, 1
  br i1 %i.aaj, label %bb.dq, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dq:                                            ; preds = %bb.dp
  %i.aak = load ptr, ptr %i.uq, align 8, !tbaa !21 ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.ui
  br i1 %i.aal, label %bb.dr, label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

bb.dr:                                            ; preds = %bb.dq
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 4
  store ptr %i.aam, ptr %i.uq, align 8, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27

_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27: ; preds = %bb.dr, %bb.dq, %bb.dp, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70, %bb.dg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56, %bb.de, %bb.cy, %bb.cx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24
  %.sroa.6400.1.i28 = phi i32 [ 9, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i24 ], [ 31, %bb.dp ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit5.i.i38 ], [ 9, %bb.dg ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit4.i.i56 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i70 ], [ 9, %bb.cy ], [ 9, %bb.cx ], [ 9, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i139: ; preds = %bb.bx
  %i.aan = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !3, !noalias !2720
  %i.aap = sub i32 %i.aao, %i.qb
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !3, !noalias !2720
  %i.aas = sub i32 %i.aar, %i.qb
  %..i.i86.i140 = call i32 @llvm.umin.i32(i32 %i.aap, i32 %i.aas)
  %i.aat = zext i32 %..i.i86.i140 to i64
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i146, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i139
  %.0.i105.i141 = phi i64 [ %i.aat, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit90.i139 ], [ %i.aau, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i146 ] ; 2 uses
  %i.aau = add i64 %.0.i105.i141, -1              ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !20 ; 2 uses
  %i.aax = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.aay = icmp eq i8 %i.aax, 0
  br i1 %i.aay, label %bb.dt, label %bb.du, !prof !2679

bb.dt:                                            ; preds = %bb.ds
  %i.aaz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i110.i148 = icmp eq i32 %i.aaz, 0
  br i1 %.not.i.i110.i148, label %bb.du, label %.noexc.i111.i149

.noexc.i111.i149:                                 ; preds = %bb.dt
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.aba = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.du

bb.du:                                            ; preds = %.noexc.i111.i149, %bb.dt, %bb.ds
  %i.abb = icmp ult i8 %i.aaw, 33
  br i1 %i.abb, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i146, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i142

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i146: ; preds = %bb.du
  %i.abc = zext nneg i8 %i.aaw to i64
  %i.abd = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.abe = shl nuw nsw i64 1, %i.abc
  %i.abf = and i64 %i.abd, %i.abe
  %.not.i109.i147 = icmp eq i64 %i.abf, 0
  br i1 %.not.i109.i147, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i142, label %bb.ds, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i142: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i108.i146, %bb.du
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i105.i141, ptr nonnull %i.qd)
  %i.abg = load ptr, ptr %i.v, align 8, !tbaa !7, !noalias !2723 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !21, !noalias !2728 ; 3 uses
  %i.abj = icmp eq ptr %i.abi, %i.abg             ; 2 uses
  %spec.select756.i143 = select i1 %i.abj, ptr %i.abi, ptr %i.abg
  %i.abk = load ptr, ptr %9, align 8, !tbaa !19, !noalias !2728
  %i.abl = load i32, ptr %spec.select756.i143, align 4, !tbaa !3, !noalias !2728
  %i.abm = zext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abm ; 2 uses
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !20, !noalias !2728
  %.not.i66.i144 = icmp eq i8 %i.abo, 34
  br i1 %.not.i66.i144, label %bb.dv, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.dv:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i142
  %i.abp = load ptr, ptr %i.k, align 8, !tbaa !28, !noalias !2728
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !29, !noalias !2728 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !31, !noalias !2728
  %i.abu = icmp eq i32 %i.abt, 1
  br i1 %i.abu, label %bb.dw, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.abj, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  store ptr %i.abv, ptr %i.abh, align 8, !tbaa !21, !noalias !2728
  store i32 0, ptr %i.r, align 4, !tbaa !41, !noalias !2728
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abn, i64 1
  %i.abx = load ptr, ptr %i.m, align 8, !tbaa !79, !noalias !2731
  %i.aby = load ptr, ptr %i.abr, align 8, !tbaa !83, !noalias !2731
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8, !noalias !2731
  %i.acb = call noundef ptr %i.aca(ptr noundef nonnull align 8 dereferenceable(48) %i.abr, ptr noundef nonnull %i.abw, ptr noundef %i.abx, i1 noundef zeroext true) #26, !noalias !2731, !inline_history !2734 ; 2 uses
  %.not.i2.i.i145 = icmp eq ptr %i.acb, null
  br i1 %.not.i2.i.i145, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store ptr %i.acb, ptr %i.m, align 8, !tbaa !79, !noalias !2731
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread187

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i94: ; preds = %bb.bx, %bb.bx
  %i.acc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !3, !noalias !2735
  %i.ace = sub i32 %i.acd, %i.qb
  %i.acf = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !3, !noalias !2735
  %i.ach = sub i32 %i.acg, %i.qb
  %..i.i85.i95 = call i32 @llvm.umin.i32(i32 %i.ace, i32 %i.ach)
  %i.aci = zext i32 %..i.i85.i95 to i64
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i112, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i94
  %.0.i113.i96 = phi i64 [ %i.aci, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit92.i94 ], [ %i.acj, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i112 ] ; 2 uses
  %i.acj = add i64 %.0.i113.i96, -1               ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.acj
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !20 ; 2 uses
  %i.acm = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.acn = icmp eq i8 %i.acm, 0
  br i1 %i.acn, label %bb.eb, label %bb.ec, !prof !2679

bb.eb:                                            ; preds = %bb.ea
  %i.aco = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i118.i114 = icmp eq i32 %i.aco, 0
  br i1 %.not.i.i118.i114, label %bb.ec, label %.noexc.i119.i115

.noexc.i119.i115:                                 ; preds = %bb.eb
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.acp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ec

bb.ec:                                            ; preds = %.noexc.i119.i115, %bb.eb, %bb.ea
  %i.acq = icmp ult i8 %i.acl, 33
  br i1 %i.acq, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i112, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i97

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i112: ; preds = %bb.ec
  %i.acr = zext nneg i8 %i.acl to i64
  %i.acs = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.act = shl nuw nsw i64 1, %i.acr
  %i.acu = and i64 %i.acs, %i.act
  %.not.i117.i113 = icmp eq i64 %i.acu, 0
  br i1 %.not.i117.i113, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i97, label %bb.ea, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i97: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i116.i112, %bb.ec
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i113.i96, ptr nonnull %i.qd)
  %i.acv = load ptr, ptr %i.v, align 8, !tbaa !7, !noalias !2738 ; 4 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !3
  %i.acy = load i32, ptr %i.acv, align 4, !tbaa !3 ; 3 uses
  %i.acz = sub i32 %i.acx, %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !3
  %i.adc = sub i32 %i.adb, %i.acy
  %..i.i.i98 = call i32 @llvm.umin.i32(i32 %i.acz, i32 %i.adc) ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !21 ; 3 uses
  %i.adf = icmp ne ptr %i.ade, %i.acv             ; 2 uses
  br i1 %i.adf, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i99, label %bb.ed

bb.ed:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i97
  %i.adg = load i32, ptr %i.ade, align 4, !tbaa !3
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i99

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i99: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i97, %bb.ed
  %.sink753.i100 = phi i32 [ %i.adg, %bb.ed ], [ %i.acy, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit120.i97 ]
  %.sink751.i101 = load ptr, ptr %9, align 8, !tbaa !19
  %i.adh = zext i32 %.sink753.i100 to i64
  %i.adi = getelementptr inbounds nuw i8, ptr %.sink751.i101, i64 %i.adh ; 3 uses
  %i.adj = icmp ugt i32 %..i.i.i98, 3
  br i1 %i.adj, label %bb.ee, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.ee:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i99
  %.0.copyload.i13.i.i107 = load i32, ptr %i.adi, align 1 ; 2 uses
  %.not.i75.i108 = icmp eq i32 %.0.copyload.i13.i.i107, 1702195828
  %i.adk = icmp ne i32 %..i.i.i98, 4              ; 2 uses
  br i1 %.not.i75.i108, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.adk, label %.thread728.i111, label %.thread628.i104

.thread728.i111:                                  ; preds = %bb.ef
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !20
  %i.adn = zext i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !74, !range !26, !noundef !27
  %.not191 = icmp eq i8 %i.adp, 0
  br i1 %.not191, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %.thread628.i104

bb.eg:                                            ; preds = %bb.ee
  %.not10.i.i109 = icmp eq i32 %.0.copyload.i13.i.i107, 1936482662
  %or.cond755.i110 = and i1 %i.adk, %.not10.i.i109
  br i1 %or.cond755.i110, label %bb.eh, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.eh:                                            ; preds = %bb.eg
  %i.adq = icmp eq i32 %..i.i.i98, 5
  br i1 %i.adq, label %.thread628.i104, label %.thread626.i102

.thread626.i102:                                  ; preds = %bb.eh
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adi, i64 5
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !20
  %i.adt = zext i8 %i.ads to i64
  %i.adu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.adt
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !74, !range !26, !noundef !27
  %.not190 = icmp eq i8 %i.adv, 0
  br i1 %.not190, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %.thread628.i104

.thread628.i104:                                  ; preds = %.thread728.i111, %.thread626.i102, %bb.eh, %bb.ef
  %i.adw = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !29
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aea = load i32, ptr %i.adz, align 8, !tbaa !31
  %i.aeb = icmp ne i32 %i.aea, 1                  ; 2 uses
  %brmerge.i105 = or i1 %i.adf, %i.aeb
  %.mux637.i106 = select i1 %i.aeb, i32 31, i32 0
  br i1 %brmerge.i105, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit, label %bb.ei

bb.ei:                                            ; preds = %.thread628.i104
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  store ptr %i.aec, ptr %i.add, align 8, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !41
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread187

bb.ej:                                            ; preds = %bb.bx
  %i.aed = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !3
  %i.aef = sub i32 %i.aee, %i.qb
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !3
  %i.aei = sub i32 %i.aeh, %i.qb
  %..i.i76.i116 = call i32 @llvm.umin.i32(i32 %i.aef, i32 %i.aei) ; 4 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !21 ; 3 uses
  %i.ael = icmp ne ptr %i.aek, %i.x               ; 2 uses
  br i1 %i.ael, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i117, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aem = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.aem)
  %i.aen = load i32, ptr %i.aek, align 4, !tbaa !3
  %i.aeo = zext i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.aeo
  br label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i117

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i117: ; preds = %bb.ek, %bb.ej
  %.0.i.i78.i118 = phi ptr [ %i.aep, %bb.ek ], [ %i.qd, %bb.ej ] ; 3 uses
  %i.aeq = icmp ugt i32 %..i.i76.i116, 3
  br i1 %i.aeq, label %bb.el, label %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i119

_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i119: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i117
  %.pre.i120 = load i8, ptr %.0.i.i78.i118, align 1, !tbaa !20
  br label %.critedge.i79.i121

bb.el:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77.i117
  %.0.copyload.i.i80.i131 = load i32, ptr %.0.i.i78.i118, align 1 ; 2 uses
  %.not.i81.i132 = icmp eq i32 %.0.copyload.i.i80.i131, 1819047278
  %i.aer = trunc i32 %.0.copyload.i.i80.i131 to i8
  br i1 %.not.i81.i132, label %bb.em, label %.critedge.i79.i121

bb.em:                                            ; preds = %bb.el
  %i.aes = icmp eq i32 %..i.i76.i116, 4
  br i1 %i.aes, label %.critedge7.i.i134, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aet = getelementptr inbounds nuw i8, ptr %.0.i.i78.i118, i64 4
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !20
  %i.aev = zext i8 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !74, !range !26, !noundef !27
  %.not.i133 = icmp eq i8 %i.aex, 0
  br i1 %.not.i133, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %.critedge7.i.i134

.critedge7.i.i134:                                ; preds = %bb.en, %bb.em
  %i.aey = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !29
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afb = load i32, ptr %i.afa, align 8, !tbaa !31
  %i.afc = icmp ne i32 %i.afb, 1                  ; 2 uses
  %brmerge640.i135 = or i1 %i.ael, %i.afc
  br i1 %brmerge640.i135, label %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136, label %bb.eo

bb.eo:                                            ; preds = %.critedge7.i.i134
  %i.afd = icmp eq i32 %i.t, 1
  call void @llvm.assume(i1 %i.afd)
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aek, i64 4
  store ptr %i.afe, ptr %i.aej, align 8, !tbaa !21
  store i32 0, ptr %i.r, align 4, !tbaa !41
  %.pre = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !2741 ; 3 uses
  %.pre231 = load i32, ptr %i.aed, align 4, !tbaa !3, !noalias !2741
  %.pre232 = load i32, ptr %i.aeg, align 4, !tbaa !3, !noalias !2741
  %.pre246 = zext i32 %.pre to i64
  %.pre248 = sub i32 %.pre231, %.pre
  %.pre250 = sub i32 %.pre232, %.pre
  %.pre252 = call i32 @llvm.umin.i32(i32 %.pre248, i32 %.pre250)
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i122

.critedge.i79.i121:                               ; preds = %bb.el, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i119
  %i.aff = phi i8 [ %.pre.i120, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i77..critedge.i79_crit_edge.i119 ], [ %i.aer, %bb.el ]
  %i.afg = icmp eq i8 %i.aff, 110
  br i1 %i.afg, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i122

_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136: ; preds = %.critedge7.i.i134
  br i1 %i.afc, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread298, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i122

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread298: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ev

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i122: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136, %.critedge.i79.i121, %bb.eo
  %..i.i84.i124.pre-phi = phi i32 [ %..i.i76.i116, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136 ], [ %..i.i76.i116, %.critedge.i79.i121 ], [ %.pre252, %bb.eo ]
  %.pre-phi247 = phi i64 [ %i.qc, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136 ], [ %i.qc, %.critedge.i79.i121 ], [ %.pre246, %bb.eo ]
  %.sroa.0476.0733.i123 = phi i1 [ true, %_ZN8simdjson8fallback8ondemand14value_iterator12is_root_nullEb.exit.i136 ], [ false, %.critedge.i79.i121 ], [ true, %bb.eo ]
  %i.afh = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.pre-phi247 ; 2 uses
  %i.afi = zext i32 %..i.i84.i124.pre-phi to i64
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i127, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i122
  %.0.i121.i125 = phi i64 [ %i.afi, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit94.i122 ], [ %i.afj, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i127 ] ; 2 uses
  %i.afj = add i64 %.0.i121.i125, -1              ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afj
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !20 ; 2 uses
  %i.afm = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.afn = icmp eq i8 %i.afm, 0
  br i1 %i.afn, label %bb.eq, label %bb.er, !prof !2679

bb.eq:                                            ; preds = %bb.ep
  %i.afo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i126.i129 = icmp eq i32 %i.afo, 0
  br i1 %.not.i.i126.i129, label %bb.er, label %.noexc.i127.i130

.noexc.i127.i130:                                 ; preds = %bb.eq
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.afp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.er

bb.er:                                            ; preds = %.noexc.i127.i130, %bb.eq, %bb.ep
  %i.afq = icmp ult i8 %i.afl, 33
  br i1 %i.afq, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i127, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i126

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i127: ; preds = %bb.er
  %i.afr = zext nneg i8 %i.afl to i64
  %i.afs = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.aft = shl nuw nsw i64 1, %i.afr
  %i.afu = and i64 %i.afs, %i.aft
  %.not.i125.i128 = icmp eq i64 %i.afu, 0
  br i1 %.not.i125.i128, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i126, label %bb.ep, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i126: ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i124.i127, %bb.er
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 %.0.i121.i125, ptr nonnull %i.afh)
  br i1 %.sroa.0476.0733.i123, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread187, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread: ; preds = %bb.co, %bb.cm, %bb.ce, %bb.cc, %bb.dy, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i142, %bb.cj, %bb.bx, %bb.bz, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i126, %bb.dv, %.thread626.i102, %.critedge.i79.i121, %bb.en, %.thread728.i111, %bb.eg, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i99
  %.4.i29.ph = phi i32 [ 17, %.thread728.i111 ], [ 5, %bb.dy ], [ 17, %bb.en ], [ 17, %.critedge.i79.i121 ], [ 28, %bb.ce ], [ 28, %bb.cm ], [ 28, %bb.cc ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit.i.i99 ], [ 17, %.thread626.i102 ], [ 31, %bb.dv ], [ 8, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i126 ], [ 17, %bb.bz ], [ 17, %bb.bx ], [ 17, %bb.cj ], [ 17, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit112.i142 ], [ 17, %bb.eg ], [ 28, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ev

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread187: ; preds = %bb.dz, %bb.ei, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit128.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.es

_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit: ; preds = %bb.ch, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i160, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27, %.thread628.i104
  %.4.i29 = phi i32 [ %.sroa.6400.1.i28, %_ZN8simdjson8fallback8ondemand14value_iterator15get_root_doubleEb.exit.i27 ], [ %.mux637.i106, %.thread628.i104 ], [ %i.to, %_ZN8simdjson8fallback8ondemand6object10start_rootERNS1_14value_iteratorE.exit.thread.i160 ], [ %i.rw, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not15 = icmp eq i32 %.4.i29, 0
  br i1 %.not15, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread187, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread179, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.val = load ptr, ptr %i.afv, align 8, !tbaa !2744
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val17 = load ptr, ptr %i.afw, align 8, !tbaa !2744
  %i.afx = icmp eq ptr %.val, %.val17
  br i1 %i.afx, label %bb.eu, label %bb.et, !prof !69

bb.et:                                            ; preds = %bb.es
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmbE18veloxCheckFailArgs) #49
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.afy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !21
  %i.aga = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !29 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !31
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.agg = zext i32 %i.age to i64
  %i.agh = load ptr, ptr %i.agf, align 8, !tbaa !40
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.agg
  %i.agj = icmp eq ptr %i.afz, %i.agi
  %. = select i1 %i.agj, i32 0, i32 31
  br label %bb.ev

bb.ev:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread298, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread295, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread, %bb.eu, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit
  %.2 = phi i32 [ %.4.i29, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit ], [ %., %bb.eu ], [ %.4.i, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit ], [ %.4.i.ph, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread ], [ %.4.i29.ph, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread ], [ 31, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread295 ], [ 31, %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ew

bb.ew:                                            ; preds = %bb.a, %bb.ev
  %.3 = phi i32 [ %.2, %bb.ev ], [ %i.j, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i32 %.3
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #15

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #15

declare void @_ZN8facebook5velox10BaseVector14wrapInConstantEiiSt10shared_ptrIS1_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.142") align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN8facebook5velox10BaseVector13flattenVectorERSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_E14call_once_slowIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.std::lock_guard", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !2745
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = load atomic i32, ptr %i.c acquire, align 4 ; 4 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !3
  %i.e = and i32 %i.d, -1312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 128
  %i.h = cmpxchg ptr %i.c, i32 %i.d, i32 %i.g seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, !prof !541

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  store i32 %i.j, ptr %i.b, align 4
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.b, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.l = load atomic i8, ptr %0 monotonic, align 4, !range !26, !noundef !27
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %.val = load ptr, ptr %1, align 8, !tbaa !2215
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_ZN8facebook5velox26simdjsonErrorsToExceptionsEPNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %i.n)
          to label %_ZNK5folly9invoke_fnclIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS3_17SelectivityVectorERKSt10shared_ptrINS3_10BaseVectorEERKSA_IKNS3_4TypeEERNS3_4exec7EvalCtxERSC_bEUlvE_JEEEDTclscT_fp_spscT0_fp0_EEOSP_DpOSQ_.exit unwind label %bb.g

_ZNK5folly9invoke_fnclIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS3_17SelectivityVectorERKSt10shared_ptrINS3_10BaseVectorEERKSA_IKNS3_4TypeEERNS3_4exec7EvalCtxERSC_bEUlvE_JEEEDTclscT_fp_spscT0_fp0_EEOSP_DpOSQ_.exit: ; preds = %bb.c
  store atomic i8 1, ptr %0 release, align 4
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a

bb.ag:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, %bb.ac, %bb.z, %bb.af
  %i.hv = phi ptr [ %.pre460, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.z ], [ %i.cg, %bb.af ] ; 2 uses
  %i.hw = phi ptr [ %.pre, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.ce, %bb.ac ], [ %i.ce, %bb.z ], [ %i.ce, %bb.af ] ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.ch
  br i1 %i.hx, label %bb.ah, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 36 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !41 ; 4 uses
  %i.ib = load i32, ptr %i.cd, align 8, !tbaa !249
  %i.ic = icmp eq i32 %i.ia, %i.ib
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = icmp sgt i32 %i.ia, 1
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store ptr %i.ie, ptr %i.hy, align 8, !tbaa !21
  %i.if = add nsw i32 %i.ia, -1
  %or.cond.i.i51 = icmp ne i32 %i.ia, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i51)
  store i32 %i.if, ptr %i.hz, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ai:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = sub i32 %i.ii, %i.e
  %i.ik = zext i32 %i.ij to i64
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117, %bb.ai
  %.0.i114 = phi i64 [ %i.ik, %bb.ai ], [ %i.il, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117 ] ; 2 uses
  %i.il = add i64 %.0.i114, -1                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20  ; 2 uses
  %i.io = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.ak, label %bb.al, !prof !2679

bb.ak:                                            ; preds = %bb.aj
  %i.iq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i119 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i119, label %bb.al, label %.noexc.i120

.noexc.i120:                                      ; preds = %bb.ak
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.ir = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.al

bb.al:                                            ; preds = %.noexc.i120, %bb.ak, %bb.aj
  %i.is = icmp ult i8 %i.in, 33
  br i1 %i.is, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117: ; preds = %bb.al
  %i.it = zext nneg i8 %i.in to i64
  %i.iu = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.iv = shl nuw nsw i64 1, %i.it
  %i.iw = and i64 %i.iu, %i.iv
  %.not.i118 = icmp eq i64 %i.iw, 0
  br i1 %.not.i118, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121, label %bb.aj, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121: ; preds = %bb.al, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i64 %.0.i114, ptr nonnull %i.g)
  %i.ix = load ptr, ptr %1, align 8, !tbaa !243, !noalias !2813 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !21, !noalias !2813 ; 3 uses
  %i.ja = load ptr, ptr %i.b, align 8, !tbaa !245, !noalias !2813 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 36 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !41, !noalias !2813 ; 4 uses
  %i.jf = load i32, ptr %i.jc, align 8, !tbaa !249, !noalias !2813
  %i.jg = icmp eq i32 %i.je, %i.jf
  tail call void @llvm.assume(i1 %i.jg), !noalias !2813
  %i.jh = icmp sgt i32 %i.je, 0
  tail call void @llvm.assume(i1 %i.jh), !noalias !2813
  %i.ji = load ptr, ptr %i.ix, align 8, !tbaa !19, !noalias !2813
  %i.jj = load i32, ptr %i.iz, align 4, !tbaa !3, !noalias !2813
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !20, !noalias !2813
  %.not.i64 = icmp eq i8 %i.jm, 34
  br i1 %.not.i64, label %bb.am, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121
  %i.jn = load ptr, ptr %i.ix, align 8, !tbaa !19, !noalias !2813
  %i.jo = load i32, ptr %i.ja, align 4, !tbaa !3, !noalias !2813
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !20, !noalias !2813
  %.not.i64415 = icmp eq i8 %i.jr, 34
  br i1 %.not.i64415, label %.thread417, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.am:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store ptr %i.js, ptr %i.iy, align 8, !tbaa !21, !noalias !2813
  %i.jt = add nsw i32 %i.je, -1
  %or.cond.i.i72 = icmp ne i32 %i.je, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i72), !noalias !2813
  store i32 %i.jt, ptr %i.jd, align 4, !tbaa !41, !noalias !2813
  br label %.thread417

.thread417:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread, %bb.am
  %.0.i71416419 = phi ptr [ %i.jl, %bb.am ], [ %i.jq, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i71416419, i64 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !28, !noalias !2816
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !29, !noalias !2819 ; 2 uses
  %i.ka = load ptr, ptr %i.jx, align 8, !tbaa !79, !noalias !2819
  %i.kb = load ptr, ptr %i.jz, align 8, !tbaa !83, !noalias !2819
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !2819
  %i.ke = tail call noundef ptr %i.kd(ptr noundef nonnull align 8 dereferenceable(48) %i.jz, ptr noundef nonnull %i.ju, ptr noundef %i.ka, i1 noundef zeroext true) #26, !noalias !2819, !inline_history !279 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ke, null
  br i1 %.not.i73, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.an

bb.an:                                            ; preds = %.thread417
  store ptr %i.ke, ptr %i.jx, align 8, !tbaa !79, !noalias !2819
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ao:                                            ; preds = %bb.a, %bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !3
  %i.ki = sub i32 %i.kh, %i.e
  %i.kj = zext i32 %i.ki to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125, %bb.ao
  %.0.i122 = phi i64 [ %i.kj, %bb.ao ], [ %i.kk, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125 ] ; 2 uses
  %i.kk = add i64 %.0.i122, -1                    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !20  ; 2 uses
  %i.kn = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.aq, label %bb.ar, !prof !2679

bb.aq:                                            ; preds = %bb.ap
  %i.kp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i127 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i127, label %bb.ar, label %.noexc.i128

.noexc.i128:                                      ; preds = %bb.aq
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.kq = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i128, %bb.aq, %bb.ap
  %i.kr = icmp ult i8 %i.km, 33
  br i1 %i.kr, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125: ; preds = %bb.ar
  %i.ks = zext nneg i8 %i.km to i64
  %i.kt = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.ku = shl nuw nsw i64 1, %i.ks
  %i.kv = and i64 %i.kt, %i.ku
  %.not.i126 = icmp eq i64 %i.kv, 0
  br i1 %.not.i126, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129, label %bb.ap, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129: ; preds = %bb.ar, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 %.0.i122, ptr nonnull %i.g)
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kx = load ptr, ptr %1, align 8, !tbaa !243   ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !21 ; 3 uses
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !245 ; 2 uses
  %i.lb = icmp ne ptr %i.kz, %i.la                ; 2 uses
  %spec.select550 = select i1 %i.lb, ptr %i.la, ptr %i.kz
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !19
  %i.ld = load i32, ptr %spec.select550, align 4, !tbaa !3
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.le ; 3 uses
  %.0.copyload.i77 = load i32, ptr %i.lf, align 1 ; 2 uses
  %i.lg = xor i32 %.0.copyload.i77, 1936482662
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !20
  %i.lj = xor i8 %i.li, 101
  %i.lk = zext i8 %i.lj to i32
  %i.ll = or i32 %i.lg, %i.lk
  %i.lm = icmp ne i32 %.0.copyload.i77, 1702195828 ; 2 uses
  %i.ln = icmp ne i32 %i.ll, 0
  %or.cond.i75 = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i75, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129
  %i.lo = select i1 %i.lm, i64 5, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !20
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !74, !range !26, !noundef !27
  %.not432 = icmp ne i8 %i.lt, 0                  ; 2 uses
  %brmerge = or i1 %.not432, %i.lb
  %.mux = select i1 %.not432, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 36 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !41 ; 4 uses
  %i.lw = load i32, ptr %i.kw, align 8, !tbaa !249
  %i.lx = icmp eq i32 %i.lv, %i.lw
  tail call void @llvm.assume(i1 %i.lx)
  %i.ly = icmp sgt i32 %i.lv, 1
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store ptr %i.lz, ptr %i.ky, align 8, !tbaa !21
  %i.ma = add nsw i32 %i.lv, -1
  %or.cond.i.i.i = icmp ne i32 %i.lv, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.ma, ptr %i.lu, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.au:                                            ; preds = %bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !21 ; 3 uses
  %i.me = icmp eq ptr %i.md, %i.c                 ; 2 uses
  br i1 %i.me, label %bb.av, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78

bb.av:                                            ; preds = %bb.au
  %i.mf = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mg
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78: ; preds = %bb.au, %bb.av
  %.0.i.i79 = phi ptr [ %i.mh, %bb.av ], [ %i.g, %bb.au ] ; 2 uses
  %.0.copyload.i.i = load i32, ptr %.0.i.i79, align 1 ; 2 uses
  %.not.i86 = icmp eq i32 %.0.copyload.i.i, 1819047278 ; 2 uses
  br i1 %.not.i86, label %bb.aw, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

bb.aw:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i.i79, i64 4
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !20
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !74, !range !26, !noundef !27
  %.not = icmp eq i8 %i.mm, 0
  br i1 %.not, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit: ; preds = %bb.aw
  br i1 %i.me, label %bb.ax, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread

bb.ax:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !41 ; 4 uses
  %i.mp = load i32, ptr %i.mb, align 8, !tbaa !249
  %i.mq = icmp eq i32 %i.mo, %i.mp
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = icmp sgt i32 %i.mo, 1
  tail call void @llvm.assume(i1 %i.mr)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store ptr %i.ms, ptr %i.mc, align 8, !tbaa !21
  %i.mt = add nsw i32 %i.mo, -1
  %or.cond.i.i.i85 = icmp ne i32 %i.mo, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i85)
  store i32 %i.mt, ptr %i.mn, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78
  %i.mu = and i32 %.0.copyload.i.i, 255
  %.not551 = icmp eq i32 %i.mu, 110               ; 2 uses
  %.sroa.4138.0.extract.trunc = select i1 %.not551, i32 17, i32 0
  br i1 %.not551, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread: ; preds = %bb.ax, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.mw = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = sub i32 %i.na, %i.mw
  %i.nc = zext i32 %i.nb to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread
  %.0.i130 = phi i64 [ %i.nc, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread ], [ %i.nd, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133 ] ; 2 uses
  %i.nd = add i64 %.0.i130, -1                    ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !20  ; 2 uses
  %i.ng = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.az, label %bb.ba, !prof !2679

bb.az:                                            ; preds = %bb.ay
  %i.ni = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i135 = icmp eq i32 %i.ni, 0
  br i1 %.not.i.i135, label %bb.ba, label %.noexc.i136

.noexc.i136:                                      ; preds = %bb.az
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.nj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc.i136, %bb.az, %bb.ay
  %i.nk = icmp ult i8 %i.nf, 33
  br i1 %i.nk, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133: ; preds = %bb.ba
  %i.nl = zext nneg i8 %i.nf to i64
  %i.nm = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.nn = shl nuw nsw i64 1, %i.nl
  %i.no = and i64 %i.nm, %i.nn
  %.not.i134 = icmp eq i64 %i.no, 0
  br i1 %.not.i134, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137, label %bb.ay, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137: ; preds = %bb.ba, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, i64 %.0.i130, ptr %i.my)
  %i.np = select i1 %.not.i86, i32 0, i32 8
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %bb.aw, %bb.as, %bb.v, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129, %bb.at, %bb.h, %bb.c, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54, %bb.o, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, %bb.x, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, %bb.p, %bb.a, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, %.thread417, %bb.an, %bb.ag, %bb.ah, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread, %bb.f
  %.4 = phi i32 [ %.sroa.4138.0.extract.trunc, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit ], [ 5, %.thread417 ], [ 17, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129 ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread ], [ 17, %bb.a ], [ 0, %bb.ah ], [ %i.aj, %bb.f ], [ %i.bl, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread ], [ 17, %bb.c ], [ 0, %bb.ag ], [ 9, %bb.o ], [ 0, %bb.an ], [ %i.np, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137 ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54 ], [ 9, %bb.x ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit ], [ 9, %bb.p ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit ], [ 17, %bb.h ], [ %.mux, %bb.as ], [ 9, %bb.v ], [ 0, %bb.at ], [ 17, %bb.aw ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE6resizeEm(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 -384307168202282325, 384307168202282326) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !tbaa !2243 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !2246 ; 6 uses
  %i.b = ptrtoint ptr %.val8 to i64               ; 2 uses
  %i.c = ptrtoint ptr %.val7 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24                  ; 7 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i64 %1, %i.e                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2776
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.b
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.e
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.g
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN8facebook5velox9functions12_GLOBAL__N_19JsonFieldEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN8facebook5velox9functions12_GLOBAL__N_19JsonFieldEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %i.g, 24                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.val8, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val8, i64 %i.p
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !2246
  br label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %1, 384307168202282325
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.272) #49
  unreachable

_ZNKSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 range(i64 -768614336404564650, 768614336404564651) %i.g)
  %i.r = add nuw nsw i64 %.sroa.speculated.i.i, %i.e
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #46 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d ; 2 uses
  %i.w = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not1.i.i.i.i = icmp eq ptr %.val7, %.val8
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.val7, %_ZNKSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i, i64 24, i1 false), !tbaa.struct !2777, !alias.scope !2822
  %i.x = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.x, %.val8
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2782

_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.not.i39.i = icmp eq ptr %.val7, null
  br i1 %.not.i39.i, label %_ZNSt12_Vector_baseIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE13_M_deallocateEPS4_m.exit40.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.z = sub i64 %i.j, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef %i.z) #47
  br label %_ZNSt12_Vector_baseIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE13_M_deallocateEPS4_m.exit40.i

_ZNSt12_Vector_baseIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE13_M_deallocateEPS4_m.exit40.i: ; preds = %bb.e, %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.u, ptr %0, align 8, !tbaa !2243
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.g
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !2246
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !2776
  br label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.e
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.val7, i64 %1 ; 2 uses
  %.not.i9 = icmp eq ptr %.val8, %i.ad
  br i1 %.not.i9, label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN8facebook5velox9functions12_GLOBAL__N_19JsonFieldES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox9functions12_GLOBAL__N_19JsonFieldES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !2246
  br label %_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE17_M_default_appendEm.exit

_ZNSt6vectorIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions12_GLOBAL__N_19JsonFieldES4_EvT_S6_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN8facebook5velox9functions12_GLOBAL__N_19JsonFieldESaIS4_EE13_M_deallocateEPS4_m.exit40.i, %_ZSt27__uninitialized_default_n_aIPN8facebook5velox9functions12_GLOBAL__N_19JsonFieldEmS4_ET_S6_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2247 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1831   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1833
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a

bb.ag:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge, %bb.ac, %bb.z, %bb.af
  %i.hv = phi ptr [ %.pre460, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.z ], [ %i.cg, %bb.af ] ; 2 uses
  %i.hw = phi ptr [ %.pre, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit._crit_edge ], [ %i.ce, %bb.ac ], [ %i.ce, %bb.z ], [ %i.ce, %bb.af ] ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.ch
  br i1 %i.hx, label %bb.ah, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 36 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !41 ; 4 uses
  %i.ib = load i32, ptr %i.cd, align 8, !tbaa !249
  %i.ic = icmp eq i32 %i.ia, %i.ib
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = icmp sgt i32 %i.ia, 1
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store ptr %i.ie, ptr %i.hy, align 8, !tbaa !21
  %i.if = add nsw i32 %i.ia, -1
  %or.cond.i.i51 = icmp ne i32 %i.ia, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i51)
  store i32 %i.if, ptr %i.hz, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ai:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = sub i32 %i.ii, %i.e
  %i.ik = zext i32 %i.ij to i64
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117, %bb.ai
  %.0.i114 = phi i64 [ %i.ik, %bb.ai ], [ %i.il, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117 ] ; 2 uses
  %i.il = add i64 %.0.i114, -1                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20  ; 2 uses
  %i.io = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.ak, label %bb.al, !prof !2679

bb.ak:                                            ; preds = %bb.aj
  %i.iq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i119 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i119, label %bb.al, label %.noexc.i120

.noexc.i120:                                      ; preds = %bb.ak
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.ir = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.al

bb.al:                                            ; preds = %.noexc.i120, %bb.ak, %bb.aj
  %i.is = icmp ult i8 %i.in, 33
  br i1 %i.is, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117: ; preds = %bb.al
  %i.it = zext nneg i8 %i.in to i64
  %i.iu = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.iv = shl nuw nsw i64 1, %i.it
  %i.iw = and i64 %i.iu, %i.iv
  %.not.i118 = icmp eq i64 %i.iw, 0
  br i1 %.not.i118, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121, label %bb.aj, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121: ; preds = %bb.al, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i117
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i64 %.0.i114, ptr nonnull %i.g)
  %i.ix = load ptr, ptr %1, align 8, !tbaa !243, !noalias !2895 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !21, !noalias !2895 ; 3 uses
  %i.ja = load ptr, ptr %i.b, align 8, !tbaa !245, !noalias !2895 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 36 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !41, !noalias !2895 ; 4 uses
  %i.jf = load i32, ptr %i.jc, align 8, !tbaa !249, !noalias !2895
  %i.jg = icmp eq i32 %i.je, %i.jf
  tail call void @llvm.assume(i1 %i.jg), !noalias !2895
  %i.jh = icmp sgt i32 %i.je, 0
  tail call void @llvm.assume(i1 %i.jh), !noalias !2895
  %i.ji = load ptr, ptr %i.ix, align 8, !tbaa !19, !noalias !2895
  %i.jj = load i32, ptr %i.iz, align 4, !tbaa !3, !noalias !2895
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !20, !noalias !2895
  %.not.i64 = icmp eq i8 %i.jm, 34
  br i1 %.not.i64, label %bb.am, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread: ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit121
  %i.jn = load ptr, ptr %i.ix, align 8, !tbaa !19, !noalias !2895
  %i.jo = load i32, ptr %i.ja, align 4, !tbaa !3, !noalias !2895
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !20, !noalias !2895
  %.not.i64415 = icmp eq i8 %i.jr, 34
  br i1 %.not.i64415, label %.thread417, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.am:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store ptr %i.js, ptr %i.iy, align 8, !tbaa !21, !noalias !2895
  %i.jt = add nsw i32 %i.je, -1
  %or.cond.i.i72 = icmp ne i32 %i.je, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i72), !noalias !2895
  store i32 %i.jt, ptr %i.jd, align 4, !tbaa !41, !noalias !2895
  br label %.thread417

.thread417:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread, %bb.am
  %.0.i71416419 = phi ptr [ %i.jl, %bb.am ], [ %i.jq, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i71416419, i64 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !28, !noalias !2898
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !29, !noalias !2901 ; 2 uses
  %i.ka = load ptr, ptr %i.jx, align 8, !tbaa !79, !noalias !2901
  %i.kb = load ptr, ptr %i.jz, align 8, !tbaa !83, !noalias !2901
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !2901
  %i.ke = tail call noundef ptr %i.kd(ptr noundef nonnull align 8 dereferenceable(48) %i.jz, ptr noundef nonnull %i.ju, ptr noundef %i.ka, i1 noundef zeroext true) #26, !noalias !2901, !inline_history !279 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ke, null
  br i1 %.not.i73, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.an

bb.an:                                            ; preds = %.thread417
  store ptr %i.ke, ptr %i.jx, align 8, !tbaa !79, !noalias !2901
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.ao:                                            ; preds = %bb.a, %bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !3
  %i.ki = sub i32 %i.kh, %i.e
  %i.kj = zext i32 %i.ki to i64
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125, %bb.ao
  %.0.i122 = phi i64 [ %i.kj, %bb.ao ], [ %i.kk, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125 ] ; 2 uses
  %i.kk = add i64 %.0.i122, -1                    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !20  ; 2 uses
  %i.kn = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.aq, label %bb.ar, !prof !2679

bb.aq:                                            ; preds = %bb.ap
  %i.kp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i127 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i127, label %bb.ar, label %.noexc.i128

.noexc.i128:                                      ; preds = %bb.aq
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.kq = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i128, %bb.aq, %bb.ap
  %i.kr = icmp ult i8 %i.km, 33
  br i1 %i.kr, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125: ; preds = %bb.ar
  %i.ks = zext nneg i8 %i.km to i64
  %i.kt = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.ku = shl nuw nsw i64 1, %i.ks
  %i.kv = and i64 %i.kt, %i.ku
  %.not.i126 = icmp eq i64 %i.kv, 0
  br i1 %.not.i126, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129, label %bb.ap, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129: ; preds = %bb.ar, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i125
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 %.0.i122, ptr nonnull %i.g)
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kx = load ptr, ptr %1, align 8, !tbaa !243   ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !21 ; 3 uses
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !245 ; 2 uses
  %i.lb = icmp ne ptr %i.kz, %i.la                ; 2 uses
  %spec.select550 = select i1 %i.lb, ptr %i.la, ptr %i.kz
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !19
  %i.ld = load i32, ptr %spec.select550, align 4, !tbaa !3
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.le ; 3 uses
  %.0.copyload.i77 = load i32, ptr %i.lf, align 1 ; 2 uses
  %i.lg = xor i32 %.0.copyload.i77, 1936482662
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !20
  %i.lj = xor i8 %i.li, 101
  %i.lk = zext i8 %i.lj to i32
  %i.ll = or i32 %i.lg, %i.lk
  %i.lm = icmp ne i32 %.0.copyload.i77, 1702195828 ; 2 uses
  %i.ln = icmp ne i32 %i.ll, 0
  %or.cond.i75 = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i75, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.as

bb.as:                                            ; preds = %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129
  %i.lo = select i1 %i.lm, i64 5, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !20
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !74, !range !26, !noundef !27
  %.not432 = icmp ne i8 %i.lt, 0                  ; 2 uses
  %brmerge = or i1 %.not432, %i.lb
  %.mux = select i1 %.not432, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 36 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !41 ; 4 uses
  %i.lw = load i32, ptr %i.kw, align 8, !tbaa !249
  %i.lx = icmp eq i32 %i.lv, %i.lw
  tail call void @llvm.assume(i1 %i.lx)
  %i.ly = icmp sgt i32 %i.lv, 1
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store ptr %i.lz, ptr %i.ky, align 8, !tbaa !21
  %i.ma = add nsw i32 %i.lv, -1
  %or.cond.i.i.i = icmp ne i32 %i.lv, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.ma, ptr %i.lu, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.au:                                            ; preds = %bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !21 ; 3 uses
  %i.me = icmp eq ptr %i.md, %i.c                 ; 2 uses
  br i1 %i.me, label %bb.av, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78

bb.av:                                            ; preds = %bb.au
  %i.mf = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mg
  br label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78: ; preds = %bb.au, %bb.av
  %.0.i.i79 = phi ptr [ %i.mh, %bb.av ], [ %i.g, %bb.au ] ; 2 uses
  %.0.copyload.i.i = load i32, ptr %.0.i.i79, align 1 ; 2 uses
  %.not.i86 = icmp eq i32 %.0.copyload.i.i, 1819047278 ; 2 uses
  br i1 %.not.i86, label %bb.aw, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

bb.aw:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i.i79, i64 4
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !20
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !74, !range !26, !noundef !27
  %.not = icmp eq i8 %i.mm, 0
  br i1 %.not, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit: ; preds = %bb.aw
  br i1 %i.me, label %bb.ax, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread

bb.ax:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !41 ; 4 uses
  %i.mp = load i32, ptr %i.mb, align 8, !tbaa !249
  %i.mq = icmp eq i32 %i.mo, %i.mp
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = icmp sgt i32 %i.mo, 1
  tail call void @llvm.assume(i1 %i.mr)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store ptr %i.ms, ptr %i.mc, align 8, !tbaa !21
  %i.mt = add nsw i32 %i.mo, -1
  %or.cond.i.i.i85 = icmp ne i32 %i.mo, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i85)
  store i32 %i.mt, ptr %i.mn, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i78
  %i.mu = and i32 %.0.copyload.i.i, 255
  %.not551 = icmp eq i32 %i.mu, 110               ; 2 uses
  %.sroa.4138.0.extract.trunc = select i1 %.not551, i32 17, i32 0
  br i1 %.not551, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread: ; preds = %bb.ax, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.mw = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = sub i32 %i.na, %i.mw
  %i.nc = zext i32 %i.nb to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread
  %.0.i130 = phi i64 [ %i.nc, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread ], [ %i.nd, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133 ] ; 2 uses
  %i.nd = add i64 %.0.i130, -1                    ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !20  ; 2 uses
  %i.ng = load atomic i8, ptr @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes acquire, align 8
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.az, label %bb.ba, !prof !2679

bb.az:                                            ; preds = %bb.ay
  %i.ni = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  %.not.i.i135 = icmp eq i32 %i.ni, 0
  br i1 %.not.i.i135, label %bb.ba, label %.noexc.i136

.noexc.i136:                                      ; preds = %bb.az
  store i64 8321515008, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.nj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes) #26
  br label %bb.ba

bb.ba:                                            ; preds = %.noexc.i136, %bb.az, %bb.ay
  %i.nk = icmp ult i8 %i.nf, 33
  br i1 %i.nk, label %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137

_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133: ; preds = %bb.ba
  %i.nl = zext nneg i8 %i.nf to i64
  %i.nm = load i64, ptr @_ZZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEcE11kAsciiCodes, align 8, !tbaa !75
  %i.nn = shl nuw nsw i64 1, %i.nl
  %i.no = and i64 %i.nm, %i.nn
  %.not.i134 = icmp eq i64 %i.no, 0
  br i1 %.not.i134, label %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137, label %bb.ay, !llvm.loop !2680

_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137: ; preds = %bb.ba, %_ZN8facebook5velox9functions10stringImpl17isAsciiWhiteSpaceEc.exit.i133
  tail call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115addOrMergeViewsERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS7_EES7_(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, i64 %.0.i130, ptr %i.my)
  %i.np = select i1 %.not.i86, i32 0, i32 8
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %bb.aw, %bb.as, %bb.v, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129, %bb.at, %bb.h, %bb.c, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54, %bb.o, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53, %bb.x, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit, %bb.p, %bb.a, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, %.thread417, %bb.an, %bb.ag, %bb.ah, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread, %bb.f
  %.4 = phi i32 [ %.sroa.4138.0.extract.trunc, %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit ], [ 5, %.thread417 ], [ 17, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit129 ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.thread ], [ 17, %bb.a ], [ 0, %bb.ah ], [ %i.aj, %bb.f ], [ %i.bl, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread ], [ 17, %bb.c ], [ 0, %bb.ag ], [ 9, %bb.o ], [ 0, %bb.an ], [ %i.np, %_ZN8facebook5velox9functions9trimTokenESt17basic_string_viewIcSt11char_traitsIcEE.exit137 ], [ 17, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit54 ], [ 9, %bb.x ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit53 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit ], [ 9, %bb.p ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit ], [ 17, %bb.h ], [ %.mux, %bb.as ], [ 9, %bb.v ], [ 0, %bb.at ], [ 17, %bb.aw ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox14sortingNetworkIiZNKS0_9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS3_9JsonFieldEiEUliiE_EEvPT_iOT0_(ptr noundef %0, i32 noundef %1, ptr readonly captures(none) %.0.val) unnamed_addr #2 {
bb.a:
  switch i32 %1, label %bb.ahc [
    i32 0, label %bb.ahd
    i32 1, label %bb.ahd
    i32 2, label %bb.b
    i32 3, label %bb.e
    i32 4, label %bb.l
    i32 5, label %bb.w
    i32 6, label %bb.ap
    i32 7, label %bb.bo
    i32 8, label %bb.cv
    i32 9, label %bb.ei
    i32 10, label %bb.gl
    i32 11, label %bb.iy
    i32 12, label %bb.lx
    i32 13, label %bb.pe
    i32 14, label %bb.tb
    i32 15, label %bb.xi
    i32 16, label %bb.acb
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.0.val, i64 376
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !2248 ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.e ; 3 uses
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.g ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !75   ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load i64, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %_ZN8facebook5velox6detail18SortingNetworkImplILi2EE5applyIiZNKS0_9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS6_9JsonFieldEiEUliiE_EEvPT_OT0_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.lcssa17.i.i.i.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.n, %bb.c ], [ %i.s, %bb.d ]
  %.lcssa.i.i.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.c ], [ %i.t, %bb.d ]
  %i.v = icmp ult i64 %.lcssa17.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i
  %cond.fr.i.i.i.i = freeze i1 %i.v               ; 2 uses
  %..i.i.i.i = select i1 %cond.fr.i.i.i.i, ptr %0, ptr %i.c
  %.15.i.i.i.i = select i1 %cond.fr.i.i.i.i, ptr %i.c, ptr %0
  %.pre.i.i.i.i = load i32, ptr %..i.i.i.i, align 4, !tbaa !3
  %.pre16.i.i.i.i = load i32, ptr %.15.i.i.i.i, align 4, !tbaa !3
  br label %_ZN8facebook5velox6detail18SortingNetworkImplILi2EE5applyIiZNKS0_9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS6_9JsonFieldEiEUliiE_EEvPT_OT0_.exit

_ZN8facebook5velox6detail18SortingNetworkImplILi2EE5applyIiZNKS0_9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS6_9JsonFieldEiEUliiE_EEvPT_OT0_.exit: ; preds = %bb.d, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i
  %i.w = phi i32 [ %.pre16.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i ], [ %i.b, %bb.d ]
  %i.x = phi i32 [ %.pre.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i ], [ %i.d, %bb.d ]
  store i32 %i.w, ptr %i.c, align 4, !tbaa !3
  store i32 %i.x, ptr %0, align 4, !tbaa !3
  br label %bb.ahd

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %.0.val, i64 376
  %.val30.val = load ptr, ptr %i.y, align 8, !tbaa !2248 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val30.val, i64 %i.ad ; 3 uses
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val30.val, i64 %i.af ; 3 uses
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !75 ; 3 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !75 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !75 ; 2 uses
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %_ZN8facebook5velox6detail18SortingNetworkImplILi3EE2PSIiZNKS0_9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS6_9JsonFieldEiEUliiE_Li2ELi2ELb0EEC2EPiSB_.exit.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS2_9JsonFieldEiENKUliiE_clEii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.lcssa17.i.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.am, %bb.f ], [ %i.ar, %bb.g ]
  %.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.an, %bb.f ], [ %i.as, %bb.g ]
  %i.au = icmp ult i64 %.lcssa17.i.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i.i
  %cond.fr.i.i.i.i.i = freeze i1 %i.au            ; 2 uses
  %..i.i.i.i.i = select i1 %cond.fr.i.i.i.i.i, ptr %i.z, ptr %i.ab
  %.15.i.i.i.i.i = select i1 %cond.fr.i.i.i.i.i, ptr %i.ab, ptr %i.z
  %.pre.i.i.i.i.i = load i32, ptr %..i.i.i.i.i, align 4, !tbaa !3
  %.pre16.i.i.i.i.i = load i32, ptr %.15.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.pre.i.i = sext i32 %.pre16.i.i.i.i.i to i64   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [24 x i8], ptr %.val30.val, i64 %.pre.i.i
  %.pre3.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !75
  br label %_ZN8facebook5velox6detail18SortingNetworkImplILi3EE2PSIiZNKS0_9functions12_GLOBAL__N_113JsonParseImpl8fastSortEPKNS6_9JsonFieldEiEUliiE_Li2ELi2ELb0EEC2EPiSB_.exit.i.i

end_hunk_5
