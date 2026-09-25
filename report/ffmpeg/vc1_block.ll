Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_block?download=true
inline.NumInlined: 223
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@vc1_decode_i_blocks:bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !87 ; 2 uses
  %i.jv = sext i16 %i.ju to i32                   ; 2 uses
  %i.jw = icmp slt i16 %i.ju, 0
  br i1 %i.jw, label %bb.q, label %get_vlc2.exit.i

bb.q:                                             ; preds = %bb.p
  %i.jx = sub i32 %i.je, %i.jb
  %i.jy = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.jx) ; 3 uses
  %i.jz = lshr i32 %i.jy, 3
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 1, !tbaa !87
  %i.kd = tail call i32 @llvm.bswap.i32(i32 %i.kc)
  %i.ke = and i32 %i.jy, 7
  %i.kf = shl i32 %i.kd, %i.ke
  %i.kg = add nsw i32 %i.jv, 32
  %i.kh = lshr i32 %i.kf, %i.kg
  %i.ki = add i32 %i.kh, %i.js
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.kj ; 2 uses
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !87
  %i.km = sext i16 %i.kl to i32
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !87
  %i.kp = sext i16 %i.ko to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o
  %.167.i.i = phi i32 [ %i.iy, %bb.o ], [ %i.km, %bb.q ], [ %i.js, %bb.p ] ; 5 uses
  %.165.i.i = phi i32 [ %i.ik, %bb.o ], [ %i.jy, %bb.q ], [ %i.je, %bb.p ]
  %.1.i.i = phi i32 [ %i.jb, %bb.o ], [ %i.kp, %bb.q ], [ %i.jv, %bb.p ]
  %i.kq = add i32 %.1.i.i, %.165.i.i
  %i.kr = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.kq) ; 8 uses
  store i32 %i.kr, ptr %i.ba, align 8, !tbaa !67
  %.not.i138 = icmp eq i32 %.167.i.i, 0
  %.pre.i = load i8, ptr %i.r, align 8, !tbaa !44 ; 4 uses
  br i1 %.not.i138, label %get_vlc2.exit._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %get_vlc2.exit.i
  %.off.i = add i8 %.pre.i, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %narrow.i = sub nuw nsw i8 3, %.pre.i
  %i.ks = zext nneg i8 %narrow.i to i32           ; 4 uses
  %i.kt = icmp eq i32 %.167.i.i, 119
  br i1 %i.kt, label %bb.t, label %bb.u

.thread.i:                                        ; preds = %bb.r
  %i.ku = icmp eq i32 %.167.i.i, 119
  br i1 %i.ku, label %bb.t, label %.thread171.i

bb.t:                                             ; preds = %.thread.i, %bb.s
  %i.kv = phi i32 [ 0, %.thread.i ], [ %i.ks, %bb.s ] ; 2 uses
  %i.kw = lshr i32 %i.kr, 3
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 1, !tbaa !87
  %i.la = tail call i32 @llvm.bswap.i32(i32 %i.kz)
  %i.lb = and i32 %i.kr, 7
  %i.lc = shl i32 %i.la, %i.lb
  %i.ld = sub nuw nsw i32 24, %i.kv
  %i.le = lshr i32 %i.lc, %i.ld
  %i.lf = add i32 %i.kr, 8
  %i.lg = add i32 %i.lf, %i.kv
  %i.lh = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.lg) ; 2 uses
  store i32 %i.lh, ptr %i.ba, align 8, !tbaa !67
  br label %.thread171.i

bb.u:                                             ; preds = %bb.s
  %i.li = lshr i32 %i.kr, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 1, !tbaa !87
  %i.lm = tail call i32 @llvm.bswap.i32(i32 %i.ll)
  %i.ln = and i32 %i.kr, 7
  %i.lo = shl i32 %i.lm, %i.ln
  %i.lp = add i32 %i.kr, %i.ks
  %i.lq = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.lp) ; 2 uses
  store i32 %i.lq, ptr %i.ba, align 8, !tbaa !67
  %i.lr = tail call i32 @llvm.fshl.i32(i32 %.167.i.i, i32 %i.lo, i32 %i.ks)
  %notmask.i = shl nsw i32 -1, %i.ks
  %.neg.i = add nuw nsw i32 %notmask.i, 1
  %i.ls = add nsw i32 %.neg.i, %i.lr
  br label %.thread171.i

