Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapihaptic_lg4ff?download=true
inline.NumInlined: 69
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_HIDAPI_HapticDriverLg4ff_ThreadFunction:bb.a
  store i64 %i.jx, ptr %i.jy, align 8
  br label %.split.i133.thread.i.i

.split.i.i124.i.i:                                ; preds = %bb.aw
  %i.jz = load i64, ptr %i.ja, align 8            ; 2 uses
  switch i16 %i.ju, label %.split.i133.i.thread94.i [
    i16 7, label %.split.i133.i.thread97.i
    i16 8, label %.split.i133.i.thread97.i
    i16 10, label %.split.i133.i.thread97.i
    i16 0, label %.split.i133.i.thread97.i
    i16 6, label %.split.i133.i.thread97.i
  ]

.split.i133.i.thread94.i:                         ; preds = %.split.i.i124.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.jz, ptr %i.ka, align 8
  br label %effect_is_periodic.exit136.i.i

.split.i133.i.thread97.i:                         ; preds = %.split.i.i124.i.i, %.split.i.i124.i.i, %.split.i.i124.i.i, %.split.i.i124.i.i, %.split.i.i124.i.i
  %i.kb = zext i32 %.0.fr.i120.i.i to i64
  %i.kc = add i64 %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.kc, ptr %i.kd, align 8
  br label %effect_is_periodic.exit136.i.i

.split.i133.thread.i.i:                           ; preds = %.split.i133.i.thread95.i, %.thread181.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.kf = load i32, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  store i32 %i.kf, ptr %i.kg, align 4
  br label %effect_is_periodic.exit136.i.i

effect_is_periodic.exit136.i.i:                   ; preds = %.split.i133.thread.i.i, %.split.i133.i.thread97.i, %.split.i133.i.thread94.i, %bb.aw, %effect_is_periodic.exit.split.i117.i.i, %get_effect_replay_delay.exit112.i.i, %get_effect_replay_length.exit.thread.i.i
  %.val.i = phi i16 [ %.val.i113.i.i, %get_effect_replay_delay.exit112.i.i ], [ %.pr.pre.i.i, %get_effect_replay_length.exit.thread.i.i ], [ %.val.i113.i.i, %.split.i133.thread.i.i ], [ %.val.i113.i.i, %.split.i133.i.thread97.i ], [ %.val.i113.i.i, %effect_is_periodic.exit.split.i117.i.i ], [ %.val.i113.i.i, %.split.i133.i.thread94.i ], [ %.val.i113.i.i, %bb.aw ] ; 7 uses
  %i.kh = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.ki = and i32 %i.kh, -9                       ; 5 uses
  store i32 %i.ki, ptr %i.bh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bg, i64 144 ; 2 uses
  store i32 0, ptr %i.kj, align 8
  %i.kk = icmp eq i16 %.val.i, 64
  br i1 %i.kk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %effect_is_periodic.exit136.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.km = load i32, ptr %i.kl, align 4            ; 3 uses
  %.not76.i.i = icmp eq i32 %i.km, 0
  br i1 %.not76.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bg, i64 34
  %i.ko = load i16, ptr %i.kn, align 2
  %i.kp = zext i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bg, i64 38
  %i.kr = load i16, ptr %i.kq, align 2
  %i.ks = zext i16 %i.kr to i32
  %i.kt = add nuw nsw i32 %i.ks, %i.kp            ; 2 uses
  %.not77.i.i = icmp eq i32 %i.km, %i.kt
  br i1 %.not77.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ku = sub i32 %i.km, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.kw = load i16, ptr %i.kv, align 8
  %i.kx = zext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.kz = load i16, ptr %i.ky, align 2
  %i.la = zext i16 %i.kz to i32
  %i.lb = sub nsw i32 %i.kx, %i.la
  %i.lc = shl i32 %i.lb, 16
  %i.ld = udiv i32 %i.lc, %i.ku                   ; 2 uses
  store i32 %i.ld, ptr %i.kj, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %effect_is_periodic.exit136.i.i
  %i.le = phi i32 [ %i.ld, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 0, %effect_is_periodic.exit136.i.i ]
  %i.lf = and i32 %i.kh, 4
  %.not78.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not78.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.lh = load i64, ptr %i.lg, align 8
  %.not79.i.i = icmp ult i64 %i.ao, %i.lh
  br i1 %.not79.i.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.li = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val.i)
  %i.lj = icmp eq i16 %i.li, 1
  br i1 %i.lj, label %.split.i.i138.i.i, label %get_effect_replay_length.exit146.thread.i.i

.split.i.i138.i.i:                                ; preds = %bb.bc
  %i.lk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i, i1 true) ; 2 uses
  %.off.i.i139.i.i = add nsw i16 %i.lk, -1
  %switch.i.i140.i.i = icmp ult i16 %.off.i.i139.i.i, 5
  br i1 %switch.i.i140.i.i, label %bb.bd, label %effect_is_periodic.exit.split.i141.i.i

effect_is_periodic.exit.split.i141.i.i:           ; preds = %.split.i.i138.i.i
  switch i16 %i.lk, label %get_effect_replay_length.exit146.thread.i.i [
    i16 7, label %bb.bd
    i16 8, label %bb.bd
    i16 10, label %bb.bd
    i16 0, label %bb.bd
    i16 6, label %bb.bd
  ]

bb.bd:                                            ; preds = %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %effect_is_periodic.exit.split.i141.i.i, %.split.i.i138.i.i
  %.0.in.i142.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.i143.i.i = load i32, ptr %.0.in.i142.i.i, align 4
  %.0.fr.i144.i.i = freeze i32 %.0.i143.i.i
  %.0.fr.i144.off.i.i = add i32 %.0.fr.i144.i.i, -1
  %switch159.i.i = icmp ult i32 %.0.fr.i144.off.i.i, -2
  br i1 %switch159.i.i, label %bb.be, label %get_effect_replay_length.exit146.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = icmp ult i64 %i.ao, %i.lm
  br i1 %i.ln, label %get_effect_replay_length.exit146.thread.i.i, label %bb.bf

