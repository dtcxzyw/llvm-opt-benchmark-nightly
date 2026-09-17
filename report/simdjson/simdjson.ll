Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.5872.ptr = getelementptr inbounds nuw i8, ptr %.0867.lcssa, i64 %.5872.add
  %i.ky = load i8, ptr %.5872.ptr, align 1, !tbaa !36 ; 2 uses
  %i.kz = add i8 %i.ky, -48                       ; 2 uses
  %i.la = icmp ult i8 %i.kz, 10
  br i1 %i.la, label %.lr.ph1517, label %.noexc89.thread, !llvm.loop !4

.noexc89:                                         ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3870.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc89.thread

.noexc89.thread:                                  ; preds = %.lr.ph1517, %.noexc89
  %.5880.lcssa1699 = phi i64 [ %.4879958, %.noexc89 ], [ %i.kx, %.lr.ph1517 ]
  %.5872.idx.lcssa15131698 = phi i64 [ %.3870.add, %.noexc89 ], [ %.5872.add, %.lr.ph1517 ] ; 2 uses
  %i.lb = phi i8 [ %i.kr, %.noexc89 ], [ %i.ky, %.lr.ph1517 ]
  %.5872.ptr.le = getelementptr inbounds nuw i8, ptr %.0867.lcssa, i64 %.5872.idx.lcssa15131698 ; 2 uses
  %i.lc = ptrtoint ptr %.5872.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5872.idx.lcssa15131698
  %i.ld = sub i64 %i.lc, %i.jn
  %sext.i = shl i64 %i.ld, 32
  %i.le = ashr exact i64 %sext.i, 32
  br label %bb.al

bb.al:                                            ; preds = %.noexc89.thread, %bb.aj
  %i.lf = phi i8 [ %i.lb, %.noexc89.thread ], [ %.lcssa1508, %bb.aj ] ; 2 uses
  %.0882 = phi i64 [ %gepdiff, %.noexc89.thread ], [ 0, %bb.aj ] ; 2 uses
  %.1876 = phi i64 [ %.5880.lcssa1699, %.noexc89.thread ], [ %.0875.lcssa, %bb.aj ] ; 14 uses
  %.1868 = phi ptr [ %.5872.ptr.le, %.noexc89.thread ], [ %.0867.lcssa, %bb.aj ] ; 4 uses
  %.044.i = phi i64 [ %i.le, %.noexc89.thread ], [ %i.jo, %bb.aj ] ; 4 uses
  switch i8 %i.lf, label %bb.ar [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.lg = getelementptr inbounds nuw i8, ptr %.1868, i64 1 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !36  ; 3 uses
  %i.li = icmp eq i8 %i.lh, 45
  switch i8 %i.lh, label %bb.ao [
    i8 45, label %bb.an
    i8 43, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.lj = getelementptr inbounds nuw i8, ptr %.1868, i64 2 ; 2 uses
  %.pre1633 = load i8, ptr %i.lj, align 1, !tbaa !36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.lk = phi i8 [ %i.lh, %bb.am ], [ %.pre1633, %bb.an ]
  %.6873 = phi ptr [ %i.lg, %bb.am ], [ %i.lj, %bb.an ] ; 3 uses
  %i.ll = add i8 %i.lk, -48                       ; 2 uses
  %i.lm = icmp ult i8 %i.ll, 10
  br i1 %i.lm, label %.lr.ph1524, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1524:                                       ; preds = %bb.ao, %.lr.ph1524
  %i.ln = phi i8 [ %i.ls, %.lr.ph1524 ], [ %i.ll, %bb.ao ]
  %.08641523 = phi i64 [ %i.lq, %.lr.ph1524 ], [ 0, %bb.ao ]
  %.7874.idx1522 = phi i64 [ %.7874.add, %.lr.ph1524 ], [ 0, %bb.ao ] ; 2 uses
  %i.lo = mul nsw i64 %.08641523, 10
  %i.lp = zext nneg i8 %i.ln to i64
  %i.lq = add nsw i64 %i.lo, %i.lp                ; 3 uses
  %.7874.add = add nuw nsw i64 %.7874.idx1522, 1  ; 3 uses
  %.7874.ptr = getelementptr inbounds nuw i8, ptr %.6873, i64 %.7874.add
  %i.lr = load i8, ptr %.7874.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ls = add i8 %i.lr, -48                       ; 2 uses
  %i.lt = icmp ult i8 %i.ls, 10
  br i1 %i.lt, label %.lr.ph1524, label %bb.ap, !llvm.loop !5

bb.ap:                                            ; preds = %.lr.ph1524
  %.7874.ptr.le = getelementptr inbounds nuw i8, ptr %.6873, i64 %.7874.add
  %i.lu = icmp samesign ugt i64 %.7874.idx1522, 17
  br i1 %i.lu, label %.preheader1488, label %.thread968, !prof !108

.preheader1488:                                   ; preds = %bb.ap, %.preheader1488
  %.0.i94 = phi ptr [ %i.lx, %.preheader1488 ], [ %.6873, %bb.ap ] ; 3 uses
  %i.lv = load i8, ptr %.0.i94, align 1, !tbaa !36
  %i.lw = icmp eq i8 %i.lv, 48
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i94, i64 1
  br i1 %i.lw, label %.preheader1488, label %bb.aq, !llvm.loop !6

bb.aq:                                            ; preds = %.preheader1488
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i94, i64 18
  %i.lz = icmp ugt ptr %.7874.ptr.le, %i.ly
  %spec.select = select i1 %i.lz, i64 999999999999999999, i64 %i.lq
  br label %.thread968

.thread968:                                       ; preds = %bb.aq, %bb.ap
  %.1865 = phi i64 [ %i.lq, %bb.ap ], [ %spec.select, %bb.aq ] ; 2 uses
  %i.ma = sub nsw i64 0, %.1865
  %i.mb = select i1 %i.li, i64 %i.ma, i64 %.1865
  %i.mc = add nsw i64 %i.mb, %.0882
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  br i1 %i.js, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %.thread968, %bb.ar
  %i.md = phi i8 [ %i.lr, %.thread968 ], [ %i.lf, %bb.ar ]
  %.1883972 = phi i64 [ %i.mc, %.thread968 ], [ %.0882, %bb.ar ] ; 9 uses
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i = icmp eq i8 %i.mg, 0                 ; 3 uses
  %i.mh = icmp ugt i64 %.044.i, 19
  br i1 %i.mh, label %.preheader1487, label %.critedge.i

.preheader1487:                                   ; preds = %bb.as, %.critedge.i104
  %i.mi = phi i8 [ %.pre1634, %.critedge.i104 ], [ %i.jb, %bb.as ]
  %.0.i103 = phi ptr [ %i.mj, %.critedge.i104 ], [ %i.ja, %bb.as ] ; 2 uses
  switch i8 %i.mi, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit [
    i8 48, label %.critedge.i104
    i8 46, label %.critedge.i104
  ]

.critedge.i104:                                   ; preds = %.preheader1487, %.preheader1487
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i103, i64 1 ; 2 uses
  %.pre1634 = load i8, ptr %i.mj, align 1, !tbaa !36
  br label %.preheader1487, !llvm.loop !7

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit: ; preds = %.preheader1487
  %i.mk = ptrtoint ptr %.0.i103 to i64
  %.neg.i = add i64 %.044.i, %i.jn
  %i.ml = sub i64 %.neg.i, %i.mk
  %i.mm = icmp ugt i64 %i.ml, 19
  br i1 %i.mm, label %.noexc98, label %.critedge.i, !prof !108

.noexc98:                                         ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.mn = call fastcc noundef i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.iq, ptr noundef %i.e)
  %i.mo = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.mp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.mo, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i:                                      ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit, %bb.as
  %i.mr = add i64 %.1883972, -309
  %or.cond.i95 = icmp ult i64 %i.mr, -651
  br i1 %or.cond.i95, label %bb.at, label %bb.au, !prof !124

bb.at:                                            ; preds = %.critedge.i
  %i.ms = icmp slt i64 %.1883972, -342
  %i.mt = icmp eq i64 %.1876, 0
  %or.cond3.i = or i1 %i.mt, %i.ms
  br i1 %or.cond3.i, label %.noexc91.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.noexc91.thread:                                  ; preds = %bb.at
  %i.mu = select i1 %i.iy, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.mv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.mu, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br i1 %.not59.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.au:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.mx = add nsw i64 %.1883972, 22
  %or.cond.i105 = icmp ult i64 %i.mx, 45
  %i.my = icmp ult i64 %.1876, 9007199254740992
  %or.cond3.i106 = and i1 %i.my, %or.cond.i105
  br i1 %or.cond3.i106, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.mz = uitofp nneg i64 %.1876 to double        ; 2 uses
  %i.na = icmp slt i64 %.1883972, 0
  br i1 %i.na, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nb = sub nsw i64 0, %.1883972
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !123
  %i.ne = fdiv double %i.mz, %i.nd
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.1883972
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !123
  %i.nh = fmul double %i.ng, %i.mz
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %storemerge.i = phi double [ %i.nh, %bb.ax ], [ %i.ne, %bb.aw ] ; 2 uses
  %i.ni = fneg double %storemerge.i
  %spec.select1773 = select i1 %i.iy, double %i.ni, double %storemerge.i
  br label %.noexc99.thread

bb.az:                                            ; preds = %bb.au
  %i.nj = icmp eq i64 %.1876, 0
  br i1 %i.nj, label %bb.ba, label %.noexc108

bb.ba:                                            ; preds = %bb.az
  %i.nk = select i1 %i.iy, double -0.000000e+00, double 0.000000e+00
  br label %.noexc99.thread

.noexc108:                                        ; preds = %bb.az
  %i.nl = mul nsw i64 %.1883972, 217706
  %i.nm = ashr i64 %i.nl, 16
  %i.nn = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1876, i1 true) ; 2 uses
  %i.no = shl i64 %.1876, %i.nn                   ; 2 uses
  %i.np = trunc nsw i64 %.1883972 to i32
  %i.nq = shl nsw i32 %i.np, 1
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.nr ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 5472
  %i.nu = load i64, ptr %i.nt, align 16, !tbaa !40
  %i.nv = zext i64 %i.no to i128
  %i.nw = zext i64 %i.nu to i128
  %i.nx = mul nuw i128 %i.nw, %i.nv               ; 2 uses
  %i.ny = trunc i128 %i.nx to i64                 ; 2 uses
  %i.nz = lshr i128 %i.nx, 64
  %i.oa = trunc nuw i128 %i.nz to i64             ; 3 uses
  %i.ob = and i64 %i.oa, 511
  %i.oc = icmp eq i64 %i.ob, 511
  br i1 %i.oc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc108
  %i.od = getelementptr i8, ptr %i.ns, i64 5480
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.no, i64 %i.oe) ; 2 uses
  %i.of = add i64 %2, %i.ny                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.of
  %i.og = zext i1 %3 to i64
  %spec.select.i107 = add nuw i64 %i.og, %i.oa
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc108
  %.sroa.7.1.i = phi i64 [ %spec.select.i107, %bb.bb ], [ %i.oa, %.noexc108 ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.of, %bb.bb ], [ %i.ny, %.noexc108 ]
  %i.oh = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.oi = add nuw nsw i64 %i.oh, 9                ; 2 uses
  %i.oj = lshr i64 %.sroa.7.1.i, %i.oi            ; 6 uses
  %reass.sub = sub nsw i64 %i.nm, %i.nn
  %.neg = add nsw i64 %reass.sub, %i.oh           ; 4 uses
  %i.ok = add nsw i64 %.neg, 1086
  %i.ol = icmp slt i64 %.neg, -1085
  br i1 %i.ol, label %bb.bd, label %bb.bg, !prof !108

bb.bd:                                            ; preds = %bb.bc
  %i.om = icmp samesign ult i64 %.neg, -1148
  br i1 %i.om, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.on = select i1 %i.iy, double -0.000000e+00, double 0.000000e+00
  br label %.noexc99.thread

bb.bf:                                            ; preds = %bb.bd
  %i.oo = sub nuw nsw i64 -1085, %.neg
  %i.op = lshr i64 %i.oj, %i.oo                   ; 2 uses
  %i.oq = and i64 %i.op, 1
  %i.or = add nuw nsw i64 %i.oq, %i.op            ; 2 uses
  %i.os = lshr i64 %i.or, 1
  %i.ot = icmp samesign ugt i64 %i.or, 9007199254740991
  %i.ou = and i64 %i.os, 13510798882111487
  %i.ov = select i1 %i.ot, i64 4503599627370496, i64 0
  %i.ow = select i1 %i.iy, i64 -9223372036854775808, i64 0
  %i.ox = or disjoint i64 %i.ov, %i.ow
  %i.oy = or disjoint i64 %i.ox, %i.ou
  %i.oz = bitcast i64 %i.oy to double
  br label %.noexc99.thread

bb.bg:                                            ; preds = %bb.bc
  %i.pa = icmp ult i64 %.sroa.037.0.i, 2
  %i.pb = add nsw i64 %.1883972, 4
  %i.pc = icmp ult i64 %i.pb, 28
  %or.cond7.i = and i1 %i.pc, %i.pa
  %i.pd = and i64 %i.oj, 3
  %i.pe = icmp eq i64 %i.pd, 1
  %i.pf = select i1 %or.cond7.i, i1 %i.pe, i1 false
  br i1 %i.pf, label %bb.bh, label %bb.bi, !prof !108

bb.bh:                                            ; preds = %bb.bg
  %i.pg = shl i64 %i.oj, %i.oi
  %i.ph = icmp eq i64 %i.pg, %.sroa.7.1.i
  %i.pi = and i64 %i.oj, 72057594037927932
  %spec.select90.i = select i1 %i.ph, i64 %i.pi, i64 %i.oj
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.080.i = phi i64 [ %i.oj, %bb.bg ], [ %spec.select90.i, %bb.bh ] ; 2 uses
  %i.pj = and i64 %.080.i, 1
  %i.pk = add nuw nsw i64 %i.pj, %.080.i          ; 2 uses
  %i.pl = icmp samesign ugt i64 %i.pk, 18014398509481983 ; 2 uses
  %i.pm = zext i1 %i.pl to i64
  %spec.select92.i = add nuw nsw i64 %i.ok, %i.pm ; 2 uses
  %i.pn = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.pn, label %.noexc99, label %bb.bj, !prof !108

bb.bj:                                            ; preds = %bb.bi
  %i.po = lshr i64 %i.pk, 1
  %i.pp = and i64 %i.po, 13510798882111487
  %i.pq = select i1 %i.pl, i64 0, i64 %i.pp
  %i.pr = shl nuw nsw i64 %spec.select92.i, 52
  %i.ps = select i1 %i.iy, i64 -9223372036854775808, i64 0
  %i.pt = or disjoint i64 %i.pq, %i.ps
  %i.pu = or i64 %i.pt, %i.pr
  %i.pv = bitcast i64 %i.pu to double
  br label %.noexc99.thread

.noexc99:                                         ; preds = %bb.bi
  %i.pw = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.iq, ptr noundef %i.f)
  br i1 %i.pw, label %.noexc99..noexc99.thread_crit_edge, label %bb.bk

.noexc99..noexc99.thread_crit_edge:               ; preds = %.noexc99
  %.pre1635 = load double, ptr %i.f, align 8, !tbaa !123
  br label %.noexc99.thread

.noexc99.thread:                                  ; preds = %bb.ay, %.noexc99..noexc99.thread_crit_edge, %bb.bj, %bb.bf, %bb.be, %bb.ba
  %i.px = phi double [ %.pre1635, %.noexc99..noexc99.thread_crit_edge ], [ %i.pv, %bb.bj ], [ %i.oz, %bb.bf ], [ %i.on, %bb.be ], [ %spec.select1773, %bb.ay ], [ %i.nk, %bb.ba ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.py = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.px, ptr %i.py, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc99.thread, %.noexc99
  %.sroa.0.22 = phi ptr [ %i.pz, %.noexc99.thread ], [ %i.u, %.noexc99 ]
  %.0.i96 = phi i32 [ 0, %.noexc99.thread ], [ 9, %.noexc99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bl:                                            ; preds = %bb.ar
  %i.qa = select i1 %i.iy, i64 19, i64 20         ; 2 uses
  %i.qb = icmp ugt i64 %.044.i, %i.qa
  br i1 %i.qb, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qc = icmp eq i64 %.044.i, %i.qa
  br i1 %i.qc, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.iy, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.qd = icmp ugt i64 %.1876, -9223372036854775808
  br i1 %i.qd, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qe = sub i64 0, %.1876
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !40
  %i.qf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qe, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qh = load i8, ptr %.1868, align 1, !tbaa !36
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i = icmp eq i8 %i.qk, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bq:                                            ; preds = %bb.bn
  %i.ql = icmp ne i8 %i.ix, 49
  %i.qm = icmp sgt i64 %.1876, -1
  %or.cond5.i = select i1 %i.ql, i1 true, i1 %i.qm
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread975

bb.br:                                            ; preds = %bb.bm
  %i.qn = icmp slt i64 %.1876, 0
  br i1 %i.qn, label %.thread975, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qo = sub nsw i64 0, %.1876
  %i.qp = select i1 %i.iy, i64 %i.qo, i64 %.1876
  br label %.thread975

.thread975:                                       ; preds = %bb.br, %bb.bq, %bb.bs
  %.sink1775 = phi i64 [ 7782220156096217088, %bb.bs ], [ 8430738502437568512, %bb.bq ], [ 8430738502437568512, %bb.br ]
  %.sink = phi i64 [ %i.qp, %bb.bs ], [ %.1876, %bb.bq ], [ %.1876, %bb.br ]
  store i64 %.sink1775, ptr %i.u, align 8, !tbaa !40
  %i.qq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qq, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qr = load i8, ptr %.1868, align 1, !tbaa !36
  %i.qs = zext i8 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i = icmp eq i8 %i.qu, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980: ; preds = %bb.bl, %bb.bo
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qw = load i8, ptr %i.qv, align 8, !tbaa !125, !range !50, !noundef !51
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %.preheader1827, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1827:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, %.preheader1827
  %.122.i = phi ptr [ %i.rb, %.preheader1827 ], [ %i.ja, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980 ] ; 3 uses
  %i.qy = load i8, ptr %.122.i, align 1, !tbaa !36 ; 2 uses
  %i.qz = add i8 %i.qy, -48
  %i.ra = icmp ult i8 %i.qz, 10
  %i.rb = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.ra, label %.preheader1827, label %bb.bt, !llvm.loop !8

bb.bt:                                            ; preds = %.preheader1827
  %i.rc = zext i8 %i.qy to i64
  %i.rd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i84 = icmp eq i8 %i.re, 0
  br i1 %.not.i84, label %bb.bu, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bu:                                            ; preds = %bb.bt
  %i.rf = ptrtoint ptr %.122.i to i64
  %i.rg = ptrtoint ptr %i.iq to i64
  %i.rh = sub i64 %i.rf, %i.rg                    ; 3 uses
  %i.ri = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !48
  %i.rl = ptrtoint ptr %i.m to i64
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = or i64 %i.rn, 6485183463413514240
  store i64 %i.ro, ptr %i.u, align 8, !tbaa !40
  %i.rp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull align 1 %i.iq, i64 %i.rh, i1 false)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rh
  %i.rs = trunc i64 %i.rh to i32
  store i32 %i.rs, ptr %i.m, align 1
  store i8 0, ptr %i.rr, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.at, %bb.bt, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, %.noexc89, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread975, %bb.bq, %bb.bp, %.noexc91.thread, %bb.ao
  %.0.i51365.ph = phi i32 [ 9, %.noexc91.thread ], [ 9, %bb.bp ], [ 9, %bb.bq ], [ 9, %.thread975 ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc89 ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980 ], [ 9, %bb.bt ], [ 9, %bb.at ], [ 9, %bb.ao ]
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.7825.ptr = getelementptr inbounds nuw i8, ptr %.0818.lcssa, i64 %.7825.add
  %i.aic = load i8, ptr %.7825.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aid = add i8 %i.aic, -48                     ; 2 uses
  %i.aie = icmp ult i8 %i.aid, 10
  br i1 %i.aie, label %.lr.ph1556, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !4

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not1460 = icmp eq i64 %.5823.add, 1
  br i1 %.not1460, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1556, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5831.lcssa1717 = phi i64 [ %.48301147, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.aib, %.lr.ph1556 ]
  %.7825.idx.lcssa15521716 = phi i64 [ %.5823.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7825.add, %.lr.ph1556 ] ; 2 uses
  %i.aif = phi i8 [ %i.ahv, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.aic, %.lr.ph1556 ]
  %.7825.ptr.le = getelementptr inbounds nuw i8, ptr %.0818.lcssa, i64 %.7825.idx.lcssa15521716 ; 2 uses
  %i.aig = ptrtoint ptr %.7825.ptr.le to i64
  %gepdiff1600 = sub nsw i64 1, %.7825.idx.lcssa15521716
  %i.aih = sub i64 %i.aig, %i.agr
  %sext.i.i = shl i64 %i.aih, 32
  %i.aii = ashr exact i64 %sext.i.i, 32
  br label %bb.do

bb.do:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.dl
  %i.aij = phi i8 [ %i.aif, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1497, %bb.dl ] ; 2 uses
  %.0833 = phi i64 [ %gepdiff1600, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.dl ] ; 2 uses
  %.2828 = phi i64 [ %.5831.lcssa1717, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0826.lcssa, %bb.dl ] ; 14 uses
  %.1819 = phi ptr [ %.7825.ptr.le, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0818.lcssa, %bb.dl ] ; 4 uses
  %.044.i.i = phi i64 [ %i.aii, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.ags, %bb.dl ] ; 4 uses
  switch i8 %i.aij, label %bb.du [
    i8 101, label %bb.dp
    i8 69, label %bb.dp
  ]

bb.dp:                                            ; preds = %bb.do, %bb.do
  %i.aik = getelementptr inbounds nuw i8, ptr %.1819, i64 1 ; 2 uses
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !36 ; 3 uses
  %i.aim = icmp eq i8 %i.ail, 45
  switch i8 %i.ail, label %bb.dr [
    i8 45, label %bb.dq
    i8 43, label %bb.dq
  ]

bb.dq:                                            ; preds = %bb.dp, %bb.dp
  %i.ain = getelementptr inbounds nuw i8, ptr %.1819, i64 2 ; 2 uses
  %.pre1637 = load i8, ptr %i.ain, align 1, !tbaa !36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.aio = phi i8 [ %i.ail, %bb.dp ], [ %.pre1637, %bb.dq ]
  %.2820 = phi ptr [ %i.aik, %bb.dp ], [ %i.ain, %bb.dq ] ; 3 uses
  %i.aip = add i8 %i.aio, -48                     ; 2 uses
  %i.aiq = icmp ult i8 %i.aip, 10
  br i1 %i.aiq, label %.lr.ph1563, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1563:                                       ; preds = %bb.dr, %.lr.ph1563
  %i.air = phi i8 [ %i.aiw, %.lr.ph1563 ], [ %i.aip, %bb.dr ]
  %.08151562 = phi i64 [ %i.aiu, %.lr.ph1563 ], [ 0, %bb.dr ]
  %.3821.idx1561 = phi i64 [ %.3821.add, %.lr.ph1563 ], [ 0, %bb.dr ] ; 2 uses
  %i.ais = mul nsw i64 %.08151562, 10
  %i.ait = zext nneg i8 %i.air to i64
  %i.aiu = add nsw i64 %i.ais, %i.ait             ; 3 uses
  %.3821.add = add nuw nsw i64 %.3821.idx1561, 1  ; 3 uses
  %.3821.ptr = getelementptr inbounds nuw i8, ptr %.2820, i64 %.3821.add
  %i.aiv = load i8, ptr %.3821.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aiw = add i8 %i.aiv, -48                     ; 2 uses
  %i.aix = icmp ult i8 %i.aiw, 10
  br i1 %i.aix, label %.lr.ph1563, label %bb.ds, !llvm.loop !5

bb.ds:                                            ; preds = %.lr.ph1563
  %.3821.ptr.le = getelementptr inbounds nuw i8, ptr %.2820, i64 %.3821.add
  %i.aiy = icmp samesign ugt i64 %.3821.idx1561, 17
  br i1 %i.aiy, label %.preheader1483, label %.thread1157, !prof !108

.preheader1483:                                   ; preds = %bb.ds, %.preheader1483
  %.0.i22.i = phi ptr [ %i.ajb, %.preheader1483 ], [ %.2820, %bb.ds ] ; 3 uses
  %i.aiz = load i8, ptr %.0.i22.i, align 1, !tbaa !36
  %i.aja = icmp eq i8 %i.aiz, 48
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 1
  br i1 %i.aja, label %.preheader1483, label %bb.dt, !llvm.loop !6

bb.dt:                                            ; preds = %.preheader1483
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 18
  %i.ajd = icmp ugt ptr %.3821.ptr.le, %i.ajc
  %spec.select1445 = select i1 %i.ajd, i64 999999999999999999, i64 %i.aiu
  br label %.thread1157

.thread1157:                                      ; preds = %bb.dt, %bb.ds
  %.2817 = phi i64 [ %i.aiu, %bb.ds ], [ %spec.select1445, %bb.dt ] ; 2 uses
  %i.aje = sub nsw i64 0, %.2817
  %i.ajf = select i1 %i.aim, i64 %i.aje, i64 %.2817
  %i.ajg = add nsw i64 %i.ajf, %.0833
  br label %bb.dv

bb.du:                                            ; preds = %bb.do
  br i1 %i.agw, label %bb.dv, label %bb.ep

bb.dv:                                            ; preds = %.thread1157, %bb.du
  %i.ajh = phi i8 [ %i.aiv, %.thread1157 ], [ %i.aij, %bb.du ]
  %.28351161 = phi i64 [ %i.ajg, %.thread1157 ], [ %.0833, %bb.du ] ; 9 uses
  %i.aji = zext i8 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aji
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.ajk, 0              ; 3 uses
  %i.ajl = icmp ugt i64 %.044.i.i, 19
  br i1 %i.ajl, label %.preheader1482, label %.critedge.i.i

.preheader1482:                                   ; preds = %bb.dv, %.critedge.i31.i
  %i.ajm = phi i8 [ %.pre1638, %.critedge.i31.i ], [ %i.agf, %bb.dv ]
  %.0.i30.i = phi ptr [ %i.ajn, %.critedge.i31.i ], [ %i.age, %bb.dv ] ; 2 uses
  switch i8 %i.ajm, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i31.i
    i8 46, label %.critedge.i31.i
  ]

.critedge.i31.i:                                  ; preds = %.preheader1482, %.preheader1482
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0.i30.i, i64 1 ; 2 uses
  %.pre1638 = load i8, ptr %i.ajn, align 1, !tbaa !36
  br label %.preheader1482, !llvm.loop !7

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1482
  %i.ajo = ptrtoint ptr %.0.i30.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.agr
  %i.ajp = sub i64 %.neg.i.i, %i.ajo
  %i.ajq = icmp ugt i64 %i.ajp, 19
  br i1 %i.ajq, label %.noexc26.i, label %.critedge.i.i, !prof !108

.noexc26.i:                                       ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ajr = call fastcc noundef i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.ys, ptr noundef %i.c)
  %i.ajs = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajs, ptr %i.ajt, align 8
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.dv
  %i.ajv = add i64 %.28351161, -309
  %or.cond.i23.i = icmp ult i64 %i.ajv, -651
  br i1 %or.cond.i23.i, label %bb.dw, label %bb.dx, !prof !124

bb.dw:                                            ; preds = %.critedge.i.i
  %i.ajw = icmp slt i64 %.28351161, -342
  %i.ajx = icmp eq i64 %.2828, 0
  %or.cond3.i.i = or i1 %i.ajx, %i.ajw
  br i1 %or.cond3.i.i, label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.dw
  %i.ajy = select i1 %i.agc, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajy, ptr %i.ajz, align 8
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i, label %select.unfold1175, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dx:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.akb = add nsw i64 %.28351161, 22
  %or.cond.i32.i = icmp ult i64 %i.akb, 45
  %i.akc = icmp ult i64 %.2828, 9007199254740992
  %or.cond3.i33.i = and i1 %i.akc, %or.cond.i32.i
  br i1 %or.cond3.i33.i, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.akd = uitofp nneg i64 %.2828 to double       ; 2 uses
  %i.ake = icmp slt i64 %.28351161, 0
  br i1 %i.ake, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.akf = sub nsw i64 0, %.28351161
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.akf
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !123
  %i.aki = fdiv double %i.akd, %i.akh
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.28351161
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !123
  %i.akl = fmul double %i.akk, %i.akd
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %storemerge.i.i = phi double [ %i.akl, %bb.ea ], [ %i.aki, %bb.dz ] ; 2 uses
  %i.akm = fneg double %storemerge.i.i
  %spec.select1785 = select i1 %i.agc, double %i.akm, double %storemerge.i.i
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ec:                                            ; preds = %bb.dx
  %i.akn = icmp eq i64 %.2828, 0
  br i1 %i.akn, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ako = select i1 %i.agc, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ee:                                            ; preds = %bb.ec
  %i.akp = mul nsw i64 %.28351161, 217706
  %i.akq = ashr i64 %i.akp, 16
  %i.akr = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2828, i1 true) ; 2 uses
  %i.aks = shl i64 %.2828, %i.akr                 ; 2 uses
  %i.akt = trunc nsw i64 %.28351161 to i32
  %i.aku = shl nsw i32 %i.akt, 1
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.akv ; 2 uses
  %i.akx = getelementptr i8, ptr %i.akw, i64 5472
  %i.aky = load i64, ptr %i.akx, align 16, !tbaa !40
  %i.akz = zext i64 %i.aks to i128
  %i.ala = zext i64 %i.aky to i128
  %i.alb = mul nuw i128 %i.ala, %i.akz            ; 2 uses
  %i.alc = trunc i128 %i.alb to i64               ; 2 uses
  %i.ald = lshr i128 %i.alb, 64
  %i.ale = trunc nuw i128 %i.ald to i64           ; 3 uses
  %i.alf = and i64 %i.ale, 511
  %i.alg = icmp eq i64 %i.alf, 511
  br i1 %i.alg, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.alh = getelementptr i8, ptr %i.akw, i64 5480
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.aks, i64 %i.ali) ; 2 uses
  %i.alj = add i64 %4, %i.alc                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.alj
  %i.alk = zext i1 %5 to i64
  %spec.select.i34.i = add nuw i64 %i.alk, %i.ale
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i34.i, %bb.ef ], [ %i.ale, %bb.ee ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.alj, %bb.ef ], [ %i.alc, %bb.ee ]
  %i.all = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.alm = add nuw nsw i64 %i.all, 9              ; 2 uses
  %i.aln = lshr i64 %.sroa.7.1.i.i, %i.alm        ; 6 uses
  %reass.sub1602 = sub nsw i64 %i.akq, %i.akr
  %.neg1601 = add nsw i64 %reass.sub1602, %i.all  ; 4 uses
  %i.alo = add nsw i64 %.neg1601, 1086
  %i.alp = icmp slt i64 %.neg1601, -1085
  br i1 %i.alp, label %bb.eh, label %bb.ek, !prof !108

bb.eh:                                            ; preds = %bb.eg
  %i.alq = icmp samesign ult i64 %.neg1601, -1148
  br i1 %i.alq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.alr = select i1 %i.agc, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ej:                                            ; preds = %bb.eh
  %i.als = sub nuw nsw i64 -1085, %.neg1601
  %i.alt = lshr i64 %i.aln, %i.als                ; 2 uses
  %i.alu = and i64 %i.alt, 1
  %i.alv = add nuw nsw i64 %i.alu, %i.alt         ; 2 uses
  %i.alw = lshr i64 %i.alv, 1
  %i.alx = icmp samesign ugt i64 %i.alv, 9007199254740991
  %i.aly = and i64 %i.alw, 13510798882111487
  %i.alz = select i1 %i.alx, i64 4503599627370496, i64 0
  %i.ama = select i1 %i.agc, i64 -9223372036854775808, i64 0
  %i.amb = or disjoint i64 %i.alz, %i.ama
  %i.amc = or disjoint i64 %i.amb, %i.aly
  %i.amd = bitcast i64 %i.amc to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ek:                                            ; preds = %bb.eg
  %i.ame = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.amf = add nsw i64 %.28351161, 4
  %i.amg = icmp ult i64 %i.amf, 28
  %or.cond7.i.i = and i1 %i.amg, %i.ame
  %i.amh = and i64 %i.aln, 3
  %i.ami = icmp eq i64 %i.amh, 1
  %i.amj = select i1 %or.cond7.i.i, i1 %i.ami, i1 false
  br i1 %i.amj, label %bb.el, label %bb.em, !prof !108

bb.el:                                            ; preds = %bb.ek
  %i.amk = shl i64 %i.aln, %i.alm
  %i.aml = icmp eq i64 %i.amk, %.sroa.7.1.i.i
  %i.amm = and i64 %i.aln, 72057594037927932
  %spec.select90.i.i = select i1 %i.aml, i64 %i.amm, i64 %i.aln
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.080.i.i = phi i64 [ %i.aln, %bb.ek ], [ %spec.select90.i.i, %bb.el ] ; 2 uses
  %i.amn = and i64 %.080.i.i, 1
  %i.amo = add nuw nsw i64 %i.amn, %.080.i.i      ; 2 uses
  %i.amp = icmp samesign ugt i64 %i.amo, 18014398509481983 ; 2 uses
  %i.amq = zext i1 %i.amp to i64
  %spec.select92.i.i = add nuw nsw i64 %i.alo, %i.amq ; 2 uses
  %i.amr = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.amr, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.en, !prof !108

bb.en:                                            ; preds = %bb.em
  %i.ams = lshr i64 %i.amo, 1
  %i.amt = and i64 %i.ams, 13510798882111487
  %i.amu = select i1 %i.amp, i64 0, i64 %i.amt
  %i.amv = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.amw = select i1 %i.agc, i64 -9223372036854775808, i64 0
  %i.amx = or disjoint i64 %i.amu, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  %i.amz = bitcast i64 %i.amy to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.em
  %i.ana = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ys, ptr noundef %i.d)
  br i1 %i.ana, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.eo

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1639 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.eb, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.en, %bb.ej, %bb.ei, %bb.ed
  %i.anb = phi double [ %.pre1639, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.amz, %bb.en ], [ %i.amd, %bb.ej ], [ %i.alr, %bb.ei ], [ %spec.select1785, %bb.eb ], [ %i.ako, %bb.ed ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.anb, ptr %i.anc, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.28 = phi ptr [ %i.and, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %.sroa.0.6, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i24.i = phi i32 [ 0, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i: ; preds = %bb.eo, %.noexc26.i
  %.sroa.0.29 = phi ptr [ %i.aju, %.noexc26.i ], [ %.sroa.0.28, %bb.eo ]
  %.1.i25.i = phi i32 [ %i.ajr, %.noexc26.i ], [ %.0.i24.i, %bb.eo ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i25.i, 0          ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1446 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i25.i
  %.not168.i = and i1 %.not59.i.i, %.not60.i.i
  br i1 %.not168.i, label %select.unfold1175, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ep:                                            ; preds = %bb.du
  %i.ane = select i1 %i.agc, i64 19, i64 20       ; 2 uses
  %i.anf = icmp ugt i64 %.044.i.i, %i.ane
  br i1 %i.anf, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ang = icmp eq i64 %.044.i.i, %i.ane
  br i1 %i.ang, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %bb.eq
  br i1 %i.agc, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.anh = icmp ugt i64 %.2828, -9223372036854775808
  br i1 %i.anh, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ani = sub i64 0, %.2828
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.ani, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anl = load i8, ptr %.1819, align 1, !tbaa !36
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anm
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.ano, 0
  br i1 %.not58.i.i, label %select.unfold1175, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.eu:                                            ; preds = %bb.er
  %i.anp = icmp ne i8 %i.yt, 49
  %i.anq = icmp sgt i64 %.2828, -1
  %or.cond5.i.i = select i1 %i.anp, i1 true, i1 %i.anq
  br i1 %or.cond5.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1164

bb.ev:                                            ; preds = %bb.eq
  %i.anr = icmp slt i64 %.2828, 0
  br i1 %i.anr, label %.thread1164, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ans = sub nsw i64 0, %.2828
  %i.ant = select i1 %i.agc, i64 %i.ans, i64 %.2828
  br label %.thread1164

.thread1164:                                      ; preds = %bb.ev, %bb.eu, %bb.ew
  %.sink1788 = phi i64 [ 7782220156096217088, %bb.ew ], [ 8430738502437568512, %bb.eu ], [ 8430738502437568512, %bb.ev ]
  %.sink1786 = phi i64 [ %i.ant, %bb.ew ], [ %.2828, %bb.eu ], [ %.2828, %bb.ev ]
  store i64 %.sink1788, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1786, ptr %i.anu, align 8
  %.sroa.0.27 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anv = load i8, ptr %.1819, align 1, !tbaa !36
  %i.anw = zext i8 %i.anv to i64
  %i.anx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anw
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.any, 0
  br i1 %.not57.i.i, label %select.unfold1175, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170: ; preds = %bb.ep, %bb.es
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aoa = load i8, ptr %i.anz, align 8, !tbaa !125, !range !50, !noundef !51
  %i.aob = trunc nuw i8 %i.aoa to i1
  br i1 %i.aob, label %.preheader1823, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1823:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170, %.preheader1823
  %.122.i.i = phi ptr [ %i.aof, %.preheader1823 ], [ %i.age, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170 ] ; 3 uses
  %i.aoc = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.aod = add i8 %i.aoc, -48
  %i.aoe = icmp ult i8 %i.aod, 10
  %i.aof = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.aoe, label %.preheader1823, label %bb.ex, !llvm.loop !8

bb.ex:                                            ; preds = %.preheader1823
  %i.aog = zext i8 %i.aoc to i64
  %i.aoh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aog
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i115 = icmp eq i8 %i.aoi, 0
  br i1 %.not.i.i115, label %.split1724, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1724:                                       ; preds = %bb.ex
  %i.aoj = ptrtoint ptr %.122.i.i to i64
  %i.aok = ptrtoint ptr %i.ys to i64
  %i.aol = sub i64 %i.aoj, %i.aok                 ; 3 uses
  %i.aom = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !48
  %i.aop = ptrtoint ptr %.sroa.172.6 to i64
  %i.aoq = ptrtoint ptr %i.aoo to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  %i.aos = or i64 %i.aor, 6485183463413514240
  store i64 %i.aos, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.aou = getelementptr inbounds nuw i8, ptr %i.yf, i64 5 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.7790.ptr = getelementptr inbounds nuw i8, ptr %.0783.lcssa, i64 %.7790.add
  %i.bhp = load i8, ptr %.7790.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhq = add i8 %i.bhp, -48                     ; 2 uses
  %i.bhr = icmp ult i8 %i.bhq, 10
  br i1 %i.bhr, label %.lr.ph1583, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread, !llvm.loop !4

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i180
  %.not1465 = icmp eq i64 %.5788.add, 1
  br i1 %.not1465, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread: ; preds = %.lr.ph1583, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182
  %.5796.lcssa1730 = phi i64 [ %.47951304, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182 ], [ %i.bho, %.lr.ph1583 ]
  %.7790.idx.lcssa15791729 = phi i64 [ %.5788.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182 ], [ %.7790.add, %.lr.ph1583 ] ; 2 uses
  %i.bhs = phi i8 [ %i.bhi, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182 ], [ %i.bhp, %.lr.ph1583 ]
  %.7790.ptr.le = getelementptr inbounds nuw i8, ptr %.0783.lcssa, i64 %.7790.idx.lcssa15791729 ; 2 uses
  %i.bht = ptrtoint ptr %.7790.ptr.le to i64
  %gepdiff1603 = sub nsw i64 1, %.7790.idx.lcssa15791729
  %i.bhu = sub i64 %i.bht, %i.bge
  %sext.i.i185 = shl i64 %i.bhu, 32
  %i.bhv = ashr exact i64 %sext.i.i185, 32
  br label %bb.gy

bb.gy:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread, %bb.gv
  %i.bhw = phi i8 [ %i.bhs, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread ], [ %.lcssa1492, %bb.gv ] ; 2 uses
  %.0798 = phi i64 [ %gepdiff1603, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread ], [ 0, %bb.gv ] ; 2 uses
  %.2793 = phi i64 [ %.5796.lcssa1730, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread ], [ %.0791.lcssa, %bb.gv ] ; 14 uses
  %.1784 = phi ptr [ %.7790.ptr.le, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread ], [ %.0783.lcssa, %bb.gv ] ; 4 uses
  %.044.i.i124 = phi i64 [ %i.bhv, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182.thread ], [ %i.bgf, %bb.gv ] ; 4 uses
  switch i8 %i.bhw, label %bb.he [
    i8 101, label %bb.gz
    i8 69, label %bb.gz
  ]

bb.gz:                                            ; preds = %bb.gy, %bb.gy
  %i.bhx = getelementptr inbounds nuw i8, ptr %.1784, i64 1 ; 2 uses
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !36 ; 3 uses
  %i.bhz = icmp eq i8 %i.bhy, 45
  switch i8 %i.bhy, label %bb.hb [
    i8 45, label %bb.ha
    i8 43, label %bb.ha
  ]

bb.ha:                                            ; preds = %bb.gz, %bb.gz
  %i.bia = getelementptr inbounds nuw i8, ptr %.1784, i64 2 ; 2 uses
  %.pre1641 = load i8, ptr %i.bia, align 1, !tbaa !36
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.bib = phi i8 [ %i.bhy, %bb.gz ], [ %.pre1641, %bb.ha ]
  %.2785 = phi ptr [ %i.bhx, %bb.gz ], [ %i.bia, %bb.ha ] ; 3 uses
  %i.bic = add i8 %i.bib, -48                     ; 2 uses
  %i.bid = icmp ult i8 %i.bic, 10
  br i1 %i.bid, label %.lr.ph1590, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1590:                                       ; preds = %bb.hb, %.lr.ph1590
  %i.bie = phi i8 [ %i.bij, %.lr.ph1590 ], [ %i.bic, %bb.hb ]
  %.01589 = phi i64 [ %i.bih, %.lr.ph1590 ], [ 0, %bb.hb ]
  %.3786.idx1588 = phi i64 [ %.3786.add, %.lr.ph1590 ], [ 0, %bb.hb ] ; 2 uses
  %i.bif = mul nsw i64 %.01589, 10
  %i.big = zext nneg i8 %i.bie to i64
  %i.bih = add nsw i64 %i.bif, %i.big             ; 3 uses
  %.3786.add = add nuw nsw i64 %.3786.idx1588, 1  ; 3 uses
  %.3786.ptr = getelementptr inbounds nuw i8, ptr %.2785, i64 %.3786.add
  %i.bii = load i8, ptr %.3786.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bij = add i8 %i.bii, -48                     ; 2 uses
  %i.bik = icmp ult i8 %i.bij, 10
  br i1 %i.bik, label %.lr.ph1590, label %bb.hc, !llvm.loop !5

bb.hc:                                            ; preds = %.lr.ph1590
  %.3786.ptr.le = getelementptr inbounds nuw i8, ptr %.2785, i64 %.3786.add
  %i.bil = icmp samesign ugt i64 %.3786.idx1588, 17
  br i1 %i.bil, label %.preheader1480, label %.thread1314, !prof !108

.preheader1480:                                   ; preds = %bb.hc, %.preheader1480
  %.0.i22.i178 = phi ptr [ %i.bio, %.preheader1480 ], [ %.2785, %bb.hc ] ; 3 uses
  %i.bim = load i8, ptr %.0.i22.i178, align 1, !tbaa !36
  %i.bin = icmp eq i8 %i.bim, 48
  %i.bio = getelementptr inbounds nuw i8, ptr %.0.i22.i178, i64 1
  br i1 %i.bin, label %.preheader1480, label %bb.hd, !llvm.loop !6

bb.hd:                                            ; preds = %.preheader1480
  %i.bip = getelementptr inbounds nuw i8, ptr %.0.i22.i178, i64 18
  %i.biq = icmp ugt ptr %.3786.ptr.le, %i.bip
  %spec.select1447 = select i1 %i.biq, i64 999999999999999999, i64 %i.bih
  br label %.thread1314

.thread1314:                                      ; preds = %bb.hd, %bb.hc
  %.2 = phi i64 [ %i.bih, %bb.hc ], [ %spec.select1447, %bb.hd ] ; 2 uses
  %i.bir = sub nsw i64 0, %.2
  %i.bis = select i1 %i.bhz, i64 %i.bir, i64 %.2
  %i.bit = add nsw i64 %i.bis, %.0798
  br label %bb.hf

bb.he:                                            ; preds = %bb.gy
  br i1 %i.bgj, label %bb.hf, label %bb.hz

bb.hf:                                            ; preds = %.thread1314, %bb.he
  %i.biu = phi i8 [ %i.bii, %.thread1314 ], [ %i.bhw, %bb.he ]
  %.28001318 = phi i64 [ %i.bit, %.thread1314 ], [ %.0798, %bb.he ] ; 9 uses
  %i.biv = zext i8 %i.biu to i64
  %i.biw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.biv
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i145 = icmp eq i8 %i.bix, 0           ; 3 uses
  %i.biy = icmp ugt i64 %.044.i.i124, 19
  br i1 %i.biy, label %.preheader, label %.critedge.i.i146

.preheader:                                       ; preds = %bb.hf, %.critedge.i31.i174
  %i.biz = phi i8 [ %.pre1642, %.critedge.i31.i174 ], [ %i.bfs, %bb.hf ]
  %.0.i30.i173 = phi ptr [ %i.bja, %.critedge.i31.i174 ], [ %i.bfr, %bb.hf ] ; 2 uses
  switch i8 %i.biz, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i175 [
    i8 48, label %.critedge.i31.i174
    i8 46, label %.critedge.i31.i174
  ]

.critedge.i31.i174:                               ; preds = %.preheader, %.preheader
  %i.bja = getelementptr inbounds nuw i8, ptr %.0.i30.i173, i64 1 ; 2 uses
  %.pre1642 = load i8, ptr %i.bja, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !7

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i175: ; preds = %.preheader
  %i.bjb = ptrtoint ptr %.0.i30.i173 to i64
  %.neg.i.i176 = add i64 %.044.i.i124, %i.bge
  %i.bjc = sub i64 %.neg.i.i176, %i.bjb
  %i.bjd = icmp ugt i64 %i.bjc, 19
  br i1 %i.bjd, label %.noexc26.i177, label %.critedge.i.i146, !prof !108

.noexc26.i177:                                    ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bje = call fastcc noundef i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.ayf, ptr noundef %i.a)
  %i.bjf = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bjf, ptr %i.bjg, align 8
  %i.bjh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161

.critedge.i.i146:                                 ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i175, %bb.hf
  %i.bji = add i64 %.28001318, -309
  %or.cond.i23.i147 = icmp ult i64 %i.bji, -651
  br i1 %or.cond.i23.i147, label %bb.hg, label %bb.hh, !prof !124

bb.hg:                                            ; preds = %.critedge.i.i146
  %i.bjj = icmp slt i64 %.28001318, -342
  %i.bjk = icmp eq i64 %.2793, 0
  %or.cond3.i.i172 = or i1 %i.bjk, %i.bjj
  br i1 %or.cond3.i.i172, label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread: ; preds = %bb.hg
  %i.bjl = select i1 %i.bfp, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjm = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bjl, ptr %i.bjm, align 8
  %i.bjn = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i145, label %select.unfold1332, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hh:                                            ; preds = %.critedge.i.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bjo = add nsw i64 %.28001318, 22
  %or.cond.i32.i148 = icmp ult i64 %i.bjo, 45
  %i.bjp = icmp ult i64 %.2793, 9007199254740992
  %or.cond3.i33.i149 = and i1 %i.bjp, %or.cond.i32.i148
  br i1 %or.cond3.i33.i149, label %bb.hi, label %bb.hm

bb.hi:                                            ; preds = %bb.hh
  %i.bjq = uitofp nneg i64 %.2793 to double       ; 2 uses
  %i.bjr = icmp slt i64 %.28001318, 0
  br i1 %i.bjr, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bjs = sub nsw i64 0, %.28001318
  %i.bjt = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bjs
  %i.bju = load double, ptr %i.bjt, align 8, !tbaa !123
  %i.bjv = fdiv double %i.bjq, %i.bju
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  %i.bjw = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.28001318
  %i.bjx = load double, ptr %i.bjw, align 8, !tbaa !123
  %i.bjy = fmul double %i.bjx, %i.bjq
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %storemerge.i.i171 = phi double [ %i.bjy, %bb.hk ], [ %i.bjv, %bb.hj ] ; 2 uses
  %i.bjz = fneg double %storemerge.i.i171
  %spec.select1817 = select i1 %i.bfp, double %i.bjz, double %storemerge.i.i171
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread

bb.hm:                                            ; preds = %bb.hh
  %i.bka = icmp eq i64 %.2793, 0
  br i1 %i.bka, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.bkb = select i1 %i.bfp, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread

bb.ho:                                            ; preds = %bb.hm
  %i.bkc = mul nsw i64 %.28001318, 217706
  %i.bkd = ashr i64 %i.bkc, 16
  %i.bke = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2793, i1 true) ; 2 uses
  %i.bkf = shl i64 %.2793, %i.bke                 ; 2 uses
  %i.bkg = trunc nsw i64 %.28001318 to i32
  %i.bkh = shl nsw i32 %i.bkg, 1
  %i.bki = sext i32 %i.bkh to i64
  %i.bkj = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bki ; 2 uses
  %i.bkk = getelementptr i8, ptr %i.bkj, i64 5472
  %i.bkl = load i64, ptr %i.bkk, align 16, !tbaa !40
  %i.bkm = zext i64 %i.bkf to i128
  %i.bkn = zext i64 %i.bkl to i128
  %i.bko = mul nuw i128 %i.bkn, %i.bkm            ; 2 uses
  %i.bkp = trunc i128 %i.bko to i64               ; 2 uses
  %i.bkq = lshr i128 %i.bko, 64
  %i.bkr = trunc nuw i128 %i.bkq to i64           ; 3 uses
  %i.bks = and i64 %i.bkr, 511
  %i.bkt = icmp eq i64 %i.bks, 511
  br i1 %i.bkt, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bku = getelementptr i8, ptr %i.bkj, i64 5480
  %i.bkv = load i64, ptr %i.bku, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bkf, i64 %i.bkv) ; 2 uses
  %i.bkw = add i64 %6, %i.bkp                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bkw
  %i.bkx = zext i1 %7 to i64
  %spec.select.i34.i170 = add nuw i64 %i.bkx, %i.bkr
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.sroa.7.1.i.i152 = phi i64 [ %spec.select.i34.i170, %bb.hp ], [ %i.bkr, %bb.ho ] ; 3 uses
  %.sroa.037.0.i.i153 = phi i64 [ %i.bkw, %bb.hp ], [ %i.bkp, %bb.ho ]
  %i.bky = lshr i64 %.sroa.7.1.i.i152, 63         ; 2 uses
  %i.bkz = add nuw nsw i64 %i.bky, 9              ; 2 uses
  %i.bla = lshr i64 %.sroa.7.1.i.i152, %i.bkz     ; 6 uses
  %reass.sub1605 = sub nsw i64 %i.bkd, %i.bke
  %.neg1604 = add nsw i64 %reass.sub1605, %i.bky  ; 4 uses
  %i.blb = add nsw i64 %.neg1604, 1086
  %i.blc = icmp slt i64 %.neg1604, -1085
  br i1 %i.blc, label %bb.hr, label %bb.hu, !prof !108

bb.hr:                                            ; preds = %bb.hq
  %i.bld = icmp samesign ult i64 %.neg1604, -1148
  br i1 %i.bld, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.ble = select i1 %i.bfp, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread

bb.ht:                                            ; preds = %bb.hr
  %i.blf = sub nuw nsw i64 -1085, %.neg1604
  %i.blg = lshr i64 %i.bla, %i.blf                ; 2 uses
  %i.blh = and i64 %i.blg, 1
  %i.bli = add nuw nsw i64 %i.blh, %i.blg         ; 2 uses
  %i.blj = lshr i64 %i.bli, 1
  %i.blk = icmp samesign ugt i64 %i.bli, 9007199254740991
  %i.bll = and i64 %i.blj, 13510798882111487
  %i.blm = select i1 %i.blk, i64 4503599627370496, i64 0
  %i.bln = select i1 %i.bfp, i64 -9223372036854775808, i64 0
  %i.blo = or disjoint i64 %i.blm, %i.bln
  %i.blp = or disjoint i64 %i.blo, %i.bll
  %i.blq = bitcast i64 %i.blp to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread

bb.hu:                                            ; preds = %bb.hq
  %i.blr = icmp ult i64 %.sroa.037.0.i.i153, 2
  %i.bls = add nsw i64 %.28001318, 4
  %i.blt = icmp ult i64 %i.bls, 28
  %or.cond7.i.i154 = and i1 %i.blt, %i.blr
  %i.blu = and i64 %i.bla, 3
  %i.blv = icmp eq i64 %i.blu, 1
  %i.blw = select i1 %or.cond7.i.i154, i1 %i.blv, i1 false
  br i1 %i.blw, label %bb.hv, label %bb.hw, !prof !108

bb.hv:                                            ; preds = %bb.hu
  %i.blx = shl i64 %i.bla, %i.bkz
  %i.bly = icmp eq i64 %i.blx, %.sroa.7.1.i.i152
  %i.blz = and i64 %i.bla, 72057594037927932
  %spec.select90.i.i167 = select i1 %i.bly, i64 %i.blz, i64 %i.bla
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.080.i.i155 = phi i64 [ %i.bla, %bb.hu ], [ %spec.select90.i.i167, %bb.hv ] ; 2 uses
  %i.bma = and i64 %.080.i.i155, 1
  %i.bmb = add nuw nsw i64 %i.bma, %.080.i.i155   ; 2 uses
  %i.bmc = icmp samesign ugt i64 %i.bmb, 18014398509481983 ; 2 uses
  %i.bmd = zext i1 %i.bmc to i64
  %spec.select92.i.i157 = add nuw nsw i64 %i.blb, %i.bmd ; 2 uses
  %i.bme = icmp samesign ugt i64 %spec.select92.i.i157, 2046
  br i1 %i.bme, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158, label %bb.hx, !prof !108

bb.hx:                                            ; preds = %bb.hw
  %i.bmf = lshr i64 %i.bmb, 1
  %i.bmg = and i64 %i.bmf, 13510798882111487
  %i.bmh = select i1 %i.bmc, i64 0, i64 %i.bmg
  %i.bmi = shl nuw nsw i64 %spec.select92.i.i157, 52
  %i.bmj = select i1 %i.bfp, i64 -9223372036854775808, i64 0
  %i.bmk = or disjoint i64 %i.bmh, %i.bmj
  %i.bml = or i64 %i.bmk, %i.bmi
  %i.bmm = bitcast i64 %i.bml to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158: ; preds = %bb.hw
  %i.bmn = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ayf, ptr noundef %i.b)
  br i1 %i.bmn, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread_crit_edge, label %bb.hy

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread_crit_edge: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158
  %.pre1643 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread: ; preds = %bb.hl, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread_crit_edge, %bb.hx, %bb.ht, %bb.hs, %bb.hn
  %i.bmo = phi double [ %.pre1643, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread_crit_edge ], [ %i.bmm, %bb.hx ], [ %i.blq, %bb.ht ], [ %i.ble, %bb.hs ], [ %spec.select1817, %bb.hl ], [ %i.bkb, %bb.hn ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmp = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bmo, ptr %i.bmp, align 8
  %i.bmq = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.hy

bb.hy:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158
  %.sroa.0.35 = phi ptr [ %i.bmq, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread ], [ %.sroa.0.2, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158 ]
  %.0.i24.i160 = phi i32 [ 0, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158.thread ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161: ; preds = %bb.hy, %.noexc26.i177
  %.sroa.0.36 = phi ptr [ %i.bjh, %.noexc26.i177 ], [ %.sroa.0.35, %bb.hy ]
  %.1.i25.i162 = phi i32 [ %i.bje, %.noexc26.i177 ], [ %.0.i24.i160, %bb.hy ] ; 2 uses
  %.not60.i.i163 = icmp eq i32 %.1.i25.i162, 0    ; 2 uses
  %..i.i165 = select i1 %.not59.i.i145, i32 0, i32 9
  %spec.select1448 = select i1 %.not60.i.i163, i32 %..i.i165, i32 %.1.i25.i162
  %.not169.i = and i1 %.not59.i.i145, %.not60.i.i163
  br i1 %.not169.i, label %select.unfold1332, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hz:                                            ; preds = %bb.he
  %i.bmr = select i1 %i.bfp, i64 19, i64 20       ; 2 uses
  %i.bms = icmp ugt i64 %.044.i.i124, %i.bmr
  br i1 %i.bms, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.bmt = icmp eq i64 %.044.i.i124, %i.bmr
  br i1 %i.bmt, label %bb.ib, label %bb.if

bb.ib:                                            ; preds = %bb.ia
  br i1 %i.bfp, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.bmu = icmp ugt i64 %.2793, -9223372036854775808
  br i1 %i.bmu, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bmv = sub i64 0, %.2793
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bmv, ptr %i.bmw, align 8
  %i.bmx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmy = load i8, ptr %.1784, align 1, !tbaa !36
  %i.bmz = zext i8 %i.bmy to i64
  %i.bna = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmz
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i143 = icmp eq i8 %i.bnb, 0
  br i1 %.not58.i.i143, label %select.unfold1332, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ie:                                            ; preds = %bb.ib
  %i.bnc = icmp ne i8 %i.ayg, 49
  %i.bnd = icmp sgt i64 %.2793, -1
  %or.cond5.i.i142 = select i1 %i.bnc, i1 true, i1 %i.bnd
  br i1 %or.cond5.i.i142, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1321

bb.if:                                            ; preds = %bb.ia
  %i.bne = icmp slt i64 %.2793, 0
  br i1 %i.bne, label %.thread1321, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bnf = sub nsw i64 0, %.2793
  %i.bng = select i1 %i.bfp, i64 %i.bnf, i64 %.2793
  br label %.thread1321

.thread1321:                                      ; preds = %bb.if, %bb.ie, %bb.ig
  %.sink1820 = phi i64 [ 7782220156096217088, %bb.ig ], [ 8430738502437568512, %bb.ie ], [ 8430738502437568512, %bb.if ]
  %.sink1818 = phi i64 [ %i.bng, %bb.ig ], [ %.2793, %bb.ie ], [ %.2793, %bb.if ]
  store i64 %.sink1820, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bnh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1818, ptr %i.bnh, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bni = load i8, ptr %.1784, align 1, !tbaa !36
  %i.bnj = zext i8 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnj
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i140 = icmp eq i8 %i.bnl, 0
  br i1 %.not57.i.i140, label %select.unfold1332, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327: ; preds = %bb.hz, %bb.ic
  %i.bnm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bnn = load i8, ptr %i.bnm, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bno = trunc nuw i8 %i.bnn to i1
  br i1 %i.bno, label %.preheader1821, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1821:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327, %.preheader1821
  %.122.i.i136 = phi ptr [ %i.bns, %.preheader1821 ], [ %i.bfr, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327 ] ; 3 uses
  %i.bnp = load i8, ptr %.122.i.i136, align 1, !tbaa !36 ; 2 uses
  %i.bnq = add i8 %i.bnp, -48
  %i.bnr = icmp ult i8 %i.bnq, 10
  %i.bns = getelementptr inbounds nuw i8, ptr %.122.i.i136, i64 1
  br i1 %i.bnr, label %.preheader1821, label %bb.ih, !llvm.loop !8

bb.ih:                                            ; preds = %.preheader1821
  %i.bnt = zext i8 %i.bnp to i64
  %i.bnu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnt
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i137 = icmp eq i8 %i.bnv, 0
  br i1 %.not.i.i137, label %.split1738, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1738:                                       ; preds = %bb.ih
  %i.bnw = ptrtoint ptr %.122.i.i136 to i64
  %i.bnx = ptrtoint ptr %i.ayf to i64
  %i.bny = sub i64 %i.bnw, %i.bnx                 ; 3 uses
  %i.bnz = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !48
  %i.boc = ptrtoint ptr %.sroa.172.2 to i64
  %i.bod = ptrtoint ptr %i.bob to i64
  %i.boe = sub i64 %i.boc, %i.bod
  %i.bof = or i64 %i.boe, 6485183463413514240
  store i64 %i.bof, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bog = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.boh = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7640.ptr = getelementptr inbounds nuw i8, ptr %.0633.lcssa, i64 %.7640.add
  %i.kr = load i8, ptr %.7640.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ks = add i8 %i.kr, -48                       ; 2 uses
  %i.kt = icmp ult i8 %i.ks, 10
  br i1 %i.kt, label %.lr.ph1282, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !4

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5638.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1282, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5646.lcssa1464 = phi i64 [ %.4645724, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kq, %.lr.ph1282 ]
  %.7640.idx.lcssa12781463 = phi i64 [ %.5638.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7640.add, %.lr.ph1282 ] ; 2 uses
  %i.ku = phi i8 [ %i.kk, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kr, %.lr.ph1282 ]
  %.7640.ptr.le = getelementptr inbounds nuw i8, ptr %.0633.lcssa, i64 %.7640.idx.lcssa12781463 ; 2 uses
  %i.kv = ptrtoint ptr %.7640.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7640.idx.lcssa12781463
  %i.kw = sub i64 %i.kv, %i.jg
  %sext.i.i = shl i64 %i.kw, 32
  %i.kx = ashr exact i64 %sext.i.i, 32
  br label %bb.am

bb.am:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.aj
  %i.ky = phi i8 [ %i.ku, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1273, %bb.aj ] ; 2 uses
  %.0648 = phi i64 [ %gepdiff, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.aj ] ; 2 uses
  %.2643 = phi i64 [ %.5646.lcssa1464, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0641.lcssa, %bb.aj ] ; 14 uses
  %.1634 = phi ptr [ %.7640.ptr.le, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0633.lcssa, %bb.aj ] ; 4 uses
  %.044.i.i = phi i64 [ %i.kx, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.jh, %bb.aj ] ; 4 uses
  switch i8 %i.ky, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.kz = getelementptr inbounds nuw i8, ptr %.1634, i64 1 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !36  ; 3 uses
  %i.lb = icmp eq i8 %i.la, 45
  switch i8 %i.la, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.lc = getelementptr inbounds nuw i8, ptr %.1634, i64 2 ; 2 uses
  %.pre1398 = load i8, ptr %i.lc, align 1, !tbaa !36
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ld = phi i8 [ %i.la, %bb.an ], [ %.pre1398, %bb.ao ]
  %.2635 = phi ptr [ %i.kz, %bb.an ], [ %i.lc, %bb.ao ] ; 3 uses
  %i.le = add i8 %i.ld, -48                       ; 2 uses
  %i.lf = icmp ult i8 %i.le, 10
  br i1 %i.lf, label %.lr.ph1289, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1289:                                       ; preds = %bb.ap, %.lr.ph1289
  %i.lg = phi i8 [ %i.ll, %.lr.ph1289 ], [ %i.le, %bb.ap ]
  %.06301288 = phi i64 [ %i.lj, %.lr.ph1289 ], [ 0, %bb.ap ]
  %.3636.idx1287 = phi i64 [ %.3636.add, %.lr.ph1289 ], [ 0, %bb.ap ] ; 2 uses
  %i.lh = mul nsw i64 %.06301288, 10
  %i.li = zext nneg i8 %i.lg to i64
  %i.lj = add nsw i64 %i.lh, %i.li                ; 3 uses
  %.3636.add = add nuw nsw i64 %.3636.idx1287, 1  ; 3 uses
  %.3636.ptr = getelementptr inbounds nuw i8, ptr %.2635, i64 %.3636.add
  %i.lk = load i8, ptr %.3636.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ll = add i8 %i.lk, -48                       ; 2 uses
  %i.lm = icmp ult i8 %i.ll, 10
  br i1 %i.lm, label %.lr.ph1289, label %bb.aq, !llvm.loop !5

bb.aq:                                            ; preds = %.lr.ph1289
  %.3636.ptr.le = getelementptr inbounds nuw i8, ptr %.2635, i64 %.3636.add
  %i.ln = icmp samesign ugt i64 %.3636.idx1287, 17
  br i1 %i.ln, label %.preheader1253, label %.thread734, !prof !108

.preheader1253:                                   ; preds = %bb.aq, %.preheader1253
  %.0.i261.i = phi ptr [ %i.lq, %.preheader1253 ], [ %.2635, %bb.aq ] ; 3 uses
  %i.lo = load i8, ptr %.0.i261.i, align 1, !tbaa !36
  %i.lp = icmp eq i8 %i.lo, 48
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i261.i, i64 1
  br i1 %i.lp, label %.preheader1253, label %bb.ar, !llvm.loop !6

bb.ar:                                            ; preds = %.preheader1253
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i261.i, i64 18
  %i.ls = icmp ugt ptr %.3636.ptr.le, %i.lr
  %spec.select = select i1 %i.ls, i64 999999999999999999, i64 %i.lj
  br label %.thread734

.thread734:                                       ; preds = %bb.ar, %bb.aq
  %.2632 = phi i64 [ %i.lj, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.lt = sub nsw i64 0, %.2632
  %i.lu = select i1 %i.lb, i64 %i.lt, i64 %.2632
  %i.lv = add nsw i64 %i.lu, %.0648
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.jl, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %.thread734, %bb.as
  %i.lw = phi i8 [ %i.lk, %.thread734 ], [ %i.ky, %bb.as ]
  %.2650738 = phi i64 [ %i.lv, %.thread734 ], [ %.0648, %bb.as ] ; 9 uses
  %i.lx = zext i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.lz, 0               ; 3 uses
  %i.ma = icmp ugt i64 %.044.i.i, 19
  br i1 %i.ma, label %.preheader1252, label %.critedge.i.i

.preheader1252:                                   ; preds = %bb.at, %.critedge.i271.i
  %i.mb = phi i8 [ %.pre1399, %.critedge.i271.i ], [ %i.iu, %bb.at ]
  %.0.i270.i = phi ptr [ %i.mc, %.critedge.i271.i ], [ %i.it, %bb.at ] ; 2 uses
  switch i8 %i.mb, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i271.i
    i8 46, label %.critedge.i271.i
  ]

.critedge.i271.i:                                 ; preds = %.preheader1252, %.preheader1252
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i270.i, i64 1 ; 2 uses
  %.pre1399 = load i8, ptr %i.mc, align 1, !tbaa !36
  br label %.preheader1252, !llvm.loop !7

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1252
  %i.md = ptrtoint ptr %.0.i270.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.jg
  %i.me = sub i64 %.neg.i.i, %i.md
  %i.mf = icmp ugt i64 %i.me, 19
  br i1 %i.mf, label %.noexc265.i, label %.critedge.i.i, !prof !108

.noexc265.i:                                      ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.mg = call fastcc noundef i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.ig, ptr noundef %i.e)
  %i.mh = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.mi = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.mh, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.at
  %i.mk = add i64 %.2650738, -309
  %or.cond.i262.i = icmp ult i64 %i.mk, -651
  br i1 %or.cond.i262.i, label %bb.au, label %bb.av, !prof !124

bb.au:                                            ; preds = %.critedge.i.i
  %i.ml = icmp slt i64 %.2650738, -342
  %i.mm = icmp eq i64 %.2643, 0
  %or.cond3.i.i = or i1 %i.mm, %i.ml
  br i1 %or.cond3.i.i, label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.au
  %i.mn = select i1 %i.ir, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.mo = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.mn, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br i1 %.not59.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.av:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.mq = add nsw i64 %.2650738, 22
  %or.cond.i272.i = icmp ult i64 %i.mq, 45
  %i.mr = icmp ult i64 %.2643, 9007199254740992
  %or.cond3.i273.i = and i1 %i.mr, %or.cond.i272.i
  br i1 %or.cond3.i273.i, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.ms = uitofp nneg i64 %.2643 to double        ; 2 uses
  %i.mt = icmp slt i64 %.2650738, 0
  br i1 %i.mt, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mu = sub nsw i64 0, %.2650738
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.mu
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !123
  %i.mx = fdiv double %i.ms, %i.mw
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2650738
  %i.mz = load double, ptr %i.my, align 8, !tbaa !123
  %i.na = fmul double %i.mz, %i.ms
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi double [ %i.na, %bb.ay ], [ %i.mx, %bb.ax ] ; 2 uses
  %i.nb = fneg double %storemerge.i.i
  %spec.select1539 = select i1 %i.ir, double %i.nb, double %storemerge.i.i
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ba:                                            ; preds = %bb.av
  %i.nc = icmp eq i64 %.2643, 0
  br i1 %i.nc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.nd = select i1 %i.ir, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bc:                                            ; preds = %bb.ba
  %i.ne = mul nsw i64 %.2650738, 217706
  %i.nf = ashr i64 %i.ne, 16
  %i.ng = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2643, i1 true) ; 2 uses
  %i.nh = shl i64 %.2643, %i.ng                   ; 2 uses
  %i.ni = trunc nsw i64 %.2650738 to i32
  %i.nj = shl nsw i32 %i.ni, 1
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.nk ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 5472
  %i.nn = load i64, ptr %i.nm, align 16, !tbaa !40
  %i.no = zext i64 %i.nh to i128
  %i.np = zext i64 %i.nn to i128
  %i.nq = mul nuw i128 %i.np, %i.no               ; 2 uses
  %i.nr = trunc i128 %i.nq to i64                 ; 2 uses
  %i.ns = lshr i128 %i.nq, 64
  %i.nt = trunc nuw i128 %i.ns to i64             ; 3 uses
  %i.nu = and i64 %i.nt, 511
  %i.nv = icmp eq i64 %i.nu, 511
  br i1 %i.nv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nw = getelementptr i8, ptr %i.nl, i64 5480
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.nh, i64 %i.nx) ; 2 uses
  %i.ny = add i64 %2, %i.nr                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.ny
  %i.nz = zext i1 %3 to i64
  %spec.select.i274.i = add nuw i64 %i.nz, %i.nt
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i274.i, %bb.bd ], [ %i.nt, %bb.bc ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.ny, %bb.bd ], [ %i.nr, %bb.bc ]
  %i.oa = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.ob = add nuw nsw i64 %i.oa, 9                ; 2 uses
  %i.oc = lshr i64 %.sroa.7.1.i.i, %i.ob          ; 6 uses
  %reass.sub = sub nsw i64 %i.nf, %i.ng
  %.neg = add nsw i64 %reass.sub, %i.oa           ; 4 uses
  %i.od = add nsw i64 %.neg, 1086
  %i.oe = icmp slt i64 %.neg, -1085
  br i1 %i.oe, label %bb.bf, label %bb.bi, !prof !108

bb.bf:                                            ; preds = %bb.be
  %i.of = icmp samesign ult i64 %.neg, -1148
  br i1 %i.of, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.og = select i1 %i.ir, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bh:                                            ; preds = %bb.bf
  %i.oh = sub nuw nsw i64 -1085, %.neg
  %i.oi = lshr i64 %i.oc, %i.oh                   ; 2 uses
  %i.oj = and i64 %i.oi, 1
  %i.ok = add nuw nsw i64 %i.oj, %i.oi            ; 2 uses
  %i.ol = lshr i64 %i.ok, 1
  %i.om = icmp samesign ugt i64 %i.ok, 9007199254740991
  %i.on = and i64 %i.ol, 13510798882111487
  %i.oo = select i1 %i.om, i64 4503599627370496, i64 0
  %i.op = select i1 %i.ir, i64 -9223372036854775808, i64 0
  %i.oq = or disjoint i64 %i.oo, %i.op
  %i.or = or disjoint i64 %i.oq, %i.on
  %i.os = bitcast i64 %i.or to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.be
  %i.ot = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.ou = add nsw i64 %.2650738, 4
  %i.ov = icmp ult i64 %i.ou, 28
  %or.cond7.i.i = and i1 %i.ov, %i.ot
  %i.ow = and i64 %i.oc, 3
  %i.ox = icmp eq i64 %i.ow, 1
  %i.oy = select i1 %or.cond7.i.i, i1 %i.ox, i1 false
  br i1 %i.oy, label %bb.bj, label %bb.bk, !prof !108

bb.bj:                                            ; preds = %bb.bi
  %i.oz = shl i64 %i.oc, %i.ob
  %i.pa = icmp eq i64 %i.oz, %.sroa.7.1.i.i
  %i.pb = and i64 %i.oc, 72057594037927932
  %spec.select90.i.i = select i1 %i.pa, i64 %i.pb, i64 %i.oc
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i.i = phi i64 [ %i.oc, %bb.bi ], [ %spec.select90.i.i, %bb.bj ] ; 2 uses
  %i.pc = and i64 %.080.i.i, 1
  %i.pd = add nuw nsw i64 %i.pc, %.080.i.i        ; 2 uses
  %i.pe = icmp samesign ugt i64 %i.pd, 18014398509481983 ; 2 uses
  %i.pf = zext i1 %i.pe to i64
  %spec.select92.i.i = add nuw nsw i64 %i.od, %i.pf ; 2 uses
  %i.pg = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.pg, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bl, !prof !108

bb.bl:                                            ; preds = %bb.bk
  %i.ph = lshr i64 %i.pd, 1
  %i.pi = and i64 %i.ph, 13510798882111487
  %i.pj = select i1 %i.pe, i64 0, i64 %i.pi
  %i.pk = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.pl = select i1 %i.ir, i64 -9223372036854775808, i64 0
  %i.pm = or disjoint i64 %i.pj, %i.pl
  %i.pn = or i64 %i.pm, %i.pk
  %i.po = bitcast i64 %i.pn to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bk
  %i.pp = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ig, ptr noundef %i.f)
  br i1 %i.pp, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bm

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1400 = load double, ptr %i.f, align 8, !tbaa !123
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.az, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.pq = phi double [ %.pre1400, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.po, %bb.bl ], [ %i.os, %bb.bh ], [ %i.og, %bb.bg ], [ %spec.select1539, %bb.az ], [ %i.nd, %bb.bb ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.pr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pq, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.ps, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i263.i = phi i32 [ 0, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.as
  %i.pt = select i1 %i.ir, i64 19, i64 20         ; 2 uses
  %i.pu = icmp ugt i64 %.044.i.i, %i.pt
  br i1 %i.pu, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pv = icmp eq i64 %.044.i.i, %i.pt
  br i1 %i.pv, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ir, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pw = icmp ugt i64 %.2643, -9223372036854775808
  br i1 %i.pw, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.px = sub i64 0, %.2643
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !40
  %i.py = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.px, ptr %i.py, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qa = load i8, ptr %.1634, align 1, !tbaa !36
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.qd, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qe = icmp ne i8 %i.iq, 49
  %i.qf = icmp sgt i64 %.2643, -1
  %or.cond5.i.i = select i1 %i.qe, i1 true, i1 %i.qf
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread741

bb.bt:                                            ; preds = %bb.bo
  %i.qg = icmp slt i64 %.2643, 0
  br i1 %i.qg, label %.thread741, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qh = sub nsw i64 0, %.2643
  %i.qi = select i1 %i.ir, i64 %i.qh, i64 %.2643
  br label %.thread741

.thread741:                                       ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1541 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qi, %bb.bu ], [ %.2643, %bb.bs ], [ %.2643, %bb.bt ]
  store i64 %.sink1541, ptr %i.y, align 8, !tbaa !40
  %i.qj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qj, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qk = load i8, ptr %.1634, align 1, !tbaa !36
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.qn, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746: ; preds = %bb.bn, %bb.bq
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !125, !range !50, !noundef !51
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %.preheader1593, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1593:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, %.preheader1593
  %.122.i.i = phi ptr [ %i.qu, %.preheader1593 ], [ %i.it, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746 ] ; 3 uses
  %i.qr = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.qs = add i8 %i.qr, -48
  %i.qt = icmp ult i8 %i.qs, 10
  %i.qu = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.qt, label %.preheader1593, label %bb.bv, !llvm.loop !8

bb.bv:                                            ; preds = %.preheader1593
  %i.qv = zext i8 %i.qr to i64
  %i.qw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i253.i = icmp eq i8 %i.qx, 0
  br i1 %.not.i253.i, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.qy = ptrtoint ptr %.122.i.i to i64
  %i.qz = ptrtoint ptr %i.ig to i64
  %i.ra = sub i64 %i.qy, %i.qz                    ; 3 uses
  %i.rb = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !48
  %i.re = ptrtoint ptr %i.n to i64
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = or i64 %i.rg, 6485183463413514240
  store i64 %i.rh, ptr %i.y, align 8, !tbaa !40
  %i.ri = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rj, ptr nonnull align 1 %i.ig, i64 %i.ra, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ra
  %i.rl = trunc i64 %i.ra to i32
  store i32 %i.rl, ptr %i.n, align 1
  store i8 0, ptr %i.rk, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.au, %bb.bv, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread741, %bb.bs, %bb.br, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.ap
  %.0.i176.i1131.ph = phi i32 [ 9, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread741 ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746 ], [ 9, %bb.bv ], [ 9, %bb.au ], [ 9, %bb.ap ]
end_hunk_3
begin_hunk_4_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7591.ptr = getelementptr inbounds nuw i8, ptr %.0584.lcssa, i64 %.7591.add
  %i.ahv = load i8, ptr %.7591.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ahw = add i8 %i.ahv, -48                     ; 2 uses
  %i.ahx = icmp ult i8 %i.ahw, 10
  br i1 %i.ahx, label %.lr.ph1321, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, !llvm.loop !4

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i.i
  %.not1225 = icmp eq i64 %.5589.add, 1
  br i1 %.not1225, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread: ; preds = %.lr.ph1321, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i
  %.5597.lcssa1482 = phi i64 [ %.4596913, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.ahu, %.lr.ph1321 ]
  %.7591.idx.lcssa13171481 = phi i64 [ %.5589.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %.7591.add, %.lr.ph1321 ] ; 2 uses
  %i.ahy = phi i8 [ %i.aho, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.ahv, %.lr.ph1321 ]
  %.7591.ptr.le = getelementptr inbounds nuw i8, ptr %.0584.lcssa, i64 %.7591.idx.lcssa13171481 ; 2 uses
  %i.ahz = ptrtoint ptr %.7591.ptr.le to i64
  %gepdiff1365 = sub nsw i64 1, %.7591.idx.lcssa13171481
  %i.aia = sub i64 %i.ahz, %i.agk
  %sext.i.i.i = shl i64 %i.aia, 32
  %i.aib = ashr exact i64 %sext.i.i.i, 32
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, %bb.dn
  %i.aic = phi i8 [ %i.ahy, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.lcssa1262, %bb.dn ] ; 2 uses
  %.0599 = phi i64 [ %gepdiff1365, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ 0, %bb.dn ] ; 2 uses
  %.2594 = phi i64 [ %.5597.lcssa1482, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0592.lcssa, %bb.dn ] ; 14 uses
  %.1585 = phi ptr [ %.7591.ptr.le, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0584.lcssa, %bb.dn ] ; 4 uses
  %.044.i.i.i = phi i64 [ %i.aib, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %i.agl, %bb.dn ] ; 4 uses
  switch i8 %i.aic, label %bb.dw [
    i8 101, label %bb.dr
    i8 69, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %i.aid = getelementptr inbounds nuw i8, ptr %.1585, i64 1 ; 2 uses
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !36 ; 3 uses
  %i.aif = icmp eq i8 %i.aie, 45
  switch i8 %i.aie, label %bb.dt [
    i8 45, label %bb.ds
    i8 43, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr
  %i.aig = getelementptr inbounds nuw i8, ptr %.1585, i64 2 ; 2 uses
  %.pre1402 = load i8, ptr %i.aig, align 1, !tbaa !36
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.aih = phi i8 [ %i.aie, %bb.dr ], [ %.pre1402, %bb.ds ]
  %.2586 = phi ptr [ %i.aid, %bb.dr ], [ %i.aig, %bb.ds ] ; 3 uses
  %i.aii = add i8 %i.aih, -48                     ; 2 uses
  %i.aij = icmp ult i8 %i.aii, 10
  br i1 %i.aij, label %.lr.ph1328, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1328:                                       ; preds = %bb.dt, %.lr.ph1328
  %i.aik = phi i8 [ %i.aip, %.lr.ph1328 ], [ %i.aii, %bb.dt ]
  %.05811327 = phi i64 [ %i.ain, %.lr.ph1328 ], [ 0, %bb.dt ]
  %.3587.idx1326 = phi i64 [ %.3587.add, %.lr.ph1328 ], [ 0, %bb.dt ] ; 2 uses
  %i.ail = mul nsw i64 %.05811327, 10
  %i.aim = zext nneg i8 %i.aik to i64
  %i.ain = add nsw i64 %i.ail, %i.aim             ; 3 uses
  %.3587.add = add nuw nsw i64 %.3587.idx1326, 1  ; 3 uses
  %.3587.ptr = getelementptr inbounds nuw i8, ptr %.2586, i64 %.3587.add
  %i.aio = load i8, ptr %.3587.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aip = add i8 %i.aio, -48                     ; 2 uses
  %i.aiq = icmp ult i8 %i.aip, 10
  br i1 %i.aiq, label %.lr.ph1328, label %bb.du, !llvm.loop !5

bb.du:                                            ; preds = %.lr.ph1328
  %.3587.ptr.le = getelementptr inbounds nuw i8, ptr %.2586, i64 %.3587.add
  %i.air = icmp samesign ugt i64 %.3587.idx1326, 17
  br i1 %i.air, label %.preheader1248, label %.thread923, !prof !108

.preheader1248:                                   ; preds = %bb.du, %.preheader1248
  %.0.i22.i.i = phi ptr [ %i.aiu, %.preheader1248 ], [ %.2586, %bb.du ] ; 3 uses
  %i.ais = load i8, ptr %.0.i22.i.i, align 1, !tbaa !36
  %i.ait = icmp eq i8 %i.ais, 48
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 1
  br i1 %i.ait, label %.preheader1248, label %bb.dv, !llvm.loop !6

bb.dv:                                            ; preds = %.preheader1248
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 18
  %i.aiw = icmp ugt ptr %.3587.ptr.le, %i.aiv
  %spec.select1211 = select i1 %i.aiw, i64 999999999999999999, i64 %i.ain
  br label %.thread923

.thread923:                                       ; preds = %bb.dv, %bb.du
  %.2583 = phi i64 [ %i.ain, %bb.du ], [ %spec.select1211, %bb.dv ] ; 2 uses
  %i.aix = sub nsw i64 0, %.2583
  %i.aiy = select i1 %i.aif, i64 %i.aix, i64 %.2583
  %i.aiz = add nsw i64 %i.aiy, %.0599
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dq
  br i1 %i.agp, label %bb.dx, label %bb.er

bb.dx:                                            ; preds = %.thread923, %bb.dw
  %i.aja = phi i8 [ %i.aio, %.thread923 ], [ %i.aic, %bb.dw ]
  %.2601927 = phi i64 [ %i.aiz, %.thread923 ], [ %.0599, %bb.dw ] ; 9 uses
  %i.ajb = zext i8 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i.i = icmp eq i8 %i.ajd, 0            ; 3 uses
  %i.aje = icmp ugt i64 %.044.i.i.i, 19
  br i1 %i.aje, label %.preheader1247, label %.critedge.i.i.i

.preheader1247:                                   ; preds = %bb.dx, %.critedge.i31.i.i
  %i.ajf = phi i8 [ %.pre1403, %.critedge.i31.i.i ], [ %i.afy, %bb.dx ]
  %.0.i30.i.i = phi ptr [ %i.ajg, %.critedge.i31.i.i ], [ %i.afx, %bb.dx ] ; 2 uses
  switch i8 %i.ajf, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i [
    i8 48, label %.critedge.i31.i.i
    i8 46, label %.critedge.i31.i.i
  ]

.critedge.i31.i.i:                                ; preds = %.preheader1247, %.preheader1247
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0.i30.i.i, i64 1 ; 2 uses
  %.pre1403 = load i8, ptr %i.ajg, align 1, !tbaa !36
  br label %.preheader1247, !llvm.loop !7

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i: ; preds = %.preheader1247
  %i.ajh = ptrtoint ptr %.0.i30.i.i to i64
  %.neg.i.i.i = add i64 %.044.i.i.i, %i.agk
  %i.aji = sub i64 %.neg.i.i.i, %i.ajh
  %i.ajj = icmp ugt i64 %i.aji, 19
  br i1 %i.ajj, label %.noexc26.i.i, label %.critedge.i.i.i, !prof !108

.noexc26.i.i:                                     ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ajk = call fastcc noundef i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.yl, ptr noundef %i.c)
  %i.ajl = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajm = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajl, ptr %i.ajm, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

.critedge.i.i.i:                                  ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i, %bb.dx
  %i.ajo = add i64 %.2601927, -309
  %or.cond.i23.i.i = icmp ult i64 %i.ajo, -651
  br i1 %or.cond.i23.i.i, label %bb.dy, label %bb.dz, !prof !124

bb.dy:                                            ; preds = %.critedge.i.i.i
  %i.ajp = icmp slt i64 %.2601927, -342
  %i.ajq = icmp eq i64 %.2594, 0
  %or.cond3.i.i.i = or i1 %i.ajq, %i.ajp
  br i1 %or.cond3.i.i.i, label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread: ; preds = %bb.dy
  %i.ajr = select i1 %i.afv, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajr, ptr %i.ajs, align 8
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i.i, label %select.unfold941, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dz:                                            ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.aju = add nsw i64 %.2601927, 22
  %or.cond.i32.i.i = icmp ult i64 %i.aju, 45
  %i.ajv = icmp ult i64 %.2594, 9007199254740992
  %or.cond3.i33.i.i = and i1 %i.ajv, %or.cond.i32.i.i
  br i1 %or.cond3.i33.i.i, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.ajw = uitofp nneg i64 %.2594 to double       ; 2 uses
  %i.ajx = icmp slt i64 %.2601927, 0
  br i1 %i.ajx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ajy = sub nsw i64 0, %.2601927
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ajy
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !123
  %i.akb = fdiv double %i.ajw, %i.aka
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2601927
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !123
  %i.ake = fmul double %i.akd, %i.ajw
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %storemerge.i.i.i = phi double [ %i.ake, %bb.ec ], [ %i.akb, %bb.eb ] ; 2 uses
  %i.akf = fneg double %storemerge.i.i.i
  %spec.select1551 = select i1 %i.afv, double %i.akf, double %storemerge.i.i.i
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ee:                                            ; preds = %bb.dz
  %i.akg = icmp eq i64 %.2594, 0
  br i1 %i.akg, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.akh = select i1 %i.afv, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.eg:                                            ; preds = %bb.ee
  %i.aki = mul nsw i64 %.2601927, 217706
  %i.akj = ashr i64 %i.aki, 16
  %i.akk = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2594, i1 true) ; 2 uses
  %i.akl = shl i64 %.2594, %i.akk                 ; 2 uses
  %i.akm = trunc nsw i64 %.2601927 to i32
  %i.akn = shl nsw i32 %i.akm, 1
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ako ; 2 uses
  %i.akq = getelementptr i8, ptr %i.akp, i64 5472
  %i.akr = load i64, ptr %i.akq, align 16, !tbaa !40
  %i.aks = zext i64 %i.akl to i128
  %i.akt = zext i64 %i.akr to i128
  %i.aku = mul nuw i128 %i.akt, %i.aks            ; 2 uses
  %i.akv = trunc i128 %i.aku to i64               ; 2 uses
  %i.akw = lshr i128 %i.aku, 64
  %i.akx = trunc nuw i128 %i.akw to i64           ; 3 uses
  %i.aky = and i64 %i.akx, 511
  %i.akz = icmp eq i64 %i.aky, 511
  br i1 %i.akz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ala = getelementptr i8, ptr %i.akp, i64 5480
  %i.alb = load i64, ptr %i.ala, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.akl, i64 %i.alb) ; 2 uses
  %i.alc = add i64 %4, %i.akv                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.alc
  %i.ald = zext i1 %5 to i64
  %spec.select.i34.i.i = add nuw i64 %i.ald, %i.akx
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i34.i.i, %bb.eh ], [ %i.akx, %bb.eg ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.alc, %bb.eh ], [ %i.akv, %bb.eg ]
  %i.ale = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.alf = add nuw nsw i64 %i.ale, 9              ; 2 uses
  %i.alg = lshr i64 %.sroa.7.1.i.i.i, %i.alf      ; 6 uses
  %reass.sub1367 = sub nsw i64 %i.akj, %i.akk
  %.neg1366 = add nsw i64 %reass.sub1367, %i.ale  ; 4 uses
  %i.alh = add nsw i64 %.neg1366, 1086
  %i.ali = icmp slt i64 %.neg1366, -1085
  br i1 %i.ali, label %bb.ej, label %bb.em, !prof !108

bb.ej:                                            ; preds = %bb.ei
  %i.alj = icmp samesign ult i64 %.neg1366, -1148
  br i1 %i.alj, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.alk = select i1 %i.afv, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.el:                                            ; preds = %bb.ej
  %i.all = sub nuw nsw i64 -1085, %.neg1366
  %i.alm = lshr i64 %i.alg, %i.all                ; 2 uses
  %i.aln = and i64 %i.alm, 1
  %i.alo = add nuw nsw i64 %i.aln, %i.alm         ; 2 uses
  %i.alp = lshr i64 %i.alo, 1
  %i.alq = icmp samesign ugt i64 %i.alo, 9007199254740991
  %i.alr = and i64 %i.alp, 13510798882111487
  %i.als = select i1 %i.alq, i64 4503599627370496, i64 0
  %i.alt = select i1 %i.afv, i64 -9223372036854775808, i64 0
  %i.alu = or disjoint i64 %i.als, %i.alt
  %i.alv = or disjoint i64 %i.alu, %i.alr
  %i.alw = bitcast i64 %i.alv to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.em:                                            ; preds = %bb.ei
  %i.alx = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.aly = add nsw i64 %.2601927, 4
  %i.alz = icmp ult i64 %i.aly, 28
  %or.cond7.i.i.i = and i1 %i.alz, %i.alx
  %i.ama = and i64 %i.alg, 3
  %i.amb = icmp eq i64 %i.ama, 1
  %i.amc = select i1 %or.cond7.i.i.i, i1 %i.amb, i1 false
  br i1 %i.amc, label %bb.en, label %bb.eo, !prof !108

bb.en:                                            ; preds = %bb.em
  %i.amd = shl i64 %i.alg, %i.alf
  %i.ame = icmp eq i64 %i.amd, %.sroa.7.1.i.i.i
  %i.amf = and i64 %i.alg, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.ame, i64 %i.amf, i64 %i.alg
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.080.i.i.i = phi i64 [ %i.alg, %bb.em ], [ %spec.select90.i.i.i, %bb.en ] ; 2 uses
  %i.amg = and i64 %.080.i.i.i, 1
  %i.amh = add nuw nsw i64 %i.amg, %.080.i.i.i    ; 2 uses
  %i.ami = icmp samesign ugt i64 %i.amh, 18014398509481983 ; 2 uses
  %i.amj = zext i1 %i.ami to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.alh, %i.amj ; 2 uses
  %i.amk = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.amk, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.ep, !prof !108

bb.ep:                                            ; preds = %bb.eo
  %i.aml = lshr i64 %i.amh, 1
  %i.amm = and i64 %i.aml, 13510798882111487
  %i.amn = select i1 %i.ami, i64 0, i64 %i.amm
  %i.amo = shl nuw nsw i64 %spec.select92.i.i.i, 52
  %i.amp = select i1 %i.afv, i64 -9223372036854775808, i64 0
  %i.amq = or disjoint i64 %i.amn, %i.amp
  %i.amr = or i64 %i.amq, %i.amo
  %i.ams = bitcast i64 %i.amr to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.eo
  %i.amt = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.yl, ptr noundef %i.d)
  br i1 %i.amt, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, label %bb.eq

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.pre1404 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread: ; preds = %bb.ed, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, %bb.ep, %bb.el, %bb.ek, %bb.ef
  %i.amu = phi double [ %.pre1404, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge ], [ %i.ams, %bb.ep ], [ %i.alw, %bb.el ], [ %i.alk, %bb.ek ], [ %spec.select1551, %bb.ed ], [ %i.akh, %bb.ef ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.amu, ptr %i.amv, align 8
  %i.amw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.sroa.0.21 = phi ptr [ %i.amw, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ %.sroa.0.6, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  %.0.i24.i.i = phi i32 [ 0, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i: ; preds = %bb.eq, %.noexc26.i.i
  %.sroa.0.22 = phi ptr [ %i.ajn, %.noexc26.i.i ], [ %.sroa.0.21, %bb.eq ]
  %.1.i25.i.i = phi i32 [ %i.ajk, %.noexc26.i.i ], [ %.0.i24.i.i, %bb.eq ] ; 2 uses
  %.not60.i.i.i = icmp eq i32 %.1.i25.i.i, 0      ; 2 uses
  %..i.i.i = select i1 %.not59.i.i.i, i32 0, i32 9
  %spec.select1212 = select i1 %.not60.i.i.i, i32 %..i.i.i, i32 %.1.i25.i.i
  %.not165.i = and i1 %.not59.i.i.i, %.not60.i.i.i
  br i1 %.not165.i, label %select.unfold941, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.er:                                            ; preds = %bb.dw
  %i.amx = select i1 %i.afv, i64 19, i64 20       ; 2 uses
  %i.amy = icmp ugt i64 %.044.i.i.i, %i.amx
  br i1 %i.amy, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread936, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.amz = icmp eq i64 %.044.i.i.i, %i.amx
  br i1 %i.amz, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  br i1 %i.afv, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.ana = icmp ugt i64 %.2594, -9223372036854775808
  br i1 %i.ana, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread936, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.anb = sub i64 0, %.2594
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.anb, ptr %i.anc, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.ane = load i8, ptr %.1585, align 1, !tbaa !36
  %i.anf = zext i8 %i.ane to i64
  %i.ang = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anf
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i.i = icmp eq i8 %i.anh, 0
  br i1 %.not58.i.i.i, label %select.unfold941, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ew:                                            ; preds = %bb.et
  %i.ani = icmp ne i8 %i.ym, 49
  %i.anj = icmp sgt i64 %.2594, -1
  %or.cond5.i.i.i = select i1 %i.ani, i1 true, i1 %i.anj
  br i1 %or.cond5.i.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread930

bb.ex:                                            ; preds = %bb.es
  %i.ank = icmp slt i64 %.2594, 0
  br i1 %i.ank, label %.thread930, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.anl = sub nsw i64 0, %.2594
  %i.anm = select i1 %i.afv, i64 %i.anl, i64 %.2594
  br label %.thread930

.thread930:                                       ; preds = %bb.ex, %bb.ew, %bb.ey
  %.sink1554 = phi i64 [ 7782220156096217088, %bb.ey ], [ 8430738502437568512, %bb.ew ], [ 8430738502437568512, %bb.ex ]
  %.sink1552 = phi i64 [ %i.anm, %bb.ey ], [ %.2594, %bb.ew ], [ %.2594, %bb.ex ]
  store i64 %.sink1554, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1552, ptr %i.ann, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.ano = load i8, ptr %.1585, align 1, !tbaa !36
  %i.anp = zext i8 %i.ano to i64
  %i.anq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i.i = icmp eq i8 %i.anr, 0
  br i1 %.not57.i.i.i, label %select.unfold941, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread936: ; preds = %bb.er, %bb.eu
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ant = load i8, ptr %i.ans, align 8, !tbaa !125, !range !50, !noundef !51
  %i.anu = trunc nuw i8 %i.ant to i1
  br i1 %i.anu, label %.preheader1589, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1589:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread936, %.preheader1589
  %.122.i.i.i = phi ptr [ %i.any, %.preheader1589 ], [ %i.afx, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread936 ] ; 3 uses
  %i.anv = load i8, ptr %.122.i.i.i, align 1, !tbaa !36 ; 2 uses
  %i.anw = add i8 %i.anv, -48
  %i.anx = icmp ult i8 %i.anw, 10
  %i.any = getelementptr inbounds nuw i8, ptr %.122.i.i.i, i64 1
  br i1 %i.anx, label %.preheader1589, label %bb.ez, !llvm.loop !8

bb.ez:                                            ; preds = %.preheader1589
  %i.anz = zext i8 %i.anv to i64
  %i.aoa = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anz
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i282.i = icmp eq i8 %i.aob, 0
  br i1 %.not.i.i282.i, label %.split1490, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1490:                                       ; preds = %bb.ez
  %i.aoc = ptrtoint ptr %.122.i.i.i to i64
  %i.aod = ptrtoint ptr %i.yl to i64
  %i.aoe = sub i64 %i.aoc, %i.aod                 ; 3 uses
  %i.aof = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !48
  %i.aoi = ptrtoint ptr %.sroa.172.6 to i64
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = sub i64 %i.aoi, %i.aoj
  %i.aol = or i64 %i.aok, 6485183463413514240
  store i64 %i.aol, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.aon = getelementptr inbounds nuw i8, ptr %i.xy, i64 5 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7556.ptr = getelementptr inbounds nuw i8, ptr %.0549.lcssa, i64 %.7556.add
  %i.bhi = load i8, ptr %.7556.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhj = add i8 %i.bhi, -48                     ; 2 uses
  %i.bhk = icmp ult i8 %i.bhj, 10
  br i1 %i.bhk, label %.lr.ph1348, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread, !llvm.loop !4

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i347.i
  %.not1230 = icmp eq i64 %.5554.add, 1
  br i1 %.not1230, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread: ; preds = %.lr.ph1348, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i
  %.5562.lcssa1496 = phi i64 [ %.45611070, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i ], [ %i.bhh, %.lr.ph1348 ]
  %.7556.idx.lcssa13441495 = phi i64 [ %.5554.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i ], [ %.7556.add, %.lr.ph1348 ] ; 2 uses
  %i.bhl = phi i8 [ %i.bhb, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i ], [ %i.bhi, %.lr.ph1348 ]
  %.7556.ptr.le = getelementptr inbounds nuw i8, ptr %.0549.lcssa, i64 %.7556.idx.lcssa13441495 ; 2 uses
  %i.bhm = ptrtoint ptr %.7556.ptr.le to i64
  %gepdiff1368 = sub nsw i64 1, %.7556.idx.lcssa13441495
  %i.bhn = sub i64 %i.bhm, %i.bfx
  %sext.i.i352.i = shl i64 %i.bhn, 32
  %i.bho = ashr exact i64 %sext.i.i352.i, 32
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread, %bb.gx
  %i.bhp = phi i8 [ %i.bhl, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread ], [ %.lcssa1257, %bb.gx ] ; 2 uses
  %.0564 = phi i64 [ %gepdiff1368, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread ], [ 0, %bb.gx ] ; 2 uses
  %.2559 = phi i64 [ %.5562.lcssa1496, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread ], [ %.0557.lcssa, %bb.gx ] ; 14 uses
  %.1550 = phi ptr [ %.7556.ptr.le, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread ], [ %.0549.lcssa, %bb.gx ] ; 4 uses
  %.044.i.i291.i = phi i64 [ %i.bho, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i349.i.thread ], [ %i.bfy, %bb.gx ] ; 4 uses
  switch i8 %i.bhp, label %bb.hg [
    i8 101, label %bb.hb
    i8 69, label %bb.hb
  ]

bb.hb:                                            ; preds = %bb.ha, %bb.ha
  %i.bhq = getelementptr inbounds nuw i8, ptr %.1550, i64 1 ; 2 uses
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !36 ; 3 uses
  %i.bhs = icmp eq i8 %i.bhr, 45
  switch i8 %i.bhr, label %bb.hd [
    i8 45, label %bb.hc
    i8 43, label %bb.hc
  ]

bb.hc:                                            ; preds = %bb.hb, %bb.hb
  %i.bht = getelementptr inbounds nuw i8, ptr %.1550, i64 2 ; 2 uses
  %.pre1406 = load i8, ptr %i.bht, align 1, !tbaa !36
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.bhu = phi i8 [ %i.bhr, %bb.hb ], [ %.pre1406, %bb.hc ]
  %.2551 = phi ptr [ %i.bhq, %bb.hb ], [ %i.bht, %bb.hc ] ; 3 uses
  %i.bhv = add i8 %i.bhu, -48                     ; 2 uses
  %i.bhw = icmp ult i8 %i.bhv, 10
  br i1 %i.bhw, label %.lr.ph1355, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1355:                                       ; preds = %bb.hd, %.lr.ph1355
  %i.bhx = phi i8 [ %i.bic, %.lr.ph1355 ], [ %i.bhv, %bb.hd ]
  %.01354 = phi i64 [ %i.bia, %.lr.ph1355 ], [ 0, %bb.hd ]
  %.3552.idx1353 = phi i64 [ %.3552.add, %.lr.ph1355 ], [ 0, %bb.hd ] ; 2 uses
  %i.bhy = mul nsw i64 %.01354, 10
  %i.bhz = zext nneg i8 %i.bhx to i64
  %i.bia = add nsw i64 %i.bhy, %i.bhz             ; 3 uses
  %.3552.add = add nuw nsw i64 %.3552.idx1353, 1  ; 3 uses
  %.3552.ptr = getelementptr inbounds nuw i8, ptr %.2551, i64 %.3552.add
  %i.bib = load i8, ptr %.3552.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bic = add i8 %i.bib, -48                     ; 2 uses
  %i.bid = icmp ult i8 %i.bic, 10
  br i1 %i.bid, label %.lr.ph1355, label %bb.he, !llvm.loop !5

bb.he:                                            ; preds = %.lr.ph1355
  %.3552.ptr.le = getelementptr inbounds nuw i8, ptr %.2551, i64 %.3552.add
  %i.bie = icmp samesign ugt i64 %.3552.idx1353, 17
  br i1 %i.bie, label %.preheader1245, label %.thread1080, !prof !108

.preheader1245:                                   ; preds = %bb.he, %.preheader1245
  %.0.i22.i345.i = phi ptr [ %i.bih, %.preheader1245 ], [ %.2551, %bb.he ] ; 3 uses
  %i.bif = load i8, ptr %.0.i22.i345.i, align 1, !tbaa !36
  %i.big = icmp eq i8 %i.bif, 48
  %i.bih = getelementptr inbounds nuw i8, ptr %.0.i22.i345.i, i64 1
  br i1 %i.big, label %.preheader1245, label %bb.hf, !llvm.loop !6

bb.hf:                                            ; preds = %.preheader1245
  %i.bii = getelementptr inbounds nuw i8, ptr %.0.i22.i345.i, i64 18
  %i.bij = icmp ugt ptr %.3552.ptr.le, %i.bii
  %spec.select1213 = select i1 %i.bij, i64 999999999999999999, i64 %i.bia
  br label %.thread1080

.thread1080:                                      ; preds = %bb.hf, %bb.he
  %.2 = phi i64 [ %i.bia, %bb.he ], [ %spec.select1213, %bb.hf ] ; 2 uses
  %i.bik = sub nsw i64 0, %.2
  %i.bil = select i1 %i.bhs, i64 %i.bik, i64 %.2
  %i.bim = add nsw i64 %i.bil, %.0564
  br label %bb.hh

bb.hg:                                            ; preds = %bb.ha
  br i1 %i.bgc, label %bb.hh, label %bb.ib

bb.hh:                                            ; preds = %.thread1080, %bb.hg
  %i.bin = phi i8 [ %i.bib, %.thread1080 ], [ %i.bhp, %bb.hg ]
  %.25661084 = phi i64 [ %i.bim, %.thread1080 ], [ %.0564, %bb.hg ] ; 9 uses
  %i.bio = zext i8 %i.bin to i64
  %i.bip = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bio
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i312.i = icmp eq i8 %i.biq, 0         ; 3 uses
  %i.bir = icmp ugt i64 %.044.i.i291.i, 19
  br i1 %i.bir, label %.preheader, label %.critedge.i.i313.i

.preheader:                                       ; preds = %bb.hh, %.critedge.i31.i341.i
  %i.bis = phi i8 [ %.pre1407, %.critedge.i31.i341.i ], [ %i.bfl, %bb.hh ]
  %.0.i30.i340.i = phi ptr [ %i.bit, %.critedge.i31.i341.i ], [ %i.bfk, %bb.hh ] ; 2 uses
  switch i8 %i.bis, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i342.i [
    i8 48, label %.critedge.i31.i341.i
    i8 46, label %.critedge.i31.i341.i
  ]

.critedge.i31.i341.i:                             ; preds = %.preheader, %.preheader
  %i.bit = getelementptr inbounds nuw i8, ptr %.0.i30.i340.i, i64 1 ; 2 uses
  %.pre1407 = load i8, ptr %i.bit, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !7

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i342.i: ; preds = %.preheader
  %i.biu = ptrtoint ptr %.0.i30.i340.i to i64
  %.neg.i.i343.i = add i64 %.044.i.i291.i, %i.bfx
  %i.biv = sub i64 %.neg.i.i343.i, %i.biu
  %i.biw = icmp ugt i64 %i.biv, 19
  br i1 %i.biw, label %.noexc26.i344.i, label %.critedge.i.i313.i, !prof !108

.noexc26.i344.i:                                  ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i342.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bix = call fastcc noundef i32 @_ZN8simdjson7haswell13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.axy, ptr noundef %i.a)
  %i.biy = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.biz = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.biy, ptr %i.biz, align 8
  %i.bja = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i328.i

.critedge.i.i313.i:                               ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i342.i, %bb.hh
  %i.bjb = add i64 %.25661084, -309
  %or.cond.i23.i314.i = icmp ult i64 %i.bjb, -651
  br i1 %or.cond.i23.i314.i, label %bb.hi, label %bb.hj, !prof !124

bb.hi:                                            ; preds = %.critedge.i.i313.i
  %i.bjc = icmp slt i64 %.25661084, -342
  %i.bjd = icmp eq i64 %.2559, 0
  %or.cond3.i.i339.i = or i1 %i.bjd, %i.bjc
  br i1 %or.cond3.i.i339.i, label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i328.i.thread, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i328.i.thread: ; preds = %bb.hi
  %i.bje = select i1 %i.bfi, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bje, ptr %i.bjf, align 8
  %i.bjg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i312.i, label %select.unfold1098, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hj:                                            ; preds = %.critedge.i.i313.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bjh = add nsw i64 %.25661084, 22
  %or.cond.i32.i315.i = icmp ult i64 %i.bjh, 45
  %i.bji = icmp ult i64 %.2559, 9007199254740992
  %or.cond3.i33.i316.i = and i1 %i.bji, %or.cond.i32.i315.i
  br i1 %or.cond3.i33.i316.i, label %bb.hk, label %bb.ho

bb.hk:                                            ; preds = %bb.hj
  %i.bjj = uitofp nneg i64 %.2559 to double       ; 2 uses
  %i.bjk = icmp slt i64 %.25661084, 0
  br i1 %i.bjk, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.bjl = sub nsw i64 0, %.25661084
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bjl
  %i.bjn = load double, ptr %i.bjm, align 8, !tbaa !123
  %i.bjo = fdiv double %i.bjj, %i.bjn
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  %i.bjp = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.25661084
  %i.bjq = load double, ptr %i.bjp, align 8, !tbaa !123
  %i.bjr = fmul double %i.bjq, %i.bjj
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %storemerge.i.i338.i = phi double [ %i.bjr, %bb.hm ], [ %i.bjo, %bb.hl ] ; 2 uses
  %i.bjs = fneg double %storemerge.i.i338.i
  %spec.select1583 = select i1 %i.bfi, double %i.bjs, double %storemerge.i.i338.i
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread

bb.ho:                                            ; preds = %bb.hj
  %i.bjt = icmp eq i64 %.2559, 0
  br i1 %i.bjt, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bju = select i1 %i.bfi, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread

bb.hq:                                            ; preds = %bb.ho
  %i.bjv = mul nsw i64 %.25661084, 217706
  %i.bjw = ashr i64 %i.bjv, 16
  %i.bjx = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2559, i1 true) ; 2 uses
  %i.bjy = shl i64 %.2559, %i.bjx                 ; 2 uses
  %i.bjz = trunc nsw i64 %.25661084 to i32
  %i.bka = shl nsw i32 %i.bjz, 1
  %i.bkb = sext i32 %i.bka to i64
  %i.bkc = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bkb ; 2 uses
  %i.bkd = getelementptr i8, ptr %i.bkc, i64 5472
  %i.bke = load i64, ptr %i.bkd, align 16, !tbaa !40
  %i.bkf = zext i64 %i.bjy to i128
  %i.bkg = zext i64 %i.bke to i128
  %i.bkh = mul nuw i128 %i.bkg, %i.bkf            ; 2 uses
  %i.bki = trunc i128 %i.bkh to i64               ; 2 uses
  %i.bkj = lshr i128 %i.bkh, 64
  %i.bkk = trunc nuw i128 %i.bkj to i64           ; 3 uses
  %i.bkl = and i64 %i.bkk, 511
  %i.bkm = icmp eq i64 %i.bkl, 511
  br i1 %i.bkm, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.bkn = getelementptr i8, ptr %i.bkc, i64 5480
  %i.bko = load i64, ptr %i.bkn, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bjy, i64 %i.bko) ; 2 uses
  %i.bkp = add i64 %6, %i.bki                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bkp
  %i.bkq = zext i1 %7 to i64
  %spec.select.i34.i337.i = add nuw i64 %i.bkq, %i.bkk
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.sroa.7.1.i.i319.i = phi i64 [ %spec.select.i34.i337.i, %bb.hr ], [ %i.bkk, %bb.hq ] ; 3 uses
  %.sroa.037.0.i.i320.i = phi i64 [ %i.bkp, %bb.hr ], [ %i.bki, %bb.hq ]
  %i.bkr = lshr i64 %.sroa.7.1.i.i319.i, 63       ; 2 uses
  %i.bks = add nuw nsw i64 %i.bkr, 9              ; 2 uses
  %i.bkt = lshr i64 %.sroa.7.1.i.i319.i, %i.bks   ; 6 uses
  %reass.sub1370 = sub nsw i64 %i.bjw, %i.bjx
  %.neg1369 = add nsw i64 %reass.sub1370, %i.bkr  ; 4 uses
  %i.bku = add nsw i64 %.neg1369, 1086
  %i.bkv = icmp slt i64 %.neg1369, -1085
  br i1 %i.bkv, label %bb.ht, label %bb.hw, !prof !108

bb.ht:                                            ; preds = %bb.hs
  %i.bkw = icmp samesign ult i64 %.neg1369, -1148
  br i1 %i.bkw, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bkx = select i1 %i.bfi, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread

bb.hv:                                            ; preds = %bb.ht
  %i.bky = sub nuw nsw i64 -1085, %.neg1369
  %i.bkz = lshr i64 %i.bkt, %i.bky                ; 2 uses
  %i.bla = and i64 %i.bkz, 1
  %i.blb = add nuw nsw i64 %i.bla, %i.bkz         ; 2 uses
  %i.blc = lshr i64 %i.blb, 1
  %i.bld = icmp samesign ugt i64 %i.blb, 9007199254740991
  %i.ble = and i64 %i.blc, 13510798882111487
  %i.blf = select i1 %i.bld, i64 4503599627370496, i64 0
  %i.blg = select i1 %i.bfi, i64 -9223372036854775808, i64 0
  %i.blh = or disjoint i64 %i.blf, %i.blg
  %i.bli = or disjoint i64 %i.blh, %i.ble
  %i.blj = bitcast i64 %i.bli to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread

bb.hw:                                            ; preds = %bb.hs
  %i.blk = icmp ult i64 %.sroa.037.0.i.i320.i, 2
  %i.bll = add nsw i64 %.25661084, 4
  %i.blm = icmp ult i64 %i.bll, 28
  %or.cond7.i.i321.i = and i1 %i.blm, %i.blk
  %i.bln = and i64 %i.bkt, 3
  %i.blo = icmp eq i64 %i.bln, 1
  %i.blp = select i1 %or.cond7.i.i321.i, i1 %i.blo, i1 false
  br i1 %i.blp, label %bb.hx, label %bb.hy, !prof !108

bb.hx:                                            ; preds = %bb.hw
  %i.blq = shl i64 %i.bkt, %i.bks
  %i.blr = icmp eq i64 %i.blq, %.sroa.7.1.i.i319.i
  %i.bls = and i64 %i.bkt, 72057594037927932
  %spec.select90.i.i334.i = select i1 %i.blr, i64 %i.bls, i64 %i.bkt
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.080.i.i322.i = phi i64 [ %i.bkt, %bb.hw ], [ %spec.select90.i.i334.i, %bb.hx ] ; 2 uses
  %i.blt = and i64 %.080.i.i322.i, 1
  %i.blu = add nuw nsw i64 %i.blt, %.080.i.i322.i ; 2 uses
  %i.blv = icmp samesign ugt i64 %i.blu, 18014398509481983 ; 2 uses
  %i.blw = zext i1 %i.blv to i64
  %spec.select92.i.i324.i = add nuw nsw i64 %i.bku, %i.blw ; 2 uses
  %i.blx = icmp samesign ugt i64 %spec.select92.i.i324.i, 2046
  br i1 %i.blx, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i, label %bb.hz, !prof !108

bb.hz:                                            ; preds = %bb.hy
  %i.bly = lshr i64 %i.blu, 1
  %i.blz = and i64 %i.bly, 13510798882111487
  %i.bma = select i1 %i.blv, i64 0, i64 %i.blz
  %i.bmb = shl nuw nsw i64 %spec.select92.i.i324.i, 52
  %i.bmc = select i1 %i.bfi, i64 -9223372036854775808, i64 0
  %i.bmd = or disjoint i64 %i.bma, %i.bmc
  %i.bme = or i64 %i.bmd, %i.bmb
  %i.bmf = bitcast i64 %i.bme to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i: ; preds = %bb.hy
  %i.bmg = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.axy, ptr noundef %i.b)
  br i1 %i.bmg, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread_crit_edge, label %bb.ia

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread_crit_edge: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i
  %.pre1408 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread: ; preds = %bb.hn, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread_crit_edge, %bb.hz, %bb.hv, %bb.hu, %bb.hp
  %i.bmh = phi double [ %.pre1408, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread_crit_edge ], [ %i.bmf, %bb.hz ], [ %i.blj, %bb.hv ], [ %i.bkx, %bb.hu ], [ %spec.select1583, %bb.hn ], [ %i.bju, %bb.hp ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmi = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bmh, ptr %i.bmi, align 8
  %i.bmj = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.ia

bb.ia:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i
  %.sroa.0.31 = phi ptr [ %i.bmj, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread ], [ %.sroa.0.2, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i ]
  %.0.i24.i327.i = phi i32 [ 0, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i.thread ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i325.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i328.i

_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i328.i: ; preds = %bb.ia, %.noexc26.i344.i
  %.sroa.0.32 = phi ptr [ %i.bja, %.noexc26.i344.i ], [ %.sroa.0.31, %bb.ia ]
  %.1.i25.i329.i = phi i32 [ %i.bix, %.noexc26.i344.i ], [ %.0.i24.i327.i, %bb.ia ] ; 2 uses
  %.not60.i.i330.i = icmp eq i32 %.1.i25.i329.i, 0 ; 2 uses
  %..i.i332.i = select i1 %.not59.i.i312.i, i32 0, i32 9
  %spec.select1214 = select i1 %.not60.i.i330.i, i32 %..i.i332.i, i32 %.1.i25.i329.i
  %.not166.i = and i1 %.not59.i.i312.i, %.not60.i.i330.i
  br i1 %.not166.i, label %select.unfold1098, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ib:                                            ; preds = %bb.hg
  %i.bmk = select i1 %i.bfi, i64 19, i64 20       ; 2 uses
  %i.bml = icmp ugt i64 %.044.i.i291.i, %i.bmk
  br i1 %i.bml, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i298.i.thread1093, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bmm = icmp eq i64 %.044.i.i291.i, %i.bmk
  br i1 %i.bmm, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %bb.ic
  br i1 %i.bfi, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bmn = icmp ugt i64 %.2559, -9223372036854775808
  br i1 %i.bmn, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i298.i.thread1093, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bmo = sub i64 0, %.2559
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmp = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bmo, ptr %i.bmp, align 8
  %i.bmq = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmr = load i8, ptr %.1550, align 1, !tbaa !36
  %i.bms = zext i8 %i.bmr to i64
  %i.bmt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bms
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i310.i = icmp eq i8 %i.bmu, 0
  br i1 %.not58.i.i310.i, label %select.unfold1098, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ig:                                            ; preds = %bb.id
  %i.bmv = icmp ne i8 %i.axz, 49
  %i.bmw = icmp sgt i64 %.2559, -1
  %or.cond5.i.i309.i = select i1 %i.bmv, i1 true, i1 %i.bmw
  br i1 %or.cond5.i.i309.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1087

bb.ih:                                            ; preds = %bb.ic
  %i.bmx = icmp slt i64 %.2559, 0
  br i1 %i.bmx, label %.thread1087, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bmy = sub nsw i64 0, %.2559
  %i.bmz = select i1 %i.bfi, i64 %i.bmy, i64 %.2559
  br label %.thread1087

.thread1087:                                      ; preds = %bb.ih, %bb.ig, %bb.ii
  %.sink1586 = phi i64 [ 7782220156096217088, %bb.ii ], [ 8430738502437568512, %bb.ig ], [ 8430738502437568512, %bb.ih ]
  %.sink1584 = phi i64 [ %i.bmz, %bb.ii ], [ %.2559, %bb.ig ], [ %.2559, %bb.ih ]
  store i64 %.sink1586, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bna = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1584, ptr %i.bna, align 8
  %.sroa.0.30 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bnb = load i8, ptr %.1550, align 1, !tbaa !36
  %i.bnc = zext i8 %i.bnb to i64
  %i.bnd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnc
  %i.bne = load i8, ptr %i.bnd, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i307.i = icmp eq i8 %i.bne, 0
  br i1 %.not57.i.i307.i, label %select.unfold1098, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i298.i.thread1093: ; preds = %bb.ib, %bb.ie
  %i.bnf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bng = load i8, ptr %i.bnf, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bnh = trunc nuw i8 %i.bng to i1
  br i1 %i.bnh, label %.preheader1587, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1587:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i298.i.thread1093, %.preheader1587
  %.122.i.i303.i = phi ptr [ %i.bnl, %.preheader1587 ], [ %i.bfk, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i298.i.thread1093 ] ; 3 uses
  %i.bni = load i8, ptr %.122.i.i303.i, align 1, !tbaa !36 ; 2 uses
  %i.bnj = add i8 %i.bni, -48
  %i.bnk = icmp ult i8 %i.bnj, 10
  %i.bnl = getelementptr inbounds nuw i8, ptr %.122.i.i303.i, i64 1
  br i1 %i.bnk, label %.preheader1587, label %bb.ij, !llvm.loop !8

bb.ij:                                            ; preds = %.preheader1587
  %i.bnm = zext i8 %i.bni to i64
  %i.bnn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnm
  %i.bno = load i8, ptr %i.bnn, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i304.i = icmp eq i8 %i.bno, 0
  br i1 %.not.i.i304.i, label %.split1504, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1504:                                       ; preds = %bb.ij
  %i.bnp = ptrtoint ptr %.122.i.i303.i to i64
  %i.bnq = ptrtoint ptr %i.axy to i64
  %i.bnr = sub i64 %i.bnp, %i.bnq                 ; 3 uses
  %i.bns = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 8
  %i.bnu = load ptr, ptr %i.bnt, align 8, !tbaa !48
  %i.bnv = ptrtoint ptr %.sroa.172.2 to i64
  %i.bnw = ptrtoint ptr %i.bnu to i64
  %i.bnx = sub i64 %i.bnv, %i.bnw
  %i.bny = or i64 %i.bnx, 6485183463413514240
  store i64 %i.bny, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bnz = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.boa = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.5840.ptr = getelementptr inbounds nuw i8, ptr %.0835.lcssa, i64 %.5840.add
  %i.kv = load i8, ptr %.5840.ptr, align 1, !tbaa !36 ; 2 uses
  %i.kw = add i8 %i.kv, -48                       ; 2 uses
  %i.kx = icmp ult i8 %i.kw, 10
  br i1 %i.kx, label %.lr.ph1485, label %.noexc85.thread, !llvm.loop !10

.noexc85:                                         ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3838.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc85.thread

.noexc85.thread:                                  ; preds = %.lr.ph1485, %.noexc85
  %.5848.lcssa1667 = phi i64 [ %.4847926, %.noexc85 ], [ %i.ku, %.lr.ph1485 ]
  %.5840.idx.lcssa14811666 = phi i64 [ %.3838.add, %.noexc85 ], [ %.5840.add, %.lr.ph1485 ] ; 2 uses
  %i.ky = phi i8 [ %i.ko, %.noexc85 ], [ %i.kv, %.lr.ph1485 ]
  %.5840.ptr.le = getelementptr inbounds nuw i8, ptr %.0835.lcssa, i64 %.5840.idx.lcssa14811666 ; 2 uses
  %i.kz = ptrtoint ptr %.5840.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5840.idx.lcssa14811666
  %i.la = sub i64 %i.kz, %i.jk
  %sext.i = shl i64 %i.la, 32
  %i.lb = ashr exact i64 %sext.i, 32
  br label %bb.al

bb.al:                                            ; preds = %.noexc85.thread, %bb.aj
  %i.lc = phi i8 [ %i.ky, %.noexc85.thread ], [ %.lcssa1476, %bb.aj ] ; 2 uses
  %.0850 = phi i64 [ %gepdiff, %.noexc85.thread ], [ 0, %bb.aj ] ; 2 uses
  %.1844 = phi i64 [ %.5848.lcssa1667, %.noexc85.thread ], [ %.0843.lcssa, %bb.aj ] ; 14 uses
  %.1836 = phi ptr [ %.5840.ptr.le, %.noexc85.thread ], [ %.0835.lcssa, %bb.aj ] ; 4 uses
  %.044.i = phi i64 [ %i.lb, %.noexc85.thread ], [ %i.jl, %bb.aj ] ; 4 uses
  switch i8 %i.lc, label %bb.ar [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.ld = getelementptr inbounds nuw i8, ptr %.1836, i64 1 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !36  ; 3 uses
  %i.lf = icmp eq i8 %i.le, 45
  switch i8 %i.le, label %bb.ao [
    i8 45, label %bb.an
    i8 43, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.lg = getelementptr inbounds nuw i8, ptr %.1836, i64 2 ; 2 uses
  %.pre1601 = load i8, ptr %i.lg, align 1, !tbaa !36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.lh = phi i8 [ %i.le, %bb.am ], [ %.pre1601, %bb.an ]
  %.6841 = phi ptr [ %i.ld, %bb.am ], [ %i.lg, %bb.an ] ; 3 uses
  %i.li = add i8 %i.lh, -48                       ; 2 uses
  %i.lj = icmp ult i8 %i.li, 10
  br i1 %i.lj, label %.lr.ph1492, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1492:                                       ; preds = %bb.ao, %.lr.ph1492
  %i.lk = phi i8 [ %i.lp, %.lr.ph1492 ], [ %i.li, %bb.ao ]
  %.08321491 = phi i64 [ %i.ln, %.lr.ph1492 ], [ 0, %bb.ao ]
  %.7842.idx1490 = phi i64 [ %.7842.add, %.lr.ph1492 ], [ 0, %bb.ao ] ; 2 uses
  %i.ll = mul nsw i64 %.08321491, 10
  %i.lm = zext nneg i8 %i.lk to i64
  %i.ln = add nsw i64 %i.ll, %i.lm                ; 3 uses
  %.7842.add = add nuw nsw i64 %.7842.idx1490, 1  ; 3 uses
  %.7842.ptr = getelementptr inbounds nuw i8, ptr %.6841, i64 %.7842.add
  %i.lo = load i8, ptr %.7842.ptr, align 1, !tbaa !36 ; 2 uses
  %i.lp = add i8 %i.lo, -48                       ; 2 uses
  %i.lq = icmp ult i8 %i.lp, 10
  br i1 %i.lq, label %.lr.ph1492, label %bb.ap, !llvm.loop !11

bb.ap:                                            ; preds = %.lr.ph1492
  %.7842.ptr.le = getelementptr inbounds nuw i8, ptr %.6841, i64 %.7842.add
  %i.lr = icmp samesign ugt i64 %.7842.idx1490, 17
  br i1 %i.lr, label %.preheader1456, label %.thread936, !prof !108

.preheader1456:                                   ; preds = %bb.ap, %.preheader1456
  %.0.i90 = phi ptr [ %i.lu, %.preheader1456 ], [ %.6841, %bb.ap ] ; 3 uses
  %i.ls = load i8, ptr %.0.i90, align 1, !tbaa !36
  %i.lt = icmp eq i8 %i.ls, 48
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i90, i64 1
  br i1 %i.lt, label %.preheader1456, label %bb.aq, !llvm.loop !12

bb.aq:                                            ; preds = %.preheader1456
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.i90, i64 18
  %i.lw = icmp ugt ptr %.7842.ptr.le, %i.lv
  %spec.select = select i1 %i.lw, i64 999999999999999999, i64 %i.ln
  br label %.thread936

.thread936:                                       ; preds = %bb.aq, %bb.ap
  %.1833 = phi i64 [ %i.ln, %bb.ap ], [ %spec.select, %bb.aq ] ; 2 uses
  %i.lx = sub nsw i64 0, %.1833
  %i.ly = select i1 %i.lf, i64 %i.lx, i64 %.1833
  %i.lz = add nsw i64 %i.ly, %.0850
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  br i1 %i.jp, label %bb.as, label %bb.bm

bb.as:                                            ; preds = %.thread936, %bb.ar
  %i.ma = phi i8 [ %i.lo, %.thread936 ], [ %i.lc, %bb.ar ]
  %.1851940 = phi i64 [ %i.lz, %.thread936 ], [ %.0850, %bb.ar ] ; 9 uses
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i = icmp eq i8 %i.md, 0                 ; 3 uses
  %i.me = icmp ugt i64 %.044.i, 19
  br i1 %i.me, label %.preheader1455, label %.critedge.i

.preheader1455:                                   ; preds = %bb.as, %.critedge.i98
  %i.mf = phi i8 [ %.pre1602, %.critedge.i98 ], [ %i.iy, %bb.as ]
  %.0.i97 = phi ptr [ %i.mg, %.critedge.i98 ], [ %i.ix, %bb.as ] ; 2 uses
  switch i8 %i.mf, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit [
    i8 48, label %.critedge.i98
    i8 46, label %.critedge.i98
  ]

.critedge.i98:                                    ; preds = %.preheader1455, %.preheader1455
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i97, i64 1 ; 2 uses
  %.pre1602 = load i8, ptr %i.mg, align 1, !tbaa !36
  br label %.preheader1455, !llvm.loop !13

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit: ; preds = %.preheader1455
  %i.mh = ptrtoint ptr %.0.i97 to i64
  %.neg.i = add i64 %.044.i, %i.jk
  %i.mi = sub i64 %.neg.i, %i.mh
  %i.mj = icmp ugt i64 %i.mi, 19
  br i1 %i.mj, label %.noexc94, label %.critedge.i, !prof !108

.noexc94:                                         ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.mk = call fastcc noundef i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.in, ptr noundef %i.e)
  %i.ml = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.mm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i:                                      ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit, %bb.as
  %i.mo = add i64 %.1851940, -309
  %or.cond.i91 = icmp ult i64 %i.mo, -651
  br i1 %or.cond.i91, label %bb.at, label %bb.au, !prof !124

bb.at:                                            ; preds = %.critedge.i
  %i.mp = icmp slt i64 %.1851940, -342
  %i.mq = icmp eq i64 %.1844, 0
  %or.cond3.i = or i1 %i.mq, %i.mp
  br i1 %or.cond3.i, label %.noexc87.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.noexc87.thread:                                  ; preds = %bb.at
  %i.mr = select i1 %i.iv, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.ms = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.mr, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br i1 %.not59.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.au:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.mu = add nsw i64 %.1851940, 22
  %or.cond.i99 = icmp ult i64 %i.mu, 45
  %i.mv = icmp ult i64 %.1844, 9007199254740992
  %or.cond3.i100 = and i1 %i.mv, %or.cond.i99
  br i1 %or.cond3.i100, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.mw = uitofp nneg i64 %.1844 to double        ; 2 uses
  %i.mx = icmp slt i64 %.1851940, 0
  br i1 %i.mx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.my = sub nsw i64 0, %.1851940
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !123
  %i.nb = fdiv double %i.mw, %i.na
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.1851940
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !123
  %i.ne = fmul double %i.nd, %i.mw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %storemerge.i = phi double [ %i.ne, %bb.ax ], [ %i.nb, %bb.aw ] ; 2 uses
  %i.nf = fneg double %storemerge.i
  %spec.select1741 = select i1 %i.iv, double %i.nf, double %storemerge.i
  br label %.noexc95.thread

bb.az:                                            ; preds = %bb.au
  %i.ng = icmp eq i64 %.1844, 0
  br i1 %i.ng, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nh = select i1 %i.iv, double -0.000000e+00, double 0.000000e+00
  br label %.noexc95.thread

bb.bb:                                            ; preds = %bb.az
  %i.ni = mul nsw i64 %.1851940, 217706
  %i.nj = ashr i64 %i.ni, 16
  %i.nk = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1844, i1 true) ; 2 uses
  %i.nl = shl i64 %.1844, %i.nk                   ; 2 uses
  %i.nm = trunc nsw i64 %.1851940 to i32
  %i.nn = shl nsw i32 %i.nm, 1
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.no ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 5472
  %i.nr = load i64, ptr %i.nq, align 16, !tbaa !40
  %i.ns = zext i64 %i.nl to i128
  %i.nt = zext i64 %i.nr to i128
  %i.nu = mul nuw i128 %i.nt, %i.ns               ; 2 uses
  %i.nv = trunc i128 %i.nu to i64                 ; 2 uses
  %i.nw = lshr i128 %i.nu, 64
  %i.nx = trunc nuw i128 %i.nw to i64             ; 3 uses
  %i.ny = and i64 %i.nx, 511
  %i.nz = icmp eq i64 %i.ny, 511
  br i1 %i.nz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.oa = getelementptr i8, ptr %i.np, i64 5480
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.nl, i64 %i.ob) ; 2 uses
  %i.oc = add i64 %2, %i.nv                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.oc
  %i.od = zext i1 %3 to i64
  %spec.select.i101 = add nuw i64 %i.od, %i.nx
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.1.i = phi i64 [ %spec.select.i101, %bb.bc ], [ %i.nx, %bb.bb ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.oc, %bb.bc ], [ %i.nv, %bb.bb ]
  %i.oe = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.of = add nuw nsw i64 %i.oe, 9                ; 2 uses
  %i.og = lshr i64 %.sroa.7.1.i, %i.of            ; 6 uses
  %reass.sub = sub nsw i64 %i.nj, %i.nk
  %.neg = add nsw i64 %reass.sub, %i.oe           ; 4 uses
  %i.oh = add nsw i64 %.neg, 1086
  %i.oi = icmp slt i64 %.neg, -1085
  br i1 %i.oi, label %bb.be, label %bb.bh, !prof !108

bb.be:                                            ; preds = %bb.bd
  %i.oj = icmp samesign ult i64 %.neg, -1148
  br i1 %i.oj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ok = select i1 %i.iv, double -0.000000e+00, double 0.000000e+00
  br label %.noexc95.thread

bb.bg:                                            ; preds = %bb.be
  %i.ol = sub nuw nsw i64 -1085, %.neg
  %i.om = lshr i64 %i.og, %i.ol                   ; 2 uses
  %i.on = and i64 %i.om, 1
  %i.oo = add nuw nsw i64 %i.on, %i.om            ; 2 uses
  %i.op = lshr i64 %i.oo, 1
  %i.oq = icmp samesign ugt i64 %i.oo, 9007199254740991
  %i.or = and i64 %i.op, 13510798882111487
  %i.os = select i1 %i.oq, i64 4503599627370496, i64 0
  %i.ot = select i1 %i.iv, i64 -9223372036854775808, i64 0
  %i.ou = or disjoint i64 %i.os, %i.ot
  %i.ov = or disjoint i64 %i.ou, %i.or
  %i.ow = bitcast i64 %i.ov to double
  br label %.noexc95.thread

bb.bh:                                            ; preds = %bb.bd
  %i.ox = icmp ult i64 %.sroa.037.0.i, 2
  %i.oy = add nsw i64 %.1851940, 4
  %i.oz = icmp ult i64 %i.oy, 28
  %or.cond7.i = and i1 %i.oz, %i.ox
  %i.pa = and i64 %i.og, 3
  %i.pb = icmp eq i64 %i.pa, 1
  %i.pc = select i1 %or.cond7.i, i1 %i.pb, i1 false
  br i1 %i.pc, label %bb.bi, label %bb.bj, !prof !108

bb.bi:                                            ; preds = %bb.bh
  %i.pd = shl i64 %i.og, %i.of
  %i.pe = icmp eq i64 %i.pd, %.sroa.7.1.i
  %i.pf = and i64 %i.og, 72057594037927932
  %spec.select90.i = select i1 %i.pe, i64 %i.pf, i64 %i.og
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.080.i = phi i64 [ %i.og, %bb.bh ], [ %spec.select90.i, %bb.bi ] ; 2 uses
  %i.pg = and i64 %.080.i, 1
  %i.ph = add nuw nsw i64 %i.pg, %.080.i          ; 2 uses
  %i.pi = icmp samesign ugt i64 %i.ph, 18014398509481983 ; 2 uses
  %i.pj = zext i1 %i.pi to i64
  %spec.select92.i = add nuw nsw i64 %i.oh, %i.pj ; 2 uses
  %i.pk = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.pk, label %.noexc95, label %bb.bk, !prof !108

bb.bk:                                            ; preds = %bb.bj
  %i.pl = lshr i64 %i.ph, 1
  %i.pm = and i64 %i.pl, 13510798882111487
  %i.pn = select i1 %i.pi, i64 0, i64 %i.pm
  %i.po = shl nuw nsw i64 %spec.select92.i, 52
  %i.pp = select i1 %i.iv, i64 -9223372036854775808, i64 0
  %i.pq = or disjoint i64 %i.pn, %i.pp
  %i.pr = or i64 %i.pq, %i.po
  %i.ps = bitcast i64 %i.pr to double
  br label %.noexc95.thread

.noexc95:                                         ; preds = %bb.bj
  %i.pt = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.in, ptr noundef %i.f)
  br i1 %i.pt, label %.noexc95..noexc95.thread_crit_edge, label %bb.bl

.noexc95..noexc95.thread_crit_edge:               ; preds = %.noexc95
  %.pre1603 = load double, ptr %i.f, align 8, !tbaa !123
  br label %.noexc95.thread

.noexc95.thread:                                  ; preds = %bb.ay, %.noexc95..noexc95.thread_crit_edge, %bb.bk, %bb.bg, %bb.bf, %bb.ba
  %i.pu = phi double [ %.pre1603, %.noexc95..noexc95.thread_crit_edge ], [ %i.ps, %bb.bk ], [ %i.ow, %bb.bg ], [ %i.ok, %bb.bf ], [ %spec.select1741, %bb.ay ], [ %i.nh, %bb.ba ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.pv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.pu, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc95.thread, %.noexc95
  %.sroa.0.22 = phi ptr [ %i.pw, %.noexc95.thread ], [ %i.u, %.noexc95 ]
  %.0.i92 = phi i32 [ 0, %.noexc95.thread ], [ 9, %.noexc95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bm:                                            ; preds = %bb.ar
  %i.px = select i1 %i.iv, i64 19, i64 20         ; 2 uses
  %i.py = icmp ugt i64 %.044.i, %i.px
  br i1 %i.py, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pz = icmp eq i64 %.044.i, %i.px
  br i1 %i.pz, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.iv, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.qa = icmp ugt i64 %.1844, -9223372036854775808
  br i1 %i.qa, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qb = sub i64 0, %.1844
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !40
  %i.qc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qb, ptr %i.qc, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qe = load i8, ptr %.1836, align 1, !tbaa !36
  %i.qf = zext i8 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i = icmp eq i8 %i.qh, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.br:                                            ; preds = %bb.bo
  %i.qi = icmp ne i8 %i.iu, 49
  %i.qj = icmp sgt i64 %.1844, -1
  %or.cond5.i = select i1 %i.qi, i1 true, i1 %i.qj
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread943

bb.bs:                                            ; preds = %bb.bn
  %i.qk = icmp slt i64 %.1844, 0
  br i1 %i.qk, label %.thread943, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ql = sub nsw i64 0, %.1844
  %i.qm = select i1 %i.iv, i64 %i.ql, i64 %.1844
  br label %.thread943

.thread943:                                       ; preds = %bb.bs, %bb.br, %bb.bt
  %.sink1743 = phi i64 [ 7782220156096217088, %bb.bt ], [ 8430738502437568512, %bb.br ], [ 8430738502437568512, %bb.bs ]
  %.sink = phi i64 [ %i.qm, %bb.bt ], [ %.1844, %bb.br ], [ %.1844, %bb.bs ]
  store i64 %.sink1743, ptr %i.u, align 8, !tbaa !40
  %i.qn = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qn, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qo = load i8, ptr %.1836, align 1, !tbaa !36
  %i.qp = zext i8 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i = icmp eq i8 %i.qr, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948: ; preds = %bb.bm, %bb.bp
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !125, !range !50, !noundef !51
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %.preheader1794, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1794:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, %.preheader1794
  %.122.i = phi ptr [ %i.qy, %.preheader1794 ], [ %i.ix, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948 ] ; 3 uses
  %i.qv = load i8, ptr %.122.i, align 1, !tbaa !36 ; 2 uses
  %i.qw = add i8 %i.qv, -48
  %i.qx = icmp ult i8 %i.qw, 10
  %i.qy = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.qx, label %.preheader1794, label %bb.bu, !llvm.loop !14

bb.bu:                                            ; preds = %.preheader1794
  %i.qz = zext i8 %i.qv to i64
  %i.ra = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i80 = icmp eq i8 %i.rb, 0
  br i1 %.not.i80, label %bb.bv, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bv:                                            ; preds = %bb.bu
  %i.rc = ptrtoint ptr %.122.i to i64
  %i.rd = ptrtoint ptr %i.in to i64
  %i.re = sub i64 %i.rc, %i.rd                    ; 3 uses
  %i.rf = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !48
  %i.ri = ptrtoint ptr %i.m to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = or i64 %i.rk, 6485183463413514240
  store i64 %i.rl, ptr %i.u, align 8, !tbaa !40
  %i.rm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rn, ptr nonnull align 1 %i.in, i64 %i.re, i1 false)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.re
  %i.rp = trunc i64 %i.re to i32
  store i32 %i.rp, ptr %i.m, align 1
  store i8 0, ptr %i.ro, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.at, %bb.bu, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, %.noexc85, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread943, %bb.br, %bb.bq, %.noexc87.thread, %bb.ao
  %.0.i51333.ph = phi i32 [ 9, %.noexc87.thread ], [ 9, %bb.bq ], [ 9, %bb.br ], [ 9, %.thread943 ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc85 ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948 ], [ 9, %bb.bu ], [ 9, %bb.at ], [ 9, %bb.ao ]
end_hunk_6
begin_hunk_7_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.7793.ptr = getelementptr inbounds nuw i8, ptr %.0786.lcssa, i64 %.7793.add
  %i.aht = load i8, ptr %.7793.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ahu = add i8 %i.aht, -48                     ; 2 uses
  %i.ahv = icmp ult i8 %i.ahu, 10
  br i1 %i.ahv, label %.lr.ph1524, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !10

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not1428 = icmp eq i64 %.5791.add, 1
  br i1 %.not1428, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1524, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5799.lcssa1685 = phi i64 [ %.47981115, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.ahs, %.lr.ph1524 ]
  %.7793.idx.lcssa15201684 = phi i64 [ %.5791.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7793.add, %.lr.ph1524 ] ; 2 uses
  %i.ahw = phi i8 [ %i.ahm, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.aht, %.lr.ph1524 ]
  %.7793.ptr.le = getelementptr inbounds nuw i8, ptr %.0786.lcssa, i64 %.7793.idx.lcssa15201684 ; 2 uses
  %i.ahx = ptrtoint ptr %.7793.ptr.le to i64
  %gepdiff1568 = sub nsw i64 1, %.7793.idx.lcssa15201684
  %i.ahy = sub i64 %i.ahx, %i.agi
  %sext.i.i = shl i64 %i.ahy, 32
  %i.ahz = ashr exact i64 %sext.i.i, 32
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.dm
  %i.aia = phi i8 [ %i.ahw, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1465, %bb.dm ] ; 2 uses
  %.0815 = phi i64 [ %gepdiff1568, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.dm ] ; 2 uses
  %.2796 = phi i64 [ %.5799.lcssa1685, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0794.lcssa, %bb.dm ] ; 14 uses
  %.1787 = phi ptr [ %.7793.ptr.le, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0786.lcssa, %bb.dm ] ; 4 uses
  %.044.i.i = phi i64 [ %i.ahz, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.agj, %bb.dm ] ; 4 uses
  switch i8 %i.aia, label %bb.dv [
    i8 101, label %bb.dq
    i8 69, label %bb.dq
  ]

bb.dq:                                            ; preds = %bb.dp, %bb.dp
  %i.aib = getelementptr inbounds nuw i8, ptr %.1787, i64 1 ; 2 uses
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !36 ; 3 uses
  %i.aid = icmp eq i8 %i.aic, 45
  switch i8 %i.aic, label %bb.ds [
    i8 45, label %bb.dr
    i8 43, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %i.aie = getelementptr inbounds nuw i8, ptr %.1787, i64 2 ; 2 uses
  %.pre1605 = load i8, ptr %i.aie, align 1, !tbaa !36
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.aif = phi i8 [ %i.aic, %bb.dq ], [ %.pre1605, %bb.dr ]
  %.2788 = phi ptr [ %i.aib, %bb.dq ], [ %i.aie, %bb.dr ] ; 3 uses
  %i.aig = add i8 %i.aif, -48                     ; 2 uses
  %i.aih = icmp ult i8 %i.aig, 10
  br i1 %i.aih, label %.lr.ph1531, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1531:                                       ; preds = %bb.ds, %.lr.ph1531
  %i.aii = phi i8 [ %i.ain, %.lr.ph1531 ], [ %i.aig, %bb.ds ]
  %.07831530 = phi i64 [ %i.ail, %.lr.ph1531 ], [ 0, %bb.ds ]
  %.3789.idx1529 = phi i64 [ %.3789.add, %.lr.ph1531 ], [ 0, %bb.ds ] ; 2 uses
  %i.aij = mul nsw i64 %.07831530, 10
  %i.aik = zext nneg i8 %i.aii to i64
  %i.ail = add nsw i64 %i.aij, %i.aik             ; 3 uses
  %.3789.add = add nuw nsw i64 %.3789.idx1529, 1  ; 3 uses
  %.3789.ptr = getelementptr inbounds nuw i8, ptr %.2788, i64 %.3789.add
  %i.aim = load i8, ptr %.3789.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ain = add i8 %i.aim, -48                     ; 2 uses
  %i.aio = icmp ult i8 %i.ain, 10
  br i1 %i.aio, label %.lr.ph1531, label %bb.dt, !llvm.loop !11

bb.dt:                                            ; preds = %.lr.ph1531
  %.3789.ptr.le = getelementptr inbounds nuw i8, ptr %.2788, i64 %.3789.add
  %i.aip = icmp samesign ugt i64 %.3789.idx1529, 17
  br i1 %i.aip, label %.preheader1451, label %.thread1125, !prof !108

.preheader1451:                                   ; preds = %bb.dt, %.preheader1451
  %.0.i22.i = phi ptr [ %i.ais, %.preheader1451 ], [ %.2788, %bb.dt ] ; 3 uses
  %i.aiq = load i8, ptr %.0.i22.i, align 1, !tbaa !36
  %i.air = icmp eq i8 %i.aiq, 48
  %i.ais = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 1
  br i1 %i.air, label %.preheader1451, label %bb.du, !llvm.loop !12

bb.du:                                            ; preds = %.preheader1451
  %i.ait = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 18
  %i.aiu = icmp ugt ptr %.3789.ptr.le, %i.ait
  %spec.select1413 = select i1 %i.aiu, i64 999999999999999999, i64 %i.ail
  br label %.thread1125

.thread1125:                                      ; preds = %bb.du, %bb.dt
  %.2785 = phi i64 [ %i.ail, %bb.dt ], [ %spec.select1413, %bb.du ] ; 2 uses
  %i.aiv = sub nsw i64 0, %.2785
  %i.aiw = select i1 %i.aid, i64 %i.aiv, i64 %.2785
  %i.aix = add nsw i64 %i.aiw, %.0815
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dp
  br i1 %i.agn, label %bb.dw, label %bb.eq

bb.dw:                                            ; preds = %.thread1125, %bb.dv
  %i.aiy = phi i8 [ %i.aim, %.thread1125 ], [ %i.aia, %bb.dv ]
  %.28171129 = phi i64 [ %i.aix, %.thread1125 ], [ %.0815, %bb.dv ] ; 9 uses
  %i.aiz = zext i8 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aiz
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.ajb, 0              ; 3 uses
  %i.ajc = icmp ugt i64 %.044.i.i, 19
  br i1 %i.ajc, label %.preheader1450, label %.critedge.i.i

.preheader1450:                                   ; preds = %bb.dw, %.critedge.i29.i
  %i.ajd = phi i8 [ %.pre1606, %.critedge.i29.i ], [ %i.afw, %bb.dw ]
  %.0.i28.i = phi ptr [ %i.aje, %.critedge.i29.i ], [ %i.afv, %bb.dw ] ; 2 uses
  switch i8 %i.ajd, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i29.i
    i8 46, label %.critedge.i29.i
  ]

.critedge.i29.i:                                  ; preds = %.preheader1450, %.preheader1450
  %i.aje = getelementptr inbounds nuw i8, ptr %.0.i28.i, i64 1 ; 2 uses
  %.pre1606 = load i8, ptr %i.aje, align 1, !tbaa !36
  br label %.preheader1450, !llvm.loop !13

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1450
  %i.ajf = ptrtoint ptr %.0.i28.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.agi
  %i.ajg = sub i64 %.neg.i.i, %i.ajf
  %i.ajh = icmp ugt i64 %i.ajg, 19
  br i1 %i.ajh, label %.noexc26.i, label %.critedge.i.i, !prof !108

.noexc26.i:                                       ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.aji = call fastcc noundef i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.ym, ptr noundef %i.c)
  %i.ajj = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajk = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajj, ptr %i.ajk, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.dw
  %i.ajm = add i64 %.28171129, -309
  %or.cond.i23.i = icmp ult i64 %i.ajm, -651
  br i1 %or.cond.i23.i, label %bb.dx, label %bb.dy, !prof !124

bb.dx:                                            ; preds = %.critedge.i.i
  %i.ajn = icmp slt i64 %.28171129, -342
  %i.ajo = icmp eq i64 %.2796, 0
  %or.cond3.i.i = or i1 %i.ajo, %i.ajn
  br i1 %or.cond3.i.i, label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.dx
  %i.ajp = select i1 %i.aft, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajp, ptr %i.ajq, align 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i, label %select.unfold1143, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dy:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ajs = add nsw i64 %.28171129, 22
  %or.cond.i30.i = icmp ult i64 %i.ajs, 45
  %i.ajt = icmp ult i64 %.2796, 9007199254740992
  %or.cond3.i31.i = and i1 %i.ajt, %or.cond.i30.i
  br i1 %or.cond3.i31.i, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.aju = uitofp nneg i64 %.2796 to double       ; 2 uses
  %i.ajv = icmp slt i64 %.28171129, 0
  br i1 %i.ajv, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ajw = sub nsw i64 0, %.28171129
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ajw
  %i.ajy = load double, ptr %i.ajx, align 8, !tbaa !123
  %i.ajz = fdiv double %i.aju, %i.ajy
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.28171129
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !123
  %i.akc = fmul double %i.akb, %i.aju
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %storemerge.i.i = phi double [ %i.akc, %bb.eb ], [ %i.ajz, %bb.ea ] ; 2 uses
  %i.akd = fneg double %storemerge.i.i
  %spec.select1752 = select i1 %i.aft, double %i.akd, double %storemerge.i.i
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ed:                                            ; preds = %bb.dy
  %i.ake = icmp eq i64 %.2796, 0
  br i1 %i.ake, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.akf = select i1 %i.aft, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ef:                                            ; preds = %bb.ed
  %i.akg = mul nsw i64 %.28171129, 217706
  %i.akh = ashr i64 %i.akg, 16
  %i.aki = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2796, i1 true) ; 2 uses
  %i.akj = shl i64 %.2796, %i.aki                 ; 2 uses
  %i.akk = trunc nsw i64 %.28171129 to i32
  %i.akl = shl nsw i32 %i.akk, 1
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.akm ; 2 uses
  %i.ako = getelementptr i8, ptr %i.akn, i64 5472
  %i.akp = load i64, ptr %i.ako, align 16, !tbaa !40
  %i.akq = zext i64 %i.akj to i128
  %i.akr = zext i64 %i.akp to i128
  %i.aks = mul nuw i128 %i.akr, %i.akq            ; 2 uses
  %i.akt = trunc i128 %i.aks to i64               ; 2 uses
  %i.aku = lshr i128 %i.aks, 64
  %i.akv = trunc nuw i128 %i.aku to i64           ; 3 uses
  %i.akw = and i64 %i.akv, 511
  %i.akx = icmp eq i64 %i.akw, 511
  br i1 %i.akx, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aky = getelementptr i8, ptr %i.akn, i64 5480
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.akj, i64 %i.akz) ; 2 uses
  %i.ala = add i64 %4, %i.akt                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.ala
  %i.alb = zext i1 %5 to i64
  %spec.select.i32.i = add nuw i64 %i.alb, %i.akv
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i32.i, %bb.eg ], [ %i.akv, %bb.ef ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.ala, %bb.eg ], [ %i.akt, %bb.ef ]
  %i.alc = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.ald = add nuw nsw i64 %i.alc, 9              ; 2 uses
  %i.ale = lshr i64 %.sroa.7.1.i.i, %i.ald        ; 6 uses
  %reass.sub1570 = sub nsw i64 %i.akh, %i.aki
  %.neg1569 = add nsw i64 %reass.sub1570, %i.alc  ; 4 uses
  %i.alf = add nsw i64 %.neg1569, 1086
  %i.alg = icmp slt i64 %.neg1569, -1085
  br i1 %i.alg, label %bb.ei, label %bb.el, !prof !108

bb.ei:                                            ; preds = %bb.eh
  %i.alh = icmp samesign ult i64 %.neg1569, -1148
  br i1 %i.alh, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.ali = select i1 %i.aft, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ek:                                            ; preds = %bb.ei
  %i.alj = sub nuw nsw i64 -1085, %.neg1569
  %i.alk = lshr i64 %i.ale, %i.alj                ; 2 uses
  %i.all = and i64 %i.alk, 1
  %i.alm = add nuw nsw i64 %i.all, %i.alk         ; 2 uses
  %i.aln = lshr i64 %i.alm, 1
  %i.alo = icmp samesign ugt i64 %i.alm, 9007199254740991
  %i.alp = and i64 %i.aln, 13510798882111487
  %i.alq = select i1 %i.alo, i64 4503599627370496, i64 0
  %i.alr = select i1 %i.aft, i64 -9223372036854775808, i64 0
  %i.als = or disjoint i64 %i.alq, %i.alr
  %i.alt = or disjoint i64 %i.als, %i.alp
  %i.alu = bitcast i64 %i.alt to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.el:                                            ; preds = %bb.eh
  %i.alv = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.alw = add nsw i64 %.28171129, 4
  %i.alx = icmp ult i64 %i.alw, 28
  %or.cond7.i.i = and i1 %i.alx, %i.alv
  %i.aly = and i64 %i.ale, 3
  %i.alz = icmp eq i64 %i.aly, 1
  %i.ama = select i1 %or.cond7.i.i, i1 %i.alz, i1 false
  br i1 %i.ama, label %bb.em, label %bb.en, !prof !108

bb.em:                                            ; preds = %bb.el
  %i.amb = shl i64 %i.ale, %i.ald
  %i.amc = icmp eq i64 %i.amb, %.sroa.7.1.i.i
  %i.amd = and i64 %i.ale, 72057594037927932
  %spec.select90.i.i = select i1 %i.amc, i64 %i.amd, i64 %i.ale
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.080.i.i = phi i64 [ %i.ale, %bb.el ], [ %spec.select90.i.i, %bb.em ] ; 2 uses
  %i.ame = and i64 %.080.i.i, 1
  %i.amf = add nuw nsw i64 %i.ame, %.080.i.i      ; 2 uses
  %i.amg = icmp samesign ugt i64 %i.amf, 18014398509481983 ; 2 uses
  %i.amh = zext i1 %i.amg to i64
  %spec.select92.i.i = add nuw nsw i64 %i.alf, %i.amh ; 2 uses
  %i.ami = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.ami, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.eo, !prof !108

bb.eo:                                            ; preds = %bb.en
  %i.amj = lshr i64 %i.amf, 1
  %i.amk = and i64 %i.amj, 13510798882111487
  %i.aml = select i1 %i.amg, i64 0, i64 %i.amk
  %i.amm = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.amn = select i1 %i.aft, i64 -9223372036854775808, i64 0
  %i.amo = or disjoint i64 %i.aml, %i.amn
  %i.amp = or i64 %i.amo, %i.amm
  %i.amq = bitcast i64 %i.amp to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.en
  %i.amr = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ym, ptr noundef %i.d)
  br i1 %i.amr, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.ep

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1607 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.ec, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.eo, %bb.ek, %bb.ej, %bb.ee
  %i.ams = phi double [ %.pre1607, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.amq, %bb.eo ], [ %i.alu, %bb.ek ], [ %i.ali, %bb.ej ], [ %spec.select1752, %bb.ec ], [ %i.akf, %bb.ee ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ams, ptr %i.amt, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.28 = phi ptr [ %i.amu, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %.sroa.0.6, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i24.i = phi i32 [ 0, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i: ; preds = %bb.ep, %.noexc26.i
  %.sroa.0.29 = phi ptr [ %i.ajl, %.noexc26.i ], [ %.sroa.0.28, %bb.ep ]
  %.1.i25.i = phi i32 [ %i.aji, %.noexc26.i ], [ %.0.i24.i, %bb.ep ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i25.i, 0          ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1414 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i25.i
  %.not168.i = and i1 %.not59.i.i, %.not60.i.i
  br i1 %.not168.i, label %select.unfold1143, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.eq:                                            ; preds = %bb.dv
  %i.amv = select i1 %i.aft, i64 19, i64 20       ; 2 uses
  %i.amw = icmp ugt i64 %.044.i.i, %i.amv
  br i1 %i.amw, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.amx = icmp eq i64 %.044.i.i, %i.amv
  br i1 %i.amx, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  br i1 %i.aft, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.amy = icmp ugt i64 %.2796, -9223372036854775808
  br i1 %i.amy, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.amz = sub i64 0, %.2796
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.amz, ptr %i.ana, align 8
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anc = load i8, ptr %.1787, align 1, !tbaa !36
  %i.and = zext i8 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.anf, 0
  br i1 %.not58.i.i, label %select.unfold1143, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ev:                                            ; preds = %bb.es
  %i.ang = icmp ne i8 %i.yn, 49
  %i.anh = icmp sgt i64 %.2796, -1
  %or.cond5.i.i = select i1 %i.ang, i1 true, i1 %i.anh
  br i1 %or.cond5.i.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1132

bb.ew:                                            ; preds = %bb.er
  %i.ani = icmp slt i64 %.2796, 0
  br i1 %i.ani, label %.thread1132, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.anj = sub nsw i64 0, %.2796
  %i.ank = select i1 %i.aft, i64 %i.anj, i64 %.2796
  br label %.thread1132

.thread1132:                                      ; preds = %bb.ew, %bb.ev, %bb.ex
  %.sink1755 = phi i64 [ 7782220156096217088, %bb.ex ], [ 8430738502437568512, %bb.ev ], [ 8430738502437568512, %bb.ew ]
  %.sink1753 = phi i64 [ %i.ank, %bb.ex ], [ %.2796, %bb.ev ], [ %.2796, %bb.ew ]
  store i64 %.sink1755, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1753, ptr %i.anl, align 8
  %.sroa.0.27 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anm = load i8, ptr %.1787, align 1, !tbaa !36
  %i.ann = zext i8 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.anp, 0
  br i1 %.not57.i.i, label %select.unfold1143, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138: ; preds = %bb.eq, %bb.et
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.anr = load i8, ptr %i.anq, align 8, !tbaa !125, !range !50, !noundef !51
  %i.ans = trunc nuw i8 %i.anr to i1
  br i1 %i.ans, label %.preheader1790, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1790:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138, %.preheader1790
  %.122.i.i = phi ptr [ %i.anw, %.preheader1790 ], [ %i.afv, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138 ] ; 3 uses
  %i.ant = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.anu = add i8 %i.ant, -48
  %i.anv = icmp ult i8 %i.anu, 10
  %i.anw = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.anv, label %.preheader1790, label %bb.ey, !llvm.loop !14

bb.ey:                                            ; preds = %.preheader1790
  %i.anx = zext i8 %i.ant to i64
  %i.any = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anx
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i108 = icmp eq i8 %i.anz, 0
  br i1 %.not.i.i108, label %.split1692, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1692:                                       ; preds = %bb.ey
  %i.aoa = ptrtoint ptr %.122.i.i to i64
  %i.aob = ptrtoint ptr %i.ym to i64
  %i.aoc = sub i64 %i.aoa, %i.aob                 ; 3 uses
  %i.aod = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !48
  %i.aog = ptrtoint ptr %.sroa.172.6 to i64
  %i.aoh = ptrtoint ptr %i.aof to i64
  %i.aoi = sub i64 %i.aog, %i.aoh
  %i.aoj = or i64 %i.aoi, 6485183463413514240
  store i64 %i.aoj, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.aol = getelementptr inbounds nuw i8, ptr %i.xz, i64 5 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.7758.ptr = getelementptr inbounds nuw i8, ptr %.0751.lcssa, i64 %.7758.add
  %i.bhb = load i8, ptr %.7758.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhc = add i8 %i.bhb, -48                     ; 2 uses
  %i.bhd = icmp ult i8 %i.bhc, 10
  br i1 %i.bhd, label %.lr.ph1551, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread, !llvm.loop !10

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i175
  %.not1433 = icmp eq i64 %.5756.add, 1
  br i1 %.not1433, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread: ; preds = %.lr.ph1551, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177
  %.5764.lcssa1698 = phi i64 [ %.47631272, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177 ], [ %i.bha, %.lr.ph1551 ]
  %.7758.idx.lcssa15471697 = phi i64 [ %.5756.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177 ], [ %.7758.add, %.lr.ph1551 ] ; 2 uses
  %i.bhe = phi i8 [ %i.bgu, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177 ], [ %i.bhb, %.lr.ph1551 ]
  %.7758.ptr.le = getelementptr inbounds nuw i8, ptr %.0751.lcssa, i64 %.7758.idx.lcssa15471697 ; 2 uses
  %i.bhf = ptrtoint ptr %.7758.ptr.le to i64
  %gepdiff1571 = sub nsw i64 1, %.7758.idx.lcssa15471697
  %i.bhg = sub i64 %i.bhf, %i.bfq
  %sext.i.i180 = shl i64 %i.bhg, 32
  %i.bhh = ashr exact i64 %sext.i.i180, 32
  br label %bb.gz

bb.gz:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread, %bb.gw
  %i.bhi = phi i8 [ %i.bhe, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread ], [ %.lcssa1460, %bb.gw ] ; 2 uses
  %.0766 = phi i64 [ %gepdiff1571, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread ], [ 0, %bb.gw ] ; 2 uses
  %.2761 = phi i64 [ %.5764.lcssa1698, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread ], [ %.0759.lcssa, %bb.gw ] ; 14 uses
  %.1752 = phi ptr [ %.7758.ptr.le, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread ], [ %.0751.lcssa, %bb.gw ] ; 4 uses
  %.044.i.i119 = phi i64 [ %i.bhh, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177.thread ], [ %i.bfr, %bb.gw ] ; 4 uses
  switch i8 %i.bhi, label %bb.hf [
    i8 101, label %bb.ha
    i8 69, label %bb.ha
  ]

bb.ha:                                            ; preds = %bb.gz, %bb.gz
  %i.bhj = getelementptr inbounds nuw i8, ptr %.1752, i64 1 ; 2 uses
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !36 ; 3 uses
  %i.bhl = icmp eq i8 %i.bhk, 45
  switch i8 %i.bhk, label %bb.hc [
    i8 45, label %bb.hb
    i8 43, label %bb.hb
  ]

bb.hb:                                            ; preds = %bb.ha, %bb.ha
  %i.bhm = getelementptr inbounds nuw i8, ptr %.1752, i64 2 ; 2 uses
  %.pre1609 = load i8, ptr %i.bhm, align 1, !tbaa !36
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.bhn = phi i8 [ %i.bhk, %bb.ha ], [ %.pre1609, %bb.hb ]
  %.2753 = phi ptr [ %i.bhj, %bb.ha ], [ %i.bhm, %bb.hb ] ; 3 uses
  %i.bho = add i8 %i.bhn, -48                     ; 2 uses
  %i.bhp = icmp ult i8 %i.bho, 10
  br i1 %i.bhp, label %.lr.ph1558, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1558:                                       ; preds = %bb.hc, %.lr.ph1558
  %i.bhq = phi i8 [ %i.bhv, %.lr.ph1558 ], [ %i.bho, %bb.hc ]
  %.01557 = phi i64 [ %i.bht, %.lr.ph1558 ], [ 0, %bb.hc ]
  %.3754.idx1556 = phi i64 [ %.3754.add, %.lr.ph1558 ], [ 0, %bb.hc ] ; 2 uses
  %i.bhr = mul nsw i64 %.01557, 10
  %i.bhs = zext nneg i8 %i.bhq to i64
  %i.bht = add nsw i64 %i.bhr, %i.bhs             ; 3 uses
  %.3754.add = add nuw nsw i64 %.3754.idx1556, 1  ; 3 uses
  %.3754.ptr = getelementptr inbounds nuw i8, ptr %.2753, i64 %.3754.add
  %i.bhu = load i8, ptr %.3754.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhv = add i8 %i.bhu, -48                     ; 2 uses
  %i.bhw = icmp ult i8 %i.bhv, 10
  br i1 %i.bhw, label %.lr.ph1558, label %bb.hd, !llvm.loop !11

bb.hd:                                            ; preds = %.lr.ph1558
  %.3754.ptr.le = getelementptr inbounds nuw i8, ptr %.2753, i64 %.3754.add
  %i.bhx = icmp samesign ugt i64 %.3754.idx1556, 17
  br i1 %i.bhx, label %.preheader1448, label %.thread1282, !prof !108

.preheader1448:                                   ; preds = %bb.hd, %.preheader1448
  %.0.i22.i173 = phi ptr [ %i.bia, %.preheader1448 ], [ %.2753, %bb.hd ] ; 3 uses
  %i.bhy = load i8, ptr %.0.i22.i173, align 1, !tbaa !36
  %i.bhz = icmp eq i8 %i.bhy, 48
  %i.bia = getelementptr inbounds nuw i8, ptr %.0.i22.i173, i64 1
  br i1 %i.bhz, label %.preheader1448, label %bb.he, !llvm.loop !12

bb.he:                                            ; preds = %.preheader1448
  %i.bib = getelementptr inbounds nuw i8, ptr %.0.i22.i173, i64 18
  %i.bic = icmp ugt ptr %.3754.ptr.le, %i.bib
  %spec.select1415 = select i1 %i.bic, i64 999999999999999999, i64 %i.bht
  br label %.thread1282

.thread1282:                                      ; preds = %bb.he, %bb.hd
  %.2 = phi i64 [ %i.bht, %bb.hd ], [ %spec.select1415, %bb.he ] ; 2 uses
  %i.bid = sub nsw i64 0, %.2
  %i.bie = select i1 %i.bhl, i64 %i.bid, i64 %.2
  %i.bif = add nsw i64 %i.bie, %.0766
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gz
  br i1 %i.bfv, label %bb.hg, label %bb.ia

bb.hg:                                            ; preds = %.thread1282, %bb.hf
  %i.big = phi i8 [ %i.bhu, %.thread1282 ], [ %i.bhi, %bb.hf ]
  %.27681286 = phi i64 [ %i.bif, %.thread1282 ], [ %.0766, %bb.hf ] ; 9 uses
  %i.bih = zext i8 %i.big to i64
  %i.bii = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bih
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i140 = icmp eq i8 %i.bij, 0           ; 3 uses
  %i.bik = icmp ugt i64 %.044.i.i119, 19
  br i1 %i.bik, label %.preheader, label %.critedge.i.i141

.preheader:                                       ; preds = %bb.hg, %.critedge.i29.i169
  %i.bil = phi i8 [ %.pre1610, %.critedge.i29.i169 ], [ %i.bfe, %bb.hg ]
  %.0.i28.i168 = phi ptr [ %i.bim, %.critedge.i29.i169 ], [ %i.bfd, %bb.hg ] ; 2 uses
  switch i8 %i.bil, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i170 [
    i8 48, label %.critedge.i29.i169
    i8 46, label %.critedge.i29.i169
  ]

.critedge.i29.i169:                               ; preds = %.preheader, %.preheader
  %i.bim = getelementptr inbounds nuw i8, ptr %.0.i28.i168, i64 1 ; 2 uses
  %.pre1610 = load i8, ptr %i.bim, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !13

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i170: ; preds = %.preheader
  %i.bin = ptrtoint ptr %.0.i28.i168 to i64
  %.neg.i.i171 = add i64 %.044.i.i119, %i.bfq
  %i.bio = sub i64 %.neg.i.i171, %i.bin
  %i.bip = icmp ugt i64 %i.bio, 19
  br i1 %i.bip, label %.noexc26.i172, label %.critedge.i.i141, !prof !108

.noexc26.i172:                                    ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.biq = call fastcc noundef i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.axu, ptr noundef %i.a)
  %i.bir = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bis = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bir, ptr %i.bis, align 8
  %i.bit = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156

.critedge.i.i141:                                 ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i170, %bb.hg
  %i.biu = add i64 %.27681286, -309
  %or.cond.i23.i142 = icmp ult i64 %i.biu, -651
  br i1 %or.cond.i23.i142, label %bb.hh, label %bb.hi, !prof !124

bb.hh:                                            ; preds = %.critedge.i.i141
  %i.biv = icmp slt i64 %.27681286, -342
  %i.biw = icmp eq i64 %.2761, 0
  %or.cond3.i.i167 = or i1 %i.biw, %i.biv
  br i1 %or.cond3.i.i167, label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread: ; preds = %bb.hh
  %i.bix = select i1 %i.bfb, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.biy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bix, ptr %i.biy, align 8
  %i.biz = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i140, label %select.unfold1300, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hi:                                            ; preds = %.critedge.i.i141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bja = add nsw i64 %.27681286, 22
  %or.cond.i30.i143 = icmp ult i64 %i.bja, 45
  %i.bjb = icmp ult i64 %.2761, 9007199254740992
  %or.cond3.i31.i144 = and i1 %i.bjb, %or.cond.i30.i143
  br i1 %or.cond3.i31.i144, label %bb.hj, label %bb.hn

bb.hj:                                            ; preds = %bb.hi
  %i.bjc = uitofp nneg i64 %.2761 to double       ; 2 uses
  %i.bjd = icmp slt i64 %.27681286, 0
  br i1 %i.bjd, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.bje = sub nsw i64 0, %.27681286
  %i.bjf = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bje
  %i.bjg = load double, ptr %i.bjf, align 8, !tbaa !123
  %i.bjh = fdiv double %i.bjc, %i.bjg
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.bji = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.27681286
  %i.bjj = load double, ptr %i.bji, align 8, !tbaa !123
  %i.bjk = fmul double %i.bjj, %i.bjc
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %storemerge.i.i166 = phi double [ %i.bjk, %bb.hl ], [ %i.bjh, %bb.hk ] ; 2 uses
  %i.bjl = fneg double %storemerge.i.i166
  %spec.select1784 = select i1 %i.bfb, double %i.bjl, double %storemerge.i.i166
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread

bb.hn:                                            ; preds = %bb.hi
  %i.bjm = icmp eq i64 %.2761, 0
  br i1 %i.bjm, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.bjn = select i1 %i.bfb, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread

bb.hp:                                            ; preds = %bb.hn
  %i.bjo = mul nsw i64 %.27681286, 217706
  %i.bjp = ashr i64 %i.bjo, 16
  %i.bjq = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2761, i1 true) ; 2 uses
  %i.bjr = shl i64 %.2761, %i.bjq                 ; 2 uses
  %i.bjs = trunc nsw i64 %.27681286 to i32
  %i.bjt = shl nsw i32 %i.bjs, 1
  %i.bju = sext i32 %i.bjt to i64
  %i.bjv = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bju ; 2 uses
  %i.bjw = getelementptr i8, ptr %i.bjv, i64 5472
  %i.bjx = load i64, ptr %i.bjw, align 16, !tbaa !40
  %i.bjy = zext i64 %i.bjr to i128
  %i.bjz = zext i64 %i.bjx to i128
  %i.bka = mul nuw i128 %i.bjz, %i.bjy            ; 2 uses
  %i.bkb = trunc i128 %i.bka to i64               ; 2 uses
  %i.bkc = lshr i128 %i.bka, 64
  %i.bkd = trunc nuw i128 %i.bkc to i64           ; 3 uses
  %i.bke = and i64 %i.bkd, 511
  %i.bkf = icmp eq i64 %i.bke, 511
  br i1 %i.bkf, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bkg = getelementptr i8, ptr %i.bjv, i64 5480
  %i.bkh = load i64, ptr %i.bkg, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bjr, i64 %i.bkh) ; 2 uses
  %i.bki = add i64 %6, %i.bkb                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bki
  %i.bkj = zext i1 %7 to i64
  %spec.select.i32.i165 = add nuw i64 %i.bkj, %i.bkd
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.sroa.7.1.i.i147 = phi i64 [ %spec.select.i32.i165, %bb.hq ], [ %i.bkd, %bb.hp ] ; 3 uses
  %.sroa.037.0.i.i148 = phi i64 [ %i.bki, %bb.hq ], [ %i.bkb, %bb.hp ]
  %i.bkk = lshr i64 %.sroa.7.1.i.i147, 63         ; 2 uses
  %i.bkl = add nuw nsw i64 %i.bkk, 9              ; 2 uses
  %i.bkm = lshr i64 %.sroa.7.1.i.i147, %i.bkl     ; 6 uses
  %reass.sub1573 = sub nsw i64 %i.bjp, %i.bjq
  %.neg1572 = add nsw i64 %reass.sub1573, %i.bkk  ; 4 uses
  %i.bkn = add nsw i64 %.neg1572, 1086
  %i.bko = icmp slt i64 %.neg1572, -1085
  br i1 %i.bko, label %bb.hs, label %bb.hv, !prof !108

bb.hs:                                            ; preds = %bb.hr
  %i.bkp = icmp samesign ult i64 %.neg1572, -1148
  br i1 %i.bkp, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.bkq = select i1 %i.bfb, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread

bb.hu:                                            ; preds = %bb.hs
  %i.bkr = sub nuw nsw i64 -1085, %.neg1572
  %i.bks = lshr i64 %i.bkm, %i.bkr                ; 2 uses
  %i.bkt = and i64 %i.bks, 1
  %i.bku = add nuw nsw i64 %i.bkt, %i.bks         ; 2 uses
  %i.bkv = lshr i64 %i.bku, 1
  %i.bkw = icmp samesign ugt i64 %i.bku, 9007199254740991
  %i.bkx = and i64 %i.bkv, 13510798882111487
  %i.bky = select i1 %i.bkw, i64 4503599627370496, i64 0
  %i.bkz = select i1 %i.bfb, i64 -9223372036854775808, i64 0
  %i.bla = or disjoint i64 %i.bky, %i.bkz
  %i.blb = or disjoint i64 %i.bla, %i.bkx
  %i.blc = bitcast i64 %i.blb to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread

bb.hv:                                            ; preds = %bb.hr
  %i.bld = icmp ult i64 %.sroa.037.0.i.i148, 2
  %i.ble = add nsw i64 %.27681286, 4
  %i.blf = icmp ult i64 %i.ble, 28
  %or.cond7.i.i149 = and i1 %i.blf, %i.bld
  %i.blg = and i64 %i.bkm, 3
  %i.blh = icmp eq i64 %i.blg, 1
  %i.bli = select i1 %or.cond7.i.i149, i1 %i.blh, i1 false
  br i1 %i.bli, label %bb.hw, label %bb.hx, !prof !108

bb.hw:                                            ; preds = %bb.hv
  %i.blj = shl i64 %i.bkm, %i.bkl
  %i.blk = icmp eq i64 %i.blj, %.sroa.7.1.i.i147
  %i.bll = and i64 %i.bkm, 72057594037927932
  %spec.select90.i.i162 = select i1 %i.blk, i64 %i.bll, i64 %i.bkm
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.080.i.i150 = phi i64 [ %i.bkm, %bb.hv ], [ %spec.select90.i.i162, %bb.hw ] ; 2 uses
  %i.blm = and i64 %.080.i.i150, 1
  %i.bln = add nuw nsw i64 %i.blm, %.080.i.i150   ; 2 uses
  %i.blo = icmp samesign ugt i64 %i.bln, 18014398509481983 ; 2 uses
  %i.blp = zext i1 %i.blo to i64
  %spec.select92.i.i152 = add nuw nsw i64 %i.bkn, %i.blp ; 2 uses
  %i.blq = icmp samesign ugt i64 %spec.select92.i.i152, 2046
  br i1 %i.blq, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153, label %bb.hy, !prof !108

bb.hy:                                            ; preds = %bb.hx
  %i.blr = lshr i64 %i.bln, 1
  %i.bls = and i64 %i.blr, 13510798882111487
  %i.blt = select i1 %i.blo, i64 0, i64 %i.bls
  %i.blu = shl nuw nsw i64 %spec.select92.i.i152, 52
  %i.blv = select i1 %i.bfb, i64 -9223372036854775808, i64 0
  %i.blw = or disjoint i64 %i.blt, %i.blv
  %i.blx = or i64 %i.blw, %i.blu
  %i.bly = bitcast i64 %i.blx to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153: ; preds = %bb.hx
  %i.blz = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.axu, ptr noundef %i.b)
  br i1 %i.blz, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread_crit_edge, label %bb.hz

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread_crit_edge: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153
  %.pre1611 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread: ; preds = %bb.hm, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread_crit_edge, %bb.hy, %bb.hu, %bb.ht, %bb.ho
  %i.bma = phi double [ %.pre1611, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread_crit_edge ], [ %i.bly, %bb.hy ], [ %i.blc, %bb.hu ], [ %i.bkq, %bb.ht ], [ %spec.select1784, %bb.hm ], [ %i.bjn, %bb.ho ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bma, ptr %i.bmb, align 8
  %i.bmc = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.hz

bb.hz:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153
  %.sroa.0.35 = phi ptr [ %i.bmc, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread ], [ %.sroa.0.2, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153 ]
  %.0.i24.i155 = phi i32 [ 0, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153.thread ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156: ; preds = %bb.hz, %.noexc26.i172
  %.sroa.0.36 = phi ptr [ %i.bit, %.noexc26.i172 ], [ %.sroa.0.35, %bb.hz ]
  %.1.i25.i157 = phi i32 [ %i.biq, %.noexc26.i172 ], [ %.0.i24.i155, %bb.hz ] ; 2 uses
  %.not60.i.i158 = icmp eq i32 %.1.i25.i157, 0    ; 2 uses
  %..i.i160 = select i1 %.not59.i.i140, i32 0, i32 9
  %spec.select1416 = select i1 %.not60.i.i158, i32 %..i.i160, i32 %.1.i25.i157
  %.not169.i = and i1 %.not59.i.i140, %.not60.i.i158
  br i1 %.not169.i, label %select.unfold1300, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ia:                                            ; preds = %bb.hf
  %i.bmd = select i1 %i.bfb, i64 19, i64 20       ; 2 uses
  %i.bme = icmp ugt i64 %.044.i.i119, %i.bmd
  br i1 %i.bme, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bmf = icmp eq i64 %.044.i.i119, %i.bmd
  br i1 %i.bmf, label %bb.ic, label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  br i1 %i.bfb, label %bb.id, label %bb.if

bb.id:                                            ; preds = %bb.ic
  %i.bmg = icmp ugt i64 %.2761, -9223372036854775808
  br i1 %i.bmg, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bmh = sub i64 0, %.2761
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmi = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bmh, ptr %i.bmi, align 8
  %i.bmj = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmk = load i8, ptr %.1752, align 1, !tbaa !36
  %i.bml = zext i8 %i.bmk to i64
  %i.bmm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bml
  %i.bmn = load i8, ptr %i.bmm, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i138 = icmp eq i8 %i.bmn, 0
  br i1 %.not58.i.i138, label %select.unfold1300, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.if:                                            ; preds = %bb.ic
  %i.bmo = icmp ne i8 %i.axv, 49
  %i.bmp = icmp sgt i64 %.2761, -1
  %or.cond5.i.i137 = select i1 %i.bmo, i1 true, i1 %i.bmp
  br i1 %or.cond5.i.i137, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1289

bb.ig:                                            ; preds = %bb.ib
  %i.bmq = icmp slt i64 %.2761, 0
  br i1 %i.bmq, label %.thread1289, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bmr = sub nsw i64 0, %.2761
  %i.bms = select i1 %i.bfb, i64 %i.bmr, i64 %.2761
  br label %.thread1289

.thread1289:                                      ; preds = %bb.ig, %bb.if, %bb.ih
  %.sink1787 = phi i64 [ 7782220156096217088, %bb.ih ], [ 8430738502437568512, %bb.if ], [ 8430738502437568512, %bb.ig ]
  %.sink1785 = phi i64 [ %i.bms, %bb.ih ], [ %.2761, %bb.if ], [ %.2761, %bb.ig ]
  store i64 %.sink1787, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmt = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1785, ptr %i.bmt, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmu = load i8, ptr %.1752, align 1, !tbaa !36
  %i.bmv = zext i8 %i.bmu to i64
  %i.bmw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmv
  %i.bmx = load i8, ptr %i.bmw, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i135 = icmp eq i8 %i.bmx, 0
  br i1 %.not57.i.i135, label %select.unfold1300, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295: ; preds = %bb.ia, %bb.id
  %i.bmy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bmz = load i8, ptr %i.bmy, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bna = trunc nuw i8 %i.bmz to i1
  br i1 %i.bna, label %.preheader1788, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1788:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295, %.preheader1788
  %.122.i.i131 = phi ptr [ %i.bne, %.preheader1788 ], [ %i.bfd, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295 ] ; 3 uses
  %i.bnb = load i8, ptr %.122.i.i131, align 1, !tbaa !36 ; 2 uses
  %i.bnc = add i8 %i.bnb, -48
  %i.bnd = icmp ult i8 %i.bnc, 10
  %i.bne = getelementptr inbounds nuw i8, ptr %.122.i.i131, i64 1
  br i1 %i.bnd, label %.preheader1788, label %bb.ii, !llvm.loop !14

bb.ii:                                            ; preds = %.preheader1788
  %i.bnf = zext i8 %i.bnb to i64
  %i.bng = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnf
  %i.bnh = load i8, ptr %i.bng, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i132 = icmp eq i8 %i.bnh, 0
  br i1 %.not.i.i132, label %.split1706, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1706:                                       ; preds = %bb.ii
  %i.bni = ptrtoint ptr %.122.i.i131 to i64
  %i.bnj = ptrtoint ptr %i.axu to i64
  %i.bnk = sub i64 %i.bni, %i.bnj                 ; 3 uses
  %i.bnl = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 8
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !48
  %i.bno = ptrtoint ptr %.sroa.172.2 to i64
  %i.bnp = ptrtoint ptr %i.bnn to i64
  %i.bnq = sub i64 %i.bno, %i.bnp
  %i.bnr = or i64 %i.bnq, 6485183463413514240
  store i64 %i.bnr, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bns = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bnt = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7615.ptr = getelementptr inbounds nuw i8, ptr %.0608.lcssa, i64 %.7615.add
  %i.ko = load i8, ptr %.7615.ptr, align 1, !tbaa !36 ; 2 uses
  %i.kp = add i8 %i.ko, -48                       ; 2 uses
  %i.kq = icmp ult i8 %i.kp, 10
  br i1 %i.kq, label %.lr.ph1257, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !10

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5613.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1257, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5621.lcssa1439 = phi i64 [ %.4620699, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kn, %.lr.ph1257 ]
  %.7615.idx.lcssa12531438 = phi i64 [ %.5613.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7615.add, %.lr.ph1257 ] ; 2 uses
  %i.kr = phi i8 [ %i.kh, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.ko, %.lr.ph1257 ]
  %.7615.ptr.le = getelementptr inbounds nuw i8, ptr %.0608.lcssa, i64 %.7615.idx.lcssa12531438 ; 2 uses
  %i.ks = ptrtoint ptr %.7615.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7615.idx.lcssa12531438
  %i.kt = sub i64 %i.ks, %i.jd
  %sext.i.i = shl i64 %i.kt, 32
  %i.ku = ashr exact i64 %sext.i.i, 32
  br label %bb.am

bb.am:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.aj
  %i.kv = phi i8 [ %i.kr, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1248, %bb.aj ] ; 2 uses
  %.0623 = phi i64 [ %gepdiff, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.aj ] ; 2 uses
  %.2618 = phi i64 [ %.5621.lcssa1439, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0616.lcssa, %bb.aj ] ; 14 uses
  %.1609 = phi ptr [ %.7615.ptr.le, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0608.lcssa, %bb.aj ] ; 4 uses
  %.044.i.i = phi i64 [ %i.ku, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.je, %bb.aj ] ; 4 uses
  switch i8 %i.kv, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.kw = getelementptr inbounds nuw i8, ptr %.1609, i64 1 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !36  ; 3 uses
  %i.ky = icmp eq i8 %i.kx, 45
  switch i8 %i.kx, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.kz = getelementptr inbounds nuw i8, ptr %.1609, i64 2 ; 2 uses
  %.pre1373 = load i8, ptr %i.kz, align 1, !tbaa !36
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.la = phi i8 [ %i.kx, %bb.an ], [ %.pre1373, %bb.ao ]
  %.2610 = phi ptr [ %i.kw, %bb.an ], [ %i.kz, %bb.ao ] ; 3 uses
  %i.lb = add i8 %i.la, -48                       ; 2 uses
  %i.lc = icmp ult i8 %i.lb, 10
  br i1 %i.lc, label %.lr.ph1264, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1264:                                       ; preds = %bb.ap, %.lr.ph1264
  %i.ld = phi i8 [ %i.li, %.lr.ph1264 ], [ %i.lb, %bb.ap ]
  %.06051263 = phi i64 [ %i.lg, %.lr.ph1264 ], [ 0, %bb.ap ]
  %.3611.idx1262 = phi i64 [ %.3611.add, %.lr.ph1264 ], [ 0, %bb.ap ] ; 2 uses
  %i.le = mul nsw i64 %.06051263, 10
  %i.lf = zext nneg i8 %i.ld to i64
  %i.lg = add nsw i64 %i.le, %i.lf                ; 3 uses
  %.3611.add = add nuw nsw i64 %.3611.idx1262, 1  ; 3 uses
  %.3611.ptr = getelementptr inbounds nuw i8, ptr %.2610, i64 %.3611.add
  %i.lh = load i8, ptr %.3611.ptr, align 1, !tbaa !36 ; 2 uses
  %i.li = add i8 %i.lh, -48                       ; 2 uses
  %i.lj = icmp ult i8 %i.li, 10
  br i1 %i.lj, label %.lr.ph1264, label %bb.aq, !llvm.loop !11

bb.aq:                                            ; preds = %.lr.ph1264
  %.3611.ptr.le = getelementptr inbounds nuw i8, ptr %.2610, i64 %.3611.add
  %i.lk = icmp samesign ugt i64 %.3611.idx1262, 17
  br i1 %i.lk, label %.preheader1228, label %.thread709, !prof !108

.preheader1228:                                   ; preds = %bb.aq, %.preheader1228
  %.0.i257.i = phi ptr [ %i.ln, %.preheader1228 ], [ %.2610, %bb.aq ] ; 3 uses
  %i.ll = load i8, ptr %.0.i257.i, align 1, !tbaa !36
  %i.lm = icmp eq i8 %i.ll, 48
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 1
  br i1 %i.lm, label %.preheader1228, label %bb.ar, !llvm.loop !12

bb.ar:                                            ; preds = %.preheader1228
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 18
  %i.lp = icmp ugt ptr %.3611.ptr.le, %i.lo
  %spec.select = select i1 %i.lp, i64 999999999999999999, i64 %i.lg
  br label %.thread709

.thread709:                                       ; preds = %bb.ar, %bb.aq
  %.2607 = phi i64 [ %i.lg, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.lq = sub nsw i64 0, %.2607
  %i.lr = select i1 %i.ky, i64 %i.lq, i64 %.2607
  %i.ls = add nsw i64 %i.lr, %.0623
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.ji, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %.thread709, %bb.as
  %i.lt = phi i8 [ %i.lh, %.thread709 ], [ %i.kv, %bb.as ]
  %.2625713 = phi i64 [ %i.ls, %.thread709 ], [ %.0623, %bb.as ] ; 9 uses
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.lw, 0               ; 3 uses
  %i.lx = icmp ugt i64 %.044.i.i, 19
  br i1 %i.lx, label %.preheader1227, label %.critedge.i.i

.preheader1227:                                   ; preds = %bb.at, %.critedge.i265.i
  %i.ly = phi i8 [ %.pre1374, %.critedge.i265.i ], [ %i.ir, %bb.at ]
  %.0.i264.i = phi ptr [ %i.lz, %.critedge.i265.i ], [ %i.iq, %bb.at ] ; 2 uses
  switch i8 %i.ly, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i265.i
    i8 46, label %.critedge.i265.i
  ]

.critedge.i265.i:                                 ; preds = %.preheader1227, %.preheader1227
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i264.i, i64 1 ; 2 uses
  %.pre1374 = load i8, ptr %i.lz, align 1, !tbaa !36
  br label %.preheader1227, !llvm.loop !13

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1227
  %i.ma = ptrtoint ptr %.0.i264.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.jd
  %i.mb = sub i64 %.neg.i.i, %i.ma
  %i.mc = icmp ugt i64 %i.mb, 19
  br i1 %i.mc, label %.noexc261.i, label %.critedge.i.i, !prof !108

.noexc261.i:                                      ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.md = call fastcc noundef i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.id, ptr noundef %i.e)
  %i.me = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.mf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.me, ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.at
  %i.mh = add i64 %.2625713, -309
  %or.cond.i258.i = icmp ult i64 %i.mh, -651
  br i1 %or.cond.i258.i, label %bb.au, label %bb.av, !prof !124

bb.au:                                            ; preds = %.critedge.i.i
  %i.mi = icmp slt i64 %.2625713, -342
  %i.mj = icmp eq i64 %.2618, 0
  %or.cond3.i.i = or i1 %i.mj, %i.mi
  br i1 %or.cond3.i.i, label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.au
  %i.mk = select i1 %i.io, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.ml = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.mk, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br i1 %.not59.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.av:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.mn = add nsw i64 %.2625713, 22
  %or.cond.i266.i = icmp ult i64 %i.mn, 45
  %i.mo = icmp ult i64 %.2618, 9007199254740992
  %or.cond3.i267.i = and i1 %i.mo, %or.cond.i266.i
  br i1 %or.cond3.i267.i, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.mp = uitofp nneg i64 %.2618 to double        ; 2 uses
  %i.mq = icmp slt i64 %.2625713, 0
  br i1 %i.mq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mr = sub nsw i64 0, %.2625713
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !123
  %i.mu = fdiv double %i.mp, %i.mt
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2625713
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !123
  %i.mx = fmul double %i.mw, %i.mp
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi double [ %i.mx, %bb.ay ], [ %i.mu, %bb.ax ] ; 2 uses
  %i.my = fneg double %storemerge.i.i
  %spec.select1514 = select i1 %i.io, double %i.my, double %storemerge.i.i
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ba:                                            ; preds = %bb.av
  %i.mz = icmp eq i64 %.2618, 0
  br i1 %i.mz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.na = select i1 %i.io, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bc:                                            ; preds = %bb.ba
  %i.nb = mul nsw i64 %.2625713, 217706
  %i.nc = ashr i64 %i.nb, 16
  %i.nd = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2618, i1 true) ; 2 uses
  %i.ne = shl i64 %.2618, %i.nd                   ; 2 uses
  %i.nf = trunc nsw i64 %.2625713 to i32
  %i.ng = shl nsw i32 %i.nf, 1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.nh ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 5472
  %i.nk = load i64, ptr %i.nj, align 16, !tbaa !40
  %i.nl = zext i64 %i.ne to i128
  %i.nm = zext i64 %i.nk to i128
  %i.nn = mul nuw i128 %i.nm, %i.nl               ; 2 uses
  %i.no = trunc i128 %i.nn to i64                 ; 2 uses
  %i.np = lshr i128 %i.nn, 64
  %i.nq = trunc nuw i128 %i.np to i64             ; 3 uses
  %i.nr = and i64 %i.nq, 511
  %i.ns = icmp eq i64 %i.nr, 511
  br i1 %i.ns, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nt = getelementptr i8, ptr %i.ni, i64 5480
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.ne, i64 %i.nu) ; 2 uses
  %i.nv = add i64 %2, %i.no                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.nv
  %i.nw = zext i1 %3 to i64
  %spec.select.i268.i = add nuw i64 %i.nw, %i.nq
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i268.i, %bb.bd ], [ %i.nq, %bb.bc ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.nv, %bb.bd ], [ %i.no, %bb.bc ]
  %i.nx = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.ny = add nuw nsw i64 %i.nx, 9                ; 2 uses
  %i.nz = lshr i64 %.sroa.7.1.i.i, %i.ny          ; 6 uses
  %reass.sub = sub nsw i64 %i.nc, %i.nd
  %.neg = add nsw i64 %reass.sub, %i.nx           ; 4 uses
  %i.oa = add nsw i64 %.neg, 1086
  %i.ob = icmp slt i64 %.neg, -1085
  br i1 %i.ob, label %bb.bf, label %bb.bi, !prof !108

bb.bf:                                            ; preds = %bb.be
  %i.oc = icmp samesign ult i64 %.neg, -1148
  br i1 %i.oc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.od = select i1 %i.io, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bh:                                            ; preds = %bb.bf
  %i.oe = sub nuw nsw i64 -1085, %.neg
  %i.of = lshr i64 %i.nz, %i.oe                   ; 2 uses
  %i.og = and i64 %i.of, 1
  %i.oh = add nuw nsw i64 %i.og, %i.of            ; 2 uses
  %i.oi = lshr i64 %i.oh, 1
  %i.oj = icmp samesign ugt i64 %i.oh, 9007199254740991
  %i.ok = and i64 %i.oi, 13510798882111487
  %i.ol = select i1 %i.oj, i64 4503599627370496, i64 0
  %i.om = select i1 %i.io, i64 -9223372036854775808, i64 0
  %i.on = or disjoint i64 %i.ol, %i.om
  %i.oo = or disjoint i64 %i.on, %i.ok
  %i.op = bitcast i64 %i.oo to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.be
  %i.oq = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.or = add nsw i64 %.2625713, 4
  %i.os = icmp ult i64 %i.or, 28
  %or.cond7.i.i = and i1 %i.os, %i.oq
  %i.ot = and i64 %i.nz, 3
  %i.ou = icmp eq i64 %i.ot, 1
  %i.ov = select i1 %or.cond7.i.i, i1 %i.ou, i1 false
  br i1 %i.ov, label %bb.bj, label %bb.bk, !prof !108

bb.bj:                                            ; preds = %bb.bi
  %i.ow = shl i64 %i.nz, %i.ny
  %i.ox = icmp eq i64 %i.ow, %.sroa.7.1.i.i
  %i.oy = and i64 %i.nz, 72057594037927932
  %spec.select90.i.i = select i1 %i.ox, i64 %i.oy, i64 %i.nz
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i.i = phi i64 [ %i.nz, %bb.bi ], [ %spec.select90.i.i, %bb.bj ] ; 2 uses
  %i.oz = and i64 %.080.i.i, 1
  %i.pa = add nuw nsw i64 %i.oz, %.080.i.i        ; 2 uses
  %i.pb = icmp samesign ugt i64 %i.pa, 18014398509481983 ; 2 uses
  %i.pc = zext i1 %i.pb to i64
  %spec.select92.i.i = add nuw nsw i64 %i.oa, %i.pc ; 2 uses
  %i.pd = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.pd, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bl, !prof !108

bb.bl:                                            ; preds = %bb.bk
  %i.pe = lshr i64 %i.pa, 1
  %i.pf = and i64 %i.pe, 13510798882111487
  %i.pg = select i1 %i.pb, i64 0, i64 %i.pf
  %i.ph = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.pi = select i1 %i.io, i64 -9223372036854775808, i64 0
  %i.pj = or disjoint i64 %i.pg, %i.pi
  %i.pk = or i64 %i.pj, %i.ph
  %i.pl = bitcast i64 %i.pk to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bk
  %i.pm = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.id, ptr noundef %i.f)
  br i1 %i.pm, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bm

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1375 = load double, ptr %i.f, align 8, !tbaa !123
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.az, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.pn = phi double [ %.pre1375, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.pl, %bb.bl ], [ %i.op, %bb.bh ], [ %i.od, %bb.bg ], [ %spec.select1514, %bb.az ], [ %i.na, %bb.bb ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.po = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pn, ptr %i.po, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.pp, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i259.i = phi i32 [ 0, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.as
  %i.pq = select i1 %i.io, i64 19, i64 20         ; 2 uses
  %i.pr = icmp ugt i64 %.044.i.i, %i.pq
  br i1 %i.pr, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ps = icmp eq i64 %.044.i.i, %i.pq
  br i1 %i.ps, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.io, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pt = icmp ugt i64 %.2618, -9223372036854775808
  br i1 %i.pt, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pu = sub i64 0, %.2618
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !40
  %i.pv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.pu, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.px = load i8, ptr %.1609, align 1, !tbaa !36
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.qa, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qb = icmp ne i8 %i.in, 49
  %i.qc = icmp sgt i64 %.2618, -1
  %or.cond5.i.i = select i1 %i.qb, i1 true, i1 %i.qc
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread716

bb.bt:                                            ; preds = %bb.bo
  %i.qd = icmp slt i64 %.2618, 0
  br i1 %i.qd, label %.thread716, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qe = sub nsw i64 0, %.2618
  %i.qf = select i1 %i.io, i64 %i.qe, i64 %.2618
  br label %.thread716

.thread716:                                       ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1516 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qf, %bb.bu ], [ %.2618, %bb.bs ], [ %.2618, %bb.bt ]
  store i64 %.sink1516, ptr %i.y, align 8, !tbaa !40
  %i.qg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qg, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qh = load i8, ptr %.1609, align 1, !tbaa !36
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.qk, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721: ; preds = %bb.bn, %bb.bq
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qm = load i8, ptr %i.ql, align 8, !tbaa !125, !range !50, !noundef !51
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %.preheader1567, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1567:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, %.preheader1567
  %.122.i.i = phi ptr [ %i.qr, %.preheader1567 ], [ %i.iq, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721 ] ; 3 uses
  %i.qo = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.qp = add i8 %i.qo, -48
  %i.qq = icmp ult i8 %i.qp, 10
  %i.qr = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.qq, label %.preheader1567, label %bb.bv, !llvm.loop !14

bb.bv:                                            ; preds = %.preheader1567
  %i.qs = zext i8 %i.qo to i64
  %i.qt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i249.i = icmp eq i8 %i.qu, 0
  br i1 %.not.i249.i, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.qv = ptrtoint ptr %.122.i.i to i64
  %i.qw = ptrtoint ptr %i.id to i64
  %i.qx = sub i64 %i.qv, %i.qw                    ; 3 uses
  %i.qy = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !48
  %i.rb = ptrtoint ptr %i.n to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = or i64 %i.rd, 6485183463413514240
  store i64 %i.re, ptr %i.y, align 8, !tbaa !40
  %i.rf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rg, ptr nonnull align 1 %i.id, i64 %i.qx, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.qx
  %i.ri = trunc i64 %i.qx to i32
  store i32 %i.ri, ptr %i.n, align 1
  store i8 0, ptr %i.rh, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.au, %bb.bv, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread716, %bb.bs, %bb.br, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.ap
  %.0.i176.i1106.ph = phi i32 [ 9, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread716 ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721 ], [ 9, %bb.bv ], [ 9, %bb.au ], [ 9, %bb.ap ]
end_hunk_9
begin_hunk_10_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7566.ptr = getelementptr inbounds nuw i8, ptr %.0559.lcssa, i64 %.7566.add
  %i.ahm = load i8, ptr %.7566.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ahn = add i8 %i.ahm, -48                     ; 2 uses
  %i.aho = icmp ult i8 %i.ahn, 10
  br i1 %i.aho, label %.lr.ph1296, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, !llvm.loop !10

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i.i
  %.not1200 = icmp eq i64 %.5564.add, 1
  br i1 %.not1200, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread: ; preds = %.lr.ph1296, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i
  %.5572.lcssa1457 = phi i64 [ %.4571888, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.ahl, %.lr.ph1296 ]
  %.7566.idx.lcssa12921456 = phi i64 [ %.5564.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %.7566.add, %.lr.ph1296 ] ; 2 uses
  %i.ahp = phi i8 [ %i.ahf, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.ahm, %.lr.ph1296 ]
  %.7566.ptr.le = getelementptr inbounds nuw i8, ptr %.0559.lcssa, i64 %.7566.idx.lcssa12921456 ; 2 uses
  %i.ahq = ptrtoint ptr %.7566.ptr.le to i64
  %gepdiff1340 = sub nsw i64 1, %.7566.idx.lcssa12921456
  %i.ahr = sub i64 %i.ahq, %i.agb
  %sext.i.i.i = shl i64 %i.ahr, 32
  %i.ahs = ashr exact i64 %sext.i.i.i, 32
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, %bb.dn
  %i.aht = phi i8 [ %i.ahp, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.lcssa1237, %bb.dn ] ; 2 uses
  %.0588 = phi i64 [ %gepdiff1340, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ 0, %bb.dn ] ; 2 uses
  %.2569 = phi i64 [ %.5572.lcssa1457, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0567.lcssa, %bb.dn ] ; 14 uses
  %.1560 = phi ptr [ %.7566.ptr.le, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0559.lcssa, %bb.dn ] ; 4 uses
  %.044.i.i.i = phi i64 [ %i.ahs, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %i.agc, %bb.dn ] ; 4 uses
  switch i8 %i.aht, label %bb.dw [
    i8 101, label %bb.dr
    i8 69, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %i.ahu = getelementptr inbounds nuw i8, ptr %.1560, i64 1 ; 2 uses
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !36 ; 3 uses
  %i.ahw = icmp eq i8 %i.ahv, 45
  switch i8 %i.ahv, label %bb.dt [
    i8 45, label %bb.ds
    i8 43, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr
  %i.ahx = getelementptr inbounds nuw i8, ptr %.1560, i64 2 ; 2 uses
  %.pre1377 = load i8, ptr %i.ahx, align 1, !tbaa !36
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.ahy = phi i8 [ %i.ahv, %bb.dr ], [ %.pre1377, %bb.ds ]
  %.2561 = phi ptr [ %i.ahu, %bb.dr ], [ %i.ahx, %bb.ds ] ; 3 uses
  %i.ahz = add i8 %i.ahy, -48                     ; 2 uses
  %i.aia = icmp ult i8 %i.ahz, 10
  br i1 %i.aia, label %.lr.ph1303, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1303:                                       ; preds = %bb.dt, %.lr.ph1303
  %i.aib = phi i8 [ %i.aig, %.lr.ph1303 ], [ %i.ahz, %bb.dt ]
  %.05561302 = phi i64 [ %i.aie, %.lr.ph1303 ], [ 0, %bb.dt ]
  %.3562.idx1301 = phi i64 [ %.3562.add, %.lr.ph1303 ], [ 0, %bb.dt ] ; 2 uses
  %i.aic = mul nsw i64 %.05561302, 10
  %i.aid = zext nneg i8 %i.aib to i64
  %i.aie = add nsw i64 %i.aic, %i.aid             ; 3 uses
  %.3562.add = add nuw nsw i64 %.3562.idx1301, 1  ; 3 uses
  %.3562.ptr = getelementptr inbounds nuw i8, ptr %.2561, i64 %.3562.add
  %i.aif = load i8, ptr %.3562.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aig = add i8 %i.aif, -48                     ; 2 uses
  %i.aih = icmp ult i8 %i.aig, 10
  br i1 %i.aih, label %.lr.ph1303, label %bb.du, !llvm.loop !11

bb.du:                                            ; preds = %.lr.ph1303
  %.3562.ptr.le = getelementptr inbounds nuw i8, ptr %.2561, i64 %.3562.add
  %i.aii = icmp samesign ugt i64 %.3562.idx1301, 17
  br i1 %i.aii, label %.preheader1223, label %.thread898, !prof !108

.preheader1223:                                   ; preds = %bb.du, %.preheader1223
  %.0.i22.i.i = phi ptr [ %i.ail, %.preheader1223 ], [ %.2561, %bb.du ] ; 3 uses
  %i.aij = load i8, ptr %.0.i22.i.i, align 1, !tbaa !36
  %i.aik = icmp eq i8 %i.aij, 48
  %i.ail = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 1
  br i1 %i.aik, label %.preheader1223, label %bb.dv, !llvm.loop !12

bb.dv:                                            ; preds = %.preheader1223
  %i.aim = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 18
  %i.ain = icmp ugt ptr %.3562.ptr.le, %i.aim
  %spec.select1186 = select i1 %i.ain, i64 999999999999999999, i64 %i.aie
  br label %.thread898

.thread898:                                       ; preds = %bb.dv, %bb.du
  %.2558 = phi i64 [ %i.aie, %bb.du ], [ %spec.select1186, %bb.dv ] ; 2 uses
  %i.aio = sub nsw i64 0, %.2558
  %i.aip = select i1 %i.ahw, i64 %i.aio, i64 %.2558
  %i.aiq = add nsw i64 %i.aip, %.0588
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dq
  br i1 %i.agg, label %bb.dx, label %bb.er

bb.dx:                                            ; preds = %.thread898, %bb.dw
  %i.air = phi i8 [ %i.aif, %.thread898 ], [ %i.aht, %bb.dw ]
  %.2590902 = phi i64 [ %i.aiq, %.thread898 ], [ %.0588, %bb.dw ] ; 9 uses
  %i.ais = zext i8 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i.i = icmp eq i8 %i.aiu, 0            ; 3 uses
  %i.aiv = icmp ugt i64 %.044.i.i.i, 19
  br i1 %i.aiv, label %.preheader1222, label %.critedge.i.i.i

.preheader1222:                                   ; preds = %bb.dx, %.critedge.i29.i.i
  %i.aiw = phi i8 [ %.pre1378, %.critedge.i29.i.i ], [ %i.afp, %bb.dx ]
  %.0.i28.i.i = phi ptr [ %i.aix, %.critedge.i29.i.i ], [ %i.afo, %bb.dx ] ; 2 uses
  switch i8 %i.aiw, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i [
    i8 48, label %.critedge.i29.i.i
    i8 46, label %.critedge.i29.i.i
  ]

.critedge.i29.i.i:                                ; preds = %.preheader1222, %.preheader1222
  %i.aix = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 1 ; 2 uses
  %.pre1378 = load i8, ptr %i.aix, align 1, !tbaa !36
  br label %.preheader1222, !llvm.loop !13

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i: ; preds = %.preheader1222
  %i.aiy = ptrtoint ptr %.0.i28.i.i to i64
  %.neg.i.i.i = add i64 %.044.i.i.i, %i.agb
  %i.aiz = sub i64 %.neg.i.i.i, %i.aiy
  %i.aja = icmp ugt i64 %i.aiz, 19
  br i1 %i.aja, label %.noexc26.i.i, label %.critedge.i.i.i, !prof !108

.noexc26.i.i:                                     ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ajb = call fastcc noundef i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.yf, ptr noundef %i.c)
  %i.ajc = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajd = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajc, ptr %i.ajd, align 8
  %i.aje = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

.critedge.i.i.i:                                  ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i, %bb.dx
  %i.ajf = add i64 %.2590902, -309
  %or.cond.i23.i.i = icmp ult i64 %i.ajf, -651
  br i1 %or.cond.i23.i.i, label %bb.dy, label %bb.dz, !prof !124

bb.dy:                                            ; preds = %.critedge.i.i.i
  %i.ajg = icmp slt i64 %.2590902, -342
  %i.ajh = icmp eq i64 %.2569, 0
  %or.cond3.i.i.i = or i1 %i.ajh, %i.ajg
  br i1 %or.cond3.i.i.i, label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread: ; preds = %bb.dy
  %i.aji = select i1 %i.afm, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajj = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.aji, ptr %i.ajj, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i.i, label %select.unfold916, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dz:                                            ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ajl = add nsw i64 %.2590902, 22
  %or.cond.i30.i.i = icmp ult i64 %i.ajl, 45
  %i.ajm = icmp ult i64 %.2569, 9007199254740992
  %or.cond3.i31.i.i = and i1 %i.ajm, %or.cond.i30.i.i
  br i1 %or.cond3.i31.i.i, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.ajn = uitofp nneg i64 %.2569 to double       ; 2 uses
  %i.ajo = icmp slt i64 %.2590902, 0
  br i1 %i.ajo, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ajp = sub nsw i64 0, %.2590902
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ajp
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !123
  %i.ajs = fdiv double %i.ajn, %i.ajr
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2590902
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !123
  %i.ajv = fmul double %i.aju, %i.ajn
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %storemerge.i.i.i = phi double [ %i.ajv, %bb.ec ], [ %i.ajs, %bb.eb ] ; 2 uses
  %i.ajw = fneg double %storemerge.i.i.i
  %spec.select1525 = select i1 %i.afm, double %i.ajw, double %storemerge.i.i.i
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ee:                                            ; preds = %bb.dz
  %i.ajx = icmp eq i64 %.2569, 0
  br i1 %i.ajx, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.ajy = select i1 %i.afm, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.eg:                                            ; preds = %bb.ee
  %i.ajz = mul nsw i64 %.2590902, 217706
  %i.aka = ashr i64 %i.ajz, 16
  %i.akb = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2569, i1 true) ; 2 uses
  %i.akc = shl i64 %.2569, %i.akb                 ; 2 uses
  %i.akd = trunc nsw i64 %.2590902 to i32
  %i.ake = shl nsw i32 %i.akd, 1
  %i.akf = sext i32 %i.ake to i64
  %i.akg = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.akf ; 2 uses
  %i.akh = getelementptr i8, ptr %i.akg, i64 5472
  %i.aki = load i64, ptr %i.akh, align 16, !tbaa !40
  %i.akj = zext i64 %i.akc to i128
  %i.akk = zext i64 %i.aki to i128
  %i.akl = mul nuw i128 %i.akk, %i.akj            ; 2 uses
  %i.akm = trunc i128 %i.akl to i64               ; 2 uses
  %i.akn = lshr i128 %i.akl, 64
  %i.ako = trunc nuw i128 %i.akn to i64           ; 3 uses
  %i.akp = and i64 %i.ako, 511
  %i.akq = icmp eq i64 %i.akp, 511
  br i1 %i.akq, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.akr = getelementptr i8, ptr %i.akg, i64 5480
  %i.aks = load i64, ptr %i.akr, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.akc, i64 %i.aks) ; 2 uses
  %i.akt = add i64 %4, %i.akm                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.akt
  %i.aku = zext i1 %5 to i64
  %spec.select.i32.i.i = add nuw i64 %i.aku, %i.ako
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i32.i.i, %bb.eh ], [ %i.ako, %bb.eg ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.akt, %bb.eh ], [ %i.akm, %bb.eg ]
  %i.akv = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.akw = add nuw nsw i64 %i.akv, 9              ; 2 uses
  %i.akx = lshr i64 %.sroa.7.1.i.i.i, %i.akw      ; 6 uses
  %reass.sub1342 = sub nsw i64 %i.aka, %i.akb
  %.neg1341 = add nsw i64 %reass.sub1342, %i.akv  ; 4 uses
  %i.aky = add nsw i64 %.neg1341, 1086
  %i.akz = icmp slt i64 %.neg1341, -1085
  br i1 %i.akz, label %bb.ej, label %bb.em, !prof !108

bb.ej:                                            ; preds = %bb.ei
  %i.ala = icmp samesign ult i64 %.neg1341, -1148
  br i1 %i.ala, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.alb = select i1 %i.afm, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.el:                                            ; preds = %bb.ej
  %i.alc = sub nuw nsw i64 -1085, %.neg1341
  %i.ald = lshr i64 %i.akx, %i.alc                ; 2 uses
  %i.ale = and i64 %i.ald, 1
  %i.alf = add nuw nsw i64 %i.ale, %i.ald         ; 2 uses
  %i.alg = lshr i64 %i.alf, 1
  %i.alh = icmp samesign ugt i64 %i.alf, 9007199254740991
  %i.ali = and i64 %i.alg, 13510798882111487
  %i.alj = select i1 %i.alh, i64 4503599627370496, i64 0
  %i.alk = select i1 %i.afm, i64 -9223372036854775808, i64 0
  %i.all = or disjoint i64 %i.alj, %i.alk
  %i.alm = or disjoint i64 %i.all, %i.ali
  %i.aln = bitcast i64 %i.alm to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.em:                                            ; preds = %bb.ei
  %i.alo = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.alp = add nsw i64 %.2590902, 4
  %i.alq = icmp ult i64 %i.alp, 28
  %or.cond7.i.i.i = and i1 %i.alq, %i.alo
  %i.alr = and i64 %i.akx, 3
  %i.als = icmp eq i64 %i.alr, 1
  %i.alt = select i1 %or.cond7.i.i.i, i1 %i.als, i1 false
  br i1 %i.alt, label %bb.en, label %bb.eo, !prof !108

bb.en:                                            ; preds = %bb.em
  %i.alu = shl i64 %i.akx, %i.akw
  %i.alv = icmp eq i64 %i.alu, %.sroa.7.1.i.i.i
  %i.alw = and i64 %i.akx, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.alv, i64 %i.alw, i64 %i.akx
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.080.i.i.i = phi i64 [ %i.akx, %bb.em ], [ %spec.select90.i.i.i, %bb.en ] ; 2 uses
  %i.alx = and i64 %.080.i.i.i, 1
  %i.aly = add nuw nsw i64 %i.alx, %.080.i.i.i    ; 2 uses
  %i.alz = icmp samesign ugt i64 %i.aly, 18014398509481983 ; 2 uses
  %i.ama = zext i1 %i.alz to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.aky, %i.ama ; 2 uses
  %i.amb = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.amb, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.ep, !prof !108

bb.ep:                                            ; preds = %bb.eo
  %i.amc = lshr i64 %i.aly, 1
  %i.amd = and i64 %i.amc, 13510798882111487
  %i.ame = select i1 %i.alz, i64 0, i64 %i.amd
  %i.amf = shl nuw nsw i64 %spec.select92.i.i.i, 52
  %i.amg = select i1 %i.afm, i64 -9223372036854775808, i64 0
  %i.amh = or disjoint i64 %i.ame, %i.amg
  %i.ami = or i64 %i.amh, %i.amf
  %i.amj = bitcast i64 %i.ami to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.eo
  %i.amk = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.yf, ptr noundef %i.d)
  br i1 %i.amk, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, label %bb.eq

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.pre1379 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread: ; preds = %bb.ed, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, %bb.ep, %bb.el, %bb.ek, %bb.ef
  %i.aml = phi double [ %.pre1379, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge ], [ %i.amj, %bb.ep ], [ %i.aln, %bb.el ], [ %i.alb, %bb.ek ], [ %spec.select1525, %bb.ed ], [ %i.ajy, %bb.ef ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.aml, ptr %i.amm, align 8
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.sroa.0.21 = phi ptr [ %i.amn, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ %.sroa.0.6, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  %.0.i24.i.i = phi i32 [ 0, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i: ; preds = %bb.eq, %.noexc26.i.i
  %.sroa.0.22 = phi ptr [ %i.aje, %.noexc26.i.i ], [ %.sroa.0.21, %bb.eq ]
  %.1.i25.i.i = phi i32 [ %i.ajb, %.noexc26.i.i ], [ %.0.i24.i.i, %bb.eq ] ; 2 uses
  %.not60.i.i.i = icmp eq i32 %.1.i25.i.i, 0      ; 2 uses
  %..i.i.i = select i1 %.not59.i.i.i, i32 0, i32 9
  %spec.select1187 = select i1 %.not60.i.i.i, i32 %..i.i.i, i32 %.1.i25.i.i
  %.not165.i = and i1 %.not59.i.i.i, %.not60.i.i.i
  br i1 %.not165.i, label %select.unfold916, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.er:                                            ; preds = %bb.dw
  %i.amo = select i1 %i.afm, i64 19, i64 20       ; 2 uses
  %i.amp = icmp ugt i64 %.044.i.i.i, %i.amo
  br i1 %i.amp, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread911, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.amq = icmp eq i64 %.044.i.i.i, %i.amo
  br i1 %i.amq, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  br i1 %i.afm, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.amr = icmp ugt i64 %.2569, -9223372036854775808
  br i1 %i.amr, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread911, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ams = sub i64 0, %.2569
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.ams, ptr %i.amt, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.amv = load i8, ptr %.1560, align 1, !tbaa !36
  %i.amw = zext i8 %i.amv to i64
  %i.amx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i.i = icmp eq i8 %i.amy, 0
  br i1 %.not58.i.i.i, label %select.unfold916, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ew:                                            ; preds = %bb.et
  %i.amz = icmp ne i8 %i.yg, 49
  %i.ana = icmp sgt i64 %.2569, -1
  %or.cond5.i.i.i = select i1 %i.amz, i1 true, i1 %i.ana
  br i1 %or.cond5.i.i.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread905

bb.ex:                                            ; preds = %bb.es
  %i.anb = icmp slt i64 %.2569, 0
  br i1 %i.anb, label %.thread905, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.anc = sub nsw i64 0, %.2569
  %i.and = select i1 %i.afm, i64 %i.anc, i64 %.2569
  br label %.thread905

.thread905:                                       ; preds = %bb.ex, %bb.ew, %bb.ey
  %.sink1528 = phi i64 [ 7782220156096217088, %bb.ey ], [ 8430738502437568512, %bb.ew ], [ 8430738502437568512, %bb.ex ]
  %.sink1526 = phi i64 [ %i.and, %bb.ey ], [ %.2569, %bb.ew ], [ %.2569, %bb.ex ]
  store i64 %.sink1528, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1526, ptr %i.ane, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anf = load i8, ptr %.1560, align 1, !tbaa !36
  %i.ang = zext i8 %i.anf to i64
  %i.anh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ang
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i.i = icmp eq i8 %i.ani, 0
  br i1 %.not57.i.i.i, label %select.unfold916, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread911: ; preds = %bb.er, %bb.eu
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ank = load i8, ptr %i.anj, align 8, !tbaa !125, !range !50, !noundef !51
  %i.anl = trunc nuw i8 %i.ank to i1
  br i1 %i.anl, label %.preheader1563, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1563:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread911, %.preheader1563
  %.122.i.i.i = phi ptr [ %i.anp, %.preheader1563 ], [ %i.afo, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread911 ] ; 3 uses
  %i.anm = load i8, ptr %.122.i.i.i, align 1, !tbaa !36 ; 2 uses
  %i.ann = add i8 %i.anm, -48
  %i.ano = icmp ult i8 %i.ann, 10
  %i.anp = getelementptr inbounds nuw i8, ptr %.122.i.i.i, i64 1
  br i1 %i.ano, label %.preheader1563, label %bb.ez, !llvm.loop !14

bb.ez:                                            ; preds = %.preheader1563
  %i.anq = zext i8 %i.anm to i64
  %i.anr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anq
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i275.i = icmp eq i8 %i.ans, 0
  br i1 %.not.i.i275.i, label %.split1465, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1465:                                       ; preds = %bb.ez
  %i.ant = ptrtoint ptr %.122.i.i.i to i64
  %i.anu = ptrtoint ptr %i.yf to i64
  %i.anv = sub i64 %i.ant, %i.anu                 ; 3 uses
  %i.anw = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !48
  %i.anz = ptrtoint ptr %.sroa.172.6 to i64
  %i.aoa = ptrtoint ptr %i.any to i64
  %i.aob = sub i64 %i.anz, %i.aoa
  %i.aoc = or i64 %i.aob, 6485183463413514240
  store i64 %i.aoc, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.aod = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.xs, i64 5 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7531.ptr = getelementptr inbounds nuw i8, ptr %.0524.lcssa, i64 %.7531.add
  %i.bgu = load i8, ptr %.7531.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bgv = add i8 %i.bgu, -48                     ; 2 uses
  %i.bgw = icmp ult i8 %i.bgv, 10
  br i1 %i.bgw, label %.lr.ph1323, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread, !llvm.loop !10

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i342.i
  %.not1205 = icmp eq i64 %.5529.add, 1
  br i1 %.not1205, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread: ; preds = %.lr.ph1323, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i
  %.5537.lcssa1471 = phi i64 [ %.45361045, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i ], [ %i.bgt, %.lr.ph1323 ]
  %.7531.idx.lcssa13191470 = phi i64 [ %.5529.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i ], [ %.7531.add, %.lr.ph1323 ] ; 2 uses
  %i.bgx = phi i8 [ %i.bgn, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i ], [ %i.bgu, %.lr.ph1323 ]
  %.7531.ptr.le = getelementptr inbounds nuw i8, ptr %.0524.lcssa, i64 %.7531.idx.lcssa13191470 ; 2 uses
  %i.bgy = ptrtoint ptr %.7531.ptr.le to i64
  %gepdiff1343 = sub nsw i64 1, %.7531.idx.lcssa13191470
  %i.bgz = sub i64 %i.bgy, %i.bfj
  %sext.i.i347.i = shl i64 %i.bgz, 32
  %i.bha = ashr exact i64 %sext.i.i347.i, 32
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread, %bb.gx
  %i.bhb = phi i8 [ %i.bgx, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread ], [ %.lcssa1232, %bb.gx ] ; 2 uses
  %.0539 = phi i64 [ %gepdiff1343, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread ], [ 0, %bb.gx ] ; 2 uses
  %.2534 = phi i64 [ %.5537.lcssa1471, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread ], [ %.0532.lcssa, %bb.gx ] ; 14 uses
  %.1525 = phi ptr [ %.7531.ptr.le, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread ], [ %.0524.lcssa, %bb.gx ] ; 4 uses
  %.044.i.i286.i = phi i64 [ %i.bha, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i344.i.thread ], [ %i.bfk, %bb.gx ] ; 4 uses
  switch i8 %i.bhb, label %bb.hg [
    i8 101, label %bb.hb
    i8 69, label %bb.hb
  ]

bb.hb:                                            ; preds = %bb.ha, %bb.ha
  %i.bhc = getelementptr inbounds nuw i8, ptr %.1525, i64 1 ; 2 uses
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !36 ; 3 uses
  %i.bhe = icmp eq i8 %i.bhd, 45
  switch i8 %i.bhd, label %bb.hd [
    i8 45, label %bb.hc
    i8 43, label %bb.hc
  ]

bb.hc:                                            ; preds = %bb.hb, %bb.hb
  %i.bhf = getelementptr inbounds nuw i8, ptr %.1525, i64 2 ; 2 uses
  %.pre1381 = load i8, ptr %i.bhf, align 1, !tbaa !36
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.bhg = phi i8 [ %i.bhd, %bb.hb ], [ %.pre1381, %bb.hc ]
  %.2526 = phi ptr [ %i.bhc, %bb.hb ], [ %i.bhf, %bb.hc ] ; 3 uses
  %i.bhh = add i8 %i.bhg, -48                     ; 2 uses
  %i.bhi = icmp ult i8 %i.bhh, 10
  br i1 %i.bhi, label %.lr.ph1330, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1330:                                       ; preds = %bb.hd, %.lr.ph1330
  %i.bhj = phi i8 [ %i.bho, %.lr.ph1330 ], [ %i.bhh, %bb.hd ]
  %.01329 = phi i64 [ %i.bhm, %.lr.ph1330 ], [ 0, %bb.hd ]
  %.3527.idx1328 = phi i64 [ %.3527.add, %.lr.ph1330 ], [ 0, %bb.hd ] ; 2 uses
  %i.bhk = mul nsw i64 %.01329, 10
  %i.bhl = zext nneg i8 %i.bhj to i64
  %i.bhm = add nsw i64 %i.bhk, %i.bhl             ; 3 uses
  %.3527.add = add nuw nsw i64 %.3527.idx1328, 1  ; 3 uses
  %.3527.ptr = getelementptr inbounds nuw i8, ptr %.2526, i64 %.3527.add
  %i.bhn = load i8, ptr %.3527.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bho = add i8 %i.bhn, -48                     ; 2 uses
  %i.bhp = icmp ult i8 %i.bho, 10
  br i1 %i.bhp, label %.lr.ph1330, label %bb.he, !llvm.loop !11

bb.he:                                            ; preds = %.lr.ph1330
  %.3527.ptr.le = getelementptr inbounds nuw i8, ptr %.2526, i64 %.3527.add
  %i.bhq = icmp samesign ugt i64 %.3527.idx1328, 17
  br i1 %i.bhq, label %.preheader1220, label %.thread1055, !prof !108

.preheader1220:                                   ; preds = %bb.he, %.preheader1220
  %.0.i22.i340.i = phi ptr [ %i.bht, %.preheader1220 ], [ %.2526, %bb.he ] ; 3 uses
  %i.bhr = load i8, ptr %.0.i22.i340.i, align 1, !tbaa !36
  %i.bhs = icmp eq i8 %i.bhr, 48
  %i.bht = getelementptr inbounds nuw i8, ptr %.0.i22.i340.i, i64 1
  br i1 %i.bhs, label %.preheader1220, label %bb.hf, !llvm.loop !12

bb.hf:                                            ; preds = %.preheader1220
  %i.bhu = getelementptr inbounds nuw i8, ptr %.0.i22.i340.i, i64 18
  %i.bhv = icmp ugt ptr %.3527.ptr.le, %i.bhu
  %spec.select1188 = select i1 %i.bhv, i64 999999999999999999, i64 %i.bhm
  br label %.thread1055

.thread1055:                                      ; preds = %bb.hf, %bb.he
  %.2 = phi i64 [ %i.bhm, %bb.he ], [ %spec.select1188, %bb.hf ] ; 2 uses
  %i.bhw = sub nsw i64 0, %.2
  %i.bhx = select i1 %i.bhe, i64 %i.bhw, i64 %.2
  %i.bhy = add nsw i64 %i.bhx, %.0539
  br label %bb.hh

bb.hg:                                            ; preds = %bb.ha
  br i1 %i.bfo, label %bb.hh, label %bb.ib

bb.hh:                                            ; preds = %.thread1055, %bb.hg
  %i.bhz = phi i8 [ %i.bhn, %.thread1055 ], [ %i.bhb, %bb.hg ]
  %.25411059 = phi i64 [ %i.bhy, %.thread1055 ], [ %.0539, %bb.hg ] ; 9 uses
  %i.bia = zext i8 %i.bhz to i64
  %i.bib = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bia
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i307.i = icmp eq i8 %i.bic, 0         ; 3 uses
  %i.bid = icmp ugt i64 %.044.i.i286.i, 19
  br i1 %i.bid, label %.preheader, label %.critedge.i.i308.i

.preheader:                                       ; preds = %bb.hh, %.critedge.i29.i336.i
  %i.bie = phi i8 [ %.pre1382, %.critedge.i29.i336.i ], [ %i.bex, %bb.hh ]
  %.0.i28.i335.i = phi ptr [ %i.bif, %.critedge.i29.i336.i ], [ %i.bew, %bb.hh ] ; 2 uses
  switch i8 %i.bie, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i337.i [
    i8 48, label %.critedge.i29.i336.i
    i8 46, label %.critedge.i29.i336.i
  ]

.critedge.i29.i336.i:                             ; preds = %.preheader, %.preheader
  %i.bif = getelementptr inbounds nuw i8, ptr %.0.i28.i335.i, i64 1 ; 2 uses
  %.pre1382 = load i8, ptr %i.bif, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !13

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i337.i: ; preds = %.preheader
  %i.big = ptrtoint ptr %.0.i28.i335.i to i64
  %.neg.i.i338.i = add i64 %.044.i.i286.i, %i.bfj
  %i.bih = sub i64 %.neg.i.i338.i, %i.big
  %i.bii = icmp ugt i64 %i.bih, 19
  br i1 %i.bii, label %.noexc26.i339.i, label %.critedge.i.i308.i, !prof !108

.noexc26.i339.i:                                  ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i337.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bij = call fastcc noundef i32 @_ZN8simdjson7icelake13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.axn, ptr noundef %i.a)
  %i.bik = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bil = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bik, ptr %i.bil, align 8
  %i.bim = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i323.i

.critedge.i.i308.i:                               ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i337.i, %bb.hh
  %i.bin = add i64 %.25411059, -309
  %or.cond.i23.i309.i = icmp ult i64 %i.bin, -651
  br i1 %or.cond.i23.i309.i, label %bb.hi, label %bb.hj, !prof !124

bb.hi:                                            ; preds = %.critedge.i.i308.i
  %i.bio = icmp slt i64 %.25411059, -342
  %i.bip = icmp eq i64 %.2534, 0
  %or.cond3.i.i334.i = or i1 %i.bip, %i.bio
  br i1 %or.cond3.i.i334.i, label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i323.i.thread, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i323.i.thread: ; preds = %bb.hi
  %i.biq = select i1 %i.beu, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bir = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.biq, ptr %i.bir, align 8
  %i.bis = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i307.i, label %select.unfold1073, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hj:                                            ; preds = %.critedge.i.i308.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bit = add nsw i64 %.25411059, 22
  %or.cond.i30.i310.i = icmp ult i64 %i.bit, 45
  %i.biu = icmp ult i64 %.2534, 9007199254740992
  %or.cond3.i31.i311.i = and i1 %i.biu, %or.cond.i30.i310.i
  br i1 %or.cond3.i31.i311.i, label %bb.hk, label %bb.ho

bb.hk:                                            ; preds = %bb.hj
  %i.biv = uitofp nneg i64 %.2534 to double       ; 2 uses
  %i.biw = icmp slt i64 %.25411059, 0
  br i1 %i.biw, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.bix = sub nsw i64 0, %.25411059
  %i.biy = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bix
  %i.biz = load double, ptr %i.biy, align 8, !tbaa !123
  %i.bja = fdiv double %i.biv, %i.biz
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  %i.bjb = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.25411059
  %i.bjc = load double, ptr %i.bjb, align 8, !tbaa !123
  %i.bjd = fmul double %i.bjc, %i.biv
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %storemerge.i.i333.i = phi double [ %i.bjd, %bb.hm ], [ %i.bja, %bb.hl ] ; 2 uses
  %i.bje = fneg double %storemerge.i.i333.i
  %spec.select1557 = select i1 %i.beu, double %i.bje, double %storemerge.i.i333.i
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread

bb.ho:                                            ; preds = %bb.hj
  %i.bjf = icmp eq i64 %.2534, 0
  br i1 %i.bjf, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bjg = select i1 %i.beu, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread

bb.hq:                                            ; preds = %bb.ho
  %i.bjh = mul nsw i64 %.25411059, 217706
  %i.bji = ashr i64 %i.bjh, 16
  %i.bjj = tail call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2534, i1 true) ; 2 uses
  %i.bjk = shl i64 %.2534, %i.bjj                 ; 2 uses
  %i.bjl = trunc nsw i64 %.25411059 to i32
  %i.bjm = shl nsw i32 %i.bjl, 1
  %i.bjn = sext i32 %i.bjm to i64
  %i.bjo = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bjn ; 2 uses
  %i.bjp = getelementptr i8, ptr %i.bjo, i64 5472
  %i.bjq = load i64, ptr %i.bjp, align 16, !tbaa !40
  %i.bjr = zext i64 %i.bjk to i128
  %i.bjs = zext i64 %i.bjq to i128
  %i.bjt = mul nuw i128 %i.bjs, %i.bjr            ; 2 uses
  %i.bju = trunc i128 %i.bjt to i64               ; 2 uses
  %i.bjv = lshr i128 %i.bjt, 64
  %i.bjw = trunc nuw i128 %i.bjv to i64           ; 3 uses
  %i.bjx = and i64 %i.bjw, 511
  %i.bjy = icmp eq i64 %i.bjx, 511
  br i1 %i.bjy, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.bjz = getelementptr i8, ptr %i.bjo, i64 5480
  %i.bka = load i64, ptr %i.bjz, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bjk, i64 %i.bka) ; 2 uses
  %i.bkb = add i64 %6, %i.bju                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bkb
  %i.bkc = zext i1 %7 to i64
  %spec.select.i32.i332.i = add nuw i64 %i.bkc, %i.bjw
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.sroa.7.1.i.i314.i = phi i64 [ %spec.select.i32.i332.i, %bb.hr ], [ %i.bjw, %bb.hq ] ; 3 uses
  %.sroa.037.0.i.i315.i = phi i64 [ %i.bkb, %bb.hr ], [ %i.bju, %bb.hq ]
  %i.bkd = lshr i64 %.sroa.7.1.i.i314.i, 63       ; 2 uses
  %i.bke = add nuw nsw i64 %i.bkd, 9              ; 2 uses
  %i.bkf = lshr i64 %.sroa.7.1.i.i314.i, %i.bke   ; 6 uses
  %reass.sub1345 = sub nsw i64 %i.bji, %i.bjj
  %.neg1344 = add nsw i64 %reass.sub1345, %i.bkd  ; 4 uses
  %i.bkg = add nsw i64 %.neg1344, 1086
  %i.bkh = icmp slt i64 %.neg1344, -1085
  br i1 %i.bkh, label %bb.ht, label %bb.hw, !prof !108

bb.ht:                                            ; preds = %bb.hs
  %i.bki = icmp samesign ult i64 %.neg1344, -1148
  br i1 %i.bki, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bkj = select i1 %i.beu, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread

bb.hv:                                            ; preds = %bb.ht
  %i.bkk = sub nuw nsw i64 -1085, %.neg1344
  %i.bkl = lshr i64 %i.bkf, %i.bkk                ; 2 uses
  %i.bkm = and i64 %i.bkl, 1
  %i.bkn = add nuw nsw i64 %i.bkm, %i.bkl         ; 2 uses
  %i.bko = lshr i64 %i.bkn, 1
  %i.bkp = icmp samesign ugt i64 %i.bkn, 9007199254740991
  %i.bkq = and i64 %i.bko, 13510798882111487
  %i.bkr = select i1 %i.bkp, i64 4503599627370496, i64 0
  %i.bks = select i1 %i.beu, i64 -9223372036854775808, i64 0
  %i.bkt = or disjoint i64 %i.bkr, %i.bks
  %i.bku = or disjoint i64 %i.bkt, %i.bkq
  %i.bkv = bitcast i64 %i.bku to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread

bb.hw:                                            ; preds = %bb.hs
  %i.bkw = icmp ult i64 %.sroa.037.0.i.i315.i, 2
  %i.bkx = add nsw i64 %.25411059, 4
  %i.bky = icmp ult i64 %i.bkx, 28
  %or.cond7.i.i316.i = and i1 %i.bky, %i.bkw
  %i.bkz = and i64 %i.bkf, 3
  %i.bla = icmp eq i64 %i.bkz, 1
  %i.blb = select i1 %or.cond7.i.i316.i, i1 %i.bla, i1 false
  br i1 %i.blb, label %bb.hx, label %bb.hy, !prof !108

bb.hx:                                            ; preds = %bb.hw
  %i.blc = shl i64 %i.bkf, %i.bke
  %i.bld = icmp eq i64 %i.blc, %.sroa.7.1.i.i314.i
  %i.ble = and i64 %i.bkf, 72057594037927932
  %spec.select90.i.i329.i = select i1 %i.bld, i64 %i.ble, i64 %i.bkf
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.080.i.i317.i = phi i64 [ %i.bkf, %bb.hw ], [ %spec.select90.i.i329.i, %bb.hx ] ; 2 uses
  %i.blf = and i64 %.080.i.i317.i, 1
  %i.blg = add nuw nsw i64 %i.blf, %.080.i.i317.i ; 2 uses
  %i.blh = icmp samesign ugt i64 %i.blg, 18014398509481983 ; 2 uses
  %i.bli = zext i1 %i.blh to i64
  %spec.select92.i.i319.i = add nuw nsw i64 %i.bkg, %i.bli ; 2 uses
  %i.blj = icmp samesign ugt i64 %spec.select92.i.i319.i, 2046
  br i1 %i.blj, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i, label %bb.hz, !prof !108

bb.hz:                                            ; preds = %bb.hy
  %i.blk = lshr i64 %i.blg, 1
  %i.bll = and i64 %i.blk, 13510798882111487
  %i.blm = select i1 %i.blh, i64 0, i64 %i.bll
  %i.bln = shl nuw nsw i64 %spec.select92.i.i319.i, 52
  %i.blo = select i1 %i.beu, i64 -9223372036854775808, i64 0
  %i.blp = or disjoint i64 %i.blm, %i.blo
  %i.blq = or i64 %i.blp, %i.bln
  %i.blr = bitcast i64 %i.blq to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i: ; preds = %bb.hy
  %i.bls = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.axn, ptr noundef %i.b)
  br i1 %i.bls, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread_crit_edge, label %bb.ia

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread_crit_edge: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i
  %.pre1383 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread: ; preds = %bb.hn, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread_crit_edge, %bb.hz, %bb.hv, %bb.hu, %bb.hp
  %i.blt = phi double [ %.pre1383, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread_crit_edge ], [ %i.blr, %bb.hz ], [ %i.bkv, %bb.hv ], [ %i.bkj, %bb.hu ], [ %spec.select1557, %bb.hn ], [ %i.bjg, %bb.hp ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.blu = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.blt, ptr %i.blu, align 8
  %i.blv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.ia

bb.ia:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i
  %.sroa.0.31 = phi ptr [ %i.blv, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread ], [ %.sroa.0.2, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i ]
  %.0.i24.i322.i = phi i32 [ 0, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i.thread ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i320.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i323.i

_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i323.i: ; preds = %bb.ia, %.noexc26.i339.i
  %.sroa.0.32 = phi ptr [ %i.bim, %.noexc26.i339.i ], [ %.sroa.0.31, %bb.ia ]
  %.1.i25.i324.i = phi i32 [ %i.bij, %.noexc26.i339.i ], [ %.0.i24.i322.i, %bb.ia ] ; 2 uses
  %.not60.i.i325.i = icmp eq i32 %.1.i25.i324.i, 0 ; 2 uses
  %..i.i327.i = select i1 %.not59.i.i307.i, i32 0, i32 9
  %spec.select1189 = select i1 %.not60.i.i325.i, i32 %..i.i327.i, i32 %.1.i25.i324.i
  %.not166.i = and i1 %.not59.i.i307.i, %.not60.i.i325.i
  br i1 %.not166.i, label %select.unfold1073, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ib:                                            ; preds = %bb.hg
  %i.blw = select i1 %i.beu, i64 19, i64 20       ; 2 uses
  %i.blx = icmp ugt i64 %.044.i.i286.i, %i.blw
  br i1 %i.blx, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i293.i.thread1068, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bly = icmp eq i64 %.044.i.i286.i, %i.blw
  br i1 %i.bly, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %bb.ic
  br i1 %i.beu, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.blz = icmp ugt i64 %.2534, -9223372036854775808
  br i1 %i.blz, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i293.i.thread1068, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bma = sub i64 0, %.2534
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bma, ptr %i.bmb, align 8
  %i.bmc = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmd = load i8, ptr %.1525, align 1, !tbaa !36
  %i.bme = zext i8 %i.bmd to i64
  %i.bmf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bme
  %i.bmg = load i8, ptr %i.bmf, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i305.i = icmp eq i8 %i.bmg, 0
  br i1 %.not58.i.i305.i, label %select.unfold1073, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ig:                                            ; preds = %bb.id
  %i.bmh = icmp ne i8 %i.axo, 49
  %i.bmi = icmp sgt i64 %.2534, -1
  %or.cond5.i.i304.i = select i1 %i.bmh, i1 true, i1 %i.bmi
  br i1 %or.cond5.i.i304.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1062

bb.ih:                                            ; preds = %bb.ic
  %i.bmj = icmp slt i64 %.2534, 0
  br i1 %i.bmj, label %.thread1062, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bmk = sub nsw i64 0, %.2534
  %i.bml = select i1 %i.beu, i64 %i.bmk, i64 %.2534
  br label %.thread1062

.thread1062:                                      ; preds = %bb.ih, %bb.ig, %bb.ii
  %.sink1560 = phi i64 [ 7782220156096217088, %bb.ii ], [ 8430738502437568512, %bb.ig ], [ 8430738502437568512, %bb.ih ]
  %.sink1558 = phi i64 [ %i.bml, %bb.ii ], [ %.2534, %bb.ig ], [ %.2534, %bb.ih ]
  store i64 %.sink1560, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmm = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1558, ptr %i.bmm, align 8
  %.sroa.0.30 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmn = load i8, ptr %.1525, align 1, !tbaa !36
  %i.bmo = zext i8 %i.bmn to i64
  %i.bmp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmo
  %i.bmq = load i8, ptr %i.bmp, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i302.i = icmp eq i8 %i.bmq, 0
  br i1 %.not57.i.i302.i, label %select.unfold1073, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i293.i.thread1068: ; preds = %bb.ib, %bb.ie
  %i.bmr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bms = load i8, ptr %i.bmr, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bmt = trunc nuw i8 %i.bms to i1
  br i1 %i.bmt, label %.preheader1561, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1561:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i293.i.thread1068, %.preheader1561
  %.122.i.i298.i = phi ptr [ %i.bmx, %.preheader1561 ], [ %i.bew, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i293.i.thread1068 ] ; 3 uses
  %i.bmu = load i8, ptr %.122.i.i298.i, align 1, !tbaa !36 ; 2 uses
  %i.bmv = add i8 %i.bmu, -48
  %i.bmw = icmp ult i8 %i.bmv, 10
  %i.bmx = getelementptr inbounds nuw i8, ptr %.122.i.i298.i, i64 1
  br i1 %i.bmw, label %.preheader1561, label %bb.ij, !llvm.loop !14

bb.ij:                                            ; preds = %.preheader1561
  %i.bmy = zext i8 %i.bmu to i64
  %i.bmz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmy
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i299.i = icmp eq i8 %i.bna, 0
  br i1 %.not.i.i299.i, label %.split1479, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1479:                                       ; preds = %bb.ij
  %i.bnb = ptrtoint ptr %.122.i.i298.i to i64
  %i.bnc = ptrtoint ptr %i.axn to i64
  %i.bnd = sub i64 %i.bnb, %i.bnc                 ; 3 uses
  %i.bne = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 8
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !48
  %i.bnh = ptrtoint ptr %.sroa.172.2 to i64
  %i.bni = ptrtoint ptr %i.bng to i64
  %i.bnj = sub i64 %i.bnh, %i.bni
  %i.bnk = or i64 %i.bnj, 6485183463413514240
  store i64 %i.bnk, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bnl = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bnm = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.5922.ptr = getelementptr inbounds nuw i8, ptr %.0917.lcssa, i64 %.5922.add
  %i.kx = load i8, ptr %.5922.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ky = add i8 %i.kx, -48                       ; 2 uses
  %i.kz = icmp ult i8 %i.ky, 10
  br i1 %i.kz, label %.lr.ph1576, label %.noexc85.thread, !llvm.loop !16

.noexc85:                                         ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3920.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc85.thread

.noexc85.thread:                                  ; preds = %.lr.ph1576, %.noexc85
  %.5930.lcssa1732 = phi i64 [ %.49291022, %.noexc85 ], [ %i.kw, %.lr.ph1576 ]
  %.5922.idx.lcssa15721731 = phi i64 [ %.3920.add, %.noexc85 ], [ %.5922.add, %.lr.ph1576 ] ; 2 uses
  %i.la = phi i8 [ %i.kq, %.noexc85 ], [ %i.kx, %.lr.ph1576 ]
  %.5922.ptr.le = getelementptr inbounds nuw i8, ptr %.0917.lcssa, i64 %.5922.idx.lcssa15721731 ; 2 uses
  %i.lb = ptrtoint ptr %.5922.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5922.idx.lcssa15721731
  %i.lc = sub i64 %i.lb, %i.jm
  %sext.i = shl i64 %i.lc, 32
  %i.ld = ashr exact i64 %sext.i, 32
  br label %bb.am

bb.am:                                            ; preds = %.noexc85.thread, %bb.ak
  %i.le = phi i8 [ %i.la, %.noexc85.thread ], [ %.lcssa1567, %bb.ak ] ; 2 uses
  %.0932 = phi i64 [ %gepdiff, %.noexc85.thread ], [ 0, %bb.ak ] ; 2 uses
  %.1926 = phi i64 [ %.5930.lcssa1732, %.noexc85.thread ], [ %.0925.lcssa, %bb.ak ] ; 14 uses
  %.1918 = phi ptr [ %.5922.ptr.le, %.noexc85.thread ], [ %.0917.lcssa, %bb.ak ] ; 4 uses
  %.044.i = phi i64 [ %i.ld, %.noexc85.thread ], [ %i.jn, %bb.ak ] ; 4 uses
  switch i8 %i.le, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.lf = getelementptr inbounds nuw i8, ptr %.1918, i64 1 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !36  ; 3 uses
  %i.lh = icmp eq i8 %i.lg, 45
  switch i8 %i.lg, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.li = getelementptr inbounds nuw i8, ptr %.1918, i64 2 ; 2 uses
  %.pre1666 = load i8, ptr %i.li, align 1, !tbaa !36
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lj = phi i8 [ %i.lg, %bb.an ], [ %.pre1666, %bb.ao ]
  %.6923 = phi ptr [ %i.lf, %bb.an ], [ %i.li, %bb.ao ] ; 3 uses
  %i.lk = add i8 %i.lj, -48                       ; 2 uses
  %i.ll = icmp ult i8 %i.lk, 10
  br i1 %i.ll, label %.lr.ph1583, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1583:                                       ; preds = %bb.ap, %.lr.ph1583
  %i.lm = phi i8 [ %i.lr, %.lr.ph1583 ], [ %i.lk, %bb.ap ]
  %.09141582 = phi i64 [ %i.lp, %.lr.ph1583 ], [ 0, %bb.ap ]
  %.7924.idx1581 = phi i64 [ %.7924.add, %.lr.ph1583 ], [ 0, %bb.ap ] ; 2 uses
  %i.ln = mul nsw i64 %.09141582, 10
  %i.lo = zext nneg i8 %i.lm to i64
  %i.lp = add nsw i64 %i.ln, %i.lo                ; 3 uses
  %.7924.add = add nuw nsw i64 %.7924.idx1581, 1  ; 3 uses
  %.7924.ptr = getelementptr inbounds nuw i8, ptr %.6923, i64 %.7924.add
  %i.lq = load i8, ptr %.7924.ptr, align 1, !tbaa !36 ; 2 uses
  %i.lr = add i8 %i.lq, -48                       ; 2 uses
  %i.ls = icmp ult i8 %i.lr, 10
  br i1 %i.ls, label %.lr.ph1583, label %bb.aq, !llvm.loop !17

bb.aq:                                            ; preds = %.lr.ph1583
  %.7924.ptr.le = getelementptr inbounds nuw i8, ptr %.6923, i64 %.7924.add
  %i.lt = icmp samesign ugt i64 %.7924.idx1581, 17
  br i1 %i.lt, label %.preheader1552, label %.thread1032, !prof !108

.preheader1552:                                   ; preds = %bb.aq, %.preheader1552
  %.0.i90 = phi ptr [ %i.lw, %.preheader1552 ], [ %.6923, %bb.aq ] ; 3 uses
  %i.lu = load i8, ptr %.0.i90, align 1, !tbaa !36
  %i.lv = icmp eq i8 %i.lu, 48
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i90, i64 1
  br i1 %i.lv, label %.preheader1552, label %bb.ar, !llvm.loop !18

bb.ar:                                            ; preds = %.preheader1552
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i90, i64 18
  %i.ly = icmp ugt ptr %.7924.ptr.le, %i.lx
  %spec.select = select i1 %i.ly, i64 999999999999999999, i64 %i.lp
  br label %.thread1032

.thread1032:                                      ; preds = %bb.ar, %bb.aq
  %.1915 = phi i64 [ %i.lp, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.lz = sub nsw i64 0, %.1915
  %i.ma = select i1 %i.lh, i64 %i.lz, i64 %.1915
  %i.mb = add nsw i64 %i.ma, %.0932
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.jr, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %.thread1032, %bb.as
  %i.mc = phi i8 [ %i.lq, %.thread1032 ], [ %i.le, %bb.as ]
  %.19331036 = phi i64 [ %i.mb, %.thread1032 ], [ %.0932, %bb.as ] ; 9 uses
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i = icmp eq i8 %i.mf, 0                 ; 3 uses
  %i.mg = icmp ugt i64 %.044.i, 19
  br i1 %i.mg, label %.preheader1551, label %.critedge.i

.preheader1551:                                   ; preds = %bb.at, %.critedge.i98
  %i.mh = phi i8 [ %.pre1667, %.critedge.i98 ], [ %i.ja, %bb.at ]
  %.0.i97 = phi ptr [ %i.mi, %.critedge.i98 ], [ %i.iz, %bb.at ] ; 2 uses
  switch i8 %i.mh, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit [
    i8 48, label %.critedge.i98
    i8 46, label %.critedge.i98
  ]

.critedge.i98:                                    ; preds = %.preheader1551, %.preheader1551
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i97, i64 1 ; 2 uses
  %.pre1667 = load i8, ptr %i.mi, align 1, !tbaa !36
  br label %.preheader1551, !llvm.loop !19

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit: ; preds = %.preheader1551
  %i.mj = ptrtoint ptr %.0.i97 to i64
  %.neg.i = add i64 %.044.i, %i.jm
  %i.mk = sub i64 %.neg.i, %i.mj
  %i.ml = icmp ugt i64 %i.mk, 19
  br i1 %i.ml, label %.noexc94, label %.critedge.i, !prof !108

.noexc94:                                         ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.mm = call fastcc noundef i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.ip, ptr noundef %i.e)
  %i.mn = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.mo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.mn, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i:                                      ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit, %bb.at
  %i.mq = add i64 %.19331036, -309
  %or.cond.i91 = icmp ult i64 %i.mq, -651
  br i1 %or.cond.i91, label %bb.au, label %bb.av, !prof !124

bb.au:                                            ; preds = %.critedge.i
  %i.mr = icmp slt i64 %.19331036, -342
  %i.ms = icmp eq i64 %.1926, 0
  %or.cond3.i = or i1 %i.ms, %i.mr
  br i1 %or.cond3.i, label %.noexc87.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.noexc87.thread:                                  ; preds = %bb.au
  %i.mt = select i1 %i.ix, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.mu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.mt, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br i1 %.not59.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.av:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.mw = add nsw i64 %.19331036, 22
  %or.cond.i99 = icmp ult i64 %i.mw, 45
  %i.mx = icmp ult i64 %.1926, 9007199254740992
  %or.cond3.i100 = and i1 %i.mx, %or.cond.i99
  br i1 %or.cond3.i100, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.my = uitofp nneg i64 %.1926 to double        ; 2 uses
  %i.mz = icmp slt i64 %.19331036, 0
  br i1 %i.mz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.na = sub nsw i64 0, %.19331036
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.na
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !123
  %i.nd = fdiv double %i.my, %i.nc
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.19331036
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !123
  %i.ng = fmul double %i.nf, %i.my
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i = phi double [ %i.ng, %bb.ay ], [ %i.nd, %bb.ax ] ; 2 uses
  %i.nh = fneg double %storemerge.i
  %spec.select1810 = select i1 %i.ix, double %i.nh, double %storemerge.i
  br label %.noexc95.thread

bb.ba:                                            ; preds = %bb.av
  %i.ni = icmp eq i64 %.1926, 0
  br i1 %i.ni, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.nj = select i1 %i.ix, double -0.000000e+00, double 0.000000e+00
  br label %.noexc95.thread

bb.bc:                                            ; preds = %bb.ba
  %i.nk = mul nsw i64 %.19331036, 217706
  %i.nl = ashr i64 %i.nk, 16
  %i.nm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1926, i1 true) ; 2 uses
  %i.nn = shl i64 %.1926, %i.nm                   ; 2 uses
  %i.no = trunc nsw i64 %.19331036 to i32
  %i.np = shl nsw i32 %i.no, 1
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.nq ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 5472
  %i.nt = load i64, ptr %i.ns, align 16, !tbaa !40
  %i.nu = zext i64 %i.nn to i128
  %i.nv = zext i64 %i.nt to i128
  %i.nw = mul nuw i128 %i.nv, %i.nu               ; 2 uses
  %i.nx = trunc i128 %i.nw to i64                 ; 2 uses
  %i.ny = lshr i128 %i.nw, 64
  %i.nz = trunc nuw i128 %i.ny to i64             ; 3 uses
  %i.oa = and i64 %i.nz, 511
  %i.ob = icmp eq i64 %i.oa, 511
  br i1 %i.ob, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.oc = getelementptr i8, ptr %i.nr, i64 5480
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.nn, i64 %i.od) ; 2 uses
  %i.oe = add i64 %2, %i.nx                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.oe
  %i.of = zext i1 %3 to i64
  %spec.select.i101 = add nuw i64 %i.of, %i.nz
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i = phi i64 [ %spec.select.i101, %bb.bd ], [ %i.nz, %bb.bc ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.oe, %bb.bd ], [ %i.nx, %bb.bc ]
  %i.og = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.oh = add nuw nsw i64 %i.og, 9                ; 2 uses
  %i.oi = lshr i64 %.sroa.7.1.i, %i.oh            ; 6 uses
  %reass.sub = sub nsw i64 %i.nl, %i.nm
  %.neg = add nsw i64 %reass.sub, %i.og           ; 4 uses
  %i.oj = add nsw i64 %.neg, 1086
  %i.ok = icmp slt i64 %.neg, -1085
  br i1 %i.ok, label %bb.bf, label %bb.bi, !prof !108

bb.bf:                                            ; preds = %bb.be
  %i.ol = icmp samesign ult i64 %.neg, -1148
  br i1 %i.ol, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.om = select i1 %i.ix, double -0.000000e+00, double 0.000000e+00
  br label %.noexc95.thread

bb.bh:                                            ; preds = %bb.bf
  %i.on = sub nuw nsw i64 -1085, %.neg
  %i.oo = lshr i64 %i.oi, %i.on                   ; 2 uses
  %i.op = and i64 %i.oo, 1
  %i.oq = add nuw nsw i64 %i.op, %i.oo            ; 2 uses
  %i.or = lshr i64 %i.oq, 1
  %i.os = icmp samesign ugt i64 %i.oq, 9007199254740991
  %i.ot = and i64 %i.or, 13510798882111487
  %i.ou = select i1 %i.os, i64 4503599627370496, i64 0
  %i.ov = select i1 %i.ix, i64 -9223372036854775808, i64 0
  %i.ow = or disjoint i64 %i.ou, %i.ov
  %i.ox = or disjoint i64 %i.ow, %i.ot
  %i.oy = bitcast i64 %i.ox to double
  br label %.noexc95.thread

bb.bi:                                            ; preds = %bb.be
  %i.oz = icmp ult i64 %.sroa.037.0.i, 2
  %i.pa = add nsw i64 %.19331036, 4
  %i.pb = icmp ult i64 %i.pa, 28
  %or.cond7.i = and i1 %i.pb, %i.oz
  %i.pc = and i64 %i.oi, 3
  %i.pd = icmp eq i64 %i.pc, 1
  %i.pe = select i1 %or.cond7.i, i1 %i.pd, i1 false
  br i1 %i.pe, label %bb.bj, label %bb.bk, !prof !108

bb.bj:                                            ; preds = %bb.bi
  %i.pf = shl i64 %i.oi, %i.oh
  %i.pg = icmp eq i64 %i.pf, %.sroa.7.1.i
  %i.ph = and i64 %i.oi, 72057594037927932
  %spec.select90.i = select i1 %i.pg, i64 %i.ph, i64 %i.oi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i = phi i64 [ %i.oi, %bb.bi ], [ %spec.select90.i, %bb.bj ] ; 2 uses
  %i.pi = and i64 %.080.i, 1
  %i.pj = add nuw nsw i64 %i.pi, %.080.i          ; 2 uses
  %i.pk = icmp samesign ugt i64 %i.pj, 18014398509481983 ; 2 uses
  %i.pl = zext i1 %i.pk to i64
  %spec.select92.i = add nuw nsw i64 %i.oj, %i.pl ; 2 uses
  %i.pm = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.pm, label %.noexc95, label %bb.bl, !prof !108

bb.bl:                                            ; preds = %bb.bk
  %i.pn = lshr i64 %i.pj, 1
  %i.po = and i64 %i.pn, 13510798882111487
  %i.pp = select i1 %i.pk, i64 0, i64 %i.po
  %i.pq = shl nuw nsw i64 %spec.select92.i, 52
  %i.pr = select i1 %i.ix, i64 -9223372036854775808, i64 0
  %i.ps = or disjoint i64 %i.pp, %i.pr
  %i.pt = or i64 %i.ps, %i.pq
  %i.pu = bitcast i64 %i.pt to double
  br label %.noexc95.thread

.noexc95:                                         ; preds = %bb.bk
  %i.pv = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ip, ptr noundef %i.f)
  br i1 %i.pv, label %.noexc95..noexc95.thread_crit_edge, label %bb.bm

.noexc95..noexc95.thread_crit_edge:               ; preds = %.noexc95
  %.pre1668 = load double, ptr %i.f, align 8, !tbaa !123
  br label %.noexc95.thread

.noexc95.thread:                                  ; preds = %bb.az, %.noexc95..noexc95.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.pw = phi double [ %.pre1668, %.noexc95..noexc95.thread_crit_edge ], [ %i.pu, %bb.bl ], [ %i.oy, %bb.bh ], [ %i.om, %bb.bg ], [ %spec.select1810, %bb.az ], [ %i.nj, %bb.bb ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.px = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.pw, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc95.thread, %.noexc95
  %.sroa.0.22 = phi ptr [ %i.py, %.noexc95.thread ], [ %i.u, %.noexc95 ]
  %.0.i92 = phi i32 [ 0, %.noexc95.thread ], [ 9, %.noexc95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.as
  %i.pz = select i1 %i.ix, i64 19, i64 20         ; 2 uses
  %i.qa = icmp ugt i64 %.044.i, %i.pz
  br i1 %i.qa, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qb = icmp eq i64 %.044.i, %i.pz
  br i1 %i.qb, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ix, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.qc = icmp ugt i64 %.1926, -9223372036854775808
  br i1 %i.qc, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qd = sub i64 0, %.1926
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !40
  %i.qe = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qd, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qg = load i8, ptr %.1918, align 1, !tbaa !36
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i = icmp eq i8 %i.qj, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qk = icmp ne i8 %i.iw, 49
  %i.ql = icmp sgt i64 %.1926, -1
  %or.cond5.i = select i1 %i.qk, i1 true, i1 %i.ql
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread1039

bb.bt:                                            ; preds = %bb.bo
  %i.qm = icmp slt i64 %.1926, 0
  br i1 %i.qm, label %.thread1039, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qn = sub nsw i64 0, %.1926
  %i.qo = select i1 %i.ix, i64 %i.qn, i64 %.1926
  br label %.thread1039

.thread1039:                                      ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1812 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qo, %bb.bu ], [ %.1926, %bb.bs ], [ %.1926, %bb.bt ]
  store i64 %.sink1812, ptr %i.u, align 8, !tbaa !40
  %i.qp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qp, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qq = load i8, ptr %.1918, align 1, !tbaa !36
  %i.qr = zext i8 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i = icmp eq i8 %i.qt, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044: ; preds = %bb.bn, %bb.bq
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qv = load i8, ptr %i.qu, align 8, !tbaa !125, !range !50, !noundef !51
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %.preheader1865, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1865:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, %.preheader1865
  %.122.i = phi ptr [ %i.ra, %.preheader1865 ], [ %i.iz, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044 ] ; 3 uses
  %i.qx = load i8, ptr %.122.i, align 1, !tbaa !36 ; 2 uses
  %i.qy = add i8 %i.qx, -48
  %i.qz = icmp ult i8 %i.qy, 10
  %i.ra = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.qz, label %.preheader1865, label %bb.bv, !llvm.loop !20

bb.bv:                                            ; preds = %.preheader1865
  %i.rb = zext i8 %i.qx to i64
  %i.rc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i80 = icmp eq i8 %i.rd, 0
  br i1 %.not.i80, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.re = ptrtoint ptr %.122.i to i64
  %i.rf = ptrtoint ptr %i.ip to i64
  %i.rg = sub i64 %i.re, %i.rf                    ; 3 uses
  %i.rh = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !48
  %i.rk = ptrtoint ptr %i.m to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = or i64 %i.rm, 6485183463413514240
  store i64 %i.rn, ptr %i.u, align 8, !tbaa !40
  %i.ro = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.ip, i64 %i.rg, i1 false)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rg
  %i.rr = trunc i64 %i.rg to i32
  store i32 %i.rr, ptr %i.m, align 1
  store i8 0, ptr %i.rq, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.aj, %bb.au, %bb.bv, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, %.noexc85, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread1039, %bb.bs, %bb.br, %.noexc87.thread, %bb.ap
  %.0.i51429.ph = phi i32 [ 9, %.noexc87.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread1039 ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc85 ], [ 9, %bb.aj ], [ 10, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044 ], [ 9, %bb.bv ], [ 9, %bb.au ], [ 9, %bb.ap ]
end_hunk_12
begin_hunk_13_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.7889.ptr = getelementptr inbounds nuw i8, ptr %.0882.lcssa, i64 %.7889.add
  %i.ahz = load i8, ptr %.7889.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aia = add i8 %i.ahz, -48                     ; 2 uses
  %i.aib = icmp ult i8 %i.aia, 10
  br i1 %i.aib, label %.lr.ph1597, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !16

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not1524 = icmp eq i64 %.5887.add, 1
  br i1 %.not1524, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1597, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5895.lcssa1750 = phi i64 [ %.48941211, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.ahy, %.lr.ph1597 ]
  %.7889.idx.lcssa15931749 = phi i64 [ %.5887.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7889.add, %.lr.ph1597 ] ; 2 uses
  %i.aic = phi i8 [ %i.ahs, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.ahz, %.lr.ph1597 ]
  %.7889.ptr.le = getelementptr inbounds nuw i8, ptr %.0882.lcssa, i64 %.7889.idx.lcssa15931749 ; 2 uses
  %i.aid = ptrtoint ptr %.7889.ptr.le to i64
  %gepdiff1629 = sub nsw i64 1, %.7889.idx.lcssa15931749
  %i.aie = sub i64 %i.aid, %i.ago
  %sext.i.i = shl i64 %i.aie, 32
  %i.aif = ashr exact i64 %sext.i.i, 32
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.dp
  %i.aig = phi i8 [ %i.aic, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1559, %bb.dp ] ; 2 uses
  %.0897 = phi i64 [ %gepdiff1629, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.dp ] ; 2 uses
  %.2892 = phi i64 [ %.5895.lcssa1750, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0890.lcssa, %bb.dp ] ; 14 uses
  %.1883 = phi ptr [ %.7889.ptr.le, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0882.lcssa, %bb.dp ] ; 4 uses
  %.044.i.i = phi i64 [ %i.aif, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.agp, %bb.dp ] ; 4 uses
  switch i8 %i.aig, label %bb.dy [
    i8 101, label %bb.dt
    i8 69, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds
  %i.aih = getelementptr inbounds nuw i8, ptr %.1883, i64 1 ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !36 ; 3 uses
  %i.aij = icmp eq i8 %i.aii, 45
  switch i8 %i.aii, label %bb.dv [
    i8 45, label %bb.du
    i8 43, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt
  %i.aik = getelementptr inbounds nuw i8, ptr %.1883, i64 2 ; 2 uses
  %.pre1670 = load i8, ptr %i.aik, align 1, !tbaa !36
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ail = phi i8 [ %i.aii, %bb.dt ], [ %.pre1670, %bb.du ]
  %.2884 = phi ptr [ %i.aih, %bb.dt ], [ %i.aik, %bb.du ] ; 3 uses
  %i.aim = add i8 %i.ail, -48                     ; 2 uses
  %i.ain = icmp ult i8 %i.aim, 10
  br i1 %i.ain, label %.lr.ph1604, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1604:                                       ; preds = %bb.dv, %.lr.ph1604
  %i.aio = phi i8 [ %i.ait, %.lr.ph1604 ], [ %i.aim, %bb.dv ]
  %.08791603 = phi i64 [ %i.air, %.lr.ph1604 ], [ 0, %bb.dv ]
  %.3885.idx1602 = phi i64 [ %.3885.add, %.lr.ph1604 ], [ 0, %bb.dv ] ; 2 uses
  %i.aip = mul nsw i64 %.08791603, 10
  %i.aiq = zext nneg i8 %i.aio to i64
  %i.air = add nsw i64 %i.aip, %i.aiq             ; 3 uses
  %.3885.add = add nuw nsw i64 %.3885.idx1602, 1  ; 3 uses
  %.3885.ptr = getelementptr inbounds nuw i8, ptr %.2884, i64 %.3885.add
  %i.ais = load i8, ptr %.3885.ptr, align 1, !tbaa !36 ; 2 uses
  %i.ait = add i8 %i.ais, -48                     ; 2 uses
  %i.aiu = icmp ult i8 %i.ait, 10
  br i1 %i.aiu, label %.lr.ph1604, label %bb.dw, !llvm.loop !17

bb.dw:                                            ; preds = %.lr.ph1604
  %.3885.ptr.le = getelementptr inbounds nuw i8, ptr %.2884, i64 %.3885.add
  %i.aiv = icmp samesign ugt i64 %.3885.idx1602, 17
  br i1 %i.aiv, label %.preheader1547, label %.thread1221, !prof !108

.preheader1547:                                   ; preds = %bb.dw, %.preheader1547
  %.0.i22.i = phi ptr [ %i.aiy, %.preheader1547 ], [ %.2884, %bb.dw ] ; 3 uses
  %i.aiw = load i8, ptr %.0.i22.i, align 1, !tbaa !36
  %i.aix = icmp eq i8 %i.aiw, 48
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 1
  br i1 %i.aix, label %.preheader1547, label %bb.dx, !llvm.loop !18

bb.dx:                                            ; preds = %.preheader1547
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 18
  %i.aja = icmp ugt ptr %.3885.ptr.le, %i.aiz
  %spec.select1509 = select i1 %i.aja, i64 999999999999999999, i64 %i.air
  br label %.thread1221

.thread1221:                                      ; preds = %bb.dx, %bb.dw
  %.2881 = phi i64 [ %i.air, %bb.dw ], [ %spec.select1509, %bb.dx ] ; 2 uses
  %i.ajb = sub nsw i64 0, %.2881
  %i.ajc = select i1 %i.aij, i64 %i.ajb, i64 %.2881
  %i.ajd = add nsw i64 %i.ajc, %.0897
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ds
  br i1 %i.agt, label %bb.dz, label %bb.et

bb.dz:                                            ; preds = %.thread1221, %bb.dy
  %i.aje = phi i8 [ %i.ais, %.thread1221 ], [ %i.aig, %bb.dy ]
  %.28991225 = phi i64 [ %i.ajd, %.thread1221 ], [ %.0897, %bb.dy ] ; 9 uses
  %i.ajf = zext i8 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ajf
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.ajh, 0              ; 3 uses
  %i.aji = icmp ugt i64 %.044.i.i, 19
  br i1 %i.aji, label %.preheader1546, label %.critedge.i.i

.preheader1546:                                   ; preds = %bb.dz, %.critedge.i29.i
  %i.ajj = phi i8 [ %.pre1671, %.critedge.i29.i ], [ %i.agc, %bb.dz ]
  %.0.i28.i = phi ptr [ %i.ajk, %.critedge.i29.i ], [ %i.agb, %bb.dz ] ; 2 uses
  switch i8 %i.ajj, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i29.i
    i8 46, label %.critedge.i29.i
  ]

.critedge.i29.i:                                  ; preds = %.preheader1546, %.preheader1546
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0.i28.i, i64 1 ; 2 uses
  %.pre1671 = load i8, ptr %i.ajk, align 1, !tbaa !36
  br label %.preheader1546, !llvm.loop !19

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1546
  %i.ajl = ptrtoint ptr %.0.i28.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.ago
  %i.ajm = sub i64 %.neg.i.i, %i.ajl
  %i.ajn = icmp ugt i64 %i.ajm, 19
  br i1 %i.ajn, label %.noexc26.i, label %.critedge.i.i, !prof !108

.noexc26.i:                                       ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ajo = call fastcc noundef i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.yq, ptr noundef %i.c)
  %i.ajp = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajp, ptr %i.ajq, align 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.dz
  %i.ajs = add i64 %.28991225, -309
  %or.cond.i23.i = icmp ult i64 %i.ajs, -651
  br i1 %or.cond.i23.i, label %bb.ea, label %bb.eb, !prof !124

bb.ea:                                            ; preds = %.critedge.i.i
  %i.ajt = icmp slt i64 %.28991225, -342
  %i.aju = icmp eq i64 %.2892, 0
  %or.cond3.i.i = or i1 %i.aju, %i.ajt
  br i1 %or.cond3.i.i, label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.ea
  %i.ajv = select i1 %i.afz, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajv, ptr %i.ajw, align 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i, label %select.unfold1239, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.eb:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ajy = add nsw i64 %.28991225, 22
  %or.cond.i30.i = icmp ult i64 %i.ajy, 45
  %i.ajz = icmp ult i64 %.2892, 9007199254740992
  %or.cond3.i31.i = and i1 %i.ajz, %or.cond.i30.i
  br i1 %or.cond3.i31.i, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.aka = uitofp nneg i64 %.2892 to double       ; 2 uses
  %i.akb = icmp slt i64 %.28991225, 0
  br i1 %i.akb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.akc = sub nsw i64 0, %.28991225
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.akc
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !123
  %i.akf = fdiv double %i.aka, %i.ake
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.28991225
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !123
  %i.aki = fmul double %i.akh, %i.aka
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %storemerge.i.i = phi double [ %i.aki, %bb.ee ], [ %i.akf, %bb.ed ] ; 2 uses
  %i.akj = fneg double %storemerge.i.i
  %spec.select1822 = select i1 %i.afz, double %i.akj, double %storemerge.i.i
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.eg:                                            ; preds = %bb.eb
  %i.akk = icmp eq i64 %.2892, 0
  br i1 %i.akk, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.akl = select i1 %i.afz, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ei:                                            ; preds = %bb.eg
  %i.akm = mul nsw i64 %.28991225, 217706
  %i.akn = ashr i64 %i.akm, 16
  %i.ako = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2892, i1 true) ; 2 uses
  %i.akp = shl i64 %.2892, %i.ako                 ; 2 uses
  %i.akq = trunc nsw i64 %.28991225 to i32
  %i.akr = shl nsw i32 %i.akq, 1
  %i.aks = sext i32 %i.akr to i64
  %i.akt = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.aks ; 2 uses
  %i.aku = getelementptr i8, ptr %i.akt, i64 5472
  %i.akv = load i64, ptr %i.aku, align 16, !tbaa !40
  %i.akw = zext i64 %i.akp to i128
  %i.akx = zext i64 %i.akv to i128
  %i.aky = mul nuw i128 %i.akx, %i.akw            ; 2 uses
  %i.akz = trunc i128 %i.aky to i64               ; 2 uses
  %i.ala = lshr i128 %i.aky, 64
  %i.alb = trunc nuw i128 %i.ala to i64           ; 3 uses
  %i.alc = and i64 %i.alb, 511
  %i.ald = icmp eq i64 %i.alc, 511
  br i1 %i.ald, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.ale = getelementptr i8, ptr %i.akt, i64 5480
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.akp, i64 %i.alf) ; 2 uses
  %i.alg = add i64 %4, %i.akz                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.alg
  %i.alh = zext i1 %5 to i64
  %spec.select.i32.i = add nuw i64 %i.alh, %i.alb
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i32.i, %bb.ej ], [ %i.alb, %bb.ei ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.alg, %bb.ej ], [ %i.akz, %bb.ei ]
  %i.ali = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.alj = add nuw nsw i64 %i.ali, 9              ; 2 uses
  %i.alk = lshr i64 %.sroa.7.1.i.i, %i.alj        ; 6 uses
  %reass.sub1631 = sub nsw i64 %i.akn, %i.ako
  %.neg1630 = add nsw i64 %reass.sub1631, %i.ali  ; 4 uses
  %i.all = add nsw i64 %.neg1630, 1086
  %i.alm = icmp slt i64 %.neg1630, -1085
  br i1 %i.alm, label %bb.el, label %bb.eo, !prof !108

bb.el:                                            ; preds = %bb.ek
  %i.aln = icmp samesign ult i64 %.neg1630, -1148
  br i1 %i.aln, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.alo = select i1 %i.afz, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.en:                                            ; preds = %bb.el
  %i.alp = sub nuw nsw i64 -1085, %.neg1630
  %i.alq = lshr i64 %i.alk, %i.alp                ; 2 uses
  %i.alr = and i64 %i.alq, 1
  %i.als = add nuw nsw i64 %i.alr, %i.alq         ; 2 uses
  %i.alt = lshr i64 %i.als, 1
  %i.alu = icmp samesign ugt i64 %i.als, 9007199254740991
  %i.alv = and i64 %i.alt, 13510798882111487
  %i.alw = select i1 %i.alu, i64 4503599627370496, i64 0
  %i.alx = select i1 %i.afz, i64 -9223372036854775808, i64 0
  %i.aly = or disjoint i64 %i.alw, %i.alx
  %i.alz = or disjoint i64 %i.aly, %i.alv
  %i.ama = bitcast i64 %i.alz to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.eo:                                            ; preds = %bb.ek
  %i.amb = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.amc = add nsw i64 %.28991225, 4
  %i.amd = icmp ult i64 %i.amc, 28
  %or.cond7.i.i = and i1 %i.amd, %i.amb
  %i.ame = and i64 %i.alk, 3
  %i.amf = icmp eq i64 %i.ame, 1
  %i.amg = select i1 %or.cond7.i.i, i1 %i.amf, i1 false
  br i1 %i.amg, label %bb.ep, label %bb.eq, !prof !108

bb.ep:                                            ; preds = %bb.eo
  %i.amh = shl i64 %i.alk, %i.alj
  %i.ami = icmp eq i64 %i.amh, %.sroa.7.1.i.i
  %i.amj = and i64 %i.alk, 72057594037927932
  %spec.select90.i.i = select i1 %i.ami, i64 %i.amj, i64 %i.alk
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.080.i.i = phi i64 [ %i.alk, %bb.eo ], [ %spec.select90.i.i, %bb.ep ] ; 2 uses
  %i.amk = and i64 %.080.i.i, 1
  %i.aml = add nuw nsw i64 %i.amk, %.080.i.i      ; 2 uses
  %i.amm = icmp samesign ugt i64 %i.aml, 18014398509481983 ; 2 uses
  %i.amn = zext i1 %i.amm to i64
  %spec.select92.i.i = add nuw nsw i64 %i.all, %i.amn ; 2 uses
  %i.amo = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.amo, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.er, !prof !108

bb.er:                                            ; preds = %bb.eq
  %i.amp = lshr i64 %i.aml, 1
  %i.amq = and i64 %i.amp, 13510798882111487
  %i.amr = select i1 %i.amm, i64 0, i64 %i.amq
  %i.ams = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.amt = select i1 %i.afz, i64 -9223372036854775808, i64 0
  %i.amu = or disjoint i64 %i.amr, %i.amt
  %i.amv = or i64 %i.amu, %i.ams
  %i.amw = bitcast i64 %i.amv to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.eq
  %i.amx = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.yq, ptr noundef %i.d)
  br i1 %i.amx, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.es

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1672 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.ef, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.er, %bb.en, %bb.em, %bb.eh
  %i.amy = phi double [ %.pre1672, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.amw, %bb.er ], [ %i.ama, %bb.en ], [ %i.alo, %bb.em ], [ %spec.select1822, %bb.ef ], [ %i.akl, %bb.eh ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.amy, ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.es

bb.es:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.28 = phi ptr [ %i.ana, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %.sroa.0.6, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i24.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i: ; preds = %bb.es, %.noexc26.i
  %.sroa.0.29 = phi ptr [ %i.ajr, %.noexc26.i ], [ %.sroa.0.28, %bb.es ]
  %.1.i25.i = phi i32 [ %i.ajo, %.noexc26.i ], [ %.0.i24.i, %bb.es ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i25.i, 0          ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1510 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i25.i
  %.not168.i = and i1 %.not59.i.i, %.not60.i.i
  br i1 %.not168.i, label %select.unfold1239, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.et:                                            ; preds = %bb.dy
  %i.anb = select i1 %i.afz, i64 19, i64 20       ; 2 uses
  %i.anc = icmp ugt i64 %.044.i.i, %i.anb
  br i1 %i.anc, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.and = icmp eq i64 %.044.i.i, %i.anb
  br i1 %i.and, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.afz, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.ane = icmp ugt i64 %.2892, -9223372036854775808
  br i1 %i.ane, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.anf = sub i64 0, %.2892
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.anf, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.ani = load i8, ptr %.1883, align 1, !tbaa !36
  %i.anj = zext i8 %i.ani to i64
  %i.ank = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.anl, 0
  br i1 %.not58.i.i, label %select.unfold1239, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ey:                                            ; preds = %bb.ev
  %i.anm = icmp ne i8 %i.yr, 49
  %i.ann = icmp sgt i64 %.2892, -1
  %or.cond5.i.i = select i1 %i.anm, i1 true, i1 %i.ann
  br i1 %or.cond5.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1228

bb.ez:                                            ; preds = %bb.eu
  %i.ano = icmp slt i64 %.2892, 0
  br i1 %i.ano, label %.thread1228, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.anp = sub nsw i64 0, %.2892
  %i.anq = select i1 %i.afz, i64 %i.anp, i64 %.2892
  br label %.thread1228

.thread1228:                                      ; preds = %bb.ez, %bb.ey, %bb.fa
  %.sink1825 = phi i64 [ 7782220156096217088, %bb.fa ], [ 8430738502437568512, %bb.ey ], [ 8430738502437568512, %bb.ez ]
  %.sink1823 = phi i64 [ %i.anq, %bb.fa ], [ %.2892, %bb.ey ], [ %.2892, %bb.ez ]
  store i64 %.sink1825, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1823, ptr %i.anr, align 8
  %.sroa.0.27 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.ans = load i8, ptr %.1883, align 1, !tbaa !36
  %i.ant = zext i8 %i.ans to i64
  %i.anu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ant
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.anv, 0
  br i1 %.not57.i.i, label %select.unfold1239, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234: ; preds = %bb.et, %bb.ew
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.anx = load i8, ptr %i.anw, align 8, !tbaa !125, !range !50, !noundef !51
  %i.any = trunc nuw i8 %i.anx to i1
  br i1 %i.any, label %.preheader1860, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1860:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234, %.preheader1860
  %.122.i.i = phi ptr [ %i.aoc, %.preheader1860 ], [ %i.agb, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234 ] ; 3 uses
  %i.anz = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.aoa = add i8 %i.anz, -48
  %i.aob = icmp ult i8 %i.aoa, 10
  %i.aoc = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.aob, label %.preheader1860, label %bb.fb, !llvm.loop !20

bb.fb:                                            ; preds = %.preheader1860
  %i.aod = zext i8 %i.anz to i64
  %i.aoe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aod
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i108 = icmp eq i8 %i.aof, 0
  br i1 %.not.i.i108, label %.split1757, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1757:                                       ; preds = %bb.fb
  %i.aog = ptrtoint ptr %.122.i.i to i64
  %i.aoh = ptrtoint ptr %i.yq to i64
  %i.aoi = sub i64 %i.aog, %i.aoh                 ; 3 uses
  %i.aoj = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !48
  %i.aom = ptrtoint ptr %.sroa.172.6 to i64
  %i.aon = ptrtoint ptr %i.aol to i64
  %i.aoo = sub i64 %i.aom, %i.aon
  %i.aop = or i64 %i.aoo, 6485183463413514240
  store i64 %i.aop, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.aor = getelementptr inbounds nuw i8, ptr %i.yd, i64 5 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %.7854.ptr = getelementptr inbounds nuw i8, ptr %.0847.lcssa, i64 %.7854.add
  %i.bhk = load i8, ptr %.7854.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhl = add i8 %i.bhk, -48                     ; 2 uses
  %i.bhm = icmp ult i8 %i.bhl, 10
  br i1 %i.bhm, label %.lr.ph1618, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread, !llvm.loop !16

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i173
  %.not1529 = icmp eq i64 %.5852.add, 1
  br i1 %.not1529, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread: ; preds = %.lr.ph1618, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175
  %.5860.lcssa1763 = phi i64 [ %.48591368, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175 ], [ %i.bhj, %.lr.ph1618 ]
  %.7854.idx.lcssa16141762 = phi i64 [ %.5852.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175 ], [ %.7854.add, %.lr.ph1618 ] ; 2 uses
  %i.bhn = phi i8 [ %i.bhd, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175 ], [ %i.bhk, %.lr.ph1618 ]
  %.7854.ptr.le = getelementptr inbounds nuw i8, ptr %.0847.lcssa, i64 %.7854.idx.lcssa16141762 ; 2 uses
  %i.bho = ptrtoint ptr %.7854.ptr.le to i64
  %gepdiff1632 = sub nsw i64 1, %.7854.idx.lcssa16141762
  %i.bhp = sub i64 %i.bho, %i.bfz
  %sext.i.i178 = shl i64 %i.bhp, 32
  %i.bhq = ashr exact i64 %sext.i.i178, 32
  br label %bb.he

bb.he:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread, %bb.hb
  %i.bhr = phi i8 [ %i.bhn, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread ], [ %.lcssa1555, %bb.hb ] ; 2 uses
  %.0862 = phi i64 [ %gepdiff1632, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread ], [ 0, %bb.hb ] ; 2 uses
  %.2857 = phi i64 [ %.5860.lcssa1763, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread ], [ %.0855.lcssa, %bb.hb ] ; 14 uses
  %.1848 = phi ptr [ %.7854.ptr.le, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread ], [ %.0847.lcssa, %bb.hb ] ; 4 uses
  %.044.i.i117 = phi i64 [ %i.bhq, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175.thread ], [ %i.bga, %bb.hb ] ; 4 uses
  switch i8 %i.bhr, label %bb.hk [
    i8 101, label %bb.hf
    i8 69, label %bb.hf
  ]

bb.hf:                                            ; preds = %bb.he, %bb.he
  %i.bhs = getelementptr inbounds nuw i8, ptr %.1848, i64 1 ; 2 uses
  %i.bht = load i8, ptr %i.bhs, align 1, !tbaa !36 ; 3 uses
  %i.bhu = icmp eq i8 %i.bht, 45
  switch i8 %i.bht, label %bb.hh [
    i8 45, label %bb.hg
    i8 43, label %bb.hg
  ]

bb.hg:                                            ; preds = %bb.hf, %bb.hf
  %i.bhv = getelementptr inbounds nuw i8, ptr %.1848, i64 2 ; 2 uses
  %.pre1674 = load i8, ptr %i.bhv, align 1, !tbaa !36
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.bhw = phi i8 [ %i.bht, %bb.hf ], [ %.pre1674, %bb.hg ]
  %.2849 = phi ptr [ %i.bhs, %bb.hf ], [ %i.bhv, %bb.hg ] ; 3 uses
  %i.bhx = add i8 %i.bhw, -48                     ; 2 uses
  %i.bhy = icmp ult i8 %i.bhx, 10
  br i1 %i.bhy, label %.lr.ph1625, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1625:                                       ; preds = %bb.hh, %.lr.ph1625
  %i.bhz = phi i8 [ %i.bie, %.lr.ph1625 ], [ %i.bhx, %bb.hh ]
  %.01624 = phi i64 [ %i.bic, %.lr.ph1625 ], [ 0, %bb.hh ]
  %.3850.idx1623 = phi i64 [ %.3850.add, %.lr.ph1625 ], [ 0, %bb.hh ] ; 2 uses
  %i.bia = mul nsw i64 %.01624, 10
  %i.bib = zext nneg i8 %i.bhz to i64
  %i.bic = add nsw i64 %i.bia, %i.bib             ; 3 uses
  %.3850.add = add nuw nsw i64 %.3850.idx1623, 1  ; 3 uses
  %.3850.ptr = getelementptr inbounds nuw i8, ptr %.2849, i64 %.3850.add
  %i.bid = load i8, ptr %.3850.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bie = add i8 %i.bid, -48                     ; 2 uses
  %i.bif = icmp ult i8 %i.bie, 10
  br i1 %i.bif, label %.lr.ph1625, label %bb.hi, !llvm.loop !17

bb.hi:                                            ; preds = %.lr.ph1625
  %.3850.ptr.le = getelementptr inbounds nuw i8, ptr %.2849, i64 %.3850.add
  %i.big = icmp samesign ugt i64 %.3850.idx1623, 17
  br i1 %i.big, label %.preheader1544, label %.thread1378, !prof !108

.preheader1544:                                   ; preds = %bb.hi, %.preheader1544
  %.0.i22.i171 = phi ptr [ %i.bij, %.preheader1544 ], [ %.2849, %bb.hi ] ; 3 uses
  %i.bih = load i8, ptr %.0.i22.i171, align 1, !tbaa !36
  %i.bii = icmp eq i8 %i.bih, 48
  %i.bij = getelementptr inbounds nuw i8, ptr %.0.i22.i171, i64 1
  br i1 %i.bii, label %.preheader1544, label %bb.hj, !llvm.loop !18

bb.hj:                                            ; preds = %.preheader1544
  %i.bik = getelementptr inbounds nuw i8, ptr %.0.i22.i171, i64 18
  %i.bil = icmp ugt ptr %.3850.ptr.le, %i.bik
  %spec.select1511 = select i1 %i.bil, i64 999999999999999999, i64 %i.bic
  br label %.thread1378

.thread1378:                                      ; preds = %bb.hj, %bb.hi
  %.2 = phi i64 [ %i.bic, %bb.hi ], [ %spec.select1511, %bb.hj ] ; 2 uses
  %i.bim = sub nsw i64 0, %.2
  %i.bin = select i1 %i.bhu, i64 %i.bim, i64 %.2
  %i.bio = add nsw i64 %i.bin, %.0862
  br label %bb.hl

bb.hk:                                            ; preds = %bb.he
  br i1 %i.bge, label %bb.hl, label %bb.if

bb.hl:                                            ; preds = %.thread1378, %bb.hk
  %i.bip = phi i8 [ %i.bid, %.thread1378 ], [ %i.bhr, %bb.hk ]
  %.28641382 = phi i64 [ %i.bio, %.thread1378 ], [ %.0862, %bb.hk ] ; 9 uses
  %i.biq = zext i8 %i.bip to i64
  %i.bir = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.biq
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i138 = icmp eq i8 %i.bis, 0           ; 3 uses
  %i.bit = icmp ugt i64 %.044.i.i117, 19
  br i1 %i.bit, label %.preheader, label %.critedge.i.i139

.preheader:                                       ; preds = %bb.hl, %.critedge.i29.i167
  %i.biu = phi i8 [ %.pre1675, %.critedge.i29.i167 ], [ %i.bfn, %bb.hl ]
  %.0.i28.i166 = phi ptr [ %i.biv, %.critedge.i29.i167 ], [ %i.bfm, %bb.hl ] ; 2 uses
  switch i8 %i.biu, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i168 [
    i8 48, label %.critedge.i29.i167
    i8 46, label %.critedge.i29.i167
  ]

.critedge.i29.i167:                               ; preds = %.preheader, %.preheader
  %i.biv = getelementptr inbounds nuw i8, ptr %.0.i28.i166, i64 1 ; 2 uses
  %.pre1675 = load i8, ptr %i.biv, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !19

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i168: ; preds = %.preheader
  %i.biw = ptrtoint ptr %.0.i28.i166 to i64
  %.neg.i.i169 = add i64 %.044.i.i117, %i.bfz
  %i.bix = sub i64 %.neg.i.i169, %i.biw
  %i.biy = icmp ugt i64 %i.bix, 19
  br i1 %i.biy, label %.noexc26.i170, label %.critedge.i.i139, !prof !108

.noexc26.i170:                                    ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.biz = call fastcc noundef i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.ayb, ptr noundef %i.a)
  %i.bja = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bja, ptr %i.bjb, align 8
  %i.bjc = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154

.critedge.i.i139:                                 ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i168, %bb.hl
  %i.bjd = add i64 %.28641382, -309
  %or.cond.i23.i140 = icmp ult i64 %i.bjd, -651
  br i1 %or.cond.i23.i140, label %bb.hm, label %bb.hn, !prof !124

bb.hm:                                            ; preds = %.critedge.i.i139
  %i.bje = icmp slt i64 %.28641382, -342
  %i.bjf = icmp eq i64 %.2857, 0
  %or.cond3.i.i165 = or i1 %i.bjf, %i.bje
  br i1 %or.cond3.i.i165, label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread: ; preds = %bb.hm
  %i.bjg = select i1 %i.bfk, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bjg, ptr %i.bjh, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i138, label %select.unfold1396, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hn:                                            ; preds = %.critedge.i.i139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bjj = add nsw i64 %.28641382, 22
  %or.cond.i30.i141 = icmp ult i64 %i.bjj, 45
  %i.bjk = icmp ult i64 %.2857, 9007199254740992
  %or.cond3.i31.i142 = and i1 %i.bjk, %or.cond.i30.i141
  br i1 %or.cond3.i31.i142, label %bb.ho, label %bb.hs

bb.ho:                                            ; preds = %bb.hn
  %i.bjl = uitofp nneg i64 %.2857 to double       ; 2 uses
  %i.bjm = icmp slt i64 %.28641382, 0
  br i1 %i.bjm, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bjn = sub nsw i64 0, %.28641382
  %i.bjo = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bjn
  %i.bjp = load double, ptr %i.bjo, align 8, !tbaa !123
  %i.bjq = fdiv double %i.bjl, %i.bjp
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.bjr = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.28641382
  %i.bjs = load double, ptr %i.bjr, align 8, !tbaa !123
  %i.bjt = fmul double %i.bjs, %i.bjl
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %storemerge.i.i164 = phi double [ %i.bjt, %bb.hq ], [ %i.bjq, %bb.hp ] ; 2 uses
  %i.bju = fneg double %storemerge.i.i164
  %spec.select1854 = select i1 %i.bfk, double %i.bju, double %storemerge.i.i164
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread

bb.hs:                                            ; preds = %bb.hn
  %i.bjv = icmp eq i64 %.2857, 0
  br i1 %i.bjv, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.bjw = select i1 %i.bfk, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread

bb.hu:                                            ; preds = %bb.hs
  %i.bjx = mul nsw i64 %.28641382, 217706
  %i.bjy = ashr i64 %i.bjx, 16
  %i.bjz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2857, i1 true) ; 2 uses
  %i.bka = shl i64 %.2857, %i.bjz                 ; 2 uses
  %i.bkb = trunc nsw i64 %.28641382 to i32
  %i.bkc = shl nsw i32 %i.bkb, 1
  %i.bkd = sext i32 %i.bkc to i64
  %i.bke = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bkd ; 2 uses
  %i.bkf = getelementptr i8, ptr %i.bke, i64 5472
  %i.bkg = load i64, ptr %i.bkf, align 16, !tbaa !40
  %i.bkh = zext i64 %i.bka to i128
  %i.bki = zext i64 %i.bkg to i128
  %i.bkj = mul nuw i128 %i.bki, %i.bkh            ; 2 uses
  %i.bkk = trunc i128 %i.bkj to i64               ; 2 uses
  %i.bkl = lshr i128 %i.bkj, 64
  %i.bkm = trunc nuw i128 %i.bkl to i64           ; 3 uses
  %i.bkn = and i64 %i.bkm, 511
  %i.bko = icmp eq i64 %i.bkn, 511
  br i1 %i.bko, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.bkp = getelementptr i8, ptr %i.bke, i64 5480
  %i.bkq = load i64, ptr %i.bkp, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bka, i64 %i.bkq) ; 2 uses
  %i.bkr = add i64 %6, %i.bkk                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bkr
  %i.bks = zext i1 %7 to i64
  %spec.select.i32.i163 = add nuw i64 %i.bks, %i.bkm
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.sroa.7.1.i.i145 = phi i64 [ %spec.select.i32.i163, %bb.hv ], [ %i.bkm, %bb.hu ] ; 3 uses
  %.sroa.037.0.i.i146 = phi i64 [ %i.bkr, %bb.hv ], [ %i.bkk, %bb.hu ]
  %i.bkt = lshr i64 %.sroa.7.1.i.i145, 63         ; 2 uses
  %i.bku = add nuw nsw i64 %i.bkt, 9              ; 2 uses
  %i.bkv = lshr i64 %.sroa.7.1.i.i145, %i.bku     ; 6 uses
  %reass.sub1634 = sub nsw i64 %i.bjy, %i.bjz
  %.neg1633 = add nsw i64 %reass.sub1634, %i.bkt  ; 4 uses
  %i.bkw = add nsw i64 %.neg1633, 1086
  %i.bkx = icmp slt i64 %.neg1633, -1085
  br i1 %i.bkx, label %bb.hx, label %bb.ia, !prof !108

bb.hx:                                            ; preds = %bb.hw
  %i.bky = icmp samesign ult i64 %.neg1633, -1148
  br i1 %i.bky, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.bkz = select i1 %i.bfk, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread

bb.hz:                                            ; preds = %bb.hx
  %i.bla = sub nuw nsw i64 -1085, %.neg1633
  %i.blb = lshr i64 %i.bkv, %i.bla                ; 2 uses
  %i.blc = and i64 %i.blb, 1
  %i.bld = add nuw nsw i64 %i.blc, %i.blb         ; 2 uses
  %i.ble = lshr i64 %i.bld, 1
  %i.blf = icmp samesign ugt i64 %i.bld, 9007199254740991
  %i.blg = and i64 %i.ble, 13510798882111487
  %i.blh = select i1 %i.blf, i64 4503599627370496, i64 0
  %i.bli = select i1 %i.bfk, i64 -9223372036854775808, i64 0
  %i.blj = or disjoint i64 %i.blh, %i.bli
  %i.blk = or disjoint i64 %i.blj, %i.blg
  %i.bll = bitcast i64 %i.blk to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread

bb.ia:                                            ; preds = %bb.hw
  %i.blm = icmp ult i64 %.sroa.037.0.i.i146, 2
  %i.bln = add nsw i64 %.28641382, 4
  %i.blo = icmp ult i64 %i.bln, 28
  %or.cond7.i.i147 = and i1 %i.blo, %i.blm
  %i.blp = and i64 %i.bkv, 3
  %i.blq = icmp eq i64 %i.blp, 1
  %i.blr = select i1 %or.cond7.i.i147, i1 %i.blq, i1 false
  br i1 %i.blr, label %bb.ib, label %bb.ic, !prof !108

bb.ib:                                            ; preds = %bb.ia
  %i.bls = shl i64 %i.bkv, %i.bku
  %i.blt = icmp eq i64 %i.bls, %.sroa.7.1.i.i145
  %i.blu = and i64 %i.bkv, 72057594037927932
  %spec.select90.i.i160 = select i1 %i.blt, i64 %i.blu, i64 %i.bkv
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.080.i.i148 = phi i64 [ %i.bkv, %bb.ia ], [ %spec.select90.i.i160, %bb.ib ] ; 2 uses
  %i.blv = and i64 %.080.i.i148, 1
  %i.blw = add nuw nsw i64 %i.blv, %.080.i.i148   ; 2 uses
  %i.blx = icmp samesign ugt i64 %i.blw, 18014398509481983 ; 2 uses
  %i.bly = zext i1 %i.blx to i64
  %spec.select92.i.i150 = add nuw nsw i64 %i.bkw, %i.bly ; 2 uses
  %i.blz = icmp samesign ugt i64 %spec.select92.i.i150, 2046
  br i1 %i.blz, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151, label %bb.id, !prof !108

bb.id:                                            ; preds = %bb.ic
  %i.bma = lshr i64 %i.blw, 1
  %i.bmb = and i64 %i.bma, 13510798882111487
  %i.bmc = select i1 %i.blx, i64 0, i64 %i.bmb
  %i.bmd = shl nuw nsw i64 %spec.select92.i.i150, 52
  %i.bme = select i1 %i.bfk, i64 -9223372036854775808, i64 0
  %i.bmf = or disjoint i64 %i.bmc, %i.bme
  %i.bmg = or i64 %i.bmf, %i.bmd
  %i.bmh = bitcast i64 %i.bmg to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151: ; preds = %bb.ic
  %i.bmi = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ayb, ptr noundef %i.b)
  br i1 %i.bmi, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread_crit_edge, label %bb.ie

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151
  %.pre1676 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread: ; preds = %bb.hr, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread_crit_edge, %bb.id, %bb.hz, %bb.hy, %bb.ht
  %i.bmj = phi double [ %.pre1676, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread_crit_edge ], [ %i.bmh, %bb.id ], [ %i.bll, %bb.hz ], [ %i.bkz, %bb.hy ], [ %spec.select1854, %bb.hr ], [ %i.bjw, %bb.ht ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bmj, ptr %i.bmk, align 8
  %i.bml = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151
  %.sroa.0.35 = phi ptr [ %i.bml, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread ], [ %.sroa.0.2, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151 ]
  %.0.i24.i153 = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154: ; preds = %bb.ie, %.noexc26.i170
  %.sroa.0.36 = phi ptr [ %i.bjc, %.noexc26.i170 ], [ %.sroa.0.35, %bb.ie ]
  %.1.i25.i155 = phi i32 [ %i.biz, %.noexc26.i170 ], [ %.0.i24.i153, %bb.ie ] ; 2 uses
  %.not60.i.i156 = icmp eq i32 %.1.i25.i155, 0    ; 2 uses
  %..i.i158 = select i1 %.not59.i.i138, i32 0, i32 9
  %spec.select1512 = select i1 %.not60.i.i156, i32 %..i.i158, i32 %.1.i25.i155
  %.not169.i = and i1 %.not59.i.i138, %.not60.i.i156
  br i1 %.not169.i, label %select.unfold1396, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.if:                                            ; preds = %bb.hk
  %i.bmm = select i1 %i.bfk, i64 19, i64 20       ; 2 uses
  %i.bmn = icmp ugt i64 %.044.i.i117, %i.bmm
  br i1 %i.bmn, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bmo = icmp eq i64 %.044.i.i117, %i.bmm
  br i1 %i.bmo, label %bb.ih, label %bb.il

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.bfk, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.bmp = icmp ugt i64 %.2857, -9223372036854775808
  br i1 %i.bmp, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bmq = sub i64 0, %.2857
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmr = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bmq, ptr %i.bmr, align 8
  %i.bms = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmt = load i8, ptr %.1848, align 1, !tbaa !36
  %i.bmu = zext i8 %i.bmt to i64
  %i.bmv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmu
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i136 = icmp eq i8 %i.bmw, 0
  br i1 %.not58.i.i136, label %select.unfold1396, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ik:                                            ; preds = %bb.ih
  %i.bmx = icmp ne i8 %i.ayc, 49
  %i.bmy = icmp sgt i64 %.2857, -1
  %or.cond5.i.i135 = select i1 %i.bmx, i1 true, i1 %i.bmy
  br i1 %or.cond5.i.i135, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1385

bb.il:                                            ; preds = %bb.ig
  %i.bmz = icmp slt i64 %.2857, 0
  br i1 %i.bmz, label %.thread1385, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bna = sub nsw i64 0, %.2857
  %i.bnb = select i1 %i.bfk, i64 %i.bna, i64 %.2857
  br label %.thread1385

.thread1385:                                      ; preds = %bb.il, %bb.ik, %bb.im
  %.sink1857 = phi i64 [ 7782220156096217088, %bb.im ], [ 8430738502437568512, %bb.ik ], [ 8430738502437568512, %bb.il ]
  %.sink1855 = phi i64 [ %i.bnb, %bb.im ], [ %.2857, %bb.ik ], [ %.2857, %bb.il ]
  store i64 %.sink1857, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bnc = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1855, ptr %i.bnc, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bnd = load i8, ptr %.1848, align 1, !tbaa !36
  %i.bne = zext i8 %i.bnd to i64
  %i.bnf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bne
  %i.bng = load i8, ptr %i.bnf, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i133 = icmp eq i8 %i.bng, 0
  br i1 %.not57.i.i133, label %select.unfold1396, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391: ; preds = %bb.if, %bb.ii
  %i.bnh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bni = load i8, ptr %i.bnh, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bnj = trunc nuw i8 %i.bni to i1
  br i1 %i.bnj, label %.preheader1858, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1858:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391, %.preheader1858
  %.122.i.i129 = phi ptr [ %i.bnn, %.preheader1858 ], [ %i.bfm, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391 ] ; 3 uses
  %i.bnk = load i8, ptr %.122.i.i129, align 1, !tbaa !36 ; 2 uses
  %i.bnl = add i8 %i.bnk, -48
  %i.bnm = icmp ult i8 %i.bnl, 10
  %i.bnn = getelementptr inbounds nuw i8, ptr %.122.i.i129, i64 1
  br i1 %i.bnm, label %.preheader1858, label %bb.in, !llvm.loop !20

bb.in:                                            ; preds = %.preheader1858
  %i.bno = zext i8 %i.bnk to i64
  %i.bnp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bno
  %i.bnq = load i8, ptr %i.bnp, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i130 = icmp eq i8 %i.bnq, 0
  br i1 %.not.i.i130, label %.split1771, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1771:                                       ; preds = %bb.in
  %i.bnr = ptrtoint ptr %.122.i.i129 to i64
  %i.bns = ptrtoint ptr %i.ayb to i64
  %i.bnt = sub i64 %i.bnr, %i.bns                 ; 3 uses
  %i.bnu = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !48
  %i.bnx = ptrtoint ptr %.sroa.172.2 to i64
  %i.bny = ptrtoint ptr %i.bnw to i64
  %i.bnz = sub i64 %i.bnx, %i.bny
  %i.boa = or i64 %i.bnz, 6485183463413514240
  store i64 %i.boa, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bob = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.boc = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7699.ptr = getelementptr inbounds nuw i8, ptr %.0692.lcssa, i64 %.7699.add
  %i.kq = load i8, ptr %.7699.ptr, align 1, !tbaa !36 ; 2 uses
  %i.kr = add i8 %i.kq, -48                       ; 2 uses
  %i.ks = icmp ult i8 %i.kr, 10
  br i1 %i.ks, label %.lr.ph1350, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !16

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5697.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1350, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5705.lcssa1506 = phi i64 [ %.4704797, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kp, %.lr.ph1350 ]
  %.7699.idx.lcssa13461505 = phi i64 [ %.5697.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7699.add, %.lr.ph1350 ] ; 2 uses
  %i.kt = phi i8 [ %i.kj, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kq, %.lr.ph1350 ]
  %.7699.ptr.le = getelementptr inbounds nuw i8, ptr %.0692.lcssa, i64 %.7699.idx.lcssa13461505 ; 2 uses
  %i.ku = ptrtoint ptr %.7699.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7699.idx.lcssa13461505
  %i.kv = sub i64 %i.ku, %i.jf
  %sext.i.i = shl i64 %i.kv, 32
  %i.kw = ashr exact i64 %sext.i.i, 32
  br label %bb.an

bb.an:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.ak
  %i.kx = phi i8 [ %i.kt, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1341, %bb.ak ] ; 2 uses
  %.0707 = phi i64 [ %gepdiff, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.ak ] ; 2 uses
  %.2702 = phi i64 [ %.5705.lcssa1506, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0700.lcssa, %bb.ak ] ; 14 uses
  %.1693 = phi ptr [ %.7699.ptr.le, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0692.lcssa, %bb.ak ] ; 4 uses
  %.044.i.i = phi i64 [ %i.kw, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.jg, %bb.ak ] ; 4 uses
  switch i8 %i.kx, label %bb.at [
    i8 101, label %bb.ao
    i8 69, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.ky = getelementptr inbounds nuw i8, ptr %.1693, i64 1 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !36  ; 3 uses
  %i.la = icmp eq i8 %i.kz, 45
  switch i8 %i.kz, label %bb.aq [
    i8 45, label %bb.ap
    i8 43, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.lb = getelementptr inbounds nuw i8, ptr %.1693, i64 2 ; 2 uses
  %.pre1440 = load i8, ptr %i.lb, align 1, !tbaa !36
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.lc = phi i8 [ %i.kz, %bb.ao ], [ %.pre1440, %bb.ap ]
  %.2694 = phi ptr [ %i.ky, %bb.ao ], [ %i.lb, %bb.ap ] ; 3 uses
  %i.ld = add i8 %i.lc, -48                       ; 2 uses
  %i.le = icmp ult i8 %i.ld, 10
  br i1 %i.le, label %.lr.ph1357, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1357:                                       ; preds = %bb.aq, %.lr.ph1357
  %i.lf = phi i8 [ %i.lk, %.lr.ph1357 ], [ %i.ld, %bb.aq ]
  %.06891356 = phi i64 [ %i.li, %.lr.ph1357 ], [ 0, %bb.aq ]
  %.3695.idx1355 = phi i64 [ %.3695.add, %.lr.ph1357 ], [ 0, %bb.aq ] ; 2 uses
  %i.lg = mul nsw i64 %.06891356, 10
  %i.lh = zext nneg i8 %i.lf to i64
  %i.li = add nsw i64 %i.lg, %i.lh                ; 3 uses
  %.3695.add = add nuw nsw i64 %.3695.idx1355, 1  ; 3 uses
  %.3695.ptr = getelementptr inbounds nuw i8, ptr %.2694, i64 %.3695.add
  %i.lj = load i8, ptr %.3695.ptr, align 1, !tbaa !36 ; 2 uses
  %i.lk = add i8 %i.lj, -48                       ; 2 uses
  %i.ll = icmp ult i8 %i.lk, 10
  br i1 %i.ll, label %.lr.ph1357, label %bb.ar, !llvm.loop !17

bb.ar:                                            ; preds = %.lr.ph1357
  %.3695.ptr.le = getelementptr inbounds nuw i8, ptr %.2694, i64 %.3695.add
  %i.lm = icmp samesign ugt i64 %.3695.idx1355, 17
  br i1 %i.lm, label %.preheader1326, label %.thread807, !prof !108

.preheader1326:                                   ; preds = %bb.ar, %.preheader1326
  %.0.i257.i = phi ptr [ %i.lp, %.preheader1326 ], [ %.2694, %bb.ar ] ; 3 uses
  %i.ln = load i8, ptr %.0.i257.i, align 1, !tbaa !36
  %i.lo = icmp eq i8 %i.ln, 48
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 1
  br i1 %i.lo, label %.preheader1326, label %bb.as, !llvm.loop !18

bb.as:                                            ; preds = %.preheader1326
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 18
  %i.lr = icmp ugt ptr %.3695.ptr.le, %i.lq
  %spec.select = select i1 %i.lr, i64 999999999999999999, i64 %i.li
  br label %.thread807

.thread807:                                       ; preds = %bb.as, %bb.ar
  %.2691 = phi i64 [ %i.li, %bb.ar ], [ %spec.select, %bb.as ] ; 2 uses
  %i.ls = sub nsw i64 0, %.2691
  %i.lt = select i1 %i.la, i64 %i.ls, i64 %.2691
  %i.lu = add nsw i64 %i.lt, %.0707
  br label %bb.au

bb.at:                                            ; preds = %bb.an
  br i1 %i.jk, label %bb.au, label %bb.bo

bb.au:                                            ; preds = %.thread807, %bb.at
  %i.lv = phi i8 [ %i.lj, %.thread807 ], [ %i.kx, %bb.at ]
  %.2709811 = phi i64 [ %i.lu, %.thread807 ], [ %.0707, %bb.at ] ; 9 uses
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.ly, 0               ; 3 uses
  %i.lz = icmp ugt i64 %.044.i.i, 19
  br i1 %i.lz, label %.preheader1325, label %.critedge.i.i

.preheader1325:                                   ; preds = %bb.au, %.critedge.i265.i
  %i.ma = phi i8 [ %.pre1441, %.critedge.i265.i ], [ %i.it, %bb.au ]
  %.0.i264.i = phi ptr [ %i.mb, %.critedge.i265.i ], [ %i.is, %bb.au ] ; 2 uses
  switch i8 %i.ma, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i265.i
    i8 46, label %.critedge.i265.i
  ]

.critedge.i265.i:                                 ; preds = %.preheader1325, %.preheader1325
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i264.i, i64 1 ; 2 uses
  %.pre1441 = load i8, ptr %i.mb, align 1, !tbaa !36
  br label %.preheader1325, !llvm.loop !19

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1325
  %i.mc = ptrtoint ptr %.0.i264.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.jf
  %i.md = sub i64 %.neg.i.i, %i.mc
  %i.me = icmp ugt i64 %i.md, 19
  br i1 %i.me, label %.noexc261.i, label %.critedge.i.i, !prof !108

.noexc261.i:                                      ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.mf = call fastcc noundef i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.if, ptr noundef %i.e)
  %i.mg = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.mh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.mg, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.au
  %i.mj = add i64 %.2709811, -309
  %or.cond.i258.i = icmp ult i64 %i.mj, -651
  br i1 %or.cond.i258.i, label %bb.av, label %bb.aw, !prof !124

bb.av:                                            ; preds = %.critedge.i.i
  %i.mk = icmp slt i64 %.2709811, -342
  %i.ml = icmp eq i64 %.2702, 0
  %or.cond3.i.i = or i1 %i.ml, %i.mk
  br i1 %or.cond3.i.i, label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.av
  %i.mm = select i1 %i.iq, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.mn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.mm, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br i1 %.not59.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.aw:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.mp = add nsw i64 %.2709811, 22
  %or.cond.i266.i = icmp ult i64 %i.mp, 45
  %i.mq = icmp ult i64 %.2702, 9007199254740992
  %or.cond3.i267.i = and i1 %i.mq, %or.cond.i266.i
  br i1 %or.cond3.i267.i, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.mr = uitofp nneg i64 %.2702 to double        ; 2 uses
  %i.ms = icmp slt i64 %.2709811, 0
  br i1 %i.ms, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mt = sub nsw i64 0, %.2709811
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.mt
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !123
  %i.mw = fdiv double %i.mr, %i.mv
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2709811
  %i.my = load double, ptr %i.mx, align 8, !tbaa !123
  %i.mz = fmul double %i.my, %i.mr
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %storemerge.i.i = phi double [ %i.mz, %bb.az ], [ %i.mw, %bb.ay ] ; 2 uses
  %i.na = fneg double %storemerge.i.i
  %spec.select1585 = select i1 %i.iq, double %i.na, double %storemerge.i.i
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bb:                                            ; preds = %bb.aw
  %i.nb = icmp eq i64 %.2702, 0
  br i1 %i.nb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.nc = select i1 %i.iq, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bd:                                            ; preds = %bb.bb
  %i.nd = mul nsw i64 %.2709811, 217706
  %i.ne = ashr i64 %i.nd, 16
  %i.nf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2702, i1 true) ; 2 uses
  %i.ng = shl i64 %.2702, %i.nf                   ; 2 uses
  %i.nh = trunc nsw i64 %.2709811 to i32
  %i.ni = shl nsw i32 %i.nh, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.nj ; 2 uses
  %i.nl = getelementptr i8, ptr %i.nk, i64 5472
  %i.nm = load i64, ptr %i.nl, align 16, !tbaa !40
  %i.nn = zext i64 %i.ng to i128
  %i.no = zext i64 %i.nm to i128
  %i.np = mul nuw i128 %i.no, %i.nn               ; 2 uses
  %i.nq = trunc i128 %i.np to i64                 ; 2 uses
  %i.nr = lshr i128 %i.np, 64
  %i.ns = trunc nuw i128 %i.nr to i64             ; 3 uses
  %i.nt = and i64 %i.ns, 511
  %i.nu = icmp eq i64 %i.nt, 511
  br i1 %i.nu, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nv = getelementptr i8, ptr %i.nk, i64 5480
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.ng, i64 %i.nw) ; 2 uses
  %i.nx = add i64 %2, %i.nq                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.nx
  %i.ny = zext i1 %3 to i64
  %spec.select.i268.i = add nuw i64 %i.ny, %i.ns
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i268.i, %bb.be ], [ %i.ns, %bb.bd ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.nx, %bb.be ], [ %i.nq, %bb.bd ]
  %i.nz = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.oa = add nuw nsw i64 %i.nz, 9                ; 2 uses
  %i.ob = lshr i64 %.sroa.7.1.i.i, %i.oa          ; 6 uses
  %reass.sub = sub nsw i64 %i.ne, %i.nf
  %.neg = add nsw i64 %reass.sub, %i.nz           ; 4 uses
  %i.oc = add nsw i64 %.neg, 1086
  %i.od = icmp slt i64 %.neg, -1085
  br i1 %i.od, label %bb.bg, label %bb.bj, !prof !108

bb.bg:                                            ; preds = %bb.bf
  %i.oe = icmp samesign ult i64 %.neg, -1148
  br i1 %i.oe, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.of = select i1 %i.iq, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.bg
  %i.og = sub nuw nsw i64 -1085, %.neg
  %i.oh = lshr i64 %i.ob, %i.og                   ; 2 uses
  %i.oi = and i64 %i.oh, 1
  %i.oj = add nuw nsw i64 %i.oi, %i.oh            ; 2 uses
  %i.ok = lshr i64 %i.oj, 1
  %i.ol = icmp samesign ugt i64 %i.oj, 9007199254740991
  %i.om = and i64 %i.ok, 13510798882111487
  %i.on = select i1 %i.ol, i64 4503599627370496, i64 0
  %i.oo = select i1 %i.iq, i64 -9223372036854775808, i64 0
  %i.op = or disjoint i64 %i.on, %i.oo
  %i.oq = or disjoint i64 %i.op, %i.om
  %i.or = bitcast i64 %i.oq to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bj:                                            ; preds = %bb.bf
  %i.os = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.ot = add nsw i64 %.2709811, 4
  %i.ou = icmp ult i64 %i.ot, 28
  %or.cond7.i.i = and i1 %i.ou, %i.os
  %i.ov = and i64 %i.ob, 3
  %i.ow = icmp eq i64 %i.ov, 1
  %i.ox = select i1 %or.cond7.i.i, i1 %i.ow, i1 false
  br i1 %i.ox, label %bb.bk, label %bb.bl, !prof !108

bb.bk:                                            ; preds = %bb.bj
  %i.oy = shl i64 %i.ob, %i.oa
  %i.oz = icmp eq i64 %i.oy, %.sroa.7.1.i.i
  %i.pa = and i64 %i.ob, 72057594037927932
  %spec.select90.i.i = select i1 %i.oz, i64 %i.pa, i64 %i.ob
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.080.i.i = phi i64 [ %i.ob, %bb.bj ], [ %spec.select90.i.i, %bb.bk ] ; 2 uses
  %i.pb = and i64 %.080.i.i, 1
  %i.pc = add nuw nsw i64 %i.pb, %.080.i.i        ; 2 uses
  %i.pd = icmp samesign ugt i64 %i.pc, 18014398509481983 ; 2 uses
  %i.pe = zext i1 %i.pd to i64
  %spec.select92.i.i = add nuw nsw i64 %i.oc, %i.pe ; 2 uses
  %i.pf = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.pf, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bm, !prof !108

bb.bm:                                            ; preds = %bb.bl
  %i.pg = lshr i64 %i.pc, 1
  %i.ph = and i64 %i.pg, 13510798882111487
  %i.pi = select i1 %i.pd, i64 0, i64 %i.ph
  %i.pj = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.pk = select i1 %i.iq, i64 -9223372036854775808, i64 0
  %i.pl = or disjoint i64 %i.pi, %i.pk
  %i.pm = or i64 %i.pl, %i.pj
  %i.pn = bitcast i64 %i.pm to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bl
  %i.po = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.if, ptr noundef %i.f)
  br i1 %i.po, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bn

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1442 = load double, ptr %i.f, align 8, !tbaa !123
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.ba, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bm, %bb.bi, %bb.bh, %bb.bc
  %i.pp = phi double [ %.pre1442, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.pn, %bb.bm ], [ %i.or, %bb.bi ], [ %i.of, %bb.bh ], [ %spec.select1585, %bb.ba ], [ %i.nc, %bb.bc ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.pq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pp, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.pr, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i259.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bo:                                            ; preds = %bb.at
  %i.ps = select i1 %i.iq, i64 19, i64 20         ; 2 uses
  %i.pt = icmp ugt i64 %.044.i.i, %i.ps
  br i1 %i.pt, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pu = icmp eq i64 %.044.i.i, %i.ps
  br i1 %i.pu, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.iq, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.pv = icmp ugt i64 %.2702, -9223372036854775808
  br i1 %i.pv, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pw = sub i64 0, %.2702
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !40
  %i.px = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.pw, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pz = load i8, ptr %.1693, align 1, !tbaa !36
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.qc, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bt:                                            ; preds = %bb.bq
  %i.qd = icmp ne i8 %i.ip, 49
  %i.qe = icmp sgt i64 %.2702, -1
  %or.cond5.i.i = select i1 %i.qd, i1 true, i1 %i.qe
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread814

bb.bu:                                            ; preds = %bb.bp
  %i.qf = icmp slt i64 %.2702, 0
  br i1 %i.qf, label %.thread814, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qg = sub nsw i64 0, %.2702
  %i.qh = select i1 %i.iq, i64 %i.qg, i64 %.2702
  br label %.thread814

.thread814:                                       ; preds = %bb.bu, %bb.bt, %bb.bv
  %.sink1587 = phi i64 [ 7782220156096217088, %bb.bv ], [ 8430738502437568512, %bb.bt ], [ 8430738502437568512, %bb.bu ]
  %.sink = phi i64 [ %i.qh, %bb.bv ], [ %.2702, %bb.bt ], [ %.2702, %bb.bu ]
  store i64 %.sink1587, ptr %i.y, align 8, !tbaa !40
  %i.qi = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qi, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qj = load i8, ptr %.1693, align 1, !tbaa !36
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.qm, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819: ; preds = %bb.bo, %bb.br
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !125, !range !50, !noundef !51
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %.preheader1640, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1640:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, %.preheader1640
  %.122.i.i = phi ptr [ %i.qt, %.preheader1640 ], [ %i.is, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819 ] ; 3 uses
  %i.qq = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.qr = add i8 %i.qq, -48
  %i.qs = icmp ult i8 %i.qr, 10
  %i.qt = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.qs, label %.preheader1640, label %bb.bw, !llvm.loop !20

bb.bw:                                            ; preds = %.preheader1640
  %i.qu = zext i8 %i.qq to i64
  %i.qv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i249.i = icmp eq i8 %i.qw, 0
  br i1 %.not.i249.i, label %bb.bx, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bx:                                            ; preds = %bb.bw
  %i.qx = ptrtoint ptr %.122.i.i to i64
  %i.qy = ptrtoint ptr %i.if to i64
  %i.qz = sub i64 %i.qx, %i.qy                    ; 3 uses
  %i.ra = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !48
  %i.rd = ptrtoint ptr %i.n to i64
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = sub i64 %i.rd, %i.re
  %i.rg = or i64 %i.rf, 6485183463413514240
  store i64 %i.rg, ptr %i.y, align 8, !tbaa !40
  %i.rh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ri, ptr nonnull align 1 %i.if, i64 %i.qz, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.qz
  %i.rk = trunc i64 %i.qz to i32
  store i32 %i.rk, ptr %i.n, align 1
  store i8 0, ptr %i.rj, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.aj, %bb.av, %bb.bw, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread814, %bb.bt, %bb.bs, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.aq
  %.0.i176.i1204.ph = phi i32 [ 9, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.bs ], [ 9, %bb.bt ], [ 9, %.thread814 ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.aj ], [ 10, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819 ], [ 9, %bb.bw ], [ 9, %bb.av ], [ 9, %bb.aq ]
end_hunk_15
begin_hunk_16_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7664.ptr = getelementptr inbounds nuw i8, ptr %.0657.lcssa, i64 %.7664.add
  %i.ahs = load i8, ptr %.7664.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aht = add i8 %i.ahs, -48                     ; 2 uses
  %i.ahu = icmp ult i8 %i.aht, 10
  br i1 %i.ahu, label %.lr.ph1371, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, !llvm.loop !16

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i.i
  %.not1298 = icmp eq i64 %.5662.add, 1
  br i1 %.not1298, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread: ; preds = %.lr.ph1371, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i
  %.5670.lcssa1524 = phi i64 [ %.4669986, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.ahr, %.lr.ph1371 ]
  %.7664.idx.lcssa13671523 = phi i64 [ %.5662.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %.7664.add, %.lr.ph1371 ] ; 2 uses
  %i.ahv = phi i8 [ %i.ahl, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.ahs, %.lr.ph1371 ]
  %.7664.ptr.le = getelementptr inbounds nuw i8, ptr %.0657.lcssa, i64 %.7664.idx.lcssa13671523 ; 2 uses
  %i.ahw = ptrtoint ptr %.7664.ptr.le to i64
  %gepdiff1403 = sub nsw i64 1, %.7664.idx.lcssa13671523
  %i.ahx = sub i64 %i.ahw, %i.agh
  %sext.i.i.i = shl i64 %i.ahx, 32
  %i.ahy = ashr exact i64 %sext.i.i.i, 32
  br label %bb.dt

bb.dt:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, %bb.dq
  %i.ahz = phi i8 [ %i.ahv, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.lcssa1333, %bb.dq ] ; 2 uses
  %.0672 = phi i64 [ %gepdiff1403, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ 0, %bb.dq ] ; 2 uses
  %.2667 = phi i64 [ %.5670.lcssa1524, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0665.lcssa, %bb.dq ] ; 14 uses
  %.1658 = phi ptr [ %.7664.ptr.le, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0657.lcssa, %bb.dq ] ; 4 uses
  %.044.i.i.i = phi i64 [ %i.ahy, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %i.agi, %bb.dq ] ; 4 uses
  switch i8 %i.ahz, label %bb.dz [
    i8 101, label %bb.du
    i8 69, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt
  %i.aia = getelementptr inbounds nuw i8, ptr %.1658, i64 1 ; 2 uses
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !36 ; 3 uses
  %i.aic = icmp eq i8 %i.aib, 45
  switch i8 %i.aib, label %bb.dw [
    i8 45, label %bb.dv
    i8 43, label %bb.dv
  ]

bb.dv:                                            ; preds = %bb.du, %bb.du
  %i.aid = getelementptr inbounds nuw i8, ptr %.1658, i64 2 ; 2 uses
  %.pre1444 = load i8, ptr %i.aid, align 1, !tbaa !36
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.aie = phi i8 [ %i.aib, %bb.du ], [ %.pre1444, %bb.dv ]
  %.2659 = phi ptr [ %i.aia, %bb.du ], [ %i.aid, %bb.dv ] ; 3 uses
  %i.aif = add i8 %i.aie, -48                     ; 2 uses
  %i.aig = icmp ult i8 %i.aif, 10
  br i1 %i.aig, label %.lr.ph1378, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1378:                                       ; preds = %bb.dw, %.lr.ph1378
  %i.aih = phi i8 [ %i.aim, %.lr.ph1378 ], [ %i.aif, %bb.dw ]
  %.06541377 = phi i64 [ %i.aik, %.lr.ph1378 ], [ 0, %bb.dw ]
  %.3660.idx1376 = phi i64 [ %.3660.add, %.lr.ph1378 ], [ 0, %bb.dw ] ; 2 uses
  %i.aii = mul nsw i64 %.06541377, 10
  %i.aij = zext nneg i8 %i.aih to i64
  %i.aik = add nsw i64 %i.aii, %i.aij             ; 3 uses
  %.3660.add = add nuw nsw i64 %.3660.idx1376, 1  ; 3 uses
  %.3660.ptr = getelementptr inbounds nuw i8, ptr %.2659, i64 %.3660.add
  %i.ail = load i8, ptr %.3660.ptr, align 1, !tbaa !36 ; 2 uses
  %i.aim = add i8 %i.ail, -48                     ; 2 uses
  %i.ain = icmp ult i8 %i.aim, 10
  br i1 %i.ain, label %.lr.ph1378, label %bb.dx, !llvm.loop !17

bb.dx:                                            ; preds = %.lr.ph1378
  %.3660.ptr.le = getelementptr inbounds nuw i8, ptr %.2659, i64 %.3660.add
  %i.aio = icmp samesign ugt i64 %.3660.idx1376, 17
  br i1 %i.aio, label %.preheader1321, label %.thread996, !prof !108

.preheader1321:                                   ; preds = %bb.dx, %.preheader1321
  %.0.i22.i.i = phi ptr [ %i.air, %.preheader1321 ], [ %.2659, %bb.dx ] ; 3 uses
  %i.aip = load i8, ptr %.0.i22.i.i, align 1, !tbaa !36
  %i.aiq = icmp eq i8 %i.aip, 48
  %i.air = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 1
  br i1 %i.aiq, label %.preheader1321, label %bb.dy, !llvm.loop !18

bb.dy:                                            ; preds = %.preheader1321
  %i.ais = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 18
  %i.ait = icmp ugt ptr %.3660.ptr.le, %i.ais
  %spec.select1284 = select i1 %i.ait, i64 999999999999999999, i64 %i.aik
  br label %.thread996

.thread996:                                       ; preds = %bb.dy, %bb.dx
  %.2656 = phi i64 [ %i.aik, %bb.dx ], [ %spec.select1284, %bb.dy ] ; 2 uses
  %i.aiu = sub nsw i64 0, %.2656
  %i.aiv = select i1 %i.aic, i64 %i.aiu, i64 %.2656
  %i.aiw = add nsw i64 %i.aiv, %.0672
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dt
  br i1 %i.agm, label %bb.ea, label %bb.eu

bb.ea:                                            ; preds = %.thread996, %bb.dz
  %i.aix = phi i8 [ %i.ail, %.thread996 ], [ %i.ahz, %bb.dz ]
  %.26741000 = phi i64 [ %i.aiw, %.thread996 ], [ %.0672, %bb.dz ] ; 9 uses
  %i.aiy = zext i8 %i.aix to i64
  %i.aiz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aiy
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i.i = icmp eq i8 %i.aja, 0            ; 3 uses
  %i.ajb = icmp ugt i64 %.044.i.i.i, 19
  br i1 %i.ajb, label %.preheader1320, label %.critedge.i.i.i

.preheader1320:                                   ; preds = %bb.ea, %.critedge.i29.i.i
  %i.ajc = phi i8 [ %.pre1445, %.critedge.i29.i.i ], [ %i.afv, %bb.ea ]
  %.0.i28.i.i = phi ptr [ %i.ajd, %.critedge.i29.i.i ], [ %i.afu, %bb.ea ] ; 2 uses
  switch i8 %i.ajc, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i [
    i8 48, label %.critedge.i29.i.i
    i8 46, label %.critedge.i29.i.i
  ]

.critedge.i29.i.i:                                ; preds = %.preheader1320, %.preheader1320
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0.i28.i.i, i64 1 ; 2 uses
  %.pre1445 = load i8, ptr %i.ajd, align 1, !tbaa !36
  br label %.preheader1320, !llvm.loop !19

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i: ; preds = %.preheader1320
  %i.aje = ptrtoint ptr %.0.i28.i.i to i64
  %.neg.i.i.i = add i64 %.044.i.i.i, %i.agh
  %i.ajf = sub i64 %.neg.i.i.i, %i.aje
  %i.ajg = icmp ugt i64 %i.ajf, 19
  br i1 %i.ajg, label %.noexc26.i.i, label %.critedge.i.i.i, !prof !108

.noexc26.i.i:                                     ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.ajh = call fastcc noundef i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.yj, ptr noundef %i.c)
  %i.aji = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajj = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.aji, ptr %i.ajj, align 8
  %i.ajk = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

.critedge.i.i.i:                                  ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i, %bb.ea
  %i.ajl = add i64 %.26741000, -309
  %or.cond.i23.i.i = icmp ult i64 %i.ajl, -651
  br i1 %or.cond.i23.i.i, label %bb.eb, label %bb.ec, !prof !124

bb.eb:                                            ; preds = %.critedge.i.i.i
  %i.ajm = icmp slt i64 %.26741000, -342
  %i.ajn = icmp eq i64 %.2667, 0
  %or.cond3.i.i.i = or i1 %i.ajn, %i.ajm
  br i1 %or.cond3.i.i.i, label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread: ; preds = %bb.eb
  %i.ajo = select i1 %i.afs, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajo, ptr %i.ajp, align 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i.i, label %select.unfold1014, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ec:                                            ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ajr = add nsw i64 %.26741000, 22
  %or.cond.i30.i.i = icmp ult i64 %i.ajr, 45
  %i.ajs = icmp ult i64 %.2667, 9007199254740992
  %or.cond3.i31.i.i = and i1 %i.ajs, %or.cond.i30.i.i
  br i1 %or.cond3.i31.i.i, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  %i.ajt = uitofp nneg i64 %.2667 to double       ; 2 uses
  %i.aju = icmp slt i64 %.26741000, 0
  br i1 %i.aju, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ajv = sub nsw i64 0, %.26741000
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ajv
  %i.ajx = load double, ptr %i.ajw, align 8, !tbaa !123
  %i.ajy = fdiv double %i.ajt, %i.ajx
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.26741000
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !123
  %i.akb = fmul double %i.aka, %i.ajt
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %storemerge.i.i.i = phi double [ %i.akb, %bb.ef ], [ %i.ajy, %bb.ee ] ; 2 uses
  %i.akc = fneg double %storemerge.i.i.i
  %spec.select1597 = select i1 %i.afs, double %i.akc, double %storemerge.i.i.i
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.eh:                                            ; preds = %bb.ec
  %i.akd = icmp eq i64 %.2667, 0
  br i1 %i.akd, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ake = select i1 %i.afs, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ej:                                            ; preds = %bb.eh
  %i.akf = mul nsw i64 %.26741000, 217706
  %i.akg = ashr i64 %i.akf, 16
  %i.akh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2667, i1 true) ; 2 uses
  %i.aki = shl i64 %.2667, %i.akh                 ; 2 uses
  %i.akj = trunc nsw i64 %.26741000 to i32
  %i.akk = shl nsw i32 %i.akj, 1
  %i.akl = sext i32 %i.akk to i64
  %i.akm = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.akl ; 2 uses
  %i.akn = getelementptr i8, ptr %i.akm, i64 5472
  %i.ako = load i64, ptr %i.akn, align 16, !tbaa !40
  %i.akp = zext i64 %i.aki to i128
  %i.akq = zext i64 %i.ako to i128
  %i.akr = mul nuw i128 %i.akq, %i.akp            ; 2 uses
  %i.aks = trunc i128 %i.akr to i64               ; 2 uses
  %i.akt = lshr i128 %i.akr, 64
  %i.aku = trunc nuw i128 %i.akt to i64           ; 3 uses
  %i.akv = and i64 %i.aku, 511
  %i.akw = icmp eq i64 %i.akv, 511
  br i1 %i.akw, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.akx = getelementptr i8, ptr %i.akm, i64 5480
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.aki, i64 %i.aky) ; 2 uses
  %i.akz = add i64 %4, %i.aks                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.akz
  %i.ala = zext i1 %5 to i64
  %spec.select.i32.i.i = add nuw i64 %i.ala, %i.aku
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i32.i.i, %bb.ek ], [ %i.aku, %bb.ej ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.akz, %bb.ek ], [ %i.aks, %bb.ej ]
  %i.alb = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.alc = add nuw nsw i64 %i.alb, 9              ; 2 uses
  %i.ald = lshr i64 %.sroa.7.1.i.i.i, %i.alc      ; 6 uses
  %reass.sub1405 = sub nsw i64 %i.akg, %i.akh
  %.neg1404 = add nsw i64 %reass.sub1405, %i.alb  ; 4 uses
  %i.ale = add nsw i64 %.neg1404, 1086
  %i.alf = icmp slt i64 %.neg1404, -1085
  br i1 %i.alf, label %bb.em, label %bb.ep, !prof !108

bb.em:                                            ; preds = %bb.el
  %i.alg = icmp samesign ult i64 %.neg1404, -1148
  br i1 %i.alg, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.alh = select i1 %i.afs, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.eo:                                            ; preds = %bb.em
  %i.ali = sub nuw nsw i64 -1085, %.neg1404
  %i.alj = lshr i64 %i.ald, %i.ali                ; 2 uses
  %i.alk = and i64 %i.alj, 1
  %i.all = add nuw nsw i64 %i.alk, %i.alj         ; 2 uses
  %i.alm = lshr i64 %i.all, 1
  %i.aln = icmp samesign ugt i64 %i.all, 9007199254740991
  %i.alo = and i64 %i.alm, 13510798882111487
  %i.alp = select i1 %i.aln, i64 4503599627370496, i64 0
  %i.alq = select i1 %i.afs, i64 -9223372036854775808, i64 0
  %i.alr = or disjoint i64 %i.alp, %i.alq
  %i.als = or disjoint i64 %i.alr, %i.alo
  %i.alt = bitcast i64 %i.als to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ep:                                            ; preds = %bb.el
  %i.alu = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.alv = add nsw i64 %.26741000, 4
  %i.alw = icmp ult i64 %i.alv, 28
  %or.cond7.i.i.i = and i1 %i.alw, %i.alu
  %i.alx = and i64 %i.ald, 3
  %i.aly = icmp eq i64 %i.alx, 1
  %i.alz = select i1 %or.cond7.i.i.i, i1 %i.aly, i1 false
  br i1 %i.alz, label %bb.eq, label %bb.er, !prof !108

bb.eq:                                            ; preds = %bb.ep
  %i.ama = shl i64 %i.ald, %i.alc
  %i.amb = icmp eq i64 %i.ama, %.sroa.7.1.i.i.i
  %i.amc = and i64 %i.ald, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.amb, i64 %i.amc, i64 %i.ald
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.080.i.i.i = phi i64 [ %i.ald, %bb.ep ], [ %spec.select90.i.i.i, %bb.eq ] ; 2 uses
  %i.amd = and i64 %.080.i.i.i, 1
  %i.ame = add nuw nsw i64 %i.amd, %.080.i.i.i    ; 2 uses
  %i.amf = icmp samesign ugt i64 %i.ame, 18014398509481983 ; 2 uses
  %i.amg = zext i1 %i.amf to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.ale, %i.amg ; 2 uses
  %i.amh = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.amh, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.es, !prof !108

bb.es:                                            ; preds = %bb.er
  %i.ami = lshr i64 %i.ame, 1
  %i.amj = and i64 %i.ami, 13510798882111487
  %i.amk = select i1 %i.amf, i64 0, i64 %i.amj
  %i.aml = shl nuw nsw i64 %spec.select92.i.i.i, 52
  %i.amm = select i1 %i.afs, i64 -9223372036854775808, i64 0
  %i.amn = or disjoint i64 %i.amk, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  %i.amp = bitcast i64 %i.amo to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.er
  %i.amq = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.yj, ptr noundef %i.d)
  br i1 %i.amq, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, label %bb.et

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.pre1446 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread: ; preds = %bb.eg, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, %bb.es, %bb.eo, %bb.en, %bb.ei
  %i.amr = phi double [ %.pre1446, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge ], [ %i.amp, %bb.es ], [ %i.alt, %bb.eo ], [ %i.alh, %bb.en ], [ %spec.select1597, %bb.eg ], [ %i.ake, %bb.ei ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.amr, ptr %i.ams, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.et

bb.et:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.sroa.0.21 = phi ptr [ %i.amt, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ %.sroa.0.6, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  %.0.i24.i.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i: ; preds = %bb.et, %.noexc26.i.i
  %.sroa.0.22 = phi ptr [ %i.ajk, %.noexc26.i.i ], [ %.sroa.0.21, %bb.et ]
  %.1.i25.i.i = phi i32 [ %i.ajh, %.noexc26.i.i ], [ %.0.i24.i.i, %bb.et ] ; 2 uses
  %.not60.i.i.i = icmp eq i32 %.1.i25.i.i, 0      ; 2 uses
  %..i.i.i = select i1 %.not59.i.i.i, i32 0, i32 9
  %spec.select1285 = select i1 %.not60.i.i.i, i32 %..i.i.i, i32 %.1.i25.i.i
  %.not165.i = and i1 %.not59.i.i.i, %.not60.i.i.i
  br i1 %.not165.i, label %select.unfold1014, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.eu:                                            ; preds = %bb.dz
  %i.amu = select i1 %i.afs, i64 19, i64 20       ; 2 uses
  %i.amv = icmp ugt i64 %.044.i.i.i, %i.amu
  br i1 %i.amv, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread1009, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.amw = icmp eq i64 %.044.i.i.i, %i.amu
  br i1 %i.amw, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.afs, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.amx = icmp ugt i64 %.2667, -9223372036854775808
  br i1 %i.amx, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread1009, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.amy = sub i64 0, %.2667
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.amy, ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anb = load i8, ptr %.1658, align 1, !tbaa !36
  %i.anc = zext i8 %i.anb to i64
  %i.and = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anc
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i.i = icmp eq i8 %i.ane, 0
  br i1 %.not58.i.i.i, label %select.unfold1014, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ez:                                            ; preds = %bb.ew
  %i.anf = icmp ne i8 %i.yk, 49
  %i.ang = icmp sgt i64 %.2667, -1
  %or.cond5.i.i.i = select i1 %i.anf, i1 true, i1 %i.ang
  br i1 %or.cond5.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1003

bb.fa:                                            ; preds = %bb.ev
  %i.anh = icmp slt i64 %.2667, 0
  br i1 %i.anh, label %.thread1003, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ani = sub nsw i64 0, %.2667
  %i.anj = select i1 %i.afs, i64 %i.ani, i64 %.2667
  br label %.thread1003

.thread1003:                                      ; preds = %bb.fa, %bb.ez, %bb.fb
  %.sink1600 = phi i64 [ 7782220156096217088, %bb.fb ], [ 8430738502437568512, %bb.ez ], [ 8430738502437568512, %bb.fa ]
  %.sink1598 = phi i64 [ %i.anj, %bb.fb ], [ %.2667, %bb.ez ], [ %.2667, %bb.fa ]
  store i64 %.sink1600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1598, ptr %i.ank, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.anl = load i8, ptr %.1658, align 1, !tbaa !36
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anm
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i.i = icmp eq i8 %i.ano, 0
  br i1 %.not57.i.i.i, label %select.unfold1014, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread1009: ; preds = %bb.eu, %bb.ex
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.anq = load i8, ptr %i.anp, align 8, !tbaa !125, !range !50, !noundef !51
  %i.anr = trunc nuw i8 %i.anq to i1
  br i1 %i.anr, label %.preheader1635, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1635:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread1009, %.preheader1635
  %.122.i.i.i = phi ptr [ %i.anv, %.preheader1635 ], [ %i.afu, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread1009 ] ; 3 uses
  %i.ans = load i8, ptr %.122.i.i.i, align 1, !tbaa !36 ; 2 uses
  %i.ant = add i8 %i.ans, -48
  %i.anu = icmp ult i8 %i.ant, 10
  %i.anv = getelementptr inbounds nuw i8, ptr %.122.i.i.i, i64 1
  br i1 %i.anu, label %.preheader1635, label %bb.fc, !llvm.loop !20

bb.fc:                                            ; preds = %.preheader1635
  %i.anw = zext i8 %i.ans to i64
  %i.anx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.anw
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i275.i = icmp eq i8 %i.any, 0
  br i1 %.not.i.i275.i, label %.split1532, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1532:                                       ; preds = %bb.fc
  %i.anz = ptrtoint ptr %.122.i.i.i to i64
  %i.aoa = ptrtoint ptr %i.yj to i64
  %i.aob = sub i64 %i.anz, %i.aoa                 ; 3 uses
  %i.aoc = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !48
  %i.aof = ptrtoint ptr %.sroa.172.6 to i64
  %i.aog = ptrtoint ptr %i.aoe to i64
  %i.aoh = sub i64 %i.aof, %i.aog
  %i.aoi = or i64 %i.aoh, 6485183463413514240
  store i64 %i.aoi, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.xw, i64 5 ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %.7629.ptr = getelementptr inbounds nuw i8, ptr %.0622.lcssa, i64 %.7629.add
  %i.bhd = load i8, ptr %.7629.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhe = add i8 %i.bhd, -48                     ; 2 uses
  %i.bhf = icmp ult i8 %i.bhe, 10
  br i1 %i.bhf, label %.lr.ph1392, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread, !llvm.loop !16

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i340.i
  %.not1303 = icmp eq i64 %.5627.add, 1
  br i1 %.not1303, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread: ; preds = %.lr.ph1392, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i
  %.5635.lcssa1538 = phi i64 [ %.46341143, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i ], [ %i.bhc, %.lr.ph1392 ]
  %.7629.idx.lcssa13881537 = phi i64 [ %.5627.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i ], [ %.7629.add, %.lr.ph1392 ] ; 2 uses
  %i.bhg = phi i8 [ %i.bgw, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i ], [ %i.bhd, %.lr.ph1392 ]
  %.7629.ptr.le = getelementptr inbounds nuw i8, ptr %.0622.lcssa, i64 %.7629.idx.lcssa13881537 ; 2 uses
  %i.bhh = ptrtoint ptr %.7629.ptr.le to i64
  %gepdiff1406 = sub nsw i64 1, %.7629.idx.lcssa13881537
  %i.bhi = sub i64 %i.bhh, %i.bfs
  %sext.i.i345.i = shl i64 %i.bhi, 32
  %i.bhj = ashr exact i64 %sext.i.i345.i, 32
  br label %bb.hf

bb.hf:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread, %bb.hc
  %i.bhk = phi i8 [ %i.bhg, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread ], [ %.lcssa1329, %bb.hc ] ; 2 uses
  %.0637 = phi i64 [ %gepdiff1406, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread ], [ 0, %bb.hc ] ; 2 uses
  %.2632 = phi i64 [ %.5635.lcssa1538, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread ], [ %.0630.lcssa, %bb.hc ] ; 14 uses
  %.1623 = phi ptr [ %.7629.ptr.le, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread ], [ %.0622.lcssa, %bb.hc ] ; 4 uses
  %.044.i.i284.i = phi i64 [ %i.bhj, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i342.i.thread ], [ %i.bft, %bb.hc ] ; 4 uses
  switch i8 %i.bhk, label %bb.hl [
    i8 101, label %bb.hg
    i8 69, label %bb.hg
  ]

bb.hg:                                            ; preds = %bb.hf, %bb.hf
  %i.bhl = getelementptr inbounds nuw i8, ptr %.1623, i64 1 ; 2 uses
  %i.bhm = load i8, ptr %i.bhl, align 1, !tbaa !36 ; 3 uses
  %i.bhn = icmp eq i8 %i.bhm, 45
  switch i8 %i.bhm, label %bb.hi [
    i8 45, label %bb.hh
    i8 43, label %bb.hh
  ]

bb.hh:                                            ; preds = %bb.hg, %bb.hg
  %i.bho = getelementptr inbounds nuw i8, ptr %.1623, i64 2 ; 2 uses
  %.pre1448 = load i8, ptr %i.bho, align 1, !tbaa !36
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.bhp = phi i8 [ %i.bhm, %bb.hg ], [ %.pre1448, %bb.hh ]
  %.2624 = phi ptr [ %i.bhl, %bb.hg ], [ %i.bho, %bb.hh ] ; 3 uses
  %i.bhq = add i8 %i.bhp, -48                     ; 2 uses
  %i.bhr = icmp ult i8 %i.bhq, 10
  br i1 %i.bhr, label %.lr.ph1399, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1399:                                       ; preds = %bb.hi, %.lr.ph1399
  %i.bhs = phi i8 [ %i.bhx, %.lr.ph1399 ], [ %i.bhq, %bb.hi ]
  %.01398 = phi i64 [ %i.bhv, %.lr.ph1399 ], [ 0, %bb.hi ]
  %.3625.idx1397 = phi i64 [ %.3625.add, %.lr.ph1399 ], [ 0, %bb.hi ] ; 2 uses
  %i.bht = mul nsw i64 %.01398, 10
  %i.bhu = zext nneg i8 %i.bhs to i64
  %i.bhv = add nsw i64 %i.bht, %i.bhu             ; 3 uses
  %.3625.add = add nuw nsw i64 %.3625.idx1397, 1  ; 3 uses
  %.3625.ptr = getelementptr inbounds nuw i8, ptr %.2624, i64 %.3625.add
  %i.bhw = load i8, ptr %.3625.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bhx = add i8 %i.bhw, -48                     ; 2 uses
  %i.bhy = icmp ult i8 %i.bhx, 10
  br i1 %i.bhy, label %.lr.ph1399, label %bb.hj, !llvm.loop !17

bb.hj:                                            ; preds = %.lr.ph1399
  %.3625.ptr.le = getelementptr inbounds nuw i8, ptr %.2624, i64 %.3625.add
  %i.bhz = icmp samesign ugt i64 %.3625.idx1397, 17
  br i1 %i.bhz, label %.preheader1318, label %.thread1153, !prof !108

.preheader1318:                                   ; preds = %bb.hj, %.preheader1318
  %.0.i22.i338.i = phi ptr [ %i.bic, %.preheader1318 ], [ %.2624, %bb.hj ] ; 3 uses
  %i.bia = load i8, ptr %.0.i22.i338.i, align 1, !tbaa !36
  %i.bib = icmp eq i8 %i.bia, 48
  %i.bic = getelementptr inbounds nuw i8, ptr %.0.i22.i338.i, i64 1
  br i1 %i.bib, label %.preheader1318, label %bb.hk, !llvm.loop !18

bb.hk:                                            ; preds = %.preheader1318
  %i.bid = getelementptr inbounds nuw i8, ptr %.0.i22.i338.i, i64 18
  %i.bie = icmp ugt ptr %.3625.ptr.le, %i.bid
  %spec.select1286 = select i1 %i.bie, i64 999999999999999999, i64 %i.bhv
  br label %.thread1153

.thread1153:                                      ; preds = %bb.hk, %bb.hj
  %.2 = phi i64 [ %i.bhv, %bb.hj ], [ %spec.select1286, %bb.hk ] ; 2 uses
  %i.bif = sub nsw i64 0, %.2
  %i.big = select i1 %i.bhn, i64 %i.bif, i64 %.2
  %i.bih = add nsw i64 %i.big, %.0637
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hf
  br i1 %i.bfx, label %bb.hm, label %bb.ig

bb.hm:                                            ; preds = %.thread1153, %bb.hl
  %i.bii = phi i8 [ %i.bhw, %.thread1153 ], [ %i.bhk, %bb.hl ]
  %.26391157 = phi i64 [ %i.bih, %.thread1153 ], [ %.0637, %bb.hl ] ; 9 uses
  %i.bij = zext i8 %i.bii to i64
  %i.bik = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bij
  %i.bil = load i8, ptr %i.bik, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i305.i = icmp eq i8 %i.bil, 0         ; 3 uses
  %i.bim = icmp ugt i64 %.044.i.i284.i, 19
  br i1 %i.bim, label %.preheader, label %.critedge.i.i306.i

.preheader:                                       ; preds = %bb.hm, %.critedge.i29.i334.i
  %i.bin = phi i8 [ %.pre1449, %.critedge.i29.i334.i ], [ %i.bfg, %bb.hm ]
  %.0.i28.i333.i = phi ptr [ %i.bio, %.critedge.i29.i334.i ], [ %i.bff, %bb.hm ] ; 2 uses
  switch i8 %i.bin, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i335.i [
    i8 48, label %.critedge.i29.i334.i
    i8 46, label %.critedge.i29.i334.i
  ]

.critedge.i29.i334.i:                             ; preds = %.preheader, %.preheader
  %i.bio = getelementptr inbounds nuw i8, ptr %.0.i28.i333.i, i64 1 ; 2 uses
  %.pre1449 = load i8, ptr %i.bio, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !19

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i335.i: ; preds = %.preheader
  %i.bip = ptrtoint ptr %.0.i28.i333.i to i64
  %.neg.i.i336.i = add i64 %.044.i.i284.i, %i.bfs
  %i.biq = sub i64 %.neg.i.i336.i, %i.bip
  %i.bir = icmp ugt i64 %i.biq, 19
  br i1 %i.bir, label %.noexc26.i337.i, label %.critedge.i.i306.i, !prof !108

.noexc26.i337.i:                                  ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i335.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bis = call fastcc noundef i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.axu, ptr noundef %i.a)
  %i.bit = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.biu = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bit, ptr %i.biu, align 8
  %i.biv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i321.i

.critedge.i.i306.i:                               ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i335.i, %bb.hm
  %i.biw = add i64 %.26391157, -309
  %or.cond.i23.i307.i = icmp ult i64 %i.biw, -651
  br i1 %or.cond.i23.i307.i, label %bb.hn, label %bb.ho, !prof !124

bb.hn:                                            ; preds = %.critedge.i.i306.i
  %i.bix = icmp slt i64 %.26391157, -342
  %i.biy = icmp eq i64 %.2632, 0
  %or.cond3.i.i332.i = or i1 %i.biy, %i.bix
  br i1 %or.cond3.i.i332.i, label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i321.i.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i321.i.thread: ; preds = %bb.hn
  %i.biz = select i1 %i.bfd, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bja = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.biz, ptr %i.bja, align 8
  %i.bjb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i305.i, label %select.unfold1171, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ho:                                            ; preds = %.critedge.i.i306.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bjc = add nsw i64 %.26391157, 22
  %or.cond.i30.i308.i = icmp ult i64 %i.bjc, 45
  %i.bjd = icmp ult i64 %.2632, 9007199254740992
  %or.cond3.i31.i309.i = and i1 %i.bjd, %or.cond.i30.i308.i
  br i1 %or.cond3.i31.i309.i, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %bb.ho
  %i.bje = uitofp nneg i64 %.2632 to double       ; 2 uses
  %i.bjf = icmp slt i64 %.26391157, 0
  br i1 %i.bjf, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bjg = sub nsw i64 0, %.26391157
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bjg
  %i.bji = load double, ptr %i.bjh, align 8, !tbaa !123
  %i.bjj = fdiv double %i.bje, %i.bji
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.bjk = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.26391157
  %i.bjl = load double, ptr %i.bjk, align 8, !tbaa !123
  %i.bjm = fmul double %i.bjl, %i.bje
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %storemerge.i.i331.i = phi double [ %i.bjm, %bb.hr ], [ %i.bjj, %bb.hq ] ; 2 uses
  %i.bjn = fneg double %storemerge.i.i331.i
  %spec.select1629 = select i1 %i.bfd, double %i.bjn, double %storemerge.i.i331.i
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread

bb.ht:                                            ; preds = %bb.ho
  %i.bjo = icmp eq i64 %.2632, 0
  br i1 %i.bjo, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bjp = select i1 %i.bfd, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread

bb.hv:                                            ; preds = %bb.ht
  %i.bjq = mul nsw i64 %.26391157, 217706
  %i.bjr = ashr i64 %i.bjq, 16
  %i.bjs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2632, i1 true) ; 2 uses
  %i.bjt = shl i64 %.2632, %i.bjs                 ; 2 uses
  %i.bju = trunc nsw i64 %.26391157 to i32
  %i.bjv = shl nsw i32 %i.bju, 1
  %i.bjw = sext i32 %i.bjv to i64
  %i.bjx = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bjw ; 2 uses
  %i.bjy = getelementptr i8, ptr %i.bjx, i64 5472
  %i.bjz = load i64, ptr %i.bjy, align 16, !tbaa !40
  %i.bka = zext i64 %i.bjt to i128
  %i.bkb = zext i64 %i.bjz to i128
  %i.bkc = mul nuw i128 %i.bkb, %i.bka            ; 2 uses
  %i.bkd = trunc i128 %i.bkc to i64               ; 2 uses
  %i.bke = lshr i128 %i.bkc, 64
  %i.bkf = trunc nuw i128 %i.bke to i64           ; 3 uses
  %i.bkg = and i64 %i.bkf, 511
  %i.bkh = icmp eq i64 %i.bkg, 511
  br i1 %i.bkh, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.bki = getelementptr i8, ptr %i.bjx, i64 5480
  %i.bkj = load i64, ptr %i.bki, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bjt, i64 %i.bkj) ; 2 uses
  %i.bkk = add i64 %6, %i.bkd                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bkk
  %i.bkl = zext i1 %7 to i64
  %spec.select.i32.i330.i = add nuw i64 %i.bkl, %i.bkf
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.sroa.7.1.i.i312.i = phi i64 [ %spec.select.i32.i330.i, %bb.hw ], [ %i.bkf, %bb.hv ] ; 3 uses
  %.sroa.037.0.i.i313.i = phi i64 [ %i.bkk, %bb.hw ], [ %i.bkd, %bb.hv ]
  %i.bkm = lshr i64 %.sroa.7.1.i.i312.i, 63       ; 2 uses
  %i.bkn = add nuw nsw i64 %i.bkm, 9              ; 2 uses
  %i.bko = lshr i64 %.sroa.7.1.i.i312.i, %i.bkn   ; 6 uses
  %reass.sub1408 = sub nsw i64 %i.bjr, %i.bjs
  %.neg1407 = add nsw i64 %reass.sub1408, %i.bkm  ; 4 uses
  %i.bkp = add nsw i64 %.neg1407, 1086
  %i.bkq = icmp slt i64 %.neg1407, -1085
  br i1 %i.bkq, label %bb.hy, label %bb.ib, !prof !108

bb.hy:                                            ; preds = %bb.hx
  %i.bkr = icmp samesign ult i64 %.neg1407, -1148
  br i1 %i.bkr, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.bks = select i1 %i.bfd, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread

bb.ia:                                            ; preds = %bb.hy
  %i.bkt = sub nuw nsw i64 -1085, %.neg1407
  %i.bku = lshr i64 %i.bko, %i.bkt                ; 2 uses
  %i.bkv = and i64 %i.bku, 1
  %i.bkw = add nuw nsw i64 %i.bkv, %i.bku         ; 2 uses
  %i.bkx = lshr i64 %i.bkw, 1
  %i.bky = icmp samesign ugt i64 %i.bkw, 9007199254740991
  %i.bkz = and i64 %i.bkx, 13510798882111487
  %i.bla = select i1 %i.bky, i64 4503599627370496, i64 0
  %i.blb = select i1 %i.bfd, i64 -9223372036854775808, i64 0
  %i.blc = or disjoint i64 %i.bla, %i.blb
  %i.bld = or disjoint i64 %i.blc, %i.bkz
  %i.ble = bitcast i64 %i.bld to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread

bb.ib:                                            ; preds = %bb.hx
  %i.blf = icmp ult i64 %.sroa.037.0.i.i313.i, 2
  %i.blg = add nsw i64 %.26391157, 4
  %i.blh = icmp ult i64 %i.blg, 28
  %or.cond7.i.i314.i = and i1 %i.blh, %i.blf
  %i.bli = and i64 %i.bko, 3
  %i.blj = icmp eq i64 %i.bli, 1
  %i.blk = select i1 %or.cond7.i.i314.i, i1 %i.blj, i1 false
  br i1 %i.blk, label %bb.ic, label %bb.id, !prof !108

bb.ic:                                            ; preds = %bb.ib
  %i.bll = shl i64 %i.bko, %i.bkn
  %i.blm = icmp eq i64 %i.bll, %.sroa.7.1.i.i312.i
  %i.bln = and i64 %i.bko, 72057594037927932
  %spec.select90.i.i327.i = select i1 %i.blm, i64 %i.bln, i64 %i.bko
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.080.i.i315.i = phi i64 [ %i.bko, %bb.ib ], [ %spec.select90.i.i327.i, %bb.ic ] ; 2 uses
  %i.blo = and i64 %.080.i.i315.i, 1
  %i.blp = add nuw nsw i64 %i.blo, %.080.i.i315.i ; 2 uses
  %i.blq = icmp samesign ugt i64 %i.blp, 18014398509481983 ; 2 uses
  %i.blr = zext i1 %i.blq to i64
  %spec.select92.i.i317.i = add nuw nsw i64 %i.bkp, %i.blr ; 2 uses
  %i.bls = icmp samesign ugt i64 %spec.select92.i.i317.i, 2046
  br i1 %i.bls, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i, label %bb.ie, !prof !108

bb.ie:                                            ; preds = %bb.id
  %i.blt = lshr i64 %i.blp, 1
  %i.blu = and i64 %i.blt, 13510798882111487
  %i.blv = select i1 %i.blq, i64 0, i64 %i.blu
  %i.blw = shl nuw nsw i64 %spec.select92.i.i317.i, 52
  %i.blx = select i1 %i.bfd, i64 -9223372036854775808, i64 0
  %i.bly = or disjoint i64 %i.blv, %i.blx
  %i.blz = or i64 %i.bly, %i.blw
  %i.bma = bitcast i64 %i.blz to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i: ; preds = %bb.id
  %i.bmb = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.axu, ptr noundef %i.b)
  br i1 %i.bmb, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread_crit_edge, label %bb.if

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i
  %.pre1450 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread: ; preds = %bb.hs, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread_crit_edge, %bb.ie, %bb.ia, %bb.hz, %bb.hu
  %i.bmc = phi double [ %.pre1450, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread_crit_edge ], [ %i.bma, %bb.ie ], [ %i.ble, %bb.ia ], [ %i.bks, %bb.hz ], [ %spec.select1629, %bb.hs ], [ %i.bjp, %bb.hu ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmd = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bmc, ptr %i.bmd, align 8
  %i.bme = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.if

bb.if:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i
  %.sroa.0.31 = phi ptr [ %i.bme, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread ], [ %.sroa.0.2, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i ]
  %.0.i24.i320.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i318.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i321.i

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i321.i: ; preds = %bb.if, %.noexc26.i337.i
  %.sroa.0.32 = phi ptr [ %i.biv, %.noexc26.i337.i ], [ %.sroa.0.31, %bb.if ]
  %.1.i25.i322.i = phi i32 [ %i.bis, %.noexc26.i337.i ], [ %.0.i24.i320.i, %bb.if ] ; 2 uses
  %.not60.i.i323.i = icmp eq i32 %.1.i25.i322.i, 0 ; 2 uses
  %..i.i325.i = select i1 %.not59.i.i305.i, i32 0, i32 9
  %spec.select1287 = select i1 %.not60.i.i323.i, i32 %..i.i325.i, i32 %.1.i25.i322.i
  %.not166.i = and i1 %.not59.i.i305.i, %.not60.i.i323.i
  br i1 %.not166.i, label %select.unfold1171, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ig:                                            ; preds = %bb.hl
  %i.bmf = select i1 %i.bfd, i64 19, i64 20       ; 2 uses
  %i.bmg = icmp ugt i64 %.044.i.i284.i, %i.bmf
  br i1 %i.bmg, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i291.i.thread1166, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bmh = icmp eq i64 %.044.i.i284.i, %i.bmf
  br i1 %i.bmh, label %bb.ii, label %bb.im

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.bfd, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %bb.ii
  %i.bmi = icmp ugt i64 %.2632, -9223372036854775808
  br i1 %i.bmi, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i291.i.thread1166, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bmj = sub i64 0, %.2632
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bmj, ptr %i.bmk, align 8
  %i.bml = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmm = load i8, ptr %.1623, align 1, !tbaa !36
  %i.bmn = zext i8 %i.bmm to i64
  %i.bmo = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmn
  %i.bmp = load i8, ptr %i.bmo, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i303.i = icmp eq i8 %i.bmp, 0
  br i1 %.not58.i.i303.i, label %select.unfold1171, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.il:                                            ; preds = %bb.ii
  %i.bmq = icmp ne i8 %i.axv, 49
  %i.bmr = icmp sgt i64 %.2632, -1
  %or.cond5.i.i302.i = select i1 %i.bmq, i1 true, i1 %i.bmr
  br i1 %or.cond5.i.i302.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1160

bb.im:                                            ; preds = %bb.ih
  %i.bms = icmp slt i64 %.2632, 0
  br i1 %i.bms, label %.thread1160, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bmt = sub nsw i64 0, %.2632
  %i.bmu = select i1 %i.bfd, i64 %i.bmt, i64 %.2632
  br label %.thread1160

.thread1160:                                      ; preds = %bb.im, %bb.il, %bb.in
  %.sink1632 = phi i64 [ 7782220156096217088, %bb.in ], [ 8430738502437568512, %bb.il ], [ 8430738502437568512, %bb.im ]
  %.sink1630 = phi i64 [ %i.bmu, %bb.in ], [ %.2632, %bb.il ], [ %.2632, %bb.im ]
  store i64 %.sink1632, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bmv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1630, ptr %i.bmv, align 8
  %.sroa.0.30 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmw = load i8, ptr %.1623, align 1, !tbaa !36
  %i.bmx = zext i8 %i.bmw to i64
  %i.bmy = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bmx
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i300.i = icmp eq i8 %i.bmz, 0
  br i1 %.not57.i.i300.i, label %select.unfold1171, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i291.i.thread1166: ; preds = %bb.ig, %bb.ij
  %i.bna = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bnb = load i8, ptr %i.bna, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bnc = trunc nuw i8 %i.bnb to i1
  br i1 %i.bnc, label %.preheader1633, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1633:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i291.i.thread1166, %.preheader1633
  %.122.i.i296.i = phi ptr [ %i.bng, %.preheader1633 ], [ %i.bff, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i291.i.thread1166 ] ; 3 uses
  %i.bnd = load i8, ptr %.122.i.i296.i, align 1, !tbaa !36 ; 2 uses
  %i.bne = add i8 %i.bnd, -48
  %i.bnf = icmp ult i8 %i.bne, 10
  %i.bng = getelementptr inbounds nuw i8, ptr %.122.i.i296.i, i64 1
  br i1 %i.bnf, label %.preheader1633, label %bb.io, !llvm.loop !20

bb.io:                                            ; preds = %.preheader1633
  %i.bnh = zext i8 %i.bnd to i64
  %i.bni = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnh
  %i.bnj = load i8, ptr %i.bni, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i297.i = icmp eq i8 %i.bnj, 0
  br i1 %.not.i.i297.i, label %.split1546, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1546:                                       ; preds = %bb.io
  %i.bnk = ptrtoint ptr %.122.i.i296.i to i64
  %i.bnl = ptrtoint ptr %i.axu to i64
  %i.bnm = sub i64 %i.bnk, %i.bnl                 ; 3 uses
  %i.bnn = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 8
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !48
  %i.bnq = ptrtoint ptr %.sroa.172.2 to i64
  %i.bnr = ptrtoint ptr %i.bnp to i64
  %i.bns = sub i64 %i.bnq, %i.bnr
  %i.bnt = or i64 %i.bns, 6485183463413514240
  store i64 %i.bnt, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bnu = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bnv = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ka = add i8 %i.jz, -48                       ; 2 uses
  %i.kb = icmp ult i8 %i.ka, 10
  br i1 %i.kb, label %.lr.ph1389, label %.noexc77.thread, !llvm.loop !22

.noexc77:                                         ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3716.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc77.thread

.noexc77.thread:                                  ; preds = %.lr.ph1389, %.noexc77
  %.5711.lcssa1540 = phi i64 [ %.4710850, %.noexc77 ], [ %i.jy, %.lr.ph1389 ]
  %.5718.idx.lcssa13851539 = phi i64 [ %.3716.add, %.noexc77 ], [ %.5718.add, %.lr.ph1389 ] ; 2 uses
  %i.kc = phi i8 [ %i.js, %.noexc77 ], [ %i.jz, %.lr.ph1389 ]
  %.5718.ptr.le = getelementptr inbounds nuw i8, ptr %.0713.lcssa, i64 %.5718.idx.lcssa13851539 ; 2 uses
  %i.kd = ptrtoint ptr %.5718.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5718.idx.lcssa13851539
  %i.ke = sub i64 %i.kd, %i.io
  %sext.i = shl i64 %i.ke, 32
  %i.kf = ashr exact i64 %sext.i, 32
  br label %bb.al

bb.al:                                            ; preds = %.noexc77.thread, %bb.aj
  %i.kg = phi i8 [ %i.kc, %.noexc77.thread ], [ %.lcssa1380, %bb.aj ] ; 2 uses
  %.1714 = phi ptr [ %.5718.ptr.le, %.noexc77.thread ], [ %.0713.lcssa, %bb.aj ] ; 4 uses
  %.1707 = phi i64 [ %.5711.lcssa1540, %.noexc77.thread ], [ %.0706.lcssa, %bb.aj ] ; 14 uses
  %.0703 = phi i64 [ %gepdiff, %.noexc77.thread ], [ 0, %bb.aj ] ; 2 uses
  %.044.i = phi i64 [ %i.kf, %.noexc77.thread ], [ %i.ip, %bb.aj ] ; 4 uses
  switch i8 %i.kg, label %bb.ar [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.kh = getelementptr inbounds nuw i8, ptr %.1714, i64 1 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !36  ; 3 uses
  %i.kj = icmp eq i8 %i.ki, 45
  switch i8 %i.ki, label %bb.ao [
    i8 45, label %bb.an
    i8 43, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.kk = getelementptr inbounds nuw i8, ptr %.1714, i64 2 ; 2 uses
  %.pre1474 = load i8, ptr %i.kk, align 1, !tbaa !36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.kl = phi i8 [ %i.ki, %bb.am ], [ %.pre1474, %bb.an ]
  %.6719 = phi ptr [ %i.kh, %bb.am ], [ %i.kk, %bb.an ] ; 3 uses
  %i.km = add i8 %i.kl, -48                       ; 2 uses
  %i.kn = icmp ult i8 %i.km, 10
  br i1 %i.kn, label %.lr.ph1396, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1396:                                       ; preds = %bb.ao, %.lr.ph1396
  %i.ko = phi i8 [ %i.kt, %.lr.ph1396 ], [ %i.km, %bb.ao ]
  %.7720.idx1395 = phi i64 [ %.7720.add, %.lr.ph1396 ], [ 0, %bb.ao ] ; 2 uses
  %.07211394 = phi i64 [ %i.kr, %.lr.ph1396 ], [ 0, %bb.ao ]
  %i.kp = mul nsw i64 %.07211394, 10
  %i.kq = zext nneg i8 %i.ko to i64
  %i.kr = add nsw i64 %i.kp, %i.kq                ; 3 uses
  %.7720.add = add nuw nsw i64 %.7720.idx1395, 1  ; 3 uses
  %.7720.ptr = getelementptr inbounds nuw i8, ptr %.6719, i64 %.7720.add
  %i.ks = load i8, ptr %.7720.ptr, align 1, !tbaa !36 ; 2 uses
  %i.kt = add i8 %i.ks, -48                       ; 2 uses
  %i.ku = icmp ult i8 %i.kt, 10
  br i1 %i.ku, label %.lr.ph1396, label %bb.ap, !llvm.loop !23

bb.ap:                                            ; preds = %.lr.ph1396
  %.7720.ptr.le = getelementptr inbounds nuw i8, ptr %.6719, i64 %.7720.add
  %i.kv = icmp samesign ugt i64 %.7720.idx1395, 17
  br i1 %i.kv, label %.preheader1370, label %.thread860, !prof !108

.preheader1370:                                   ; preds = %bb.ap, %.preheader1370
  %.0.i82 = phi ptr [ %i.ky, %.preheader1370 ], [ %.6719, %bb.ap ] ; 3 uses
  %i.kw = load i8, ptr %.0.i82, align 1, !tbaa !36
  %i.kx = icmp eq i8 %i.kw, 48
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i82, i64 1
  br i1 %i.kx, label %.preheader1370, label %bb.aq, !llvm.loop !24

bb.aq:                                            ; preds = %.preheader1370
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i82, i64 18
  %i.la = icmp ugt ptr %.7720.ptr.le, %i.kz
  %spec.select = select i1 %i.la, i64 999999999999999999, i64 %i.kr
  br label %.thread860

.thread860:                                       ; preds = %bb.aq, %bb.ap
  %.1722 = phi i64 [ %i.kr, %bb.ap ], [ %spec.select, %bb.aq ] ; 2 uses
  %i.lb = sub nsw i64 0, %.1722
  %i.lc = select i1 %i.kj, i64 %i.lb, i64 %.1722
  %i.ld = add nsw i64 %i.lc, %.0703
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  br i1 %i.it, label %bb.as, label %bb.bn

bb.as:                                            ; preds = %.thread860, %bb.ar
  %i.le = phi i8 [ %i.ks, %.thread860 ], [ %i.kg, %bb.ar ]
  %.1704865 = phi i64 [ %i.ld, %.thread860 ], [ %.0703, %bb.ar ] ; 9 uses
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i = icmp eq i8 %i.lh, 0                 ; 3 uses
  %i.li = icmp ugt i64 %.044.i, 19
  br i1 %i.li, label %.preheader1369, label %.critedge.i

.preheader1369:                                   ; preds = %bb.as, %.critedge.i91
  %i.lj = phi i8 [ %.pre1475, %.critedge.i91 ], [ %i.ic, %bb.as ]
  %.0.i90 = phi ptr [ %i.lk, %.critedge.i91 ], [ %i.ib, %bb.as ] ; 2 uses
  switch i8 %i.lj, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit [
    i8 48, label %.critedge.i91
    i8 46, label %.critedge.i91
  ]

.critedge.i91:                                    ; preds = %.preheader1369, %.preheader1369
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.i90, i64 1 ; 2 uses
  %.pre1475 = load i8, ptr %i.lk, align 1, !tbaa !36
  br label %.preheader1369, !llvm.loop !25

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit: ; preds = %.preheader1369
  %i.ll = ptrtoint ptr %.0.i90 to i64
  %.neg.i = add i64 %.044.i, %i.io
  %i.lm = sub i64 %.neg.i, %i.ll
  %i.ln = icmp ugt i64 %i.lm, 19
  br i1 %i.ln, label %.noexc86, label %.critedge.i, !prof !108

.noexc86:                                         ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.lo = call fastcc noundef i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.hr, ptr noundef %i.e)
  %i.lp = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.lq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.lp, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i:                                      ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit, %bb.as
  %i.ls = add i64 %.1704865, -309
  %or.cond.i83 = icmp ult i64 %i.ls, -651
  br i1 %or.cond.i83, label %bb.at, label %bb.au, !prof !124

bb.at:                                            ; preds = %.critedge.i
  %i.lt = icmp slt i64 %.1704865, -342
  %i.lu = icmp eq i64 %.1707, 0
  %or.cond3.i = or i1 %i.lu, %i.lt
  br i1 %or.cond3.i, label %.noexc79.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.noexc79.thread:                                  ; preds = %bb.at
  %i.lv = select i1 %i.hz, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.lw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.lv, ptr %i.lw, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br i1 %.not59.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.au:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.ly = add nsw i64 %.1704865, 22
  %or.cond.i92 = icmp ult i64 %i.ly, 45
  %i.lz = icmp ult i64 %.1707, 9007199254740992
  %or.cond3.i93 = and i1 %i.lz, %or.cond.i92
  br i1 %or.cond3.i93, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ma = uitofp nneg i64 %.1707 to double        ; 2 uses
  %i.mb = icmp slt i64 %.1704865, 0
  br i1 %i.mb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mc = sub nsw i64 0, %.1704865
  %i.md = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.mc
  %i.me = load double, ptr %i.md, align 8, !tbaa !123
  %i.mf = fdiv double %i.ma, %i.me
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.1704865
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !123
  %i.mi = fmul double %i.mh, %i.ma
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %storemerge.i = phi double [ %i.mi, %bb.ax ], [ %i.mf, %bb.aw ] ; 2 uses
  br i1 %i.hz, label %bb.az, label %.noexc87.thread

bb.az:                                            ; preds = %bb.ay
  %i.mj = fneg double %storemerge.i
  br label %.noexc87.thread

bb.ba:                                            ; preds = %bb.au
  %i.mk = icmp eq i64 %.1707, 0
  br i1 %i.mk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ml = select i1 %i.hz, double -0.000000e+00, double 0.000000e+00
  br label %.noexc87.thread

bb.bc:                                            ; preds = %bb.ba
  %i.mm = mul nsw i64 %.1704865, 217706
  %i.mn = ashr i64 %i.mm, 16
  %i.mo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1707, i1 true) ; 2 uses
  %i.mp = shl i64 %.1707, %i.mo                   ; 2 uses
  %i.mq = trunc nsw i64 %.1704865 to i32
  %i.mr = shl nsw i32 %i.mq, 1
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ms ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 5472
  %i.mv = load i64, ptr %i.mu, align 16, !tbaa !40
  %i.mw = zext i64 %i.mp to i128
  %i.mx = zext i64 %i.mv to i128
  %i.my = mul nuw i128 %i.mx, %i.mw               ; 2 uses
  %i.mz = trunc i128 %i.my to i64                 ; 2 uses
  %i.na = lshr i128 %i.my, 64
  %i.nb = trunc nuw i128 %i.na to i64             ; 3 uses
  %i.nc = and i64 %i.nb, 511
  %i.nd = icmp eq i64 %i.nc, 511
  br i1 %i.nd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ne = getelementptr i8, ptr %i.mt, i64 5480
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.mp, i64 %i.nf) ; 2 uses
  %i.ng = add i64 %2, %i.mz                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.ng
  %i.nh = zext i1 %3 to i64
  %spec.select.i94 = add nuw i64 %i.nh, %i.nb
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i = phi i64 [ %spec.select.i94, %bb.bd ], [ %i.nb, %bb.bc ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.ng, %bb.bd ], [ %i.mz, %bb.bc ]
  %i.ni = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.nj = add nuw nsw i64 %i.ni, 9                ; 2 uses
  %i.nk = lshr i64 %.sroa.7.1.i, %i.nj            ; 6 uses
  %reass.sub = sub nsw i64 %i.mn, %i.mo
  %.neg = add nsw i64 %reass.sub, %i.ni           ; 4 uses
  %i.nl = add nsw i64 %.neg, 1086
  %i.nm = icmp slt i64 %.neg, -1085
  br i1 %i.nm, label %bb.bf, label %bb.bi, !prof !108

bb.bf:                                            ; preds = %bb.be
  %i.nn = icmp samesign ult i64 %.neg, -1148
  br i1 %i.nn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.no = select i1 %i.hz, double -0.000000e+00, double 0.000000e+00
  br label %.noexc87.thread

bb.bh:                                            ; preds = %bb.bf
  %i.np = sub nuw nsw i64 -1085, %.neg
  %i.nq = lshr i64 %i.nk, %i.np                   ; 2 uses
  %i.nr = and i64 %i.nq, 1
  %i.ns = add nuw nsw i64 %i.nr, %i.nq            ; 2 uses
  %i.nt = lshr i64 %i.ns, 1
  %i.nu = icmp samesign ugt i64 %i.ns, 9007199254740991
  %i.nv = and i64 %i.nt, 13510798882111487
  %i.nw = select i1 %i.nu, i64 4503599627370496, i64 0
  %i.nx = select i1 %i.hz, i64 -9223372036854775808, i64 0
  %i.ny = or disjoint i64 %i.nw, %i.nx
  %i.nz = or disjoint i64 %i.ny, %i.nv
  %i.oa = bitcast i64 %i.nz to double
  br label %.noexc87.thread

bb.bi:                                            ; preds = %bb.be
  %i.ob = icmp ult i64 %.sroa.037.0.i, 2
  %i.oc = add nsw i64 %.1704865, 4
  %i.od = icmp ult i64 %i.oc, 28
  %or.cond7.i = and i1 %i.od, %i.ob
  %i.oe = and i64 %i.nk, 3
  %i.of = icmp eq i64 %i.oe, 1
  %i.og = select i1 %or.cond7.i, i1 %i.of, i1 false
  br i1 %i.og, label %bb.bj, label %bb.bk, !prof !108

bb.bj:                                            ; preds = %bb.bi
  %i.oh = shl i64 %i.nk, %i.nj
  %i.oi = icmp eq i64 %i.oh, %.sroa.7.1.i
  %i.oj = and i64 %i.nk, 72057594037927932
  %spec.select90.i = select i1 %i.oi, i64 %i.oj, i64 %i.nk
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i = phi i64 [ %i.nk, %bb.bi ], [ %spec.select90.i, %bb.bj ] ; 2 uses
  %i.ok = and i64 %.080.i, 1
  %i.ol = add nuw nsw i64 %i.ok, %.080.i          ; 2 uses
  %i.om = icmp samesign ugt i64 %i.ol, 18014398509481983 ; 2 uses
  %i.on = zext i1 %i.om to i64
  %spec.select92.i = add nuw nsw i64 %i.nl, %i.on ; 2 uses
  %i.oo = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.oo, label %.noexc87, label %bb.bl, !prof !108

bb.bl:                                            ; preds = %bb.bk
  %i.op = lshr i64 %i.ol, 1
  %i.oq = and i64 %i.op, 13510798882111487
  %i.or = select i1 %i.om, i64 0, i64 %i.oq
  %i.os = shl nuw nsw i64 %spec.select92.i, 52
  %i.ot = select i1 %i.hz, i64 -9223372036854775808, i64 0
  %i.ou = or disjoint i64 %i.or, %i.ot
  %i.ov = or i64 %i.ou, %i.os
  %i.ow = bitcast i64 %i.ov to double
  br label %.noexc87.thread

.noexc87:                                         ; preds = %bb.bk
  %i.ox = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.hr, ptr noundef %i.f)
  br i1 %i.ox, label %.noexc87..noexc87.thread_crit_edge, label %bb.bm

.noexc87..noexc87.thread_crit_edge:               ; preds = %.noexc87
  %.pre1476 = load double, ptr %i.f, align 8, !tbaa !123
  br label %.noexc87.thread

.noexc87.thread:                                  ; preds = %.noexc87..noexc87.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.az, %bb.bb, %bb.ay
  %i.oy = phi double [ %.pre1476, %.noexc87..noexc87.thread_crit_edge ], [ %i.ow, %bb.bl ], [ %i.oa, %bb.bh ], [ %i.no, %bb.bg ], [ %i.mj, %bb.az ], [ %i.ml, %bb.bb ], [ %storemerge.i, %bb.ay ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !40
  %i.oz = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.oy, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc87.thread, %.noexc87
  %.sroa.0.22 = phi ptr [ %i.pa, %.noexc87.thread ], [ %i.u, %.noexc87 ]
  %.0.i84 = phi i32 [ 0, %.noexc87.thread ], [ 9, %.noexc87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.ar
  %i.pb = select i1 %i.hz, i64 19, i64 20         ; 2 uses
  %i.pc = icmp ugt i64 %.044.i, %i.pb
  br i1 %i.pc, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pd = icmp eq i64 %.044.i, %i.pb
  br i1 %i.pd, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hz, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pe = icmp ugt i64 %.1707, -9223372036854775808
  br i1 %i.pe, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pf = sub i64 0, %.1707
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !40
  %i.pg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.pf, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.pi = load i8, ptr %.1714, align 1, !tbaa !36
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i = icmp eq i8 %i.pl, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.pm = icmp ne i8 %i.hy, 49
  %i.pn = icmp sgt i64 %.1707, -1
  %or.cond5.i = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread867

bb.bt:                                            ; preds = %bb.bo
  %i.po = icmp slt i64 %.1707, 0
  br i1 %i.po, label %.thread867, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pp = sub nsw i64 0, %.1707
  %i.pq = select i1 %i.hz, i64 %i.pp, i64 %.1707
  br label %.thread867

.thread867:                                       ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1615 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink1613 = phi i64 [ %i.pq, %bb.bu ], [ %.1707, %bb.bs ], [ %.1707, %bb.bt ]
  store i64 %.sink1615, ptr %i.u, align 8, !tbaa !40
  %i.pr = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink1613, ptr %i.pr, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ps = load i8, ptr %.1714, align 1, !tbaa !36
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i = icmp eq i8 %i.pv, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872: ; preds = %bb.bn, %bb.bq
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.px = load i8, ptr %i.pw, align 8, !tbaa !125, !range !50, !noundef !51
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %.preheader1667, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1667:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, %.preheader1667
  %.122.i = phi ptr [ %i.qc, %.preheader1667 ], [ %i.ib, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872 ] ; 3 uses
  %i.pz = load i8, ptr %.122.i, align 1, !tbaa !36 ; 2 uses
  %i.qa = add i8 %i.pz, -48
  %i.qb = icmp ult i8 %i.qa, 10
  %i.qc = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.qb, label %.preheader1667, label %bb.bv, !llvm.loop !26

bb.bv:                                            ; preds = %.preheader1667
  %i.qd = zext i8 %i.pz to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i72 = icmp eq i8 %i.qf, 0
  br i1 %.not.i72, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.qg = ptrtoint ptr %.122.i to i64
  %i.qh = ptrtoint ptr %i.hr to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 3 uses
  %i.qj = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !48
  %i.qm = ptrtoint ptr %i.m to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = or i64 %i.qo, 6485183463413514240
  store i64 %i.qp, ptr %i.u, align 8, !tbaa !40
  %i.qq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qr, ptr nonnull align 1 %i.hr, i64 %i.qi, i1 false)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qi
  %i.qt = trunc i64 %i.qi to i32
  store i32 %i.qt, ptr %i.m, align 1
  store i8 0, ptr %i.qs, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.at, %bb.bv, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, %.noexc77, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread867, %bb.bs, %bb.br, %.noexc79.thread, %bb.ao
  %.0.i51257.ph = phi i32 [ 9, %.noexc79.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread867 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc77 ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872 ], [ 9, %bb.bv ], [ 9, %bb.at ], [ 9, %bb.ao ]
end_hunk_18
begin_hunk_19_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.afg = add i8 %i.aff, -48                     ; 2 uses
  %i.afh = icmp ult i8 %i.afg, 10
  br i1 %i.afh, label %.lr.ph1410, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !22

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not1346 = icmp eq i64 %.5753.add, 1
  br i1 %.not1346, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1410, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5746.lcssa1558 = phi i64 [ %.47451039, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.afe, %.lr.ph1410 ]
  %.7755.idx.lcssa14061557 = phi i64 [ %.5753.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7755.add, %.lr.ph1410 ] ; 2 uses
  %i.afi = phi i8 [ %i.aey, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.aff, %.lr.ph1410 ]
  %.7755.ptr.le = getelementptr inbounds nuw i8, ptr %.0748.lcssa, i64 %.7755.idx.lcssa14061557 ; 2 uses
  %i.afj = ptrtoint ptr %.7755.ptr.le to i64
  %gepdiff1442 = sub nsw i64 1, %.7755.idx.lcssa14061557
  %i.afk = sub i64 %i.afj, %i.adu
  %sext.i.i = shl i64 %i.afk, 32
  %i.afl = ashr exact i64 %sext.i.i, 32
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.dn
  %i.afm = phi i8 [ %i.afi, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1375, %bb.dn ] ; 2 uses
  %.1749 = phi ptr [ %.7755.ptr.le, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0748.lcssa, %bb.dn ] ; 4 uses
  %.2743 = phi i64 [ %.5746.lcssa1558, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0741.lcssa, %bb.dn ] ; 14 uses
  %.0738 = phi i64 [ %gepdiff1442, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.dn ] ; 2 uses
  %.044.i.i = phi i64 [ %i.afl, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.adv, %bb.dn ] ; 4 uses
  switch i8 %i.afm, label %bb.dw [
    i8 101, label %bb.dr
    i8 69, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %i.afn = getelementptr inbounds nuw i8, ptr %.1749, i64 1 ; 2 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !36 ; 3 uses
  %i.afp = icmp eq i8 %i.afo, 45
  switch i8 %i.afo, label %bb.dt [
    i8 45, label %bb.ds
    i8 43, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr
  %i.afq = getelementptr inbounds nuw i8, ptr %.1749, i64 2 ; 2 uses
  %.pre1478 = load i8, ptr %i.afq, align 1, !tbaa !36
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.afr = phi i8 [ %i.afo, %bb.dr ], [ %.pre1478, %bb.ds ]
  %.2750 = phi ptr [ %i.afn, %bb.dr ], [ %i.afq, %bb.ds ] ; 3 uses
  %i.afs = add i8 %i.afr, -48                     ; 2 uses
  %i.aft = icmp ult i8 %i.afs, 10
  br i1 %i.aft, label %.lr.ph1417, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1417:                                       ; preds = %bb.dt, %.lr.ph1417
  %i.afu = phi i8 [ %i.afz, %.lr.ph1417 ], [ %i.afs, %bb.dt ]
  %.3751.idx1416 = phi i64 [ %.3751.add, %.lr.ph1417 ], [ 0, %bb.dt ] ; 2 uses
  %.07561415 = phi i64 [ %i.afx, %.lr.ph1417 ], [ 0, %bb.dt ]
  %i.afv = mul nsw i64 %.07561415, 10
  %i.afw = zext nneg i8 %i.afu to i64
  %i.afx = add nsw i64 %i.afv, %i.afw             ; 3 uses
  %.3751.add = add nuw nsw i64 %.3751.idx1416, 1  ; 3 uses
  %.3751.ptr = getelementptr inbounds nuw i8, ptr %.2750, i64 %.3751.add
  %i.afy = load i8, ptr %.3751.ptr, align 1, !tbaa !36 ; 2 uses
  %i.afz = add i8 %i.afy, -48                     ; 2 uses
  %i.aga = icmp ult i8 %i.afz, 10
  br i1 %i.aga, label %.lr.ph1417, label %bb.du, !llvm.loop !23

bb.du:                                            ; preds = %.lr.ph1417
  %.3751.ptr.le = getelementptr inbounds nuw i8, ptr %.2750, i64 %.3751.add
  %i.agb = icmp samesign ugt i64 %.3751.idx1416, 17
  br i1 %i.agb, label %.preheader1365, label %.thread1049, !prof !108

.preheader1365:                                   ; preds = %bb.du, %.preheader1365
  %.0.i22.i = phi ptr [ %i.age, %.preheader1365 ], [ %.2750, %bb.du ] ; 3 uses
  %i.agc = load i8, ptr %.0.i22.i, align 1, !tbaa !36
  %i.agd = icmp eq i8 %i.agc, 48
  %i.age = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 1
  br i1 %i.agd, label %.preheader1365, label %bb.dv, !llvm.loop !24

bb.dv:                                            ; preds = %.preheader1365
  %i.agf = getelementptr inbounds nuw i8, ptr %.0.i22.i, i64 18
  %i.agg = icmp ugt ptr %.3751.ptr.le, %i.agf
  %spec.select1337 = select i1 %i.agg, i64 999999999999999999, i64 %i.afx
  br label %.thread1049

.thread1049:                                      ; preds = %bb.dv, %bb.du
  %.2758 = phi i64 [ %i.afx, %bb.du ], [ %spec.select1337, %bb.dv ] ; 2 uses
  %i.agh = sub nsw i64 0, %.2758
  %i.agi = select i1 %i.afp, i64 %i.agh, i64 %.2758
  %i.agj = add nsw i64 %i.agi, %.0738
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dq
  br i1 %i.adz, label %bb.dx, label %bb.es

bb.dx:                                            ; preds = %.thread1049, %bb.dw
  %i.agk = phi i8 [ %i.afy, %.thread1049 ], [ %i.afm, %bb.dw ]
  %.27401054 = phi i64 [ %i.agj, %.thread1049 ], [ %.0738, %bb.dw ] ; 9 uses
  %i.agl = zext i8 %i.agk to i64
  %i.agm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.agl
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.agn, 0              ; 3 uses
  %i.ago = icmp ugt i64 %.044.i.i, 19
  br i1 %i.ago, label %.preheader1364, label %.critedge.i.i

.preheader1364:                                   ; preds = %bb.dx, %.critedge.i30.i
  %i.agp = phi i8 [ %.pre1479, %.critedge.i30.i ], [ %i.adi, %bb.dx ]
  %.0.i29.i = phi ptr [ %i.agq, %.critedge.i30.i ], [ %i.adh, %bb.dx ] ; 2 uses
  switch i8 %i.agp, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i30.i
    i8 46, label %.critedge.i30.i
  ]

.critedge.i30.i:                                  ; preds = %.preheader1364, %.preheader1364
  %i.agq = getelementptr inbounds nuw i8, ptr %.0.i29.i, i64 1 ; 2 uses
  %.pre1479 = load i8, ptr %i.agq, align 1, !tbaa !36
  br label %.preheader1364, !llvm.loop !25

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1364
  %i.agr = ptrtoint ptr %.0.i29.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.adu
  %i.ags = sub i64 %.neg.i.i, %i.agr
  %i.agt = icmp ugt i64 %i.ags, 19
  br i1 %i.agt, label %.noexc26.i, label %.critedge.i.i, !prof !108

.noexc26.i:                                       ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.agu = call fastcc noundef i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.wu, ptr noundef %i.c)
  %i.agv = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.agv, ptr %i.agw, align 8
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.dx
  %i.agy = add i64 %.27401054, -309
  %or.cond.i23.i = icmp ult i64 %i.agy, -651
  br i1 %or.cond.i23.i, label %bb.dy, label %bb.dz, !prof !124

bb.dy:                                            ; preds = %.critedge.i.i
  %i.agz = icmp slt i64 %.27401054, -342
  %i.aha = icmp eq i64 %.2743, 0
  %or.cond3.i.i = or i1 %i.aha, %i.agz
  br i1 %or.cond3.i.i, label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.dy
  %i.ahb = select i1 %i.adf, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ahb, ptr %i.ahc, align 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i, label %select.unfold1067, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dz:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ahe = add nsw i64 %.27401054, 22
  %or.cond.i31.i = icmp ult i64 %i.ahe, 45
  %i.ahf = icmp ult i64 %.2743, 9007199254740992
  %or.cond3.i32.i = and i1 %i.ahf, %or.cond.i31.i
  br i1 %or.cond3.i32.i, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.ahg = uitofp nneg i64 %.2743 to double       ; 2 uses
  %i.ahh = icmp slt i64 %.27401054, 0
  br i1 %i.ahh, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ahi = sub nsw i64 0, %.27401054
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ahi
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !123
  %i.ahl = fdiv double %i.ahg, %i.ahk
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.27401054
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !123
  %i.aho = fmul double %i.ahn, %i.ahg
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %storemerge.i.i = phi double [ %i.aho, %bb.ec ], [ %i.ahl, %bb.eb ] ; 2 uses
  br i1 %i.adf, label %bb.ee, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ee:                                            ; preds = %bb.ed
  %i.ahp = fneg double %storemerge.i.i
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ef:                                            ; preds = %bb.dz
  %i.ahq = icmp eq i64 %.2743, 0
  br i1 %i.ahq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ahr = select i1 %i.adf, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.eh:                                            ; preds = %bb.ef
  %i.ahs = mul nsw i64 %.27401054, 217706
  %i.aht = ashr i64 %i.ahs, 16
  %i.ahu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2743, i1 true) ; 2 uses
  %i.ahv = shl i64 %.2743, %i.ahu                 ; 2 uses
  %i.ahw = trunc nsw i64 %.27401054 to i32
  %i.ahx = shl nsw i32 %i.ahw, 1
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ahy ; 2 uses
  %i.aia = getelementptr i8, ptr %i.ahz, i64 5472
  %i.aib = load i64, ptr %i.aia, align 16, !tbaa !40
  %i.aic = zext i64 %i.ahv to i128
  %i.aid = zext i64 %i.aib to i128
  %i.aie = mul nuw i128 %i.aid, %i.aic            ; 2 uses
  %i.aif = trunc i128 %i.aie to i64               ; 2 uses
  %i.aig = lshr i128 %i.aie, 64
  %i.aih = trunc nuw i128 %i.aig to i64           ; 3 uses
  %i.aii = and i64 %i.aih, 511
  %i.aij = icmp eq i64 %i.aii, 511
  br i1 %i.aij, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aik = getelementptr i8, ptr %i.ahz, i64 5480
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.ahv, i64 %i.ail) ; 2 uses
  %i.aim = add i64 %4, %i.aif                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.aim
  %i.ain = zext i1 %5 to i64
  %spec.select.i33.i = add nuw i64 %i.ain, %i.aih
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i33.i, %bb.ei ], [ %i.aih, %bb.eh ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.aim, %bb.ei ], [ %i.aif, %bb.eh ]
  %i.aio = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.aip = add nuw nsw i64 %i.aio, 9              ; 2 uses
  %i.aiq = lshr i64 %.sroa.7.1.i.i, %i.aip        ; 6 uses
  %reass.sub1444 = sub nsw i64 %i.aht, %i.ahu
  %.neg1443 = add nsw i64 %reass.sub1444, %i.aio  ; 4 uses
  %i.air = add nsw i64 %.neg1443, 1086
  %i.ais = icmp slt i64 %.neg1443, -1085
  br i1 %i.ais, label %bb.ek, label %bb.en, !prof !108

bb.ek:                                            ; preds = %bb.ej
  %i.ait = icmp samesign ult i64 %.neg1443, -1148
  br i1 %i.ait, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aiu = select i1 %i.adf, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.em:                                            ; preds = %bb.ek
  %i.aiv = sub nuw nsw i64 -1085, %.neg1443
  %i.aiw = lshr i64 %i.aiq, %i.aiv                ; 2 uses
  %i.aix = and i64 %i.aiw, 1
  %i.aiy = add nuw nsw i64 %i.aix, %i.aiw         ; 2 uses
  %i.aiz = lshr i64 %i.aiy, 1
  %i.aja = icmp samesign ugt i64 %i.aiy, 9007199254740991
  %i.ajb = and i64 %i.aiz, 13510798882111487
  %i.ajc = select i1 %i.aja, i64 4503599627370496, i64 0
  %i.ajd = select i1 %i.adf, i64 -9223372036854775808, i64 0
  %i.aje = or disjoint i64 %i.ajc, %i.ajd
  %i.ajf = or disjoint i64 %i.aje, %i.ajb
  %i.ajg = bitcast i64 %i.ajf to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.en:                                            ; preds = %bb.ej
  %i.ajh = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.aji = add nsw i64 %.27401054, 4
  %i.ajj = icmp ult i64 %i.aji, 28
  %or.cond7.i.i = and i1 %i.ajj, %i.ajh
  %i.ajk = and i64 %i.aiq, 3
  %i.ajl = icmp eq i64 %i.ajk, 1
  %i.ajm = select i1 %or.cond7.i.i, i1 %i.ajl, i1 false
  br i1 %i.ajm, label %bb.eo, label %bb.ep, !prof !108

bb.eo:                                            ; preds = %bb.en
  %i.ajn = shl i64 %i.aiq, %i.aip
  %i.ajo = icmp eq i64 %i.ajn, %.sroa.7.1.i.i
  %i.ajp = and i64 %i.aiq, 72057594037927932
  %spec.select90.i.i = select i1 %i.ajo, i64 %i.ajp, i64 %i.aiq
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.080.i.i = phi i64 [ %i.aiq, %bb.en ], [ %spec.select90.i.i, %bb.eo ] ; 2 uses
  %i.ajq = and i64 %.080.i.i, 1
  %i.ajr = add nuw nsw i64 %i.ajq, %.080.i.i      ; 2 uses
  %i.ajs = icmp samesign ugt i64 %i.ajr, 18014398509481983 ; 2 uses
  %i.ajt = zext i1 %i.ajs to i64
  %spec.select92.i.i = add nuw nsw i64 %i.air, %i.ajt ; 2 uses
  %i.aju = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.aju, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.eq, !prof !108

bb.eq:                                            ; preds = %bb.ep
  %i.ajv = lshr i64 %i.ajr, 1
  %i.ajw = and i64 %i.ajv, 13510798882111487
  %i.ajx = select i1 %i.ajs, i64 0, i64 %i.ajw
  %i.ajy = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.ajz = select i1 %i.adf, i64 -9223372036854775808, i64 0
  %i.aka = or disjoint i64 %i.ajx, %i.ajz
  %i.akb = or i64 %i.aka, %i.ajy
  %i.akc = bitcast i64 %i.akb to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.ep
  %i.akd = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.wu, ptr noundef %i.d)
  br i1 %i.akd, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.er

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1480 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.eq, %bb.em, %bb.el, %bb.ee, %bb.eg, %bb.ed
  %i.ake = phi double [ %.pre1480, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.akc, %bb.eq ], [ %i.ajg, %bb.em ], [ %i.aiu, %bb.el ], [ %i.ahp, %bb.ee ], [ %i.ahr, %bb.eg ], [ %storemerge.i.i, %bb.ed ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ake, ptr %i.akf, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.er

bb.er:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.28 = phi ptr [ %i.akg, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %.sroa.0.6, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i24.i = phi i32 [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i: ; preds = %bb.er, %.noexc26.i
  %.sroa.0.29 = phi ptr [ %i.agx, %.noexc26.i ], [ %.sroa.0.28, %bb.er ]
  %.1.i25.i = phi i32 [ %i.agu, %.noexc26.i ], [ %.0.i24.i, %bb.er ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i25.i, 0          ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1338 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i25.i
  %.not168.i = and i1 %.not59.i.i, %.not60.i.i
  br i1 %.not168.i, label %select.unfold1067, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.es:                                            ; preds = %bb.dw
  %i.akh = select i1 %i.adf, i64 19, i64 20       ; 2 uses
  %i.aki = icmp ugt i64 %.044.i.i, %i.akh
  br i1 %i.aki, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.akj = icmp eq i64 %.044.i.i, %i.akh
  br i1 %i.akj, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  br i1 %i.adf, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.akk = icmp ugt i64 %.2743, -9223372036854775808
  br i1 %i.akk, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.akl = sub i64 0, %.2743
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.akl, ptr %i.akm, align 8
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.ako = load i8, ptr %.1749, align 1, !tbaa !36
  %i.akp = zext i8 %i.ako to i64
  %i.akq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.akp
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.akr, 0
  br i1 %.not58.i.i, label %select.unfold1067, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ex:                                            ; preds = %bb.eu
  %i.aks = icmp ne i8 %i.wv, 49
  %i.akt = icmp sgt i64 %.2743, -1
  %or.cond5.i.i = select i1 %i.aks, i1 true, i1 %i.akt
  br i1 %or.cond5.i.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1056

bb.ey:                                            ; preds = %bb.et
  %i.aku = icmp slt i64 %.2743, 0
  br i1 %i.aku, label %.thread1056, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.akv = sub nsw i64 0, %.2743
  %i.akw = select i1 %i.adf, i64 %i.akv, i64 %.2743
  br label %.thread1056

.thread1056:                                      ; preds = %bb.ey, %bb.ex, %bb.ez
  %.sink1626 = phi i64 [ 7782220156096217088, %bb.ez ], [ 8430738502437568512, %bb.ex ], [ 8430738502437568512, %bb.ey ]
  %.sink1624 = phi i64 [ %i.akw, %bb.ez ], [ %.2743, %bb.ex ], [ %.2743, %bb.ey ]
  store i64 %.sink1626, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.akx = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1624, ptr %i.akx, align 8
  %.sroa.0.27 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.aky = load i8, ptr %.1749, align 1, !tbaa !36
  %i.akz = zext i8 %i.aky to i64
  %i.ala = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.akz
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.alb, 0
  br i1 %.not57.i.i, label %select.unfold1067, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062: ; preds = %bb.es, %bb.ev
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ald = load i8, ptr %i.alc, align 8, !tbaa !125, !range !50, !noundef !51
  %i.ale = trunc nuw i8 %i.ald to i1
  br i1 %i.ale, label %.preheader1662, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1662:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062, %.preheader1662
  %.122.i.i = phi ptr [ %i.ali, %.preheader1662 ], [ %i.adh, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062 ] ; 3 uses
  %i.alf = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.alg = add i8 %i.alf, -48
  %i.alh = icmp ult i8 %i.alg, 10
  %i.ali = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.alh, label %.preheader1662, label %bb.fa, !llvm.loop !26

bb.fa:                                            ; preds = %.preheader1662
  %i.alj = zext i8 %i.alf to i64
  %i.alk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.alj
  %i.all = load i8, ptr %i.alk, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i101 = icmp eq i8 %i.all, 0
  br i1 %.not.i.i101, label %.split1565, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1565:                                       ; preds = %bb.fa
  %i.alm = ptrtoint ptr %.122.i.i to i64
  %i.aln = ptrtoint ptr %i.wu to i64
  %i.alo = sub i64 %i.alm, %i.aln                 ; 3 uses
  %i.alp = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !48
  %i.als = ptrtoint ptr %.sroa.172.6 to i64
  %i.alt = ptrtoint ptr %i.alr to i64
  %i.alu = sub i64 %i.als, %i.alt
  %i.alv = or i64 %i.alu, 6485183463413514240
  store i64 %i.alv, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.alx = getelementptr inbounds nuw i8, ptr %.0675.lcssa.sink1622, i64 5 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bcy = add i8 %i.bcx, -48                     ; 2 uses
  %i.bcz = icmp ult i8 %i.bcy, 10
  br i1 %i.bcz, label %.lr.ph1431, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread, !llvm.loop !22

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i166
  %.not1349 = icmp eq i64 %.5788.add, 1
  br i1 %.not1349, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread: ; preds = %.lr.ph1431, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168
  %.5781.lcssa1571 = phi i64 [ %.47801196, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168 ], [ %i.bcw, %.lr.ph1431 ]
  %.7790.idx.lcssa14271570 = phi i64 [ %.5788.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168 ], [ %.7790.add, %.lr.ph1431 ] ; 2 uses
  %i.bda = phi i8 [ %i.bcq, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168 ], [ %i.bcx, %.lr.ph1431 ]
  %.7790.ptr.le = getelementptr inbounds nuw i8, ptr %.0783.lcssa, i64 %.7790.idx.lcssa14271570 ; 2 uses
  %i.bdb = ptrtoint ptr %.7790.ptr.le to i64
  %gepdiff1445 = sub nsw i64 1, %.7790.idx.lcssa14271570
  %i.bdc = sub i64 %i.bdb, %i.bbm
  %sext.i.i171 = shl i64 %i.bdc, 32
  %i.bdd = ashr exact i64 %sext.i.i171, 32
  br label %bb.hb

bb.hb:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread, %bb.gy
  %i.bde = phi i8 [ %i.bda, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread ], [ %.lcssa1372, %bb.gy ] ; 2 uses
  %.1784 = phi ptr [ %.7790.ptr.le, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread ], [ %.0783.lcssa, %bb.gy ] ; 4 uses
  %.2778 = phi i64 [ %.5781.lcssa1571, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread ], [ %.0776.lcssa, %bb.gy ] ; 14 uses
  %.0773 = phi i64 [ %gepdiff1445, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread ], [ 0, %bb.gy ] ; 2 uses
  %.044.i.i110 = phi i64 [ %i.bdd, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168.thread ], [ %i.bbn, %bb.gy ] ; 4 uses
  switch i8 %i.bde, label %bb.hh [
    i8 101, label %bb.hc
    i8 69, label %bb.hc
  ]

bb.hc:                                            ; preds = %bb.hb, %bb.hb
  %i.bdf = getelementptr inbounds nuw i8, ptr %.1784, i64 1 ; 2 uses
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !36 ; 3 uses
  %i.bdh = icmp eq i8 %i.bdg, 45
  switch i8 %i.bdg, label %bb.he [
    i8 45, label %bb.hd
    i8 43, label %bb.hd
  ]

bb.hd:                                            ; preds = %bb.hc, %bb.hc
  %i.bdi = getelementptr inbounds nuw i8, ptr %.1784, i64 2 ; 2 uses
  %.pre1482 = load i8, ptr %i.bdi, align 1, !tbaa !36
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.bdj = phi i8 [ %i.bdg, %bb.hc ], [ %.pre1482, %bb.hd ]
  %.2785 = phi ptr [ %i.bdf, %bb.hc ], [ %i.bdi, %bb.hd ] ; 3 uses
  %i.bdk = add i8 %i.bdj, -48                     ; 2 uses
  %i.bdl = icmp ult i8 %i.bdk, 10
  br i1 %i.bdl, label %.lr.ph1438, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1438:                                       ; preds = %bb.he, %.lr.ph1438
  %i.bdm = phi i8 [ %i.bdr, %.lr.ph1438 ], [ %i.bdk, %bb.he ]
  %.01437 = phi i64 [ %i.bdp, %.lr.ph1438 ], [ 0, %bb.he ]
  %.3786.idx1436 = phi i64 [ %.3786.add, %.lr.ph1438 ], [ 0, %bb.he ] ; 2 uses
  %i.bdn = mul nsw i64 %.01437, 10
  %i.bdo = zext nneg i8 %i.bdm to i64
  %i.bdp = add nsw i64 %i.bdn, %i.bdo             ; 3 uses
  %.3786.add = add nuw nsw i64 %.3786.idx1436, 1  ; 3 uses
  %.3786.ptr = getelementptr inbounds nuw i8, ptr %.2785, i64 %.3786.add
  %i.bdq = load i8, ptr %.3786.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bdr = add i8 %i.bdq, -48                     ; 2 uses
  %i.bds = icmp ult i8 %i.bdr, 10
  br i1 %i.bds, label %.lr.ph1438, label %bb.hf, !llvm.loop !23

bb.hf:                                            ; preds = %.lr.ph1438
  %.3786.ptr.le = getelementptr inbounds nuw i8, ptr %.2785, i64 %.3786.add
  %i.bdt = icmp samesign ugt i64 %.3786.idx1436, 17
  br i1 %i.bdt, label %.preheader1362, label %.thread1206, !prof !108

.preheader1362:                                   ; preds = %bb.hf, %.preheader1362
  %.0.i22.i164 = phi ptr [ %i.bdw, %.preheader1362 ], [ %.2785, %bb.hf ] ; 3 uses
  %i.bdu = load i8, ptr %.0.i22.i164, align 1, !tbaa !36
  %i.bdv = icmp eq i8 %i.bdu, 48
  %i.bdw = getelementptr inbounds nuw i8, ptr %.0.i22.i164, i64 1
  br i1 %i.bdv, label %.preheader1362, label %bb.hg, !llvm.loop !24

bb.hg:                                            ; preds = %.preheader1362
  %i.bdx = getelementptr inbounds nuw i8, ptr %.0.i22.i164, i64 18
  %i.bdy = icmp ugt ptr %.3786.ptr.le, %i.bdx
  %spec.select1339 = select i1 %i.bdy, i64 999999999999999999, i64 %i.bdp
  br label %.thread1206

.thread1206:                                      ; preds = %bb.hg, %bb.hf
  %.2 = phi i64 [ %i.bdp, %bb.hf ], [ %spec.select1339, %bb.hg ] ; 2 uses
  %i.bdz = sub nsw i64 0, %.2
  %i.bea = select i1 %i.bdh, i64 %i.bdz, i64 %.2
  %i.beb = add nsw i64 %i.bea, %.0773
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hb
  br i1 %i.bbr, label %bb.hi, label %bb.id

bb.hi:                                            ; preds = %.thread1206, %bb.hh
  %i.bec = phi i8 [ %i.bdq, %.thread1206 ], [ %i.bde, %bb.hh ]
  %.27751211 = phi i64 [ %i.beb, %.thread1206 ], [ %.0773, %bb.hh ] ; 9 uses
  %i.bed = zext i8 %i.bec to i64
  %i.bee = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bed
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i131 = icmp eq i8 %i.bef, 0           ; 3 uses
  %i.beg = icmp ugt i64 %.044.i.i110, 19
  br i1 %i.beg, label %.preheader, label %.critedge.i.i132

.preheader:                                       ; preds = %bb.hi, %.critedge.i30.i160
  %i.beh = phi i8 [ %.pre1483, %.critedge.i30.i160 ], [ %i.bba, %bb.hi ]
  %.0.i29.i159 = phi ptr [ %i.bei, %.critedge.i30.i160 ], [ %i.baz, %bb.hi ] ; 2 uses
  switch i8 %i.beh, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i161 [
    i8 48, label %.critedge.i30.i160
    i8 46, label %.critedge.i30.i160
  ]

.critedge.i30.i160:                               ; preds = %.preheader, %.preheader
  %i.bei = getelementptr inbounds nuw i8, ptr %.0.i29.i159, i64 1 ; 2 uses
  %.pre1483 = load i8, ptr %i.bei, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !25

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i161: ; preds = %.preheader
  %i.bej = ptrtoint ptr %.0.i29.i159 to i64
  %.neg.i.i162 = add i64 %.044.i.i110, %i.bbm
  %i.bek = sub i64 %.neg.i.i162, %i.bej
  %i.bel = icmp ugt i64 %i.bek, 19
  br i1 %i.bel, label %.noexc26.i163, label %.critedge.i.i132, !prof !108

.noexc26.i163:                                    ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bem = call fastcc noundef i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.aum, ptr noundef %i.a)
  %i.ben = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.beo = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.ben, ptr %i.beo, align 8
  %i.bep = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147

.critedge.i.i132:                                 ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i161, %bb.hi
  %i.beq = add i64 %.27751211, -309
  %or.cond.i23.i133 = icmp ult i64 %i.beq, -651
  br i1 %or.cond.i23.i133, label %bb.hj, label %bb.hk, !prof !124

bb.hj:                                            ; preds = %.critedge.i.i132
  %i.ber = icmp slt i64 %.27751211, -342
  %i.bes = icmp eq i64 %.2778, 0
  %or.cond3.i.i158 = or i1 %i.bes, %i.ber
  br i1 %or.cond3.i.i158, label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread: ; preds = %bb.hj
  %i.bet = select i1 %i.bax, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.beu = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bet, ptr %i.beu, align 8
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i131, label %select.unfold1224, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hk:                                            ; preds = %.critedge.i.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bew = add nsw i64 %.27751211, 22
  %or.cond.i31.i134 = icmp ult i64 %i.bew, 45
  %i.bex = icmp ult i64 %.2778, 9007199254740992
  %or.cond3.i32.i135 = and i1 %i.bex, %or.cond.i31.i134
  br i1 %or.cond3.i32.i135, label %bb.hl, label %bb.hq

bb.hl:                                            ; preds = %bb.hk
  %i.bey = uitofp nneg i64 %.2778 to double       ; 2 uses
  %i.bez = icmp slt i64 %.27751211, 0
  br i1 %i.bez, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.bfa = sub nsw i64 0, %.27751211
  %i.bfb = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bfa
  %i.bfc = load double, ptr %i.bfb, align 8, !tbaa !123
  %i.bfd = fdiv double %i.bey, %i.bfc
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.27751211
  %i.bff = load double, ptr %i.bfe, align 8, !tbaa !123
  %i.bfg = fmul double %i.bff, %i.bey
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %storemerge.i.i157 = phi double [ %i.bfg, %bb.hn ], [ %i.bfd, %bb.hm ] ; 2 uses
  br i1 %i.bax, label %bb.hp, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

bb.hp:                                            ; preds = %bb.ho
  %i.bfh = fneg double %storemerge.i.i157
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

bb.hq:                                            ; preds = %bb.hk
  %i.bfi = icmp eq i64 %.2778, 0
  br i1 %i.bfi, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.bfj = select i1 %i.bax, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

bb.hs:                                            ; preds = %bb.hq
  %i.bfk = mul nsw i64 %.27751211, 217706
  %i.bfl = ashr i64 %i.bfk, 16
  %i.bfm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2778, i1 true) ; 2 uses
  %i.bfn = shl i64 %.2778, %i.bfm                 ; 2 uses
  %i.bfo = trunc nsw i64 %.27751211 to i32
  %i.bfp = shl nsw i32 %i.bfo, 1
  %i.bfq = sext i32 %i.bfp to i64
  %i.bfr = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bfq ; 2 uses
  %i.bfs = getelementptr i8, ptr %i.bfr, i64 5472
  %i.bft = load i64, ptr %i.bfs, align 16, !tbaa !40
  %i.bfu = zext i64 %i.bfn to i128
  %i.bfv = zext i64 %i.bft to i128
  %i.bfw = mul nuw i128 %i.bfv, %i.bfu            ; 2 uses
  %i.bfx = trunc i128 %i.bfw to i64               ; 2 uses
  %i.bfy = lshr i128 %i.bfw, 64
  %i.bfz = trunc nuw i128 %i.bfy to i64           ; 3 uses
  %i.bga = and i64 %i.bfz, 511
  %i.bgb = icmp eq i64 %i.bga, 511
  br i1 %i.bgb, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.bgc = getelementptr i8, ptr %i.bfr, i64 5480
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bfn, i64 %i.bgd) ; 2 uses
  %i.bge = add i64 %6, %i.bfx                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bge
  %i.bgf = zext i1 %7 to i64
  %spec.select.i33.i156 = add nuw i64 %i.bgf, %i.bfz
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.sroa.7.1.i.i138 = phi i64 [ %spec.select.i33.i156, %bb.ht ], [ %i.bfz, %bb.hs ] ; 3 uses
  %.sroa.037.0.i.i139 = phi i64 [ %i.bge, %bb.ht ], [ %i.bfx, %bb.hs ]
  %i.bgg = lshr i64 %.sroa.7.1.i.i138, 63         ; 2 uses
  %i.bgh = add nuw nsw i64 %i.bgg, 9              ; 2 uses
  %i.bgi = lshr i64 %.sroa.7.1.i.i138, %i.bgh     ; 6 uses
  %reass.sub1447 = sub nsw i64 %i.bfl, %i.bfm
  %.neg1446 = add nsw i64 %reass.sub1447, %i.bgg  ; 4 uses
  %i.bgj = add nsw i64 %.neg1446, 1086
  %i.bgk = icmp slt i64 %.neg1446, -1085
  br i1 %i.bgk, label %bb.hv, label %bb.hy, !prof !108

bb.hv:                                            ; preds = %bb.hu
  %i.bgl = icmp samesign ult i64 %.neg1446, -1148
  br i1 %i.bgl, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.bgm = select i1 %i.bax, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

bb.hx:                                            ; preds = %bb.hv
  %i.bgn = sub nuw nsw i64 -1085, %.neg1446
  %i.bgo = lshr i64 %i.bgi, %i.bgn                ; 2 uses
  %i.bgp = and i64 %i.bgo, 1
  %i.bgq = add nuw nsw i64 %i.bgp, %i.bgo         ; 2 uses
  %i.bgr = lshr i64 %i.bgq, 1
  %i.bgs = icmp samesign ugt i64 %i.bgq, 9007199254740991
  %i.bgt = and i64 %i.bgr, 13510798882111487
  %i.bgu = select i1 %i.bgs, i64 4503599627370496, i64 0
  %i.bgv = select i1 %i.bax, i64 -9223372036854775808, i64 0
  %i.bgw = or disjoint i64 %i.bgu, %i.bgv
  %i.bgx = or disjoint i64 %i.bgw, %i.bgt
  %i.bgy = bitcast i64 %i.bgx to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

bb.hy:                                            ; preds = %bb.hu
  %i.bgz = icmp ult i64 %.sroa.037.0.i.i139, 2
  %i.bha = add nsw i64 %.27751211, 4
  %i.bhb = icmp ult i64 %i.bha, 28
  %or.cond7.i.i140 = and i1 %i.bhb, %i.bgz
  %i.bhc = and i64 %i.bgi, 3
  %i.bhd = icmp eq i64 %i.bhc, 1
  %i.bhe = select i1 %or.cond7.i.i140, i1 %i.bhd, i1 false
  br i1 %i.bhe, label %bb.hz, label %bb.ia, !prof !108

bb.hz:                                            ; preds = %bb.hy
  %i.bhf = shl i64 %i.bgi, %i.bgh
  %i.bhg = icmp eq i64 %i.bhf, %.sroa.7.1.i.i138
  %i.bhh = and i64 %i.bgi, 72057594037927932
  %spec.select90.i.i153 = select i1 %i.bhg, i64 %i.bhh, i64 %i.bgi
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.080.i.i141 = phi i64 [ %i.bgi, %bb.hy ], [ %spec.select90.i.i153, %bb.hz ] ; 2 uses
  %i.bhi = and i64 %.080.i.i141, 1
  %i.bhj = add nuw nsw i64 %i.bhi, %.080.i.i141   ; 2 uses
  %i.bhk = icmp samesign ugt i64 %i.bhj, 18014398509481983 ; 2 uses
  %i.bhl = zext i1 %i.bhk to i64
  %spec.select92.i.i143 = add nuw nsw i64 %i.bgj, %i.bhl ; 2 uses
  %i.bhm = icmp samesign ugt i64 %spec.select92.i.i143, 2046
  br i1 %i.bhm, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144, label %bb.ib, !prof !108

bb.ib:                                            ; preds = %bb.ia
  %i.bhn = lshr i64 %i.bhj, 1
  %i.bho = and i64 %i.bhn, 13510798882111487
  %i.bhp = select i1 %i.bhk, i64 0, i64 %i.bho
  %i.bhq = shl nuw nsw i64 %spec.select92.i.i143, 52
  %i.bhr = select i1 %i.bax, i64 -9223372036854775808, i64 0
  %i.bhs = or disjoint i64 %i.bhp, %i.bhr
  %i.bht = or i64 %i.bhs, %i.bhq
  %i.bhu = bitcast i64 %i.bht to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144: ; preds = %bb.ia
  %i.bhv = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.aum, ptr noundef %i.b)
  br i1 %i.bhv, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread_crit_edge, label %bb.ic

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread_crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144
  %.pre1484 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread_crit_edge, %bb.ib, %bb.hx, %bb.hw, %bb.hp, %bb.hr, %bb.ho
  %i.bhw = phi double [ %.pre1484, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread_crit_edge ], [ %i.bhu, %bb.ib ], [ %i.bgy, %bb.hx ], [ %i.bgm, %bb.hw ], [ %i.bfh, %bb.hp ], [ %i.bfj, %bb.hr ], [ %storemerge.i.i157, %bb.ho ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bhx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bhw, ptr %i.bhx, align 8
  %i.bhy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.ic

bb.ic:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144
  %.sroa.0.35 = phi ptr [ %i.bhy, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread ], [ %.sroa.0.2, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144 ]
  %.0.i24.i146 = phi i32 [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144.thread ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147: ; preds = %bb.ic, %.noexc26.i163
  %.sroa.0.36 = phi ptr [ %i.bep, %.noexc26.i163 ], [ %.sroa.0.35, %bb.ic ]
  %.1.i25.i148 = phi i32 [ %i.bem, %.noexc26.i163 ], [ %.0.i24.i146, %bb.ic ] ; 2 uses
  %.not60.i.i149 = icmp eq i32 %.1.i25.i148, 0    ; 2 uses
  %..i.i151 = select i1 %.not59.i.i131, i32 0, i32 9
  %spec.select1340 = select i1 %.not60.i.i149, i32 %..i.i151, i32 %.1.i25.i148
  %.not169.i = and i1 %.not59.i.i131, %.not60.i.i149
  br i1 %.not169.i, label %select.unfold1224, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.id:                                            ; preds = %bb.hh
  %i.bhz = select i1 %i.bax, i64 19, i64 20       ; 2 uses
  %i.bia = icmp ugt i64 %.044.i.i110, %i.bhz
  br i1 %i.bia, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bib = icmp eq i64 %.044.i.i110, %i.bhz
  br i1 %i.bib, label %bb.if, label %bb.ij

bb.if:                                            ; preds = %bb.ie
  br i1 %i.bax, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.bic = icmp ugt i64 %.2778, -9223372036854775808
  br i1 %i.bic, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bid = sub i64 0, %.2778
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bie = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bid, ptr %i.bie, align 8
  %i.bif = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.big = load i8, ptr %.1784, align 1, !tbaa !36
  %i.bih = zext i8 %i.big to i64
  %i.bii = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bih
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i129 = icmp eq i8 %i.bij, 0
  br i1 %.not58.i.i129, label %select.unfold1224, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ii:                                            ; preds = %bb.if
  %i.bik = icmp ne i8 %i.aun, 49
  %i.bil = icmp sgt i64 %.2778, -1
  %or.cond5.i.i128 = select i1 %i.bik, i1 true, i1 %i.bil
  br i1 %or.cond5.i.i128, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1213

bb.ij:                                            ; preds = %bb.ie
  %i.bim = icmp slt i64 %.2778, 0
  br i1 %i.bim, label %.thread1213, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bin = sub nsw i64 0, %.2778
  %i.bio = select i1 %i.bax, i64 %i.bin, i64 %.2778
  br label %.thread1213

.thread1213:                                      ; preds = %bb.ij, %bb.ii, %bb.ik
  %.sink1659 = phi i64 [ 7782220156096217088, %bb.ik ], [ 8430738502437568512, %bb.ii ], [ 8430738502437568512, %bb.ij ]
  %.sink1657 = phi i64 [ %i.bio, %bb.ik ], [ %.2778, %bb.ii ], [ %.2778, %bb.ij ]
  store i64 %.sink1659, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bip = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1657, ptr %i.bip, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.biq = load i8, ptr %.1784, align 1, !tbaa !36
  %i.bir = zext i8 %i.biq to i64
  %i.bis = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bir
  %i.bit = load i8, ptr %i.bis, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i126 = icmp eq i8 %i.bit, 0
  br i1 %.not57.i.i126, label %select.unfold1224, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219: ; preds = %bb.id, %bb.ig
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.biv = load i8, ptr %i.biu, align 8, !tbaa !125, !range !50, !noundef !51
  %i.biw = trunc nuw i8 %i.biv to i1
  br i1 %i.biw, label %.preheader1660, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1660:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219, %.preheader1660
  %.122.i.i122 = phi ptr [ %i.bja, %.preheader1660 ], [ %i.baz, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219 ] ; 3 uses
  %i.bix = load i8, ptr %.122.i.i122, align 1, !tbaa !36 ; 2 uses
  %i.biy = add i8 %i.bix, -48
  %i.biz = icmp ult i8 %i.biy, 10
  %i.bja = getelementptr inbounds nuw i8, ptr %.122.i.i122, i64 1
  br i1 %i.biz, label %.preheader1660, label %bb.il, !llvm.loop !26

bb.il:                                            ; preds = %.preheader1660
  %i.bjb = zext i8 %i.bix to i64
  %i.bjc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bjb
  %i.bjd = load i8, ptr %i.bjc, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i123 = icmp eq i8 %i.bjd, 0
  br i1 %.not.i.i123, label %.split1579, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1579:                                       ; preds = %bb.il
  %i.bje = ptrtoint ptr %.122.i.i122 to i64
  %i.bjf = ptrtoint ptr %i.aum to i64
  %i.bjg = sub i64 %i.bje, %i.bjf                 ; 3 uses
  %i.bjh = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 8
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !48
  %i.bjk = ptrtoint ptr %.sroa.172.2 to i64
  %i.bjl = ptrtoint ptr %i.bjj to i64
  %i.bjm = sub i64 %i.bjk, %i.bjl
  %i.bjn = or i64 %i.bjm, 6485183463413514240
  store i64 %i.bjn, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjo = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bjp = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.jt = add i8 %i.js, -48                       ; 2 uses
  %i.ju = icmp ult i8 %i.jt, 10
  br i1 %i.ju, label %.lr.ph1173, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !22

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5503.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1173, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5496.lcssa1324 = phi i64 [ %.4495635, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.jr, %.lr.ph1173 ]
  %.7505.idx.lcssa11691323 = phi i64 [ %.5503.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7505.add, %.lr.ph1173 ] ; 2 uses
  %i.jv = phi i8 [ %i.jl, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.js, %.lr.ph1173 ]
  %.7505.ptr.le = getelementptr inbounds nuw i8, ptr %.0498.lcssa, i64 %.7505.idx.lcssa11691323 ; 2 uses
  %i.jw = ptrtoint ptr %.7505.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7505.idx.lcssa11691323
  %i.jx = sub i64 %i.jw, %i.ih
  %sext.i.i = shl i64 %i.jx, 32
  %i.jy = ashr exact i64 %sext.i.i, 32
  br label %bb.am

bb.am:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.aj
  %i.jz = phi i8 [ %i.jv, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1164, %bb.aj ] ; 2 uses
  %.1499 = phi ptr [ %.7505.ptr.le, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0498.lcssa, %bb.aj ] ; 4 uses
  %.2493 = phi i64 [ %.5496.lcssa1324, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0491.lcssa, %bb.aj ] ; 14 uses
  %.0488 = phi i64 [ %gepdiff, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.aj ] ; 2 uses
  %.044.i.i = phi i64 [ %i.jy, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.ii, %bb.aj ] ; 4 uses
  switch i8 %i.jz, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.ka = getelementptr inbounds nuw i8, ptr %.1499, i64 1 ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !36  ; 3 uses
  %i.kc = icmp eq i8 %i.kb, 45
  switch i8 %i.kb, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.kd = getelementptr inbounds nuw i8, ptr %.1499, i64 2 ; 2 uses
  %.pre1258 = load i8, ptr %i.kd, align 1, !tbaa !36
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ke = phi i8 [ %i.kb, %bb.an ], [ %.pre1258, %bb.ao ]
  %.2500 = phi ptr [ %i.ka, %bb.an ], [ %i.kd, %bb.ao ] ; 3 uses
  %i.kf = add i8 %i.ke, -48                       ; 2 uses
  %i.kg = icmp ult i8 %i.kf, 10
  br i1 %i.kg, label %.lr.ph1180, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1180:                                       ; preds = %bb.ap, %.lr.ph1180
  %i.kh = phi i8 [ %i.km, %.lr.ph1180 ], [ %i.kf, %bb.ap ]
  %.3501.idx1179 = phi i64 [ %.3501.add, %.lr.ph1180 ], [ 0, %bb.ap ] ; 2 uses
  %.05061178 = phi i64 [ %i.kk, %.lr.ph1180 ], [ 0, %bb.ap ]
  %i.ki = mul nsw i64 %.05061178, 10
  %i.kj = zext nneg i8 %i.kh to i64
  %i.kk = add nsw i64 %i.ki, %i.kj                ; 3 uses
  %.3501.add = add nuw nsw i64 %.3501.idx1179, 1  ; 3 uses
  %.3501.ptr = getelementptr inbounds nuw i8, ptr %.2500, i64 %.3501.add
  %i.kl = load i8, ptr %.3501.ptr, align 1, !tbaa !36 ; 2 uses
  %i.km = add i8 %i.kl, -48                       ; 2 uses
  %i.kn = icmp ult i8 %i.km, 10
  br i1 %i.kn, label %.lr.ph1180, label %bb.aq, !llvm.loop !23

bb.aq:                                            ; preds = %.lr.ph1180
  %.3501.ptr.le = getelementptr inbounds nuw i8, ptr %.2500, i64 %.3501.add
  %i.ko = icmp samesign ugt i64 %.3501.idx1179, 17
  br i1 %i.ko, label %.preheader1154, label %.thread645, !prof !108

.preheader1154:                                   ; preds = %bb.aq, %.preheader1154
  %.0.i249.i = phi ptr [ %i.kr, %.preheader1154 ], [ %.2500, %bb.aq ] ; 3 uses
  %i.kp = load i8, ptr %.0.i249.i, align 1, !tbaa !36
  %i.kq = icmp eq i8 %i.kp, 48
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i249.i, i64 1
  br i1 %i.kq, label %.preheader1154, label %bb.ar, !llvm.loop !24

bb.ar:                                            ; preds = %.preheader1154
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i249.i, i64 18
  %i.kt = icmp ugt ptr %.3501.ptr.le, %i.ks
  %spec.select = select i1 %i.kt, i64 999999999999999999, i64 %i.kk
  br label %.thread645

.thread645:                                       ; preds = %bb.ar, %bb.aq
  %.2508 = phi i64 [ %i.kk, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.ku = sub nsw i64 0, %.2508
  %i.kv = select i1 %i.kc, i64 %i.ku, i64 %.2508
  %i.kw = add nsw i64 %i.kv, %.0488
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.im, label %bb.at, label %bb.bo

bb.at:                                            ; preds = %.thread645, %bb.as
  %i.kx = phi i8 [ %i.kl, %.thread645 ], [ %i.jz, %bb.as ]
  %.2490650 = phi i64 [ %i.kw, %.thread645 ], [ %.0488, %bb.as ] ; 9 uses
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i = icmp eq i8 %i.la, 0               ; 3 uses
  %i.lb = icmp ugt i64 %.044.i.i, 19
  br i1 %i.lb, label %.preheader1153, label %.critedge.i.i

.preheader1153:                                   ; preds = %bb.at, %.critedge.i258.i
  %i.lc = phi i8 [ %.pre1259, %.critedge.i258.i ], [ %i.hv, %bb.at ]
  %.0.i257.i = phi ptr [ %i.ld, %.critedge.i258.i ], [ %i.hu, %bb.at ] ; 2 uses
  switch i8 %i.lc, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i [
    i8 48, label %.critedge.i258.i
    i8 46, label %.critedge.i258.i
  ]

.critedge.i258.i:                                 ; preds = %.preheader1153, %.preheader1153
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 1 ; 2 uses
  %.pre1259 = load i8, ptr %i.ld, align 1, !tbaa !36
  br label %.preheader1153, !llvm.loop !25

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i: ; preds = %.preheader1153
  %i.le = ptrtoint ptr %.0.i257.i to i64
  %.neg.i.i = add i64 %.044.i.i, %i.ih
  %i.lf = sub i64 %.neg.i.i, %i.le
  %i.lg = icmp ugt i64 %i.lf, 19
  br i1 %i.lg, label %.noexc253.i, label %.critedge.i.i, !prof !108

.noexc253.i:                                      ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.lh = call fastcc noundef i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.hh, ptr noundef %i.e)
  %i.li = load double, ptr %i.e, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.lj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.li, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

.critedge.i.i:                                    ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i, %bb.at
  %i.ll = add i64 %.2490650, -309
  %or.cond.i250.i = icmp ult i64 %i.ll, -651
  br i1 %or.cond.i250.i, label %bb.au, label %bb.av, !prof !124

bb.au:                                            ; preds = %.critedge.i.i
  %i.lm = icmp slt i64 %.2490650, -342
  %i.ln = icmp eq i64 %.2493, 0
  %or.cond3.i.i = or i1 %i.ln, %i.lm
  br i1 %or.cond3.i.i, label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread: ; preds = %bb.au
  %i.lo = select i1 %i.hs, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.lp = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.lo, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br i1 %.not59.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.av:                                            ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.lr = add nsw i64 %.2490650, 22
  %or.cond.i259.i = icmp ult i64 %i.lr, 45
  %i.ls = icmp ult i64 %.2493, 9007199254740992
  %or.cond3.i260.i = and i1 %i.ls, %or.cond.i259.i
  br i1 %or.cond3.i260.i, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.lt = uitofp nneg i64 %.2493 to double        ; 2 uses
  %i.lu = icmp slt i64 %.2490650, 0
  br i1 %i.lu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.lv = sub nsw i64 0, %.2490650
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !123
  %i.ly = fdiv double %i.lt, %i.lx
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2490650
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !123
  %i.mb = fmul double %i.ma, %i.lt
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi double [ %i.mb, %bb.ay ], [ %i.ly, %bb.ax ] ; 2 uses
  br i1 %i.hs, label %bb.ba, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.ba:                                            ; preds = %bb.az
  %i.mc = fneg double %storemerge.i.i
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bb:                                            ; preds = %bb.av
  %i.md = icmp eq i64 %.2493, 0
  br i1 %i.md, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.me = select i1 %i.hs, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bd:                                            ; preds = %bb.bb
  %i.mf = mul nsw i64 %.2490650, 217706
  %i.mg = ashr i64 %i.mf, 16
  %i.mh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2493, i1 true) ; 2 uses
  %i.mi = shl i64 %.2493, %i.mh                   ; 2 uses
  %i.mj = trunc nsw i64 %.2490650 to i32
  %i.mk = shl nsw i32 %i.mj, 1
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ml ; 2 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 5472
  %i.mo = load i64, ptr %i.mn, align 16, !tbaa !40
  %i.mp = zext i64 %i.mi to i128
  %i.mq = zext i64 %i.mo to i128
  %i.mr = mul nuw i128 %i.mq, %i.mp               ; 2 uses
  %i.ms = trunc i128 %i.mr to i64                 ; 2 uses
  %i.mt = lshr i128 %i.mr, 64
  %i.mu = trunc nuw i128 %i.mt to i64             ; 3 uses
  %i.mv = and i64 %i.mu, 511
  %i.mw = icmp eq i64 %i.mv, 511
  br i1 %i.mw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mx = getelementptr i8, ptr %i.mm, i64 5480
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !40
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.mi, i64 %i.my) ; 2 uses
  %i.mz = add i64 %2, %i.ms                       ; 2 uses
  %3 = icmp ugt i64 %2, %i.mz
  %i.na = zext i1 %3 to i64
  %spec.select.i261.i = add nuw i64 %i.na, %i.mu
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i261.i, %bb.be ], [ %i.mu, %bb.bd ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.mz, %bb.be ], [ %i.ms, %bb.bd ]
  %i.nb = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.nc = add nuw nsw i64 %i.nb, 9                ; 2 uses
  %i.nd = lshr i64 %.sroa.7.1.i.i, %i.nc          ; 6 uses
  %reass.sub = sub nsw i64 %i.mg, %i.mh
  %.neg = add nsw i64 %reass.sub, %i.nb           ; 4 uses
  %i.ne = add nsw i64 %.neg, 1086
  %i.nf = icmp slt i64 %.neg, -1085
  br i1 %i.nf, label %bb.bg, label %bb.bj, !prof !108

bb.bg:                                            ; preds = %bb.bf
  %i.ng = icmp samesign ult i64 %.neg, -1148
  br i1 %i.ng, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nh = select i1 %i.hs, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.bg
  %i.ni = sub nuw nsw i64 -1085, %.neg
  %i.nj = lshr i64 %i.nd, %i.ni                   ; 2 uses
  %i.nk = and i64 %i.nj, 1
  %i.nl = add nuw nsw i64 %i.nk, %i.nj            ; 2 uses
  %i.nm = lshr i64 %i.nl, 1
  %i.nn = icmp samesign ugt i64 %i.nl, 9007199254740991
  %i.no = and i64 %i.nm, 13510798882111487
  %i.np = select i1 %i.nn, i64 4503599627370496, i64 0
  %i.nq = select i1 %i.hs, i64 -9223372036854775808, i64 0
  %i.nr = or disjoint i64 %i.np, %i.nq
  %i.ns = or disjoint i64 %i.nr, %i.no
  %i.nt = bitcast i64 %i.ns to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bj:                                            ; preds = %bb.bf
  %i.nu = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.nv = add nsw i64 %.2490650, 4
  %i.nw = icmp ult i64 %i.nv, 28
  %or.cond7.i.i = and i1 %i.nw, %i.nu
  %i.nx = and i64 %i.nd, 3
  %i.ny = icmp eq i64 %i.nx, 1
  %i.nz = select i1 %or.cond7.i.i, i1 %i.ny, i1 false
  br i1 %i.nz, label %bb.bk, label %bb.bl, !prof !108

bb.bk:                                            ; preds = %bb.bj
  %i.oa = shl i64 %i.nd, %i.nc
  %i.ob = icmp eq i64 %i.oa, %.sroa.7.1.i.i
  %i.oc = and i64 %i.nd, 72057594037927932
  %spec.select90.i.i = select i1 %i.ob, i64 %i.oc, i64 %i.nd
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.080.i.i = phi i64 [ %i.nd, %bb.bj ], [ %spec.select90.i.i, %bb.bk ] ; 2 uses
  %i.od = and i64 %.080.i.i, 1
  %i.oe = add nuw nsw i64 %i.od, %.080.i.i        ; 2 uses
  %i.of = icmp samesign ugt i64 %i.oe, 18014398509481983 ; 2 uses
  %i.og = zext i1 %i.of to i64
  %spec.select92.i.i = add nuw nsw i64 %i.ne, %i.og ; 2 uses
  %i.oh = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.oh, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bm, !prof !108

bb.bm:                                            ; preds = %bb.bl
  %i.oi = lshr i64 %i.oe, 1
  %i.oj = and i64 %i.oi, 13510798882111487
  %i.ok = select i1 %i.of, i64 0, i64 %i.oj
  %i.ol = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.om = select i1 %i.hs, i64 -9223372036854775808, i64 0
  %i.on = or disjoint i64 %i.ok, %i.om
  %i.oo = or i64 %i.on, %i.ol
  %i.op = bitcast i64 %i.oo to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bl
  %i.oq = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.hh, ptr noundef %i.f)
  br i1 %i.oq, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bn

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1260 = load double, ptr %i.f, align 8, !tbaa !123
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bm, %bb.bi, %bb.bh, %bb.ba, %bb.bc, %bb.az
  %i.or = phi double [ %.pre1260, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.op, %bb.bm ], [ %i.nt, %bb.bi ], [ %i.nh, %bb.bh ], [ %i.mc, %bb.ba ], [ %i.me, %bb.bc ], [ %storemerge.i.i, %bb.az ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !40
  %i.os = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.or, ptr %i.os, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.ot, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i251.i = phi i32 [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bo:                                            ; preds = %bb.as
  %i.ou = select i1 %i.hs, i64 19, i64 20         ; 2 uses
  %i.ov = icmp ugt i64 %.044.i.i, %i.ou
  br i1 %i.ov, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ow = icmp eq i64 %.044.i.i, %i.ou
  br i1 %i.ow, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hs, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.ox = icmp ugt i64 %.2493, -9223372036854775808
  br i1 %i.ox, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oy = sub i64 0, %.2493
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !40
  %i.oz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.oy, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pb = load i8, ptr %.1499, align 1, !tbaa !36
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i = icmp eq i8 %i.pe, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bt:                                            ; preds = %bb.bq
  %i.pf = icmp ne i8 %i.hr, 49
  %i.pg = icmp sgt i64 %.2493, -1
  %or.cond5.i.i = select i1 %i.pf, i1 true, i1 %i.pg
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread652

bb.bu:                                            ; preds = %bb.bp
  %i.ph = icmp slt i64 %.2493, 0
  br i1 %i.ph, label %.thread652, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pi = sub nsw i64 0, %.2493
  %i.pj = select i1 %i.hs, i64 %i.pi, i64 %.2493
  br label %.thread652

.thread652:                                       ; preds = %bb.bu, %bb.bt, %bb.bv
  %.sink1400 = phi i64 [ 7782220156096217088, %bb.bv ], [ 8430738502437568512, %bb.bt ], [ 8430738502437568512, %bb.bu ]
  %.sink1398 = phi i64 [ %i.pj, %bb.bv ], [ %.2493, %bb.bt ], [ %.2493, %bb.bu ]
  store i64 %.sink1400, ptr %i.y, align 8, !tbaa !40
  %i.pk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink1398, ptr %i.pk, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pl = load i8, ptr %.1499, align 1, !tbaa !36
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i = icmp eq i8 %i.po, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657: ; preds = %bb.bo, %bb.br
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !125, !range !50, !noundef !51
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %.preheader1452, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !108

.preheader1452:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, %.preheader1452
  %.122.i.i = phi ptr [ %i.pv, %.preheader1452 ], [ %i.hu, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657 ] ; 3 uses
  %i.ps = load i8, ptr %.122.i.i, align 1, !tbaa !36 ; 2 uses
  %i.pt = add i8 %i.ps, -48
  %i.pu = icmp ult i8 %i.pt, 10
  %i.pv = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.pu, label %.preheader1452, label %bb.bw, !llvm.loop !26

bb.bw:                                            ; preds = %.preheader1452
  %i.pw = zext i8 %i.ps to i64
  %i.px = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i241.i = icmp eq i8 %i.py, 0
  br i1 %.not.i241.i, label %bb.bx, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bx:                                            ; preds = %bb.bw
  %i.pz = ptrtoint ptr %.122.i.i to i64
  %i.qa = ptrtoint ptr %i.hh to i64
  %i.qb = sub i64 %i.pz, %i.qa                    ; 3 uses
  %i.qc = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !48
  %i.qf = ptrtoint ptr %i.n to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = or i64 %i.qh, 6485183463413514240
  store i64 %i.qi, ptr %i.y, align 8, !tbaa !40
  %i.qj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.qk = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qk, ptr nonnull align 1 %i.hh, i64 %i.qb, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qb
  %i.qm = trunc i64 %i.qb to i32
  store i32 %i.qm, ptr %i.n, align 1
  store i8 0, ptr %i.ql, align 1, !tbaa !36
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.au, %bb.bw, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread652, %bb.bt, %bb.bs, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.ap
  %.0.i176.i1042.ph = phi i32 [ 9, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.bs ], [ 9, %bb.bt ], [ 9, %.thread652 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657 ], [ 9, %bb.bw ], [ 9, %bb.au ], [ 9, %bb.ap ]
end_hunk_21
begin_hunk_22_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.aez = add i8 %i.aey, -48                     ; 2 uses
  %i.afa = icmp ult i8 %i.aez, 10
  br i1 %i.afa, label %.lr.ph1194, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, !llvm.loop !22

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i.i
  %.not1130 = icmp eq i64 %.5538.add, 1
  br i1 %.not1130, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread: ; preds = %.lr.ph1194, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i
  %.5531.lcssa1342 = phi i64 [ %.4530824, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.aex, %.lr.ph1194 ]
  %.7540.idx.lcssa11901341 = phi i64 [ %.5538.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %.7540.add, %.lr.ph1194 ] ; 2 uses
  %i.afb = phi i8 [ %i.aer, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ %i.aey, %.lr.ph1194 ]
  %.7540.ptr.le = getelementptr inbounds nuw i8, ptr %.0533.lcssa, i64 %.7540.idx.lcssa11901341 ; 2 uses
  %i.afc = ptrtoint ptr %.7540.ptr.le to i64
  %gepdiff1226 = sub nsw i64 1, %.7540.idx.lcssa11901341
  %i.afd = sub i64 %i.afc, %i.adn
  %sext.i.i.i = shl i64 %i.afd, 32
  %i.afe = ashr exact i64 %sext.i.i.i, 32
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread, %bb.do
  %i.aff = phi i8 [ %i.afb, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.lcssa1159, %bb.do ] ; 2 uses
  %.1534 = phi ptr [ %.7540.ptr.le, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0533.lcssa, %bb.do ] ; 4 uses
  %.2528 = phi i64 [ %.5531.lcssa1342, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %.0526.lcssa, %bb.do ] ; 14 uses
  %.0523 = phi i64 [ %gepdiff1226, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ 0, %bb.do ] ; 2 uses
  %.044.i.i.i = phi i64 [ %i.afe, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i.thread ], [ %i.ado, %bb.do ] ; 4 uses
  switch i8 %i.aff, label %bb.dx [
    i8 101, label %bb.ds
    i8 69, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr
  %i.afg = getelementptr inbounds nuw i8, ptr %.1534, i64 1 ; 2 uses
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !36 ; 3 uses
  %i.afi = icmp eq i8 %i.afh, 45
  switch i8 %i.afh, label %bb.du [
    i8 45, label %bb.dt
    i8 43, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds
  %i.afj = getelementptr inbounds nuw i8, ptr %.1534, i64 2 ; 2 uses
  %.pre1262 = load i8, ptr %i.afj, align 1, !tbaa !36
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.afk = phi i8 [ %i.afh, %bb.ds ], [ %.pre1262, %bb.dt ]
  %.2535 = phi ptr [ %i.afg, %bb.ds ], [ %i.afj, %bb.dt ] ; 3 uses
  %i.afl = add i8 %i.afk, -48                     ; 2 uses
  %i.afm = icmp ult i8 %i.afl, 10
  br i1 %i.afm, label %.lr.ph1201, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1201:                                       ; preds = %bb.du, %.lr.ph1201
  %i.afn = phi i8 [ %i.afs, %.lr.ph1201 ], [ %i.afl, %bb.du ]
  %.3536.idx1200 = phi i64 [ %.3536.add, %.lr.ph1201 ], [ 0, %bb.du ] ; 2 uses
  %.05411199 = phi i64 [ %i.afq, %.lr.ph1201 ], [ 0, %bb.du ]
  %i.afo = mul nsw i64 %.05411199, 10
  %i.afp = zext nneg i8 %i.afn to i64
  %i.afq = add nsw i64 %i.afo, %i.afp             ; 3 uses
  %.3536.add = add nuw nsw i64 %.3536.idx1200, 1  ; 3 uses
  %.3536.ptr = getelementptr inbounds nuw i8, ptr %.2535, i64 %.3536.add
  %i.afr = load i8, ptr %.3536.ptr, align 1, !tbaa !36 ; 2 uses
  %i.afs = add i8 %i.afr, -48                     ; 2 uses
  %i.aft = icmp ult i8 %i.afs, 10
  br i1 %i.aft, label %.lr.ph1201, label %bb.dv, !llvm.loop !23

bb.dv:                                            ; preds = %.lr.ph1201
  %.3536.ptr.le = getelementptr inbounds nuw i8, ptr %.2535, i64 %.3536.add
  %i.afu = icmp samesign ugt i64 %.3536.idx1200, 17
  br i1 %i.afu, label %.preheader1149, label %.thread834, !prof !108

.preheader1149:                                   ; preds = %bb.dv, %.preheader1149
  %.0.i22.i.i = phi ptr [ %i.afx, %.preheader1149 ], [ %.2535, %bb.dv ] ; 3 uses
  %i.afv = load i8, ptr %.0.i22.i.i, align 1, !tbaa !36
  %i.afw = icmp eq i8 %i.afv, 48
  %i.afx = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 1
  br i1 %i.afw, label %.preheader1149, label %bb.dw, !llvm.loop !24

bb.dw:                                            ; preds = %.preheader1149
  %i.afy = getelementptr inbounds nuw i8, ptr %.0.i22.i.i, i64 18
  %i.afz = icmp ugt ptr %.3536.ptr.le, %i.afy
  %spec.select1122 = select i1 %i.afz, i64 999999999999999999, i64 %i.afq
  br label %.thread834

.thread834:                                       ; preds = %bb.dw, %bb.dv
  %.2543 = phi i64 [ %i.afq, %bb.dv ], [ %spec.select1122, %bb.dw ] ; 2 uses
  %i.aga = sub nsw i64 0, %.2543
  %i.agb = select i1 %i.afi, i64 %i.aga, i64 %.2543
  %i.agc = add nsw i64 %i.agb, %.0523
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dr
  br i1 %i.ads, label %bb.dy, label %bb.et

bb.dy:                                            ; preds = %.thread834, %bb.dx
  %i.agd = phi i8 [ %i.afr, %.thread834 ], [ %i.aff, %bb.dx ]
  %.2525839 = phi i64 [ %i.agc, %.thread834 ], [ %.0523, %bb.dx ] ; 9 uses
  %i.age = zext i8 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.age
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i.i = icmp eq i8 %i.agg, 0            ; 3 uses
  %i.agh = icmp ugt i64 %.044.i.i.i, 19
  br i1 %i.agh, label %.preheader1148, label %.critedge.i.i.i

.preheader1148:                                   ; preds = %bb.dy, %.critedge.i30.i.i
  %i.agi = phi i8 [ %.pre1263, %.critedge.i30.i.i ], [ %i.adb, %bb.dy ]
  %.0.i29.i.i = phi ptr [ %i.agj, %.critedge.i30.i.i ], [ %i.ada, %bb.dy ] ; 2 uses
  switch i8 %i.agi, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i [
    i8 48, label %.critedge.i30.i.i
    i8 46, label %.critedge.i30.i.i
  ]

.critedge.i30.i.i:                                ; preds = %.preheader1148, %.preheader1148
  %i.agj = getelementptr inbounds nuw i8, ptr %.0.i29.i.i, i64 1 ; 2 uses
  %.pre1263 = load i8, ptr %i.agj, align 1, !tbaa !36
  br label %.preheader1148, !llvm.loop !25

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i: ; preds = %.preheader1148
  %i.agk = ptrtoint ptr %.0.i29.i.i to i64
  %.neg.i.i.i = add i64 %.044.i.i.i, %i.adn
  %i.agl = sub i64 %.neg.i.i.i, %i.agk
  %i.agm = icmp ugt i64 %i.agl, 19
  br i1 %i.agm, label %.noexc26.i.i, label %.critedge.i.i.i, !prof !108

.noexc26.i.i:                                     ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.agn = call fastcc noundef i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.wn, ptr noundef %i.c)
  %i.ago = load double, ptr %i.c, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ago, ptr %i.agp, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

.critedge.i.i.i:                                  ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i.i, %bb.dy
  %i.agr = add i64 %.2525839, -309
  %or.cond.i23.i.i = icmp ult i64 %i.agr, -651
  br i1 %or.cond.i23.i.i, label %bb.dz, label %bb.ea, !prof !124

bb.dz:                                            ; preds = %.critedge.i.i.i
  %i.ags = icmp slt i64 %.2525839, -342
  %i.agt = icmp eq i64 %.2528, 0
  %or.cond3.i.i.i = or i1 %i.agt, %i.ags
  br i1 %or.cond3.i.i.i, label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i.thread: ; preds = %bb.dz
  %i.agu = select i1 %i.acy, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.agu, ptr %i.agv, align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br i1 %.not59.i.i.i, label %select.unfold852, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ea:                                            ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.agx = add nsw i64 %.2525839, 22
  %or.cond.i31.i.i = icmp ult i64 %i.agx, 45
  %i.agy = icmp ult i64 %.2528, 9007199254740992
  %or.cond3.i32.i.i = and i1 %i.agy, %or.cond.i31.i.i
  br i1 %or.cond3.i32.i.i, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  %i.agz = uitofp nneg i64 %.2528 to double       ; 2 uses
  %i.aha = icmp slt i64 %.2525839, 0
  br i1 %i.aha, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ahb = sub nsw i64 0, %.2525839
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.ahb
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !123
  %i.ahe = fdiv double %i.agz, %i.ahd
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2525839
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !123
  %i.ahh = fmul double %i.ahg, %i.agz
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %storemerge.i.i.i = phi double [ %i.ahh, %bb.ed ], [ %i.ahe, %bb.ec ] ; 2 uses
  br i1 %i.acy, label %bb.ef, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ef:                                            ; preds = %bb.ee
  %i.ahi = fneg double %storemerge.i.i.i
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.eg:                                            ; preds = %bb.ea
  %i.ahj = icmp eq i64 %.2528, 0
  br i1 %i.ahj, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ahk = select i1 %i.acy, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ei:                                            ; preds = %bb.eg
  %i.ahl = mul nsw i64 %.2525839, 217706
  %i.ahm = ashr i64 %i.ahl, 16
  %i.ahn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2528, i1 true) ; 2 uses
  %i.aho = shl i64 %.2528, %i.ahn                 ; 2 uses
  %i.ahp = trunc nsw i64 %.2525839 to i32
  %i.ahq = shl nsw i32 %i.ahp, 1
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.ahr ; 2 uses
  %i.aht = getelementptr i8, ptr %i.ahs, i64 5472
  %i.ahu = load i64, ptr %i.aht, align 16, !tbaa !40
  %i.ahv = zext i64 %i.aho to i128
  %i.ahw = zext i64 %i.ahu to i128
  %i.ahx = mul nuw i128 %i.ahw, %i.ahv            ; 2 uses
  %i.ahy = trunc i128 %i.ahx to i64               ; 2 uses
  %i.ahz = lshr i128 %i.ahx, 64
  %i.aia = trunc nuw i128 %i.ahz to i64           ; 3 uses
  %i.aib = and i64 %i.aia, 511
  %i.aic = icmp eq i64 %i.aib, 511
  br i1 %i.aic, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aid = getelementptr i8, ptr %i.ahs, i64 5480
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !40
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.aho, i64 %i.aie) ; 2 uses
  %i.aif = add i64 %4, %i.ahy                     ; 2 uses
  %5 = icmp ugt i64 %4, %i.aif
  %i.aig = zext i1 %5 to i64
  %spec.select.i33.i.i = add nuw i64 %i.aig, %i.aia
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.sroa.7.1.i.i.i = phi i64 [ %spec.select.i33.i.i, %bb.ej ], [ %i.aia, %bb.ei ] ; 3 uses
  %.sroa.037.0.i.i.i = phi i64 [ %i.aif, %bb.ej ], [ %i.ahy, %bb.ei ]
  %i.aih = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.aii = add nuw nsw i64 %i.aih, 9              ; 2 uses
  %i.aij = lshr i64 %.sroa.7.1.i.i.i, %i.aii      ; 6 uses
  %reass.sub1228 = sub nsw i64 %i.ahm, %i.ahn
  %.neg1227 = add nsw i64 %reass.sub1228, %i.aih  ; 4 uses
  %i.aik = add nsw i64 %.neg1227, 1086
  %i.ail = icmp slt i64 %.neg1227, -1085
  br i1 %i.ail, label %bb.el, label %bb.eo, !prof !108

bb.el:                                            ; preds = %bb.ek
  %i.aim = icmp samesign ult i64 %.neg1227, -1148
  br i1 %i.aim, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ain = select i1 %i.acy, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.en:                                            ; preds = %bb.el
  %i.aio = sub nuw nsw i64 -1085, %.neg1227
  %i.aip = lshr i64 %i.aij, %i.aio                ; 2 uses
  %i.aiq = and i64 %i.aip, 1
  %i.air = add nuw nsw i64 %i.aiq, %i.aip         ; 2 uses
  %i.ais = lshr i64 %i.air, 1
  %i.ait = icmp samesign ugt i64 %i.air, 9007199254740991
  %i.aiu = and i64 %i.ais, 13510798882111487
  %i.aiv = select i1 %i.ait, i64 4503599627370496, i64 0
  %i.aiw = select i1 %i.acy, i64 -9223372036854775808, i64 0
  %i.aix = or disjoint i64 %i.aiv, %i.aiw
  %i.aiy = or disjoint i64 %i.aix, %i.aiu
  %i.aiz = bitcast i64 %i.aiy to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.eo:                                            ; preds = %bb.ek
  %i.aja = icmp ult i64 %.sroa.037.0.i.i.i, 2
  %i.ajb = add nsw i64 %.2525839, 4
  %i.ajc = icmp ult i64 %i.ajb, 28
  %or.cond7.i.i.i = and i1 %i.ajc, %i.aja
  %i.ajd = and i64 %i.aij, 3
  %i.aje = icmp eq i64 %i.ajd, 1
  %i.ajf = select i1 %or.cond7.i.i.i, i1 %i.aje, i1 false
  br i1 %i.ajf, label %bb.ep, label %bb.eq, !prof !108

bb.ep:                                            ; preds = %bb.eo
  %i.ajg = shl i64 %i.aij, %i.aii
  %i.ajh = icmp eq i64 %i.ajg, %.sroa.7.1.i.i.i
  %i.aji = and i64 %i.aij, 72057594037927932
  %spec.select90.i.i.i = select i1 %i.ajh, i64 %i.aji, i64 %i.aij
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.080.i.i.i = phi i64 [ %i.aij, %bb.eo ], [ %spec.select90.i.i.i, %bb.ep ] ; 2 uses
  %i.ajj = and i64 %.080.i.i.i, 1
  %i.ajk = add nuw nsw i64 %i.ajj, %.080.i.i.i    ; 2 uses
  %i.ajl = icmp samesign ugt i64 %i.ajk, 18014398509481983 ; 2 uses
  %i.ajm = zext i1 %i.ajl to i64
  %spec.select92.i.i.i = add nuw nsw i64 %i.aik, %i.ajm ; 2 uses
  %i.ajn = icmp samesign ugt i64 %spec.select92.i.i.i, 2046
  br i1 %i.ajn, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i, label %bb.er, !prof !108

bb.er:                                            ; preds = %bb.eq
  %i.ajo = lshr i64 %i.ajk, 1
  %i.ajp = and i64 %i.ajo, 13510798882111487
  %i.ajq = select i1 %i.ajl, i64 0, i64 %i.ajp
  %i.ajr = shl nuw nsw i64 %spec.select92.i.i.i, 52
  %i.ajs = select i1 %i.acy, i64 -9223372036854775808, i64 0
  %i.ajt = or disjoint i64 %i.ajq, %i.ajs
  %i.aju = or i64 %i.ajt, %i.ajr
  %i.ajv = bitcast i64 %i.aju to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.eq
  %i.ajw = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.wn, ptr noundef %i.d)
  br i1 %i.ajw, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, label %bb.es

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.pre1264 = load double, ptr %i.d, align 8, !tbaa !123
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, %bb.er, %bb.en, %bb.em, %bb.ef, %bb.eh, %bb.ee
  %i.ajx = phi double [ %.pre1264, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge ], [ %i.ajv, %bb.er ], [ %i.aiz, %bb.en ], [ %i.ain, %bb.em ], [ %i.ahi, %bb.ef ], [ %i.ahk, %bb.eh ], [ %storemerge.i.i.i, %bb.ee ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.ajx, ptr %i.ajy, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.es

bb.es:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.sroa.0.21 = phi ptr [ %i.ajz, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ %.sroa.0.6, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  %.0.i24.i.i = phi i32 [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.i: ; preds = %bb.es, %.noexc26.i.i
  %.sroa.0.22 = phi ptr [ %i.agq, %.noexc26.i.i ], [ %.sroa.0.21, %bb.es ]
  %.1.i25.i.i = phi i32 [ %i.agn, %.noexc26.i.i ], [ %.0.i24.i.i, %bb.es ] ; 2 uses
  %.not60.i.i.i = icmp eq i32 %.1.i25.i.i, 0      ; 2 uses
  %..i.i.i = select i1 %.not59.i.i.i, i32 0, i32 9
  %spec.select1123 = select i1 %.not60.i.i.i, i32 %..i.i.i, i32 %.1.i25.i.i
  %.not165.i = and i1 %.not59.i.i.i, %.not60.i.i.i
  br i1 %.not165.i, label %select.unfold852, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.et:                                            ; preds = %bb.dx
  %i.aka = select i1 %i.acy, i64 19, i64 20       ; 2 uses
  %i.akb = icmp ugt i64 %.044.i.i.i, %i.aka
  br i1 %i.akb, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread847, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.akc = icmp eq i64 %.044.i.i.i, %i.aka
  br i1 %i.akc, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.acy, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.akd = icmp ugt i64 %.2528, -9223372036854775808
  br i1 %i.akd, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread847, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ake = sub i64 0, %.2528
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.ake, ptr %i.akf, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.akh = load i8, ptr %.1534, align 1, !tbaa !36
  %i.aki = zext i8 %i.akh to i64
  %i.akj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aki
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i.i = icmp eq i8 %i.akk, 0
  br i1 %.not58.i.i.i, label %select.unfold852, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ey:                                            ; preds = %bb.ev
  %i.akl = icmp ne i8 %i.wo, 49
  %i.akm = icmp sgt i64 %.2528, -1
  %or.cond5.i.i.i = select i1 %i.akl, i1 true, i1 %i.akm
  br i1 %or.cond5.i.i.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread841

bb.ez:                                            ; preds = %bb.eu
  %i.akn = icmp slt i64 %.2528, 0
  br i1 %i.akn, label %.thread841, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ako = sub nsw i64 0, %.2528
  %i.akp = select i1 %i.acy, i64 %i.ako, i64 %.2528
  br label %.thread841

.thread841:                                       ; preds = %bb.ez, %bb.ey, %bb.fa
  %.sink1411 = phi i64 [ 7782220156096217088, %bb.fa ], [ 8430738502437568512, %bb.ey ], [ 8430738502437568512, %bb.ez ]
  %.sink1409 = phi i64 [ %i.akp, %bb.fa ], [ %.2528, %bb.ey ], [ %.2528, %bb.ez ]
  store i64 %.sink1411, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.akq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1409, ptr %i.akq, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.akr = load i8, ptr %.1534, align 1, !tbaa !36
  %i.aks = zext i8 %i.akr to i64
  %i.akt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i.i = icmp eq i8 %i.aku, 0
  br i1 %.not57.i.i.i, label %select.unfold852, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread847: ; preds = %bb.et, %bb.ew
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.akw = load i8, ptr %i.akv, align 8, !tbaa !125, !range !50, !noundef !51
  %i.akx = trunc nuw i8 %i.akw to i1
  br i1 %i.akx, label %.preheader1447, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1447:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread847, %.preheader1447
  %.122.i.i.i = phi ptr [ %i.alb, %.preheader1447 ], [ %i.ada, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.i.thread847 ] ; 3 uses
  %i.aky = load i8, ptr %.122.i.i.i, align 1, !tbaa !36 ; 2 uses
  %i.akz = add i8 %i.aky, -48
  %i.ala = icmp ult i8 %i.akz, 10
  %i.alb = getelementptr inbounds nuw i8, ptr %.122.i.i.i, i64 1
  br i1 %i.ala, label %.preheader1447, label %bb.fb, !llvm.loop !26

bb.fb:                                            ; preds = %.preheader1447
  %i.alc = zext i8 %i.aky to i64
  %i.ald = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.alc
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i268.i = icmp eq i8 %i.ale, 0
  br i1 %.not.i.i268.i, label %.split1350, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1350:                                       ; preds = %bb.fb
  %i.alf = ptrtoint ptr %.122.i.i.i to i64
  %i.alg = ptrtoint ptr %i.wn to i64
  %i.alh = sub i64 %i.alf, %i.alg                 ; 3 uses
  %i.ali = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !48
  %i.all = ptrtoint ptr %.sroa.172.6 to i64
  %i.alm = ptrtoint ptr %i.alk to i64
  %i.aln = sub i64 %i.all, %i.alm
  %i.alo = or i64 %i.aln, 6485183463413514240
  store i64 %i.alo, ptr %.sroa.0.6, align 8, !tbaa !40
  %i.alp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.alq = getelementptr inbounds nuw i8, ptr %.0474.lcssa.sink1407, i64 5 ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bcr = add i8 %i.bcq, -48                     ; 2 uses
  %i.bcs = icmp ult i8 %i.bcr, 10
  br i1 %i.bcs, label %.lr.ph1215, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread, !llvm.loop !22

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i333.i
  %.not1133 = icmp eq i64 %.5573.add, 1
  br i1 %.not1133, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread: ; preds = %.lr.ph1215, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i
  %.5566.lcssa1356 = phi i64 [ %.4565981, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i ], [ %i.bcp, %.lr.ph1215 ]
  %.7575.idx.lcssa12111355 = phi i64 [ %.5573.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i ], [ %.7575.add, %.lr.ph1215 ] ; 2 uses
  %i.bct = phi i8 [ %i.bcj, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i ], [ %i.bcq, %.lr.ph1215 ]
  %.7575.ptr.le = getelementptr inbounds nuw i8, ptr %.0568.lcssa, i64 %.7575.idx.lcssa12111355 ; 2 uses
  %i.bcu = ptrtoint ptr %.7575.ptr.le to i64
  %gepdiff1229 = sub nsw i64 1, %.7575.idx.lcssa12111355
  %i.bcv = sub i64 %i.bcu, %i.bbf
  %sext.i.i338.i = shl i64 %i.bcv, 32
  %i.bcw = ashr exact i64 %sext.i.i338.i, 32
  br label %bb.hc

bb.hc:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread, %bb.gz
  %i.bcx = phi i8 [ %i.bct, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread ], [ %.lcssa1156, %bb.gz ] ; 2 uses
  %.1569 = phi ptr [ %.7575.ptr.le, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread ], [ %.0568.lcssa, %bb.gz ] ; 4 uses
  %.2563 = phi i64 [ %.5566.lcssa1356, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread ], [ %.0561.lcssa, %bb.gz ] ; 14 uses
  %.0558 = phi i64 [ %gepdiff1229, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread ], [ 0, %bb.gz ] ; 2 uses
  %.044.i.i277.i = phi i64 [ %i.bcw, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i335.i.thread ], [ %i.bbg, %bb.gz ] ; 4 uses
  switch i8 %i.bcx, label %bb.hi [
    i8 101, label %bb.hd
    i8 69, label %bb.hd
  ]

bb.hd:                                            ; preds = %bb.hc, %bb.hc
  %i.bcy = getelementptr inbounds nuw i8, ptr %.1569, i64 1 ; 2 uses
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !36 ; 3 uses
  %i.bda = icmp eq i8 %i.bcz, 45
  switch i8 %i.bcz, label %bb.hf [
    i8 45, label %bb.he
    i8 43, label %bb.he
  ]

bb.he:                                            ; preds = %bb.hd, %bb.hd
  %i.bdb = getelementptr inbounds nuw i8, ptr %.1569, i64 2 ; 2 uses
  %.pre1266 = load i8, ptr %i.bdb, align 1, !tbaa !36
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.bdc = phi i8 [ %i.bcz, %bb.hd ], [ %.pre1266, %bb.he ]
  %.2570 = phi ptr [ %i.bcy, %bb.hd ], [ %i.bdb, %bb.he ] ; 3 uses
  %i.bdd = add i8 %i.bdc, -48                     ; 2 uses
  %i.bde = icmp ult i8 %i.bdd, 10
  br i1 %i.bde, label %.lr.ph1222, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.lr.ph1222:                                       ; preds = %bb.hf, %.lr.ph1222
  %i.bdf = phi i8 [ %i.bdk, %.lr.ph1222 ], [ %i.bdd, %bb.hf ]
  %.01221 = phi i64 [ %i.bdi, %.lr.ph1222 ], [ 0, %bb.hf ]
  %.3571.idx1220 = phi i64 [ %.3571.add, %.lr.ph1222 ], [ 0, %bb.hf ] ; 2 uses
  %i.bdg = mul nsw i64 %.01221, 10
  %i.bdh = zext nneg i8 %i.bdf to i64
  %i.bdi = add nsw i64 %i.bdg, %i.bdh             ; 3 uses
  %.3571.add = add nuw nsw i64 %.3571.idx1220, 1  ; 3 uses
  %.3571.ptr = getelementptr inbounds nuw i8, ptr %.2570, i64 %.3571.add
  %i.bdj = load i8, ptr %.3571.ptr, align 1, !tbaa !36 ; 2 uses
  %i.bdk = add i8 %i.bdj, -48                     ; 2 uses
  %i.bdl = icmp ult i8 %i.bdk, 10
  br i1 %i.bdl, label %.lr.ph1222, label %bb.hg, !llvm.loop !23

bb.hg:                                            ; preds = %.lr.ph1222
  %.3571.ptr.le = getelementptr inbounds nuw i8, ptr %.2570, i64 %.3571.add
  %i.bdm = icmp samesign ugt i64 %.3571.idx1220, 17
  br i1 %i.bdm, label %.preheader1146, label %.thread991, !prof !108

.preheader1146:                                   ; preds = %bb.hg, %.preheader1146
  %.0.i22.i331.i = phi ptr [ %i.bdp, %.preheader1146 ], [ %.2570, %bb.hg ] ; 3 uses
  %i.bdn = load i8, ptr %.0.i22.i331.i, align 1, !tbaa !36
  %i.bdo = icmp eq i8 %i.bdn, 48
  %i.bdp = getelementptr inbounds nuw i8, ptr %.0.i22.i331.i, i64 1
  br i1 %i.bdo, label %.preheader1146, label %bb.hh, !llvm.loop !24

bb.hh:                                            ; preds = %.preheader1146
  %i.bdq = getelementptr inbounds nuw i8, ptr %.0.i22.i331.i, i64 18
  %i.bdr = icmp ugt ptr %.3571.ptr.le, %i.bdq
  %spec.select1124 = select i1 %i.bdr, i64 999999999999999999, i64 %i.bdi
  br label %.thread991

.thread991:                                       ; preds = %bb.hh, %bb.hg
  %.2 = phi i64 [ %i.bdi, %bb.hg ], [ %spec.select1124, %bb.hh ] ; 2 uses
  %i.bds = sub nsw i64 0, %.2
  %i.bdt = select i1 %i.bda, i64 %i.bds, i64 %.2
  %i.bdu = add nsw i64 %i.bdt, %.0558
  br label %bb.hj

bb.hi:                                            ; preds = %bb.hc
  br i1 %i.bbk, label %bb.hj, label %bb.ie

bb.hj:                                            ; preds = %.thread991, %bb.hi
  %i.bdv = phi i8 [ %i.bdj, %.thread991 ], [ %i.bcx, %bb.hi ]
  %.2560996 = phi i64 [ %i.bdu, %.thread991 ], [ %.0558, %bb.hi ] ; 9 uses
  %i.bdw = zext i8 %i.bdv to i64
  %i.bdx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bdw
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !121, !range !50, !noundef !51
  %.not59.i.i298.i = icmp eq i8 %i.bdy, 0         ; 3 uses
  %i.bdz = icmp ugt i64 %.044.i.i277.i, 19
  br i1 %i.bdz, label %.preheader, label %.critedge.i.i299.i

.preheader:                                       ; preds = %bb.hj, %.critedge.i30.i327.i
  %i.bea = phi i8 [ %.pre1267, %.critedge.i30.i327.i ], [ %i.bat, %bb.hj ]
  %.0.i29.i326.i = phi ptr [ %i.beb, %.critedge.i30.i327.i ], [ %i.bas, %bb.hj ] ; 2 uses
  switch i8 %i.bea, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i328.i [
    i8 48, label %.critedge.i30.i327.i
    i8 46, label %.critedge.i30.i327.i
  ]

.critedge.i30.i327.i:                             ; preds = %.preheader, %.preheader
  %i.beb = getelementptr inbounds nuw i8, ptr %.0.i29.i326.i, i64 1 ; 2 uses
  %.pre1267 = load i8, ptr %i.beb, align 1, !tbaa !36
  br label %.preheader, !llvm.loop !25

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i328.i: ; preds = %.preheader
  %i.bec = ptrtoint ptr %.0.i29.i326.i to i64
  %.neg.i.i329.i = add i64 %.044.i.i277.i, %i.bbf
  %i.bed = sub i64 %.neg.i.i329.i, %i.bec
  %i.bee = icmp ugt i64 %i.bed, 19
  br i1 %i.bee, label %.noexc26.i330.i, label %.critedge.i.i299.i, !prof !108

.noexc26.i330.i:                                  ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i328.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bef = call fastcc noundef i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef nonnull %i.auf, ptr noundef %i.a)
  %i.beg = load double, ptr %i.a, align 8, !tbaa !123
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.beg, ptr %i.beh, align 8
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i314.i

.critedge.i.i299.i:                               ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_118significant_digitsEPKhm.exit.i328.i, %bb.hj
  %i.bej = add i64 %.2560996, -309
  %or.cond.i23.i300.i = icmp ult i64 %i.bej, -651
  br i1 %or.cond.i23.i300.i, label %bb.hk, label %bb.hl, !prof !124

bb.hk:                                            ; preds = %.critedge.i.i299.i
  %i.bek = icmp slt i64 %.2560996, -342
  %i.bel = icmp eq i64 %.2563, 0
  %or.cond3.i.i325.i = or i1 %i.bel, %i.bek
  br i1 %or.cond3.i.i325.i, label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i314.i.thread, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i314.i.thread: ; preds = %bb.hk
  %i.bem = select i1 %i.baq, double -0.000000e+00, double 0.000000e+00
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.ben = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bem, ptr %i.ben, align 8
  %i.beo = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br i1 %.not59.i.i298.i, label %select.unfold1009, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.hl:                                            ; preds = %.critedge.i.i299.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.bep = add nsw i64 %.2560996, 22
  %or.cond.i31.i301.i = icmp ult i64 %i.bep, 45
  %i.beq = icmp ult i64 %.2563, 9007199254740992
  %or.cond3.i32.i302.i = and i1 %i.beq, %or.cond.i31.i301.i
  br i1 %or.cond3.i32.i302.i, label %bb.hm, label %bb.hr

bb.hm:                                            ; preds = %bb.hl
  %i.ber = uitofp nneg i64 %.2563 to double       ; 2 uses
  %i.bes = icmp slt i64 %.2560996, 0
  br i1 %i.bes, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.bet = sub nsw i64 0, %.2560996
  %i.beu = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %i.bet
  %i.bev = load double, ptr %i.beu, align 8, !tbaa !123
  %i.bew = fdiv double %i.ber, %i.bev
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.bex = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internal12power_of_tenE, i64 %.2560996
  %i.bey = load double, ptr %i.bex, align 8, !tbaa !123
  %i.bez = fmul double %i.bey, %i.ber
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %storemerge.i.i324.i = phi double [ %i.bez, %bb.ho ], [ %i.bew, %bb.hn ] ; 2 uses
  br i1 %i.baq, label %bb.hq, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

bb.hq:                                            ; preds = %bb.hp
  %i.bfa = fneg double %storemerge.i.i324.i
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

bb.hr:                                            ; preds = %bb.hl
  %i.bfb = icmp eq i64 %.2563, 0
  br i1 %i.bfb, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.bfc = select i1 %i.baq, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

bb.ht:                                            ; preds = %bb.hr
  %i.bfd = mul nsw i64 %.2560996, 217706
  %i.bfe = ashr i64 %i.bfd, 16
  %i.bff = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.2563, i1 true) ; 2 uses
  %i.bfg = shl i64 %.2563, %i.bff                 ; 2 uses
  %i.bfh = trunc nsw i64 %.2560996 to i32
  %i.bfi = shl nsw i32 %i.bfh, 1
  %i.bfj = sext i32 %i.bfi to i64
  %i.bfk = getelementptr [8 x i8], ptr @_ZN8simdjson8internal17power_of_five_128E, i64 %i.bfj ; 2 uses
  %i.bfl = getelementptr i8, ptr %i.bfk, i64 5472
  %i.bfm = load i64, ptr %i.bfl, align 16, !tbaa !40
  %i.bfn = zext i64 %i.bfg to i128
  %i.bfo = zext i64 %i.bfm to i128
  %i.bfp = mul nuw i128 %i.bfo, %i.bfn            ; 2 uses
  %i.bfq = trunc i128 %i.bfp to i64               ; 2 uses
  %i.bfr = lshr i128 %i.bfp, 64
  %i.bfs = trunc nuw i128 %i.bfr to i64           ; 3 uses
  %i.bft = and i64 %i.bfs, 511
  %i.bfu = icmp eq i64 %i.bft, 511
  br i1 %i.bfu, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bfv = getelementptr i8, ptr %i.bfk, i64 5480
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !40
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.bfg, i64 %i.bfw) ; 2 uses
  %i.bfx = add i64 %6, %i.bfq                     ; 2 uses
  %7 = icmp ugt i64 %6, %i.bfx
  %i.bfy = zext i1 %7 to i64
  %spec.select.i33.i323.i = add nuw i64 %i.bfy, %i.bfs
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.sroa.7.1.i.i305.i = phi i64 [ %spec.select.i33.i323.i, %bb.hu ], [ %i.bfs, %bb.ht ] ; 3 uses
  %.sroa.037.0.i.i306.i = phi i64 [ %i.bfx, %bb.hu ], [ %i.bfq, %bb.ht ]
  %i.bfz = lshr i64 %.sroa.7.1.i.i305.i, 63       ; 2 uses
  %i.bga = add nuw nsw i64 %i.bfz, 9              ; 2 uses
  %i.bgb = lshr i64 %.sroa.7.1.i.i305.i, %i.bga   ; 6 uses
  %reass.sub1231 = sub nsw i64 %i.bfe, %i.bff
  %.neg1230 = add nsw i64 %reass.sub1231, %i.bfz  ; 4 uses
  %i.bgc = add nsw i64 %.neg1230, 1086
  %i.bgd = icmp slt i64 %.neg1230, -1085
  br i1 %i.bgd, label %bb.hw, label %bb.hz, !prof !108

bb.hw:                                            ; preds = %bb.hv
  %i.bge = icmp samesign ult i64 %.neg1230, -1148
  br i1 %i.bge, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bgf = select i1 %i.baq, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

bb.hy:                                            ; preds = %bb.hw
  %i.bgg = sub nuw nsw i64 -1085, %.neg1230
  %i.bgh = lshr i64 %i.bgb, %i.bgg                ; 2 uses
  %i.bgi = and i64 %i.bgh, 1
  %i.bgj = add nuw nsw i64 %i.bgi, %i.bgh         ; 2 uses
  %i.bgk = lshr i64 %i.bgj, 1
  %i.bgl = icmp samesign ugt i64 %i.bgj, 9007199254740991
  %i.bgm = and i64 %i.bgk, 13510798882111487
  %i.bgn = select i1 %i.bgl, i64 4503599627370496, i64 0
  %i.bgo = select i1 %i.baq, i64 -9223372036854775808, i64 0
  %i.bgp = or disjoint i64 %i.bgn, %i.bgo
  %i.bgq = or disjoint i64 %i.bgp, %i.bgm
  %i.bgr = bitcast i64 %i.bgq to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

bb.hz:                                            ; preds = %bb.hv
  %i.bgs = icmp ult i64 %.sroa.037.0.i.i306.i, 2
  %i.bgt = add nsw i64 %.2560996, 4
  %i.bgu = icmp ult i64 %i.bgt, 28
  %or.cond7.i.i307.i = and i1 %i.bgu, %i.bgs
  %i.bgv = and i64 %i.bgb, 3
  %i.bgw = icmp eq i64 %i.bgv, 1
  %i.bgx = select i1 %or.cond7.i.i307.i, i1 %i.bgw, i1 false
  br i1 %i.bgx, label %bb.ia, label %bb.ib, !prof !108

bb.ia:                                            ; preds = %bb.hz
  %i.bgy = shl i64 %i.bgb, %i.bga
  %i.bgz = icmp eq i64 %i.bgy, %.sroa.7.1.i.i305.i
  %i.bha = and i64 %i.bgb, 72057594037927932
  %spec.select90.i.i320.i = select i1 %i.bgz, i64 %i.bha, i64 %i.bgb
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.080.i.i308.i = phi i64 [ %i.bgb, %bb.hz ], [ %spec.select90.i.i320.i, %bb.ia ] ; 2 uses
  %i.bhb = and i64 %.080.i.i308.i, 1
  %i.bhc = add nuw nsw i64 %i.bhb, %.080.i.i308.i ; 2 uses
  %i.bhd = icmp samesign ugt i64 %i.bhc, 18014398509481983 ; 2 uses
  %i.bhe = zext i1 %i.bhd to i64
  %spec.select92.i.i310.i = add nuw nsw i64 %i.bgc, %i.bhe ; 2 uses
  %i.bhf = icmp samesign ugt i64 %spec.select92.i.i310.i, 2046
  br i1 %i.bhf, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i, label %bb.ic, !prof !108

bb.ic:                                            ; preds = %bb.ib
  %i.bhg = lshr i64 %i.bhc, 1
  %i.bhh = and i64 %i.bhg, 13510798882111487
  %i.bhi = select i1 %i.bhd, i64 0, i64 %i.bhh
  %i.bhj = shl nuw nsw i64 %spec.select92.i.i310.i, 52
  %i.bhk = select i1 %i.baq, i64 -9223372036854775808, i64 0
  %i.bhl = or disjoint i64 %i.bhi, %i.bhk
  %i.bhm = or i64 %i.bhl, %i.bhj
  %i.bhn = bitcast i64 %i.bhm to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i: ; preds = %bb.ib
  %i.bho = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.auf, ptr noundef %i.b)
  br i1 %i.bho, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread_crit_edge, label %bb.id

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread_crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i
  %.pre1268 = load double, ptr %i.b, align 8, !tbaa !123
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread_crit_edge, %bb.ic, %bb.hy, %bb.hx, %bb.hq, %bb.hs, %bb.hp
  %i.bhp = phi double [ %.pre1268, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread_crit_edge ], [ %i.bhn, %bb.ic ], [ %i.bgr, %bb.hy ], [ %i.bgf, %bb.hx ], [ %i.bfa, %bb.hq ], [ %i.bfc, %bb.hs ], [ %storemerge.i.i324.i, %bb.hp ]
  store i64 7205759403792793600, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bhq = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store double %i.bhp, ptr %i.bhq, align 8
  %i.bhr = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.id

bb.id:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i
  %.sroa.0.31 = phi ptr [ %i.bhr, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread ], [ %.sroa.0.2, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i ]
  %.0.i24.i313.i = phi i32 [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i.thread ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i311.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i314.i

_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i314.i: ; preds = %bb.id, %.noexc26.i330.i
  %.sroa.0.32 = phi ptr [ %i.bei, %.noexc26.i330.i ], [ %.sroa.0.31, %bb.id ]
  %.1.i25.i315.i = phi i32 [ %i.bef, %.noexc26.i330.i ], [ %.0.i24.i313.i, %bb.id ] ; 2 uses
  %.not60.i.i316.i = icmp eq i32 %.1.i25.i315.i, 0 ; 2 uses
  %..i.i318.i = select i1 %.not59.i.i298.i, i32 0, i32 9
  %spec.select1125 = select i1 %.not60.i.i316.i, i32 %..i.i318.i, i32 %.1.i25.i315.i
  %.not166.i = and i1 %.not59.i.i298.i, %.not60.i.i316.i
  br i1 %.not166.i, label %select.unfold1009, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ie:                                            ; preds = %bb.hi
  %i.bhs = select i1 %i.baq, i64 19, i64 20       ; 2 uses
  %i.bht = icmp ugt i64 %.044.i.i277.i, %i.bhs
  br i1 %i.bht, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i284.i.thread1004, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bhu = icmp eq i64 %.044.i.i277.i, %i.bhs
  br i1 %i.bhu, label %bb.ig, label %bb.ik

bb.ig:                                            ; preds = %bb.if
  br i1 %i.baq, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %i.bhv = icmp ugt i64 %.2563, -9223372036854775808
  br i1 %i.bhv, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i284.i.thread1004, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bhw = sub i64 0, %.2563
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bhx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bhw, ptr %i.bhx, align 8
  %i.bhy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bhz = load i8, ptr %.1569, align 1, !tbaa !36
  %i.bia = zext i8 %i.bhz to i64
  %i.bib = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bia
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !121, !range !50, !noundef !51
  %.not58.i.i296.i = icmp eq i8 %i.bic, 0
  br i1 %.not58.i.i296.i, label %select.unfold1009, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ij:                                            ; preds = %bb.ig
  %i.bid = icmp ne i8 %i.aug, 49
  %i.bie = icmp sgt i64 %.2563, -1
  %or.cond5.i.i295.i = select i1 %i.bid, i1 true, i1 %i.bie
  br i1 %or.cond5.i.i295.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread998

bb.ik:                                            ; preds = %bb.if
  %i.bif = icmp slt i64 %.2563, 0
  br i1 %i.bif, label %.thread998, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.big = sub nsw i64 0, %.2563
  %i.bih = select i1 %i.baq, i64 %i.big, i64 %.2563
  br label %.thread998

.thread998:                                       ; preds = %bb.ik, %bb.ij, %bb.il
  %.sink1444 = phi i64 [ 7782220156096217088, %bb.il ], [ 8430738502437568512, %bb.ij ], [ 8430738502437568512, %bb.ik ]
  %.sink1442 = phi i64 [ %i.bih, %bb.il ], [ %.2563, %bb.ij ], [ %.2563, %bb.ik ]
  store i64 %.sink1444, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bii = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1442, ptr %i.bii, align 8
  %.sroa.0.30 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bij = load i8, ptr %.1569, align 1, !tbaa !36
  %i.bik = zext i8 %i.bij to i64
  %i.bil = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bik
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !121, !range !50, !noundef !51
  %.not57.i.i293.i = icmp eq i8 %i.bim, 0
  br i1 %.not57.i.i293.i, label %select.unfold1009, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i284.i.thread1004: ; preds = %bb.ie, %bb.ih
  %i.bin = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bio = load i8, ptr %i.bin, align 8, !tbaa !125, !range !50, !noundef !51
  %i.bip = trunc nuw i8 %i.bio to i1
  br i1 %i.bip, label %.preheader1445, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !108

.preheader1445:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i284.i.thread1004, %.preheader1445
  %.122.i.i289.i = phi ptr [ %i.bit, %.preheader1445 ], [ %i.bas, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i284.i.thread1004 ] ; 3 uses
  %i.biq = load i8, ptr %.122.i.i289.i, align 1, !tbaa !36 ; 2 uses
  %i.bir = add i8 %i.biq, -48
  %i.bis = icmp ult i8 %i.bir, 10
  %i.bit = getelementptr inbounds nuw i8, ptr %.122.i.i289.i, i64 1
  br i1 %i.bis, label %.preheader1445, label %bb.im, !llvm.loop !26

bb.im:                                            ; preds = %.preheader1445
  %i.biu = zext i8 %i.biq to i64
  %i.biv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.biu
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !121, !range !50, !noundef !51
  %.not.i.i290.i = icmp eq i8 %i.biw, 0
  br i1 %.not.i.i290.i, label %.split1364, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1364:                                       ; preds = %bb.im
  %i.bix = ptrtoint ptr %.122.i.i289.i to i64
  %i.biy = ptrtoint ptr %i.auf to i64
  %i.biz = sub i64 %i.bix, %i.biy                 ; 3 uses
  %i.bja = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 8
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !48
  %i.bjd = ptrtoint ptr %.sroa.172.2 to i64
  %i.bje = ptrtoint ptr %i.bjc to i64
  %i.bjf = sub i64 %i.bjd, %i.bje
  %i.bjg = or i64 %i.bjf, 6485183463413514240
  store i64 %i.bjg, ptr %.sroa.0.2, align 8, !tbaa !40
  %i.bjh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bji = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd:bb.a
  unreachable

_ZN8simdjson8internal10from_charsEPKc.exit:       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i           ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i to double
  store i64 %spec.select9.i, ptr %1, align 8, !tbaa !123
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %spec.select = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 10) i32 @_ZN8simdjson8westmere13numberparsingL18slow_float_parsingEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.c to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i.i         ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i.i to double
  store i64 %spec.select9.i.i, ptr %1, align 8, !tbaa !123
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %spec.select.i = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  %. = select i1 %spec.select.i, i32 0, i32 9
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i = zext i1 %i.c to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson8internal10from_charsEPKc.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZN8simdjson8internal10from_charsEPKc.exit:       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i           ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i to double
  store i64 %spec.select9.i, ptr %1, align 8, !tbaa !123
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %spec.select = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 10) i32 @_ZN8simdjson8fallback13numberparsingL18slow_float_parsingEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.c to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i.i, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i.i         ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i.i to double
  store i64 %spec.select9.i.i, ptr %1, align 8, !tbaa !123
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %spec.select.i = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  %. = select i1 %spec.select.i, i32 0, i32 9
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx.i = zext i1 %i.c to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select.i, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %2)
          to label %_ZN8simdjson8internal10from_charsEPKc.exit unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #42
  unreachable

_ZN8simdjson8internal10from_charsEPKc.exit:       ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.d, 1
  %i.g = zext i32 %.fca.1.extract.i to i64
  %i.h = shl i64 %i.g, 52
  %i.i = or i64 %i.h, %.fca.0.extract.i           ; 2 uses
  %i.j = or i64 %i.i, -9223372036854775808
  %spec.select9.i = select i1 %i.c, i64 %i.j, i64 %i.i ; 2 uses
  %i.k = bitcast i64 %spec.select9.i to double
  store i64 %spec.select9.i, ptr %1, align 8, !tbaa !123
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %spec.select = fcmp ule double %i.l, f0x7FEFFFFFFFFFFFFF
  ret i1 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #40

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+bmi,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+bmi,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+bmi,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+bmi,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+bmi,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #30 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #41 = { nounwind }
attributes #42 = { noreturn nounwind }
attributes #43 = { builtin nounwind }
attributes #44 = { builtin nounwind allocsize(0) }
attributes #45 = { noreturn }

!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}
!llvm.errno.tbaa = !{!35}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{!10, !38}
!11 = distinct !{!11, !38}
!12 = distinct !{!12, !38}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = distinct !{!15, !38}
!16 = distinct !{!16, !38}
!17 = distinct !{!17, !38}
!18 = distinct !{!18, !38}
!19 = distinct !{!19, !38}
!20 = distinct !{!20, !38}
!21 = distinct !{!21, !38}
!22 = distinct !{!22, !38}
!23 = distinct !{!23, !38}
!24 = distinct !{!24, !38}
!25 = distinct !{!25, !38}
!26 = distinct !{!26, !38}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!31 = !{!"Simple C++ TBAA"}
!32 = !{!"omnipotent char", !31, i64 0}
!33 = !{!"int", !32, i64 0}
!34 = !{!"__libc_errno", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!32, !32, i64 0}
!37 = !{!33, !33, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"long", !32, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"bool", !32, i64 0}
!42 = !{!"_ZTSN8simdjson8internal7decimalE", !33, i64 0, !33, i64 4, !41, i64 8, !41, i64 9, !32, i64 10}
!43 = !{!42, !33, i64 0}
!44 = !{!42, !33, i64 4}
!45 = !{!42, !41, i64 9}
!46 = !{!"any pointer", !32, i64 0}
!47 = !{!"p1 omnipotent char", !46, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!42, !41, i64 8}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!"vtable pointer", !31, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{i64 2021157, i64 2021165}
!55 = !{i64 2021394, i64 2021403}
!56 = !{!"branch_weights", i32 1, i32 1048575}
!57 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !39, i64 0, !47, i64 8}
!58 = !{!"_ZTSN8simdjson14implementationE", !57, i64 8, !57, i64 24, !33, i64 40}
!59 = !{!58, !33, i64 40}
!60 = !{!"p1 _ZTSN8simdjson14implementationE", !46, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"any p2 pointer", !46, i64 0}
!63 = !{!"p2 _ZTSN8simdjson14implementationE", !62, i64 0}
!64 = !{!"_ZTSSt16initializer_listIPKN8simdjson14implementationEE", !63, i64 0, !39, i64 8}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !39, i64 8}
!67 = !{!57, !39, i64 0}
!68 = !{!57, !47, i64 8}
!69 = !{ptr @_ZN8simdjson25get_active_implementationEv}
!70 = !{!"_ZTSSt13__atomic_baseIPKN8simdjson14implementationEE", !60, i64 0}
!71 = !{!70, !60, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !72, i64 0, !39, i64 8, !32, i64 16}
!74 = !{!73, !47, i64 0}
!75 = !{!73, !39, i64 8}
!76 = !{!"p1 int", !46, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPjLb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPjSt14default_deleteIA_jEEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPjSt14default_deleteIA_jEEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIjSt14default_deleteIA_jEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIjSt14default_deleteIA_jELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIA_jSt14default_deleteIS0_EE", !81, i64 0}
!83 = !{!"_ZTSN8simdjson8internal25dom_parser_implementationE", !33, i64 8, !82, i64 16, !33, i64 24, !39, i64 32, !39, i64 40, !41, i64 48}
!84 = !{!83, !33, i64 8}
!85 = !{!77, !76, i64 0}
!86 = !{!83, !33, i64 24}
!87 = !{!"p1 _ZTSN8simdjson8internal25dom_parser_implementationE", !46, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"p1 _ZTSN8simdjson7haswell14open_containerE", !46, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN8simdjson7haswell14open_containerELb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPN8simdjson7haswell14open_containerESt14default_deleteIA_S2_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJPN8simdjson7haswell14open_containerESt14default_deleteIA_S2_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN8simdjson7haswell14open_containerESt14default_deleteIA_S2_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataIN8simdjson7haswell14open_containerESt14default_deleteIA_S2_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrIA_N8simdjson7haswell14open_containerESt14default_deleteIS3_EE", !94, i64 0}
!96 = !{!"p1 bool", !46, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPbLb0EE", !96, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJPbSt14default_deleteIA_bEEE", !97, i64 0}
!99 = !{!"_ZTSSt5tupleIJPbSt14default_deleteIA_bEEE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implIbSt14default_deleteIA_bEE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataIbSt14default_deleteIA_bELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt10unique_ptrIA_bSt14default_deleteIS0_EE", !101, i64 0}
!103 = !{!"p1 _ZTSN8simdjson3dom8documentE", !46, i64 0}
!104 = !{!"_ZTSN8simdjson7haswell25dom_parser_implementationE", !83, i64 0, !95, i64 56, !102, i64 64, !47, i64 72, !39, i64 80, !103, i64 88}
!105 = !{!104, !47, i64 72}
!106 = !{!104, !39, i64 80}
!107 = !{!83, !39, i64 32}
!108 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!109 = !{!76, !76, i64 0}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!112 = !{!"branch_weights", i32 1, i32 1}
!113 = !{!"branch_weights", i32 -2861880, i32 2861880}
!114 = !{!104, !103, i64 88}
!115 = !{!"p1 long", !46, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!89, !89, i64 0}
!118 = !{!"_ZTSN8simdjson7haswell14open_containerE", !33, i64 0, !33, i64 4}
!119 = !{!118, !33, i64 0}
!120 = !{!118, !33, i64 4}
!121 = !{!41, !41, i64 0}
!122 = !{!"double", !32, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"branch_weights", i32 2002, i32 2000}
!125 = !{!83, !41, i64 48}
!126 = !{!83, !39, i64 40}
!127 = !{!96, !96, i64 0}
!128 = !{!"p1 _ZTSN8simdjson7icelake14open_containerE", !46, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EPN8simdjson7icelake14open_containerELb0EE", !128, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJPN8simdjson7icelake14open_containerESt14default_deleteIA_S2_EEE", !129, i64 0}
!131 = !{!"_ZTSSt5tupleIJPN8simdjson7icelake14open_containerESt14default_deleteIA_S2_EEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implIN8simdjson7icelake14open_containerESt14default_deleteIA_S2_EE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataIN8simdjson7icelake14open_containerESt14default_deleteIA_S2_ELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrIA_N8simdjson7icelake14open_containerESt14default_deleteIS3_EE", !133, i64 0}
!135 = !{!"_ZTSN8simdjson7icelake25dom_parser_implementationE", !83, i64 0, !134, i64 56, !102, i64 64, !47, i64 72, !39, i64 80, !103, i64 88}
!136 = !{!135, !47, i64 72}
!137 = !{!135, !39, i64 80}
!138 = !{!135, !103, i64 88}
!139 = !{!128, !128, i64 0}
!140 = !{!"_ZTSN8simdjson7icelake14open_containerE", !33, i64 0, !33, i64 4}
end_hunk_24
