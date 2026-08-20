inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a
  %.12.lcssa = phi ptr [ %.10, %.preheader2435 ], [ %i.jo, %._crit_edge2473.loopexit.unr-lcssa ], [ %i.jb, %.lr.ph2472.epil.preheader ] ; 6 uses
  %i.jc = icmp samesign ugt i32 %.0987, %i.hs
  br i1 %i.jc, label %bb.cd, label %bb.ce

.lr.ph2472:                                       ; preds = %.lr.ph2472, %.lr.ph2472.preheader.new
  %.122471 = phi ptr [ %.10, %.lr.ph2472.preheader.new ], [ %i.jo, %.lr.ph2472 ] ; 3 uses
  %.29802469 = phi i64 [ %.0978, %.lr.ph2472.preheader.new ], [ %i.jk, %.lr.ph2472 ]
  %niter = phi i32 [ 0, %.lr.ph2472.preheader.new ], [ %niter.next.1, %.lr.ph2472 ]
  %i.jd = and i64 %.29802469, 4294967295
  %i.je = mul nuw nsw i64 %i.jd, 100              ; 2 uses
  %sh.diff = lshr i64 %i.je, 31
  %i.jf = and i64 %sh.diff, 254
  %i.jg = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2
  store i16 %i.jh, ptr %.122471, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.122471, i64 2
  %i.jj = and i64 %i.je, 4294967292
  %i.jk = mul nuw nsw i64 %i.jj, 100              ; 4 uses
  %sh.diff.1 = lshr i64 %i.jk, 31
  %i.jl = and i64 %sh.diff.1, 254
  %i.jm = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2
  store i16 %i.jn, ptr %i.ji, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.122471, i64 4 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge2473.loopexit.unr-lcssa, label %.lr.ph2472, !llvm.loop !41

bb.cd:                                            ; preds = %._crit_edge2473
  %i.jp = and i32 %i.hs, 1
  %.not1090 = icmp eq i32 %i.jp, 0
  %i.jq = and i64 %.2980.lcssa, 4294967295
  %. = select i1 %.not1090, i64 100, i64 10
  %i.jr = mul nuw nsw i64 %i.jq, %.               ; 2 uses
  %i.js = lshr i64 %i.jr, 32
  %i.jt = trunc nuw nsw i64 %i.js to i32          ; 4 uses
  %i.ju = trunc i64 %i.jr to i32                  ; 2 uses
  %i.jv = sub nuw nsw i32 %.0987, %i.hs
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 -4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !35
  %.not.i1199 = icmp ugt i32 %i.jz, %i.ju
  br i1 %.not.i1199, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1201, label %.loopexit2434.thread.thread2828

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1201: ; preds = %bb.cd
  %i.ka = icmp ne i64 %i.gg, 0
  %i.kb = select i1 %i.ka, i1 true, i1 %i.bw
  %i.kc = lshr i32 %i.ju, 31
  %i.kd = zext i1 %i.kb to i32
  %i.ke = or i32 %i.jt, %i.kd
  %i.kf = and i32 %i.ke, %i.kc
  %.fr = freeze i32 %i.kf
  %.not2379 = icmp eq i32 %.fr, 0
  br i1 %.not2379, label %.loopexit2434.thread, label %.loopexit2434.thread.thread2828

bb.ce:                                            ; preds = %._crit_edge2473
  %i.kg = and i64 %.2980.lcssa, 4294967295
  %i.kh = mul nuw nsw i64 %i.kg, 100
  %i.ki = lshr i64 %i.kh, 32
  %i.kj = trunc nuw nsw i64 %i.ki to i32          ; 4 uses
  %i.kk = icmp ugt i64 %i.gg, 5000000000
  br i1 %i.kk, label %.thread2010, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj10ELb0EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj10ELb0EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit: ; preds = %bb.ce
  %i.kl = icmp eq i64 %i.gg, 5000000000
  %i.km = and i32 %i.kj, 1
  %i.kn = zext i1 %i.bw to i32
  %i.ko = or i32 %i.km, %i.kn
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = select i1 %i.kl, i1 %i.kp, i1 false
  %cond.fr1950 = freeze i1 %i.kq
  br i1 %cond.fr1950, label %.thread2010, label %.thread2095

.loopexit2434:                                    ; preds = %.lr.ph2480, %.lr.ph2480.1, %.lr.ph2480.2, %.lr.ph2480.3, %bb.cc
  %.13 = phi ptr [ %.10, %bb.cc ], [ %i.ic, %.lr.ph2480 ], [ %i.ii, %.lr.ph2480.1 ], [ %i.io, %.lr.ph2480.2 ], [ %i.iu, %.lr.ph2480.3 ] ; 7 uses
  %i.kr = icmp samesign ult i32 %i.hw, 3
  br i1 %i.kr, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %.loopexit2434
  %i.ks = icmp eq i32 %i.hw, 1
  %i.kt = zext i64 %i.gg to i128                  ; 2 uses
  br i1 %i.ks, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.ku = mul nuw nsw i128 %i.kt, 18446744074     ; 2 uses
  %i.kv = lshr i128 %i.ku, 64                     ; 2 uses
  %i.kw = trunc i128 %i.ku to i64                 ; 2 uses
  %i.kx = trunc i128 %i.kv to i32                 ; 3 uses
  %i.ky = icmp ugt i64 %i.kw, -9223372018408031735
  br i1 %i.ky, label %.thread1981, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kz = trunc nuw nsw i128 %i.kv to i64
  %i.la = lshr i64 %i.kw, 63
  %i.lb = zext i1 %i.bw to i64
  %i.lc = or i64 %i.kz, %i.lb
  %i.ld = and i64 %i.lc, %i.la
  %.not1097 = icmp eq i64 %i.ld, 0
  br i1 %.not1097, label %.thread2077, label %.thread1981

bb.ci:                                            ; preds = %bb.cf
  %i.le = mul nuw nsw i128 %i.kt, 184467440738    ; 2 uses
  %i.lf = lshr i128 %i.le, 64                     ; 2 uses
  %i.lg = trunc i128 %i.le to i64                 ; 2 uses
  %i.lh = trunc i128 %i.lf to i32                 ; 3 uses
  %i.li = icmp ugt i64 %i.lg, -9223371852387335071
  br i1 %i.li, label %.thread2010, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lj = trunc nuw nsw i128 %i.lf to i64
  %i.lk = lshr i64 %i.lg, 63
  %i.ll = zext i1 %i.bw to i64
  %i.lm = or i64 %i.lj, %i.ll
  %i.ln = and i64 %i.lm, %i.lk
  %.not1096 = icmp eq i64 %i.ln, 0
  br i1 %.not1096, label %.thread2095, label %.thread2010

bb.ck:                                            ; preds = %.loopexit2434
  %i.lo = zext i64 %i.gg to i128
  %i.lp = mul nuw nsw i128 %i.lo, 184467440737095517
  %i.lq = lshr i128 %i.lp, 64                     ; 2 uses
  %i.lr = trunc nuw nsw i128 %i.lq to i64
  %i.ls = trunc i128 %i.lq to i32
  %.neg1091 = mul i32 %i.ls, -100
  %i.lt = trunc i64 %i.gg to i32
  %i.lu = add i32 %.neg1091, %i.lt
  %i.lv = and i64 %i.lr, 4294967295
  %i.lw = mul nuw nsw i64 %i.lv, 281474977
  %i.lx = lshr i64 %i.lw, 16
  %i.ly = add nuw nsw i64 %i.lx, 1
  %i.lz = add nsw i32 %i.hw, -2
  br label %bb.cs

bb.cl:                                            ; preds = %.thread1960
  %i.ma = and i64 %i.gj, 4294967295
  %i.mb = mul nuw nsw i64 %i.ma, 281474978
  %i.mc = lshr i64 %i.mb, 16
  br label %bb.cr

bb.cm:                                            ; preds = %.thread1960
  %i.md = icmp samesign ugt i32 %i.gk, 9999
  br i1 %i.md, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.me = and i64 %i.gj, 1048575
  %i.mf = mul nuw nsw i64 %i.me, 429497
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  %i.mg = icmp samesign ugt i32 %i.gk, 99
  br i1 %i.mg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mh = and i64 %i.gj, 16383
  %i.mi = mul nuw nsw i64 %i.mh, 42949673
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.mj = shl i64 %i.gj, 32
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cn, %bb.cq, %bb.cp, %bb.cl
  %.2989 = phi i32 [ 6, %bb.cl ], [ 4, %bb.cn ], [ 2, %bb.cp ], [ 0, %bb.cq ]
  %.4982 = phi i64 [ %i.mc, %bb.cl ], [ %i.mf, %bb.cn ], [ %i.mi, %bb.cp ], [ %i.mj, %bb.cq ] ; 2 uses
  %i.mk = icmp ult i64 %.4982, 42949672960        ; 2 uses
  %.neg1092 = sext i1 %i.mk to i64
  %i.ml = getelementptr inbounds i8, ptr %.7, i64 %.neg1092
  %.neg1094 = select i1 %i.mk, i32 -1, i32 -2
  %i.mm = add nsw i32 %.neg1094, %.1998
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ck
  %i.mn = phi i32 [ %i.lu, %bb.ck ], [ %i.gm, %bb.cr ] ; 7 uses
  %.41001 = phi i32 [ %i.lz, %bb.ck ], [ %i.mm, %bb.cr ] ; 11 uses
  %.3990 = phi i32 [ 6, %bb.ck ], [ %.2989, %bb.cr ] ; 7 uses
  %.5983 = phi i64 [ %i.ly, %bb.ck ], [ %.4982, %bb.cr ] ; 5 uses
  %.15 = phi ptr [ %.13, %bb.ck ], [ %i.ml, %bb.cr ] ; 5 uses
  %sh.diff2381 = lshr i64 %.5983, 31
  %i.mo = and i64 %sh.diff2381, 4294967294
  %i.mp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %.15, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.15, i64 2 ; 5 uses
  %i.ms = icmp samesign ugt i32 %.41001, %.3990
  br i1 %i.ms, label %bb.ct, label %.preheader

.preheader:                                       ; preds = %bb.cs
  %i.mt = add nsw i32 %.41001, -1                 ; 2 uses
  %i.mu = lshr i32 %i.mt, 1                       ; 3 uses
  switch i32 %i.mu, label %.lr.ph2485.preheader.new [
    i32 0, label %._crit_edge2486
    i32 1, label %.lr.ph2485.epil.preheader
  ]

.lr.ph2485.preheader.new:                         ; preds = %.preheader
  %unroll_iter3042 = and i32 %i.mu, 2147483646
  br label %.lr.ph2485

bb.ct:                                            ; preds = %bb.cs
  %i.mv = sub nuw nsw i32 %.41001, %.3990         ; 3 uses
  %.not2914 = icmp eq i32 %.3990, 0
  br i1 %.not2914, label %.loopexit2433, label %.lr.ph2493

.lr.ph2493:                                       ; preds = %bb.ct
  %i.mw = and i64 %.5983, 4294967295
  %i.mx = mul nuw nsw i64 %i.mw, 100              ; 2 uses
  %sh.diff2432 = lshr i64 %i.mx, 31
  %i.my = and i64 %sh.diff2432, 254
  %i.mz = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2
  store i16 %i.na, ptr %i.mr, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.15, i64 4 ; 2 uses
  %i.nc = icmp samesign ugt i32 %.3990, 2
  br i1 %i.nc, label %.lr.ph2493.1, label %.loopexit2433

.lr.ph2493.1:                                     ; preds = %.lr.ph2493
  %i.nd = and i64 %i.mx, 4294967292
  %i.ne = mul nuw nsw i64 %i.nd, 100              ; 2 uses
  %sh.diff2432.1 = lshr i64 %i.ne, 31
  %i.nf = and i64 %sh.diff2432.1, 254
  %i.ng = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.nf
  %i.nh = load i16, ptr %i.ng, align 2
  store i16 %i.nh, ptr %i.nb, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %.15, i64 6 ; 2 uses
  %i.nj = icmp sgt i32 %.3990, 4
  br i1 %i.nj, label %.lr.ph2493.2, label %.loopexit2433

.lr.ph2493.2:                                     ; preds = %.lr.ph2493.1
  %i.nk = and i64 %i.ne, 4294967280
  %i.nl = mul nuw nsw i64 %i.nk, 100
  %sh.diff2432.2 = lshr i64 %i.nl, 31
  %i.nm = and i64 %sh.diff2432.2, 254
  %i.nn = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.nm
  %i.no = load i16, ptr %i.nn, align 2
  store i16 %i.no, ptr %i.ni, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %.15, i64 8
  br label %.loopexit2433

._crit_edge2486.loopexit.unr-lcssa:               ; preds = %.lr.ph2485
  %i.nq = and i32 %i.mt, 2
  %lcmp.mod3038.not = icmp eq i32 %i.nq, 0
  br i1 %lcmp.mod3038.not, label %._crit_edge2486, label %.lr.ph2485.epil.preheader

.lr.ph2485.epil.preheader:                        ; preds = %.preheader, %._crit_edge2486.loopexit.unr-lcssa
  %.172484.epil.init = phi ptr [ %i.mr, %.preheader ], [ %i.oj, %._crit_edge2486.loopexit.unr-lcssa ] ; 2 uses
  %.79852482.epil.init = phi i64 [ %.5983, %.preheader ], [ %i.of, %._crit_edge2486.loopexit.unr-lcssa ]
  %lcmp.mod3041 = trunc i32 %i.mu to i1
  tail call void @llvm.assume(i1 %lcmp.mod3041)
  %i.nr = and i64 %.79852482.epil.init, 4294967295
  %i.ns = mul nuw nsw i64 %i.nr, 100              ; 2 uses
  %sh.diff2384.epil = lshr i64 %i.ns, 31
  %i.nt = and i64 %sh.diff2384.epil, 254
  %i.nu = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.nt
  %i.nv = load i16, ptr %i.nu, align 2
  store i16 %i.nv, ptr %.172484.epil.init, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %.172484.epil.init, i64 2
  br label %._crit_edge2486

._crit_edge2486:                                  ; preds = %.lr.ph2485.epil.preheader, %._crit_edge2486.loopexit.unr-lcssa, %.preheader
  %.7985.lcssa = phi i64 [ %.5983, %.preheader ], [ %i.of, %._crit_edge2486.loopexit.unr-lcssa ], [ %i.ns, %.lr.ph2485.epil.preheader ] ; 2 uses
  %.17.lcssa = phi ptr [ %i.mr, %.preheader ], [ %i.oj, %._crit_edge2486.loopexit.unr-lcssa ], [ %i.nw, %.lr.ph2485.epil.preheader ] ; 6 uses
  %i.nx = icmp samesign ugt i32 %.3990, %.41001
  br i1 %i.nx, label %bb.cu, label %bb.cv

