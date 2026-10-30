Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ht_dec?download=true
inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
.lr.ph1870:                                       ; preds = %.thread1795
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hd = icmp sgt i32 %i.en, 1
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 16 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 16 uses
  %i.hg = add i32 %i.fq, -1                       ; 8 uses
  %i.hh = zext nneg i32 %i.ek to i64              ; 8 uses
  br label %bb.av

.preheader1844:                                   ; preds = %bb.co, %.thread1795
  %.01515.lcssa = phi i32 [ %i.gy, %.thread1795 ], [ %.41519, %bb.co ]
  %.01492.lcssa = phi i32 [ 0, %.thread1795 ], [ %i.lm, %bb.co ]
  %i.hi = icmp sgt i32 %i.en, 2
  br i1 %i.hi, label %.lr.ph1946, label %._crit_edge1947

.lr.ph1946:                                       ; preds = %.preheader1844
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 16 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 16 uses
  %i.hn = add i32 %i.fq, -1                       ; 12 uses
  %i.ho = sext i32 %i.ek to i64                   ; 13 uses
  %i.hp = add i32 %i.fq, -2                       ; 2 uses
  %i.hq = shl nuw i32 1, %i.hp                    ; 4 uses
  %i.hr = shl nuw nsw i32 %i.ek, 1
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ht = mul nuw nsw i32 %i.ek, 3
  %i.hu = zext nneg i32 %i.ht to i64              ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hx = shl i32 3, %i.hp                        ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ia = add i32 %i.ek, 7
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = and i32 %i.ib, 2147483644
  %i.id = add nuw i32 %i.ic, 4
  %i.ie = zext i32 %i.id to i64
  %i.if = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ig = xor i32 %i.ej, -1
  %i.ih = add i32 %i.ei, %i.ig
  %i.ii = lshr i32 %i.ih, 1
  %i.ij = and i32 %i.ii, 2147483644
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = add nuw nsw i64 %i.ik, 4                ; 2 uses
  %i.im = xor i32 %i.ej, -1
  %i.in = add i32 %i.ei, %i.im                    ; 2 uses
  %i.io = lshr i32 %i.in, 3
  %narrow = add nuw nsw i32 %i.io, 1
  %i.ip = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check2232 = icmp ult i32 %i.in, 24
  %n.vec2234 = and i64 %i.ip, 1073741820          ; 4 uses
  %i.iq = trunc nuw nsw i64 %n.vec2234 to i32
  %i.ir = shl i32 %i.iq, 3
  %i.is = shl nuw nsw i64 %n.vec2234, 2           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec2234, %i.ip
  br label %bb.cp

