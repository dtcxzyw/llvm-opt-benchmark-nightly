Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@write_f64_raw:bb.a
  %i.jw = ashr i32 %i.jv, 20                      ; 4 uses
  %i.jx = mul nsw i32 %i.jw, -217707
  %i.jy = ashr i32 %i.jx, 16
  %i.jz = add nsw i32 %i.d, -1074
  %i.ka = add nsw i32 %i.jz, %i.jy
  %.neg205 = mul nsw i32 %i.jw, -2
  %i.kb = sext i32 %.neg205 to i64
  %i.kc = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.kb ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 5488
  %i.ke = load i64, ptr %i.kd, align 16, !tbaa !91
  %i.kf = getelementptr i8, ptr %i.kc, i64 5496
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !91
  %i.kh = add i64 %i.kg, 1
  %i.ki = zext i32 %i.ka to i64                   ; 3 uses
  %i.kj = shl i64 %i.jt, %i.ki
  %i.kk = zext i64 %i.kj to i128                  ; 2 uses
  %i.kl = zext i64 %i.kh to i128                  ; 3 uses
  %i.km = mul nuw i128 %i.kl, %i.kk
  %i.kn = lshr i128 %i.km, 64
  %i.ko = zext i64 %i.ke to i128                  ; 3 uses
  %i.kp = mul nuw i128 %i.ko, %i.kk
  %i.kq = add nuw i128 %i.kn, %i.kp               ; 2 uses
  %i.kr = lshr i128 %i.kq, 64
  %i.ks = trunc nuw i128 %i.kr to i64
  %i.kt = and i128 %i.kq, 18446744073709551614
  %i.ku = icmp ne i128 %i.kt, 0
  %i.kv = zext i1 %i.ku to i64
  %i.kw = or i64 %i.kv, %i.ks
  %i.kx = shl i64 %i.jq, %i.ki
  %i.ky = zext i64 %i.kx to i128                  ; 2 uses
  %i.kz = mul nuw i128 %i.kl, %i.ky
  %i.la = lshr i128 %i.kz, 64
  %i.lb = mul nuw i128 %i.ko, %i.ky
  %i.lc = add nuw i128 %i.la, %i.lb               ; 2 uses
  %i.ld = lshr i128 %i.lc, 64
  %i.le = trunc nuw i128 %i.ld to i64             ; 5 uses
  %i.lf = and i128 %i.lc, 18446744073709551614
  %i.lg = icmp ne i128 %i.lf, 0
  %i.lh = zext i1 %i.lg to i64
  %i.li = or i64 %i.lh, %i.le                     ; 2 uses
  %i.lj = shl i64 %i.ju, %i.ki
  %i.lk = zext i64 %i.lj to i128                  ; 2 uses
  %i.ll = mul nuw i128 %i.kl, %i.lk
  %i.lm = lshr i128 %i.ll, 64
  %i.ln = mul nuw i128 %i.ko, %i.lk
  %i.lo = add nuw i128 %i.lm, %i.ln               ; 2 uses
  %i.lp = lshr i128 %i.lo, 64
  %i.lq = trunc nuw i128 %i.lp to i64
  %i.lr = and i128 %i.lo, 18446744073709551614
  %i.ls = icmp ne i128 %i.lr, 0
  %i.lt = zext i1 %i.ls to i64
  %i.lu = or i64 %i.lt, %i.lq
  %i.lv = and i64 %1, 1                           ; 2 uses
  %i.lw = add i64 %i.kw, %i.lv                    ; 2 uses
  %i.lx = sub i64 %i.lu, %i.lv                    ; 2 uses
  %i.ly = lshr i64 %i.le, 2                       ; 2 uses
  %i.lz = icmp ugt i64 %i.le, 39
  br i1 %i.lz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  %i.ma = udiv i64 %i.le, 40                      ; 2 uses
  %i.mb = mul nuw i64 %i.ma, 40                   ; 2 uses
  %i.mc = add i64 %i.mb, 40
  %i.md = icmp uge i64 %i.lx, %i.mc               ; 2 uses
  %i.me = icmp ugt i64 %i.lw, %i.mb
  %.not94.i109 = xor i1 %i.me, %i.md
  br i1 %.not94.i109, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mf = mul nuw nsw i64 %i.ma, 10
  %i.mg = select i1 %i.md, i64 10, i64 0
  %i.mh = add nuw nsw i64 %i.mg, %i.mf
  br label %f64_bin_to_dec.exit110

bb.ah:                                            ; preds = %bb.af, %._crit_edge
  %i.mi = and i64 %i.le, -4                       ; 3 uses
  %i.mj = add i64 %i.mi, 4
  %i.mk = icmp uge i64 %i.lx, %i.mj               ; 2 uses
  %i.ml = or disjoint i64 %i.mi, 2                ; 2 uses
  %i.mm = icmp ugt i64 %i.li, %i.ml
  %i.mn = icmp eq i64 %i.li, %i.ml
  %i.mo = trunc i64 %i.ly to i1
  %i.mp = and i1 %i.mn, %i.mo
  %narrow = or i1 %i.mm, %i.mp
  %i.mq = icmp ugt i64 %i.lw, %i.mi
  %.not95.i108 = xor i1 %i.mq, %i.mk
  %.v = select i1 %.not95.i108, i1 %narrow, i1 %i.mk
  %i.mr = zext i1 %.v to i64
  %i.ms = add nuw nsw i64 %i.ly, %i.mr
  br label %f64_bin_to_dec.exit110

f64_bin_to_dec.exit110:                           ; preds = %.critedge.i105, %bb.ag, %bb.ah
  %.1203 = phi i64 [ %i.ms, %bb.ah ], [ %i.mh, %bb.ag ], [ %i.jn, %.critedge.i105 ] ; 5 uses
  %.1 = phi i32 [ %i.jw, %bb.ah ], [ %i.jw, %bb.ag ], [ %i.ib, %.critedge.i105 ]
  %i.mt = icmp ugt i64 %.1203, 9999999999999999
  %i.mu = select i1 %i.mt, i32 17, i32 16
  %i.mv = add nsw i32 %i.mu, %.1                  ; 8 uses
  %i.mw = add nsw i32 %i.mv, 5
  %or.cond3 = icmp ult i32 %i.mw, 27
  br i1 %or.cond3, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %f64_bin_to_dec.exit110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.m, i8 48, i64 32, i1 false)
  %i.mx = icmp sgt i32 %i.mv, 0                   ; 2 uses
  %i.my = sub nsw i32 2, %i.mv
  %i.mz = select i1 %i.mx, i32 0, i32 %i.my
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds i8, ptr %i.m, i64 %i.na ; 3 uses
  %i.nc = udiv i64 %.1203, 100000000              ; 2 uses
  %i.nd = trunc i64 %i.nc to i32                  ; 2 uses
  %.neg.i113 = mul i64 %i.nc, 4194967296
  %i.ne = add i64 %.neg.i113, %.1203              ; 2 uses
  %i.nf = trunc i64 %i.ne to i32                  ; 2 uses
  %i.ng = udiv i32 %i.nd, 10000                   ; 3 uses
  %.neg86.i114 = mul i32 %i.ng, -10000
  %i.nh = add i32 %.neg86.i114, %i.nd             ; 5 uses
  %i.ni = zext nneg i32 %i.ng to i64
  %i.nj = mul nuw nsw i64 %i.ni, 167773
  %i.nk = lshr i64 %i.nj, 24
  %i.nl = trunc nuw nsw i64 %i.nk to i32          ; 3 uses
  %i.nm = mul nuw nsw i32 %i.nl, 41
  %i.nn = lshr i32 %i.nm, 12                      ; 3 uses
  %.neg87.i115 = mul nsw i32 %i.nn, -100
  %i.no = add nsw i32 %.neg87.i115, %i.nl         ; 2 uses
  %.neg88.i116 = mul nsw i32 %i.nl, -100
  %i.np = add nsw i32 %.neg88.i116, %i.ng         ; 3 uses
  %i.nq = trunc nuw nsw i32 %i.nn to i8
  %i.nr = add nuw nsw i8 %i.nq, 48
  store i8 %i.nr, ptr %i.nb, align 1, !tbaa !81
  %i.ns = icmp ne i32 %i.nn, 0
  %i.nt = zext i1 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nt ; 11 uses
  %i.nv = shl nsw i32 %i.no, 1
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 2
  store i16 %i.ny, ptr %i.nu, align 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.oa = shl nsw i32 %i.np, 1
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2
  store i16 %i.od, ptr %i.nz, align 1
  %.not.i117 = icmp eq i32 %i.nf, 0
  br i1 %.not.i117, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.oe = mul i32 %i.nh, 5243
  %i.of = lshr i32 %i.oe, 19                      ; 2 uses
  %.neg94.i118 = mul i32 %i.of, 2147483548
  %i.og = add i32 %.neg94.i118, %i.nh
  %i.oh = and i64 %i.ne, 4294967295
  %i.oi = mul nuw nsw i64 %i.oh, 109951163
  %i.oj = lshr i64 %i.oi, 40
  %i.ok = trunc nuw nsw i64 %i.oj to i32          ; 3 uses
  %.neg95.i119 = mul i32 %i.ok, -10000
  %i.ol = add i32 %.neg95.i119, %i.nf             ; 3 uses
  %i.om = mul nuw i32 %i.ok, 5243
  %i.on = lshr i32 %i.om, 19                      ; 3 uses
  %.neg96.i120 = mul nsw i32 %i.on, -100
  %i.oo = add nsw i32 %.neg96.i120, %i.ok         ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.oq = shl nuw nsw i32 %i.of, 1
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2
  store i16 %i.ot, ptr %i.op, align 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nu, i64 6
  %i.ov = shl i32 %i.og, 1
  %i.ow = zext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2
  store i16 %i.oy, ptr %i.ou, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.pa = shl nuw nsw i32 %i.on, 1
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.pb
  %i.pd = load i16, ptr %i.pc, align 2
  store i16 %i.pd, ptr %i.oz, align 1
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nu, i64 10
  %i.pf = shl nsw i32 %i.oo, 1
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2
  store i16 %i.pi, ptr %i.pe, align 1
  %.not97.i121 = icmp eq i32 %i.ol, 0
  br i1 %.not97.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pj = mul i32 %i.ol, 5243
  %i.pk = lshr i32 %i.pj, 19                      ; 3 uses
  %.neg100.i122 = mul nsw i32 %i.pk, -100
  %i.pl = add i32 %.neg100.i122, %i.ol            ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  %i.pn = shl nuw nsw i32 %i.pk, 1
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.po
  %i.pq = load i16, ptr %i.pp, align 2
  store i16 %i.pq, ptr %i.pm, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.nu, i64 14
  %i.ps = shl i32 %i.pl, 1
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.pt
  %i.pv = load i16, ptr %i.pu, align 2
  store i16 %i.pv, ptr %i.pr, align 1
  %i.pw = zext nneg i32 %i.pk to i64
  %i.px = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !81
  %i.pz = zext i8 %i.py to i64
  %i.qa = zext i32 %i.pl to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !81
  %i.qd = zext i8 %i.qc to i64
  %.not101.i123 = icmp eq i32 %i.pl, 0
  %i.qe = add nuw nsw i64 %i.pz, 2
  %i.qf = select i1 %.not101.i123, i64 %i.qe, i64 %i.qd
  br label %write_u64_len_16_to_17_trim.exit130