get_effect_replay_length.exit146.thread.i.i:      ; preds = %bb.be, %bb.bd, %effect_is_periodic.exit.split.i141.i.i, %bb.bc
  %i.lo = or disjoint i32 %i.ki, 4                ; 2 uses
  store i32 %i.lo, ptr %i.bh, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %get_effect_replay_length.exit146.thread.i.i, %bb.be, %bb.bb, %bb.ba
  %i.lp = phi i32 [ %i.lo, %get_effect_replay_length.exit146.thread.i.i ], [ %i.ki, %bb.be ], [ %i.ki, %bb.bb ], [ %i.ki, %bb.ba ]
  %i.lq = and i32 %i.lp, 4
  %.not80.i.i = icmp eq i32 %i.lq, 0
  br i1 %.not80.i.i, label %lg4ff_update_state.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.ls = load i64, ptr %i.lr, align 8
  %i.lt = sub i64 %i.ao, %i.ls                    ; 12 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store i64 %i.lt, ptr %i.lu, align 8
  %i.lv = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %.val.i)
  %i.lw = icmp eq i16 %i.lv, 1
  br i1 %i.lw, label %.split.i147.i.i, label %effect_is_periodic.exit.i

.split.i147.i.i:                                  ; preds = %bb.bg
  %i.lx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.val.i, i1 true)
  %.off.i148.i.i = add nsw i16 %i.lx, -1
  %switch.i149.i.i = icmp ult i16 %.off.i148.i.i, 5
  br i1 %switch.i149.i.i, label %bb.bh, label %effect_is_periodic.exit.i

bb.bh:                                            ; preds = %.split.i147.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = sub i64 %i.ao, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.mc = load i16, ptr %i.mb, align 2            ; 2 uses
  %i.md = zext i16 %i.mc to i64
  %i.me = urem i64 %i.ma, %i.md
  %i.mf = trunc nuw nsw i64 %i.me to i32
  %.lhs.trunc.i.i = mul nuw nsw i32 %i.mf, 360
  %.rhs.trunc.i.i = zext i16 %i.mc to i32
  %i.mg = udiv i32 %.lhs.trunc.i.i, %.rhs.trunc.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.mi = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = urem i32 %i.mj, 360
  %i.ml = add nuw nsw i32 %i.mk, %i.mg
  store i32 %i.ml, ptr %i.mh, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.mn = load i16, ptr %i.mm, align 8            ; 2 uses
  %i.mo = sext i16 %i.mn to i32                   ; 6 uses
  %i.mp = icmp slt i16 %i.mn, 0
  %i.mq = select i1 %i.mp, i32 -1, i32 1          ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.bg, i64 34
  %i.ms = load i16, ptr %i.mr, align 2
  %i.mt = sext i16 %i.ms to i32                   ; 7 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bg, i64 38
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = zext i16 %i.mv to i64                   ; 2 uses
  %i.mx = icmp ult i64 %i.lt, %i.mw
  br i1 %i.mx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.my = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.mz = load i16, ptr %i.my, align 8
  %i.na = zext i16 %i.mz to i32
  %i.nb = mul nsw i32 %i.mq, %i.na                ; 2 uses
  %i.nc = sub nsw i32 %i.mo, %i.nb
  %i.nd = sext i32 %i.nc to i64
  %i.ne = mul nsw i64 %i.lt, %i.nd
  %i.nf = udiv i64 %i.ne, %i.mw
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = add i32 %i.nb, %i.ng
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.nj = load i32, ptr %i.ni, align 4
  %.0.fr.i.i80.i = freeze i32 %i.nj               ; 3 uses
  %.not.i81.i = icmp eq i32 %.0.fr.i.i80.i, 0
  br i1 %.not.i81.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bg, i64 42
  %i.nl = load i16, ptr %i.nk, align 2            ; 2 uses
  %.not52.i.i = icmp eq i16 %i.nl, 0
  br i1 %.not52.i.i, label %bb.bm, label %get_effect_replay_length.exit.i.i

get_effect_replay_length.exit.i.i:                ; preds = %bb.bk
  %i.nm = icmp eq i32 %.0.fr.i.i80.i, -1
  %spec.select.i.i.i = select i1 %i.nm, i32 0, i32 %.0.fr.i.i80.i
  %2 = zext i16 %i.nl to i32                      ; 2 uses
  %3 = trunc i64 %i.lt to i32
  %4 = sub i32 %3, %spec.select.i.i.i
  %5 = add i32 %4, %2                             ; 2 uses
  %i.nn = icmp sgt i32 %5, 0
  br i1 %i.nn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %get_effect_replay_length.exit.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.np = load i16, ptr %i.no, align 4
  %i.nq = zext i16 %i.np to i32
  %i.nr = mul nsw i32 %i.mq, %i.nq
  %i.ns = sub nsw i32 %i.mo, %i.nr
  %i.nt = mul nsw i32 %i.ns, %5
  %i.nu = sdiv i32 %i.nt, %2
  %i.nv = sub nsw i32 %i.mo, %i.nu
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %get_effect_replay_length.exit.i.i, %bb.bk, %bb.bj, %bb.bi
  %.048.i.i = phi i32 [ %i.nh, %bb.bi ], [ %i.nv, %bb.bl ], [ %i.mo, %get_effect_replay_length.exit.i.i ], [ %i.mo, %bb.bk ], [ %i.mo, %bb.bj ] ; 9 uses
  %i.nw = sub i32 0, %.048.i.i
  %i.nx = zext i16 %.val.i to i32                 ; 2 uses
  %i.ny = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.nx)
  %i.nz = icmp eq i32 %i.ny, 1
  br i1 %i.nz, label %.split.i84.i, label %lg4ff_calculate_periodic.exit.i

.split.i84.i:                                     ; preds = %bb.bm
  %i.oa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.nx, i1 true)
  switch i32 %i.oa, label %lg4ff_calculate_periodic.exit.i [
    i32 1, label %bb.bn
    i32 2, label %bb.bo
    i32 3, label %bb.bp
    i32 4, label %bb.bq
    i32 5, label %bb.br
  ]

bb.bn:                                            ; preds = %.split.i84.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.oc = load i32, ptr %i.ob, align 8
  %i.od = uitofp i32 %i.oc to double
  %i.oe = fmul nnan double %i.od, f0x400921FB54442D18
  %i.of = fdiv double %i.oe, 1.800000e+02
  %i.og = tail call double @SDL_sin_REAL(double noundef %i.of) #8
  %i.oh = sitofp i32 %.048.i.i to double
  %i.oi = fmul double %i.og, %i.oh
  %i.oj = fptosi double %i.oi to i32
  %i.ok = add nsw i32 %i.oj, %i.mt
  br label %lg4ff_calculate_periodic.exit.i