.thread171.i:                                     ; preds = %bb.u, %bb.t, %.thread.i
  %i.lt = phi i32 [ %i.lh, %bb.t ], [ %i.lq, %bb.u ], [ %i.kr, %.thread.i ] ; 4 uses
  %.0133.i = phi i32 [ %i.le, %bb.t ], [ %i.ls, %bb.u ], [ %.167.i.i, %.thread.i ] ; 2 uses
  %i.lu = lshr i32 %i.lt, 3
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !87
  %i.ly = icmp slt i32 %i.lt, %i.il
  %i.lz = zext i1 %i.ly to i32
  %spec.select.i.i = add i32 %i.lt, %i.lz
  %i.ma = zext i8 %i.lx to i32
  %i.mb = and i32 %i.lt, 7
  store i32 %spec.select.i.i, ptr %i.ba, align 8, !tbaa !67
  %i.mc = lshr exact i32 128, %i.mb
  %i.md = and i32 %i.mc, %i.ma
  %.not153.i = icmp eq i32 %i.md, 0
  %i.me = sub nsw i32 0, %.0133.i
  %spec.select.i139 = select i1 %.not153.i, i32 %.0133.i, i32 %i.me
  br label %get_vlc2.exit._crit_edge.i

get_vlc2.exit._crit_edge.i:                       ; preds = %.thread171.i, %get_vlc2.exit.i
  %.2135.i = phi i32 [ %spec.select.i139, %.thread171.i ], [ 0, %get_vlc2.exit.i ]
  %i.mf = load i32, ptr %i.bf, align 4, !tbaa !113
  %i.mg = zext i8 %.pre.i to i32
  %i.mh = load i32, ptr %i.x, align 8, !tbaa !100 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !48 ; 3 uses
  %i.mk = load ptr, ptr %i.bh, align 16, !tbaa !107
  %i.ml = load i32, ptr %i.gp, align 4, !tbaa !48
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = getelementptr inbounds [2 x i8], ptr %i.mk, i64 %i.mm ; 4 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -2
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !85
  %i.mq = sext i16 %i.mp to i32                   ; 2 uses
  %i.mr = xor i32 %i.mj, -1
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.mn, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !85
  %i.mv = sext i16 %i.mu to i32                   ; 2 uses
  %i.mw = sub nsw i32 0, %i.mj
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [2 x i8], ptr %i.mn, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !85
  %i.na = sext i16 %i.mz to i32                   ; 2 uses
  %i.nb = icmp ugt i8 %.pre.i, 8
  %i.nc = icmp ne i32 %i.mf, 0
  %or.cond.i.i = and i1 %i.nb, %i.nc
  %i.nd = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ne = icmp ne i32 %i.nd, 0
  %i.nf = trunc i64 %indvars.iv to i32
  %i.ng = add i32 %i.nf, -4
  %i.nh = icmp ult i32 %i.ng, -2
  %or.cond13.i.i = and i1 %i.nh, %i.ne            ; 3 uses
  br i1 %or.cond.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %get_vlc2.exit._crit_edge.i
  br i1 %or.cond13.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ni = sext i32 %i.mh to i64
  %i.nj = getelementptr inbounds [2 x i8], ptr @vc1_i_pred_dc.dcpred, i64 %i.ni
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !85
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.056.i.i = phi i32 [ %i.nl, %bb.w ], [ %i.na, %bb.v ] ; 2 uses
  %.055.i.i = phi i32 [ %i.nl, %bb.w ], [ %i.mv, %bb.v ]
  %i.nm = load i32, ptr %i.z, align 4, !tbaa !55
  %i.nn = icmp eq i32 %i.nm, 0
  %i.no = and i64 %indvars.iv, 5
  %i.np = icmp ne i64 %i.no, 1
  %or.cond9.i.i = and i1 %i.np, %i.nn
  br i1 %or.cond9.i.i, label %bb.y, label %vc1_i_pred_dc.exit.i

