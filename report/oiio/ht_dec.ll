Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ht_dec?download=true
inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
  %.014921868 = phi i32 [ 0, %.lr.ph1870 ], [ %i.lm, %bb.co ] ; 3 uses
  %.015001867 = phi ptr [ %i.gx, %.lr.ph1870 ], [ %i.sj, %bb.co ] ; 4 uses
  %.015151866 = phi i32 [ %i.gy, %.lr.ph1870 ], [ %.41519, %bb.co ] ; 3 uses
  %.015281865 = phi i32 [ 0, %.lr.ph1870 ], [ %.11529, %bb.co ] ; 2 uses
  %.015321864 = phi ptr [ %i.dq, %.lr.ph1870 ], [ %i.ud, %bb.co ] ; 7 uses
  %.015361863 = phi i32 [ 0, %.lr.ph1870 ], [ %i.mi, %bb.co ] ; 3 uses
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
  %i.mb = load i32, ptr %i.hc, align 4            ; 5 uses
  %i.mc = icmp ugt i32 %i.mb, %i.fr
  %or.cond2013 = select i1 %i.ma, i1 true, i1 %i.mc
  br i1 %or.cond2013, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %.not1733 = icmp eq ptr %6, null
  br i1 %.not1733, label %.critedge1761, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.md = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1761:                                    ; preds = %bb.bh
  %i.me = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  br label %.thread1797

bb.bj:                                            ; preds = %bb.bg
  %i.mf = zext nneg i32 %i.ly to i64
  %i.mg = lshr i64 %i.lb, %i.mf
  store i64 %i.mg, ptr %i.ha, align 8, !tbaa !16
  %i.mh = sub i32 %i.la, %i.ly
  store i32 %i.mh, ptr %i.hb, align 8, !tbaa !17
  %i.mi = add nuw nsw i32 %.015361863, 4          ; 4 uses
  %i.mj = icmp sgt i32 %i.mi, %i.ek
  %i.mk = sub nsw i32 %i.mi, %i.ek
  %i.ml = shl nuw i32 %i.mk, 1
  %i.mm = lshr i32 255, %i.ml
  %.01555 = select i1 %i.mj, i32 %i.mm, i32 255   ; 2 uses
  %i.mn = and i32 %.01555, 85
  %i.mo = select i1 %i.hd, i32 %.01555, i32 %i.mn ; 9 uses
  %i.mp = and i32 %i.jt, 15
  %i.mq = and i32 %.sroa.49.1, 240
  %i.mr = or disjoint i32 %i.mq, %i.mp
  %i.ms = xor i32 %i.mo, -1
  %i.mt = and i32 %i.mr, %i.ms
  %.not1707 = icmp eq i32 %i.mt, 0
  br i1 %.not1707, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not1732 = icmp eq ptr %6, null
  br i1 %.not1732, label %.critedge1763, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.mu = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1763:                                    ; preds = %bb.bk
  %i.mv = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.thread1797

bb.bm:                                            ; preds = %bb.bj
  %.not1708 = icmp eq i32 %i.jh, 0
  br i1 %.not1708, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %13 = shl i32 %.sroa.0.0, 19
  %14 = ashr i32 %13, 31
  %15 = add i32 %i.lz, %14                        ; 4 uses
  %i.mx = load i64, ptr %i.he, align 8, !tbaa !19
  %i.my = zext nneg i32 %15 to i64
  %i.mz = lshr i64 %i.mx, %i.my
  store i64 %i.mz, ptr %i.he, align 8, !tbaa !19
  %i.na = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.nb = sub i32 %i.na, %15
  store i32 %i.nb, ptr %i.hf, align 8, !tbaa !20
  %i.nc = shl i32 %i.mw, 31
  %notmask1710 = shl nsw i32 -1, %15
  %i.nd = xor i32 %notmask1710, -1
  %i.ne = and i32 %i.mw, %i.nd
  %i.nf = lshr i32 %.sroa.0.0, 8
  %i.ng = and i32 %i.nf, 1
  %i.nh = shl nuw i32 %i.ng, %15
  %i.ni = or i32 %i.nh, %i.ne
  %i.nj = or i32 %i.ni, 1
  %i.nk = add i32 %i.nj, 2
  %i.nl = shl i32 %i.nk, %i.hg
  %i.nm = or i32 %i.nl, %i.nc
  br label %.sink.split

bb.bo:                                            ; preds = %bb.bm
  %i.nn = and i32 %i.mo, 1
  %.not1709 = icmp eq i32 %i.nn, 0
  br i1 %.not1709, label %bb.bp, label %.sink.split

.sink.split:                                      ; preds = %bb.bo, %bb.bn
  %.sink = phi i32 [ %i.nm, %bb.bn ], [ 0, %bb.bo ]
  store i32 %.sink, ptr %.015321864, align 4, !tbaa !9
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %bb.bo
  %i.no = and i32 %.sroa.0.0, 32
  %.not1711 = icmp eq i32 %i.no, 0
  br i1 %.not1711, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.np = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %16 = shl i32 %.sroa.0.0, 18
  %17 = ashr i32 %16, 31
  %18 = add i32 %i.lz, %17                        ; 4 uses
  %i.nq = load i64, ptr %i.he, align 8, !tbaa !19
  %i.nr = zext nneg i32 %18 to i64
  %i.ns = lshr i64 %i.nq, %i.nr
  store i64 %i.ns, ptr %i.he, align 8, !tbaa !19
  %i.nt = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.nu = sub i32 %i.nt, %18
  store i32 %i.nu, ptr %i.hf, align 8, !tbaa !20
  %i.nv = shl i32 %i.np, 31
  %notmask1713 = shl nsw i32 -1, %18
  %i.nw = xor i32 %notmask1713, -1
  %i.nx = and i32 %i.np, %i.nw
  %i.ny = lshr i32 %.sroa.0.0, 9
  %i.nz = and i32 %i.ny, 1
  %i.oa = shl nuw i32 %i.nz, %18
  %i.ob = or i32 %i.oa, %i.nx
  %i.oc = or i32 %i.ob, 1                         ; 2 uses
  %i.od = add i32 %i.oc, 2
  %i.oe = shl i32 %i.od, %i.hg
  %i.of = or i32 %i.oe, %i.nv
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.015321864, i64 %i.hh
  store i32 %i.of, ptr %i.og, align 4, !tbaa !9
  %i.oh = load i8, ptr %.015001867, align 1, !tbaa !13
  %i.oi = and i8 %i.oh, 127
  %i.oj = zext nneg i8 %i.oi to i32
  %i.ok = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.oc, i1 true)
  %i.ol = sub nuw nsw i32 32, %i.ok
  %i.om = tail call i32 @llvm.umax.i32(i32 %i.ol, i32 %i.oj)
  %i.on = trunc nuw nsw i32 %i.om to i8
  %i.oo = or disjoint i8 %i.on, -128
  store i8 %i.oo, ptr %.015001867, align 1, !tbaa !13
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %i.op = and i32 %i.mo, 2
  %.not1712 = icmp eq i32 %i.op, 0
  br i1 %.not1712, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.015321864, i64 %i.hh
  store i32 0, ptr %i.oq, align 4, !tbaa !9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq
  %i.or = getelementptr inbounds nuw i8, ptr %.015001867, i64 1 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.015321864, i64 4 ; 3 uses
  %i.ot = and i32 %.sroa.0.0, 64
  %.not1714 = icmp eq i32 %i.ot, 0
  br i1 %.not1714, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ou = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %19 = shl i32 %.sroa.0.0, 17
  %20 = ashr i32 %19, 31
  %21 = add i32 %i.lz, %20                        ; 4 uses
  %i.ov = load i64, ptr %i.he, align 8, !tbaa !19
  %i.ow = zext nneg i32 %21 to i64
  %i.ox = lshr i64 %i.ov, %i.ow
  store i64 %i.ox, ptr %i.he, align 8, !tbaa !19
  %i.oy = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.oz = sub i32 %i.oy, %21
  store i32 %i.oz, ptr %i.hf, align 8, !tbaa !20
  %i.pa = shl i32 %i.ou, 31
  %notmask1716 = shl nsw i32 -1, %21
  %i.pb = xor i32 %notmask1716, -1
  %i.pc = and i32 %i.ou, %i.pb
  %i.pd = lshr i32 %.sroa.0.0, 10
  %i.pe = and i32 %i.pd, 1
  %i.pf = shl nuw i32 %i.pe, %21
  %i.pg = or i32 %i.pf, %i.pc
  %i.ph = or i32 %i.pg, 1
  %i.pi = add i32 %i.ph, 2
  %i.pj = shl i32 %i.pi, %i.hg
  %i.pk = or i32 %i.pj, %i.pa
  br label %.sink.split2197