bb.bo:                                            ; preds = %.split.i84.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.om = load i32, ptr %i.ol, align 8
  %i.on = icmp ult i32 %i.om, 180
  %i.oo = select i1 %i.on, i32 %.048.i.i, i32 %i.nw
  %i.op = add nsw i32 %i.oo, %i.mt
  br label %lg4ff_calculate_periodic.exit.i

bb.bp:                                            ; preds = %.split.i84.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.or = load i32, ptr %i.oq, align 8
  %i.os = zext i32 %i.or to i64
  %i.ot = sext i32 %.048.i.i to i64               ; 2 uses
  %i.ou = mul nsw i64 %i.os, %i.ot
  %i.ov = sdiv i64 %i.ou, 180
  %i.ow = sub nsw i64 %i.ov, %i.ot
  %i.ox = tail call range(i64 0, 25620480027635804) i64 @llvm.abs.i64(i64 range(i64 -25620480027635802, 25620480027635804) %i.ow, i1 true)
  %.tr.i.i = trunc i64 %i.ox to i32
  %i.oy = shl i32 %.tr.i.i, 1
  %i.oz = sub i32 %i.mt, %.048.i.i
  %i.pa = add i32 %i.oz, %i.oy
  br label %lg4ff_calculate_periodic.exit.i

bb.bq:                                            ; preds = %.split.i84.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.pc = load i32, ptr %i.pb, align 8
  %i.pd = shl i32 %.048.i.i, 1
  %i.pe = mul i32 %i.pd, %i.pc
  %i.pf = udiv i32 %i.pe, 360
  %i.pg = sub i32 %i.mt, %.048.i.i
  %i.ph = add i32 %i.pg, %i.pf
  br label %lg4ff_calculate_periodic.exit.i

bb.br:                                            ; preds = %.split.i84.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.pj = load i32, ptr %i.pi, align 8
  %i.pk = shl i32 %.048.i.i, 1
  %i.pl = mul i32 %i.pk, %i.pj
  %i.pm = udiv i32 %i.pl, 360
  %i.pn = add i32 %.048.i.i, %i.mt
  %i.po = sub i32 %i.pn, %i.pm
  br label %lg4ff_calculate_periodic.exit.i

lg4ff_calculate_periodic.exit.i:                  ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %.split.i84.i, %bb.bm
  %.0.i83.i = phi i32 [ %i.mt, %.split.i84.i ], [ %i.ok, %bb.bn ], [ %i.op, %bb.bo ], [ %i.pa, %bb.bp ], [ %i.ph, %bb.bq ], [ %i.po, %bb.br ], [ %i.mt, %bb.bm ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.pq = load double, ptr %i.pp, align 8
  %i.pr = sitofp i32 %.0.i83.i to double
  %i.ps = fmul double %i.pq, %i.pr
  %i.pt = fptosi double %i.ps to i32
  %i.pu = add nsw i32 %i.bf, %i.pt
  br label %lg4ff_update_state.exit.i

effect_is_periodic.exit.i:                        ; preds = %.split.i147.i.i, %bb.bg
  %i.pv = zext i16 %.val.i to i32                 ; 2 uses
  %i.pw = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.pv)
  %i.px = icmp eq i32 %i.pw, 1
  br i1 %i.px, label %.split.i, label %lg4ff_update_state.exit.i

.split.i:                                         ; preds = %effect_is_periodic.exit.i
  %i.py = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.pv, i1 true)
  switch i32 %i.py, label %lg4ff_update_state.exit.i [
    i32 0, label %bb.bs
    i32 6, label %bb.by
    i32 7, label %bb.ce
    i32 8, label %bb.cf
    i32 10, label %bb.cg
  ]

bb.bs:                                            ; preds = %.split.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.qa = load i16, ptr %i.pz, align 2            ; 3 uses
  %i.qb = sext i16 %i.qa to i32                   ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.qd = load i16, ptr %i.qc, align 8
  %i.qe = zext i16 %i.qd to i64                   ; 2 uses
  %i.qf = icmp ult i64 %i.lt, %i.qe
  br i1 %i.qf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.qg = icmp slt i16 %i.qa, 0
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bg, i64 34
  %i.qi = load i16, ptr %i.qh, align 2
  %i.qj = zext i16 %i.qi to i32                   ; 2 uses
  %i.qk = sub nsw i32 0, %i.qj
  %i.ql = select i1 %i.qg, i32 %i.qk, i32 %i.qj   ; 2 uses
  %i.qm = sub nsw i32 %i.qb, %i.ql
  %i.qn = sext i32 %i.qm to i64
  %i.qo = mul nsw i64 %i.lt, %i.qn
  %i.qp = udiv i64 %i.qo, %i.qe
  %i.qq = trunc i64 %i.qp to i32
  %i.qr = add i32 %i.ql, %i.qq
  br label %lg4ff_calculate_constant.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.qt = load i32, ptr %i.qs, align 4            ; 2 uses
  %.not.i89.i = icmp eq i32 %i.qt, 0
  br i1 %.not.i89.i, label %lg4ff_calculate_constant.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.qv = load i16, ptr %i.qu, align 4            ; 2 uses
  %i.qw = zext i16 %i.qv to i32                   ; 2 uses
  %.not33.i.i = icmp eq i16 %i.qv, 0
  br i1 %.not33.i.i, label %lg4ff_calculate_constant.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %6 = trunc i64 %i.lt to i32
  %7 = sub i32 %6, %i.qt
  %8 = add i32 %7, %i.qw                          ; 2 uses
  %i.qx = icmp sgt i32 %8, 0
  br i1 %i.qx, label %bb.bx, label %lg4ff_calculate_constant.exit.i

bb.bx:                                            ; preds = %bb.bw
  %i.qy = icmp slt i16 %i.qa, 0
  %i.qz = getelementptr inbounds nuw i8, ptr %i.bg, i64 38
  %i.ra = load i16, ptr %i.qz, align 2
  %i.rb = zext i16 %i.ra to i32                   ; 2 uses
  %i.rc = sub nsw i32 0, %i.rb
  %i.rd = select i1 %i.qy, i32 %i.rb, i32 %i.rc
  %i.re = add nsw i32 %i.rd, %i.qb
  %i.rf = mul nsw i32 %i.re, %8
  %i.rg = sdiv i32 %i.rf, %i.qw
  %i.rh = sub nsw i32 %i.qb, %i.rg
  br label %lg4ff_calculate_constant.exit.i