.lr.ph2485:                                       ; preds = %.lr.ph2485, %.lr.ph2485.preheader.new
  %.172484 = phi ptr [ %i.mr, %.lr.ph2485.preheader.new ], [ %i.oj, %.lr.ph2485 ] ; 3 uses
  %.79852482 = phi i64 [ %.5983, %.lr.ph2485.preheader.new ], [ %i.of, %.lr.ph2485 ]
  %niter3043 = phi i32 [ 0, %.lr.ph2485.preheader.new ], [ %niter3043.next.1, %.lr.ph2485 ]
  %i.ny = and i64 %.79852482, 4294967295
  %i.nz = mul nuw nsw i64 %i.ny, 100              ; 2 uses
  %sh.diff2384 = lshr i64 %i.nz, 31
  %i.oa = and i64 %sh.diff2384, 254
  %i.ob = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.oa
  %i.oc = load i16, ptr %i.ob, align 2
  store i16 %i.oc, ptr %.172484, align 1
  %i.od = getelementptr inbounds nuw i8, ptr %.172484, i64 2
  %i.oe = and i64 %i.nz, 4294967292
  %i.of = mul nuw nsw i64 %i.oe, 100              ; 4 uses
  %sh.diff2384.1 = lshr i64 %i.of, 31
  %i.og = and i64 %sh.diff2384.1, 254
  %i.oh = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.og
  %i.oi = load i16, ptr %i.oh, align 2
  store i16 %i.oi, ptr %i.od, align 1
  %i.oj = getelementptr inbounds nuw i8, ptr %.172484, i64 4 ; 3 uses
  %niter3043.next.1 = add i32 %niter3043, 2       ; 2 uses
  %niter3043.ncmp.1 = icmp eq i32 %niter3043.next.1, %unroll_iter3042
  br i1 %niter3043.ncmp.1, label %._crit_edge2486.loopexit.unr-lcssa, label %.lr.ph2485, !llvm.loop !42

bb.cu:                                            ; preds = %._crit_edge2486
  %i.ok = and i32 %.41001, 1
  %.not1095 = icmp eq i32 %i.ok, 0
  %i.ol = and i64 %.7985.lcssa, 4294967295
  %.2913 = select i1 %.not1095, i64 100, i64 10
  %i.om = mul nuw nsw i64 %i.ol, %.2913           ; 2 uses
  %i.on = lshr i64 %i.om, 32
  %i.oo = trunc nuw nsw i64 %i.on to i32          ; 4 uses
  %i.op = trunc i64 %i.om to i32                  ; 2 uses
  %i.oq = sub nuw nsw i32 %.3990, %.41001
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 -4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !35
  %.not.i1196 = icmp ugt i32 %i.ou, %i.op
  br i1 %.not.i1196, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1198, label %.loopexit2434.thread.thread2828

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1198: ; preds = %bb.cu
  %i.ov = icmp ne i32 %i.mn, 0
  %i.ow = select i1 %i.ov, i1 true, i1 %i.bw
  %i.ox = lshr i32 %i.op, 31
  %i.oy = zext i1 %i.ow to i32
  %i.oz = or i32 %i.oo, %i.oy
  %i.pa = and i32 %i.oz, %i.ox
  %.fr2382 = freeze i32 %i.pa
  %.not2383 = icmp eq i32 %.fr2382, 0
  br i1 %.not2383, label %.loopexit2434.thread, label %.loopexit2434.thread.thread2828

bb.cv:                                            ; preds = %._crit_edge2486
  %i.pb = and i64 %.7985.lcssa, 4294967295
  %i.pc = mul nuw nsw i64 %i.pb, 100
  %i.pd = lshr i64 %i.pc, 32
  %i.pe = trunc nuw nsw i64 %i.pd to i32          ; 4 uses
  %i.pf = icmp ugt i32 %i.mn, 50
  br i1 %i.pf, label %.thread2010, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit1205

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit1205: ; preds = %bb.cv
  %i.pg = icmp eq i32 %i.mn, 50
  %i.ph = and i32 %i.pe, 1
  %i.pi = zext i1 %i.bw to i32
  %i.pj = or i32 %i.ph, %i.pi
  %i.pk = icmp ne i32 %i.pj, 0
  %i.pl = select i1 %i.pg, i1 %i.pk, i1 false
  %cond.fr1972 = freeze i1 %i.pl
  br i1 %cond.fr1972, label %.thread2010, label %.thread2095

.loopexit2433:                                    ; preds = %.lr.ph2493, %.lr.ph2493.1, %.lr.ph2493.2, %bb.ct
  %.18 = phi ptr [ %i.mr, %bb.ct ], [ %i.nb, %.lr.ph2493 ], [ %i.ni, %.lr.ph2493.1 ], [ %i.np, %.lr.ph2493.2 ] ; 8 uses
  %i.pm = icmp samesign ugt i32 %i.mv, 2
  br i1 %i.pm, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.loopexit2433
  %i.pn = shl i32 %i.mn, 1
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.po
  %i.pq = load i16, ptr %i.pp, align 2
  store i16 %i.pq, ptr %.18, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %.18, i64 2 ; 2 uses
  %i.ps = add nsw i32 %i.mv, -2                   ; 2 uses
  br i1 %i.bw, label %.thread2050, label %.thread2086

bb.cx:                                            ; preds = %.loopexit2433
  %i.pt = icmp eq i32 %i.mv, 1
  br i1 %i.pt, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.pu = zext i32 %i.mn to i64
  %i.pv = mul nuw nsw i64 %i.pu, 429496730        ; 2 uses
  %i.pw = lshr i64 %i.pv, 32
  %i.px = trunc nuw nsw i64 %i.pw to i32          ; 4 uses
  %i.py = trunc i64 %i.pv to i32                  ; 2 uses
  %.not.i1193 = icmp ult i32 %i.py, -1717986918
  br i1 %.not.i1193, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1195, label %.thread1981

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1195: ; preds = %bb.cy
  %i.pz = lshr i32 %i.py, 31
  %i.qa = zext i1 %i.bw to i32
  %i.qb = or i32 %i.px, %i.qa
  %i.qc = and i32 %i.qb, %i.pz
  %.fr2385 = freeze i32 %i.qc
  %.not2386 = icmp eq i32 %.fr2385, 0
  br i1 %.not2386, label %.thread2077, label %.thread1981

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.bw, label %.thread2050, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qd = shl i32 %i.mn, 1
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2
  store i16 %i.qg, ptr %.18, align 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.18, i64 2
  br label %.thread2037

.thread2050:                                      ; preds = %bb.cz, %bb.cw
  %.222065 = phi ptr [ %.18, %bb.cz ], [ %i.pr, %bb.cw ] ; 62 uses
  %.69382064 = phi i32 [ %i.mn, %bb.cz ], [ 0, %bb.cw ] ; 23 uses
  %.910062063 = phi i32 [ 0, %bb.cz ], [ %i.ps, %bb.cw ] ; 33 uses
  %i.qi = load i32, ptr %i.b, align 4, !tbaa !35  ; 2 uses
  %i.qj = add nsw i32 %i.qi, 294                  ; 13 uses
  %i.qk = udiv i32 %i.qj, 22                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ql = mul nuw nsw i32 %i.qk, 22
  %i.qm = add nsw i32 %i.ql, -272                 ; 14 uses
  %i.qn = sub nsw i32 %i.qm, %i.qi                ; 36 uses
  store i32 %i.qn, ptr %i.c, align 4, !tbaa !35
  store i32 %i.qm, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.qo = load i64, ptr %i.a, align 8, !tbaa !16  ; 14 uses
  %i.qp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qo, i1 false)
  %i.qq = trunc nuw nsw i64 %i.qp to i32
end_hunk_0
begin_hunk_1_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a
  %i.aio = add nsw i32 %i.qr, %i.qm
  %i.aip = icmp slt i32 %i.aio, 1
  %or.cond.i.i1369 = select i1 %i.ain, i1 true, i1 %i.aip
  br i1 %or.cond.i.i1369, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1371, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aiq = icmp ugt i32 %i.qj, 285
  br i1 %i.aiq, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1371, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.air = mul i64 %i.qo, -4078282918271054303
  %i.ais = icmp ugt i64 %i.air, 47223664828696
  %i.ait = zext i1 %i.ais to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1371

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1371: ; preds = %bb.et, %bb.eu, %bb.ev
  %.0.i.i1370 = phi i32 [ %i.ait, %bb.ev ], [ 1, %bb.et ], [ 0, %bb.eu ]
  %i.aiu = icmp ugt i32 %i.aij, -1717986919
  br i1 %i.aiu, label %.thread2010.sink.split, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj1ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj1ELb1EEEbJETnNSt9enable_ifIXsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_S6_DpT1_.exit: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1371
  %i.aiv = icmp eq i64 %i.aim, 5
  %i.aiw = and i32 %.69382064, 1
  %i.aix = or i32 %.0.i.i1370, %i.aiw
  %i.aiy = icmp ne i32 %i.aix, 0
  %i.aiz = select i1 %i.aiv, i1 %i.aiy, i1 false
  %cond.fr2115 = freeze i1 %i.aiz
  br i1 %cond.fr2115, label %.thread2010.sink.split, label %.thread2095.sink.split

bb.ew:                                            ; preds = %bb.es, %bb.eo
  %.10942.in = phi i64 [ %i.ahu, %bb.eo ], [ %i.aim, %bb.es ]
  %.10942 = trunc nuw nsw i64 %.10942.in to i32   ; 3 uses
  %i.aja = icmp ult i32 %i.qj, 264
  %i.ajb = add nsw i32 %i.qr, %i.qm
  %i.ajc = icmp slt i32 %i.ajb, 0
  %or.cond.i.i1372 = select i1 %i.aja, i1 true, i1 %i.ajc
  br i1 %or.cond.i.i1372, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ajd = icmp ugt i32 %i.qj, 285
  br i1 %i.ajd, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aje = mul i64 %i.qo, -4078282918271054303
  %i.ajf = icmp ugt i64 %i.aje, 47223664828696
  %i.ajg = zext i1 %i.ajf to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.ew, %bb.ex, %bb.ey
  %.0.i.i1373 = phi i32 [ %i.ajg, %bb.ey ], [ 1, %bb.ew ], [ 0, %bb.ex ]
  %i.ajh = and i32 %.10942, 1
  %i.aji = or i32 %.0.i.i1373, %i.ajh
  %i.ajj = icmp ne i32 %i.aji, 0
  %.0.i1280 = select i1 %i.agz, i1 %i.ajj, i1 false
  br i1 %.0.i1280, label %.loopexit2434.thread.thread2828.sink.split, label %.loopexit2434.thread.sink.split

bb.ez:                                            ; preds = %bb.ej
  %i.ajk = icmp samesign ult i32 %i.qn, 10
  br i1 %i.ajk, label %bb.fa, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit1267

bb.fa:                                            ; preds = %bb.ez
  %i.ajl = sub nuw nsw i32 22, %i.qn
  br label %.lr.ph.i1375

.lr.ph.i1375:                                     ; preds = %bb.fa, %.lr.ph.i1375
  %.012.i1376 = phi i64 [ %spec.select.i1380, %.lr.ph.i1375 ], [ 1, %bb.fa ]
  %.0811.i1377 = phi i32 [ %i.ajp, %.lr.ph.i1375 ], [ %i.ajl, %bb.fa ] ; 2 uses
  %.0910.i1378 = phi i64 [ %i.ajo, %.lr.ph.i1375 ], [ 10, %bb.fa ] ; 3 uses
  %i.ajm = and i32 %.0811.i1377, 1
  %.not.i1379 = icmp eq i32 %i.ajm, 0
  %i.ajn = select i1 %.not.i1379, i64 1, i64 %.0910.i1378
  %spec.select.i1380 = mul i64 %i.ajn, %.012.i1376 ; 3 uses
  %i.ajo = mul i64 %.0910.i1378, %.0910.i1378
  %i.ajp = lshr i32 %.0811.i1377, 1               ; 2 uses
  %.not13.i1381 = icmp eq i32 %i.ajp, 0
  br i1 %.not13.i1381, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1250, label %.lr.ph.i1375, !llvm.loop !47

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1250: ; preds = %.lr.ph.i1375
  %i.ajq = mul i64 %i.vh, %spec.select.i1380
  %i.ajr = zext i64 %spec.select.i1380 to i128    ; 2 uses
  %i.ajs = and i128 %i.us, 18446744073709551615
  %i.ajt = mul nuw i128 %i.ajs, %i.ajr            ; 2 uses
  %i.aju = lshr i128 %i.ajt, 64
  %i.ajv = trunc nuw i128 %i.aju to i64
  %i.ajw = zext i64 %i.ve to i128
  %i.ajx = mul nuw i128 %i.ajw, %i.ajr            ; 2 uses
  %i.ajy = lshr i128 %i.ajx, 64
  %i.ajz = trunc nuw i128 %i.ajy to i64
  %i.aka = trunc i128 %i.ajx to i64
  %i.akb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aka, i64 %i.ajv) ; 2 uses
  %i.akc = extractvalue { i64, i1 } %i.akb, 1
  %i.akd = extractvalue { i64, i1 } %i.akb, 0
  %i.ake = zext i1 %i.akc to i64
  %i.akf = add i64 %i.ajq, %i.ajz
  %i.akg = add i64 %i.akf, %i.ake
  %i.akh = and i128 %i.ajt, 18446744073709551615
  %i.aki = mul nuw nsw i128 %i.akh, 2000000000
  %i.akj = lshr i128 %i.aki, 64
  %i.akk = trunc nuw nsw i128 %i.akj to i64
  %i.akl = zext i64 %i.akd to i128
  %i.akm = mul nuw nsw i128 %i.akl, 2000000000    ; 2 uses
  %i.akn = lshr i128 %i.akm, 64
  %i.ako = trunc nuw nsw i128 %i.akn to i64
  %i.akp = trunc i128 %i.akm to i64
  %i.akq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.akp, i64 %i.akk)
  %i.akr = extractvalue { i64, i1 } %i.akq, 1
  %i.aks = zext i1 %i.akr to i64
  %i.akt = add nuw nsw i64 %i.aks, %i.ako
  %i.aku = zext i64 %i.akg to i128
  %i.akv = mul nuw nsw i128 %i.aku, 2000000000    ; 2 uses
  %i.akw = lshr i128 %i.akv, 64
  %i.akx = trunc nuw nsw i128 %i.akw to i64
  %i.aky = trunc i128 %i.akv to i64
  %i.akz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aky, i64 %i.akt)
  %i.ala = extractvalue { i64, i1 } %i.akz, 1
  %i.alb = zext i1 %i.ala to i64
  %i.alc = add nuw nsw i64 %i.alb, %i.akx         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.ald = sub nsw i32 %i.qn, %.910062063         ; 3 uses
  store i32 %i.ald, ptr %i.c, align 4, !tbaa !35
  %i.ale = and i32 %.910062063, 1
  %.not1108 = icmp eq i32 %i.ale, 0
  br i1 %.not1108, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1250
  %i.alf = mul nuw nsw i64 %i.alc, 1441151881
  %i.alg = lshr i64 %i.alf, 26
  %i.alh = add nuw nsw i64 %i.alg, 1              ; 3 uses
  store i64 %i.alh, ptr %i.f, align 8, !tbaa !16
  %i.ali = lshr i64 %i.alh, 32                    ; 2 uses
  %i.alj = icmp eq i32 %.910062063, 1
  br i1 %i.alj, label %bb.fj, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.alk = trunc nuw nsw i64 %i.ali to i8
  %i.all = add nuw nsw i8 %i.alk, 48
  store i8 %i.all, ptr %.222065, align 1, !tbaa !25
  br label %bb.fh