bb.bv:                                            ; preds = %bb.bt
  %i.pl = and i32 %i.mo, 4
  %.not1715 = icmp eq i32 %i.pl, 0
  br i1 %.not1715, label %bb.bw, label %.sink.split2197

.sink.split2197:                                  ; preds = %bb.bv, %bb.bu
  %.sink2198 = phi i32 [ %i.pk, %bb.bu ], [ 0, %bb.bv ]
  store i32 %.sink2198, ptr %i.os, align 4, !tbaa !9
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split2197, %bb.bv
  store i8 0, ptr %i.or, align 1, !tbaa !13
  %i.pm = and i32 %.sroa.0.0, 128
  %.not1717 = icmp eq i32 %i.pm, 0
  br i1 %.not1717, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pn = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.po = lshr i32 %.sroa.0.0, 15
  %i.pp = sub i32 %i.lz, %i.po                    ; 4 uses
  %i.pq = load i64, ptr %i.he, align 8, !tbaa !19
  %i.pr = zext nneg i32 %i.pp to i64
  %i.ps = lshr i64 %i.pq, %i.pr
  store i64 %i.ps, ptr %i.he, align 8, !tbaa !19
  %i.pt = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.pu = sub i32 %i.pt, %i.pp
  store i32 %i.pu, ptr %i.hf, align 8, !tbaa !20
  %i.pv = shl i32 %i.pn, 31
  %notmask1719 = shl nsw i32 -1, %i.pp
  %i.pw = xor i32 %notmask1719, -1
  %i.px = and i32 %i.pn, %i.pw
  %i.py = lshr i32 %.sroa.0.0, 11
  %i.pz = and i32 %i.py, 1
  %i.qa = shl nuw i32 %i.pz, %i.pp
  %i.qb = or i32 %i.qa, %i.px
  %i.qc = or i32 %i.qb, 1                         ; 2 uses
  %i.qd = add i32 %i.qc, 2
  %i.qe = shl i32 %i.qd, %i.hg
  %i.qf = or i32 %i.qe, %i.pv
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.hh
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !9
  %i.qh = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.qc, i1 true)
  %i.qi = trunc nuw nsw i32 %i.qh to i8
  %i.qj = sub nuw nsw i8 -96, %i.qi
  store i8 %i.qj, ptr %i.or, align 1, !tbaa !13
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.qk = and i32 %i.mo, 8
  %.not1718 = icmp eq i32 %i.qk, 0
  br i1 %.not1718, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.hh
  store i32 0, ptr %i.ql, align 4, !tbaa !9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %bb.bx
  %i.qm = getelementptr inbounds nuw i8, ptr %.015321864, i64 8 ; 3 uses
  %i.qn = and i32 %.sroa.49.1, 16
  %.not1720 = icmp eq i32 %i.qn, 0
  br i1 %.not1720, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qo = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %22 = shl i32 %.sroa.49.1, 19
  %23 = ashr i32 %22, 31
  %24 = add i32 %i.mb, %23                        ; 4 uses
  %i.qp = load i64, ptr %i.he, align 8, !tbaa !19
  %i.qq = zext nneg i32 %24 to i64
  %i.qr = lshr i64 %i.qp, %i.qq
  store i64 %i.qr, ptr %i.he, align 8, !tbaa !19
  %i.qs = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.qt = sub i32 %i.qs, %24
  store i32 %i.qt, ptr %i.hf, align 8, !tbaa !20
  %i.qu = shl i32 %i.qo, 31
  %notmask1722 = shl nsw i32 -1, %24
  %i.qv = xor i32 %notmask1722, -1
  %i.qw = and i32 %i.qo, %i.qv
  %i.qx = lshr i32 %.sroa.49.1, 8
  %i.qy = and i32 %i.qx, 1
  %i.qz = shl nuw i32 %i.qy, %24
  %i.ra = or i32 %i.qz, %i.qw
  %i.rb = or i32 %i.ra, 1
  %i.rc = add i32 %i.rb, 2
  %i.rd = shl i32 %i.rc, %i.hg
  %i.re = or i32 %i.rd, %i.qu
  br label %.sink.split2199

bb.cc:                                            ; preds = %bb.ca
  %i.rf = and i32 %i.mo, 16
  %.not1721 = icmp eq i32 %i.rf, 0
  br i1 %.not1721, label %bb.cd, label %.sink.split2199

.sink.split2199:                                  ; preds = %bb.cc, %bb.cb
  %.sink2200 = phi i32 [ %i.re, %bb.cb ], [ 0, %bb.cc ]
  store i32 %.sink2200, ptr %i.qm, align 4, !tbaa !9
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split2199, %bb.cc
  %i.rg = and i32 %.sroa.49.1, 32
  %.not1723 = icmp eq i32 %i.rg, 0
  br i1 %.not1723, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rh = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %25 = shl i32 %.sroa.49.1, 18
  %26 = ashr i32 %25, 31
  %27 = add i32 %i.mb, %26                        ; 4 uses
  %i.ri = load i64, ptr %i.he, align 8, !tbaa !19
  %i.rj = zext nneg i32 %27 to i64
  %i.rk = lshr i64 %i.ri, %i.rj
  store i64 %i.rk, ptr %i.he, align 8, !tbaa !19
  %i.rl = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.rm = sub i32 %i.rl, %27
  store i32 %i.rm, ptr %i.hf, align 8, !tbaa !20
  %i.rn = shl i32 %i.rh, 31
  %notmask1725 = shl nsw i32 -1, %27
  %i.ro = xor i32 %notmask1725, -1
  %i.rp = and i32 %i.rh, %i.ro
  %i.rq = lshr i32 %.sroa.49.1, 9
  %i.rr = and i32 %i.rq, 1
  %i.rs = shl nuw i32 %i.rr, %27
  %i.rt = or i32 %i.rs, %i.rp
  %i.ru = or i32 %i.rt, 1                         ; 2 uses
  %i.rv = add i32 %i.ru, 2
  %i.rw = shl i32 %i.rv, %i.hg
  %i.rx = or i32 %i.rw, %i.rn
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.hh
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !9
  %i.rz = load i8, ptr %i.or, align 1, !tbaa !13
  %i.sa = and i8 %i.rz, 127
  %i.sb = zext nneg i8 %i.sa to i32
  %i.sc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.ru, i1 true)
  %i.sd = sub nuw nsw i32 32, %i.sc
  %i.se = tail call i32 @llvm.umax.i32(i32 %i.sd, i32 %i.sb)
  %i.sf = trunc nuw nsw i32 %i.se to i8
  %i.sg = or disjoint i8 %i.sf, -128
  store i8 %i.sg, ptr %i.or, align 1, !tbaa !13
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.sh = and i32 %i.mo, 32
  %.not1724 = icmp eq i32 %i.sh, 0
  br i1 %.not1724, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.hh
  store i32 0, ptr %i.si, align 4, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %bb.ce
  %i.sj = getelementptr inbounds nuw i8, ptr %.015001867, i64 2 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.015321864, i64 12 ; 3 uses
  %i.sl = and i32 %.sroa.49.1, 64
  %.not1726 = icmp eq i32 %i.sl, 0
  br i1 %.not1726, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.sm = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %28 = shl i32 %.sroa.49.1, 17
  %29 = ashr i32 %28, 31
  %30 = add i32 %i.mb, %29                        ; 4 uses
  %i.sn = load i64, ptr %i.he, align 8, !tbaa !19
  %i.so = zext nneg i32 %30 to i64
  %i.sp = lshr i64 %i.sn, %i.so
  store i64 %i.sp, ptr %i.he, align 8, !tbaa !19
  %i.sq = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.sr = sub i32 %i.sq, %30
  store i32 %i.sr, ptr %i.hf, align 8, !tbaa !20
  %i.ss = shl i32 %i.sm, 31
  %notmask1728 = shl nsw i32 -1, %30
  %i.st = xor i32 %notmask1728, -1
  %i.su = and i32 %i.sm, %i.st
  %i.sv = lshr i32 %.sroa.49.1, 10
  %i.sw = and i32 %i.sv, 1
  %i.sx = shl nuw i32 %i.sw, %30
  %i.sy = or i32 %i.sx, %i.su
  %i.sz = or i32 %i.sy, 1
  %i.ta = add i32 %i.sz, 2
  %i.tb = shl i32 %i.ta, %i.hg
  %i.tc = or i32 %i.tb, %i.ss
  br label %.sink.split2201

