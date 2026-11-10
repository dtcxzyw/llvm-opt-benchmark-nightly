Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_emit?download=true
inline.NumInlined: 520
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ir_emit_mul_div_mod:bb.a

bb.jq:                                            ; preds = %bb.jk
  br i1 %i.nw, label %.split39, label %bb.jr

.split39:                                         ; preds = %bb.jq
  %i.ny = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.ny, label %bb.jr [
    i32 3, label %bb.ju
    i32 1, label %bb.js
    i32 2, label %bb.jt
  ]

bb.jr:                                            ; preds = %.split39, %bb.jq
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15602, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.js:                                            ; preds = %.split39
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15614, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.jt:                                            ; preds = %.split39
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15615, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.ju:                                            ; preds = %.split39
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15627, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.jv:                                            ; preds = %bb.jj
  br i1 %i.nu, label %bb.jw, label %bb.kb

bb.jw:                                            ; preds = %bb.jv
  br i1 %i.nw, label %.split40, label %bb.jx

.split40:                                         ; preds = %bb.jw
  %i.nz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.nz, label %bb.jx [
    i32 3, label %bb.ka
    i32 1, label %bb.jy
    i32 2, label %bb.jz
  ]

bb.jx:                                            ; preds = %.split40, %bb.jw
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15639, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.jy:                                            ; preds = %.split40
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15648, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.jz:                                            ; preds = %.split40
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15649, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.ka:                                            ; preds = %.split40
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15658, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kb:                                            ; preds = %bb.jv
  br i1 %i.nw, label %.split41, label %bb.kc

.split41:                                         ; preds = %bb.kb
  %i.oa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.oa, label %bb.kc [
    i32 3, label %bb.kf
    i32 1, label %bb.kd
    i32 2, label %bb.ke
  ]

bb.kc:                                            ; preds = %.split41, %bb.kb
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15667, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kd:                                            ; preds = %.split41
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15679, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.ke:                                            ; preds = %.split41
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15680, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kf:                                            ; preds = %.split41
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15692, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kg:                                            ; preds = %bb.jj
  br i1 %i.nu, label %bb.kh, label %bb.km

bb.kh:                                            ; preds = %bb.kg
  br i1 %i.nw, label %.split42, label %bb.ki

.split42:                                         ; preds = %bb.kh
  %i.ob = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.ob, label %bb.ki [
    i32 3, label %bb.kl
    i32 1, label %bb.kj
    i32 2, label %bb.kk
  ]

bb.ki:                                            ; preds = %.split42, %bb.kh
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15704, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kj:                                            ; preds = %.split42
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15713, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kk:                                            ; preds = %.split42
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15714, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kl:                                            ; preds = %.split42
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15723, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.km:                                            ; preds = %bb.kg
  br i1 %i.nw, label %.split43, label %bb.kn

.split43:                                         ; preds = %bb.km
  %i.oc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.oc, label %bb.kn [
    i32 3, label %bb.kq
    i32 1, label %bb.ko
    i32 2, label %bb.kp
  ]

bb.kn:                                            ; preds = %.split43, %bb.km
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15732, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.ko:                                            ; preds = %.split43
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15744, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kp:                                            ; preds = %.split43
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15745, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kq:                                            ; preds = %.split43
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15757, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kr:                                            ; preds = %bb.jj
  br i1 %i.nu, label %bb.ks, label %bb.kx

bb.ks:                                            ; preds = %bb.kr
  br i1 %i.nw, label %.split44, label %bb.kt

.split44:                                         ; preds = %bb.ks
  %i.od = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.od, label %bb.kt [
    i32 3, label %bb.kw
    i32 1, label %bb.ku
    i32 2, label %bb.kv
  ]

bb.kt:                                            ; preds = %.split44, %bb.ks
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15546, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.ku:                                            ; preds = %.split44
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15555, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kv:                                            ; preds = %.split44
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15556, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kw:                                            ; preds = %.split44
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15565, i32 noundef %i.nm, i32 noundef %i.ng)
  br label %bb.lc

bb.kx:                                            ; preds = %bb.kr
  br i1 %i.nw, label %.split45, label %bb.ky

.split45:                                         ; preds = %bb.kx
  %i.oe = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.kz, i1 true)
  switch i32 %i.oe, label %bb.ky [
    i32 3, label %bb.lb
    i32 1, label %bb.kz
    i32 2, label %bb.la
  ]

bb.ky:                                            ; preds = %.split45, %bb.kx
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15769, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.kz:                                            ; preds = %.split45
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15781, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.la:                                            ; preds = %.split45
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15782, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.lb:                                            ; preds = %.split45
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15794, i32 noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.ng)
  br label %bb.lc