bb.fd:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1250
  %i.alm = mul nuw nsw i64 %i.alc, 1801439851
  %i.aln = lshr i64 %i.alm, 23
  %i.alo = add nuw nsw i64 %i.aln, 1              ; 3 uses
  store i64 %i.alo, ptr %i.f, align 8, !tbaa !16
  %i.alp = lshr i64 %i.alo, 32                    ; 3 uses
  switch i32 %.910062063, label %.thread2130 [
    i32 0, label %bb.fe
    i32 2, label %bb.fj
  ]

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.f, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.41558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %.sroa.41558.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %i.alq = icmp samesign ugt i64 %i.alc, 1019999999
  br i1 %i.alq, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.alr = icmp eq i64 %i.alp, 50
  br i1 %i.alr, label %bb.fg, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread2123

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread2123: ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread2111.thread2356

bb.fg:                                            ; preds = %bb.ff
  %i.als = and i32 %.69382064, 1
  %.not.i1282 = icmp eq i32 %i.als, 0
  br i1 %.not.i1282, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit, label %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread: ; preds = %bb.fe, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread2111.thread2364

_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit: ; preds = %bb.fg
  %i.alt = call noundef zeroext i1 @_ZZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatEENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.alt, label %.thread2111.thread2364, label %.thread2111.thread2356

.thread2130:                                      ; preds = %bb.fd
  %i.alu = shl nuw nsw i64 %i.alp, 1
  %i.alv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.alu
  %i.alw = load i16, ptr %i.alv, align 2
  store i16 %i.alw, ptr %.222065, align 1
  br label %bb.fh

bb.fh:                                            ; preds = %.thread2130, %bb.fc
  %.sink2905 = phi i64 [ 2, %.thread2130 ], [ 1, %bb.fc ]
  %i.alx = getelementptr inbounds nuw i8, ptr %.222065, i64 %.sink2905 ; 3 uses
  %i.aly = icmp samesign ugt i32 %.910062063, 4
  br i1 %i.aly, label %.lr.ph2518.preheader, label %._crit_edge2519

.lr.ph2518.preheader:                             ; preds = %bb.fh
  %i.alz = add nsw i32 %.910062063, -3            ; 2 uses
  %i.ama = lshr i32 %i.alz, 1                     ; 3 uses
  %6 = icmp eq i32 %i.ama, 1
  br i1 %6, label %.lr.ph2518.epil.preheader, label %.lr.ph2518.preheader.new

.lr.ph2518.preheader.new:                         ; preds = %.lr.ph2518.preheader
  %unroll_iter3055.a = and i32 %i.ama, 2147483646
  br label %.lr.ph2518

._crit_edge2519.loopexit.unr-lcssa:               ; preds = %.lr.ph2518
  %7 = and i32 %i.alz, 2
  %lcmp.mod3052.not = icmp eq i32 %7, 0
  br i1 %lcmp.mod3052.not, label %._crit_edge2519, label %.lr.ph2518.epil.preheader

.lr.ph2518.epil.preheader:                        ; preds = %._crit_edge2519.loopexit.unr-lcssa, %.lr.ph2518.preheader
  %.322516.epil.init = phi ptr [ %i.alx, %.lr.ph2518.preheader ], [ %i.amy, %._crit_edge2519.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3054.a = trunc i32 %i.ama to i1
  tail call void @llvm.assume(i1 %lcmp.mod3054.a)
  %i.amb = load i64, ptr %i.f, align 8, !tbaa !16
  %i.amc = and i64 %i.amb, 4294967295
  %i.amd = mul nuw nsw i64 %i.amc, 100            ; 2 uses
  store i64 %i.amd, ptr %i.f, align 8, !tbaa !16
  %sh.diff2405.epil = lshr i64 %i.amd, 31
  %i.ame = and i64 %sh.diff2405.epil, 254
  %i.amf = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ame
  %i.amg = load i16, ptr %i.amf, align 2
  store i16 %i.amg, ptr %.322516.epil.init, align 1
  %i.amh = getelementptr inbounds nuw i8, ptr %.322516.epil.init, i64 2
  br label %._crit_edge2519

._crit_edge2519:                                  ; preds = %.lr.ph2518.epil.preheader, %._crit_edge2519.loopexit.unr-lcssa, %bb.fh
  %.32.lcssa = phi ptr [ %i.alx, %bb.fh ], [ %i.amy, %._crit_edge2519.loopexit.unr-lcssa ], [ %i.amh, %.lr.ph2518.epil.preheader ] ; 3 uses
  %i.ami = load i32, ptr %i.c, align 4, !tbaa !35 ; 2 uses
  %.not1109 = icmp eq i32 %i.ami, 0
  %i.amj = load i64, ptr %i.f, align 8, !tbaa !16
  %i.amk = and i64 %i.amj, 4294967295             ; 2 uses
  br i1 %.not1109, label %bb.fm, label %bb.fi

.lr.ph2518:                                       ; preds = %.lr.ph2518, %.lr.ph2518.preheader.new
  %.322516 = phi ptr [ %i.alx, %.lr.ph2518.preheader.new ], [ %i.amy, %.lr.ph2518 ] ; 3 uses
  %niter3056.a = phi i32 [ 0, %.lr.ph2518.preheader.new ], [ %niter3056.next.1.a, %.lr.ph2518 ]
  %i.aml = load i64, ptr %i.f, align 8, !tbaa !16
  %i.amm = and i64 %i.aml, 4294967295
  %i.amn = mul nuw nsw i64 %i.amm, 100            ; 2 uses
  store i64 %i.amn, ptr %i.f, align 8, !tbaa !16
  %sh.diff2405 = lshr i64 %i.amn, 31
  %i.amo = and i64 %sh.diff2405, 254
  %i.amp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.amo
  %i.amq = load i16, ptr %i.amp, align 2
  store i16 %i.amq, ptr %.322516, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.322516, i64 2
  %i.ams = load i64, ptr %i.f, align 8, !tbaa !16
  %i.amt = and i64 %i.ams, 4294967295
  %i.amu = mul nuw nsw i64 %i.amt, 100            ; 2 uses
  store i64 %i.amu, ptr %i.f, align 8, !tbaa !16
  %sh.diff2405.1 = lshr i64 %i.amu, 31
  %i.amv = and i64 %sh.diff2405.1, 254
  %i.amw = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.amv
  %i.amx = load i16, ptr %i.amw, align 2
  store i16 %i.amx, ptr %i.amr, align 1
  %i.amy = getelementptr inbounds nuw i8, ptr %.322516, i64 4 ; 3 uses
  %niter3056.next.1.a = add i32 %niter3056.a, 2   ; 2 uses
  %niter3056.ncmp.1 = icmp eq i32 %niter3056.next.1.a, %unroll_iter3055.a
  br i1 %niter3056.ncmp.1, label %._crit_edge2519.loopexit.unr-lcssa, label %.lr.ph2518, !llvm.loop !51

bb.fi:                                            ; preds = %._crit_edge2519
  %i.amz = mul nuw nsw i64 %i.amk, 100            ; 2 uses
  %i.ana = lshr i64 %i.amz, 32
  %.pre2640.a = load i64, ptr %i.a, align 8, !tbaa !16
  %.pre2641 = load i32, ptr %i.d, align 4, !tbaa !35
  %.pre2642 = load i32, ptr %i.b, align 4, !tbaa !35
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fd, %bb.fb, %bb.fi
  %i.anb = phi i32 [ %i.qm, %bb.fb ], [ %.pre2642, %bb.fi ], [ %i.qm, %bb.fd ] ; 3 uses
  %i.anc = phi i32 [ %i.qr, %bb.fb ], [ %.pre2641, %bb.fi ], [ %i.qr, %bb.fd ]
  %i.and = phi i64 [ %i.qo, %bb.fb ], [ %.pre2640.a, %bb.fi ], [ %i.qo, %bb.fd ]
  %i.ane = phi i32 [ %i.ald, %bb.fb ], [ %i.ami, %bb.fi ], [ %i.ald, %bb.fd ]
  %i.anf = phi i64 [ %i.alh, %bb.fb ], [ %i.amz, %bb.fi ], [ %i.alo, %bb.fd ]
  %.101007 = phi i32 [ 1, %bb.fb ], [ 0, %bb.fi ], [ %.910062063, %bb.fd ] ; 2 uses
  %.13945.in = phi i64 [ %i.ali, %bb.fb ], [ %i.ana, %bb.fi ], [ %i.alp, %bb.fd ]
  %.33 = phi ptr [ %.222065, %bb.fb ], [ %.32.lcssa, %bb.fi ], [ %.222065, %bb.fd ] ; 2 uses
  %.13945 = trunc nuw nsw i64 %.13945.in to i32   ; 3 uses
  %i.ang = trunc i64 %i.anf to i32                ; 2 uses
  %i.anh = icmp slt i32 %i.anb, -8
  %i.ani = add nsw i32 %i.anb, %i.anc
  %i.anj = icmp slt i32 %i.ani, 1
  %or.cond.i.i1393 = select i1 %i.anh, i1 true, i1 %i.anj
  br i1 %or.cond.i.i1393, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ank = icmp sgt i32 %i.anb, 13
  br i1 %i.ank, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.anl = mul i64 %i.and, -4078282918271054303
  %i.anm = icmp ugt i64 %i.anl, 47223664828696
  %i.ann = zext i1 %i.anm to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395: ; preds = %bb.fj, %bb.fk, %bb.fl
  %.0.i.i1394 = phi i32 [ %i.ann, %bb.fl ], [ 1, %bb.fj ], [ 0, %bb.fk ]
  %i.ano = sext i32 %i.ane to i64
  %i.anp = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.ano
  %i.anq = getelementptr i8, ptr %i.anp, i64 -4
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !35
  %.not.i1187 = icmp ugt i32 %i.anr, %i.ang
  br i1 %.not.i1187, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189, label %.thread2111.thread2369

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395
  %i.ans = lshr i32 %i.ang, 31
  %i.ant = or i32 %.0.i.i1394, %.13945
  %i.anu = and i32 %i.ant, %i.ans
  %.fr2403 = freeze i32 %i.anu
  %.not2404 = icmp eq i32 %.fr2403, 0
  br i1 %.not2404, label %.thread2111, label %.thread2111.thread2369

.thread2111.thread2369:                           ; preds = %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189, %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.loopexit2434.thread.thread2828.sink.split

bb.fm:                                            ; preds = %._crit_edge2519
  %i.anv = mul nuw nsw i64 %i.amk, 200            ; 2 uses
  %i.anw = and i64 %i.anv, 4294967296
  %i.anx = icmp ne i64 %i.anw, 0
  %sum.shift = lshr i64 %i.anv, 33
  %i.any = trunc nuw nsw i64 %sum.shift to i32    ; 3 uses
  %i.anz = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aoa = load i32, ptr %i.d, align 4, !tbaa !35
  %i.aob = load i32, ptr %i.b, align 4, !tbaa !35 ; 3 uses
  %i.aoc = icmp slt i32 %i.aob, -8
  %i.aod = add nsw i32 %i.aob, %i.aoa
  %i.aoe = icmp slt i32 %i.aod, 1
  %or.cond.i.i1396 = select i1 %i.aoc, i1 true, i1 %i.aoe
  br i1 %or.cond.i.i1396, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aof = icmp sgt i32 %i.aob, 13
  br i1 %i.aof, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aog = mul i64 %i.anz, -8194354213138031507
  %i.aoh = icmp ugt i64 %i.aog, 9444732965739
  %i.aoi = zext i1 %i.aoh to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.fm, %bb.fn, %bb.fo
  %.0.i.i1397 = phi i32 [ %i.aoi, %bb.fo ], [ 1, %bb.fm ], [ 0, %bb.fn ]
  %i.aoj = and i32 %i.any, 1
  %i.aok = or i32 %.0.i.i1397, %i.aoj
  %i.aol = icmp ne i32 %i.aok, 0
  %.0.i1279 = select i1 %i.anx, i1 %i.aol, i1 false
  br i1 %.0.i1279, label %.thread2111.thread2364, label %.thread2111.thread2356

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit1267: ; preds = %bb.ez
  %i.aom = and i128 %i.us, 18446744073709551615
  %i.aon = mul nuw nsw i128 %i.aom, 20000000000000 ; 2 uses
  %i.aoo = lshr i128 %i.aon, 64
  %i.aop = trunc nuw nsw i128 %i.aoo to i64
  %i.aoq = trunc i128 %i.aon to i64
  store i64 %i.aoq, ptr %i.uo, align 16, !tbaa !16
  %i.aor = zext i64 %i.ve to i128
  %i.aos = mul nuw nsw i128 %i.aor, 20000000000000 ; 2 uses
  %i.aot = lshr i128 %i.aos, 64
  %i.aou = trunc nuw nsw i128 %i.aot to i64
  %i.aov = trunc i128 %i.aos to i64
  %i.aow = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aov, i64 %i.aop) ; 2 uses
  %i.aox = extractvalue { i64, i1 } %i.aow, 1
  %i.aoy = extractvalue { i64, i1 } %i.aow, 0
  %i.aoz = zext i1 %i.aox to i64
  %i.apa = add nuw nsw i64 %i.aoz, %i.aou
  store i64 %i.aoy, ptr %i.uv, align 8, !tbaa !16
  %i.apb = zext i64 %i.vh to i128
  %i.apc = mul nuw nsw i128 %i.apb, 20000000000000 ; 2 uses
  %i.apd = lshr i128 %i.apc, 64
  %i.ape = trunc nuw nsw i128 %i.apd to i64
  %i.apf = trunc i128 %i.apc to i64
  %i.apg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.apf, i64 %i.apa) ; 2 uses
  %i.aph = extractvalue { i64, i1 } %i.apg, 1
  %i.api = extractvalue { i64, i1 } %i.apg, 0
  %i.apj = zext i1 %i.aph to i64
  %i.apk = add nuw nsw i64 %i.apj, %i.ape         ; 2 uses
  store i64 %i.api, ptr %i.e, align 16, !tbaa !16
  %i.apl = trunc i64 %i.apk to i1                 ; 2 uses
  %i.apm = lshr i64 %i.apk, 1                     ; 2 uses
  %i.apn = zext nneg i64 %i.apm to i128
  %i.apo = mul nuw nsw i128 %i.apn, 1844674407371
  %i.app = lshr i128 %i.apo, 64                   ; 3 uses
  %i.apq = trunc nuw nsw i128 %i.app to i64       ; 5 uses
  %i.apr = trunc nuw nsw i128 %i.app to i32       ; 2 uses
  %i.aps = trunc i64 %i.apm to i32
  %.neg1102 = mul i32 %i.apr, -10000000
  %i.apt = add i32 %.neg1102, %i.aps              ; 10 uses
  %i.apu = icmp samesign ugt i32 %i.qn, 16
  br i1 %i.apu, label %bb.fp, label %bb.gt