bb.cj:                                            ; preds = %bb.ch
  %i.td = and i32 %i.mo, 64
  %.not1727 = icmp eq i32 %i.td, 0
  br i1 %.not1727, label %bb.ck, label %.sink.split2201

.sink.split2201:                                  ; preds = %bb.cj, %bb.ci
  %.sink2202 = phi i32 [ %i.tc, %bb.ci ], [ 0, %bb.cj ]
  store i32 %.sink2202, ptr %i.sk, align 4, !tbaa !9
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split2201, %bb.cj
  store i8 0, ptr %i.sj, align 1, !tbaa !13
  %i.te = and i32 %.sroa.49.1, 128
  %.not1729 = icmp eq i32 %i.te, 0
  br i1 %.not1729, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tf = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.tg = lshr i32 %.sroa.49.1, 15
  %i.th = sub i32 %i.mb, %i.tg                    ; 4 uses
  %i.ti = load i64, ptr %i.he, align 8, !tbaa !19
  %i.tj = zext nneg i32 %i.th to i64
  %i.tk = lshr i64 %i.ti, %i.tj
  store i64 %i.tk, ptr %i.he, align 8, !tbaa !19
  %i.tl = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.tm = sub i32 %i.tl, %i.th
  store i32 %i.tm, ptr %i.hf, align 8, !tbaa !20
  %i.tn = shl i32 %i.tf, 31
  %notmask1731 = shl nsw i32 -1, %i.th
  %i.to = xor i32 %notmask1731, -1
  %i.tp = and i32 %i.tf, %i.to
  %i.tq = lshr i32 %.sroa.49.1, 11
  %i.tr = and i32 %i.tq, 1
  %i.ts = shl nuw i32 %i.tr, %i.th
  %i.tt = or i32 %i.ts, %i.tp
  %i.tu = or i32 %i.tt, 1                         ; 2 uses
  %i.tv = add i32 %i.tu, 2
  %i.tw = shl i32 %i.tv, %i.hg
  %i.tx = or i32 %i.tw, %i.tn
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.hh
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !9
  %i.tz = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.tu, i1 true)
  %i.ua = trunc nuw nsw i32 %i.tz to i8
  %i.ub = sub nuw nsw i8 -96, %i.ua
  store i8 %i.ub, ptr %i.sj, align 1, !tbaa !13
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  %.not1730 = icmp samesign ult i32 %i.mo, 128
  br i1 %.not1730, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.hh
  store i32 0, ptr %i.uc, align 4, !tbaa !9
  br label %bb.co

.thread1797:                                      ; preds = %bb.bl, %.critedge1761, %bb.bi, %.critedge1763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.critedge1742

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.cl
  %i.ud = getelementptr inbounds nuw i8, ptr %.015321864, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ue = icmp slt i32 %i.mi, %i.ek
  br i1 %i.ue, label %bb.av, label %.preheader1844, !llvm.loop !40

bb.cp:                                            ; preds = %.lr.ph1946, %.thread1807
  %indvars.iv2043 = phi i64 [ 2, %.lr.ph1946 ], [ %indvars.iv.next2044.pre-phi, %.thread1807 ] ; 9 uses
  %.114931945 = phi i32 [ %.01492.lcssa, %.lr.ph1946 ], [ %.21494.lcssa, %.thread1807 ]
  %.515201944 = phi i32 [ %.01515.lcssa, %.lr.ph1946 ], [ %.61521.lcssa, %.thread1807 ] ; 2 uses
  %i.uf = and i32 %.114931945, -17
  %i.ug = xor i32 %i.uf, 2                        ; 2 uses
  %i.uh = load i8, ptr %i.gx, align 1, !tbaa !13
  store i8 0, ptr %i.gx, align 1, !tbaa !13
  br i1 %i.gz, label %.lr.ph1883, label %.._crit_edge1884_crit_edge

.._crit_edge1884_crit_edge:                       ; preds = %bb.cp
  %.pre2072 = add nuw nsw i64 %indvars.iv2043, 2
  %.pre2073 = trunc nuw nsw i64 %indvars.iv2043 to i32
  br label %._crit_edge1884