bb.y:                                             ; preds = %bb.x
  %i.nq = sext i32 %i.mh to i64
  %i.nr = getelementptr inbounds [2 x i8], ptr @vc1_i_pred_dc.dcpred, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !85
  %i.nt = zext i16 %i.ns to i32                   ; 2 uses
  br label %vc1_i_pred_dc.exit.i

bb.z:                                             ; preds = %get_vlc2.exit._crit_edge.i
  %spec.select.i167.i = select i1 %or.cond13.i.i, i32 0, i32 %i.na
  %i.nu = load i32, ptr %i.z, align 4, !tbaa !55
  %i.nv = icmp eq i32 %i.nu, 0
  %i.nw = and i64 %indvars.iv, 5
  %i.nx = icmp ne i64 %i.nw, 1
  %or.cond17.i.i = and i1 %i.nx, %i.nv            ; 2 uses
  %i.ny = select i1 %or.cond17.i.i, i1 true, i1 %or.cond13.i.i
  %spec.select60.i.i = select i1 %i.ny, i32 0, i32 %i.mv
  %spec.select61.i.i = select i1 %or.cond17.i.i, i32 0, i32 %i.mq
  br label %vc1_i_pred_dc.exit.i

vc1_i_pred_dc.exit.i:                             ; preds = %bb.z, %bb.y, %bb.x
  %.258.i.i = phi i32 [ %.056.i.i, %bb.x ], [ %spec.select.i167.i, %bb.z ], [ %.056.i.i, %bb.y ] ; 2 uses
  %.2.i.i = phi i32 [ %.055.i.i, %bb.x ], [ %spec.select60.i.i, %bb.z ], [ %i.nt, %bb.y ] ; 2 uses
  %.054.i.i = phi i32 [ %i.mq, %bb.x ], [ %spec.select61.i.i, %bb.z ], [ %i.nt, %bb.y ] ; 2 uses
  %i.nz = sub nsw i32 %.258.i.i, %.2.i.i
  %i.oa = tail call i32 @llvm.abs.i32(i32 %i.nz, i1 true)
  %i.ob = sub nsw i32 %.2.i.i, %.054.i.i
  %i.oc = tail call i32 @llvm.abs.i32(i32 %i.ob, i1 true)
  %.not.i.not.i = icmp samesign ugt i32 %i.oa, %i.oc ; 7 uses
  %.258..054.i.i = select i1 %.not.i.not.i, i32 %.258.i.i, i32 %.054.i.i
  %i.od = add nsw i32 %.258..054.i.i, %.2135.i    ; 2 uses
  %i.oe = trunc i32 %i.od to i16
  store i16 %i.oe, ptr %i.mn, align 2, !tbaa !85
  %i.of = mul nsw i32 %i.od, %i.mh
  %i.og = trunc i32 %i.of to i16
  store i16 %i.og, ptr %i.ib, align 2, !tbaa !85
  %i.oh = load ptr, ptr %i.bi, align 8, !tbaa !108
  %i.oi = getelementptr inbounds [32 x i8], ptr %i.oh, i64 %i.mm ; 18 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 -32 ; 2 uses
  %i.ok = shl nsw i32 %i.mj, 4
  %i.ol = sext i32 %i.ok to i64
  %i.om = sub nsw i64 0, %i.ol
  %i.on = getelementptr inbounds [2 x i8], ptr %i.oi, i64 %i.om ; 2 uses
  %i.oo = shl nuw nsw i32 %i.mg, 1
  %i.op = load i8, ptr %i.bj, align 4, !tbaa !45
  %i.oq = zext i8 %i.op to i32
  %i.or = add nuw nsw i32 %i.oo, %i.oq            ; 2 uses
  %.not155.i = icmp eq i32 %.0128, 0
  br i1 %.not155.i, label %bb.ah, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %vc1_i_pred_dc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.os = load i32, ptr %i.bc, align 16, !tbaa !91
  %.not160.i = icmp eq i32 %i.os, 0
  %..i = select i1 %.not.i.not.i, i64 6250, i64 6314
  %.sink.i = select i1 %.not160.i, i64 6186, i64 %..i
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.preheader.i
  %.0127189.i = phi i32 [ %i.pg, %bb.ab ], [ 1, %.lr.ph.preheader.i ]
  %i.ou = call fastcc i32 @vc1_decode_ac_coeff(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.ic)
  %i.ov = icmp slt i32 %i.ou, 0
  br i1 %i.ov, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ow = load i32, ptr %i.b, align 4, !tbaa !48
  %i.ox = add nsw i32 %i.ow, %.0127189.i          ; 3 uses
  %i.oy = icmp sgt i32 %i.ox, 63
  br i1 %i.oy, label %.thread178.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.oz = load i32, ptr %i.c, align 4, !tbaa !48
  %i.pa = trunc i32 %i.oz to i16
  %i.pb = sext i32 %i.ox to i64
  %i.pc = getelementptr inbounds i8, ptr %i.ot, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !87
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.pe
  store i16 %i.pa, ptr %i.pf, align 2, !tbaa !85
  %i.pg = add nsw i32 %i.ox, 1
  %i.ph = load i32, ptr %i.a, align 4, !tbaa !48
  %.not162.i = icmp eq i32 %i.ph, 0
  br i1 %.not162.i, label %.lr.ph.i, label %.thread178.i, !llvm.loop !169