bb.al:                                            ; preds = %bb.aj
  %i.qg = zext nneg i32 %i.on to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !81
  %i.qj = zext i8 %i.qi to i64
  %i.qk = zext i32 %i.oo to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !81
  %i.qn = zext i8 %i.qm to i64
  %.not98.i125 = icmp eq i32 %i.oo, 0
  %i.qo = add nuw nsw i64 %i.qj, 2
  %i.qp = select i1 %.not98.i125, i64 %i.qo, i64 %i.qn
  br label %write_u64_len_16_to_17_trim.exit130

bb.am:                                            ; preds = %bb.ai
  %.not89.i126 = icmp eq i32 %i.nh, 0
  br i1 %.not89.i126, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qq = mul i32 %i.nh, 5243
  %i.qr = lshr i32 %i.qq, 19                      ; 3 uses
  %.neg91.i127 = mul nsw i32 %i.qr, -100
  %i.qs = add i32 %.neg91.i127, %i.nh             ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.qu = shl nuw nsw i32 %i.qr, 1
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2
  store i16 %i.qx, ptr %i.qt, align 1
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nu, i64 6
  %i.qz = shl i32 %i.qs, 1
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ra
  %i.rc = load i16, ptr %i.rb, align 2
  store i16 %i.rc, ptr %i.qy, align 1
  %i.rd = zext nneg i32 %i.qr to i64
  %i.re = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !81
  %i.rg = zext i8 %i.rf to i64
  %i.rh = zext i32 %i.qs to i64
  %i.ri = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !81
  %i.rk = zext i8 %i.rj to i64
  %.not92.i128 = icmp eq i32 %i.qs, 0
  %i.rl = add nuw nsw i64 %i.rg, 2
  %i.rm = select i1 %.not92.i128, i64 %i.rl, i64 %i.rk
  br label %write_u64_len_16_to_17_trim.exit130

bb.ao:                                            ; preds = %bb.am
  %i.rn = zext i32 %i.no to i64
  %i.ro = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !81
  %i.rq = zext i8 %i.rp to i64
  %i.rr = zext i32 %i.np to i64
  %i.rs = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !81
  %i.ru = zext i8 %i.rt to i64
  %.not90.i129 = icmp eq i32 %i.np, 0
  %i.rv = select i1 %.not90.i129, i64 %i.rq, i64 0
  %i.rw = add nuw nsw i64 %i.rv, %i.ru
  br label %write_u64_len_16_to_17_trim.exit130

write_u64_len_16_to_17_trim.exit130:              ; preds = %bb.ak, %bb.al, %bb.an, %bb.ao
  %.sink280 = phi i64 [ 16, %bb.ak ], [ 12, %bb.al ], [ 8, %bb.an ], [ 4, %bb.ao ]
  %.sink279 = phi i64 [ %i.qf, %bb.ak ], [ %i.qp, %bb.al ], [ %i.rm, %bb.an ], [ %i.rw, %bb.ao ]
  %i.rx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.sink280
  %i.ry = sub nsw i64 0, %.sink279
  %i.rz = getelementptr inbounds i8, ptr %i.rx, i64 %i.ry
  %i.sa = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 0)
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.sb ; 2 uses
  %i.sd = zext i1 %i.mx to i64                    ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sd
  %i.sf = load <2 x i64>, ptr %i.sc, align 1
  store <2 x i64> %i.sf, ptr %i.se, align 1
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sd ; 2 uses
  %i.sh = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 1)
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.si
  store i8 46, ptr %i.sj, align 1, !tbaa !81
  %i.sk = sext i32 %i.mv to i64
  %i.sl = getelementptr inbounds i8, ptr %i.m, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2 ; 2 uses
  %i.sn = icmp ugt ptr %i.sm, %i.sg
  %i.so = select i1 %i.sn, ptr %i.sm, ptr %i.sg
  br label %write_inf_or_nan.exit

bb.ap:                                            ; preds = %f64_bin_to_dec.exit110
  %.ptr = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.sp = udiv i64 %.1203, 100000000              ; 2 uses
  %i.sq = trunc i64 %i.sp to i32                  ; 2 uses
  %.neg.i111 = mul i64 %i.sp, 4194967296
  %i.sr = add i64 %.neg.i111, %.1203              ; 2 uses
  %i.ss = trunc i64 %i.sr to i32                  ; 2 uses
  %i.st = udiv i32 %i.sq, 10000                   ; 3 uses
  %.neg86.i = mul i32 %i.st, -10000
  %i.su = add i32 %.neg86.i, %i.sq                ; 5 uses
  %i.sv = zext nneg i32 %i.st to i64
  %i.sw = mul nuw nsw i64 %i.sv, 167773
  %i.sx = lshr i64 %i.sw, 24
  %i.sy = trunc nuw nsw i64 %i.sx to i32          ; 3 uses
  %i.sz = mul nuw nsw i32 %i.sy, 41
  %i.ta = lshr i32 %i.sz, 12                      ; 3 uses
  %.neg87.i = mul nsw i32 %i.ta, -100
  %i.tb = add nsw i32 %.neg87.i, %i.sy            ; 2 uses
  %.neg88.i = mul nsw i32 %i.sy, -100
  %i.tc = add nsw i32 %.neg88.i, %i.st            ; 3 uses
  %i.td = trunc nuw nsw i32 %i.ta to i8
  %i.te = add nuw nsw i8 %i.td, 48
  store i8 %i.te, ptr %.ptr, align 1, !tbaa !81
  %.not226 = icmp eq i32 %i.ta, 0                 ; 2 uses
  %.add = select i1 %.not226, i64 1, i64 2        ; 4 uses
  %.ptr217 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.add ; 10 uses
  %i.tf = shl nsw i32 %i.tb, 1
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tg
  %i.ti = load i16, ptr %i.th, align 2
  store i16 %i.ti, ptr %.ptr217, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.ptr217, i64 2
  %i.tk = shl nsw i32 %i.tc, 1
  %i.tl = zext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tl
  %i.tn = load i16, ptr %i.tm, align 2
  store i16 %i.tn, ptr %i.tj, align 1
  %.not.i112 = icmp eq i32 %i.ss, 0
  br i1 %.not.i112, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.to = mul i32 %i.su, 5243
  %i.tp = lshr i32 %i.to, 19                      ; 2 uses
  %.neg94.i = mul i32 %i.tp, 2147483548
  %i.tq = add i32 %.neg94.i, %i.su
  %i.tr = and i64 %i.sr, 4294967295
  %i.ts = mul nuw nsw i64 %i.tr, 109951163
  %i.tt = lshr i64 %i.ts, 40
  %i.tu = trunc nuw nsw i64 %i.tt to i32          ; 3 uses
  %.neg95.i = mul i32 %i.tu, -10000
  %i.tv = add i32 %.neg95.i, %i.ss                ; 3 uses
  %i.tw = mul nuw i32 %i.tu, 5243
  %i.tx = lshr i32 %i.tw, 19                      ; 3 uses
  %.neg96.i = mul nsw i32 %i.tx, -100
  %i.ty = add nsw i32 %.neg96.i, %i.tu            ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.ptr217, i64 4
  %i.ua = shl nuw nsw i32 %i.tp, 1
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ub
  %i.ud = load i16, ptr %i.uc, align 2
  store i16 %i.ud, ptr %i.tz, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %.ptr217, i64 6
  %i.uf = shl i32 %i.tq, 1
  %i.ug = zext i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ug
  %i.ui = load i16, ptr %i.uh, align 2
  store i16 %i.ui, ptr %i.ue, align 1
  %i.uj = getelementptr inbounds nuw i8, ptr %.ptr217, i64 8
  %i.uk = shl nuw nsw i32 %i.tx, 1
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ul
  %i.un = load i16, ptr %i.um, align 2
  store i16 %i.un, ptr %i.uj, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %.ptr217, i64 10
  %i.up = shl nsw i32 %i.ty, 1
  %i.uq = zext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.uq
  %i.us = load i16, ptr %i.ur, align 2
  store i16 %i.us, ptr %i.uo, align 1
  %.not97.i = icmp eq i32 %i.tv, 0
  br i1 %.not97.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ut = mul i32 %i.tv, 5243
  %i.uu = lshr i32 %i.ut, 19                      ; 3 uses
  %.neg100.i = mul nsw i32 %i.uu, -100
  %i.uv = add i32 %.neg100.i, %i.tv               ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.ptr217, i64 12
  %i.ux = shl nuw nsw i32 %i.uu, 1
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.uy
  %i.va = load i16, ptr %i.uz, align 2
  store i16 %i.va, ptr %i.uw, align 1
  %i.vb = getelementptr inbounds nuw i8, ptr %.ptr217, i64 14
  %i.vc = shl i32 %i.uv, 1
  %i.vd = zext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2
  store i16 %i.vf, ptr %i.vb, align 1
  %i.vg = zext nneg i32 %i.uu to i64
  %i.vh = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !81
  %i.vj = zext i8 %i.vi to i64
  %i.vk = zext i32 %i.uv to i64
  %i.vl = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !81
  %i.vn = zext i8 %i.vm to i64
  %.not101.i = icmp eq i32 %i.uv, 0
  %i.vo = add nuw nsw i64 %i.vj, 2
  %i.vp = select i1 %.not101.i, i64 %i.vo, i64 %i.vn
  %.add211 = or disjoint i64 %.add, 16
  %.add212 = sub nsw i64 %.add211, %i.vp
  br label %write_u64_len_16_to_17_trim.exit