.lr.ph1883:                                       ; preds = %bb.cp
  %i.ui = mul nsw i64 %indvars.iv2043, %i.ho
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ui
  %i.uk = trunc nuw nsw i64 %indvars.iv2043 to i32 ; 2 uses
  %i.ul = and i32 %i.uk, 4
  %.not1649 = icmp eq i32 %i.ul, 0
  %i.um = select i1 %.not1649, ptr %i.eo, ptr %i.ep
  %i.un = add nuw nsw i64 %indvars.iv2043, 2      ; 2 uses
  %.not1677 = icmp sgt i64 %i.un, %i.if
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1883, %bb.em
  %.214941881 = phi i32 [ %i.ug, %.lr.ph1883 ], [ %i.xy, %bb.em ] ; 3 uses
  %.215021880 = phi ptr [ %i.gx, %.lr.ph1883 ], [ %i.abd, %bb.em ] ; 6 uses
  %.615211879 = phi i32 [ %.515201944, %.lr.ph1883 ], [ %.91524, %bb.em ] ; 3 uses
  %.215301878 = phi i32 [ 0, %.lr.ph1883 ], [ %.31531, %bb.em ]
  %.215341877 = phi ptr [ %i.uj, %.lr.ph1883 ], [ %i.aiw, %bb.em ] ; 7 uses
  %.015401876 = phi i32 [ 0, %.lr.ph1883 ], [ %i.abf, %bb.em ] ; 3 uses
  %.015411875 = phi i8 [ %i.uh, %.lr.ph1883 ], [ %i.abe, %bb.em ]
  %.015431874 = phi ptr [ %i.um, %.lr.ph1883 ], [ %i.xx, %bb.em ] ; 4 uses
  %i.uo = zext i8 %.015411875 to i32              ; 2 uses
  %i.up = lshr i32 %i.uo, 7
  %i.uq = or i32 %.215301878, %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %.215021880, i64 1 ; 8 uses
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !13
  %i.ut = lshr i8 %i.us, 5
  %i.uu = and i8 %i.ut, 4
  %i.uv = zext nneg i8 %i.uu to i32
  %i.uw = or i32 %i.uq, %i.uv                     ; 2 uses
  %i.ux = call fastcc i32 @rev_fetch(ptr noundef %9)
  %i.uy = shl nuw nsw i32 %i.uw, 7
  %i.uz = and i32 %i.ux, 127
  %i.va = or disjoint i32 %i.uy, %i.uz
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl1, i64 %i.vb
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !116
  %i.ve = zext i16 %i.vd to i32                   ; 2 uses
  %i.vf = icmp eq i32 %i.uw, 0
  br i1 %i.vf, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.vg = add nsw i32 %.615211879, -2             ; 2 uses
  %i.vh = icmp eq i32 %i.vg, -1
  %i.vi = select i1 %i.vh, i32 %i.ve, i32 0       ; 2 uses
  %i.vj = icmp slt i32 %.615211879, 2
  br i1 %i.vj, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vk = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs, %bb.cq
  %.sroa.0.1 = phi i32 [ %i.vi, %bb.cs ], [ %i.vi, %bb.cr ], [ %i.ve, %bb.cq ] ; 17 uses
  %.71522 = phi i32 [ %i.vk, %bb.cs ], [ %i.vg, %bb.cr ], [ %.615211879, %bb.cq ] ; 4 uses
  %i.vl = and i32 %.sroa.0.1, 64                  ; 2 uses
  %i.vm = lshr exact i32 %i.vl, 5
  %i.vn = and i32 %.sroa.0.1, 128                 ; 2 uses
  %i.vo = lshr exact i32 %i.vn, 6
  %i.vp = or i32 %i.vm, %i.vo                     ; 2 uses
  %i.vq = and i32 %.sroa.0.1, 7                   ; 2 uses
  %i.vr = load i64, ptr %i.hj, align 8, !tbaa !16
  %i.vs = zext nneg i32 %i.vq to i64
  %i.vt = lshr i64 %i.vr, %i.vs                   ; 3 uses
  %i.vu = load i32, ptr %i.hk, align 8, !tbaa !17
  %i.vv = sub i32 %i.vu, %i.vq                    ; 2 uses
  %i.vw = trunc i64 %i.vt to i32                  ; 2 uses
  %i.vx = lshr i32 %.sroa.0.1, 4
  %i.vy = and i32 %i.vx, 3
  %i.vz = lshr i32 %.sroa.0.1, 2
  %i.wa = and i32 %i.vz, 48
  %i.wb = or disjoint i32 %i.vy, %i.wa
  %i.wc = shl i32 %i.wb, %.214941881
  %i.wd = load i32, ptr %.015431874, align 4, !tbaa !9
  %i.we = or i32 %i.wd, %i.wc                     ; 2 uses
  store i32 %i.we, ptr %.015431874, align 4, !tbaa !9
  %i.wf = or disjoint i32 %.015401876, 2
  %i.wg = icmp slt i32 %i.wf, %i.ek
  br i1 %i.wg, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.wh = load i8, ptr %i.ur, align 1, !tbaa !13
  %i.wi = lshr i8 %i.wh, 7
  %i.wj = getelementptr inbounds nuw i8, ptr %.215021880, i64 2
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !13
  %i.wl = lshr i8 %i.wk, 5
  %i.wm = and i8 %i.wl, 4
  %i.wn = or disjoint i8 %i.wm, %i.wi
  %i.wo = zext nneg i8 %i.wn to i32
  %i.wp = or disjoint i32 %i.vp, %i.wo            ; 2 uses
  %i.wq = shl nuw nsw i32 %i.wp, 7
  %i.wr = and i32 %i.vw, 127
  %i.ws = or disjoint i32 %i.wq, %i.wr
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl1, i64 %i.wt
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !116
  %i.ww = zext i16 %i.wv to i32                   ; 2 uses
  %i.wx = icmp eq i32 %i.wp, 0
  br i1 %i.wx, label %bb.cv, label %bb.cx