bb.av:                                            ; preds = %.lr.ph1870, %bb.co
  %.014291869 = phi ptr [ %i.eo, %.lr.ph1870 ], [ %i.ll, %bb.co ] ; 4 uses
  %.014921868 = phi i32 [ 0, %.lr.ph1870 ], [ %i.lm, %bb.co ] ; 3 uses
  %.015001867 = phi ptr [ %i.gx, %.lr.ph1870 ], [ %i.sw, %bb.co ] ; 4 uses
  %.015151866 = phi i32 [ %i.gy, %.lr.ph1870 ], [ %.41519, %bb.co ] ; 3 uses
  %.015281865 = phi i32 [ 0, %.lr.ph1870 ], [ %.11529, %bb.co ] ; 2 uses
  %.015321864 = phi ptr [ %i.dq, %.lr.ph1870 ], [ %i.ut, %bb.co ] ; 7 uses
  %.015361863 = phi i32 [ 0, %.lr.ph1870 ], [ %i.mg, %bb.co ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.it = call fastcc i32 @rev_fetch(ptr noundef %9)
  %i.iu = shl nuw nsw i32 %.015281865, 7
  %i.iv = and i32 %i.it, 127
  %i.iw = or disjoint i32 %i.iv, %i.iu
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl0, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !116
  %i.ja = zext i16 %i.iz to i32                   ; 2 uses
  %i.jb = icmp eq i32 %.015281865, 0
  br i1 %i.jb, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.jc = add nsw i32 %.015151866, -2             ; 2 uses
  %i.jd = icmp eq i32 %i.jc, -1
  %i.je = select i1 %i.jd, i32 %i.ja, i32 0       ; 2 uses
  %i.jf = icmp slt i32 %.015151866, 2
  br i1 %i.jf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jg = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.sroa.0.0 = phi i32 [ %i.je, %bb.ax ], [ %i.je, %bb.aw ], [ %i.ja, %bb.av ] ; 17 uses
  %.11516 = phi i32 [ %i.jg, %bb.ax ], [ %i.jc, %bb.aw ], [ %.015151866, %bb.av ] ; 4 uses
  %i.jh = and i32 %.sroa.0.0, 16                  ; 2 uses
  %i.ji = lshr exact i32 %i.jh, 4
  %i.jj = lshr i32 %.sroa.0.0, 5
  %i.jk = and i32 %i.jj, 7
  %i.jl = or i32 %i.ji, %i.jk                     ; 3 uses
  %i.jm = and i32 %.sroa.0.0, 7                   ; 2 uses
  %i.jn = load i64, ptr %i.ha, align 8, !tbaa !16
  %i.jo = zext nneg i32 %i.jm to i64
  %i.jp = lshr i64 %i.jn, %i.jo                   ; 3 uses
  %i.jq = load i32, ptr %i.hb, align 8, !tbaa !17
  %i.jr = sub i32 %i.jq, %i.jm                    ; 2 uses
  %i.js = trunc i64 %i.jp to i32                  ; 2 uses
  %i.jt = lshr i32 %.sroa.0.0, 4                  ; 2 uses
  %i.ju = and i32 %i.jt, 3
  %i.jv = lshr i32 %.sroa.0.0, 2
  %i.jw = and i32 %i.jv, 48
  %i.jx = or disjoint i32 %i.ju, %i.jw
  %i.jy = shl i32 %i.jx, %.014921868
  %i.jz = load i32, ptr %.014291869, align 4, !tbaa !9
  %i.ka = or i32 %i.jz, %i.jy                     ; 2 uses
  store i32 %i.ka, ptr %.014291869, align 4, !tbaa !9
  %i.kb = or disjoint i32 %.015361863, 2
  %i.kc = icmp slt i32 %i.kb, %i.ek
  br i1 %i.kc, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.kd = shl nuw nsw i32 %i.jl, 7
  %i.ke = and i32 %i.js, 127
  %i.kf = or disjoint i32 %i.ke, %i.kd
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl0, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !116
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = icmp eq i32 %i.jl, 0
  br i1 %i.kk, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.kl = add nsw i32 %.11516, -2                 ; 2 uses
  %i.km = icmp eq i32 %i.kl, -1
  %i.kn = select i1 %i.km, i32 %i.kj, i32 0       ; 2 uses
  %i.ko = icmp slt i32 %.11516, 2
  br i1 %i.ko, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kp = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %.sroa.49.0 = phi i32 [ %i.kn, %bb.bb ], [ %i.kn, %bb.ba ], [ %i.kj, %bb.az ] ; 4 uses
  %.21517 = phi i32 [ %i.kp, %bb.bb ], [ %i.kl, %bb.ba ], [ %.11516, %bb.az ]
  %i.kq = lshr i32 %.sroa.49.0, 4
  %i.kr = and i32 %i.kq, 1
  %i.ks = lshr i32 %.sroa.49.0, 5
  %i.kt = and i32 %i.ks, 7
  %i.ku = or i32 %i.kr, %i.kt
  %i.kv = and i32 %.sroa.49.0, 7                  ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = lshr i64 %i.jp, %i.kw                   ; 2 uses
  %i.ky = sub i32 %i.jr, %i.kv
  %i.kz = trunc i64 %i.kx to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ay
  %i.la = phi i32 [ %i.ky, %bb.bc ], [ %i.jr, %bb.ay ]
  %i.lb = phi i64 [ %i.kx, %bb.bc ], [ %i.jp, %bb.ay ]
  %.11529 = phi i32 [ %i.ku, %bb.bc ], [ %i.jl, %bb.ay ]
  %.sroa.49.1 = phi i32 [ %.sroa.49.0, %bb.bc ], [ 0, %bb.ay ] ; 16 uses
  %.01526 = phi i32 [ %i.kz, %bb.bc ], [ %i.js, %bb.ay ]
  %.31518 = phi i32 [ %.21517, %bb.bc ], [ %.11516, %bb.ay ] ; 3 uses
  %i.lc = and i32 %.sroa.49.1, 48
  %i.ld = shl nuw nsw i32 %.sroa.49.1, 2
  %i.le = and i32 %i.ld, 768
  %i.lf = or disjoint i32 %i.le, %i.lc
  %i.lg = add nuw nsw i32 %.014921868, 4
  %i.lh = shl i32 %i.lf, %i.lg
  %i.li = or i32 %i.lh, %i.ka
  store i32 %i.li, ptr %.014291869, align 4, !tbaa !9
  %i.lj = lshr exact i32 %.015361863, 2
  %.lobit1706 = and i32 %i.lj, 1
  %i.lk = zext nneg i32 %.lobit1706 to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.014291869, i64 %i.lk
  %i.lm = xor i32 %.014921868, 16                 ; 2 uses
  %i.ln = lshr i32 %.sroa.0.0, 3
  %i.lo = and i32 %i.ln, 1
  %i.lp = lshr i32 %.sroa.49.1, 2
  %i.lq = and i32 %i.lp, 2
  %i.lr = or disjoint i32 %i.lq, %i.lo            ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 3
  br i1 %i.ls, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.lt = add nsw i32 %.31518, -2                 ; 2 uses
  %i.lu = icmp eq i32 %i.lt, -1
  %i.lv = select i1 %i.lu, i32 4, i32 3           ; 2 uses
  %i.lw = icmp slt i32 %.31518, 2
  br i1 %i.lw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lx = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.01554 = phi i32 [ %i.lv, %bb.bf ], [ %i.lv, %bb.be ], [ %i.lr, %bb.bd ]
  %.41519 = phi i32 [ %i.lx, %bb.bf ], [ %i.lt, %bb.be ], [ %.31518, %bb.bd ] ; 2 uses
  %i.ly = call fastcc i32 @decode_init_uvlc(i32 noundef %.01526, i32 noundef %.01554, ptr noundef %i.a) ; 2 uses
  %i.lz = load i32, ptr %i.a, align 4, !tbaa !9   ; 5 uses
  %i.ma = icmp ugt i32 %i.lz, %i.fr
  br i1 %i.ma, label %bb.bh, label %13

13:                                               ; preds = %bb.bg
  %14 = load i32, ptr %i.hc, align 4, !tbaa !9    ; 5 uses
  %15 = icmp ugt i32 %14, %i.fr
  br i1 %15, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %13, %bb.bg
  %.not1733 = icmp eq ptr %6, null
  br i1 %.not1733, label %.critedge1761, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.mb = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1761:                                    ; preds = %bb.bh
  %i.mc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  br label %.thread1797

bb.bj:                                            ; preds = %13
  %i.md = zext nneg i32 %i.ly to i64
  %i.me = lshr i64 %i.lb, %i.md
  store i64 %i.me, ptr %i.ha, align 8, !tbaa !16
  %i.mf = sub i32 %i.la, %i.ly
  store i32 %i.mf, ptr %i.hb, align 8, !tbaa !17
  %i.mg = add nuw nsw i32 %.015361863, 4          ; 4 uses
  %i.mh = icmp sgt i32 %i.mg, %i.ek
  %i.mi = sub nsw i32 %i.mg, %i.ek
  %i.mj = shl nuw i32 %i.mi, 1
  %i.mk = lshr i32 255, %i.mj
  %.01555 = select i1 %i.mh, i32 %i.mk, i32 255   ; 2 uses
  %i.ml = and i32 %.01555, 85
  %i.mm = select i1 %i.hd, i32 %.01555, i32 %i.ml ; 9 uses
  %i.mn = and i32 %i.jt, 15
  %i.mo = and i32 %.sroa.49.1, 240
  %i.mp = or disjoint i32 %i.mo, %i.mn
  %i.mq = xor i32 %i.mm, -1
  %i.mr = and i32 %i.mp, %i.mq
  %.not1707 = icmp eq i32 %i.mr, 0
  br i1 %.not1707, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not1732 = icmp eq ptr %6, null
  br i1 %.not1732, label %.critedge1763, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.ms = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1763:                                    ; preds = %bb.bk
  %i.mt = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.thread1797

bb.bm:                                            ; preds = %bb.bj
  %.not1708 = icmp eq i32 %i.jh, 0
  br i1 %.not1708, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mu = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.mv = lshr i32 %.sroa.0.0, 12
  %i.mw = and i32 %i.mv, 1
  %i.mx = sub i32 %i.lz, %i.mw                    ; 4 uses
  %i.my = load i64, ptr %i.he, align 8, !tbaa !19
  %i.mz = zext nneg i32 %i.mx to i64
  %i.na = lshr i64 %i.my, %i.mz
  store i64 %i.na, ptr %i.he, align 8, !tbaa !19
  %i.nb = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.nc = sub i32 %i.nb, %i.mx
  store i32 %i.nc, ptr %i.hf, align 8, !tbaa !20
  %i.nd = shl i32 %i.mu, 31
  %notmask1710 = shl nsw i32 -1, %i.mx
  %i.ne = xor i32 %notmask1710, -1
  %i.nf = and i32 %i.mu, %i.ne
  %i.ng = lshr i32 %.sroa.0.0, 8
  %i.nh = and i32 %i.ng, 1
  %i.ni = shl nuw i32 %i.nh, %i.mx
  %i.nj = or i32 %i.ni, %i.nf
  %i.nk = or i32 %i.nj, 1
  %i.nl = add i32 %i.nk, 2
  %i.nm = shl i32 %i.nl, %i.hg
  %i.nn = or i32 %i.nm, %i.nd
  br label %.sink.split

bb.bo:                                            ; preds = %bb.bm
  %i.no = and i32 %i.mm, 1
  %.not1709 = icmp eq i32 %i.no, 0
  br i1 %.not1709, label %bb.bp, label %.sink.split

.sink.split:                                      ; preds = %bb.bo, %bb.bn
  %.sink = phi i32 [ %i.nn, %bb.bn ], [ 0, %bb.bo ]
  store i32 %.sink, ptr %.015321864, align 4, !tbaa !9
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %bb.bo
  %i.np = and i32 %.sroa.0.0, 32
  %.not1711 = icmp eq i32 %i.np, 0
  br i1 %.not1711, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nq = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.nr = lshr i32 %.sroa.0.0, 13
  %i.ns = and i32 %i.nr, 1
  %i.nt = sub i32 %i.lz, %i.ns                    ; 4 uses
  %i.nu = load i64, ptr %i.he, align 8, !tbaa !19
  %i.nv = zext nneg i32 %i.nt to i64
  %i.nw = lshr i64 %i.nu, %i.nv
  store i64 %i.nw, ptr %i.he, align 8, !tbaa !19
  %i.nx = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.ny = sub i32 %i.nx, %i.nt
  store i32 %i.ny, ptr %i.hf, align 8, !tbaa !20
  %i.nz = shl i32 %i.nq, 31
  %notmask1713 = shl nsw i32 -1, %i.nt
  %i.oa = xor i32 %notmask1713, -1
  %i.ob = and i32 %i.nq, %i.oa
  %i.oc = lshr i32 %.sroa.0.0, 9
  %i.od = and i32 %i.oc, 1
  %i.oe = shl nuw i32 %i.od, %i.nt
  %i.of = or i32 %i.oe, %i.ob
  %i.og = or i32 %i.of, 1                         ; 2 uses
  %i.oh = add i32 %i.og, 2
  %i.oi = shl i32 %i.oh, %i.hg
  %i.oj = or i32 %i.oi, %i.nz
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.015321864, i64 %i.hh
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !9
  %i.ol = load i8, ptr %.015001867, align 1, !tbaa !13
  %i.om = and i8 %i.ol, 127
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.og, i1 true)
  %i.op = sub nuw nsw i32 32, %i.oo
  %i.oq = tail call i32 @llvm.umax.i32(i32 %i.op, i32 %i.on)
  %i.or = trunc nuw nsw i32 %i.oq to i8
  %i.os = or disjoint i8 %i.or, -128
  store i8 %i.os, ptr %.015001867, align 1, !tbaa !13
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %i.ot = and i32 %i.mm, 2
  %.not1712 = icmp eq i32 %i.ot, 0
  br i1 %.not1712, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.015321864, i64 %i.hh
  store i32 0, ptr %i.ou, align 4, !tbaa !9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq
  %i.ov = getelementptr inbounds nuw i8, ptr %.015001867, i64 1 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.015321864, i64 4 ; 3 uses
  %i.ox = and i32 %.sroa.0.0, 64
  %.not1714 = icmp eq i32 %i.ox, 0
  br i1 %.not1714, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oy = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.oz = lshr i32 %.sroa.0.0, 14
  %i.pa = and i32 %i.oz, 1
  %i.pb = sub i32 %i.lz, %i.pa                    ; 4 uses
  %i.pc = load i64, ptr %i.he, align 8, !tbaa !19
  %i.pd = zext nneg i32 %i.pb to i64
  %i.pe = lshr i64 %i.pc, %i.pd
  store i64 %i.pe, ptr %i.he, align 8, !tbaa !19
  %i.pf = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.pg = sub i32 %i.pf, %i.pb
  store i32 %i.pg, ptr %i.hf, align 8, !tbaa !20
  %i.ph = shl i32 %i.oy, 31
  %notmask1716 = shl nsw i32 -1, %i.pb
  %i.pi = xor i32 %notmask1716, -1
  %i.pj = and i32 %i.oy, %i.pi
  %i.pk = lshr i32 %.sroa.0.0, 10
  %i.pl = and i32 %i.pk, 1
  %i.pm = shl nuw i32 %i.pl, %i.pb
  %i.pn = or i32 %i.pm, %i.pj
  %i.po = or i32 %i.pn, 1
  %i.pp = add i32 %i.po, 2
  %i.pq = shl i32 %i.pp, %i.hg
  %i.pr = or i32 %i.pq, %i.ph
  br label %.sink.split2197