bb.fp:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit1267
  %i.apv = add nsw i32 %i.qn, -16                 ; 8 uses
  %i.apw = icmp samesign ugt i32 %.910062063, %i.apv
  br i1 %i.apw, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %bb.fp
  %i.apx = sub nuw nsw i32 %.910062063, %i.apv    ; 5 uses
  %i.apy = icmp eq i32 %i.apv, 6
  br i1 %i.apy, label %.thread2798, label %bb.fr

.thread2798:                                      ; preds = %bb.fq
  %i.apz = mul nuw nsw i64 %i.apq, 429497
  %i.aqa = add nuw nsw i64 %i.apz, 1              ; 2 uses
  %sh.diff2394 = lshr i64 %i.aqa, 31
  %i.aqb = and i64 %sh.diff2394, 4294967294
  %i.aqc = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.aqb
  %i.aqd = load i16, ptr %i.aqc, align 2
  store i16 %i.aqd, ptr %.222065, align 1
  %i.aqe = getelementptr inbounds nuw i8, ptr %.222065, i64 2
  br label %.lr.ph2499.preheader

end_hunk_1
begin_hunk_2_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a
  %.43215921742198 = phi ptr [ %.43215921742199, %bb.hh ], [ %.222065, %bb.hj ] ; 3 uses
  %.1883215721752196 = phi i32 [ 7, %bb.hh ], [ %i.auz, %bb.hj ]
  %.161013215421782193 = phi i32 [ %.161013215421782194, %bb.hh ], [ %.910062063, %bb.hj ] ; 3 uses
  %.1861 = phi i64 [ %i.azo, %bb.hh ], [ %i.bab, %bb.hj ] ; 3 uses
  %i.bac = lshr i64 %.1861, 32                    ; 2 uses
  %i.bad = sub nsw i32 %.1883215721752196, %.161013215421782193 ; 2 uses
  %i.bae = icmp eq i32 %.161013215421782193, 2
  br i1 %i.bae, label %bb.hp, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.baf = shl nuw nsw i64 %i.bac, 1
  %i.bag = and i64 %i.baf, 4294967294
  %i.bah = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bag
  %i.bai = load i16, ptr %i.bah, align 2
  store i16 %i.bai, ptr %.43215921742198, align 1
  %i.baj = getelementptr inbounds nuw i8, ptr %.43215921742198, i64 2
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hc
  %.16101321542179 = phi i32 [ %.161013215421802185, %bb.hc ], [ %.161013215421782193, %bb.hl ]
  %.3885 = phi i32 [ %i.ayo, %bb.hc ], [ %i.bad, %bb.hl ]
  %.2862 = phi i64 [ %.0860, %bb.hc ], [ %.1861, %bb.hl ] ; 2 uses
  %.46 = phi ptr [ %i.ays, %bb.hc ], [ %i.baj, %bb.hl ] ; 3 uses
  %i.bak = icmp sgt i32 %.16101321542179, 4
  br i1 %i.bak, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.bal = and i64 %.2862, 4294967295
  %i.bam = mul nuw nsw i64 %i.bal, 100            ; 2 uses
  %sh.diff2395 = lshr i64 %i.bam, 31
  %i.ban = and i64 %sh.diff2395, 254
  %i.bao = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.ban
  %i.bap = load i16, ptr %i.bao, align 2
  store i16 %i.bap, ptr %.46, align 1
  %i.baq = getelementptr inbounds nuw i8, ptr %.46, i64 2
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.3863 = phi i64 [ %i.bam, %bb.hn ], [ %.2862, %bb.hm ]
  %.47 = phi ptr [ %i.baq, %bb.hn ], [ %.46, %bb.hm ]
  %i.bar = and i64 %.3863, 4294967295
  %i.bas = mul nuw nsw i64 %i.bar, 100            ; 2 uses
  %i.bat = lshr i64 %i.bas, 32
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hk, %bb.hb, %bb.ho
  %.171014 = phi i32 [ 1, %bb.hb ], [ 0, %bb.ho ], [ 2, %bb.hk ] ; 3 uses
  %.20952.in = phi i64 [ %i.ayn, %bb.hb ], [ %i.bat, %bb.ho ], [ %i.bac, %bb.hk ]
  %.4886 = phi i32 [ %i.ayo, %bb.hb ], [ %.3885, %bb.ho ], [ %i.bad, %bb.hk ] ; 2 uses
  %.4864 = phi i64 [ %.0860, %bb.hb ], [ %i.bas, %bb.ho ], [ %.1861, %bb.hk ]
  %.48 = phi ptr [ %.43215921732187, %bb.hb ], [ %.47, %bb.ho ], [ %.43215921742198, %bb.hk ] ; 3 uses
  %.20952 = trunc nuw nsw i64 %.20952.in to i32   ; 4 uses
  %i.bau = icmp eq i32 %.4886, 0
  %.pre2630.a = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %.pre2631.a = load i32, ptr %i.d, align 4, !tbaa !35 ; 2 uses
  %.pre2632.a = load i32, ptr %i.b, align 4, !tbaa !35 ; 4 uses
  br i1 %i.bau, label %bb.hq, label %bb.ht

bb.hq:                                            ; preds = %bb.hp
  %i.bav = icmp slt i32 %.pre2632.a, -8
  %i.baw = add nsw i32 %.pre2632.a, %.pre2631.a
  %i.bax = icmp slt i32 %i.baw, 9
  %or.cond.i.i1474 = select i1 %i.bav, i1 true, i1 %i.bax
  br i1 %or.cond.i.i1474, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bay = icmp sgt i32 %.pre2632.a, 13
  br i1 %i.bay, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.baz = mul i64 %.pre2630.a, -4083592946278653939
  %i.bba = icmp ugt i64 %i.baz, 24178516
  %i.bbb = zext i1 %i.bba to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.hq, %bb.hr, %bb.hs
  %.0.i.i1475 = phi i32 [ %i.bbb, %bb.hs ], [ 1, %bb.hq ], [ 0, %bb.hr ]
  %i.bbc = and i32 %.20952, 1
  %i.bbd = or i32 %.0.i.i1475, %i.bbc
  %i.bbe = icmp ne i32 %i.bbd, 0
  %.0.i1278 = select i1 %i.apl, i1 %i.bbe, i1 false
  br i1 %.0.i1278, label %.loopexit2434.thread.thread2828.sink.split, label %.loopexit2434.thread.sink.split

bb.ht:                                            ; preds = %bb.hp, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473
  %i.bbf = phi i32 [ %.pre2632.a, %bb.hp ], [ %i.qm, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ] ; 3 uses
  %i.bbg = phi i32 [ %.pre2631.a, %bb.hp ], [ %i.qr, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ]
  %i.bbh = phi i64 [ %.pre2630.a, %bb.hp ], [ %i.qo, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ]
  %.181015 = phi i32 [ %.171014, %bb.hp ], [ 0, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ] ; 3 uses
  %.21953 = phi i32 [ %.20952, %bb.hp ], [ %.69382064, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ] ; 4 uses
  %.5887 = phi i32 [ %.4886, %bb.hp ], [ %i.auz, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ]
  %.5865 = phi i64 [ %.4864, %bb.hp ], [ %.0.lcssa.i1465, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ]
  %.49 = phi ptr [ %.48, %bb.hp ], [ %.222065, %_ZN5boost8charconv6detail13compute_powerImiEET_S3_T0_.exit1473 ] ; 3 uses
  %i.bbi = trunc i64 %.5865 to i32                ; 2 uses
  %i.bbj = icmp slt i32 %i.bbf, -8
  %i.bbk = add nsw i32 %i.bbf, %i.bbg
  %i.bbl = icmp slt i32 %i.bbk, 10
  %or.cond.i.i1476 = select i1 %i.bbj, i1 true, i1 %i.bbl
  br i1 %or.cond.i.i1476, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1478, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bbm = icmp sgt i32 %i.bbf, 13
  br i1 %i.bbm, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1478, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.bbn = mul i64 %i.bbh, -4083592946278653939
  %i.bbo = icmp ugt i64 %i.bbn, 24178516
  %i.bbp = zext i1 %i.bbo to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1478

_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1478: ; preds = %bb.ht, %bb.hu, %bb.hv
  %.0.i.i1477 = phi i32 [ %i.bbp, %bb.hv ], [ 1, %bb.ht ], [ 0, %bb.hu ]
  %i.bbq = sext i32 %.5887 to i64
  %i.bbr = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.bbq
  %i.bbs = getelementptr i8, ptr %i.bbr, i64 -4
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !35
  %.not.i1181 = icmp ugt i32 %i.bbt, %i.bbi
  br i1 %.not.i1181, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1183, label %.loopexit2434.thread.thread2828.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1183: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj9ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1478
  %i.bbu = lshr i32 %i.bbi, 31
  %i.bbv = or i32 %.0.i.i1477, %.21953
  %i.bbw = and i32 %i.bbv, %i.bbu
  %.not2396 = icmp eq i32 %i.bbw, 0
  br i1 %.not2396, label %.loopexit2434.thread.sink.split, label %.loopexit2434.thread.thread2828.sink.split

bb.hw:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1247
  %i.bbx = mul nuw nsw i64 %i.axt, 720575941
  %i.bby = lshr i64 %i.bbx, 24
  %i.bbz = add nuw nsw i64 %i.bby, 1              ; 3 uses
  %i.bca = lshr i64 %i.bbz, 32                    ; 2 uses
  %i.bcb = trunc nuw nsw i64 %i.bca to i32        ; 4 uses
  %i.bcc = icmp eq i32 %i.awq, 1
  br i1 %i.bcc, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  %i.bcd = trunc i64 %i.bbz to i32                ; 2 uses
  %i.bce = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bcf = load i32, ptr %i.d, align 4, !tbaa !35
  %i.bcg = load i32, ptr %i.b, align 4, !tbaa !35 ; 3 uses
  %i.bch = icmp slt i32 %i.bcg, -8
  %i.bci = add nsw i32 %i.bcg, %i.bcf
  %i.bcj = icmp slt i32 %i.bci, 1
  %or.cond.i.i1479 = select i1 %i.bch, i1 true, i1 %i.bcj
  br i1 %or.cond.i.i1479, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1481, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bck = icmp sgt i32 %i.bcg, 13
  br i1 %i.bck, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1481, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bcl = mul i64 %i.bce, -4078282918271054303
  %i.bcm = icmp ugt i64 %i.bcl, 47223664828696
  %i.bcn = zext i1 %i.bcm to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1481

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1481: ; preds = %bb.hx, %bb.hy, %bb.hz
  %.0.i.i1480 = phi i32 [ %i.bcn, %bb.hz ], [ 1, %bb.hx ], [ 0, %bb.hy ]
  %.not.i1178 = icmp ult i32 %i.bcd, -2147483605
  br i1 %.not.i1178, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1180, label %.thread1981.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1180: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1481
  %i.bco = lshr i32 %i.bcd, 31
  %i.bcp = or i32 %.0.i.i1480, %i.bcb
  %i.bcq = and i32 %i.bcp, %i.bco
  %.fr2397 = freeze i32 %i.bcq
  %.not2398 = icmp eq i32 %.fr2397, 0
  br i1 %.not2398, label %.thread2077.sink.split, label %.thread1981.sink.split

bb.ia:                                            ; preds = %bb.hw
  %i.bcr = trunc nuw nsw i64 %i.bca to i8
  %i.bcs = add nuw nsw i8 %i.bcr, 48
  store i8 %i.bcs, ptr %.45.lcssa, align 1, !tbaa !25
  br label %bb.id

bb.ib:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1247
  %i.bct = mul nuw nsw i64 %i.axt, 450359963
  %i.bcu = lshr i64 %i.bct, 20
  %i.bcv = add nuw nsw i64 %i.bcu, 1              ; 3 uses
  %i.bcw = lshr i64 %i.bcv, 32                    ; 2 uses
  %i.bcx = icmp eq i32 %i.awq, 2
  br i1 %i.bcx, label %._crit_edge2633, label %bb.ic