end_hunk_0
begin_hunk_1_@opj_t1_ht_decode_cblk:bb.a
  %i.xk = sub i32 %i.vv, %i.xh
  %i.xl = trunc i64 %i.xj to i32
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ct
  %i.xm = phi i32 [ %i.xk, %bb.cx ], [ %i.vv, %bb.ct ]
  %i.xn = phi i64 [ %i.xj, %bb.cx ], [ %i.vt, %bb.ct ]
  %.31531 = phi i32 [ %i.xg, %bb.cx ], [ %i.vp, %bb.ct ]
  %.sroa.49.3 = phi i32 [ %.sroa.49.2, %bb.cx ], [ 0, %bb.ct ] ; 16 uses
  %.11527 = phi i32 [ %i.xl, %bb.cx ], [ %i.vw, %bb.ct ] ; 4 uses
  %.91524 = phi i32 [ %.81523, %bb.cx ], [ %.71522, %bb.ct ] ; 2 uses
  %i.xo = and i32 %.sroa.49.3, 48
  %i.xp = shl nuw nsw i32 %.sroa.49.3, 2
  %i.xq = and i32 %i.xp, 768
  %i.xr = or disjoint i32 %i.xq, %i.xo
  %i.xs = add nuw nsw i32 %.214941881, 4
  %i.xt = shl i32 %i.xr, %i.xs
  %i.xu = or i32 %i.xt, %i.we
  store i32 %i.xu, ptr %.015431874, align 4, !tbaa !9
  %i.xv = lshr exact i32 %.015401876, 2
  %.lobit = and i32 %i.xv, 1
  %i.xw = zext nneg i32 %.lobit to i64
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.015431874, i64 %i.xw
  %i.xy = xor i32 %.214941881, 16                 ; 2 uses
  %i.xz = lshr i32 %.sroa.0.1, 3
  %i.ya = and i32 %i.xz, 1
  %i.yb = lshr i32 %.sroa.49.3, 2
  %i.yc = and i32 %i.yb, 2
  %i.yd = or disjoint i32 %i.yc, %i.ya            ; 3 uses
  switch i32 %i.yd, label %bb.cz [
    i32 0, label %decode_noninit_uvlc.exit
    i32 3, label %bb.da
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.ye = and i32 %.11527, 7
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !13
  %i.yi = zext i8 %i.yh to i32                    ; 3 uses
  %i.yj = and i32 %i.yi, 3                        ; 2 uses
  %i.yk = lshr i32 %.11527, %i.yj
  %i.yl = lshr i32 %i.yi, 2
  %i.ym = and i32 %i.yl, 7                        ; 2 uses
  %i.yn = add nuw nsw i32 %i.ym, %i.yj
  %i.yo = lshr i32 %i.yi, 5
  %notmask52.i = shl nsw i32 -1, %i.ym
  %i.yp = xor i32 %notmask52.i, -1
  %i.yq = and i32 %i.yk, %i.yp
  %i.yr = icmp eq i32 %i.yd, 1                    ; 2 uses
  %i.ys = add nuw nsw i32 %i.yo, 1
  %i.yt = add nuw nsw i32 %i.ys, %i.yq            ; 2 uses
  %i.yu = select i1 %i.yr, i32 %i.yt, i32 1
  %i.yv = select i1 %i.yr, i32 1, i32 %i.yt
  br label %decode_noninit_uvlc.exit

bb.da:                                            ; preds = %bb.cy
  %i.yw = and i32 %.11527, 7
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !13
  %i.za = zext i8 %i.yz to i32                    ; 3 uses
  %i.zb = and i32 %i.za, 3                        ; 2 uses
  %i.zc = lshr i32 %.11527, %i.zb                 ; 2 uses
  %i.zd = and i32 %i.zc, 7
  %i.ze = zext nneg i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !13
  %i.zh = zext i8 %i.zg to i32                    ; 3 uses
  %i.zi = and i32 %i.zh, 3                        ; 2 uses
  %i.zj = lshr i32 %i.zc, %i.zi                   ; 2 uses
  %i.zk = add nuw nsw i32 %i.zi, %i.zb
  %i.zl = lshr i32 %i.za, 2
  %i.zm = and i32 %i.zl, 7                        ; 3 uses
  %i.zn = add nuw nsw i32 %i.zk, %i.zm
  %i.zo = lshr i32 %i.za, 5
  %notmask.i = shl nsw i32 -1, %i.zm
  %i.zp = xor i32 %notmask.i, -1
  %i.zq = and i32 %i.zj, %i.zp
  %i.zr = add nuw nsw i32 %i.zo, 1
  %i.zs = add nuw nsw i32 %i.zr, %i.zq
  %i.zt = lshr i32 %i.zj, %i.zm
  %i.zu = lshr i32 %i.zh, 2
  %i.zv = and i32 %i.zu, 7                        ; 2 uses
  %i.zw = add nuw nsw i32 %i.zn, %i.zv
  %i.zx = lshr i32 %i.zh, 5
  %notmask51.i = shl nsw i32 -1, %i.zv
  %i.zy = xor i32 %notmask51.i, -1
  %i.zz = and i32 %i.zt, %i.zy
  %i.aaa = add nuw nsw i32 %i.zx, 1
  %i.aab = add nuw nsw i32 %i.aaa, %i.zz
  br label %decode_noninit_uvlc.exit

decode_noninit_uvlc.exit:                         ; preds = %bb.cy, %bb.cz, %bb.da
  %.sroa.12.1 = phi i32 [ %i.yv, %bb.cz ], [ %i.aab, %bb.da ], [ 1, %bb.cy ] ; 2 uses
  %.sroa.0.11784 = phi i32 [ %i.yu, %bb.cz ], [ %i.zs, %bb.da ], [ 1, %bb.cy ] ; 2 uses
  %.0.i = phi i32 [ %i.yn, %bb.cz ], [ %i.zw, %bb.da ], [ %i.yd, %bb.cy ] ; 2 uses
  %i.aac = zext nneg i32 %.0.i to i64
  %i.aad = lshr i64 %i.xn, %i.aac
  store i64 %i.aad, ptr %i.hj, align 8, !tbaa !16
  %i.aae = sub i32 %i.xm, %.0.i
  store i32 %i.aae, ptr %i.hk, align 8, !tbaa !17
  %i.aaf = and i32 %.sroa.0.1, 240                ; 2 uses
  %i.aag = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.aaf)
  %.not1675 = icmp samesign ult i32 %i.aag, 2
  br i1 %.not1675, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %decode_noninit_uvlc.exit
  %i.aah = and i32 %i.uo, 127
  %i.aai = load i8, ptr %i.ur, align 1, !tbaa !13
  %i.aaj = and i8 %i.aai, 127
  %i.aak = zext nneg i8 %i.aaj to i32
  %. = tail call i32 @llvm.umax.i32(i32 %i.aah, i32 %i.aak)
  %i.aal = tail call i32 @llvm.usub.sat.i32(i32 %., i32 2)
  %i.aam = add nuw nsw i32 %i.aal, %.sroa.0.11784
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %decode_noninit_uvlc.exit
  %.sroa.0.01783 = phi i32 [ %.sroa.0.11784, %decode_noninit_uvlc.exit ], [ %i.aam, %bb.db ] ; 5 uses
  %i.aan = and i32 %.sroa.49.3, 240               ; 2 uses
  %i.aao = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.aan)
  %.not1676 = icmp samesign ult i32 %i.aao, 2
  br i1 %.not1676, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aap = load i8, ptr %i.ur, align 1, !tbaa !13
  %i.aaq = and i8 %i.aap, 127
  %i.aar = getelementptr inbounds nuw i8, ptr %.215021880, i64 2
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !13
  %i.aat = and i8 %i.aas, 127
  %.1764 = tail call i8 @llvm.umax.i8(i8 %i.aaq, i8 %i.aat) ; 2 uses
  %i.aau = zext nneg i8 %.1764 to i32
  %i.aav = icmp samesign ugt i8 %.1764, 2
  %i.aaw = add nsw i32 %i.aau, -2
  %i.aax = select i1 %i.aav, i32 %i.aaw, i32 0
  %i.aay = add nsw i32 %i.aax, %.sroa.12.1
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.12.0 = phi i32 [ %.sroa.12.1, %bb.dc ], [ %i.aay, %bb.dd ] ; 5 uses
  %i.aaz = icmp ugt i32 %.sroa.0.01783, %i.fr
  %i.aba = icmp ugt i32 %.sroa.12.0, %i.fr
  %or.cond1828 = select i1 %i.aaz, i1 true, i1 %i.aba
  br i1 %or.cond1828, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.not1703 = icmp eq ptr %6, null
  br i1 %.not1703, label %.critedge1766, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.abb = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.11) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1766:                                    ; preds = %bb.df
  %i.abc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.11) #10 ; 0 uses
  br label %.critedge1742

bb.dh:                                            ; preds = %bb.de
  %i.abd = getelementptr inbounds nuw i8, ptr %.215021880, i64 2 ; 4 uses
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !13
  store i8 0, ptr %i.abd, align 1, !tbaa !13
  store i8 0, ptr %i.ur, align 1, !tbaa !13
  %i.abf = add nuw nsw i32 %.015401876, 4         ; 4 uses
  %i.abg = icmp sgt i32 %i.abf, %i.ek
  %i.abh = sub nsw i32 %i.abf, %i.ek
  %i.abi = shl nuw i32 %i.abh, 1
  %i.abj = lshr i32 255, %i.abi
  %.01539 = select i1 %i.abg, i32 %i.abj, i32 255 ; 2 uses
  %i.abk = and i32 %.01539, 85
  %i.abl = select i1 %.not1677, i32 %i.abk, i32 %.01539 ; 9 uses
  %i.abm = lshr exact i32 %i.aaf, 4
  %i.abn = or disjoint i32 %i.aan, %i.abm
  %i.abo = xor i32 %i.abl, -1
  %i.abp = and i32 %i.abn, %i.abo
  %.not1678 = icmp eq i32 %i.abp, 0
  br i1 %.not1678, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not1702 = icmp eq ptr %6, null
  br i1 %.not1702, label %.critedge1768, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.abq = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1768:                                    ; preds = %bb.di
  %i.abr = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.critedge1742

bb.dk:                                            ; preds = %bb.dh
  %i.abs = and i32 %.sroa.0.1, 16
  %.not1679 = icmp eq i32 %i.abs, 0
  br i1 %.not1679, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abt = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %31 = shl i32 %.sroa.0.1, 19
  %32 = ashr i32 %31, 31
  %33 = add nsw i32 %.sroa.0.01783, %32           ; 4 uses
  %i.abu = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.abv = zext nneg i32 %33 to i64
  %i.abw = lshr i64 %i.abu, %i.abv
  store i64 %i.abw, ptr %i.hl, align 8, !tbaa !19
  %i.abx = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.aby = sub i32 %i.abx, %33
  store i32 %i.aby, ptr %i.hm, align 8, !tbaa !20
  %i.abz = shl i32 %i.abt, 31
  %notmask = shl nsw i32 -1, %33
  %i.aca = xor i32 %notmask, -1
  %i.acb = and i32 %i.abt, %i.aca
  %i.acc = lshr i32 %.sroa.0.1, 8
  %i.acd = and i32 %i.acc, 1
  %i.ace = shl nuw i32 %i.acd, %33
  %i.acf = or i32 %i.ace, %i.acb
  %i.acg = or i32 %i.acf, 1
  %i.ach = add i32 %i.acg, 2
  %i.aci = shl i32 %i.ach, %i.hn
  %i.acj = or i32 %i.aci, %i.abz
  br label %.sink.split2203