bb.lc:                                            ; preds = %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %bb.kc, %bb.kd, %bb.ke, %bb.kf, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.p, %bb.q, %bb.r, %bb.s, %bb.ck, %bb.cl, %bb.cm, %bb.cn
  %i.of = load i8, ptr %2, align 8, !tbaa !22     ; 2 uses
  switch i8 %i.of, label %3 [
    i8 28, label %bb.ld
    i8 43, label %bb.ld
  ]

3:                                                ; preds = %bb.lc
  %4 = icmp eq i8 %i.of, 29
  br i1 %4, label %bb.ld, label %bb.lw

bb.ld:                                            ; preds = %bb.lc, %bb.lc, %3
  switch i8 %spec.select, label %bb.le [
    i8 -1, label %bb.lo
    i8 0, label %bb.lf
  ]

bb.le:                                            ; preds = %bb.ld
  %.val919 = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.og = zext i8 %i.e to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !22
  %i.oj = zext i8 %i.oi to i32                    ; 2 uses
  %i.ok = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.oj)
  %i.ol = icmp eq i32 %i.ok, 1
  br i1 %i.ol, label %.split.i946, label %ir_emit_mov.exit947

.split.i946:                                      ; preds = %bb.le
  %i.om = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.oj, i1 true)
  %switch.tableidx998 = add nsw i32 %i.om, -1     ; 2 uses
  %i.on = icmp ult i32 %switch.tableidx998, 3
  br i1 %i.on, label %switch.lookup999, label %ir_emit_mov.exit947

switch.lookup999:                                 ; preds = %.split.i946
  %i.oo = zext nneg i32 %switch.tableidx998 to i64
  %switch.gep1000 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.ir_emit_dessa_move, i64 %i.oo
  %switch.load1001 = load i16, ptr %switch.gep1000, align 2
  %switch.ext1002 = zext i16 %switch.load1001 to i32
  br label %ir_emit_mov.exit947

ir_emit_mov.exit947:                              ; preds = %switch.lookup999, %.split.i946, %bb.le
  %.sink.i945 = phi i32 [ 2148, %.split.i946 ], [ 2148, %bb.le ], [ %switch.ext1002, %switch.lookup999 ]
  %i.op = getelementptr inbounds nuw i8, ptr %.val919, i64 32
  %i.oq = sext i8 %spec.select to i32
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull readonly %i.op, i32 noundef %.sink.i945, i32 noundef 0, i32 noundef %i.oq)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.ld, %ir_emit_mov.exit947
  %i.or = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.os = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.m
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !22
  %.not915 = icmp ult i8 %i.ot, 64
  br i1 %.not915, label %ir_emit_store.exit, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !114
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.ov, i64 %i.m
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !63
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !115
  %i.pa = sext i32 %i.ox to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !117 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !22 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 2
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !121
  %i.ph = and i16 %i.pg, 64
  %.not.i.i.i = icmp eq i16 %i.ph, 0
  br i1 %.not.i.i.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !138
  %i.pk = zext i32 %i.pe to i64
  %i.pl = and i32 %i.pj, 255
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = shl nuw nsw i64 %i.pm, 32
  %i.po = or disjoint i64 %i.pn, %i.pk
  br label %ir_ref_spill_slot.exit.i

bb.li:                                            ; preds = %bb.lg
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !80
  %i.pr = and i32 %i.pq, 2048
  %.not14.i.i.i = icmp eq i32 %i.pr, 0
  br i1 %.not14.i.i.i, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !99
  %i.pu = sub nsw i32 %i.pe, %i.pt
  br label %bb.ll

bb.lk:                                            ; preds = %bb.li
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !110
  %i.px = add nsw i32 %i.pw, %i.pe
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.py = phi i64 [ 21474836480, %bb.lj ], [ 17179869184, %bb.lk ]
  %i.pz = phi i32 [ %i.pu, %bb.lj ], [ %i.px, %bb.lk ]
  %i.qa = zext i32 %i.pz to i64
  %i.qb = or disjoint i64 %i.py, %i.qa
  br label %ir_ref_spill_slot.exit.i

ir_ref_spill_slot.exit.i:                         ; preds = %bb.ll, %bb.lh
  %.0.in.i.i.i = phi i64 [ %i.po, %bb.lh ], [ %i.qb, %bb.ll ]
  %.0.i.i.i = or disjoint i64 %.0.in.i.i.i, 561850441793536 ; 2 uses
  %i.qc = icmp ult i8 %i.e, 12
  br i1 %i.qc, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %ir_ref_spill_slot.exit.i
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call fastcc void @ir_emit_store_mem_int(ptr %.val.i.i, i32 noundef range(i32 0, 256) %i.f, i64 noundef %.0.i.i.i, i8 noundef signext %spec.select)
  br label %ir_emit_store.exit

