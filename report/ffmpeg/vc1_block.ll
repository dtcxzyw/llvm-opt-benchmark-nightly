Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_block?download=true
inline.NumInlined: 223
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@vc1_decode_i_blocks:bb.a
  %i.jj = tail call i32 @llvm.bswap.i32(i32 %i.ji)
  %i.jk = and i32 %i.je, 7
  %i.jl = shl i32 %i.jj, %i.jk
  %i.jm = add nsw i32 %i.jb, 32
  %i.jn = lshr i32 %i.jl, %i.jm
  %i.jo = add i32 %i.jn, %i.iy
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.jp ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !87
  %i.js = sext i16 %i.jr to i32                   ; 2 uses
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
  %i.pi = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %.1138.i = select i1 %.not.i.not.i, ptr %i.pi, ptr %i.oj ; 7 uses
  %.0125.in.v.i = select i1 %.not.i.not.i, i64 6384, i64 6380
  %.0125.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0125.in.v.i
  %.0125.i = load i32, ptr %.0125.in.i, align 4, !tbaa !48 ; 7 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.1138.i, i64 2
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !85
  %i.pl = shl nuw i32 1, %.0125.i
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.pm ; 2 uses
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !85
  %i.pp = add i16 %i.po, %i.pk
  store i16 %i.pp, ptr %i.pn, align 2, !tbaa !85
  %i.pq = getelementptr inbounds nuw i8, ptr %.1138.i, i64 4
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !85
  %i.ps = shl i32 2, %.0125.i
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.pt ; 2 uses
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !85
  %i.pw = add i16 %i.pv, %i.pr
  store i16 %i.pw, ptr %i.pu, align 2, !tbaa !85
  %i.px = getelementptr inbounds nuw i8, ptr %.1138.i, i64 6
  %i.py = load i16, ptr %i.px, align 2, !tbaa !85
  %i.pz = shl i32 3, %.0125.i
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qa ; 2 uses
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !85
  %i.qd = add i16 %i.qc, %i.py
  store i16 %i.qd, ptr %i.qb, align 2, !tbaa !85
  %i.qe = getelementptr inbounds nuw i8, ptr %.1138.i, i64 8
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !85
  %i.qg = shl i32 4, %.0125.i
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qh ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !85
  %i.qk = add i16 %i.qj, %i.qf
  store i16 %i.qk, ptr %i.qi, align 2, !tbaa !85
  %i.ql = getelementptr inbounds nuw i8, ptr %.1138.i, i64 10
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !85
  %i.qn = shl i32 5, %.0125.i
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qo ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !85
  %i.qr = add i16 %i.qq, %i.qm
  store i16 %i.qr, ptr %i.qp, align 2, !tbaa !85
  %i.qs = getelementptr inbounds nuw i8, ptr %.1138.i, i64 12
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !85
  %i.qu = shl i32 6, %.0125.i
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.qv ; 2 uses
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !85
  %i.qy = add i16 %i.qx, %i.qt
  store i16 %i.qy, ptr %i.qw, align 2, !tbaa !85
  %i.qz = getelementptr inbounds nuw i8, ptr %.1138.i, i64 14
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !85
  %i.rb = shl i32 7, %.0125.i
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rc ; 2 uses
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !85
  %i.rf = add i16 %i.re, %i.ra
  store i16 %i.rf, ptr %i.rd, align 2, !tbaa !85
  br label %.loopexit187.i