bb.dm:                                            ; preds = %bb.dk
  %i.ack = and i32 %i.abl, 1
  %.not1680 = icmp eq i32 %i.ack, 0
  br i1 %.not1680, label %bb.dn, label %.sink.split2203

.sink.split2203:                                  ; preds = %bb.dm, %bb.dl
  %.sink2204 = phi i32 [ %i.acj, %bb.dl ], [ 0, %bb.dm ]
  store i32 %.sink2204, ptr %.215341877, align 4, !tbaa !9
  br label %bb.dn

bb.dn:                                            ; preds = %.sink.split2203, %bb.dm
  %i.acl = and i32 %.sroa.0.1, 32
  %.not1681 = icmp eq i32 %i.acl, 0
  br i1 %.not1681, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.acm = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %34 = shl i32 %.sroa.0.1, 18
  %35 = ashr i32 %34, 31
  %36 = add nsw i32 %.sroa.0.01783, %35           ; 4 uses
  %i.acn = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.aco = zext nneg i32 %36 to i64
  %i.acp = lshr i64 %i.acn, %i.aco
  store i64 %i.acp, ptr %i.hl, align 8, !tbaa !19
  %i.acq = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.acr = sub i32 %i.acq, %36
  store i32 %i.acr, ptr %i.hm, align 8, !tbaa !20
  %i.acs = shl i32 %i.acm, 31
  %notmask1683 = shl nsw i32 -1, %36
  %i.act = xor i32 %notmask1683, -1
  %i.acu = and i32 %i.acm, %i.act
  %i.acv = lshr i32 %.sroa.0.1, 9
  %i.acw = and i32 %i.acv, 1
  %i.acx = shl nuw i32 %i.acw, %36
  %i.acy = or i32 %i.acx, %i.acu
  %i.acz = or i32 %i.acy, 1                       ; 2 uses
  %i.ada = add i32 %i.acz, 2
  %i.adb = shl i32 %i.ada, %i.hn
  %i.adc = or i32 %i.adb, %i.acs
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.215341877, i64 %i.ho
  store i32 %i.adc, ptr %i.add, align 4, !tbaa !9
  %i.ade = load i8, ptr %.215021880, align 1, !tbaa !13
  %i.adf = and i8 %i.ade, 127
  %i.adg = zext nneg i8 %i.adf to i32
  %i.adh = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.acz, i1 true)
  %i.adi = sub nuw nsw i32 32, %i.adh
  %i.adj = tail call i32 @llvm.umax.i32(i32 %i.adi, i32 %i.adg)
  %i.adk = trunc nuw nsw i32 %i.adj to i8
  %i.adl = or disjoint i8 %i.adk, -128
  store i8 %i.adl, ptr %.215021880, align 1, !tbaa !13
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  %i.adm = and i32 %i.abl, 2
  %.not1682 = icmp eq i32 %i.adm, 0
  br i1 %.not1682, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.215341877, i64 %i.ho
  store i32 0, ptr %i.adn, align 4, !tbaa !9
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq, %bb.do
  %i.ado = getelementptr inbounds nuw i8, ptr %.215341877, i64 4 ; 3 uses
  %.not1684 = icmp eq i32 %i.vl, 0
  br i1 %.not1684, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.adp = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %37 = shl i32 %.sroa.0.1, 17
  %38 = ashr i32 %37, 31
  %39 = add nsw i32 %.sroa.0.01783, %38           ; 4 uses
  %i.adq = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.adr = zext nneg i32 %39 to i64
  %i.ads = lshr i64 %i.adq, %i.adr
  store i64 %i.ads, ptr %i.hl, align 8, !tbaa !19
  %i.adt = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.adu = sub i32 %i.adt, %39
  store i32 %i.adu, ptr %i.hm, align 8, !tbaa !20
  %i.adv = shl i32 %i.adp, 31
  %notmask1686 = shl nsw i32 -1, %39
  %i.adw = xor i32 %notmask1686, -1
  %i.adx = and i32 %i.adp, %i.adw
  %i.ady = lshr i32 %.sroa.0.1, 10
  %i.adz = and i32 %i.ady, 1
  %i.aea = shl nuw i32 %i.adz, %39
  %i.aeb = or i32 %i.aea, %i.adx
  %i.aec = or i32 %i.aeb, 1
  %i.aed = add i32 %i.aec, 2
  %i.aee = shl i32 %i.aed, %i.hn
  %i.aef = or i32 %i.aee, %i.adv
  br label %.sink.split2205

bb.dt:                                            ; preds = %bb.dr
  %i.aeg = and i32 %i.abl, 4
  %.not1685 = icmp eq i32 %i.aeg, 0
  br i1 %.not1685, label %bb.du, label %.sink.split2205

.sink.split2205:                                  ; preds = %bb.dt, %bb.ds
  %.sink2206 = phi i32 [ %i.aef, %bb.ds ], [ 0, %bb.dt ]
  store i32 %.sink2206, ptr %i.ado, align 4, !tbaa !9
  br label %bb.du

bb.du:                                            ; preds = %.sink.split2205, %bb.dt
  %.not1687 = icmp eq i32 %i.vn, 0
  br i1 %.not1687, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aeh = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.aei = lshr i32 %.sroa.0.1, 15
  %i.aej = sub nuw nsw i32 %.sroa.0.01783, %i.aei ; 4 uses
  %i.aek = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.ael = zext nneg i32 %i.aej to i64
  %i.aem = lshr i64 %i.aek, %i.ael
  store i64 %i.aem, ptr %i.hl, align 8, !tbaa !19
  %i.aen = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.aeo = sub i32 %i.aen, %i.aej
  store i32 %i.aeo, ptr %i.hm, align 8, !tbaa !20
  %i.aep = shl i32 %i.aeh, 31
  %notmask1689 = shl nsw i32 -1, %i.aej
  %i.aeq = xor i32 %notmask1689, -1
  %i.aer = and i32 %i.aeh, %i.aeq
  %i.aes = lshr i32 %.sroa.0.1, 11
  %i.aet = and i32 %i.aes, 1
  %i.aeu = shl nuw i32 %i.aet, %i.aej
  %i.aev = or i32 %i.aeu, %i.aer
  %i.aew = or i32 %i.aev, 1                       ; 2 uses
  %i.aex = add i32 %i.aew, 2
  %i.aey = shl i32 %i.aex, %i.hn
  %i.aez = or i32 %i.aey, %i.aep
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.ho
  store i32 %i.aez, ptr %i.afa, align 4, !tbaa !9
  %i.afb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.aew, i1 true)
  %i.afc = trunc nuw nsw i32 %i.afb to i8
  %i.afd = sub nuw nsw i8 -96, %i.afc
  store i8 %i.afd, ptr %i.ur, align 1, !tbaa !13
  br label %bb.dy