bb.as:                                            ; preds = %bb.aq
  %i.vq = zext nneg i32 %i.tx to i64
  %i.vr = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !81
  %i.vt = zext i8 %i.vs to i64
  %i.vu = zext i32 %i.ty to i64
  %i.vv = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !81
  %i.vx = zext i8 %i.vw to i64
  %.not98.i = icmp eq i32 %i.ty, 0
  %i.vy = add nuw nsw i64 %i.vt, 2
  %i.vz = select i1 %.not98.i, i64 %i.vy, i64 %i.vx
  %.add209 = or disjoint i64 %.add, 12
  %.add210 = sub nsw i64 %.add209, %i.vz
  br label %write_u64_len_16_to_17_trim.exit

bb.at:                                            ; preds = %bb.ap
  %.not89.i = icmp eq i32 %i.su, 0
  br i1 %.not89.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.wa = mul i32 %i.su, 5243
  %i.wb = lshr i32 %i.wa, 19                      ; 3 uses
  %.neg91.i = mul nsw i32 %i.wb, -100
  %i.wc = add i32 %.neg91.i, %i.su                ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.ptr217, i64 4
  %i.we = shl nuw nsw i32 %i.wb, 1
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.wf
  %i.wh = load i16, ptr %i.wg, align 2
  store i16 %i.wh, ptr %i.wd, align 1
  %i.wi = getelementptr inbounds nuw i8, ptr %.ptr217, i64 6
  %i.wj = shl i32 %i.wc, 1
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.wk
  %i.wm = load i16, ptr %i.wl, align 2
  store i16 %i.wm, ptr %i.wi, align 1
  %i.wn = zext nneg i32 %i.wb to i64
  %i.wo = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !81
  %i.wq = zext i8 %i.wp to i64
  %i.wr = zext i32 %i.wc to i64
  %i.ws = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !81
  %i.wu = zext i8 %i.wt to i64
  %.not92.i = icmp eq i32 %i.wc, 0
  %i.wv = add nuw nsw i64 %i.wq, 2
  %i.ww = select i1 %.not92.i, i64 %i.wv, i64 %i.wu
  %.add213 = or disjoint i64 %.add, 8
  %.add214 = sub nsw i64 %.add213, %i.ww
  br label %write_u64_len_16_to_17_trim.exit

bb.av:                                            ; preds = %bb.at
  %i.wx = zext i32 %i.tb to i64
  %i.wy = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !81
  %i.xa = zext i8 %i.wz to i64
  %i.xb = zext i32 %i.tc to i64
  %i.xc = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !81
  %i.xe = zext i8 %i.xd to i64
  %.not90.i = icmp eq i32 %i.tc, 0
  %i.xf = select i1 %.not90.i, i64 %i.xa, i64 0
  %.add215 = select i1 %.not226, i64 5, i64 6
  %i.xg = add nuw nsw i64 %i.xf, %i.xe
  %.add216 = sub nsw i64 %.add215, %i.xg
  br label %write_u64_len_16_to_17_trim.exit

write_u64_len_16_to_17_trim.exit:                 ; preds = %bb.ar, %bb.as, %bb.au, %bb.av
  %.1.i.idx = phi i64 [ %.add216, %bb.av ], [ %.add214, %bb.au ], [ %.add212, %bb.ar ], [ %.add210, %bb.as ] ; 2 uses
  %.1.i.ptr = getelementptr inbounds i8, ptr %i.m, i64 %.1.i.idx
  %i.xh = icmp eq i64 %.1.i.idx, 2
  %.neg100 = sext i1 %i.xh to i64
  %i.xi = getelementptr inbounds i8, ptr %.1.i.ptr, i64 %.neg100 ; 2 uses
  %i.xj = add nsw i32 %i.mv, -1
  %i.xk = load i8, ptr %.ptr, align 1, !tbaa !81
  store i8 %i.xk, ptr %i.m, align 1, !tbaa !81
  store i8 46, ptr %.ptr, align 1, !tbaa !81
  store i16 11621, ptr %i.xi, align 1
  %i.xl = icmp sgt i32 %i.mv, 0
  %i.xm = select i1 %i.xl, i64 1, i64 2
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xm ; 5 uses
  %i.xo = tail call i32 @llvm.abs.i32(i32 %i.xj, i1 true) ; 5 uses
  %i.xp = icmp samesign ult i32 %i.xo, 100
  br i1 %i.xp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %write_u64_len_16_to_17_trim.exit
  %i.xq = icmp samesign ult i32 %i.xo, 10         ; 2 uses
  %i.xr = shl nuw nsw i32 %i.xo, 1
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.xs
  %.neg22.i135 = sext i1 %i.xq to i64
  %i.xu = zext i1 %i.xq to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xu
  %i.xw = load i16, ptr %i.xv, align 1
  store i16 %i.xw, ptr %i.xn, align 1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 2
  %i.xy = getelementptr inbounds i8, ptr %i.xx, i64 %.neg22.i135
  br label %write_inf_or_nan.exit

bb.ax:                                            ; preds = %write_u64_len_16_to_17_trim.exit
  %i.xz = mul nuw nsw i32 %i.xo, 656
  %i.ya = lshr i32 %i.xz, 16                      ; 2 uses
  %.neg.i133 = mul i32 %i.ya, 2147483548
  %i.yb = add i32 %.neg.i133, %i.xo
  %i.yc = trunc nuw nsw i32 %i.ya to i8
  %i.yd = add nuw nsw i8 %i.yc, 48
  store i8 %i.yd, ptr %i.xn, align 1, !tbaa !81
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xn, i64 1
  %i.yf = shl i32 %i.yb, 1
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.yg
  %i.yi = load i16, ptr %i.yh, align 2
  store i16 %i.yi, ptr %i.ye, align 1
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xn, i64 3
  br label %write_inf_or_nan.exit

bb.ay:                                            ; preds = %bb.j
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.bb, label %bb.az, !prof !8

bb.az:                                            ; preds = %bb.ay
  %i.yk = shl nuw nsw i64 %i.a, 3
  %i.yl = zext nneg i64 %i.yk to i128             ; 2 uses
  %i.ym = mul nuw nsw i128 %i.yl, 7784369436827535057
  %i.yn = lshr i128 %i.ym, 64
  %i.yo = mul nuw nsw i128 %i.yl, 11392378155556871081
  %i.yp = add nuw nsw i128 %i.yn, %i.yo           ; 2 uses
  %i.yq = lshr i128 %i.yp, 64
  %i.yr = trunc nuw nsw i128 %i.yq to i64         ; 2 uses
  %i.ys = trunc i128 %i.yp to i64                 ; 3 uses
  %i.yt = urem i64 %i.yr, 10                      ; 3 uses
  %i.yu = sub nsw i64 %i.yr, %i.yt
  %i.yv = tail call i64 @llvm.fshl.i64(i64 %i.yt, i64 %i.ys, i64 60) ; 3 uses
  %i.yw = icmp eq i64 %i.ys, -9223372036854775808
  br i1 %i.yw, label %bb.bb, label %bb.ba, !prof !8

bb.ba:                                            ; preds = %bb.az
  switch i64 %i.yv, label %.critedge.i [
    i64 8681120507179251990, label %bb.bb
    i64 8681120507179251989, label %bb.bb
    i64 2848094538889217770, label %bb.bb
  ], !prof !321

.critedge.i:                                      ; preds = %bb.ba
  %.not93.i = icmp ugt i64 %i.yv, 2848094538889217770
  %i.yx = add i64 %i.yv, -8681120507179251990
  %i.yy = icmp ult i64 %i.yx, 6917529027641081856
  %.lobit.i = lshr i64 %i.ys, 63
  %i.yz = add nuw nsw i64 %i.yt, %.lobit.i
  %i.za = select i1 %.not93.i, i64 %i.yz, i64 0
  %i.zb = select i1 %i.yy, i64 10, i64 %i.za
  %i.zc = add nsw i64 %i.yu, %i.zb
  br label %f64_bin_to_dec.exit

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.az, %bb.ay
  %i.zd = shl nuw nsw i64 %i.a, 5                 ; 3 uses
  %i.ze = or disjoint i64 %i.zd, 16
  %i.zf = add nsw i64 %i.zd, -16
  %i.zg = zext i64 %i.zf to i128                  ; 2 uses
  %i.zh = mul nuw nsw i128 %i.zg, 7784369436827535058
  %i.zi = lshr i128 %i.zh, 64
  %i.zj = mul nuw i128 %i.zg, 11392378155556871081
  %i.zk = add nuw i128 %i.zi, %i.zj               ; 2 uses
  %i.zl = lshr i128 %i.zk, 64
  %i.zm = trunc nuw i128 %i.zl to i64
  %i.zn = and i128 %i.zk, 18446744073709551614
  %i.zo = icmp ne i128 %i.zn, 0
  %i.zp = zext i1 %i.zo to i64
  %i.zq = or i64 %i.zp, %i.zm
  %i.zr = zext nneg i64 %i.zd to i128             ; 2 uses
  %i.zs = mul nuw nsw i128 %i.zr, 7784369436827535058
  %i.zt = lshr i128 %i.zs, 64
  %i.zu = mul nuw nsw i128 %i.zr, 11392378155556871081
  %i.zv = add nuw nsw i128 %i.zt, %i.zu           ; 2 uses
  %i.zw = lshr i128 %i.zv, 64
  %i.zx = trunc nuw nsw i128 %i.zw to i64         ; 5 uses
  %i.zy = and i128 %i.zv, 18446744073709551614
  %i.zz = icmp ne i128 %i.zy, 0
  %i.aaa = zext i1 %i.zz to i64
  %i.aab = or i64 %i.aaa, %i.zx                   ; 2 uses
  %i.aac = zext nneg i64 %i.ze to i128            ; 2 uses
  %i.aad = mul nuw nsw i128 %i.aac, 7784369436827535058
  %i.aae = lshr i128 %i.aad, 64
  %i.aaf = mul nuw nsw i128 %i.aac, 11392378155556871081
  %i.aag = add nuw nsw i128 %i.aae, %i.aaf        ; 2 uses
  %i.aah = lshr i128 %i.aag, 64
  %i.aai = trunc nuw nsw i128 %i.aah to i64
  %i.aaj = and i128 %i.aag, 18446744073709551614
  %i.aak = icmp ne i128 %i.aaj, 0
  %i.aal = zext i1 %i.aak to i64
  %i.aam = or i64 %i.aal, %i.aai
  %i.aan = and i64 %1, 1                          ; 2 uses
  %i.aao = add nuw i64 %i.zq, %i.aan              ; 2 uses
  %i.aap = sub nuw nsw i64 %i.aam, %i.aan         ; 2 uses
  %i.aaq = lshr i64 %i.zx, 2                      ; 2 uses
  %i.aar = icmp samesign ugt i64 %i.zx, 39
  br i1 %i.aar, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.aas = udiv i64 %i.zx, 40                     ; 2 uses
  %i.aat = mul nuw nsw i64 %i.aas, 40             ; 2 uses
  %i.aau = add nuw nsw i64 %i.aat, 40
  %i.aav = icmp samesign uge i64 %i.aap, %i.aau   ; 2 uses
  %i.aaw = icmp ugt i64 %i.aao, %i.aat
  %.not94.i = xor i1 %i.aaw, %i.aav
  br i1 %.not94.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aax = mul nuw nsw i64 %i.aas, 10
  %i.aay = select i1 %i.aav, i64 10, i64 0
  %i.aaz = add nuw nsw i64 %i.aay, %i.aax
  br label %f64_bin_to_dec.exit

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.aba = and i64 %i.zx, 9223372036854775804     ; 3 uses
  %i.abb = add nuw nsw i64 %i.aba, 4
  %i.abc = icmp samesign uge i64 %i.aap, %i.abb   ; 2 uses
  %i.abd = or disjoint i64 %i.aba, 2              ; 2 uses
  %i.abe = icmp samesign ugt i64 %i.aab, %i.abd
  %i.abf = icmp eq i64 %i.aab, %i.abd
  %i.abg = trunc i64 %i.aaq to i1
  %i.abh = and i1 %i.abf, %i.abg
  %narrow230 = or i1 %i.abe, %i.abh
  %i.abi = icmp ugt i64 %i.aao, %i.aba
  %.not95.i = xor i1 %i.abi, %i.abc
  %.v231 = select i1 %.not95.i, i1 %narrow230, i1 %i.abc
  %i.abj = zext i1 %.v231 to i64
  %i.abk = add nuw nsw i64 %i.aaq, %i.abj
  br label %f64_bin_to_dec.exit