lg4ff_calculate_constant.exit.i:                  ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.0.i90.i = phi i32 [ %i.qr, %bb.bt ], [ %i.rh, %bb.bx ], [ %i.qb, %bb.bw ], [ %i.qb, %bb.bv ], [ %i.qb, %bb.bu ]
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.rj = load double, ptr %i.ri, align 8
  %i.rk = sitofp i32 %.0.i90.i to double
  %i.rl = fmul double %i.rj, %i.rk
  %i.rm = fptosi double %i.rl to i32
  %i.rn = add nsw i32 %i.bf, %i.rm
  br label %lg4ff_update_state.exit.i

bb.by:                                            ; preds = %.split.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bg, i64 34
  %i.rp = load i16, ptr %i.ro, align 2            ; 3 uses
  %i.rq = zext i16 %i.rp to i64                   ; 2 uses
  %i.rr = icmp ult i64 %i.lt, %i.rq
  br i1 %i.rr, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rs = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.rt = load i16, ptr %i.rs, align 2            ; 2 uses
  %i.ru = sext i16 %i.rt to i32
  %i.rv = icmp slt i16 %i.rt, 0
  %i.rw = sub nuw nsw i64 %i.rq, %i.lt
  %i.rx = trunc nuw nsw i64 %i.rw to i32
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.rz = load i16, ptr %i.ry, align 4
  %i.sa = zext i16 %i.rz to i32                   ; 2 uses
  %i.sb = sub nsw i32 0, %i.sa
  %i.sc = select i1 %i.rv, i32 %i.sb, i32 %i.sa   ; 2 uses
  %i.sd = sub nsw i32 %i.ru, %i.sc
  %i.se = mul nsw i32 %i.sd, %i.rx
  %i.sf = zext i16 %i.rp to i32
  %i.sg = sdiv i32 %i.se, %i.sf
  %i.sh = add nsw i32 %i.sc, %i.sg
  br label %lg4ff_calculate_ramp.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.si = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.sj = load i32, ptr %i.si, align 4            ; 3 uses
  %.not.i91.i = icmp eq i32 %i.sj, 0
  br i1 %.not.i91.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sk = getelementptr inbounds nuw i8, ptr %i.bg, i64 38
  %i.sl = load i16, ptr %i.sk, align 2            ; 2 uses
  %i.sm = zext i16 %i.sl to i32                   ; 3 uses
  %i.sn = sub i32 %i.sj, %i.sm
  %i.so = zext i32 %i.sn to i64
  %.not42.i.i = icmp ult i64 %i.lt, %i.so
  %.not43.i.i = icmp eq i16 %i.sl, 0
  %or.cond.i.i = or i1 %.not43.i.i, %.not42.i.i
  br i1 %or.cond.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sp = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.sq = load i16, ptr %i.sp, align 8            ; 2 uses
  %i.sr = sext i16 %i.sq to i32                   ; 2 uses
  %i.ss = icmp slt i16 %i.sq, 0
  %9 = trunc i64 %i.lt to i32
  %10 = sub i32 %9, %i.sj
  %11 = add i32 %10, %i.sm
  %i.st = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.su = load i16, ptr %i.st, align 8
  %i.sv = zext i16 %i.su to i32                   ; 2 uses
  %i.sw = sub nsw i32 0, %i.sv
  %i.sx = select i1 %i.ss, i32 %i.sw, i32 %i.sv
  %i.sy = sub nsw i32 %i.sx, %i.sr
  %i.sz = mul nsw i32 %i.sy, %11
  %i.ta = sdiv i32 %i.sz, %i.sm
  %i.tb = sub nsw i32 %i.sr, %i.ta
  br label %lg4ff_calculate_ramp.exit.i

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %12 = zext i16 %i.rp to i32
  %i.tc = trunc i64 %i.lt to i32
  %13 = sub i32 %i.tc, %12
  %i.td = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.te = load i16, ptr %i.td, align 2
  %i.tf = sext i16 %i.te to i32
  %i.tg = mul nsw i32 %13, %i.le
  %i.th = ashr i32 %i.tg, 16
  %i.ti = add nsw i32 %i.th, %i.tf
  br label %lg4ff_calculate_ramp.exit.i