.loopexit187.i:                                   ; preds = %.loopexit187.loopexit.i, %.thread178.i
  %i.rg = load i32, ptr %i.bn, align 4, !tbaa !110 ; 7 uses
  %i.rh = load i32, ptr %i.bo, align 16, !tbaa !111 ; 7 uses
  %i.ri = shl nuw i32 1, %i.rg
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rj
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !85
  %i.rm = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !85
  %i.rn = shl nuw i32 1, %i.rh
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ro
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !85
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oi, i64 18
  store i16 %i.rq, ptr %i.rr, align 2, !tbaa !85
  %i.rs = shl i32 2, %i.rg
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.rt
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !85
  %i.rw = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i16 %i.rv, ptr %i.rw, align 2, !tbaa !85
  %i.rx = shl i32 2, %i.rh
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ry
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !85
  %i.sb = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !85
  %i.sc = shl i32 3, %i.rg
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sd
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !85
  %i.sg = getelementptr inbounds nuw i8, ptr %i.oi, i64 6
  store i16 %i.sf, ptr %i.sg, align 2, !tbaa !85
  %i.sh = shl i32 3, %i.rh
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !85
  %i.sl = getelementptr inbounds nuw i8, ptr %i.oi, i64 22
  store i16 %i.sk, ptr %i.sl, align 2, !tbaa !85
  %i.sm = shl i32 4, %i.rg
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sn
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !85
  %i.sq = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i16 %i.sp, ptr %i.sq, align 2, !tbaa !85
  %i.sr = shl i32 4, %i.rh
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ss
  %i.su = load i16, ptr %i.st, align 2, !tbaa !85
  %i.sv = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store i16 %i.su, ptr %i.sv, align 2, !tbaa !85
  %i.sw = shl i32 5, %i.rg
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.sx
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !85
  %i.ta = getelementptr inbounds nuw i8, ptr %i.oi, i64 10
  store i16 %i.sz, ptr %i.ta, align 2, !tbaa !85
  %i.tb = shl i32 5, %i.rh
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tc
  %i.te = load i16, ptr %i.td, align 2, !tbaa !85
  %i.tf = getelementptr inbounds nuw i8, ptr %i.oi, i64 26
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !85
  %i.tg = shl i32 6, %i.rg
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.th
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !85
  %i.tk = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i16 %i.tj, ptr %i.tk, align 2, !tbaa !85
  %i.tl = shl i32 6, %i.rh
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tm
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !85
  %i.tp = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store i16 %i.to, ptr %i.tp, align 2, !tbaa !85
  %i.tq = shl i32 7, %i.rg
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !85
  %i.tu = getelementptr inbounds nuw i8, ptr %i.oi, i64 14
  store i16 %i.tt, ptr %i.tu, align 2, !tbaa !85
  %i.tv = shl i32 7, %i.rh
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.tw
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !85
  %i.tz = getelementptr inbounds nuw i8, ptr %i.oi, i64 30
  store i16 %i.ty, ptr %i.tz, align 2, !tbaa !85
  %i.ua = trunc nuw nsw i32 %i.or to i16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.loopexit187.i
  %indvars.iv.i = phi i64 [ 1, %.loopexit187.i ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv.i ; 3 uses
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !85 ; 2 uses
  %.not165.i = icmp eq i16 %i.uc, 0
  br i1 %.not165.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ud = mul i16 %i.uc, %i.ua                    ; 3 uses
  store i16 %i.ud, ptr %i.ub, align 2, !tbaa !85
  %i.ue = load i8, ptr %i.bp, align 1, !tbaa !46
  %.not166.i = icmp eq i8 %i.ue, 0
  br i1 %.not166.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.uf = icmp slt i16 %i.ud, 0
  %i.ug = load i8, ptr %i.r, align 8, !tbaa !44
  %i.uh = zext i8 %i.ug to i16                    ; 2 uses
  %i.ui = sub nsw i16 0, %i.uh
  %i.uj = select i1 %i.uf, i16 %i.ui, i16 %i.uh
  %i.uk = add i16 %i.uj, %i.ud
  store i16 %i.uk, ptr %i.ub, align 2, !tbaa !85
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
  %i.ul = load i32, ptr %i.bc, align 16, !tbaa !104
  %.not156.i = icmp eq i32 %i.ul, 0
  br i1 %.not156.i, label %vc1_decode_i_block.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.um = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %.2139.i = select i1 %.not.i.not.i, ptr %i.um, ptr %i.oj ; 14 uses
  %.0136.idx.i = select i1 %.not.i.not.i, i64 16, i64 0
  %.0136.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.0136.idx.i
  %.0.in.v.i = select i1 %.not.i.not.i, i64 6384, i64 6380
  %.0.in.i140 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i
  %.0.i141 = load i32, ptr %.0.in.i140, align 4, !tbaa !48 ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0136.i, ptr noundef nonnull align 2 dereferenceable(16) %.2139.i, i64 16, i1 false)
  %i.un = trunc nuw nsw i32 %i.or to i16          ; 13 uses
  %i.uo = load i8, ptr %i.bp, align 1, !tbaa !46
  %.fr.i = freeze i8 %i.uo
  %.not158.not.i = icmp eq i8 %.fr.i, 0
  %i.up = getelementptr inbounds nuw i8, ptr %.2139.i, i64 2
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !85
  %i.ur = mul i16 %i.uq, %i.un                    ; 4 uses
  %i.us = shl nuw i32 1, %.0.i141
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ut ; 2 uses
  store i16 %i.ur, ptr %i.uu, align 2, !tbaa !85
  br i1 %.not158.not.i, label %.split.preheader.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.ai
  %i.uv = getelementptr inbounds nuw i8, ptr %.2139.i, i64 4
  %i.uw = load i16, ptr %i.uv, align 2, !tbaa !85
  %i.ux = mul i16 %i.uw, %i.un
  %i.uy = shl i32 2, %.0.i141
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.uz
  store i16 %i.ux, ptr %i.va, align 2, !tbaa !85
  %i.vb = getelementptr inbounds nuw i8, ptr %.2139.i, i64 6
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !85
  %i.vd = mul i16 %i.vc, %i.un
  %i.ve = shl i32 3, %.0.i141
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vf
  store i16 %i.vd, ptr %i.vg, align 2, !tbaa !85
  %i.vh = getelementptr inbounds nuw i8, ptr %.2139.i, i64 8
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !85
  %i.vj = mul i16 %i.vi, %i.un
  %i.vk = shl i32 4, %.0.i141
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vl
  store i16 %i.vj, ptr %i.vm, align 2, !tbaa !85
  %i.vn = getelementptr inbounds nuw i8, ptr %.2139.i, i64 10
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !85
  %i.vp = mul i16 %i.vo, %i.un
  %i.vq = shl i32 5, %.0.i141
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vr
  store i16 %i.vp, ptr %i.vs, align 2, !tbaa !85
  %i.vt = getelementptr inbounds nuw i8, ptr %.2139.i, i64 12
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !85
  %i.vv = mul i16 %i.vu, %i.un
  %i.vw = shl i32 6, %.0.i141
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.vx
  store i16 %i.vv, ptr %i.vy, align 2, !tbaa !85
  %i.vz = getelementptr inbounds nuw i8, ptr %.2139.i, i64 14
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !85
  %i.wb = mul i16 %i.wa, %i.un
  %i.wc = shl i32 7, %.0.i141
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.wd
  store i16 %i.wb, ptr %i.we, align 2, !tbaa !85
  br label %vc1_decode_i_block.exit