f64_bin_to_dec.exit:                              ; preds = %.critedge.i, %bb.bd, %bb.be
  %.0202 = phi i64 [ %i.abk, %bb.be ], [ %i.aaz, %bb.bd ], [ %i.zc, %.critedge.i ] ; 25 uses
end_hunk_0
begin_hunk_1_@write_f64_raw_fixed:bb.a
  br label %f64_bin_to_dec.exit

._crit_edge:                                      ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bf
  %i.yn = icmp ne i32 %i.d, 1
  %i.yo = and i1 %i.id, %i.yn                     ; 2 uses
  %i.yp = shl nuw nsw i64 %i.q, 2                 ; 3 uses
  %i.yq = add nsw i64 %i.yp, -2
  %i.yr = zext i1 %i.yo to i64
  %i.ys = or disjoint i64 %i.yq, %i.yr
  %i.yt = or disjoint i64 %i.yp, 2
  %.neg.i119 = select i1 %i.yo, i32 -131237, i32 0
  %i.yu = add nsw i32 %.neg.i119, %.pre
  %i.yv = ashr i32 %i.yu, 20                      ; 4 uses
  %i.yw = mul nsw i32 %i.yv, -217707
  %i.yx = ashr i32 %i.yw, 16
  %i.yy = add nsw i32 %i.d, -1074
  %i.yz = add nsw i32 %i.yy, %i.yx
  %.neg197 = mul nsw i32 %i.yv, -2
  %i.za = sext i32 %.neg197 to i64
  %i.zb = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.za ; 2 uses
  %i.zc = getelementptr i8, ptr %i.zb, i64 5488
  %i.zd = load i64, ptr %i.zc, align 16, !tbaa !91
  %i.ze = getelementptr i8, ptr %i.zb, i64 5496
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !91
  %i.zg = add i64 %i.zf, 1
  %i.zh = zext i32 %i.yz to i64                   ; 3 uses
  %i.zi = shl i64 %i.ys, %i.zh
  %i.zj = zext i64 %i.zi to i128                  ; 2 uses
  %i.zk = zext i64 %i.zg to i128                  ; 3 uses
  %i.zl = mul nuw i128 %i.zk, %i.zj
  %i.zm = lshr i128 %i.zl, 64
  %i.zn = zext i64 %i.zd to i128                  ; 3 uses
  %i.zo = mul nuw i128 %i.zn, %i.zj
  %i.zp = add nuw i128 %i.zm, %i.zo               ; 2 uses
  %i.zq = lshr i128 %i.zp, 64
  %i.zr = trunc nuw i128 %i.zq to i64
  %i.zs = and i128 %i.zp, 18446744073709551614
  %i.zt = icmp ne i128 %i.zs, 0
  %i.zu = zext i1 %i.zt to i64
  %i.zv = or i64 %i.zu, %i.zr
  %i.zw = shl i64 %i.yp, %i.zh
  %i.zx = zext i64 %i.zw to i128                  ; 2 uses
  %i.zy = mul nuw i128 %i.zk, %i.zx
  %i.zz = lshr i128 %i.zy, 64
  %i.aaa = mul nuw i128 %i.zn, %i.zx
  %i.aab = add nuw i128 %i.zz, %i.aaa             ; 2 uses
  %i.aac = lshr i128 %i.aab, 64
  %i.aad = trunc nuw i128 %i.aac to i64           ; 5 uses
  %i.aae = and i128 %i.aab, 18446744073709551614
  %i.aaf = icmp ne i128 %i.aae, 0
  %i.aag = zext i1 %i.aaf to i64
  %i.aah = or i64 %i.aag, %i.aad                  ; 2 uses
  %i.aai = shl i64 %i.yt, %i.zh
  %i.aaj = zext i64 %i.aai to i128                ; 2 uses
  %i.aak = mul nuw i128 %i.zk, %i.aaj
  %i.aal = lshr i128 %i.aak, 64
  %i.aam = mul nuw i128 %i.zn, %i.aaj
  %i.aan = add nuw i128 %i.aal, %i.aam            ; 2 uses
  %i.aao = lshr i128 %i.aan, 64
  %i.aap = trunc nuw i128 %i.aao to i64
  %i.aaq = and i128 %i.aan, 18446744073709551614
  %i.aar = icmp ne i128 %i.aaq, 0
  %i.aas = zext i1 %i.aar to i64
  %i.aat = or i64 %i.aas, %i.aap
  %i.aau = and i64 %1, 1                          ; 2 uses
  %i.aav = add i64 %i.zv, %i.aau                  ; 2 uses
  %i.aaw = sub i64 %i.aat, %i.aau                 ; 2 uses
  %i.aax = lshr i64 %i.aad, 2                     ; 2 uses
  %i.aay = icmp ugt i64 %i.aad, 39
  br i1 %i.aay, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %._crit_edge
  %i.aaz = udiv i64 %i.aad, 40                    ; 2 uses
  %i.aba = mul nuw i64 %i.aaz, 40                 ; 2 uses
  %i.abb = add i64 %i.aba, 40
  %i.abc = icmp uge i64 %i.aaw, %i.abb            ; 2 uses
  %i.abd = icmp ugt i64 %i.aav, %i.aba
  %.not94.i = xor i1 %i.abd, %i.abc
  br i1 %.not94.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.abe = mul nuw nsw i64 %i.aaz, 10
  %i.abf = select i1 %i.abc, i64 10, i64 0
  %i.abg = add nuw nsw i64 %i.abf, %i.abe
  br label %f64_bin_to_dec.exit

bb.bi:                                            ; preds = %bb.bg, %._crit_edge
  %i.abh = and i64 %i.aad, -4                     ; 3 uses
  %i.abi = add i64 %i.abh, 4
  %i.abj = icmp uge i64 %i.aaw, %i.abi            ; 2 uses
  %i.abk = or disjoint i64 %i.abh, 2              ; 2 uses
  %i.abl = icmp ugt i64 %i.aah, %i.abk
  %i.abm = icmp eq i64 %i.aah, %i.abk
  %i.abn = trunc i64 %i.aax to i1
  %i.abo = and i1 %i.abm, %i.abn
  %narrow = or i1 %i.abl, %i.abo
  %i.abp = icmp ugt i64 %i.aav, %i.abh
  %.not95.i = xor i1 %i.abp, %i.abj
  %.v = select i1 %.not95.i, i1 %narrow, i1 %i.abj
  %i.abq = zext i1 %.v to i64
  %i.abr = add nuw nsw i64 %i.aax, %i.abq
  br label %f64_bin_to_dec.exit