lg4ff_calculate_ramp.exit.i:                      ; preds = %bb.cd, %bb.cc, %bb.bz
  %.0.i92.i = phi i32 [ %i.sh, %bb.bz ], [ %i.tb, %bb.cc ], [ %i.ti, %bb.cd ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.tk = load double, ptr %i.tj, align 8
  %i.tl = sitofp i32 %.0.i92.i to double
  %i.tm = fmul double %i.tk, %i.tl
  %i.tn = fptosi double %i.tm to i32
  %i.to = add nsw i32 %i.bf, %i.tn
  br label %lg4ff_update_state.exit.i

bb.ce:                                            ; preds = %.split.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.bg, i64 60
  %i.tq = load i16, ptr %i.tp, align 4
  %i.tr = sext i16 %i.tq to i32                   ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.bg, i64 54
  %i.tt = load i16, ptr %i.ts, align 2
  %i.tu = lshr i16 %i.tt, 1
  %i.tv = zext nneg i16 %i.tu to i32              ; 2 uses
  %i.tw = sub nsw i32 %i.tr, %i.tv
  %i.tx = add nsw i32 %i.tv, %i.tr
  %i.ty = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.tz = load i16, ptr %i.ty, align 8
  %i.ua = sext i16 %i.tz to i32
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bg, i64 42
  %i.uc = load i16, ptr %i.ub, align 2
  %i.ud = sext i16 %i.uc to i32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.uf = load i16, ptr %i.ue, align 2
  %i.ug = zext i16 %i.uf to i32
  br label %lg4ff_update_state.exit.i

bb.cf:                                            ; preds = %.split.i
  %i.uh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.ui = load i16, ptr %i.uh, align 8
  %i.uj = sext i16 %i.ui to i32
  %i.uk = getelementptr inbounds nuw i8, ptr %i.bg, i64 42
  %i.ul = load i16, ptr %i.uk, align 2
  %i.um = sext i16 %i.ul to i32
  %i.un = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.uo = load i16, ptr %i.un, align 2
  %i.up = zext i16 %i.uo to i32
  br label %lg4ff_update_state.exit.i

bb.cg:                                            ; preds = %.split.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.ur = load i16, ptr %i.uq, align 8
  %i.us = sext i16 %i.ur to i32
  %i.ut = getelementptr inbounds nuw i8, ptr %i.bg, i64 42
  %i.uu = load i16, ptr %i.ut, align 2
  %i.uv = sext i16 %i.uu to i32
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bg, i64 30
  %i.ux = load i16, ptr %i.uw, align 2
  %i.uy = zext i16 %i.ux to i32
  br label %lg4ff_update_state.exit.i

lg4ff_update_state.exit.i:                        ; preds = %bb.cg, %bb.cf, %bb.ce, %lg4ff_calculate_ramp.exit.i, %lg4ff_calculate_constant.exit.i, %.split.i, %effect_is_periodic.exit.i, %lg4ff_calculate_periodic.exit.i, %bb.bf, %bb.h, %.lr.ph.i
  %i.uz = phi i32 [ %i.au, %lg4ff_calculate_periodic.exit.i ], [ %i.au, %.split.i ], [ %i.au, %lg4ff_calculate_constant.exit.i ], [ %i.au, %lg4ff_calculate_ramp.exit.i ], [ %i.ug, %bb.ce ], [ %i.au, %bb.cf ], [ %i.au, %bb.cg ], [ %i.au, %effect_is_periodic.exit.i ], [ %i.au, %.lr.ph.i ], [ %i.au, %bb.h ], [ %i.au, %bb.bf ] ; 2 uses
  %i.va = phi i32 [ %i.av, %lg4ff_calculate_periodic.exit.i ], [ %i.av, %.split.i ], [ %i.av, %lg4ff_calculate_constant.exit.i ], [ %i.av, %lg4ff_calculate_ramp.exit.i ], [ %i.ud, %bb.ce ], [ %i.av, %bb.cf ], [ %i.av, %bb.cg ], [ %i.av, %effect_is_periodic.exit.i ], [ %i.av, %.lr.ph.i ], [ %i.av, %bb.h ], [ %i.av, %bb.bf ] ; 2 uses
  %i.vb = phi i32 [ %i.aw, %lg4ff_calculate_periodic.exit.i ], [ %i.aw, %.split.i ], [ %i.aw, %lg4ff_calculate_constant.exit.i ], [ %i.aw, %lg4ff_calculate_ramp.exit.i ], [ %i.ua, %bb.ce ], [ %i.aw, %bb.cf ], [ %i.aw, %bb.cg ], [ %i.aw, %effect_is_periodic.exit.i ], [ %i.aw, %.lr.ph.i ], [ %i.aw, %bb.h ], [ %i.aw, %bb.bf ] ; 2 uses
  %i.vc = phi i32 [ %i.ax, %lg4ff_calculate_periodic.exit.i ], [ %i.ax, %.split.i ], [ %i.ax, %lg4ff_calculate_constant.exit.i ], [ %i.ax, %lg4ff_calculate_ramp.exit.i ], [ %i.tx, %bb.ce ], [ %i.ax, %bb.cf ], [ %i.ax, %bb.cg ], [ %i.ax, %effect_is_periodic.exit.i ], [ %i.ax, %.lr.ph.i ], [ %i.ax, %bb.h ], [ %i.ax, %bb.bf ] ; 2 uses
  %i.vd = phi i32 [ %i.ay, %lg4ff_calculate_periodic.exit.i ], [ %i.ay, %.split.i ], [ %i.ay, %lg4ff_calculate_constant.exit.i ], [ %i.ay, %lg4ff_calculate_ramp.exit.i ], [ %i.tw, %bb.ce ], [ %i.ay, %bb.cf ], [ %i.ay, %bb.cg ], [ %i.ay, %effect_is_periodic.exit.i ], [ %i.ay, %.lr.ph.i ], [ %i.ay, %bb.h ], [ %i.ay, %bb.bf ] ; 2 uses
  %i.ve = phi i32 [ %i.az, %lg4ff_calculate_periodic.exit.i ], [ %i.az, %.split.i ], [ %i.az, %lg4ff_calculate_constant.exit.i ], [ %i.az, %lg4ff_calculate_ramp.exit.i ], [ %i.az, %bb.ce ], [ %i.up, %bb.cf ], [ %i.az, %bb.cg ], [ %i.az, %effect_is_periodic.exit.i ], [ %i.az, %.lr.ph.i ], [ %i.az, %bb.h ], [ %i.az, %bb.bf ] ; 2 uses
  %i.vf = phi i32 [ %i.ba, %lg4ff_calculate_periodic.exit.i ], [ %i.ba, %.split.i ], [ %i.ba, %lg4ff_calculate_constant.exit.i ], [ %i.ba, %lg4ff_calculate_ramp.exit.i ], [ %i.ba, %bb.ce ], [ %i.um, %bb.cf ], [ %i.ba, %bb.cg ], [ %i.ba, %effect_is_periodic.exit.i ], [ %i.ba, %.lr.ph.i ], [ %i.ba, %bb.h ], [ %i.ba, %bb.bf ] ; 2 uses
  %i.vg = phi i32 [ %i.bb, %lg4ff_calculate_periodic.exit.i ], [ %i.bb, %.split.i ], [ %i.bb, %lg4ff_calculate_constant.exit.i ], [ %i.bb, %lg4ff_calculate_ramp.exit.i ], [ %i.bb, %bb.ce ], [ %i.uj, %bb.cf ], [ %i.bb, %bb.cg ], [ %i.bb, %effect_is_periodic.exit.i ], [ %i.bb, %.lr.ph.i ], [ %i.bb, %bb.h ], [ %i.bb, %bb.bf ] ; 2 uses
  %i.vh = phi i32 [ %i.bc, %lg4ff_calculate_periodic.exit.i ], [ %i.bc, %.split.i ], [ %i.bc, %lg4ff_calculate_constant.exit.i ], [ %i.bc, %lg4ff_calculate_ramp.exit.i ], [ %i.bc, %bb.ce ], [ %i.bc, %bb.cf ], [ %i.uy, %bb.cg ], [ %i.bc, %effect_is_periodic.exit.i ], [ %i.bc, %.lr.ph.i ], [ %i.bc, %bb.h ], [ %i.bc, %bb.bf ] ; 2 uses
  %i.vi = phi i32 [ %i.bd, %lg4ff_calculate_periodic.exit.i ], [ %i.bd, %.split.i ], [ %i.bd, %lg4ff_calculate_constant.exit.i ], [ %i.bd, %lg4ff_calculate_ramp.exit.i ], [ %i.bd, %bb.ce ], [ %i.bd, %bb.cf ], [ %i.uv, %bb.cg ], [ %i.bd, %effect_is_periodic.exit.i ], [ %i.bd, %.lr.ph.i ], [ %i.bd, %bb.h ], [ %i.bd, %bb.bf ] ; 2 uses
  %i.vj = phi i32 [ %i.be, %lg4ff_calculate_periodic.exit.i ], [ %i.be, %.split.i ], [ %i.be, %lg4ff_calculate_constant.exit.i ], [ %i.be, %lg4ff_calculate_ramp.exit.i ], [ %i.be, %bb.ce ], [ %i.be, %bb.cf ], [ %i.us, %bb.cg ], [ %i.be, %effect_is_periodic.exit.i ], [ %i.be, %.lr.ph.i ], [ %i.be, %bb.h ], [ %i.be, %bb.bf ] ; 2 uses
  %i.vk = phi i32 [ %i.pu, %lg4ff_calculate_periodic.exit.i ], [ %i.bf, %.split.i ], [ %i.rn, %lg4ff_calculate_constant.exit.i ], [ %i.to, %lg4ff_calculate_ramp.exit.i ], [ %i.bf, %bb.ce ], [ %i.bf, %bb.cf ], [ %i.bf, %bb.cg ], [ %i.bf, %effect_is_periodic.exit.i ], [ %i.bf, %.lr.ph.i ], [ %i.bf, %bb.h ], [ %i.bf, %bb.bf ] ; 2 uses
  %.170.i = phi i32 [ %i.bk, %lg4ff_calculate_periodic.exit.i ], [ %i.bk, %.split.i ], [ %i.bk, %lg4ff_calculate_constant.exit.i ], [ %i.bk, %lg4ff_calculate_ramp.exit.i ], [ %i.bk, %bb.ce ], [ %i.bk, %bb.cf ], [ %i.bk, %bb.cg ], [ %i.bk, %effect_is_periodic.exit.i ], [ %.069102.i, %.lr.ph.i ], [ %i.bk, %bb.h ], [ %i.bk, %bb.bf ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.vl = icmp samesign ult i64 %indvars.iv.i, 15
  %i.vm = icmp ne i32 %.170.i, 0
  %or.cond.i = select i1 %i.vl, i1 %i.vm, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %lg4ff_update_state.exit.i
  store i32 %i.vd, ptr %i.i, align 4
  store i32 %i.vc, ptr %i.j, align 16
  %i.vn = sext i32 %i.vb to i64
  %i.vo = sext i32 %i.va to i64
  %i.vp = sext i32 %i.vg to i64
  %i.vq = sext i32 %i.vf to i64
  %i.vr = sext i32 %i.vj to i64
  %i.vs = sext i32 %i.vi to i64
  %i.vt = sext i32 %i.vk to i64
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i, %bb.b
  %i.vu = phi i64 [ %i.vs, %._crit_edge.i ], [ 0, %bb.b ]
  %i.vv = phi i64 [ %i.vr, %._crit_edge.i ], [ 0, %bb.b ]
  %i.vw = phi i64 [ %i.vq, %._crit_edge.i ], [ 0, %bb.b ]
  %i.vx = phi i64 [ %i.vp, %._crit_edge.i ], [ 0, %bb.b ]
  %i.vy = phi i64 [ %i.vo, %._crit_edge.i ], [ 0, %bb.b ]
  %i.vz = phi i64 [ %i.vn, %._crit_edge.i ], [ 0, %bb.b ]
  %i.wa = phi i32 [ %i.vh, %._crit_edge.i ], [ 0, %bb.b ]
  %i.wb = phi i32 [ %i.ve, %._crit_edge.i ], [ 0, %bb.b ]
  %i.wc = phi i32 [ %i.uz, %._crit_edge.i ], [ 0, %bb.b ]
  %.lcssa.i = phi i64 [ %i.vt, %._crit_edge.i ], [ 0, %bb.b ]
  %.mask.i = and i32 %i.as, 65535                 ; 4 uses
  %i.wd = zext nneg i32 %.mask.i to i64           ; 7 uses
  %i.we = mul nsw i64 %.lcssa.i, %i.wd
  %i.wf = sdiv i64 %i.we, 65535
  %i.wg = trunc nsw i64 %i.wf to i32              ; 2 uses
  store i32 %i.wg, ptr %1, align 16
  %i.wh = load i32, ptr %i.k, align 4
  %i.wi = mul i32 %i.wh, %i.wc
  %i.wj = udiv i32 %i.wi, 100
  %i.wk = load i32, ptr %i.l, align 8
  %i.wl = mul i32 %i.wk, %i.wb
  %i.wm = udiv i32 %i.wl, 100
  %i.wn = load i32, ptr %i.m, align 4
  %i.wo = mul i32 %i.wn, %i.wa
  %i.wp = udiv i32 %i.wo, 100
  %i.wq = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.wg, i1 true)
  %i.wr = mul nsw i64 %i.vz, %i.wd
  %i.ws = sdiv i64 %i.wr, 65535
  %i.wt = trunc nsw i64 %i.ws to i32
  store i32 %i.wt, ptr %i.o, align 4
  %i.wu = mul nsw i64 %i.vy, %i.wd
  %i.wv = sdiv i64 %i.wu, 65535
  %i.ww = trunc nsw i64 %i.wv to i32
  store i32 %i.ww, ptr %i.p, align 8
  %i.wx = mul i32 %i.wj, %.mask.i
  %i.wy = udiv i32 %i.wx, 65535                   ; 2 uses
  store i32 %i.wy, ptr %i.q, align 4
  %i.wz = mul nuw nsw i32 %i.wy, 32767
  %i.xa = udiv i32 %i.wz, 65535
  %i.xb = add nuw i32 %i.xa, %i.wq
  %i.xc = mul nsw i64 %i.vx, %i.wd
  %i.xd = sdiv i64 %i.xc, 65535
  %i.xe = trunc nsw i64 %i.xd to i32
  store i32 %i.xe, ptr %i.s, align 4
  %i.xf = mul nsw i64 %i.vw, %i.wd
  %i.xg = sdiv i64 %i.xf, 65535
  %i.xh = trunc nsw i64 %i.xg to i32
  store i32 %i.xh, ptr %i.t, align 16
  %i.xi = mul i32 %i.wm, %.mask.i
  %i.xj = udiv i32 %i.xi, 65535                   ; 2 uses
  store i32 %i.xj, ptr %i.u, align 4
  %i.xk = mul nuw nsw i32 %i.xj, 32767
  %i.xl = udiv i32 %i.xk, 65535
  %i.xm = add nuw i32 %i.xb, %i.xl
  %i.xn = mul nsw i64 %i.vv, %i.wd
  %i.xo = sdiv i64 %i.xn, 65535
  %i.xp = trunc nsw i64 %i.xo to i32
  store i32 %i.xp, ptr %i.w, align 4
  %i.xq = mul nsw i64 %i.vu, %i.wd
  %i.xr = sdiv i64 %i.xq, 65535
  %i.xs = trunc nsw i64 %i.xr to i32
  store i32 %i.xs, ptr %i.x, align 8
  %i.xt = mul i32 %i.wp, %.mask.i
  %i.xu = udiv i32 %i.xt, 65535                   ; 2 uses
  store i32 %i.xu, ptr %i.y, align 4
  %i.xv = mul nuw nsw i32 %i.xu, 32767
  %i.xw = udiv i32 %i.xv, 65535
  %i.xx = add nuw i32 %i.xm, %i.xw                ; 2 uses
  %i.xy = load i32, ptr %i.z, align 8
  %i.xz = icmp sgt i32 %i.xx, %i.xy
  br i1 %i.xz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.xx, ptr %i.z, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call fastcc void @lg4ff_update_slot(ptr noundef nonnull %i.aa, ptr noundef %1)
  %i.ya = load i8, ptr %i.ac, align 8, !range !3, !noundef !4
  %i.yb = trunc nuw i8 %i.ya to i1
  br i1 %i.yb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.yc = load ptr, ptr %i.ab, align 8
  %i.yd = tail call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.yc, ptr noundef nonnull %i.ad, i32 noundef 7) #8 ; 0 uses
  store i8 0, ptr %i.ac, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call fastcc void @lg4ff_update_slot(ptr noundef nonnull %i.ae, ptr noundef %i.n)
  %i.ye = load i8, ptr %i.af, align 8, !range !3, !noundef !4
  %i.yf = trunc nuw i8 %i.ye to i1
  br i1 %i.yf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.yg = load ptr, ptr %i.ab, align 8
  %i.yh = tail call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.yg, ptr noundef nonnull %i.ag, i32 noundef 7) #8 ; 0 uses
  store i8 0, ptr %i.af, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call fastcc void @lg4ff_update_slot(ptr noundef nonnull %i.ah, ptr noundef %i.r)
  %i.yi = load i8, ptr %i.ai, align 8, !range !3, !noundef !4
  %i.yj = trunc nuw i8 %i.yi to i1
  br i1 %i.yj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.yk = load ptr, ptr %i.ab, align 8
  %i.yl = tail call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.yk, ptr noundef nonnull %i.aj, i32 noundef 7) #8 ; 0 uses
  store i8 0, ptr %i.ai, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  call fastcc void @lg4ff_update_slot(ptr noundef nonnull %i.ak, ptr noundef %i.v)
  %i.ym = load i8, ptr %i.al, align 8, !range !3, !noundef !4
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %bb.cq, label %lg4ff_timer.exit