bb.ln:                                            ; preds = %ir_ref_spill_slot.exit.i
  tail call fastcc void @ir_emit_store_mem_fp(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, 256) %i.f, i64 noundef %.0.i.i.i, i8 noundef signext %spec.select)
  br label %ir_emit_store.exit

bb.lo:                                            ; preds = %bb.ld
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !114
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.m
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !63
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !115
  %i.qj = sext i32 %i.qg to i64
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.qi, i64 %i.qj
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !117 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !22 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !121
  %i.qq = and i16 %i.qp, 64
  %.not.i.i.i948 = icmp eq i16 %i.qq, 0
  br i1 %.not.i.i.i948, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !138
  %i.qt = zext i32 %i.qn to i64
  %i.qu = and i32 %i.qs, 255
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = shl nuw nsw i64 %i.qv, 32
  %i.qx = or disjoint i64 %i.qw, %i.qt
  br label %ir_ref_spill_slot.exit.i949

bb.lq:                                            ; preds = %bb.lo
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !80
  %i.ra = and i32 %i.qz, 2048
  %.not14.i.i.i953 = icmp eq i32 %i.ra, 0
  br i1 %.not14.i.i.i953, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !99
  %i.rd = sub nsw i32 %i.qn, %i.rc
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !110
  %i.rg = add nsw i32 %i.rf, %i.qn
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %i.rh = phi i64 [ 21474836480, %bb.lr ], [ 17179869184, %bb.ls ]
  %i.ri = phi i32 [ %i.rd, %bb.lr ], [ %i.rg, %bb.ls ]
  %i.rj = zext i32 %i.ri to i64
  %i.rk = or disjoint i64 %i.rh, %i.rj
  br label %ir_ref_spill_slot.exit.i949

ir_ref_spill_slot.exit.i949:                      ; preds = %bb.lt, %bb.lp
  %.0.in.i.i.i950 = phi i64 [ %i.qx, %bb.lp ], [ %i.rk, %bb.lt ]
  %.0.i.i.i951 = or disjoint i64 %.0.in.i.i.i950, 561850441793536 ; 2 uses
  %i.rl = icmp ult i8 %i.e, 12
  br i1 %i.rl, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %ir_ref_spill_slot.exit.i949
  %.val.i.i952 = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call fastcc void @ir_emit_store_mem_int(ptr %.val.i.i952, i32 noundef range(i32 0, 256) %i.f, i64 noundef %.0.i.i.i951, i8 noundef signext 0)
  br label %ir_emit_store.exit

bb.lv:                                            ; preds = %ir_ref_spill_slot.exit.i949
  tail call fastcc void @ir_emit_store_mem_fp(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, 256) %i.f, i64 noundef %.0.i.i.i951, i8 noundef signext 0)
  br label %ir_emit_store.exit

bb.lw:                                            ; preds = %3
  %i.rm = zext i8 %i.e to i64
  %i.rn = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !22  ; 2 uses
  %i.rp = icmp eq i8 %i.ro, 1
  br i1 %i.rp, label %bb.lx, label %bb.mo

bb.lx:                                            ; preds = %bb.lw
  %i.rq = sext i8 %spec.select to i32
  br i1 %i.p, label %bb.mj, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15806)
  %.not911 = icmp eq i8 %i.q, 0
  br i1 %.not911, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15809, i32 noundef %i.rq)
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %i.rr = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.m
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !22
  %.not912 = icmp ult i8 %i.rt, 64
  br i1 %.not912, label %ir_emit_store.exit, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !114
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.m
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !63
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !115
  %i.sa = sext i32 %i.rx to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.rz, i64 %i.sa
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !117 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !22 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !121
  %i.sh = and i16 %i.sg, 64
  %.not.i.i.i955 = icmp eq i16 %i.sh, 0
  br i1 %.not.i.i.i955, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !138
  %i.sk = zext i32 %i.se to i64
  %i.sl = and i32 %i.sj, 255
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = shl nuw nsw i64 %i.sm, 32
  %i.so = or disjoint i64 %i.sn, %i.sk
  br label %ir_ref_spill_slot.exit.i956

bb.md:                                            ; preds = %bb.mb
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !80
  %i.sr = and i32 %i.sq, 2048
  %.not14.i.i.i960 = icmp eq i32 %i.sr, 0
  br i1 %.not14.i.i.i960, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !99
  %i.su = sub nsw i32 %i.se, %i.st
  br label %bb.mg

bb.mf:                                            ; preds = %bb.md
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !110
  %i.sx = add nsw i32 %i.sw, %i.se
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me
  %i.sy = phi i64 [ 21474836480, %bb.me ], [ 17179869184, %bb.mf ]
  %i.sz = phi i32 [ %i.su, %bb.me ], [ %i.sx, %bb.mf ]
  %i.ta = zext i32 %i.sz to i64
  %i.tb = or disjoint i64 %i.sy, %i.ta
  br label %ir_ref_spill_slot.exit.i956