f64_bin_to_dec.exit:                              ; preds = %.critedge.i, %bb.bh, %bb.bi
  %.3186 = phi i64 [ %i.abr, %bb.bi ], [ %i.abg, %bb.bh ], [ %i.ym, %.critedge.i ] ; 3 uses
  %.3 = phi i32 [ %i.yv, %bb.bi ], [ %i.yv, %bb.bh ], [ %i.xa, %.critedge.i ]
  %i.abs = icmp ugt i64 %.3186, 9999999999999999
  %.ptr = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.abt = udiv i64 %.3186, 100000000             ; 2 uses
  %i.abu = trunc i64 %i.abt to i32                ; 2 uses
  %.neg.i120 = mul i64 %i.abt, 4194967296
  %i.abv = add i64 %.neg.i120, %.3186             ; 2 uses
  %i.abw = trunc i64 %i.abv to i32                ; 2 uses
  %i.abx = udiv i32 %i.abu, 10000                 ; 3 uses
  %.neg86.i = mul i32 %i.abx, -10000
  %i.aby = add i32 %.neg86.i, %i.abu              ; 5 uses
  %i.abz = zext nneg i32 %i.abx to i64
  %i.aca = mul nuw nsw i64 %i.abz, 167773
  %i.acb = lshr i64 %i.aca, 24
  %i.acc = trunc nuw nsw i64 %i.acb to i32        ; 3 uses
  %i.acd = mul nuw nsw i32 %i.acc, 41
  %i.ace = lshr i32 %i.acd, 12                    ; 3 uses
  %.neg87.i = mul nsw i32 %i.ace, -100
  %i.acf = add nsw i32 %.neg87.i, %i.acc          ; 2 uses
  %.neg88.i = mul nsw i32 %i.acc, -100
  %i.acg = add nsw i32 %.neg88.i, %i.abx          ; 3 uses
  %i.ach = trunc nuw nsw i32 %i.ace to i8
  %i.aci = add nuw nsw i8 %i.ach, 48
  store i8 %i.aci, ptr %.ptr, align 1, !tbaa !81
  %.not218 = icmp eq i32 %i.ace, 0                ; 2 uses
  %.add = select i1 %.not218, i64 1, i64 2        ; 4 uses
  %.ptr209 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.add ; 10 uses
  %i.acj = shl nsw i32 %i.acf, 1
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ack
  %i.acm = load i16, ptr %i.acl, align 2
  store i16 %i.acm, ptr %.ptr209, align 1
  %i.acn = getelementptr inbounds nuw i8, ptr %.ptr209, i64 2
  %i.aco = shl nsw i32 %i.acg, 1
  %i.acp = zext i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.acp
  %i.acr = load i16, ptr %i.acq, align 2
  store i16 %i.acr, ptr %i.acn, align 1
  %.not.i121 = icmp eq i32 %i.abw, 0
  br i1 %.not.i121, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %f64_bin_to_dec.exit
  %i.acs = mul i32 %i.aby, 5243
  %i.act = lshr i32 %i.acs, 19                    ; 2 uses
  %.neg94.i = mul i32 %i.act, 2147483548
  %i.acu = add i32 %.neg94.i, %i.aby
  %i.acv = and i64 %i.abv, 4294967295
  %i.acw = mul nuw nsw i64 %i.acv, 109951163
  %i.acx = lshr i64 %i.acw, 40
  %i.acy = trunc nuw nsw i64 %i.acx to i32        ; 3 uses
  %.neg95.i = mul i32 %i.acy, -10000
  %i.acz = add i32 %.neg95.i, %i.abw              ; 3 uses
  %i.ada = mul nuw i32 %i.acy, 5243
  %i.adb = lshr i32 %i.ada, 19                    ; 3 uses
  %.neg96.i = mul nsw i32 %i.adb, -100
  %i.adc = add nsw i32 %.neg96.i, %i.acy          ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.ptr209, i64 4
  %i.ade = shl nuw nsw i32 %i.act, 1
  %i.adf = zext nneg i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adf
  %i.adh = load i16, ptr %i.adg, align 2
  store i16 %i.adh, ptr %i.add, align 1
  %i.adi = getelementptr inbounds nuw i8, ptr %.ptr209, i64 6
  %i.adj = shl i32 %i.acu, 1
  %i.adk = zext i32 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adk
  %i.adm = load i16, ptr %i.adl, align 2
  store i16 %i.adm, ptr %i.adi, align 1
  %i.adn = getelementptr inbounds nuw i8, ptr %.ptr209, i64 8
  %i.ado = shl nuw nsw i32 %i.adb, 1
  %i.adp = zext nneg i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adp
  %i.adr = load i16, ptr %i.adq, align 2
  store i16 %i.adr, ptr %i.adn, align 1
  %i.ads = getelementptr inbounds nuw i8, ptr %.ptr209, i64 10
  %i.adt = shl nsw i32 %i.adc, 1
  %i.adu = zext i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.adu
  %i.adw = load i16, ptr %i.adv, align 2
  store i16 %i.adw, ptr %i.ads, align 1
  %.not97.i = icmp eq i32 %i.acz, 0
  br i1 %.not97.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.adx = mul i32 %i.acz, 5243
  %i.ady = lshr i32 %i.adx, 19                    ; 3 uses
  %.neg100.i = mul nsw i32 %i.ady, -100
  %i.adz = add i32 %.neg100.i, %i.acz             ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.ptr209, i64 12
  %i.aeb = shl nuw nsw i32 %i.ady, 1
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aec
  %i.aee = load i16, ptr %i.aed, align 2
  store i16 %i.aee, ptr %i.aea, align 1
  %i.aef = getelementptr inbounds nuw i8, ptr %.ptr209, i64 14
  %i.aeg = shl i32 %i.adz, 1
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.aeh
  %i.aej = load i16, ptr %i.aei, align 2
  store i16 %i.aej, ptr %i.aef, align 1
  %i.aek = zext nneg i32 %i.ady to i64
  %i.ael = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !81
  %i.aen = zext i8 %i.aem to i64
  %i.aeo = zext i32 %i.adz to i64
  %i.aep = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !81
  %i.aer = zext i8 %i.aeq to i64
  %.not101.i = icmp eq i32 %i.adz, 0
  %i.aes = add nuw nsw i64 %i.aen, 2
  %i.aet = select i1 %.not101.i, i64 %i.aes, i64 %i.aer
  %.add203 = or disjoint i64 %.add, 16
  %.add204 = sub nsw i64 %.add203, %i.aet
  br label %write_u64_len_16_to_17_trim.exit

bb.bl:                                            ; preds = %bb.bj
  %i.aeu = zext nneg i32 %i.adb to i64
  %i.aev = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.aeu
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !81
  %i.aex = zext i8 %i.aew to i64
  %i.aey = zext i32 %i.adc to i64
  %i.aez = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !81
  %i.afb = zext i8 %i.afa to i64
  %.not98.i = icmp eq i32 %i.adc, 0
  %i.afc = add nuw nsw i64 %i.aex, 2
  %i.afd = select i1 %.not98.i, i64 %i.afc, i64 %i.afb
  %.add201 = or disjoint i64 %.add, 12
  %.add202 = sub nsw i64 %.add201, %i.afd
  br label %write_u64_len_16_to_17_trim.exit

bb.bm:                                            ; preds = %f64_bin_to_dec.exit
  %.not89.i = icmp eq i32 %i.aby, 0
  br i1 %.not89.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.afe = mul i32 %i.aby, 5243
  %i.aff = lshr i32 %i.afe, 19                    ; 3 uses
  %.neg91.i = mul nsw i32 %i.aff, -100
  %i.afg = add i32 %.neg91.i, %i.aby              ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.ptr209, i64 4
  %i.afi = shl nuw nsw i32 %i.aff, 1
  %i.afj = zext nneg i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.afj
  %i.afl = load i16, ptr %i.afk, align 2
  store i16 %i.afl, ptr %i.afh, align 1
  %i.afm = getelementptr inbounds nuw i8, ptr %.ptr209, i64 6
  %i.afn = shl i32 %i.afg, 1
  %i.afo = zext i32 %i.afn to i64
  %i.afp = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.afo
  %i.afq = load i16, ptr %i.afp, align 2
  store i16 %i.afq, ptr %i.afm, align 1
  %i.afr = zext nneg i32 %i.aff to i64
  %i.afs = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !81
  %i.afu = zext i8 %i.aft to i64
  %i.afv = zext i32 %i.afg to i64
  %i.afw = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !81
  %i.afy = zext i8 %i.afx to i64
  %.not92.i = icmp eq i32 %i.afg, 0
  %i.afz = add nuw nsw i64 %i.afu, 2
  %i.aga = select i1 %.not92.i, i64 %i.afz, i64 %i.afy
  %.add205 = or disjoint i64 %.add, 8
  %.add206 = sub nsw i64 %.add205, %i.aga
  br label %write_u64_len_16_to_17_trim.exit

bb.bo:                                            ; preds = %bb.bm
  %i.agb = zext i32 %i.acf to i64
  %i.agc = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !81
  %i.age = zext i8 %i.agd to i64
  %i.agf = zext i32 %i.acg to i64
  %i.agg = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.agf
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !81
  %i.agi = zext i8 %i.agh to i64
  %.not90.i = icmp eq i32 %i.acg, 0
  %i.agj = select i1 %.not90.i, i64 %i.age, i64 0
  %.add207 = select i1 %.not218, i64 5, i64 6
  %i.agk = add nuw nsw i64 %i.agj, %i.agi
  %.add208 = sub nsw i64 %.add207, %i.agk
  br label %write_u64_len_16_to_17_trim.exit

write_u64_len_16_to_17_trim.exit:                 ; preds = %bb.bk, %bb.bl, %bb.bn, %bb.bo
  %.1.i.idx = phi i64 [ %.add208, %bb.bo ], [ %.add206, %bb.bn ], [ %.add204, %bb.bk ], [ %.add202, %bb.bl ] ; 2 uses
  %.1.i.ptr = getelementptr inbounds i8, ptr %i.m, i64 %.1.i.idx
  %i.agl = icmp eq i64 %.1.i.idx, 2
  %.neg = sext i1 %i.agl to i64
  %i.agm = getelementptr inbounds i8, ptr %.1.i.ptr, i64 %.neg ; 2 uses
  %i.agn = select i1 %i.abs, i32 16, i32 15
  %i.ago = add nsw i32 %i.agn, %.3                ; 2 uses
  %i.agp = load i8, ptr %.ptr, align 1, !tbaa !81
  store i8 %i.agp, ptr %i.m, align 1, !tbaa !81
  store i8 46, ptr %.ptr, align 1, !tbaa !81
  store i16 11621, ptr %i.agm, align 1
  %i.agq = icmp sgt i32 %i.ago, -1
  %i.agr = select i1 %i.agq, i64 1, i64 2
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agr ; 5 uses
  %i.agt = tail call i32 @llvm.abs.i32(i32 %i.ago, i1 true) ; 5 uses
  %i.agu = icmp samesign ult i32 %i.agt, 100
  br i1 %i.agu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %write_u64_len_16_to_17_trim.exit
  %i.agv = icmp samesign ult i32 %i.agt, 10       ; 2 uses
  %i.agw = shl nuw nsw i32 %i.agt, 1
  %i.agx = zext nneg i32 %i.agw to i64
  %i.agy = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.agx
  %.neg22.i = sext i1 %i.agv to i64
  %i.agz = zext i1 %i.agv to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agy, i64 %i.agz
  %i.ahb = load i16, ptr %i.aha, align 1
  store i16 %i.ahb, ptr %i.ags, align 1
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ags, i64 2
  %i.ahd = getelementptr inbounds i8, ptr %i.ahc, i64 %.neg22.i
  br label %write_inf_or_nan.exit