bb.cq:                                            ; preds = %bb.cp
  %i.yo = load ptr, ptr %i.ab, align 8
  %i.yp = tail call zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef %i.yo, ptr noundef nonnull %i.am, i32 noundef 7) #8 ; 0 uses
  store i8 0, ptr %i.al, align 8
  br label %lg4ff_timer.exit

lg4ff_timer.exit:                                 ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.yq = load ptr, ptr %i.d, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.yq) #8
  tail call void @SDL_Delay_REAL(i32 noundef 2) #8
  %i.yr = load i8, ptr %i.a, align 8, !range !3, !noundef !4
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %._crit_edge, label %bb.b
}

declare zeroext i1 @SDL_SendJoystickEffect_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @lg4ff_update_slot(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 4 dereferenceable(7) %i.b, i64 7, i1 false)
  %i.c = load i8, ptr %i.a, align 1               ; 2 uses
  %i.d = and i8 %i.c, 15
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i8 %i.c, -16
  %i.g = or disjoint i8 %i.f, 12
  store i8 %i.g, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.k, align 4
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 12, ptr %i.k, align 4
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.q, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  store i32 12, ptr %i.q, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  store i32 3, ptr %i.q, align 4
  %i.t = load i32, ptr %0, align 4
  %i.u = shl i32 16, %i.t
  %i.v = trunc i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, 3
  store i8 %i.w, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.x, i8 0, i64 6, i1 false)
  br label %bb.t

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.e, %bb.f
  %.ph = phi i8 [ 12, %bb.f ], [ 1, %bb.e ], [ 1, %bb.i ], [ 12, %bb.j ]
  %i.y = load i32, ptr %0, align 4                ; 2 uses
  %i.z = shl i32 16, %i.y
  %2 = trunc i32 %i.z to i8
  %3 = or disjoint i8 %.ph, %2
  store i8 %3, ptr %i.b, align 4
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split, label %bb.t