._crit_edge2633:                                  ; preds = %bb.ib
  %i.bcy = trunc nuw nsw i64 %i.bcw to i32
  %.pre2634 = load i64, ptr %i.a, align 8, !tbaa !16
  %.pre2636 = load i32, ptr %i.d, align 4, !tbaa !35
  %.pre2638 = load i32, ptr %i.b, align 4, !tbaa !35
  br label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.bcz = shl nuw nsw i64 %i.bcw, 1
  %i.bda = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bcz
  %i.bdb = load i16, ptr %i.bda, align 2
  store i16 %i.bdb, ptr %.45.lcssa, align 1
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ia
  %.sink2907 = phi i64 [ 2, %bb.ic ], [ 1, %bb.ia ]
  %.0857 = phi i64 [ %i.bcv, %bb.ic ], [ %i.bbz, %bb.ia ] ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.45.lcssa, i64 %.sink2907 ; 3 uses
  %i.bdd = icmp sgt i32 %i.awq, 4
  br i1 %i.bdd, label %.lr.ph2511.preheader, label %._crit_edge2512

.lr.ph2511.preheader:                             ; preds = %bb.id
  %8 = add nsw i32 %i.awq, -3                     ; 2 uses
  %9 = lshr i32 %8, 1                             ; 3 uses
  %i.bde = icmp eq i32 %9, 1
  br i1 %i.bde, label %.lr.ph2511.epil.preheader, label %.lr.ph2511.preheader.new

.lr.ph2511.preheader.new:                         ; preds = %.lr.ph2511.preheader
  %unroll_iter3049 = and i32 %9, 2147483646
  br label %.lr.ph2511

._crit_edge2512.loopexit.unr-lcssa:               ; preds = %.lr.ph2511
  %i.bdf = and i32 %8, 2
  %lcmp.mod3045.not = icmp eq i32 %i.bdf, 0
  br i1 %lcmp.mod3045.not, label %._crit_edge2512, label %.lr.ph2511.epil.preheader

.lr.ph2511.epil.preheader:                        ; preds = %._crit_edge2512.loopexit.unr-lcssa, %.lr.ph2511.preheader
  %.532509.epil.init = phi ptr [ %i.bdc, %.lr.ph2511.preheader ], [ %i.bec, %._crit_edge2512.loopexit.unr-lcssa ] ; 2 uses
  %.18582507.epil.init = phi i64 [ %.0857, %.lr.ph2511.preheader ], [ %i.bdy, %._crit_edge2512.loopexit.unr-lcssa ]
  %lcmp.mod3048 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3048)
  %i.bdg = and i64 %.18582507.epil.init, 4294967295
  %i.bdh = mul nuw nsw i64 %i.bdg, 100            ; 2 uses
  %sh.diff2399.epil = lshr i64 %i.bdh, 31
  %i.bdi = and i64 %sh.diff2399.epil, 254
  %i.bdj = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bdi
  %i.bdk = load i16, ptr %i.bdj, align 2
  store i16 %i.bdk, ptr %.532509.epil.init, align 1
  %i.bdl = getelementptr inbounds nuw i8, ptr %.532509.epil.init, i64 2
  br label %._crit_edge2512

._crit_edge2512:                                  ; preds = %.lr.ph2511.epil.preheader, %._crit_edge2512.loopexit.unr-lcssa, %bb.id
  %.1858.lcssa = phi i64 [ %.0857, %bb.id ], [ %i.bdy, %._crit_edge2512.loopexit.unr-lcssa ], [ %i.bdh, %.lr.ph2511.epil.preheader ]
  %.53.lcssa = phi ptr [ %i.bdc, %bb.id ], [ %i.bec, %._crit_edge2512.loopexit.unr-lcssa ], [ %i.bdl, %.lr.ph2511.epil.preheader ] ; 3 uses
  %i.bdm = and i64 %.1858.lcssa, 4294967295
  %i.bdn = mul nuw nsw i64 %i.bdm, 100            ; 2 uses
  %i.bdo = lshr i64 %i.bdn, 32
  %i.bdp = trunc nuw nsw i64 %i.bdo to i32        ; 4 uses
  %i.bdq = icmp slt i32 %i.awq, 9
  %.pre2635 = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %.pre2637 = load i32, ptr %i.d, align 4, !tbaa !35 ; 2 uses
  %.pre2639 = load i32, ptr %i.b, align 4, !tbaa !35 ; 4 uses
  br i1 %i.bdq, label %bb.ie, label %bb.ih

.lr.ph2511:                                       ; preds = %.lr.ph2511, %.lr.ph2511.preheader.new
  %.532509 = phi ptr [ %i.bdc, %.lr.ph2511.preheader.new ], [ %i.bec, %.lr.ph2511 ] ; 3 uses
  %.18582507 = phi i64 [ %.0857, %.lr.ph2511.preheader.new ], [ %i.bdy, %.lr.ph2511 ]
  %niter3050 = phi i32 [ 0, %.lr.ph2511.preheader.new ], [ %niter3050.next.1, %.lr.ph2511 ]
  %i.bdr = and i64 %.18582507, 4294967295
  %i.bds = mul nuw nsw i64 %i.bdr, 100            ; 2 uses
  %sh.diff2399 = lshr i64 %i.bds, 31
  %i.bdt = and i64 %sh.diff2399, 254
  %i.bdu = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bdt
  %i.bdv = load i16, ptr %i.bdu, align 2
  store i16 %i.bdv, ptr %.532509, align 1
  %i.bdw = getelementptr inbounds nuw i8, ptr %.532509, i64 2
  %i.bdx = and i64 %i.bds, 4294967292
  %i.bdy = mul nuw nsw i64 %i.bdx, 100            ; 4 uses
  %sh.diff2399.1 = lshr i64 %i.bdy, 31
  %i.bdz = and i64 %sh.diff2399.1, 254
  %i.bea = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bdz
  %i.beb = load i16, ptr %i.bea, align 2
  store i16 %i.beb, ptr %i.bdw, align 1
  %i.bec = getelementptr inbounds nuw i8, ptr %.532509, i64 4 ; 3 uses
  %niter3050.next.1 = add i32 %niter3050, 2       ; 2 uses
  %niter3050.ncmp.1 = icmp eq i32 %niter3050.next.1, %unroll_iter3049
  br i1 %niter3050.ncmp.1, label %._crit_edge2512.loopexit.unr-lcssa, label %.lr.ph2511, !llvm.loop !54

bb.ie:                                            ; preds = %._crit_edge2633, %._crit_edge2512
  %i.bed = phi i32 [ %.pre2639, %._crit_edge2512 ], [ %.pre2638, %._crit_edge2633 ] ; 3 uses
  %i.bee = phi i32 [ %.pre2637, %._crit_edge2512 ], [ %.pre2636, %._crit_edge2633 ]
  %i.bef = phi i64 [ %.pre2635, %._crit_edge2512 ], [ %.pre2634, %._crit_edge2633 ]
  %.24956 = phi i32 [ %i.bdp, %._crit_edge2512 ], [ %i.bcy, %._crit_edge2633 ] ; 4 uses
  %.2859 = phi i64 [ %i.bdn, %._crit_edge2512 ], [ %i.bcv, %._crit_edge2633 ]
  %.54 = phi ptr [ %.53.lcssa, %._crit_edge2512 ], [ %.45.lcssa, %._crit_edge2633 ] ; 3 uses
  %i.beg = trunc i64 %.2859 to i32                ; 2 uses
  %i.beh = sub nsw i32 9, %i.awq
  %i.bei = icmp slt i32 %i.bed, -8
  %i.bej = add nsw i32 %i.bed, %i.bee
  %i.bek = icmp slt i32 %i.bej, 1
  %or.cond.i.i1482 = select i1 %i.bei, i1 true, i1 %i.bek
  br i1 %or.cond.i.i1482, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1484, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bel = icmp sgt i32 %i.bed, 13
  br i1 %i.bel, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1484, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bem = mul i64 %i.bef, -4078282918271054303
  %i.ben = icmp ugt i64 %i.bem, 47223664828696
  %i.beo = zext i1 %i.ben to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1484

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1484: ; preds = %bb.ie, %bb.if, %bb.ig
  %.0.i.i1483 = phi i32 [ %i.beo, %bb.ig ], [ 1, %bb.ie ], [ 0, %bb.if ]
  %i.bep = zext nneg i32 %i.beh to i64
  %i.beq = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.bep
  %i.ber = getelementptr i8, ptr %i.beq, i64 -4
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !35
  %.not.i1175 = icmp ugt i32 %i.bes, %i.beg
  br i1 %.not.i1175, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1177, label %.thread2010.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1177: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1484
  %i.bet = lshr i32 %i.beg, 31
  %i.beu = or i32 %.0.i.i1483, %.24956
  %i.bev = and i32 %i.beu, %i.bet
  %.not2400 = icmp eq i32 %i.bev, 0
  br i1 %.not2400, label %.thread2095.sink.split, label %.thread2010.sink.split

bb.ih:                                            ; preds = %._crit_edge2512
  %i.bew = icmp slt i32 %.pre2639, -8
  %i.bex = add nsw i32 %.pre2639, %.pre2637
  %i.bey = icmp slt i32 %i.bex, 0
  %or.cond.i.i1485 = select i1 %i.bew, i1 true, i1 %i.bey
  br i1 %or.cond.i.i1485, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1487, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bez = icmp sgt i32 %.pre2639, 13
  br i1 %i.bez, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1487, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bfa = mul i64 %.pre2635, -4078282918271054303
  %i.bfb = icmp ugt i64 %i.bfa, 47223664828696
  %i.bfc = zext i1 %i.bfb to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1487

_ZN5boost8charconv6detail18has_further_digitsILj0ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1487: ; preds = %bb.ih, %bb.ii, %bb.ij
  %.0.i.i1486 = phi i32 [ %i.bfc, %bb.ij ], [ 1, %bb.ih ], [ 0, %bb.ii ]
  %i.bfd = and i32 %i.bdp, 1
  %i.bfe = or i32 %.0.i.i1486, %i.bfd
  %i.bff = icmp ne i32 %i.bfe, 0
  %.0.i1277 = select i1 %i.axq, i1 %i.bff, i1 false
  br i1 %.0.i1277, label %.thread2010.sink.split, label %.thread2095.sink.split

.loopexit:                                        ; preds = %.lr.ph2538, %bb.ea, %._crit_edge2531, %bb.eb, %bb.du, %bb.dv, %._crit_edge2526
  %.58 = phi ptr [ %i.afl, %._crit_edge2526 ], [ %i.xl, %bb.dv ], [ %.26.lcssa, %._crit_edge2531 ], [ %i.xe, %bb.du ], [ %i.acc, %bb.eb ], [ %i.zu, %bb.ea ], [ %i.aab, %.lr.ph2538 ]
  %i.bfg = udiv i32 %i.qj, 22
  %i.bfh = zext nneg i32 %i.bfg to i64
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ju, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ju ], [ %i.bfh, %.loopexit ] ; 2 uses
  %.221019 = phi i32 [ %i.bte, %bb.ju ], [ %i.vj, %.loopexit ] ; 24 uses
  %.59 = phi ptr [ %i.btd, %bb.ju ], [ %.58, %.loopexit ] ; 25 uses
  %i.bfi = load i64, ptr %i.a, align 8, !tbaa !16 ; 8 uses
  %i.bfj = load i32, ptr %i.d, align 4, !tbaa !35 ; 6 uses
  %i.bfk = load i32, ptr %i.b, align 4, !tbaa !35 ; 9 uses
  %i.bfl = icmp slt i32 %i.bfk, -8
  %i.bfm = add nsw i32 %i.bfk, %i.bfj
  %i.bfn = icmp slt i32 %i.bfm, 1
  %or.cond.i.i1488 = select i1 %i.bfl, i1 true, i1 %i.bfn
  br i1 %or.cond.i.i1488, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1490.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.bfo = icmp slt i32 %i.bfk, 14
  %i.bfp = mul i64 %i.bfi, -4078282918271054303
  %i.bfq = icmp ugt i64 %i.bfp, 47223664828696
  %or.cond2375 = select i1 %i.bfo, i1 %i.bfq, i1 false
  br i1 %or.cond2375, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1490.thread, label %.thread2261

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1490.thread: ; preds = %bb.il, %bb.ik
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bfr = add nsw i32 %i.bfk, 22                 ; 7 uses
  store i32 %i.bfr, ptr %i.b, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE27multiplier_index_info_tableE, i64 %indvars.iv.next ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bfs, align 4, !tbaa !43
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bfs, i64 2
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !43
  %i.bft = zext i16 %.sroa.4.0.copyload.i to i32
  %i.bfu = add nsw i32 %.0868, %i.bft             ; 2 uses
  %i.bfv = add nsw i32 %i.bfu, -977               ; 5 uses
  %i.bfw = add nsw i32 %i.bfu, -785               ; 2 uses
  %i.bfx = zext i16 %.sroa.0.0.copyload.i to i32  ; 4 uses
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE27multiplier_index_info_tableE, i64 %indvars.iv
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 8
  %i.bga = load i16, ptr %i.bfz, align 4, !tbaa !45
  %i.bgb = zext i16 %i.bga to i32                 ; 2 uses
  %i.bgc = icmp slt i32 %i.bfv, %i.bfx
  br i1 %i.bgc, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1490.thread
  %i.bgd = sub nsw i32 %i.bfx, %i.bfv             ; 3 uses
  %i.bge = lshr i32 %i.bgd, 6                     ; 3 uses
  %i.bgf = and i32 %i.bgd, 63                     ; 2 uses
  %i.bgg = and i32 %i.bgd, -64
  %i.bgh = add nsw i32 %i.bgg, %i.bfv             ; 3 uses
  %i.bgi = lshr i32 %i.bfx, 6                     ; 3 uses
  %i.bgj = and i32 %i.bfx, 65472                  ; 3 uses
  %i.bgk = icmp slt i32 %i.bgh, %i.bgj
  br i1 %i.bgk, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.bgl = zext nneg i32 %i.bge to i64
  %i.bgm = sub nsw i32 %i.bgj, %i.bgh             ; 2 uses
  %i.bgn = zext nneg i32 %i.bgi to i64
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail24extended_cache_long_implILb1EE5cacheE, i64 %i.bgn
  %i.bgp = load i64, ptr %i.bgo, align 8, !tbaa !16
  %i.bgq = zext nneg i32 %i.bgm to i64
  %i.bgr = lshr i64 %i.bgp, %i.bgq
  %i.bgs = zext nneg i32 %i.bgf to i64
  %i.bgt = lshr i64 -1, %i.bgs
  %i.bgu = and i64 %i.bgr, %i.bgt
  %i.bgv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bgl
  store i64 %i.bgu, ptr %i.bgv, align 8, !tbaa !16
  %i.bgw = add nuw nsw i32 %i.bge, 1
  %i.bgx = sub nsw i32 64, %i.bgm
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  %i.bgy = sub nsw i32 %i.bgh, %i.bgj
  %i.bgz = zext nneg i32 %i.bgf to i64
  br label %bb.iq