bb.bq:                                            ; preds = %write_u64_len_16_to_17_trim.exit
  %i.ahe = mul nuw nsw i32 %i.agt, 656
  %i.ahf = lshr i32 %i.ahe, 16                    ; 2 uses
  %.neg.i122 = mul i32 %i.ahf, 2147483548
  %i.ahg = add i32 %.neg.i122, %i.agt
  %i.ahh = trunc nuw nsw i32 %i.ahf to i8
  %i.ahi = add nuw nsw i8 %i.ahh, 48
  store i8 %i.ahi, ptr %i.ags, align 1, !tbaa !81
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ags, i64 1
  %i.ahk = shl i32 %i.ahg, 1
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ahl
  %i.ahn = load i16, ptr %i.ahm, align 2
  store i16 %i.ahn, ptr %i.ahj, align 1
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ags, i64 3
  br label %write_inf_or_nan.exit

bb.br:                                            ; preds = %bb.j
  store i32 3157552, ptr %i.m, align 1
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  br label %write_inf_or_nan.exit

write_inf_or_nan.exit:                            ; preds = %bb.bq, %bb.bp, %bb.bb, %bb.aj, %bb.ae, %bb.g, %bb.f, %bb.d, %bb.c, %bb.br, %write_u64_len_1_to_16.exit, %bb.i
  %.2102 = phi ptr [ %i.ahp, %bb.br ], [ %i.p, %bb.i ], [ %i.ib, %write_u64_len_1_to_16.exit ], [ null, %bb.d ], [ %i.kw, %bb.aj ], [ %i.g, %bb.c ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.wz, %bb.bb ], [ %i.jp, %bb.ae ], [ %i.ahd, %bb.bp ], [ %i.aho, %bb.bq ]
  ret ptr %.2102
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @write_f32_raw(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = bitcast i64 %1 to double
  %i.b = fptrunc double %i.a to float             ; 2 uses
  %i.c = bitcast float %i.b to i32                ; 6 uses
  %i.d = and i32 %i.c, 8388607                    ; 6 uses
  %i.e = lshr i32 %i.c, 23
  %i.f = and i32 %i.e, 255                        ; 7 uses
  %i.g = icmp eq i32 %i.f, 255
  br i1 %i.g, label %bb.b, label %bb.h, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %2, 16
  %.not185 = icmp eq i32 %i.h, 0
  br i1 %.not185, label %bb.d, label %bb.c, !prof !25

bb.c:                                             ; preds = %bb.b
  store i32 1819047278, ptr %0, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %write_inf_or_nan.exit

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %2, 8
  %.not186 = icmp eq i32 %i.j, 0
  br i1 %.not186, label %write_inf_or_nan.exit, label %bb.e, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.d, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 45, ptr %0, align 1, !tbaa !81
  %.lobit187 = lshr i32 %i.c, 31
  %i.l = zext nneg i32 %.lobit187 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 2 uses
  store i64 8751735898823355977, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %write_inf_or_nan.exit

bb.g:                                             ; preds = %bb.e
  store i32 5136718, ptr %0, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %write_inf_or_nan.exit

bb.h:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !81
  %.lobit = lshr i32 %i.c, 31
  %i.p = zext nneg i32 %.lobit to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 22 uses
  %i.r = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 3157552, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  br label %write_inf_or_nan.exit

bb.j:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ag, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.t = or disjoint i32 %i.d, 8388608            ; 4 uses
  %i.u = add nsw i32 %i.f, -150                   ; 2 uses
  %i.v = add nsw i32 %i.f, -127
  %or.cond = icmp ult i32 %i.v, 24
  br i1 %or.cond, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.w = tail call range(i32 0, 24) i32 @llvm.cttz.i32(i32 %i.t, i1 true)
  %i.x = sub nuw nsw i32 150, %i.f                ; 2 uses
  %.not100 = icmp samesign ult i32 %i.w, %i.x
  br i1 %.not100, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = lshr i32 %i.t, %i.x                      ; 13 uses
  %i.z = icmp samesign ult i32 %i.y, 100
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp samesign ult i32 %i.y, 10          ; 2 uses
  %i.ab = shl nuw nsw i32 %i.y, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ac
  %.neg70.i112 = sext i1 %i.aa to i64
  %i.ae = zext i1 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1
  store i16 %i.ag, ptr %i.q, align 1
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %.neg70.i112
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  br label %write_u32_len_1_to_8.exit113

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp samesign ult i32 %i.y, 10000
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = mul nuw nsw i32 %i.y, 5243
  %i.al = lshr i32 %i.ak, 19                      ; 2 uses
  %.neg68.i110 = mul nsw i32 %i.al, -100
  %i.am = add nsw i32 %.neg68.i110, %i.y
  %i.an = icmp samesign ult i32 %i.y, 1000        ; 2 uses
  %i.ao = shl nuw nsw i32 %i.al, 1
end_hunk_1
begin_hunk_2_@write_f32_raw:bb.a
  %i.dv = shl i32 %i.t, %i.du
  %i.dw = zext i32 %i.dv to i128
  %i.dx = zext i64 %i.dt to i128
  %i.dy = mul nuw nsw i128 %i.dx, %i.dw           ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = trunc i128 %i.dy to i64                 ; 2 uses
  %i.eb = trunc nuw i128 %i.dz to i32             ; 2 uses
  %i.ec = lshr i64 %i.ea, 32                      ; 2 uses
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = urem i32 %i.eb, 10                      ; 3 uses
  %i.ef = sub i32 %i.eb, %i.ee
  %i.eg = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ed, i32 28) ; 3 uses
  %i.eh = sub nsw i32 36, %i.do
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = lshr i64 %i.dt, %i.ei
  %i.ek = trunc i64 %i.ej to i32                  ; 3 uses
  %i.el = icmp eq i64 %i.ec, 2147483648
  br i1 %i.el, label %._crit_edge, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %.not97.i117 = icmp ugt i32 %i.eg, %i.ek
  %i.em = icmp eq i32 %i.eg, %i.ek
  br i1 %i.em, label %._crit_edge, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.en = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.eo = add i32 %i.en, 1610612737
  %i.ep = icmp ult i32 %i.eo, 2
  br i1 %i.ep, label %._crit_edge, label %.critedge.i118, !prof !8

.critedge.i118:                                   ; preds = %bb.w
  %i.eq = icmp ugt i32 %i.en, -1610612737
  %.lobit.i119 = lshr i64 %i.ea, 63
  %i.er = trunc nuw nsw i64 %.lobit.i119 to i32
  %i.es = add nuw nsw i32 %i.ee, %i.er
  %i.et = select i1 %.not97.i117, i32 %i.es, i32 0
  %i.eu = select i1 %i.eq, i32 10, i32 %i.et
  %i.ev = add i32 %i.ef, %i.eu
  br label %f32_bin_to_dec.exit123

._crit_edge:                                      ; preds = %bb.t, %bb.w, %bb.v, %bb.u
  %i.ew = icmp ne i32 %i.f, 1
  %i.ex = and i1 %.not.i116, %i.ew                ; 2 uses
  %i.ey = shl nuw nsw i32 %i.t, 2                 ; 3 uses
  %i.ez = add nsw i32 %i.ey, -2
  %i.fa = zext i1 %i.ex to i32
  %i.fb = or disjoint i32 %i.ez, %i.fa
  %i.fc = or disjoint i32 %i.ey, 2
  %.neg.i120 = select i1 %i.ex, i32 -131237, i32 0
  %i.fd = add nsw i32 %.neg.i120, %.pre
  %i.fe = ashr i32 %i.fd, 20                      ; 4 uses
  %i.ff = mul nsw i32 %i.fe, -217707
  %i.fg = ashr i32 %i.ff, 16
  %i.fh = add nsw i32 %i.f, -149
  %i.fi = add nsw i32 %i.fh, %i.fg                ; 3 uses
  %i.fj = shl nsw i32 %i.fe, 1
  %i.fk = sub nsw i32 686, %i.fj
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr @pow10_sig_table, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 16, !tbaa !91
  %i.fo = add i64 %i.fn, 1
  %i.fp = shl i32 %i.fb, %i.fi
  %i.fq = zext i32 %i.fp to i128
  %i.fr = zext i64 %i.fo to i128                  ; 3 uses
  %i.fs = mul nuw nsw i128 %i.fr, %i.fq           ; 2 uses
  %i.ft = lshr i128 %i.fs, 64
  %i.fu = trunc nuw i128 %i.ft to i32
  %i.fv = and i128 %i.fs, 18446744065119617024
  %i.fw = icmp ne i128 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %i.fy = or i32 %i.fx, %i.fu
  %i.fz = shl i32 %i.ey, %i.fi
  %i.ga = zext i32 %i.fz to i128
  %i.gb = mul nuw nsw i128 %i.fr, %i.ga           ; 2 uses
  %i.gc = lshr i128 %i.gb, 64
  %i.gd = trunc nuw i128 %i.gc to i32             ; 5 uses
  %i.ge = and i128 %i.gb, 18446744065119617024
  %i.gf = icmp ne i128 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %i.gh = or i32 %i.gg, %i.gd                     ; 2 uses
  %i.gi = shl i32 %i.fc, %i.fi
  %i.gj = zext i32 %i.gi to i128
  %i.gk = mul nuw nsw i128 %i.fr, %i.gj           ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = trunc nuw i128 %i.gl to i32
  %i.gn = and i128 %i.gk, 18446744065119617024
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = or i32 %i.gp, %i.gm
  %i.gr = and i32 %i.c, 1                         ; 2 uses
  %i.gs = add i32 %i.fy, %i.gr                    ; 2 uses
  %i.gt = sub i32 %i.gq, %i.gr                    ; 2 uses
  %i.gu = lshr i32 %i.gd, 2                       ; 2 uses
  %i.gv = icmp ugt i32 %i.gd, 39
  br i1 %i.gv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %._crit_edge
  %i.gw = udiv i32 %i.gd, 40                      ; 2 uses
  %i.gx = mul nuw i32 %i.gw, 40                   ; 2 uses
  %i.gy = add i32 %i.gx, 40
  %i.gz = icmp uge i32 %i.gt, %i.gy               ; 2 uses
  %i.ha = icmp ugt i32 %i.gs, %i.gx
  %.not98.i122 = xor i1 %i.ha, %i.gz
  br i1 %.not98.i122, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = mul nuw nsw i32 %i.gw, 10
  %i.hc = select i1 %i.gz, i32 10, i32 0
  %i.hd = add nuw nsw i32 %i.hc, %i.hb
  br label %f32_bin_to_dec.exit123