.split:                                           ; preds = %bb.l
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true)
  switch i32 %i.ac, label %bb.t [
    i32 0, label %bb.m
    i32 7, label %bb.q
    i32 8, label %bb.r
    i32 10, label %bb.s
  ]

bb.m:                                             ; preds = %.split
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ad, i8 0, i64 6, i1 false)
  %i.ae = load i32, ptr %1, align 4               ; 3 uses
  %i.af = icmp slt i32 %i.ae, -32767
  br i1 %i.af, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp sgt i32 %i.ae, 32767
  br i1 %i.ag, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = lshr i32 %i.ae, 8
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = xor i8 %i.ai, -128
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ak = phi i8 [ 0, %bb.m ], [ %i.aj, %bb.o ], [ -1, %bb.n ]
  %i.al = sext i32 %i.y to i64
  %i.am = getelementptr i8, ptr %i.b, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 2
  store i8 %i.ak, ptr %i.an, align 1
  br label %bb.t

bb.q:                                             ; preds = %.split
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load <2 x i32>, ptr %i.ao, align 4
  %i.aq = lshr <2 x i32> %i.ap, splat (i32 5)
  %i.ar = and <2 x i32> %i.aq, splat (i32 2047)
  %i.as = xor <2 x i32> %i.ar, splat (i32 1024)   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %.lobit108 = lshr i32 %i.au, 31
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 3 uses
  %i.ay = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aw, i1 true) ; 3 uses
  %i.az = icmp samesign ult i32 %i.ax, 2048       ; 2 uses
  %i.ba = add nsw i32 %i.ax, -2048
  %i.bb = extractelement <2 x i32> %i.as, i64 0
  %.097 = select i1 %i.az, i32 0, i32 %i.bb       ; 2 uses
  %i.bc = icmp samesign ult i32 %i.ay, 2048       ; 2 uses
  %i.bd = add nsw i32 %i.ay, -2048
  %i.be = extractelement <2 x i32> %i.as, i64 1
  %.096 = select i1 %i.bc, i32 2047, i32 %i.be    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 11, ptr %i.bf, align 1
  %i.bg = lshr i32 %.097, 3
  %i.bh = trunc nuw i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.bh, ptr %i.bi, align 2
  %i.bj = lshr i32 %.096, 3
  %i.bk = trunc nuw i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bn = select i1 %i.bc, i32 %i.ay, i32 %i.bm   ; 2 uses
  %i.bo = icmp samesign ugt i32 %i.bn, 32767
  %i.bp = lshr i32 %i.bn, 7
  %i.bq = and i32 %i.bp, 240
  %i.br = select i1 %i.bo, i32 240, i32 %i.bq
  %i.bs = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bt = select i1 %i.az, i32 %i.ax, i32 %i.bs
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 32767)
  %i.bv = lshr i32 %i.bu, 11
  %i.bw = or disjoint i32 %i.br, %i.bv
  %i.bx = trunc nuw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bx, ptr %i.by, align 4
  %i.bz = shl nuw nsw i32 %.096, 5
  %i.ca = shl nuw nsw i32 %.097, 1
  %i.cb = and i32 %i.ca, 14
  %i.cc = or disjoint i32 %i.bz, %i.cb
  %i.cd = lshr i32 %i.aw, 27
  %i.ce = and i32 %i.cd, 16
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = or disjoint i32 %i.cf, %.lobit108
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = icmp ugt i32 %i.ck, 65535
  %i.cm = lshr i32 %i.ck, 8
  %i.cn = trunc nuw i32 %i.cm to i8
  %i.co = select i1 %i.cl, i8 -1, i8 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.co, ptr %i.cp, align 2
  br label %bb.t