.split.preheader.i:                               ; preds = %bb.ai
  %.not159.i = icmp eq i16 %i.ur, 0
  br i1 %.not159.i, label %.split.1.i, label %bb.aj

bb.aj:                                            ; preds = %.split.preheader.i
  %i.wf = icmp slt i16 %i.ur, 0
  %i.wg = load i8, ptr %i.r, align 8, !tbaa !44
  %i.wh = zext i8 %i.wg to i16                    ; 2 uses
  %i.wi = sub nsw i16 0, %i.wh
  %i.wj = select i1 %i.wf, i16 %i.wi, i16 %i.wh
  %i.wk = add i16 %i.wj, %i.ur
  store i16 %i.wk, ptr %i.uu, align 2, !tbaa !85
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.aj, %.split.preheader.i
  %i.wl = getelementptr inbounds nuw i8, ptr %.2139.i, i64 4
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !85
  %i.wn = mul i16 %i.wm, %i.un                    ; 4 uses
  %i.wo = shl i32 2, %.0.i141
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.wp ; 2 uses
  store i16 %i.wn, ptr %i.wq, align 2, !tbaa !85
  %.not159.1.i = icmp eq i16 %i.wn, 0
  br i1 %.not159.1.i, label %.split.2.i, label %bb.ak

bb.ak:                                            ; preds = %.split.1.i
  %i.wr = icmp slt i16 %i.wn, 0
  %i.ws = load i8, ptr %i.r, align 8, !tbaa !44
  %i.wt = zext i8 %i.ws to i16                    ; 2 uses
  %i.wu = sub nsw i16 0, %i.wt
  %i.wv = select i1 %i.wr, i16 %i.wu, i16 %i.wt
  %i.ww = add i16 %i.wv, %i.wn
  store i16 %i.ww, ptr %i.wq, align 2, !tbaa !85
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.ak, %.split.1.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.2139.i, i64 6
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !85
  %i.wz = mul i16 %i.wy, %i.un                    ; 4 uses
  %i.xa = shl i32 3, %.0.i141
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.xb ; 2 uses
  store i16 %i.wz, ptr %i.xc, align 2, !tbaa !85
  %.not159.2.i = icmp eq i16 %i.wz, 0
  br i1 %.not159.2.i, label %.split.3.i, label %bb.al