.thread178.i:                                     ; preds = %bb.ab, %bb.aa
  %.pre208.i = load i32, ptr %i.bc, align 16, !tbaa !104
  %.not163.i = icmp eq i32 %.pre208.i, 0
  br i1 %.not163.i, label %.loopexit187.i, label %.loopexit187.loopexit.i

.loopexit187.loopexit.i:                          ; preds = %.thread178.i
  %1 = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %.1138.i = select i1 %.not.i.not.i, ptr %1, ptr %i.oj ; 7 uses
  %.0125.in.v.i = select i1 %.not.i.not.i, i64 6384, i64 6380
  %.0125.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0125.in.v.i
  %.0125.i = load i32, ptr %.0125.in.i, align 4, !tbaa !48 ; 7 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.1138.i, i64 2
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !85
  %i.pk = shl nuw i32 1, %.0125.i
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.pl ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !85
  %i.po = add i16 %i.pn, %i.pj
  store i16 %i.po, ptr %i.pm, align 2, !tbaa !85
  %i.pp = getelementptr inbounds nuw i8, ptr %.1138.i, i64 4
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !85
  %i.pr = shl i32 2, %.0125.i
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ps ; 2 uses
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !85
  %i.pv = add i16 %i.pu, %i.pq
  store i16 %i.pv, ptr %i.pt, align 2, !tbaa !85
  %i.pw = getelementptr inbounds nuw i8, ptr %.1138.i, i64 6
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !85
  %i.py = shl i32 3, %.0125.i
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.pz ; 2 uses
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !85
  %i.qc = add i16 %i.qb, %i.px
  store i16 %i.qc, ptr %i.qa, align 2, !tbaa !85
  %i.qd = getelementptr inbounds nuw i8, ptr %.1138.i, i64 8
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !85
  %i.qf = shl i32 4, %.0125.i
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qg ; 2 uses
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !85
  %i.qj = add i16 %i.qi, %i.qe
  store i16 %i.qj, ptr %i.qh, align 2, !tbaa !85
  %i.qk = getelementptr inbounds nuw i8, ptr %.1138.i, i64 10
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !85
  %i.qm = shl i32 5, %.0125.i
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qn ; 2 uses
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !85
  %i.qq = add i16 %i.qp, %i.ql
  store i16 %i.qq, ptr %i.qo, align 2, !tbaa !85
  %i.qr = getelementptr inbounds nuw i8, ptr %.1138.i, i64 12
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !85
  %i.qt = shl i32 6, %.0125.i
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qu ; 2 uses
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !85
  %i.qx = add i16 %i.qw, %i.qs
  store i16 %i.qx, ptr %i.qv, align 2, !tbaa !85
  %i.qy = getelementptr inbounds nuw i8, ptr %.1138.i, i64 14
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !85
  %i.ra = shl i32 7, %.0125.i
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rb ; 2 uses
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !85
  %i.re = add i16 %i.rd, %i.qz
  store i16 %i.re, ptr %i.rc, align 2, !tbaa !85
  br label %.loopexit187.i