bb.bv:                                            ; preds = %bb.bt
  %i.ps = and i32 %i.mm, 4
  %.not1715 = icmp eq i32 %i.ps, 0
  br i1 %.not1715, label %bb.bw, label %.sink.split2197

.sink.split2197:                                  ; preds = %bb.bv, %bb.bu
  %.sink2198 = phi i32 [ %i.pr, %bb.bu ], [ 0, %bb.bv ]
  store i32 %.sink2198, ptr %i.ow, align 4, !tbaa !9
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split2197, %bb.bv
  store i8 0, ptr %i.ov, align 1, !tbaa !13
  %i.pt = and i32 %.sroa.0.0, 128
  %.not1717 = icmp eq i32 %i.pt, 0
  br i1 %.not1717, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pu = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.pv = lshr i32 %.sroa.0.0, 15
  %i.pw = sub i32 %i.lz, %i.pv                    ; 4 uses
  %i.px = load i64, ptr %i.he, align 8, !tbaa !19
  %i.py = zext nneg i32 %i.pw to i64
  %i.pz = lshr i64 %i.px, %i.py
  store i64 %i.pz, ptr %i.he, align 8, !tbaa !19
  %i.qa = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.qb = sub i32 %i.qa, %i.pw
  store i32 %i.qb, ptr %i.hf, align 8, !tbaa !20
  %i.qc = shl i32 %i.pu, 31
  %notmask1719 = shl nsw i32 -1, %i.pw
  %i.qd = xor i32 %notmask1719, -1
  %i.qe = and i32 %i.pu, %i.qd
  %i.qf = lshr i32 %.sroa.0.0, 11
  %i.qg = and i32 %i.qf, 1
  %i.qh = shl nuw i32 %i.qg, %i.pw
  %i.qi = or i32 %i.qh, %i.qe
  %i.qj = or i32 %i.qi, 1                         ; 2 uses
  %i.qk = add i32 %i.qj, 2
  %i.ql = shl i32 %i.qk, %i.hg
  %i.qm = or i32 %i.ql, %i.qc
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.hh
end_hunk_0