bb.ip:                                            ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1490.thread
  %i.bha = lshr i32 %i.bfv, 6
  %i.bhb = and i32 %i.bfv, 63
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io, %bb.in
end_hunk_2
begin_hunk_3_@_ZN5boost8charconv6detail5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcS7_NS0_12chars_formatE:bb.a
  %i.bqw = load i32, ptr %i.d, align 4, !tbaa !35
  %i.bqx = load i32, ptr %i.b, align 4, !tbaa !35 ; 3 uses
  %i.bqy = icmp slt i32 %i.bqx, -8
  %i.bqz = add nsw i32 %i.bqx, %i.bqw
  %i.bra = icmp slt i32 %i.bqz, 1
  %or.cond.i.i1526 = select i1 %i.bqy, i1 true, i1 %i.bra
  br i1 %or.cond.i.i1526, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.brb = icmp sgt i32 %i.bqx, 13
  br i1 %i.brb, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.brc = mul i64 %i.bqv, -4078282918271054303
  %i.brd = icmp ugt i64 %i.brc, 47223664828696
  %i.bre = zext i1 %i.brd to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528

_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528: ; preds = %bb.jr, %bb.js, %bb.jt
  %.0.i.i1527 = phi i32 [ %i.bre, %bb.jt ], [ 1, %bb.jr ], [ 0, %bb.js ]
  %i.brf = zext nneg i32 %i.bqu to i64
  %i.brg = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.brf
  %i.brh = getelementptr i8, ptr %i.brg, i64 -4
  %i.bri = load i32, ptr %i.brh, align 4, !tbaa !35
  %.not.i1169 = icmp ugt i32 %i.bri, %i.bqt
  br i1 %.not.i1169, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1171, label %.thread2010.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1171: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj0ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1528
  %i.brj = lshr i32 %i.bqt, 31
  %i.brk = or i32 %.0.i.i1527, %.29961
  %i.brl = and i32 %i.brk, %i.brj
  %.fr2430 = freeze i32 %i.brl
  %.not2431 = icmp eq i32 %.fr2430, 0
  br i1 %.not2431, label %.thread2095.sink.split, label %.thread2010.sink.split

bb.ju:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE8generateImEET_S5_Pmm.exit
  %i.brm = load i64, ptr %i.uo, align 16, !tbaa !16
  %i.brn = zext i64 %i.brm to i128
  %i.bro = mul nuw nsw i128 %i.brn, 1000000
  %i.brp = lshr i128 %i.bro, 64
  %i.brq = trunc nuw nsw i128 %i.brp to i64
  %i.brr = load i64, ptr %i.uv, align 8, !tbaa !16
  %i.brs = zext i64 %i.brr to i128
  %i.brt = mul nuw nsw i128 %i.brs, 1000000       ; 2 uses
  %i.bru = lshr i128 %i.brt, 64
  %i.brv = trunc nuw nsw i128 %i.bru to i64
  %i.brw = trunc i128 %i.brt to i64
  %i.brx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.brw, i64 %i.brq)
  %i.bry = extractvalue { i64, i1 } %i.brx, 1
  %i.brz = zext i1 %i.bry to i64
  %i.bsa = add nuw nsw i64 %i.brz, %i.brv
  %i.bsb = load i64, ptr %i.e, align 16, !tbaa !16
  %i.bsc = zext i64 %i.bsb to i128
  %i.bsd = mul nuw nsw i128 %i.bsc, 1000000       ; 2 uses
  %i.bse = lshr i128 %i.bsd, 64
  %i.bsf = trunc nuw nsw i128 %i.bse to i64
  %i.bsg = trunc i128 %i.bsd to i64
  %i.bsh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bsg, i64 %i.bsa)
  %i.bsi = extractvalue { i64, i1 } %i.bsh, 1
  %i.bsj = zext i1 %i.bsi to i64
  %i.bsk = add nuw nsw i64 %i.bsj, %i.bsf
  %i.bsl = getelementptr inbounds nuw i8, ptr %.59, i64 16
  %i.bsm = mul nuw nsw i64 %i.bsk, 429497
  %i.bsn = add nuw nsw i64 %i.bsm, 1              ; 2 uses
  %sh.diff.i1511 = lshr i64 %i.bsn, 31
  %i.bso = and i64 %sh.diff.i1511, 2097150
  %i.bsp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bso
  %i.bsq = load i16, ptr %i.bsp, align 2
  store i16 %i.bsq, ptr %i.bsl, align 1
  %i.bsr = getelementptr inbounds nuw i8, ptr %.59, i64 18
  %i.bss = and i64 %i.bsn, 4294967295
  %i.bst = mul nuw nsw i64 %i.bss, 100            ; 2 uses
  %sh.diff9.i1512 = lshr i64 %i.bst, 31
  %i.bsu = and i64 %sh.diff9.i1512, 254
  %i.bsv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bsu
  %i.bsw = load i16, ptr %i.bsv, align 2
  store i16 %i.bsw, ptr %i.bsr, align 1
  %i.bsx = and i64 %i.bst, 4294967292
  %i.bsy = mul nuw nsw i64 %i.bsx, 100
  %i.bsz = getelementptr inbounds nuw i8, ptr %.59, i64 20
  %sh.diff9.1.i1513 = lshr i64 %i.bsy, 31
  %i.bta = and i64 %sh.diff9.1.i1513, 254
  %i.btb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bta
  %i.btc = load i16, ptr %i.btb, align 2
  store i16 %i.btc, ptr %i.bsz, align 1
  %i.btd = getelementptr inbounds nuw i8, ptr %.59, i64 22
  %i.bte = add nsw i32 %.221019, -22
  br label %bb.ik, !llvm.loop !55

bb.jv:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE13discard_upperImEEvT_Pmm.exit
  %i.btf = icmp sgt i32 %.221019, 8
  %i.btg = and i128 %i.bjr, 18446744073709551615  ; 2 uses
  %i.bth = zext i64 %i.bkc to i128                ; 2 uses
  %i.bti = zext i64 %i.bkf to i128                ; 2 uses
  br i1 %i.btf, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238, label %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238: ; preds = %bb.jv
  %i.btj = mul nuw nsw i128 %i.btg, 20000000000000000
  %i.btk = lshr i128 %i.btj, 64
  %i.btl = trunc nuw nsw i128 %i.btk to i64
  %i.btm = mul nuw nsw i128 %i.bth, 20000000000000000 ; 2 uses
  %i.btn = lshr i128 %i.btm, 64
  %i.bto = trunc nuw nsw i128 %i.btn to i64
  %i.btp = trunc i128 %i.btm to i64
  %i.btq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.btp, i64 %i.btl)
  %i.btr = extractvalue { i64, i1 } %i.btq, 1
  %i.bts = zext i1 %i.btr to i64
  %i.btt = add nuw nsw i64 %i.bts, %i.bto
  %i.btu = mul nuw nsw i128 %i.bti, 20000000000000000 ; 2 uses
  %i.btv = lshr i128 %i.btu, 64
  %i.btw = trunc nuw nsw i128 %i.btv to i64
  %i.btx = trunc i128 %i.btu to i64
  %i.bty = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.btx, i64 %i.btt)
  %i.btz = extractvalue { i64, i1 } %i.bty, 1
  %i.bua = zext i1 %i.btz to i64
  %i.bub = add nuw nsw i64 %i.bua, %i.btw         ; 2 uses
  %i.buc = trunc i64 %i.bub to i1
  %i.bud = lshr i64 %i.bub, 1                     ; 2 uses
  %i.bue = zext nneg i64 %i.bud to i128
  %i.buf = mul nuw nsw i128 %i.bue, 3022314549036573
  %sum.shift2421 = lshr i128 %i.buf, 78
  %i.bug = trunc nuw nsw i128 %sum.shift2421 to i32 ; 2 uses
  %i.buh = trunc i64 %i.bud to i32
  %.neg1117 = mul i32 %i.bug, -100000000
  %i.bui = add i32 %.neg1117, %i.buh
  tail call void @_ZN5boost8charconv6detail14print_8_digitsEjPc(i32 noundef %i.bug, ptr noundef nonnull %.59) #14
  %i.buj = getelementptr inbounds nuw i8, ptr %.59, i64 8 ; 6 uses
  %i.buk = add nsw i32 %.221019, -8               ; 4 uses
  %i.bul = and i32 %.221019, 1
  %.not1118 = icmp eq i32 %i.bul, 0
  %i.bum = zext i32 %i.bui to i64                 ; 2 uses
  br i1 %.not1118, label %bb.kb, label %bb.jw

bb.jw:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238
  %i.bun = mul nuw nsw i64 %i.bum, 112589991
  %i.buo = lshr i64 %i.bun, 18
  %i.bup = add nuw nsw i64 %i.buo, 1              ; 3 uses
  %i.buq = lshr i64 %i.bup, 32                    ; 2 uses
  %i.bur = trunc nuw nsw i64 %i.buq to i32        ; 4 uses
  %i.bus = icmp eq i32 %i.buk, 1
  br i1 %i.bus, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.but = trunc i64 %i.bup to i32                ; 2 uses
  %i.buu = icmp slt i32 %i.bfk, -30
  %i.buv = add nsw i32 %i.bfr, %i.bfj
  %i.buw = icmp slt i32 %i.buv, 7
  %or.cond.i.i1535 = select i1 %i.buu, i1 true, i1 %i.buw
  br i1 %or.cond.i.i1535, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bux = icmp sgt i32 %i.bfk, -9
  br i1 %i.bux, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.buy = mul i64 %i.bfi, 6059715779035702873
  %i.buz = icmp ugt i64 %i.buy, 3022314549
  %i.bva = zext i1 %i.buz to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.jx, %bb.jy, %bb.jz
  %.0.i.i1536 = phi i32 [ %i.bva, %bb.jz ], [ 1, %bb.jx ], [ 0, %bb.jy ]
  %.not.i1166 = icmp ult i32 %i.but, -2147483218
  br i1 %.not.i1166, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1168, label %.thread1981.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1168: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %i.bvb = lshr i32 %i.but, 31
  %i.bvc = or i32 %.0.i.i1536, %i.bur
  %i.bvd = and i32 %i.bvc, %i.bvb
  %.fr2422 = freeze i32 %i.bvd
  %.not2423 = icmp eq i32 %.fr2422, 0
  br i1 %.not2423, label %.thread2077.sink.split, label %.thread1981.sink.split

bb.ka:                                            ; preds = %bb.jw
  %i.bve = trunc i64 %i.buq to i8
  %i.bvf = add i8 %i.bve, 48
  store i8 %i.bvf, ptr %i.buj, align 1, !tbaa !25
  br label %bb.kd

bb.kb:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit1238
  %i.bvg = mul nuw nsw i64 %i.bum, 140737489
  %i.bvh = lshr i64 %i.bvg, 15
  %i.bvi = add nuw nsw i64 %i.bvh, 1              ; 3 uses
  %i.bvj = lshr i64 %i.bvi, 32                    ; 2 uses
  %i.bvk = trunc nuw nsw i64 %i.bvj to i32
  %i.bvl = icmp eq i32 %i.buk, 2
  br i1 %i.bvl, label %bb.ke, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bvm = shl nuw nsw i64 %i.bvj, 1
  %i.bvn = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bvm
  %i.bvo = load i16, ptr %i.bvn, align 2
  store i16 %i.bvo, ptr %i.buj, align 1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.ka
  %.sink2909 = phi i64 [ 10, %bb.kc ], [ 9, %bb.ka ]
  %.0849 = phi i64 [ %i.bvi, %bb.kc ], [ %i.bup, %bb.ka ] ; 3 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %.59, i64 %.sink2909 ; 3 uses
  %i.bvq = icmp samesign ugt i32 %.221019, 12
  br i1 %i.bvq, label %.lr.ph2552.preheader, label %._crit_edge2553.thread.a

._crit_edge2553.thread.a:                         ; preds = %bb.kd
  %10 = and i64 %.0849, 4294967295
  %11 = mul nuw nsw i64 %10, 100                  ; 2 uses
  %12 = lshr i64 %11, 32
  %13 = trunc nuw nsw i64 %12 to i32
  br label %bb.ke

.lr.ph2552.preheader:                             ; preds = %bb.kd
  %.lhs.trunc = add nuw i32 %.221019, 245         ; 3 uses
  %14 = lshr i32 %.lhs.trunc, 1                   ; 2 uses
  %i.bvr = and i32 %.lhs.trunc, 254
  %15 = icmp eq i32 %i.bvr, 2
  br i1 %15, label %.lr.ph2552.epil.preheader, label %.lr.ph2552.preheader.new

.lr.ph2552.preheader.new:                         ; preds = %.lr.ph2552.preheader
  %unroll_iter3069 = and i32 %14, 126
  br label %.lr.ph2552

._crit_edge2553.unr-lcssa:                        ; preds = %.lr.ph2552
  %16 = and i32 %.lhs.trunc, 2
  %lcmp.mod3065.not = icmp eq i32 %16, 0
  br i1 %lcmp.mod3065.not, label %._crit_edge2553, label %.lr.ph2552.epil.preheader

.lr.ph2552.epil.preheader:                        ; preds = %._crit_edge2553.unr-lcssa, %.lr.ph2552.preheader
  %.662550.epil.init = phi ptr [ %i.bvp, %.lr.ph2552.preheader ], [ %i.bwn, %._crit_edge2553.unr-lcssa ] ; 2 uses
  %.18502548.epil.init = phi i64 [ %.0849, %.lr.ph2552.preheader ], [ %i.bwj, %._crit_edge2553.unr-lcssa ]
  %lcmp.mod3068 = trunc i32 %14 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3068)
  %i.bvs = and i64 %.18502548.epil.init, 4294967295
  %i.bvt = mul nuw nsw i64 %i.bvs, 100            ; 2 uses
  %sh.diff2424.epil = lshr i64 %i.bvt, 31
  %i.bvu = and i64 %sh.diff2424.epil, 254
  %i.bvv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bvu
  %i.bvw = load i16, ptr %i.bvv, align 2
  store i16 %i.bvw, ptr %.662550.epil.init, align 1
  %i.bvx = getelementptr inbounds nuw i8, ptr %.662550.epil.init, i64 2
  br label %._crit_edge2553