ir_ref_spill_slot.exit.i956:                      ; preds = %bb.mg, %bb.mc
  %.0.in.i.i.i957 = phi i64 [ %i.so, %bb.mc ], [ %i.tb, %bb.mg ]
  %.0.i.i.i958 = or disjoint i64 %.0.in.i.i.i957, 561850441793536 ; 2 uses
  %i.tc = icmp ult i8 %i.e, 12
  br i1 %i.tc, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %ir_ref_spill_slot.exit.i956
  %.val.i.i959 = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call fastcc void @ir_emit_store_mem_int(ptr %.val.i.i959, i32 noundef range(i32 0, 256) %i.f, i64 noundef %.0.i.i.i958, i8 noundef signext %i.q)
  br label %ir_emit_store.exit

bb.mi:                                            ; preds = %ir_ref_spill_slot.exit.i956
  tail call fastcc void @ir_emit_store_mem_fp(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, 256) %i.f, i64 noundef %.0.i.i.i958, i8 noundef signext %i.q)
  br label %ir_emit_store.exit

bb.mj:                                            ; preds = %bb.lx
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !115
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !114
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.m
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !63
  %i.tj = zext i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tj
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !117 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !22 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !121
  %i.tq = and i16 %i.tp, 64
  %.not.i962 = icmp eq i16 %i.tq, 0
  br i1 %.not.i962, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !138
  %i.tt = shl i32 %i.ts, 24
  %i.tu = ashr exact i32 %i.tt, 24
  br label %ir_ref_spill_slot_offset.exit

bb.ml:                                            ; preds = %bb.mj
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !80
  %i.tx = and i32 %i.tw, 2048
  %.not16.i = icmp eq i32 %i.tx, 0
  br i1 %.not16.i, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !99
  %i.ua = sub nsw i32 %i.tn, %i.tz
  br label %ir_ref_spill_slot_offset.exit

bb.mn:                                            ; preds = %bb.ml
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !110
  %i.ud = add nsw i32 %i.uc, %i.tn
  br label %ir_ref_spill_slot_offset.exit

ir_ref_spill_slot_offset.exit:                    ; preds = %bb.mk, %bb.mm, %bb.mn
  %.0981 = phi i32 [ 4, %bb.mn ], [ 5, %bb.mm ], [ %i.tu, %bb.mk ]
  %.0.i963 = phi i32 [ %i.ud, %bb.mn ], [ %i.ua, %bb.mm ], [ %i.tn, %bb.mk ]
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 15815, i32 noundef %.0981, i32 noundef %.0.i963)
  br label %ir_emit_store.exit

bb.mo:                                            ; preds = %bb.lw
  switch i8 %spec.select, label %bb.mp [
    i8 -1, label %bb.mz
    i8 2, label %bb.mq
  ]

bb.mp:                                            ; preds = %bb.mo
  %.val = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ue = zext i8 %i.ro to i32                    ; 2 uses
  %i.uf = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ue)
  %i.ug = icmp eq i32 %i.uf, 1
  br i1 %i.ug, label %.split.i965, label %ir_emit_mov.exit966

.split.i965:                                      ; preds = %bb.mp
  %i.uh = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ue, i1 true)
  %switch.tableidx1003 = add nsw i32 %i.uh, -1    ; 2 uses
  %i.ui = icmp ult i32 %switch.tableidx1003, 3
  br i1 %i.ui, label %switch.lookup1004, label %ir_emit_mov.exit966

switch.lookup1004:                                ; preds = %.split.i965
  %i.uj = zext nneg i32 %switch.tableidx1003 to i64
  %switch.gep1005 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.ir_emit_dessa_move, i64 %i.uj
  %switch.load1006 = load i16, ptr %switch.gep1005, align 2
  %switch.ext1007 = zext i16 %switch.load1006 to i32
  br label %ir_emit_mov.exit966

ir_emit_mov.exit966:                              ; preds = %switch.lookup1004, %.split.i965, %bb.mp
  %.sink.i964 = phi i32 [ 2148, %.split.i965 ], [ 2148, %bb.mp ], [ %switch.ext1007, %switch.lookup1004 ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ul = sext i8 %spec.select to i32
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull readonly %i.uk, i32 noundef %.sink.i964, i32 noundef 2, i32 noundef %i.ul)
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mo, %ir_emit_mov.exit966
  %i.um = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.un = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.m
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !22
  %.not909 = icmp ult i8 %i.uo, 64
  br i1 %.not909, label %ir_emit_store.exit, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !114
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.m
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !63
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !115
  %i.uv = sext i32 %i.us to i64
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.uu, i64 %i.uv
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !117 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !22 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 2
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !121
  %i.vc = and i16 %i.vb, 64
end_hunk_0