bb.dw:                                            ; preds = %bb.du
  %i.afe = and i32 %i.abl, 8
  %.not1688 = icmp eq i32 %i.afe, 0
  br i1 %.not1688, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.ho
  store i32 0, ptr %i.aff, align 4, !tbaa !9
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx, %bb.dv
  %i.afg = getelementptr inbounds nuw i8, ptr %.215341877, i64 8 ; 3 uses
  %i.afh = and i32 %.sroa.49.3, 16
  %.not1690 = icmp eq i32 %i.afh, 0
  br i1 %.not1690, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.afi = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %40 = shl i32 %.sroa.49.3, 19
  %41 = ashr i32 %40, 31
  %42 = add nsw i32 %.sroa.12.0, %41              ; 4 uses
  %i.afj = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.afk = zext nneg i32 %42 to i64
  %i.afl = lshr i64 %i.afj, %i.afk
  store i64 %i.afl, ptr %i.hl, align 8, !tbaa !19
  %i.afm = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.afn = sub i32 %i.afm, %42
  store i32 %i.afn, ptr %i.hm, align 8, !tbaa !20
  %i.afo = shl i32 %i.afi, 31
  %notmask1692 = shl nsw i32 -1, %42
  %i.afp = xor i32 %notmask1692, -1
  %i.afq = and i32 %i.afi, %i.afp
  %i.afr = lshr i32 %.sroa.49.3, 8
  %i.afs = and i32 %i.afr, 1
  %i.aft = shl nuw i32 %i.afs, %42
  %i.afu = or i32 %i.aft, %i.afq
  %i.afv = or i32 %i.afu, 1
  %i.afw = add i32 %i.afv, 2
  %i.afx = shl i32 %i.afw, %i.hn
  %i.afy = or i32 %i.afx, %i.afo
  br label %.sink.split2207

bb.ea:                                            ; preds = %bb.dy
  %i.afz = and i32 %i.abl, 16
  %.not1691 = icmp eq i32 %i.afz, 0
  br i1 %.not1691, label %bb.eb, label %.sink.split2207

.sink.split2207:                                  ; preds = %bb.ea, %bb.dz
  %.sink2208 = phi i32 [ %i.afy, %bb.dz ], [ 0, %bb.ea ]
  store i32 %.sink2208, ptr %i.afg, align 4, !tbaa !9
  br label %bb.eb

bb.eb:                                            ; preds = %.sink.split2207, %bb.ea
  %i.aga = and i32 %.sroa.49.3, 32
  %.not1693 = icmp eq i32 %i.aga, 0
  br i1 %.not1693, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.agb = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %43 = shl i32 %.sroa.49.3, 18
  %44 = ashr i32 %43, 31
  %45 = add nsw i32 %.sroa.12.0, %44              ; 4 uses
  %i.agc = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.agd = zext nneg i32 %45 to i64
  %i.age = lshr i64 %i.agc, %i.agd
  store i64 %i.age, ptr %i.hl, align 8, !tbaa !19
  %i.agf = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.agg = sub i32 %i.agf, %45
  store i32 %i.agg, ptr %i.hm, align 8, !tbaa !20
  %i.agh = shl i32 %i.agb, 31
  %notmask1695 = shl nsw i32 -1, %45
  %i.agi = xor i32 %notmask1695, -1
  %i.agj = and i32 %i.agb, %i.agi
  %i.agk = lshr i32 %.sroa.49.3, 9
  %i.agl = and i32 %i.agk, 1
  %i.agm = shl nuw i32 %i.agl, %45
  %i.agn = or i32 %i.agm, %i.agj
  %i.ago = or i32 %i.agn, 1                       ; 2 uses
  %i.agp = add i32 %i.ago, 2
  %i.agq = shl i32 %i.agp, %i.hn
  %i.agr = or i32 %i.agq, %i.agh
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %i.ho
  store i32 %i.agr, ptr %i.ags, align 4, !tbaa !9
  %i.agt = load i8, ptr %i.ur, align 1, !tbaa !13
  %i.agu = and i8 %i.agt, 127
  %i.agv = zext nneg i8 %i.agu to i32
  %i.agw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.ago, i1 true)
  %i.agx = sub nuw nsw i32 32, %i.agw
  %i.agy = tail call i32 @llvm.umax.i32(i32 %i.agx, i32 %i.agv)
  %i.agz = trunc nuw nsw i32 %i.agy to i8
  %i.aha = or disjoint i8 %i.agz, -128
  store i8 %i.aha, ptr %i.ur, align 1, !tbaa !13
  br label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.ahb = and i32 %i.abl, 32
  %.not1694 = icmp eq i32 %i.ahb, 0
  br i1 %.not1694, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %i.ho
  store i32 0, ptr %i.ahc, align 4, !tbaa !9
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ed, %bb.ee, %bb.ec
  %i.ahd = getelementptr inbounds nuw i8, ptr %.215341877, i64 12 ; 3 uses
  %i.ahe = and i32 %.sroa.49.3, 64
  %.not1696 = icmp eq i32 %i.ahe, 0
  br i1 %.not1696, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahf = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %46 = shl i32 %.sroa.49.3, 17
  %47 = ashr i32 %46, 31
  %48 = add nsw i32 %.sroa.12.0, %47              ; 4 uses
  %i.ahg = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.ahh = zext nneg i32 %48 to i64
  %i.ahi = lshr i64 %i.ahg, %i.ahh
  store i64 %i.ahi, ptr %i.hl, align 8, !tbaa !19
  %i.ahj = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.ahk = sub i32 %i.ahj, %48
  store i32 %i.ahk, ptr %i.hm, align 8, !tbaa !20
  %i.ahl = shl i32 %i.ahf, 31
  %notmask1698 = shl nsw i32 -1, %48
  %i.ahm = xor i32 %notmask1698, -1
  %i.ahn = and i32 %i.ahf, %i.ahm
  %i.aho = lshr i32 %.sroa.49.3, 10
  %i.ahp = and i32 %i.aho, 1
  %i.ahq = shl nuw i32 %i.ahp, %48
  %i.ahr = or i32 %i.ahq, %i.ahn
  %i.ahs = or i32 %i.ahr, 1
  %i.aht = add i32 %i.ahs, 2
  %i.ahu = shl i32 %i.aht, %i.hn
  %i.ahv = or i32 %i.ahu, %i.ahl
  br label %.sink.split2209

bb.eh:                                            ; preds = %bb.ef
  %i.ahw = and i32 %i.abl, 64
  %.not1697 = icmp eq i32 %i.ahw, 0
  br i1 %.not1697, label %bb.ei, label %.sink.split2209

.sink.split2209:                                  ; preds = %bb.eh, %bb.eg
  %.sink2210 = phi i32 [ %i.ahv, %bb.eg ], [ 0, %bb.eh ]
  store i32 %.sink2210, ptr %i.ahd, align 4, !tbaa !9
  br label %bb.ei

bb.ei:                                            ; preds = %.sink.split2209, %bb.eh
  %i.ahx = and i32 %.sroa.49.3, 128
  %.not1699 = icmp eq i32 %i.ahx, 0
  br i1 %.not1699, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ahy = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.ahz = lshr i32 %.sroa.49.3, 15
  %i.aia = sub nsw i32 %.sroa.12.0, %i.ahz        ; 4 uses
  %i.aib = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.aic = zext nneg i32 %i.aia to i64
  %i.aid = lshr i64 %i.aib, %i.aic
  store i64 %i.aid, ptr %i.hl, align 8, !tbaa !19
  %i.aie = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.aif = sub i32 %i.aie, %i.aia
  store i32 %i.aif, ptr %i.hm, align 8, !tbaa !20
  %i.aig = shl i32 %i.ahy, 31
  %notmask1701 = shl nsw i32 -1, %i.aia
  %i.aih = xor i32 %notmask1701, -1
  %i.aii = and i32 %i.ahy, %i.aih
  %i.aij = lshr i32 %.sroa.49.3, 11
  %i.aik = and i32 %i.aij, 1
  %i.ail = shl nuw i32 %i.aik, %i.aia
  %i.aim = or i32 %i.ail, %i.aii
  %i.ain = or i32 %i.aim, 1                       ; 2 uses
  %i.aio = add i32 %i.ain, 2
  %i.aip = shl i32 %i.aio, %i.hn
  %i.aiq = or i32 %i.aip, %i.aig
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ho
  store i32 %i.aiq, ptr %i.air, align 4, !tbaa !9
  %i.ais = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.ain, i1 true)
  %i.ait = trunc nuw nsw i32 %i.ais to i8
  %i.aiu = sub nuw nsw i8 -96, %i.ait
  store i8 %i.aiu, ptr %i.abd, align 1, !tbaa !13
  br label %bb.em