._crit_edge2553:                                  ; preds = %._crit_edge2553.unr-lcssa, %.lr.ph2552.epil.preheader
  %.lcssa2980 = phi i64 [ %i.bwj, %._crit_edge2553.unr-lcssa ], [ %i.bvt, %.lr.ph2552.epil.preheader ]
  %.lcssa2979 = phi ptr [ %i.bwn, %._crit_edge2553.unr-lcssa ], [ %i.bvx, %.lr.ph2552.epil.preheader ] ; 3 uses
  %.pre2656.pre = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %.pre2657.pre = load i32, ptr %i.d, align 4, !tbaa !35 ; 2 uses
  %.pre2658.pre = load i32, ptr %i.b, align 4, !tbaa !35 ; 4 uses
  %i.bvy = and i64 %.lcssa2980, 4294967292
  %i.bvz = mul nuw nsw i64 %i.bvy, 100            ; 2 uses
  %i.bwa = lshr i64 %i.bvz, 32
  %i.bwb = trunc nuw nsw i64 %i.bwa to i32        ; 4 uses
  %.not1119 = icmp eq i32 %.221019, 16
  br i1 %.not1119, label %bb.kh, label %bb.ke

.lr.ph2552:                                       ; preds = %.lr.ph2552, %.lr.ph2552.preheader.new
  %.662550 = phi ptr [ %i.bvp, %.lr.ph2552.preheader.new ], [ %i.bwn, %.lr.ph2552 ] ; 3 uses
  %.18502548 = phi i64 [ %.0849, %.lr.ph2552.preheader.new ], [ %i.bwj, %.lr.ph2552 ]
  %niter3070 = phi i32 [ 0, %.lr.ph2552.preheader.new ], [ %niter3070.next.1, %.lr.ph2552 ]
  %i.bwc = and i64 %.18502548, 4294967295
  %i.bwd = mul nuw nsw i64 %i.bwc, 100            ; 2 uses
  %sh.diff2424 = lshr i64 %i.bwd, 31
  %i.bwe = and i64 %sh.diff2424, 254
  %i.bwf = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bwe
  %i.bwg = load i16, ptr %i.bwf, align 2
  store i16 %i.bwg, ptr %.662550, align 1
  %i.bwh = getelementptr inbounds nuw i8, ptr %.662550, i64 2
  %i.bwi = and i64 %i.bwd, 4294967292
  %i.bwj = mul nuw nsw i64 %i.bwi, 100            ; 4 uses
  %sh.diff2424.1 = lshr i64 %i.bwj, 31
  %i.bwk = and i64 %sh.diff2424.1, 254
  %i.bwl = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bwk
  %i.bwm = load i16, ptr %i.bwl, align 2
  store i16 %i.bwm, ptr %i.bwh, align 1
  %i.bwn = getelementptr inbounds nuw i8, ptr %.662550, i64 4 ; 3 uses
  %niter3070.next.1 = add i32 %niter3070, 2       ; 2 uses
  %niter3070.ncmp.1 = icmp eq i32 %niter3070.next.1, %unroll_iter3069
  br i1 %niter3070.ncmp.1, label %._crit_edge2553.unr-lcssa, label %.lr.ph2552, !llvm.loop !56

bb.ke:                                            ; preds = %._crit_edge2553.thread.a, %._crit_edge2553, %bb.kb
  %i.bwo = phi i32 [ %.pre2658.pre, %._crit_edge2553 ], [ %i.bfr, %bb.kb ], [ %i.bfr, %._crit_edge2553.thread.a ] ; 3 uses
  %i.bwp = phi i32 [ %.pre2657.pre, %._crit_edge2553 ], [ %i.bfj, %bb.kb ], [ %i.bfj, %._crit_edge2553.thread.a ]
  %i.bwq = phi i64 [ %.pre2656.pre, %._crit_edge2553 ], [ %i.bfi, %bb.kb ], [ %i.bfi, %._crit_edge2553.thread.a ]
  %.32964 = phi i32 [ %i.bwb, %._crit_edge2553 ], [ %i.bvk, %bb.kb ], [ %13, %._crit_edge2553.thread.a ] ; 4 uses
  %.2851 = phi i64 [ %i.bvz, %._crit_edge2553 ], [ %i.bvi, %bb.kb ], [ %11, %._crit_edge2553.thread.a ]
  %.67 = phi ptr [ %.lcssa2979, %._crit_edge2553 ], [ %i.buj, %bb.kb ], [ %i.bvp, %._crit_edge2553.thread.a ] ; 3 uses
  %i.bwr = trunc i64 %.2851 to i32                ; 2 uses
  %i.bws = sub nuw nsw i32 16, %.221019
  %i.bwt = icmp slt i32 %i.bwo, -8
  %i.bwu = add nsw i32 %i.bwo, %i.bwp
  %i.bwv = icmp slt i32 %i.bwu, 7
  %or.cond.i.i1537 = select i1 %i.bwt, i1 true, i1 %i.bwv
  br i1 %or.cond.i.i1537, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bww = icmp sgt i32 %i.bwo, 13
  br i1 %i.bww, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bwx = mul i64 %i.bwq, 6059715779035702873
  %i.bwy = icmp ugt i64 %i.bwx, 3022314549
  %i.bwz = zext i1 %i.bwy to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539

_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539: ; preds = %bb.ke, %bb.kf, %bb.kg
  %.0.i.i1538 = phi i32 [ %i.bwz, %bb.kg ], [ 1, %bb.ke ], [ 0, %bb.kf ]
  %i.bxa = zext nneg i32 %i.bws to i64
  %i.bxb = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.bxa
  %i.bxc = getelementptr i8, ptr %i.bxb, i64 -4
  %i.bxd = load i32, ptr %i.bxc, align 4, !tbaa !35
  %.not.i1163 = icmp ugt i32 %i.bxd, %i.bwr
  br i1 %.not.i1163, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1165, label %.thread2010.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1165: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1539
  %i.bxe = lshr i32 %i.bwr, 31
  %i.bxf = or i32 %.0.i.i1538, %.32964
  %i.bxg = and i32 %i.bxf, %i.bxe
  %.not2425 = icmp eq i32 %i.bxg, 0
  br i1 %.not2425, label %.thread2095.sink.split, label %.thread2010.sink.split

bb.kh:                                            ; preds = %._crit_edge2553
  %i.bxh = icmp slt i32 %.pre2658.pre, -8
  %i.bxi = add nsw i32 %.pre2658.pre, %.pre2657.pre
  %i.bxj = icmp slt i32 %i.bxi, 6
  %or.cond.i.i1540 = select i1 %i.bxh, i1 true, i1 %i.bxj
  br i1 %or.cond.i.i1540, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bxk = icmp sgt i32 %.pre2658.pre, 13
  br i1 %i.bxk, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bxl = mul i64 %.pre2656.pre, 6059715779035702873
  %i.bxm = icmp ugt i64 %i.bxl, 3022314549
  %i.bxn = zext i1 %i.bxm to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj6ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.kh, %bb.ki, %bb.kj
  %.0.i.i1541 = phi i32 [ %i.bxn, %bb.kj ], [ 1, %bb.kh ], [ 0, %bb.ki ]
  %i.bxo = and i32 %i.bwb, 1
  %i.bxp = or i32 %.0.i.i1541, %i.bxo
  %i.bxq = icmp ne i32 %i.bxp, 0
  %.0.i1275 = select i1 %i.buc, i1 %i.bxq, i1 false
  br i1 %.0.i1275, label %.thread2010.sink.split, label %.thread2095.sink.split

_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit: ; preds = %bb.jv
  %i.bxr = mul nuw nsw i128 %i.btg, 200000000
  %i.bxs = lshr i128 %i.bxr, 64
  %i.bxt = trunc nuw nsw i128 %i.bxs to i64
  %i.bxu = mul nuw nsw i128 %i.bth, 200000000     ; 2 uses
  %i.bxv = lshr i128 %i.bxu, 64
  %i.bxw = trunc nuw nsw i128 %i.bxv to i64
  %i.bxx = trunc i128 %i.bxu to i64
  %i.bxy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bxx, i64 %i.bxt)
  %i.bxz = extractvalue { i64, i1 } %i.bxy, 1
  %i.bya = zext i1 %i.bxz to i64
  %i.byb = add nuw nsw i64 %i.bya, %i.bxw
  %i.byc = mul nuw nsw i128 %i.bti, 200000000     ; 2 uses
  %i.byd = lshr i128 %i.byc, 64
  %i.bye = trunc nuw nsw i128 %i.byd to i64
  %i.byf = trunc i128 %i.byc to i64
  %i.byg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.byf, i64 %i.byb)
  %i.byh = extractvalue { i64, i1 } %i.byg, 1
  %i.byi = zext i1 %i.byh to i64
  %i.byj = add nuw nsw i64 %i.byi, %i.bye         ; 2 uses
  %i.byk = trunc i64 %i.byj to i1
  %i.byl = lshr i64 %i.byj, 1                     ; 2 uses
  %i.bym = and i32 %.221019, 1
  %.not1115 = icmp eq i32 %i.bym, 0
  br i1 %.not1115, label %bb.kp, label %bb.kk

bb.kk:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit
  %i.byn = mul nuw nsw i64 %i.byl, 112589991
  %i.byo = lshr i64 %i.byn, 18
  %i.byp = add nuw nsw i64 %i.byo, 1              ; 3 uses
  %i.byq = lshr i64 %i.byp, 32                    ; 2 uses
  %i.byr = trunc nuw nsw i64 %i.byq to i32        ; 4 uses
  %i.bys = icmp eq i32 %.221019, 1
  br i1 %i.bys, label %bb.kl, label %bb.ko

bb.kl:                                            ; preds = %bb.kk
  %i.byt = trunc i64 %i.byp to i32                ; 2 uses
  %i.byu = icmp slt i32 %i.bfk, -30
  %i.byv = add nsw i32 %i.bfr, %i.bfj
  %i.byw = icmp slt i32 %i.byv, 15
  %or.cond.i.i1548 = select i1 %i.byu, i1 true, i1 %i.byw
  br i1 %or.cond.i.i1548, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.byx = icmp sgt i32 %i.bfk, -9
  br i1 %i.byx, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.byy = mul i64 %i.bfi, 5777689233668919161
  %i.byz = icmp ugt i64 %i.byy, 7737
  %i.bza = zext i1 %i.byz to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.kl, %bb.km, %bb.kn
  %.0.i.i1549 = phi i32 [ %i.bza, %bb.kn ], [ 1, %bb.kl ], [ 0, %bb.km ]
  %.not.i1160 = icmp ult i32 %i.byt, -2147483218
  br i1 %.not.i1160, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1162, label %.thread1981.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1162: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %i.bzb = lshr i32 %i.byt, 31
  %i.bzc = or i32 %.0.i.i1549, %i.byr
  %i.bzd = and i32 %i.bzc, %i.bzb
  %.fr2417 = freeze i32 %i.bzd
  %.not2418 = icmp eq i32 %.fr2417, 0
  br i1 %.not2418, label %.thread2077.sink.split, label %.thread1981.sink.split

bb.ko:                                            ; preds = %bb.kk
  %i.bze = trunc nuw nsw i64 %i.byq to i8
  %i.bzf = add nuw nsw i8 %i.bze, 48
  store i8 %i.bzf, ptr %.59, align 1, !tbaa !25
  br label %bb.kr

bb.kp:                                            ; preds = %_ZN5boost8charconv6detail22fixed_point_calculatorILm3EE26generate_and_discard_lowerImEET_S5_Pmm.exit
  %i.bzg = mul nuw nsw i64 %i.byl, 140737489
  %i.bzh = lshr i64 %i.bzg, 15
  %i.bzi = add nuw nsw i64 %i.bzh, 1              ; 3 uses
  %i.bzj = lshr i64 %i.bzi, 32                    ; 2 uses
  %i.bzk = trunc nuw nsw i64 %i.bzj to i32
  %i.bzl = icmp eq i32 %.221019, 2
  br i1 %i.bzl, label %bb.ks, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bzm = shl nuw nsw i64 %i.bzj, 1
  %i.bzn = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bzm
  %i.bzo = load i16, ptr %i.bzn, align 2
  store i16 %i.bzo, ptr %.59, align 1
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.ko
  %.sink2910 = phi i64 [ 2, %bb.kq ], [ 1, %bb.ko ]
  %.0845 = phi i64 [ %i.bzi, %bb.kq ], [ %i.byp, %bb.ko ] ; 3 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %.59, i64 %.sink2910 ; 3 uses
  %i.bzq = icmp sgt i32 %.221019, 4
  br i1 %i.bzq, label %.lr.ph2544.preheader, label %._crit_edge2545

.lr.ph2544.preheader:                             ; preds = %bb.kr
  %.lhs.trunc2842 = add nuw i32 %.221019, 253     ; 3 uses
  %i.bzr = lshr i32 %.lhs.trunc2842, 1            ; 2 uses
  %i.bzs = and i32 %.lhs.trunc2842, 254
  %17 = icmp eq i32 %i.bzs, 2
  br i1 %17, label %.lr.ph2544.epil.preheader, label %.lr.ph2544.preheader.new

.lr.ph2544.preheader.new:                         ; preds = %.lr.ph2544.preheader
  %unroll_iter3062 = and i32 %i.bzr, 126
  br label %.lr.ph2544

._crit_edge2545.loopexit.unr-lcssa:               ; preds = %.lr.ph2544
  %18 = and i32 %.lhs.trunc2842, 2
  %lcmp.mod3058.not = icmp eq i32 %18, 0
  br i1 %lcmp.mod3058.not, label %._crit_edge2545, label %.lr.ph2544.epil.preheader

.lr.ph2544.epil.preheader:                        ; preds = %._crit_edge2545.loopexit.unr-lcssa, %.lr.ph2544.preheader
  %.712542.epil.init = phi ptr [ %i.bzp, %.lr.ph2544.preheader ], [ %i.cao, %._crit_edge2545.loopexit.unr-lcssa ] ; 2 uses
  %.18462540.epil.init = phi i64 [ %.0845, %.lr.ph2544.preheader ], [ %i.cak, %._crit_edge2545.loopexit.unr-lcssa ]
  %lcmp.mod3061 = trunc i32 %i.bzr to i1
  tail call void @llvm.assume(i1 %lcmp.mod3061)
  %i.bzt = and i64 %.18462540.epil.init, 4294967295
  %i.bzu = mul nuw nsw i64 %i.bzt, 100            ; 2 uses
  %sh.diff2419.epil = lshr i64 %i.bzu, 31
  %i.bzv = and i64 %sh.diff2419.epil, 254
  %i.bzw = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.bzv
  %i.bzx = load i16, ptr %i.bzw, align 2
  store i16 %i.bzx, ptr %.712542.epil.init, align 1
  %i.bzy = getelementptr inbounds nuw i8, ptr %.712542.epil.init, i64 2
  br label %._crit_edge2545