.loopexit187.i:                                   ; preds = %.loopexit187.loopexit.i, %.thread178.i
  %i.rf = load i32, ptr %i.bn, align 4, !tbaa !110 ; 7 uses
  %i.rg = load i32, ptr %i.bo, align 16, !tbaa !111 ; 7 uses
  %i.rh = shl nuw i32 1, %i.rf
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ri
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !85
  %i.rl = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  store i16 %i.rk, ptr %i.rl, align 2, !tbaa !85
  %i.rm = shl nuw i32 1, %i.rg
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rn
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !85
  %i.rq = getelementptr inbounds nuw i8, ptr %i.oi, i64 18
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !85
  %i.rr = shl i32 2, %i.rf
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rs
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !85
  %i.rv = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !85
  %i.rw = shl i32 2, %i.rg
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !85
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  store i16 %i.rz, ptr %i.sa, align 2, !tbaa !85
  %i.sb = shl i32 3, %i.rf
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sc
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !85
  %i.sf = getelementptr inbounds nuw i8, ptr %i.oi, i64 6
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !85
  %i.sg = shl i32 3, %i.rg
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sh
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !85
  %i.sk = getelementptr inbounds nuw i8, ptr %i.oi, i64 22
  store i16 %i.sj, ptr %i.sk, align 2, !tbaa !85
  %i.sl = shl i32 4, %i.rf
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sm
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !85
  %i.sp = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i16 %i.so, ptr %i.sp, align 2, !tbaa !85
  %i.sq = shl i32 4, %i.rg
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sr
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !85
  %i.su = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store i16 %i.st, ptr %i.su, align 2, !tbaa !85
  %i.sv = shl i32 5, %i.rf
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !85
  %i.sz = getelementptr inbounds nuw i8, ptr %i.oi, i64 10
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !85
  %i.ta = shl i32 5, %i.rg
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tb
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !85
  %i.te = getelementptr inbounds nuw i8, ptr %i.oi, i64 26
  store i16 %i.td, ptr %i.te, align 2, !tbaa !85
  %i.tf = shl i32 6, %i.rf
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tg
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !85
  %i.tj = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i16 %i.ti, ptr %i.tj, align 2, !tbaa !85
  %i.tk = shl i32 6, %i.rg
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tl
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !85
  %i.to = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store i16 %i.tn, ptr %i.to, align 2, !tbaa !85
  %i.tp = shl i32 7, %i.rf
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tq
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !85
  %i.tt = getelementptr inbounds nuw i8, ptr %i.oi, i64 14
  store i16 %i.ts, ptr %i.tt, align 2, !tbaa !85
  %i.tu = shl i32 7, %i.rg
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tv
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !85
  %i.ty = getelementptr inbounds nuw i8, ptr %i.oi, i64 30
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !85
  %i.tz = trunc nuw nsw i32 %i.or to i16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.loopexit187.i
  %indvars.iv.i = phi i64 [ 1, %.loopexit187.i ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv.i ; 3 uses
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !85 ; 2 uses
  %.not165.i = icmp eq i16 %i.ub, 0
  br i1 %.not165.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.uc = mul i16 %i.ub, %i.tz                    ; 3 uses
  store i16 %i.uc, ptr %i.ua, align 2, !tbaa !85
  %i.ud = load i8, ptr %i.bp, align 1, !tbaa !46
  %.not166.i = icmp eq i8 %i.ud, 0
  br i1 %.not166.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ue = icmp slt i16 %i.uc, 0
  %i.uf = load i8, ptr %i.r, align 8, !tbaa !44
  %i.ug = zext i8 %i.uf to i16                    ; 2 uses
  %i.uh = sub nsw i16 0, %i.ug
  %i.ui = select i1 %i.ue, i16 %i.uh, i16 %i.ug
  %i.uj = add i16 %i.ui, %i.uc
  store i16 %i.uj, ptr %i.ua, align 2, !tbaa !85
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %bb.ag, label %bb.ac, !llvm.loop !170

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %vc1_decode_i_block.exit

bb.ah:                                            ; preds = %vc1_i_pred_dc.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.oi, i8 0, i64 32, i1 false)
  %i.uk = load i32, ptr %i.bc, align 16, !tbaa !104
  %.not156.i = icmp eq i32 %i.uk, 0
  br i1 %.not156.i, label %vc1_decode_i_block.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %2 = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %.2139.i = select i1 %.not.i.not.i, ptr %2, ptr %i.oj ; 14 uses
  %.0136.idx.i = select i1 %.not.i.not.i, i64 16, i64 0
  %.0136.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.0136.idx.i
  %.0.in.v.i = select i1 %.not.i.not.i, i64 6384, i64 6380
  %.0.in.i140 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i
  %.0.i141 = load i32, ptr %.0.in.i140, align 4, !tbaa !48 ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0136.i, ptr noundef nonnull align 2 dereferenceable(16) %.2139.i, i64 16, i1 false)
  %i.ul = trunc nuw nsw i32 %i.or to i16          ; 13 uses
  %i.um = load i8, ptr %i.bp, align 1, !tbaa !46
  %.fr.i = freeze i8 %i.um
  %.not158.not.i = icmp eq i8 %.fr.i, 0
  %i.un = getelementptr inbounds nuw i8, ptr %.2139.i, i64 2
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !85
  %i.up = mul i16 %i.uo, %i.ul                    ; 4 uses
  %i.uq = shl nuw i32 1, %.0.i141
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ur ; 2 uses
  store i16 %i.up, ptr %i.us, align 2, !tbaa !85
  br i1 %.not158.not.i, label %.split.preheader.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.ai
  %i.ut = getelementptr inbounds nuw i8, ptr %.2139.i, i64 4
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !85
  %i.uv = mul i16 %i.uu, %i.ul
  %i.uw = shl i32 2, %.0.i141
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ux
  store i16 %i.uv, ptr %i.uy, align 2, !tbaa !85
  %i.uz = getelementptr inbounds nuw i8, ptr %.2139.i, i64 6
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !85
  %i.vb = mul i16 %i.va, %i.ul
  %i.vc = shl i32 3, %.0.i141
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vd
  store i16 %i.vb, ptr %i.ve, align 2, !tbaa !85
  %i.vf = getelementptr inbounds nuw i8, ptr %.2139.i, i64 8
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !85
  %i.vh = mul i16 %i.vg, %i.ul
  %i.vi = shl i32 4, %.0.i141
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vj
  store i16 %i.vh, ptr %i.vk, align 2, !tbaa !85
  %i.vl = getelementptr inbounds nuw i8, ptr %.2139.i, i64 10
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !85
  %i.vn = mul i16 %i.vm, %i.ul
  %i.vo = shl i32 5, %.0.i141
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vp
  store i16 %i.vn, ptr %i.vq, align 2, !tbaa !85
  %i.vr = getelementptr inbounds nuw i8, ptr %.2139.i, i64 12
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !85
  %i.vt = mul i16 %i.vs, %i.ul
  %i.vu = shl i32 6, %.0.i141
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vv
  store i16 %i.vt, ptr %i.vw, align 2, !tbaa !85
  %i.vx = getelementptr inbounds nuw i8, ptr %.2139.i, i64 14
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !85
  %i.vz = mul i16 %i.vy, %i.ul
  %i.wa = shl i32 7, %.0.i141
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.wb
  store i16 %i.vz, ptr %i.wc, align 2, !tbaa !85
  br label %vc1_decode_i_block.exit