bb.z:                                             ; preds = %bb.x, %._crit_edge
  %i.he = and i32 %i.gd, -4                       ; 3 uses
  %i.hf = add i32 %i.he, 4
  %i.hg = icmp uge i32 %i.gt, %i.hf               ; 2 uses
  %i.hh = or disjoint i32 %i.he, 2                ; 2 uses
  %i.hi = icmp ugt i32 %i.gh, %i.hh
  %i.hj = icmp eq i32 %i.gh, %i.hh
  %i.hk = trunc i32 %i.gu to i1
  %i.hl = and i1 %i.hj, %i.hk
  %narrow = or i1 %i.hi, %i.hl
  %i.hm = icmp ugt i32 %i.gs, %i.he
  %.not99.i121 = xor i1 %i.hm, %i.hg
  %.v = select i1 %.not99.i121, i1 %narrow, i1 %i.hg
  %i.hn = zext i1 %.v to i32
  %i.ho = add nuw nsw i32 %i.gu, %i.hn
  br label %f32_bin_to_dec.exit123

f32_bin_to_dec.exit123:                           ; preds = %.critedge.i118, %bb.y, %bb.z
  %.1175 = phi i32 [ %i.ho, %bb.z ], [ %i.hd, %bb.y ], [ %i.ev, %.critedge.i118 ] ; 6 uses
  %.1 = phi i32 [ %i.fe, %bb.z ], [ %i.fe, %bb.y ], [ %i.dl, %.critedge.i118 ]
  %i.hp = icmp ugt i32 %.1175, 9999999
  %i.hq = select i1 %i.hp, i32 8, i32 7
  %i.hr = icmp ugt i32 %.1175, 99999999
  %i.hs = zext i1 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hq, %i.hs
  %i.hu = add nsw i32 %i.ht, %.1                  ; 8 uses
  %i.hv = add nsw i32 %i.hu, 5
  %or.cond3 = icmp ult i32 %i.hv, 27
  br i1 %or.cond3, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %f32_bin_to_dec.exit123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.q, i8 48, i64 32, i1 false)
  %i.hw = icmp sgt i32 %i.hu, 0                   ; 2 uses
  %i.hx = sub nsw i32 2, %i.hu
  %i.hy = select i1 %i.hw, i32 0, i32 %i.hx
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.q, i64 %i.hz ; 3 uses
  %i.ib = udiv i32 %.1175, 10000                  ; 3 uses
  %.neg.i127 = mul i32 %i.ib, -10000
  %i.ic = add i32 %.neg.i127, %.1175              ; 3 uses
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = mul nuw nsw i64 %i.id, 167773
  %i.if = lshr i64 %i.ie, 24
  %i.ig = trunc nuw nsw i64 %i.if to i32          ; 3 uses
  %i.ih = mul nuw nsw i32 %i.ig, 41
  %i.ii = lshr i32 %i.ih, 12                      ; 4 uses
  %.neg48.i128 = mul nsw i32 %i.ii, -100
  %i.ij = add nsw i32 %.neg48.i128, %i.ig         ; 3 uses
  %.neg49.i129 = mul nsw i32 %i.ig, -100
  %i.ik = add nsw i32 %.neg49.i129, %i.ib         ; 3 uses
  %i.il = trunc nuw nsw i32 %i.ii to i8
  %i.im = add nuw nsw i8 %i.il, 48
  store i8 %i.im, ptr %i.ia, align 1, !tbaa !81
  %i.in = icmp ne i32 %i.ii, 0
  %i.io = zext i1 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.io ; 2 uses
  %i.iq = icmp ult i32 %i.ij, 10
  %i.ir = icmp eq i32 %i.ii, 0
  %i.is = and i1 %i.ir, %i.iq                     ; 2 uses
  %i.it = shl nsw i32 %i.ij, 1
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.iu
  %.neg50.i130 = sext i1 %i.is to i64
  %i.iw = zext i1 %i.is to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 1
  store i16 %i.iy, ptr %i.ip, align 1
  %i.iz = getelementptr inbounds i8, ptr %i.ip, i64 %.neg50.i130 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jb = shl nsw i32 %i.ik, 1
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.jc
  %i.je = load i16, ptr %i.jd, align 2
  store i16 %i.je, ptr %i.ja, align 1
  %.not.i131 = icmp eq i32 %i.ic, 0
  br i1 %.not.i131, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jf = mul i32 %i.ic, 5243
  %i.jg = lshr i32 %i.jf, 19                      ; 3 uses
  %.neg52.i132 = mul nsw i32 %i.jg, -100
  %i.jh = add i32 %.neg52.i132, %i.ic             ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jj = shl nuw nsw i32 %i.jg, 1
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2
  store i16 %i.jm, ptr %i.ji, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 6
  %i.jo = shl i32 %i.jh, 1
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2
  store i16 %i.jr, ptr %i.jn, align 1
  %i.js = zext nneg i32 %i.jg to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !81
  %i.jv = zext i8 %i.ju to i64
  %i.jw = zext i32 %i.jh to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !81
  %i.jz = zext i8 %i.jy to i64
  %.not53.i133 = icmp eq i32 %i.jh, 0
  %i.ka = add nuw nsw i64 %i.jv, 2
  %i.kb = select i1 %.not53.i133, i64 %i.ka, i64 %i.jz
  %i.kc = sub nsw i64 8, %i.kb
  br label %write_u32_len_7_to_9_trim.exit138

bb.ac:                                            ; preds = %bb.aa
  %i.kd = zext i32 %i.ij to i64
  %i.ke = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !81
  %i.kg = zext i8 %i.kf to i64
  %i.kh = zext i32 %i.ik to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !81
  %i.kk = zext i8 %i.kj to i64
  %.not51.i137 = icmp eq i32 %i.ik, 0
  %i.kl = select i1 %.not51.i137, i64 %i.kg, i64 0
  %i.km = add nuw nsw i64 %i.kl, %i.kk
  %i.kn = sub nsw i64 4, %i.km
  br label %write_u32_len_7_to_9_trim.exit138

write_u32_len_7_to_9_trim.exit138:                ; preds = %bb.ab, %bb.ac
  %.pn.in.i134 = phi i64 [ %i.kc, %bb.ab ], [ %i.kn, %bb.ac ]
  %.pn.i135 = and i64 %.pn.in.i134, 4294967295
  %.0.i136 = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.pn.i135
  %i.ko = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 0)
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.kp ; 2 uses
  %i.kr = zext i1 %i.hw to i64                    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kr
  %.0.copyload.i = load i64, ptr %i.kq, align 1
  store i64 %.0.copyload.i, ptr %i.ks, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i136, i64 %i.kr ; 2 uses
  %i.ku = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 1)
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.kv
  store i8 46, ptr %i.kw, align 1, !tbaa !81
  %i.kx = sext i32 %i.hu to i64
  %i.ky = getelementptr inbounds i8, ptr %i.q, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2 ; 2 uses
  %i.la = icmp ugt ptr %i.kz, %i.kt
  %i.lb = select i1 %i.la, ptr %i.kz, ptr %i.kt
  br label %write_inf_or_nan.exit

bb.ad:                                            ; preds = %f32_bin_to_dec.exit123
  %.ptr = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %i.lc = udiv i32 %.1175, 10000                  ; 3 uses
  %.neg.i124 = mul i32 %i.lc, -10000
  %i.ld = add i32 %.neg.i124, %.1175              ; 3 uses
  %i.le = zext nneg i32 %i.lc to i64
  %i.lf = mul nuw nsw i64 %i.le, 167773
  %i.lg = lshr i64 %i.lf, 24
  %i.lh = trunc nuw nsw i64 %i.lg to i32          ; 3 uses
  %i.li = mul nuw nsw i32 %i.lh, 41
  %i.lj = lshr i32 %i.li, 12                      ; 3 uses
  %.neg48.i = mul nsw i32 %i.lj, -100
  %i.lk = add nsw i32 %.neg48.i, %i.lh            ; 3 uses
  %.neg49.i = mul nsw i32 %i.lh, -100
  %i.ll = add nsw i32 %.neg49.i, %i.lc            ; 3 uses
  %i.lm = trunc nuw nsw i32 %i.lj to i8
  %i.ln = add nuw nsw i8 %i.lm, 48
  store i8 %i.ln, ptr %.ptr, align 1, !tbaa !81
  %.not182 = icmp eq i32 %i.lj, 0                 ; 2 uses
  %.add = select i1 %.not182, i64 1, i64 2        ; 2 uses
  %.ptr180 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add
  %i.lo = icmp ult i32 %i.lk, 10
  %i.lp = and i1 %.not182, %i.lo                  ; 2 uses
  %i.lq = shl nsw i32 %i.lk, 1
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.lr
  %.neg50.i = sext i1 %i.lp to i64
  %i.lt = zext i1 %i.lp to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 1
  store i16 %i.lv, ptr %.ptr180, align 1
  %.add178 = add nsw i64 %.add, %.neg50.i         ; 2 uses
  %.ptr181 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add178 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.ptr181, i64 2
  %i.lx = shl nsw i32 %i.ll, 1
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2
  store i16 %i.ma, ptr %i.lw, align 1
  %.not.i125 = icmp eq i32 %i.ld, 0
  br i1 %.not.i125, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mb = mul i32 %i.ld, 5243
  %i.mc = lshr i32 %i.mb, 19                      ; 3 uses
  %.neg52.i = mul nsw i32 %i.mc, -100
  %i.md = add i32 %.neg52.i, %i.ld                ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.ptr181, i64 4
  %i.mf = shl nuw nsw i32 %i.mc, 1
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2
  store i16 %i.mi, ptr %i.me, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.ptr181, i64 6
  %i.mk = shl i32 %i.md, 1
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ml
  %i.mn = load i16, ptr %i.mm, align 2
  store i16 %i.mn, ptr %i.mj, align 1
  %i.mo = zext nneg i32 %i.mc to i64
  %i.mp = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !81
  %i.mr = zext i8 %i.mq to i64
  %i.ms = zext i32 %i.md to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !81
  %i.mv = zext i8 %i.mu to i64
  %.not53.i = icmp eq i32 %i.md, 0
  %i.mw = add nuw nsw i64 %i.mr, 2
  %i.mx = select i1 %.not53.i, i64 %i.mw, i64 %i.mv
  %i.my = sub nsw i64 8, %i.mx
  br label %write_u32_len_7_to_9_trim.exit