._crit_edge2545:                                  ; preds = %.lr.ph2544.epil.preheader, %._crit_edge2545.loopexit.unr-lcssa, %bb.kr
  %.1846.lcssa = phi i64 [ %.0845, %bb.kr ], [ %i.cak, %._crit_edge2545.loopexit.unr-lcssa ], [ %i.bzu, %.lr.ph2544.epil.preheader ]
  %.71.lcssa = phi ptr [ %i.bzp, %bb.kr ], [ %i.cao, %._crit_edge2545.loopexit.unr-lcssa ], [ %i.bzy, %.lr.ph2544.epil.preheader ] ; 3 uses
  %i.bzz = and i64 %.1846.lcssa, 4294967295
  %i.caa = mul nuw nsw i64 %i.bzz, 100            ; 2 uses
  %i.cab = lshr i64 %i.caa, 32
  %i.cac = trunc nuw nsw i64 %i.cab to i32        ; 4 uses
  %.not1116 = icmp eq i32 %.221019, 8
  %.pre2653 = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %.pre2654 = load i32, ptr %i.d, align 4, !tbaa !35 ; 2 uses
  %.pre2655 = load i32, ptr %i.b, align 4, !tbaa !35 ; 4 uses
  br i1 %.not1116, label %bb.kv, label %bb.ks

.lr.ph2544:                                       ; preds = %.lr.ph2544, %.lr.ph2544.preheader.new
  %.712542 = phi ptr [ %i.bzp, %.lr.ph2544.preheader.new ], [ %i.cao, %.lr.ph2544 ] ; 3 uses
  %.18462540 = phi i64 [ %.0845, %.lr.ph2544.preheader.new ], [ %i.cak, %.lr.ph2544 ]
  %niter3063 = phi i32 [ 0, %.lr.ph2544.preheader.new ], [ %niter3063.next.1, %.lr.ph2544 ]
  %i.cad = and i64 %.18462540, 4294967295
  %i.cae = mul nuw nsw i64 %i.cad, 100            ; 2 uses
  %sh.diff2419 = lshr i64 %i.cae, 31
  %i.caf = and i64 %sh.diff2419, 254
  %i.cag = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.caf
  %i.cah = load i16, ptr %i.cag, align 2
  store i16 %i.cah, ptr %.712542, align 1
  %i.cai = getelementptr inbounds nuw i8, ptr %.712542, i64 2
  %i.caj = and i64 %i.cae, 4294967292
  %i.cak = mul nuw nsw i64 %i.caj, 100            ; 4 uses
  %sh.diff2419.1 = lshr i64 %i.cak, 31
  %i.cal = and i64 %sh.diff2419.1, 254
  %i.cam = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE15radix_100_tableE, i64 %i.cal
  %i.can = load i16, ptr %i.cam, align 2
  store i16 %i.can, ptr %i.cai, align 1
  %i.cao = getelementptr inbounds nuw i8, ptr %.712542, i64 4 ; 3 uses
  %niter3063.next.1 = add i32 %niter3063, 2       ; 2 uses
  %niter3063.ncmp.1 = icmp eq i32 %niter3063.next.1, %unroll_iter3062
  br i1 %niter3063.ncmp.1, label %._crit_edge2545.loopexit.unr-lcssa, label %.lr.ph2544, !llvm.loop !57

bb.ks:                                            ; preds = %._crit_edge2545, %bb.kp
  %i.cap = phi i32 [ %.pre2655, %._crit_edge2545 ], [ %i.bfr, %bb.kp ] ; 3 uses
  %i.caq = phi i32 [ %.pre2654, %._crit_edge2545 ], [ %i.bfj, %bb.kp ]
  %i.car = phi i64 [ %.pre2653, %._crit_edge2545 ], [ %i.bfi, %bb.kp ]
  %.35967 = phi i32 [ %i.cac, %._crit_edge2545 ], [ %i.bzk, %bb.kp ] ; 4 uses
  %.2847 = phi i64 [ %i.caa, %._crit_edge2545 ], [ %i.bzi, %bb.kp ]
  %.72 = phi ptr [ %.71.lcssa, %._crit_edge2545 ], [ %.59, %bb.kp ] ; 3 uses
  %i.cas = trunc i64 %.2847 to i32                ; 2 uses
  %i.cat = sub nsw i32 8, %.221019
  %i.cau = icmp slt i32 %i.cap, -8
  %i.cav = add nsw i32 %i.cap, %i.caq
  %i.caw = icmp slt i32 %i.cav, 15
  %or.cond.i.i1550 = select i1 %i.cau, i1 true, i1 %i.caw
  br i1 %or.cond.i.i1550, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1552, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.cax = icmp sgt i32 %i.cap, 13
  br i1 %i.cax, label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1552, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.cay = mul i64 %i.car, 5777689233668919161
  %i.caz = icmp ugt i64 %i.cay, 7737
  %i.cba = zext i1 %i.caz to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1552

_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1552: ; preds = %bb.ks, %bb.kt, %bb.ku
  %.0.i.i1551 = phi i32 [ %i.cba, %bb.ku ], [ 1, %bb.ks ], [ 0, %bb.kt ]
  %i.cbb = zext nneg i32 %i.cat to i64
  %i.cbc = getelementptr [4 x i8], ptr @_ZN5boost8charconv6detail34additional_static_data_holder_implILb1EE37fractional_part_rounding_thresholds32E, i64 %i.cbb
  %i.cbd = getelementptr i8, ptr %i.cbc, i64 -4
  %i.cbe = load i32, ptr %i.cbd, align 4, !tbaa !35
  %.not.i = icmp ugt i32 %i.cbe, %i.cas
  br i1 %.not.i, label %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit, label %.thread2010.sink.split

_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit: ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj1ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit1552
  %i.cbf = lshr i32 %i.cas, 31
  %i.cbg = or i32 %.0.i.i1551, %.35967
  %i.cbh = and i32 %i.cbg, %i.cbf
  %.not2420 = icmp eq i32 %i.cbh, 0
  br i1 %.not2420, label %.thread2095.sink.split, label %.thread2010.sink.split

bb.kv:                                            ; preds = %._crit_edge2545
  %i.cbi = icmp slt i32 %.pre2655, -8
  %i.cbj = add nsw i32 %.pre2655, %.pre2654
  %i.cbk = icmp slt i32 %i.cbj, 14
  %or.cond.i.i1553 = select i1 %i.cbi, i1 true, i1 %i.cbk
  br i1 %or.cond.i.i1553, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cbl = icmp sgt i32 %.pre2655, 13
  br i1 %i.cbl, label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.cbm = mul i64 %.pre2653, 5777689233668919161
  %i.cbn = icmp ugt i64 %i.cbm, 7737
  %i.cbo = zext i1 %i.cbn to i32
  br label %_ZN5boost8charconv6detail18has_further_digitsILj0ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit

_ZN5boost8charconv6detail18has_further_digitsILj0ELj14ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit: ; preds = %bb.kv, %bb.kw, %bb.kx
  %.0.i.i1554 = phi i32 [ %i.cbo, %bb.kx ], [ 1, %bb.kv ], [ 0, %bb.kw ]
  %i.cbp = and i32 %i.cac, 1
  %i.cbq = or i32 %.0.i.i1554, %i.cbp
  %i.cbr = icmp ne i32 %i.cbq, 0
  %.0.i1274 = select i1 %i.byk, i1 %i.cbr, i1 false
  br i1 %.0.i1274, label %.thread2010.sink.split, label %.thread2095.sink.split

.thread2261:                                      ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.thread2086

.thread2111.thread2356:                           ; preds = %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread2123, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit
  %.14946.ph = phi i32 [ %.69382064, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread2123 ], [ %.69382064, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit ], [ %i.any, %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit ]
  %.34.ph = phi ptr [ %.222065, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread2123 ], [ %.222065, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit ], [ %.32.lcssa, %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.thread2095.sink.split

.thread2111.thread2364:                           ; preds = %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit, %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit
  %.14946.ph2362 = phi i32 [ %.69382064, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit ], [ %.69382064, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread ], [ %i.any, %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit ]
  %.34.ph2363 = phi ptr [ %.222065, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit ], [ %.222065, %_ZN5boost8charconv6detailL65check_rounding_condition_subsegment_boundary_with_next_subsegmentINS1_32uint_with_known_number_of_digitsILj2ELb1EEEZNS1_5floffINS1_15main_cache_fullENS1_24extended_cache_long_implILb1EEEEENS0_15to_chars_resultEdiPcSA_NS0_12chars_formatEEUlvE0_JETnNSt9enable_ifIXntsr3std7is_sameIT0_bEE5valueEbE4typeELb1EEEbjT_SE_DpT1_.exit.thread ], [ %.32.lcssa, %_ZN5boost8charconv6detail18has_further_digitsILj0ELj1ENS1_24extended_cache_long_implILb1EEEEEbmiRiNS1_6uconstIXT_EEENS6_IXT0_EEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.thread2010.sink.split

.thread2111:                                      ; preds = %_ZN5boost8charconv6detailL42check_rounding_condition_inside_subsegmentIbJETnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEbE4typeELb1EEEbjjiS4_DpT0_.exit1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.loopexit2434.thread.sink.split

.thread2086:                                      ; preds = %bb.cw, %.thread2261
  %.251022 = phi i32 [ %i.ps, %bb.cw ], [ %.221019, %.thread2261 ]
  %.76 = phi ptr [ %i.pr, %bb.cw ], [ %.59, %.thread2261 ] ; 2 uses
  %i.cbs = sext i32 %.251022 to i64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.76, i8 48, i64 %i.cbs, i1 false)
  %i.cbt = getelementptr inbounds i8, ptr %.76, i64 %i.cbs
  br label %.thread2037

.thread2037:                                      ; preds = %bb.lq, %bb.lp, %bb.lw, %bb.mc, %bb.bm, %bb.da, %bb.bj, %.thread2077, %.thread2095, %.thread2086
  %.01928 = phi i32 [ %i.cf, %.thread2086 ], [ %i.cf, %bb.bm ], [ %i.cf, %.thread2095 ], [ %i.cf, %.thread2077 ], [ %i.cfu, %bb.mc ], [ %i.cf, %bb.bj ], [ %i.cf, %bb.da ], [ %i.cf, %bb.lp ], [ %i.cf, %bb.lq ], [ %i.cf, %bb.lw ] ; 8 uses
  %.5 = phi ptr [ %.3, %.thread2086 ], [ %.3, %bb.bm ], [ %.3, %.thread2095 ], [ %.3, %.thread2077 ], [ %.91926, %bb.mc ], [ %.3, %bb.bj ], [ %.3, %bb.da ], [ %.3, %bb.lp ], [ %.3, %bb.lq ], [ %.3, %bb.lw ] ; 6 uses
  %.77 = phi ptr [ %i.cbt, %.thread2086 ], [ %i.ga, %bb.bm ], [ %i.ceo, %.thread2095 ], [ %i.cej, %.thread2077 ], [ %.91, %bb.mc ], [ %i.fl, %bb.bj ], [ %i.qh, %bb.da ], [ %i.ces, %bb.lp ], [ %i.ces, %bb.lq ], [ %i.ces, %bb.lw ] ; 6 uses
  %i.cbu = icmp eq i32 %4, 3                      ; 2 uses
  br i1 %i.cbu, label %bb.ky, label %bb.lf

bb.ky:                                            ; preds = %.thread2037
  %i.cbv = icmp sgt i32 %.01928, -5
  %i.cbw = icmp slt i32 %.01928, %.0839
  %or.cond1155 = and i1 %i.cbv, %i.cbw
  br i1 %or.cond1155, label %bb.kz, label %bb.lc

bb.kz:                                            ; preds = %bb.ky
  %i.cbx = icmp sgt i32 %.01928, -1
  br i1 %i.cbx, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.cby = zext nneg i32 %.01928 to i64           ; 2 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %.0842, i64 %i.cby
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbz, i64 1 ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  %i.ccc = add nuw nsw i64 %i.cby, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0842, ptr noundef nonnull align 1 dereferenceable(1) %i.ccb, i64 %i.ccc, i1 false)
  store i8 46, ptr %i.cca, align 1, !tbaa !25
  br label %bb.ld

bb.lb:                                            ; preds = %bb.kz
  %i.ccd = sub nsw i32 0, %.01928
  %i.cce = xor i32 %.01928, -1
  %i.ccf = zext nneg i32 %i.cce to i64            ; 2 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %.0842, i64 %i.ccf
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 2
  %i.cci = getelementptr inbounds nuw i8, ptr %.0842, i64 1
  %i.ccj = ptrtoint ptr %.77 to i64
  %i.cck = ptrtoint ptr %.0842 to i64
  %i.ccl = xor i64 %i.cck, -1
  %i.ccm = add i64 %i.ccj, %i.ccl
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cch, ptr nonnull align 1 %i.cci, i64 %i.ccm, i1 false)
  store i16 11824, ptr %.0842, align 1
  %i.ccn = getelementptr inbounds nuw i8, ptr %.0842, i64 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ccn, i8 48, i64 %i.ccf, i1 false)
  %i.cco = zext nneg i32 %i.ccd to i64
  %i.ccp = getelementptr inbounds nuw i8, ptr %.77, i64 %i.cco
  br label %bb.ld

bb.lc:                                            ; preds = %bb.ky
  %i.ccq = getelementptr inbounds nuw i8, ptr %.0842, i64 1 ; 2 uses
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !25
  store i8 %i.ccr, ptr %.0842, align 1, !tbaa !25
  store i8 46, ptr %i.ccq, align 1, !tbaa !25
  br label %bb.ld

bb.ld:                                            ; preds = %bb.la, %bb.lb, %bb.lc
  %.01931 = phi i32 [ 3, %bb.lc ], [ 2, %bb.lb ], [ 2, %bb.la ] ; 2 uses
  %.71925 = phi ptr [ %.5, %bb.lc ], [ %.5, %bb.lb ], [ %i.cca, %bb.la ] ; 2 uses
end_hunk_3