bb.ek:                                            ; preds = %bb.ei
  %.not1700 = icmp samesign ult i32 %i.abl, 128
  br i1 %.not1700, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.ho
  store i32 0, ptr %i.aiv, align 4, !tbaa !9
  br label %bb.em

bb.em:                                            ; preds = %bb.ek, %bb.el, %bb.ej
  %i.aiw = getelementptr inbounds nuw i8, ptr %.215341877, i64 16
  %.not1704 = icmp slt i32 %i.abf, %i.ek
  br i1 %.not1704, label %bb.cq, label %._crit_edge1884, !llvm.loop !41

._crit_edge1884:                                  ; preds = %bb.em, %.._crit_edge1884_crit_edge
  %.pre-phi2074 = phi i32 [ %.pre2073, %.._crit_edge1884_crit_edge ], [ %i.uk, %bb.em ]
  %indvars.iv.next2044.pre-phi = phi i64 [ %.pre2072, %.._crit_edge1884_crit_edge ], [ %i.un, %bb.em ] ; 3 uses
  %.61521.lcssa = phi i32 [ %.515201944, %.._crit_edge1884_crit_edge ], [ %.91524, %bb.em ]
  %.21494.lcssa = phi i32 [ %i.ug, %.._crit_edge1884_crit_edge ], [ %i.xy, %bb.em ]
  %i.aix = and i32 %.pre-phi2074, 2
  %i.aiy = icmp ne i32 %i.aix, 0
  %or.cond1770 = and i1 %i.gt, %i.aiy
  br i1 %or.cond1770, label %bb.en, label %.thread1807

bb.en:                                            ; preds = %._crit_edge1884
  %i.aiz = trunc nsw i64 %indvars.iv.next2044.pre-phi to i32
  %i.aja = and i32 %i.aiz, 4                      ; 2 uses
  br i1 %i.gw, label %bb.eo, label %.loopexit1843

bb.eo:                                            ; preds = %bb.en
  %i.ajb = add nsw i64 %indvars.iv2043, -2
  %i.ajc = mul nsw i64 %i.ajb, %i.ho
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ajc
  %.not1650 = icmp eq i32 %i.aja, 0               ; 3 uses
  %i.aje = select i1 %.not1650, ptr %i.ep, ptr %i.eo ; 2 uses
  br i1 %i.gz, label %.lr.ph1894, label %.loopexit1843.thread

.loopexit1843.thread:                             ; preds = %bb.eo
  %i.ajf = select i1 %.not1650, ptr %i.er, ptr %i.eq
  br label %._crit_edge1901

.lr.ph1894:                                       ; preds = %bb.eo, %.split
  %indvars.iv2034 = phi i64 [ %indvars.iv.next2035, %.split ], [ 0, %bb.eo ] ; 2 uses
  %.015141891 = phi ptr [ %i.ajh, %.split ], [ %i.aje, %bb.eo ] ; 2 uses
  %i.ajg = call fastcc i32 @rev_fetch_mrp(ptr noundef %12)
  %i.ajh = getelementptr inbounds nuw i8, ptr %.015141891, i64 4
  %i.aji = load i32, ptr %.015141891, align 4, !tbaa !9 ; 7 uses
  %.not1668 = icmp eq i32 %i.aji, 0
  br i1 %.not1668, label %.split, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1894
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %indvars.iv2034
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.ez
  %.015041890 = phi i32 [ 0, %bb.ep ], [ %i.akz, %bb.ez ]
  %.015051889 = phi ptr [ %i.ajj, %bb.ep ], [ %i.ala, %bb.ez ] ; 6 uses
  %.015061888 = phi i32 [ 15, %bb.ep ], [ %i.aky, %bb.ez ] ; 3 uses
  %.015071887 = phi i32 [ %i.ajg, %bb.ep ], [ %.51512, %bb.ez ] ; 4 uses
  %i.ajk = and i32 %.015061888, %i.aji
  %.not1669 = icmp eq i32 %i.ajk, 0
  br i1 %.not1669, label %bb.ez, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ajl = and i32 %.015061888, 286331153         ; 4 uses
  %i.ajm = and i32 %i.ajl, %i.aji
  %.not1670 = icmp eq i32 %i.ajm, 0
  br i1 %.not1670, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ajn = and i32 %.015071887, 1
  %i.ajo = xor i32 %i.ajn, 1
  %i.ajp = shl nuw i32 %i.ajo, %i.hn
  %i.ajq = load i32, ptr %.015051889, align 4, !tbaa !9
  %i.ajr = xor i32 %i.ajq, %i.ajp
  %i.ajs = or i32 %i.ajr, %i.hq
  store i32 %i.ajs, ptr %.015051889, align 4, !tbaa !9
  %i.ajt = lshr i32 %.015071887, 1
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.11508 = phi i32 [ %i.ajt, %bb.es ], [ %.015071887, %bb.er ] ; 3 uses
  %i.aju = shl nuw nsw i32 %i.ajl, 1
  %i.ajv = and i32 %i.aju, %i.aji
  %.not1671 = icmp eq i32 %i.ajv, 0
  br i1 %.not1671, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ajw = and i32 %.11508, 1
  %i.ajx = xor i32 %i.ajw, 1
  %i.ajy = shl nuw i32 %i.ajx, %i.hn
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %.015051889, i64 %i.ho ; 2 uses
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !9
  %i.akb = xor i32 %i.aka, %i.ajy
  %i.akc = or i32 %i.akb, %i.hq
  store i32 %i.akc, ptr %i.ajz, align 4, !tbaa !9
  %i.akd = lshr i32 %.11508, 1
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.21509 = phi i32 [ %i.akd, %bb.eu ], [ %.11508, %bb.et ] ; 3 uses
  %i.ake = shl nuw nsw i32 %i.ajl, 2
  %i.akf = and i32 %i.ake, %i.aji
  %.not1672 = icmp eq i32 %i.akf, 0
  br i1 %.not1672, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.akg = and i32 %.21509, 1
  %i.akh = xor i32 %i.akg, 1
  %i.aki = shl nuw i32 %i.akh, %i.hn
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %.015051889, i64 %i.hs ; 2 uses
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !9
  %i.akl = xor i32 %i.akk, %i.aki
  %i.akm = or i32 %i.akl, %i.hq
  store i32 %i.akm, ptr %i.akj, align 4, !tbaa !9
  %i.akn = lshr i32 %.21509, 1
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.31510 = phi i32 [ %i.akn, %bb.ew ], [ %.21509, %bb.ev ] ; 3 uses
  %i.ako = shl nuw i32 %i.ajl, 3
  %i.akp = and i32 %i.ako, %i.aji
  %.not1673 = icmp eq i32 %i.akp, 0
  br i1 %.not1673, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.akq = and i32 %.31510, 1
  %i.akr = xor i32 %i.akq, 1
  %i.aks = shl nuw i32 %i.akr, %i.hn
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %.015051889, i64 %i.hu ; 2 uses
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !9
  %i.akv = xor i32 %i.aku, %i.aks
  %i.akw = or i32 %i.akv, %i.hq
end_hunk_1