bb.al:                                            ; preds = %.split.2.i
  %i.xd = icmp slt i16 %i.wz, 0
  %i.xe = load i8, ptr %i.r, align 8, !tbaa !44
  %i.xf = zext i8 %i.xe to i16                    ; 2 uses
  %i.xg = sub nsw i16 0, %i.xf
  %i.xh = select i1 %i.xd, i16 %i.xg, i16 %i.xf
  %i.xi = add i16 %i.xh, %i.wz
  store i16 %i.xi, ptr %i.xc, align 2, !tbaa !85
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.al, %.split.2.i
  %i.xj = getelementptr inbounds nuw i8, ptr %.2139.i, i64 8
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !85
  %i.xl = mul i16 %i.xk, %i.un                    ; 4 uses
  %i.xm = shl i32 4, %.0.i141
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.xn ; 2 uses
  store i16 %i.xl, ptr %i.xo, align 2, !tbaa !85
  %.not159.3.i = icmp eq i16 %i.xl, 0
  br i1 %.not159.3.i, label %.split.4.i, label %bb.am

bb.am:                                            ; preds = %.split.3.i
  %i.xp = icmp slt i16 %i.xl, 0
  %i.xq = load i8, ptr %i.r, align 8, !tbaa !44
  %i.xr = zext i8 %i.xq to i16                    ; 2 uses
  %i.xs = sub nsw i16 0, %i.xr
  %i.xt = select i1 %i.xp, i16 %i.xs, i16 %i.xr
  %i.xu = add i16 %i.xt, %i.xl
  store i16 %i.xu, ptr %i.xo, align 2, !tbaa !85
  br label %.split.4.i

.split.4.i:                                       ; preds = %bb.am, %.split.3.i
  %i.xv = getelementptr inbounds nuw i8, ptr %.2139.i, i64 10
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !85
  %i.xx = mul i16 %i.xw, %i.un                    ; 4 uses
  %i.xy = shl i32 5, %.0.i141
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.xz ; 2 uses
  store i16 %i.xx, ptr %i.ya, align 2, !tbaa !85
  %.not159.4.i = icmp eq i16 %i.xx, 0
  br i1 %.not159.4.i, label %.split.5.i, label %bb.an

bb.an:                                            ; preds = %.split.4.i
  %i.yb = icmp slt i16 %i.xx, 0
  %i.yc = load i8, ptr %i.r, align 8, !tbaa !44
  %i.yd = zext i8 %i.yc to i16                    ; 2 uses
  %i.ye = sub nsw i16 0, %i.yd
  %i.yf = select i1 %i.yb, i16 %i.ye, i16 %i.yd
  %i.yg = add i16 %i.yf, %i.xx
  store i16 %i.yg, ptr %i.ya, align 2, !tbaa !85
  br label %.split.5.i

.split.5.i:                                       ; preds = %bb.an, %.split.4.i
  %i.yh = getelementptr inbounds nuw i8, ptr %.2139.i, i64 12
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !85
  %i.yj = mul i16 %i.yi, %i.un                    ; 4 uses
  %i.yk = shl i32 6, %.0.i141
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.yl ; 2 uses
  store i16 %i.yj, ptr %i.ym, align 2, !tbaa !85
  %.not159.5.i = icmp eq i16 %i.yj, 0
  br i1 %.not159.5.i, label %.split.6.i, label %bb.ao

bb.ao:                                            ; preds = %.split.5.i
  %i.yn = icmp slt i16 %i.yj, 0
  %i.yo = load i8, ptr %i.r, align 8, !tbaa !44
  %i.yp = zext i8 %i.yo to i16                    ; 2 uses
  %i.yq = sub nsw i16 0, %i.yp
  %i.yr = select i1 %i.yn, i16 %i.yq, i16 %i.yp
  %i.ys = add i16 %i.yr, %i.yj
  store i16 %i.ys, ptr %i.ym, align 2, !tbaa !85
  br label %.split.6.i

.split.6.i:                                       ; preds = %bb.ao, %.split.5.i
  %i.yt = getelementptr inbounds nuw i8, ptr %.2139.i, i64 14
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !85
  %i.yv = mul i16 %i.yu, %i.un                    ; 4 uses
  %i.yw = shl i32 7, %.0.i141
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.yx ; 2 uses
  store i16 %i.yv, ptr %i.yy, align 2, !tbaa !85
  %.not159.6.i = icmp eq i16 %i.yv, 0
  br i1 %.not159.6.i, label %vc1_decode_i_block.exit, label %bb.ap

bb.ap:                                            ; preds = %.split.6.i
  %i.yz = icmp slt i16 %i.yv, 0
  %i.za = load i8, ptr %i.r, align 8, !tbaa !44
  %i.zb = zext i8 %i.za to i16                    ; 2 uses
  %i.zc = sub nsw i16 0, %i.zb
end_hunk_0