.split.preheader.i:                               ; preds = %bb.ai
  %.not159.i = icmp eq i16 %i.up, 0
  br i1 %.not159.i, label %.split.1.i, label %bb.aj

bb.aj:                                            ; preds = %.split.preheader.i
  %i.wd = icmp slt i16 %i.up, 0
  %i.we = load i8, ptr %i.r, align 8, !tbaa !44
  %i.wf = zext i8 %i.we to i16                    ; 2 uses
  %i.wg = sub nsw i16 0, %i.wf
  %i.wh = select i1 %i.wd, i16 %i.wg, i16 %i.wf
  %i.wi = add i16 %i.wh, %i.up
  store i16 %i.wi, ptr %i.us, align 2, !tbaa !85
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.aj, %.split.preheader.i
  %i.wj = getelementptr inbounds nuw i8, ptr %.2139.i, i64 4
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !85
  %i.wl = mul i16 %i.wk, %i.ul                    ; 4 uses
  %i.wm = shl i32 2, %.0.i141
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.wn ; 2 uses
  store i16 %i.wl, ptr %i.wo, align 2, !tbaa !85
  %.not159.1.i = icmp eq i16 %i.wl, 0
  br i1 %.not159.1.i, label %.split.2.i, label %bb.ak

bb.ak:                                            ; preds = %.split.1.i
  %i.wp = icmp slt i16 %i.wl, 0
  %i.wq = load i8, ptr %i.r, align 8, !tbaa !44
  %i.wr = zext i8 %i.wq to i16                    ; 2 uses
  %i.ws = sub nsw i16 0, %i.wr
  %i.wt = select i1 %i.wp, i16 %i.ws, i16 %i.wr
  %i.wu = add i16 %i.wt, %i.wl
  store i16 %i.wu, ptr %i.wo, align 2, !tbaa !85
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.ak, %.split.1.i
  %i.wv = getelementptr inbounds nuw i8, ptr %.2139.i, i64 6
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !85
  %i.wx = mul i16 %i.ww, %i.ul                    ; 4 uses
  %i.wy = shl i32 3, %.0.i141
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.wz ; 2 uses
  store i16 %i.wx, ptr %i.xa, align 2, !tbaa !85
  %.not159.2.i = icmp eq i16 %i.wx, 0
  br i1 %.not159.2.i, label %.split.3.i, label %bb.al