bb.af:                                            ; preds = %bb.ad
  %i.mz = zext i32 %i.lk to i64
  %i.na = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !81
  %i.nc = zext i8 %i.nb to i64
  %i.nd = zext i32 %i.ll to i64
  %i.ne = getelementptr inbounds nuw i8, ptr @dec_trailing_zero_table, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !81
  %i.ng = zext i8 %i.nf to i64
  %.not51.i = icmp eq i32 %i.ll, 0
  %i.nh = select i1 %.not51.i, i64 %i.nc, i64 0
  %i.ni = add nuw nsw i64 %i.nh, %i.ng
  %i.nj = sub nsw i64 4, %i.ni
  br label %write_u32_len_7_to_9_trim.exit

write_u32_len_7_to_9_trim.exit:                   ; preds = %bb.ae, %bb.af
  %.pn.in.i = phi i64 [ %i.my, %bb.ae ], [ %i.nj, %bb.af ]
  %.pn.i = and i64 %.pn.in.i, 4294967295
  %.add179 = add nuw nsw i64 %.pn.i, %.add178     ; 2 uses
  %.0.i126.ptr = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add179
  %i.nk = icmp eq i64 %.add179, 2
  %.neg101 = sext i1 %i.nk to i64
  %i.nl = getelementptr inbounds i8, ptr %.0.i126.ptr, i64 %.neg101 ; 2 uses
  %i.nm = add nsw i32 %i.hu, -1
  %i.nn = load i8, ptr %.ptr, align 1, !tbaa !81
  store i8 %i.nn, ptr %i.q, align 1, !tbaa !81
  store i8 46, ptr %.ptr, align 1, !tbaa !81
  store i16 11621, ptr %i.nl, align 1
  %i.no = icmp sgt i32 %i.hu, 0
  %i.np = select i1 %i.no, i64 1, i64 2
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.np ; 2 uses
  %i.nr = tail call i32 @llvm.abs.i32(i32 %i.nm, i1 true) ; 2 uses
  %i.ns = icmp samesign ult i32 %i.nr, 10         ; 2 uses
  %i.nt = shl nuw nsw i32 %i.nr, 1
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.nu
  %.neg.i140 = sext i1 %i.ns to i64
  %i.nw = zext i1 %i.ns to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 1
  store i16 %i.ny, ptr %i.nq, align 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 2
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 %.neg.i140
  br label %write_inf_or_nan.exit

bb.ag:                                            ; preds = %bb.j
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.aj, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %bb.ag
  %i.ob = shl nuw nsw i32 %i.d, 1
  %i.oc = zext nneg i32 %i.ob to i128
  %i.od = mul nuw nsw i128 %i.oc, 12924697071141057419 ; 2 uses
  %i.oe = lshr i128 %i.od, 64
  %i.of = trunc i128 %i.od to i64                 ; 2 uses
  %i.og = trunc nuw nsw i128 %i.oe to i32         ; 2 uses
  %i.oh = lshr i64 %i.of, 32                      ; 2 uses
  %i.oi = trunc nuw i64 %i.oh to i32
  %i.oj = urem i32 %i.og, 10                      ; 3 uses
  %i.ok = sub nsw i32 %i.og, %i.oj
  %i.ol = tail call i32 @llvm.fshl.i32(i32 %i.oj, i32 %i.oi, i32 28) ; 3 uses
  %i.om = icmp eq i64 %i.oh, 2147483648
  br i1 %i.om, label %bb.aj, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  switch i32 %i.ol, label %.critedge.i [
    i32 -1798691832, label %bb.aj
    i32 -1798691833, label %bb.aj
    i32 188079096, label %bb.aj
  ], !prof !321

.critedge.i:                                      ; preds = %bb.ai
  %.not97.i = icmp ugt i32 %i.ol, 188079096
  %i.on = add i32 %i.ol, 1798691832
  %i.oo = icmp ult i32 %i.on, 1610612736
  %.lobit.i = lshr i64 %i.of, 63
  %i.op = trunc nuw nsw i64 %.lobit.i to i32
  %i.oq = add nuw nsw i32 %i.oj, %i.op
  %i.or = select i1 %.not97.i, i32 %i.oq, i32 0
  %i.os = select i1 %i.oo, i32 10, i32 %i.or
  %i.ot = add nsw i32 %i.ok, %i.os
  br label %f32_bin_to_dec.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ah, %bb.ag
  %i.ou = shl nuw nsw i32 %i.d, 3                 ; 3 uses
  %i.ov = or disjoint i32 %i.ou, 4
  %i.ow = add nsw i32 %i.ou, -4
  %i.ox = zext i32 %i.ow to i128
  %i.oy = mul nuw nsw i128 %i.ox, 12924697071141057420 ; 2 uses
  %i.oz = lshr i128 %i.oy, 64
  %i.pa = trunc nuw i128 %i.oz to i32
  %i.pb = and i128 %i.oy, 18446744065119617024
  %i.pc = icmp ne i128 %i.pb, 0
  %i.pd = zext i1 %i.pc to i32
  %i.pe = or i32 %i.pd, %i.pa
  %i.pf = zext nneg i32 %i.ou to i128
  %i.pg = mul nuw nsw i128 %i.pf, 12924697071141057420 ; 2 uses
  %i.ph = lshr i128 %i.pg, 64
  %i.pi = trunc nuw nsw i128 %i.ph to i32         ; 5 uses
  %i.pj = and i128 %i.pg, 18446744065119617024
  %i.pk = icmp ne i128 %i.pj, 0
  %i.pl = zext i1 %i.pk to i32
  %i.pm = or i32 %i.pl, %i.pi                     ; 2 uses
  %i.pn = zext nneg i32 %i.ov to i128
  %i.po = mul nuw nsw i128 %i.pn, 12924697071141057420 ; 2 uses
  %i.pp = lshr i128 %i.po, 64
  %i.pq = trunc nuw nsw i128 %i.pp to i32
  %i.pr = and i128 %i.po, 18446744065119617024
  %i.ps = icmp ne i128 %i.pr, 0
  %i.pt = zext i1 %i.ps to i32
  %i.pu = or i32 %i.pt, %i.pq
  %i.pv = and i32 %i.c, 1                         ; 2 uses
  %i.pw = add nuw i32 %i.pe, %i.pv                ; 2 uses
  %i.px = sub nuw nsw i32 %i.pu, %i.pv            ; 2 uses
  %i.py = lshr i32 %i.pi, 2                       ; 2 uses
  %i.pz = icmp samesign ugt i32 %i.pi, 39
  br i1 %i.pz, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.qa = udiv i32 %i.pi, 40                      ; 2 uses
  %i.qb = mul nuw nsw i32 %i.qa, 40               ; 2 uses
  %i.qc = add nuw nsw i32 %i.qb, 40
  %i.qd = icmp samesign uge i32 %i.px, %i.qc      ; 2 uses
  %i.qe = icmp ugt i32 %i.pw, %i.qb
  %.not98.i = xor i1 %i.qe, %i.qd
  br i1 %.not98.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qf = mul nuw nsw i32 %i.qa, 10
  %i.qg = select i1 %i.qd, i32 10, i32 0
  %i.qh = add nuw nsw i32 %i.qg, %i.qf
  br label %f32_bin_to_dec.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.qi = and i32 %i.pi, 2147483644               ; 3 uses
  %i.qj = add nuw nsw i32 %i.qi, 4
  %i.qk = icmp samesign uge i32 %i.px, %i.qj      ; 2 uses
  %i.ql = or disjoint i32 %i.qi, 2                ; 2 uses
  %i.qm = icmp samesign ugt i32 %i.pm, %i.ql
  %i.qn = icmp eq i32 %i.pm, %i.ql
  %i.qo = trunc i32 %i.py to i1
  %i.qp = and i1 %i.qn, %i.qo
  %narrow183 = or i1 %i.qm, %i.qp
  %i.qq = icmp ugt i32 %i.pw, %i.qi
  %.not99.i = xor i1 %i.qq, %i.qk
  %.v184 = select i1 %.not99.i, i1 %narrow183, i1 %i.qk
  %i.qr = zext i1 %.v184 to i32
  %i.qs = add nuw nsw i32 %i.py, %i.qr
  br label %f32_bin_to_dec.exit

f32_bin_to_dec.exit:                              ; preds = %.critedge.i, %bb.al, %bb.am
  %.0174 = phi i32 [ %i.qs, %bb.am ], [ %i.qh, %bb.al ], [ %i.ot, %.critedge.i ] ; 13 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 9 uses
  %i.qu = icmp ult i32 %.0174, 100
  br i1 %i.qu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %f32_bin_to_dec.exit
  %i.qv = icmp samesign ult i32 %.0174, 10        ; 2 uses
  %i.qw = shl nuw nsw i32 %.0174, 1
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.qx
  %.neg70.i = sext i1 %i.qv to i64
  %i.qz = zext i1 %i.qv to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz
  %i.rb = load i16, ptr %i.ra, align 1            ; 2 uses
  store i16 %i.rb, ptr %i.qt, align 1
  %i.rc = getelementptr inbounds i8, ptr %i.qt, i64 %.neg70.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  br label %write_u32_len_1_to_8.exit

bb.ao:                                            ; preds = %f32_bin_to_dec.exit
  %i.re = icmp ult i32 %.0174, 10000
  br i1 %i.re, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.rf = mul nuw nsw i32 %.0174, 5243
  %i.rg = lshr i32 %i.rf, 19                      ; 2 uses
  %.neg68.i = mul nsw i32 %i.rg, -100
  %i.rh = add nsw i32 %.neg68.i, %.0174
  %i.ri = icmp samesign ult i32 %.0174, 1000      ; 2 uses
  %i.rj = shl nuw nsw i32 %i.rg, 1
  %i.rk = zext nneg i32 %i.rj to i64
end_hunk_2