bb.r:                                             ; preds = %.split
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 12, ptr %i.cu, align 1
  %i.cv = load i32, ptr %i.cq, align 4
  %i.cw = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cx = icmp samesign ugt i32 %i.cw, 32767
  %i.cy = lshr i32 %i.cw, 11
  %i.cz = trunc nuw nsw i32 %i.cy to i8
  %i.da = select i1 %i.cx, i8 15, i8 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.da, ptr %i.db, align 2
  %.lobit106 = lshr i32 %i.cr, 31
  %i.dc = trunc nuw nsw i32 %.lobit106 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = load i32, ptr %i.cs, align 4
  %i.df = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.de, i1 true) ; 2 uses
  %i.dg = icmp samesign ugt i32 %i.df, 32767
  %i.dh = lshr i32 %i.df, 11
  %i.di = trunc nuw nsw i32 %i.dh to i8
  %i.dj = select i1 %i.dg, i8 15, i8 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.dj, ptr %i.dk, align 4
  %.lobit107 = lshr i32 %i.ct, 31
  %i.dl = trunc nuw nsw i32 %.lobit107 to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = icmp ugt i32 %i.do, 65535
  %i.dq = lshr i32 %i.do, 8
  %i.dr = trunc nuw i32 %i.dq to i8
  %i.ds = select i1 %i.dp, i8 -1, i8 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.ds, ptr %i.dt, align 2
  br label %bb.t

bb.s:                                             ; preds = %.split
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4
  %.lobit = lshr i32 %i.dv, 31
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 14, ptr %i.dy, align 1
  %i.dz = load i32, ptr %i.du, align 4
  %i.ea = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.dz, i1 true) ; 2 uses
  %i.eb = icmp samesign ugt i32 %i.ea, 32767
  %i.ec = lshr i32 %i.ea, 7
  %i.ed = trunc nuw i32 %i.ec to i8
  %i.ee = select i1 %i.eb, i8 -1, i8 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.ee, ptr %i.ef, align 2
  %i.eg = load i32, ptr %i.dw, align 4
  %i.eh = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.eg, i1 true) ; 2 uses
  %i.ei = icmp samesign ugt i32 %i.eh, 32767
  %i.ej = lshr i32 %i.eh, 7
  %i.ek = trunc nuw i32 %i.ej to i8
  %i.el = select i1 %i.ei, i8 -1, i8 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.el, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = icmp ugt i32 %i.eo, 65535
  %i.eq = lshr i32 %i.eo, 8
  %i.er = trunc nuw i32 %i.eq to i8
  %i.es = select i1 %i.ep, i8 -1, i8 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.es, ptr %i.et, align 4
  %i.eu = lshr i32 %i.dx, 27
  %i.ev = and i32 %i.eu, 16
  %i.ew = or disjoint i32 %i.ev, %.lobit
  %i.ex = trunc nuw nsw i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.ez, align 2
  br label %bb.t

bb.t:                                             ; preds = %.split, %bb.p, %bb.q, %bb.r, %bb.s, %bb.l, %bb.k
  %i.fa = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 7) #8
  %.not = icmp eq i32 %i.fa, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.fb, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
end_hunk_0