bb.al:                                            ; preds = %.split.2.i
  %i.xb = icmp slt i16 %i.wx, 0
  %i.xc = load i8, ptr %i.r, align 8, !tbaa !44
  %i.xd = zext i8 %i.xc to i16                    ; 2 uses
  %i.xe = sub nsw i16 0, %i.xd
  %i.xf = select i1 %i.xb, i16 %i.xe, i16 %i.xd
  %i.xg = add i16 %i.xf, %i.wx
  store i16 %i.xg, ptr %i.xa, align 2, !tbaa !85
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.al, %.split.2.i
  %i.xh = getelementptr inbounds nuw i8, ptr %.2139.i, i64 8
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !85
  %i.xj = mul i16 %i.xi, %i.ul                    ; 4 uses
  %i.xk = shl i32 4, %.0.i141
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.xl ; 2 uses
  store i16 %i.xj, ptr %i.xm, align 2, !tbaa !85
  %.not159.3.i = icmp eq i16 %i.xj, 0
  br i1 %.not159.3.i, label %.split.4.i, label %bb.am

bb.am:                                            ; preds = %.split.3.i
  %i.xn = icmp slt i16 %i.xj, 0
  %i.xo = load i8, ptr %i.r, align 8, !tbaa !44
  %i.xp = zext i8 %i.xo to i16                    ; 2 uses
  %i.xq = sub nsw i16 0, %i.xp
  %i.xr = select i1 %i.xn, i16 %i.xq, i16 %i.xp
  %i.xs = add i16 %i.xr, %i.xj
  store i16 %i.xs, ptr %i.xm, align 2, !tbaa !85
  br label %.split.4.i

.split.4.i:                                       ; preds = %bb.am, %.split.3.i
  %i.xt = getelementptr inbounds nuw i8, ptr %.2139.i, i64 10
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !85
  %i.xv = mul i16 %i.xu, %i.ul                    ; 4 uses
  %i.xw = shl i32 5, %.0.i141
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.xx ; 2 uses
  store i16 %i.xv, ptr %i.xy, align 2, !tbaa !85
  %.not159.4.i = icmp eq i16 %i.xv, 0
  br i1 %.not159.4.i, label %.split.5.i, label %bb.an

bb.an:                                            ; preds = %.split.4.i
  %i.xz = icmp slt i16 %i.xv, 0
  %i.ya = load i8, ptr %i.r, align 8, !tbaa !44
  %i.yb = zext i8 %i.ya to i16                    ; 2 uses
  %i.yc = sub nsw i16 0, %i.yb
  %i.yd = select i1 %i.xz, i16 %i.yc, i16 %i.yb
  %i.ye = add i16 %i.yd, %i.xv
  store i16 %i.ye, ptr %i.xy, align 2, !tbaa !85
  br label %.split.5.i

.split.5.i:                                       ; preds = %bb.an, %.split.4.i
  %i.yf = getelementptr inbounds nuw i8, ptr %.2139.i, i64 12
  %i.yg = load i16, ptr %i.yf, align 2, !tbaa !85
  %i.yh = mul i16 %i.yg, %i.ul                    ; 4 uses
  %i.yi = shl i32 6, %.0.i141
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.yj ; 2 uses
  store i16 %i.yh, ptr %i.yk, align 2, !tbaa !85
  %.not159.5.i = icmp eq i16 %i.yh, 0
  br i1 %.not159.5.i, label %.split.6.i, label %bb.ao

bb.ao:                                            ; preds = %.split.5.i
  %i.yl = icmp slt i16 %i.yh, 0
  %i.ym = load i8, ptr %i.r, align 8, !tbaa !44
  %i.yn = zext i8 %i.ym to i16                    ; 2 uses
  %i.yo = sub nsw i16 0, %i.yn
  %i.yp = select i1 %i.yl, i16 %i.yo, i16 %i.yn
  %i.yq = add i16 %i.yp, %i.yh
  store i16 %i.yq, ptr %i.yk, align 2, !tbaa !85
  br label %.split.6.i

.split.6.i:                                       ; preds = %bb.ao, %.split.5.i
  %i.yr = getelementptr inbounds nuw i8, ptr %.2139.i, i64 14
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !85
  %i.yt = mul i16 %i.ys, %i.ul                    ; 4 uses
  %i.yu = shl i32 7, %.0.i141
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.yv ; 2 uses
  store i16 %i.yt, ptr %i.yw, align 2, !tbaa !85
  %.not159.6.i = icmp eq i16 %i.yt, 0
  br i1 %.not159.6.i, label %vc1_decode_i_block.exit, label %bb.ap

bb.ap:                                            ; preds = %.split.6.i
  %i.yx = icmp slt i16 %i.yt, 0
  %i.yy = load i8, ptr %i.r, align 8, !tbaa !44
  %i.yz = zext i8 %i.yy to i16                    ; 2 uses
  %i.za = sub nsw i16 0, %i.yz
  %i.zb = select i1 %i.yx, i16 %i.za, i16 %i.yz
  %i.zc = add i16 %i.zb, %i.yt
  store i16 %i.zc, ptr %i.yw, align 2, !tbaa !85
end_hunk_0
