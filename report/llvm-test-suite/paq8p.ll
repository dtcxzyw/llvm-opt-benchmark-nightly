Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/paq8p?download=true
inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z9jpegModelR5Mixer:bb.a
  br label %.thread727

bb.de:                                            ; preds = %bb.dc
  %i.iy = load i32, ptr @_ZZ9jpegModelR5MixerE4qnum, align 4, !tbaa !18 ; 2 uses
  %or.cond18 = icmp ult i32 %i.iy, 4
  br i1 %or.cond18, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr @_ZZ9jpegModelR5MixerE4jpeg, align 4, !tbaa !18
  br label %.thread727

bb.dg:                                            ; preds = %bb.de
  %i.iz = add i8 %i.iw, -1
  %i.ja = shl nuw nsw i32 %i.iy, 6
  %i.jb = add nsw i32 %i.iq, -1
  %i.jc = add nuw nsw i32 %i.jb, %i.ja
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE4qtab, i64 16), align 8, !tbaa !35
  %i.je = zext nneg i32 %i.jc to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.je
  store i8 %i.iz, ptr %i.jf, align 1, !tbaa !22
  %.pre972.pre = load i32, ptr @pos, align 4, !tbaa !18
  %.pre973.pre = load i32, ptr @buf, align 8, !tbaa !33
  %.pre974.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %.pre995 = add nsw i32 %.pre973.pre, -1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.db
  %.pre993.pre-phi = phi i32 [ %.pre995, %bb.dg ], [ %.pre-phi988, %bb.db ]
  %.pre974 = phi ptr [ %.pre974.pre, %bb.dg ], [ %.pre9691081, %bb.db ]
  %.pre972 = phi i32 [ %.pre972.pre, %bb.dg ], [ %i.hp, %bb.db ]
  %i.jg = add nuw nsw i32 %i.in, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cz, %bb.cx, %bb.dh
  %.sink = phi i32 [ %i.jg, %bb.dh ], [ 0, %bb.cx ], [ -1, %bb.cz ]
  %.pre-phi994.ph = phi i32 [ %.pre993.pre-phi, %bb.dh ], [ %.pre-phi988, %bb.cx ], [ %.pre-phi988, %bb.cz ]
  %.ph = phi ptr [ %.pre974, %bb.dh ], [ %.pre9691081, %bb.cx ], [ %.pre9691081, %bb.cz ]
  %.ph1109 = phi i32 [ %.pre972, %bb.dh ], [ %i.hp, %bb.cx ], [ %i.hp, %bb.cz ]
  store i32 %.sink, ptr @_ZZ9jpegModelR5MixerE9dqt_state, align 4, !tbaa !18
  br label %bb.di

bb.di:                                            ; preds = %.sink.split, %bb.cy
  %.pre-phi994 = phi i32 [ %.pre-phi988, %bb.cy ], [ %.pre-phi994.ph, %.sink.split ] ; 2 uses
  %i.jh = phi ptr [ %.pre9691081, %bb.cy ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ji = phi i32 [ %i.hp, %bb.cy ], [ %.ph1109, %.sink.split ] ; 2 uses
  %i.jj = add nsw i32 %i.ji, -2
  %i.jk = and i32 %.pre-phi994, %i.jj
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !22
  %i.jo = icmp eq i8 %i.jn, -1
  br i1 %i.jo, label %bb.dj, label %.thread693

bb.dj:                                            ; preds = %bb.di
  %i.jp = add nsw i32 %i.ji, -1
  %i.jq = and i32 %.pre-phi994, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.jh, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !22
  %i.ju = and i8 %i.jt, -8
  %i.jv = icmp eq i8 %i.ju, -48
  br i1 %i.jv, label %bb.dk, label %.thread693

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr @_ZZ9jpegModelR5MixerE6mcupos, align 4, !tbaa !18
  store i32 0, ptr @_ZZ9jpegModelR5MixerE8huffsize, align 4, !tbaa !18
  store i32 0, ptr @_ZZ9jpegModelR5MixerE8huffbits, align 4, !tbaa !18
  store i32 0, ptr @_ZZ9jpegModelR5MixerE8huffcode, align 4, !tbaa !18
  store i32 -1, ptr @_ZZ9jpegModelR5MixerE2rs, align 4, !tbaa !18
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE4pred, i64 16), align 8, !tbaa !60
  %i.jx = load i32, ptr @_ZZ9jpegModelR5MixerE4pred, align 8, !tbaa !53
  %i.jy = sext i32 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jw, i8 0, i64 %i.jz, i1 false)
  br label %.thread693

.thread693:                                       ; preds = %.thread692..thread693_crit_edge, %bb.di, %bb.dj, %bb.dk
  %i.ka = phi i32 [ %.pre975, %.thread692..thread693_crit_edge ], [ %i.gz, %bb.di ], [ %i.gz, %bb.dj ], [ %i.gz, %bb.dk ]
  %i.kb = load i32, ptr @pos, align 4, !tbaa !18
  %i.kc = icmp eq i32 %i.kb, %i.ka
  %i.kd = load i32, ptr @bpos, align 4
  %i.ke = icmp eq i32 %i.kd, 1
  %or.cond20 = select i1 %i.kc, i1 %i.ke, i1 false
  br i1 %or.cond20, label %bb.dl, label %thread-pre-split730

bb.dl:                                            ; preds = %.thread693
  %i.kf = load i32, ptr @_ZZ9jpegModelR5MixerE6htsize, align 4, !tbaa !18 ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.preheader806.preheader, label %bb.dm

.preheader806.preheader:                          ; preds = %bb.dl
  %wide.trip.count = zext nneg i32 %i.kf to i64
  br label %.preheader806

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr @_ZZ9jpegModelR5MixerE4jpeg, align 4, !tbaa !18
  %i.kh = load i32, ptr @_ZZ9jpegModelR5MixerE9next_jpeg, align 4, !tbaa !18
  br label %.thread727

bb.dn:                                            ; preds = %.critedge
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond906.not = icmp eq i64 %indvars.iv.next904, %wide.trip.count
  br i1 %exitcond906.not, label %bb.du, label %.preheader806, !llvm.loop !192

.preheader806:                                    ; preds = %.preheader806.preheader, %bb.dn
  %indvars.iv903 = phi i64 [ 0, %.preheader806.preheader ], [ %indvars.iv.next904, %bb.dn ] ; 2 uses
  %i.ki = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2ht, i64 16), align 8, !tbaa !60
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv903
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !18 ; 3 uses
  %i.kl = add nsw i32 %i.kk, 4
  %i.km = add i32 %i.kk, 2                        ; 2 uses
  %i.kn = load i32, ptr @buf, align 8, !tbaa !33
  %i.ko = add nsw i32 %i.kn, -1                   ; 2 uses
  %i.kp = and i32 %i.ko, %i.km
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.kr = sext i32 %i.kp to i64
  %i.ks = getelementptr inbounds i8, ptr %i.kq, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !22
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 8
  %i.kw = add nsw i32 %i.kk, 3
  %i.kx = and i32 %i.ko, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %i.kq, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !22
  %i.lb = zext i8 %i.la to i32
  %i.lc = add i32 %i.km, %i.kv
  %i.ld = add i32 %i.lc, %i.lb                    ; 4 uses
  br label %bb.do

bb.do:                                            ; preds = %.preheader805, %.preheader806
  %.0554 = phi i32 [ %i.kl, %.preheader806 ], [ %i.vm, %.preheader805 ] ; 21 uses
  %.0553 = phi i32 [ 0, %.preheader806 ], [ %i.lj, %.preheader805 ] ; 2 uses
  %i.le = icmp slt i32 %.0554, %i.ld
  %i.lf = load i32, ptr @pos, align 4
  %i.lg = icmp slt i32 %i.ld, %i.lf
  %or.cond678 = select i1 %i.le, i1 %i.lg, i1 false
  %i.lh = add nsw i32 %.0554, 2100
  %i.li = icmp slt i32 %i.ld, %i.lh
  %or.cond680 = select i1 %or.cond678, i1 %i.li, i1 false
  br i1 %or.cond680, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.lj = add nuw nsw i32 %.0553, 1
  %exitcond902.not = icmp eq i32 %.0553, 9
  br i1 %exitcond902.not, label %.critedge, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lk = load i32, ptr @buf, align 8, !tbaa !33
  %i.ll = add nsw i32 %i.lk, -1
  %i.lm = and i32 %i.ll, %.0554
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.lo = sext i32 %i.lm to i64
  %i.lp = getelementptr inbounds i8, ptr %i.ln, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !22  ; 3 uses
  %i.lr = and i8 %i.lq, 15                        ; 2 uses
  %i.ls = icmp ugt i8 %i.lq, 31
  %i.lt = icmp samesign ugt i8 %i.lr, 3
  %or.cond22 = select i1 %i.ls, i1 true, i1 %i.lt
  br i1 %or.cond22, label %.critedge, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lu = zext nneg i8 %i.lr to i32               ; 2 uses
  %i.lv = lshr i8 %i.lq, 4
  %i.lw = zext nneg i8 %i.lv to i32               ; 2 uses
  %i.lx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE3huf, i64 16), align 8, !tbaa !100
  %i.ly = add nsw i32 %.0554, 17                  ; 3 uses
  %i.lz = shl nuw nsw i32 %i.lw, 10
  %i.ma = shl nuw nsw i32 %i.lu, 8
  %i.mb = or disjoint i32 %i.lz, %i.ma            ; 3 uses
  %i.mc = zext nneg i32 %i.mb to i64              ; 2 uses
  br label %bb.ds

.preheader805:                                    ; preds = %bb.ds
  %i.md = shl nuw nsw i32 %i.lw, 6
  %i.me = shl nuw nsw i32 %i.lu, 4
  %i.mf = or disjoint i32 %i.md, %i.me
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.mg ; 48 uses
  %i.mi = add nsw i32 %.0554, 1
  %i.mj = load i32, ptr @buf, align 8, !tbaa !33
  %i.mk = add nsw i32 %i.mj, -1                   ; 16 uses
  %i.ml = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 16 uses
  store i32 0, ptr %i.mh, align 4, !tbaa !208
  %i.mm = and i32 %i.mk, %i.mi
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 %i.mn ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !22
  %i.mq = zext i8 %i.mp to i32                    ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !209
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %i.mb, ptr %i.ms, align 4, !tbaa !210
  %i.mt = load i8, ptr %i.mo, align 1, !tbaa !22
  %i.mu = zext i8 %i.mt to i32                    ; 2 uses
  %i.mv = add nsw i32 %i.ly, %i.mu
  %i.mw = or disjoint i32 %i.mb, %i.mu            ; 2 uses
  %i.mx = shl nuw nsw i32 %i.mq, 1                ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !208
  %i.mz = add i32 %.0554, 2
  %i.na = and i32 %i.mk, %i.mz
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr %i.ml, i64 %i.nb ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !22
  %i.ne = zext i8 %i.nd to i32
  %i.nf = add nuw nsw i32 %i.mx, %i.ne            ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !209
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mh, i64 20
  store i32 %i.mw, ptr %i.nh, align 4, !tbaa !210
  %i.ni = load i8, ptr %i.nc, align 1, !tbaa !22
  %i.nj = zext i8 %i.ni to i32                    ; 2 uses
  %i.nk = add nsw i32 %i.mv, %i.nj
  %i.nl = add nuw nsw i32 %i.mw, %i.nj            ; 2 uses
  %i.nm = shl nuw nsw i32 %i.nf, 1                ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !208
  %i.no = add i32 %.0554, 3
  %i.np = and i32 %i.mk, %i.no
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds i8, ptr %i.ml, i64 %i.nq ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !22
  %i.nt = zext i8 %i.ns to i32
  %i.nu = add nuw nsw i32 %i.nm, %i.nt            ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mh, i64 28
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !209
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  store i32 %i.nl, ptr %i.nw, align 4, !tbaa !210
  %i.nx = load i8, ptr %i.nr, align 1, !tbaa !22
  %i.ny = zext i8 %i.nx to i32                    ; 2 uses
  %i.nz = add nsw i32 %i.nk, %i.ny
  %i.oa = add nuw nsw i32 %i.nl, %i.ny            ; 2 uses
  %i.ob = shl nuw nsw i32 %i.nu, 1                ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mh, i64 36
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !208
  %i.od = add i32 %.0554, 4
  %i.oe = and i32 %i.mk, %i.od
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds i8, ptr %i.ml, i64 %i.of ; 2 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !22
  %i.oi = zext i8 %i.oh to i32
  %i.oj = add nuw nsw i32 %i.ob, %i.oi            ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !209
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mh, i64 44
  store i32 %i.oa, ptr %i.ol, align 4, !tbaa !210
  %i.om = load i8, ptr %i.og, align 1, !tbaa !22
  %i.on = zext i8 %i.om to i32                    ; 2 uses
  %i.oo = add nsw i32 %i.nz, %i.on
  %i.op = add nuw nsw i32 %i.oa, %i.on            ; 2 uses
  %i.oq = shl nuw nsw i32 %i.oj, 1                ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !208
  %i.os = add i32 %.0554, 5
  %i.ot = and i32 %i.mk, %i.os
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds i8, ptr %i.ml, i64 %i.ou ; 2 uses
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !22
  %i.ox = zext i8 %i.ow to i32
  %i.oy = add nuw nsw i32 %i.oq, %i.ox            ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mh, i64 52
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !209
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  store i32 %i.op, ptr %i.pa, align 4, !tbaa !210
  %i.pb = load i8, ptr %i.ov, align 1, !tbaa !22
  %i.pc = zext i8 %i.pb to i32                    ; 2 uses
  %i.pd = add nsw i32 %i.oo, %i.pc
  %i.pe = add nuw nsw i32 %i.op, %i.pc            ; 2 uses
  %i.pf = shl nuw nsw i32 %i.oy, 1                ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.mh, i64 60
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !208
  %i.ph = add i32 %.0554, 6
  %i.pi = and i32 %i.mk, %i.ph
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds i8, ptr %i.ml, i64 %i.pj ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !22
  %i.pm = zext i8 %i.pl to i32
  %i.pn = add nuw nsw i32 %i.pf, %i.pm            ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  store i32 %i.pn, ptr %i.po, align 4, !tbaa !209
  %i.pp = getelementptr inbounds nuw i8, ptr %i.mh, i64 68
  store i32 %i.pe, ptr %i.pp, align 4, !tbaa !210
  %i.pq = load i8, ptr %i.pk, align 1, !tbaa !22
  %i.pr = zext i8 %i.pq to i32                    ; 2 uses
  %i.ps = add nsw i32 %i.pd, %i.pr
  %i.pt = add nuw nsw i32 %i.pe, %i.pr            ; 2 uses
  %i.pu = shl nuw nsw i32 %i.pn, 1                ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mh, i64 72
  store i32 %i.pu, ptr %i.pv, align 4, !tbaa !208
  %i.pw = add i32 %.0554, 7
  %i.px = and i32 %i.mk, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds i8, ptr %i.ml, i64 %i.py ; 2 uses
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !22
  %i.qb = zext i8 %i.qa to i32
  %i.qc = add nuw nsw i32 %i.pu, %i.qb            ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.mh, i64 76
  store i32 %i.qc, ptr %i.qd, align 4, !tbaa !209
  %i.qe = getelementptr inbounds nuw i8, ptr %i.mh, i64 80
  store i32 %i.pt, ptr %i.qe, align 4, !tbaa !210
  %i.qf = load i8, ptr %i.pz, align 1, !tbaa !22
  %i.qg = zext i8 %i.qf to i32                    ; 2 uses
  %i.qh = add nsw i32 %i.ps, %i.qg
  %i.qi = add nuw nsw i32 %i.pt, %i.qg            ; 2 uses
  %i.qj = shl nuw nsw i32 %i.qc, 1                ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.mh, i64 84
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !208
  %i.ql = add i32 %.0554, 8
  %i.qm = and i32 %i.mk, %i.ql
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds i8, ptr %i.ml, i64 %i.qn ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !22
  %i.qq = zext i8 %i.qp to i32
  %i.qr = add nuw nsw i32 %i.qj, %i.qq            ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.mh, i64 88
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !209
  %i.qt = getelementptr inbounds nuw i8, ptr %i.mh, i64 92
  store i32 %i.qi, ptr %i.qt, align 4, !tbaa !210
  %i.qu = load i8, ptr %i.qo, align 1, !tbaa !22
  %i.qv = zext i8 %i.qu to i32                    ; 2 uses
  %i.qw = add nsw i32 %i.qh, %i.qv
  %i.qx = add nuw nsw i32 %i.qi, %i.qv            ; 2 uses
  %i.qy = shl nuw nsw i32 %i.qr, 1                ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.mh, i64 96
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !208
  %i.ra = add i32 %.0554, 9
  %i.rb = and i32 %i.mk, %i.ra
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %i.ml, i64 %i.rc ; 2 uses
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !22
  %i.rf = zext i8 %i.re to i32
  %i.rg = add nuw nsw i32 %i.qy, %i.rf            ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.mh, i64 100
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !209
  %i.ri = getelementptr inbounds nuw i8, ptr %i.mh, i64 104
  store i32 %i.qx, ptr %i.ri, align 4, !tbaa !210
  %i.rj = load i8, ptr %i.rd, align 1, !tbaa !22
  %i.rk = zext i8 %i.rj to i32                    ; 2 uses
  %i.rl = add nsw i32 %i.qw, %i.rk
  %i.rm = add nuw nsw i32 %i.qx, %i.rk            ; 2 uses
  %i.rn = shl nuw nsw i32 %i.rg, 1                ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.mh, i64 108
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !208
  %i.rp = add i32 %.0554, 10
  %i.rq = and i32 %i.mk, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds i8, ptr %i.ml, i64 %i.rr ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !22
  %i.ru = zext i8 %i.rt to i32
  %i.rv = add nuw nsw i32 %i.rn, %i.ru            ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.mh, i64 112
  store i32 %i.rv, ptr %i.rw, align 4, !tbaa !209
  %i.rx = getelementptr inbounds nuw i8, ptr %i.mh, i64 116
  store i32 %i.rm, ptr %i.rx, align 4, !tbaa !210
  %i.ry = load i8, ptr %i.rs, align 1, !tbaa !22
  %i.rz = zext i8 %i.ry to i32                    ; 2 uses
  %i.sa = add nsw i32 %i.rl, %i.rz
  %i.sb = add nuw nsw i32 %i.rm, %i.rz            ; 2 uses
  %i.sc = shl nuw nsw i32 %i.rv, 1                ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.mh, i64 120
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !208
  %i.se = add i32 %.0554, 11
  %i.sf = and i32 %i.mk, %i.se
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds i8, ptr %i.ml, i64 %i.sg ; 2 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !22
  %i.sj = zext i8 %i.si to i32
  %i.sk = add nuw nsw i32 %i.sc, %i.sj            ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.mh, i64 124
  store i32 %i.sk, ptr %i.sl, align 4, !tbaa !209
  %i.sm = getelementptr inbounds nuw i8, ptr %i.mh, i64 128
  store i32 %i.sb, ptr %i.sm, align 4, !tbaa !210
  %i.sn = load i8, ptr %i.sh, align 1, !tbaa !22
  %i.so = zext i8 %i.sn to i32                    ; 2 uses
  %i.sp = add nsw i32 %i.sa, %i.so
  %i.sq = add nuw nsw i32 %i.sb, %i.so            ; 2 uses
  %i.sr = shl nuw nsw i32 %i.sk, 1                ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.mh, i64 132
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !208
  %i.st = add i32 %.0554, 12
  %i.su = and i32 %i.mk, %i.st
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds i8, ptr %i.ml, i64 %i.sv ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !22
  %i.sy = zext i8 %i.sx to i32
  %i.sz = add nuw nsw i32 %i.sr, %i.sy            ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.mh, i64 136
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !209
  %i.tb = getelementptr inbounds nuw i8, ptr %i.mh, i64 140
  store i32 %i.sq, ptr %i.tb, align 4, !tbaa !210
  %i.tc = load i8, ptr %i.sw, align 1, !tbaa !22
  %i.td = zext i8 %i.tc to i32                    ; 2 uses
  %i.te = add nsw i32 %i.sp, %i.td
  %i.tf = add nuw nsw i32 %i.sq, %i.td            ; 2 uses
  %i.tg = shl nuw nsw i32 %i.sz, 1                ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.mh, i64 144
  store i32 %i.tg, ptr %i.th, align 4, !tbaa !208
  %i.ti = add i32 %.0554, 13
  %i.tj = and i32 %i.mk, %i.ti
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds i8, ptr %i.ml, i64 %i.tk ; 2 uses
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !22
  %i.tn = zext i8 %i.tm to i32
  %i.to = add nuw nsw i32 %i.tg, %i.tn            ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.mh, i64 148
  store i32 %i.to, ptr %i.tp, align 4, !tbaa !209
  %i.tq = getelementptr inbounds nuw i8, ptr %i.mh, i64 152
  store i32 %i.tf, ptr %i.tq, align 4, !tbaa !210
  %i.tr = load i8, ptr %i.tl, align 1, !tbaa !22
  %i.ts = zext i8 %i.tr to i32                    ; 2 uses
  %i.tt = add nsw i32 %i.te, %i.ts
  %i.tu = add nuw nsw i32 %i.tf, %i.ts            ; 2 uses
  %i.tv = shl nuw nsw i32 %i.to, 1                ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.mh, i64 156
  store i32 %i.tv, ptr %i.tw, align 4, !tbaa !208
  %i.tx = add i32 %.0554, 14
  %i.ty = and i32 %i.mk, %i.tx
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds i8, ptr %i.ml, i64 %i.tz ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !22
  %i.uc = zext i8 %i.ub to i32
  %i.ud = add nuw nsw i32 %i.tv, %i.uc            ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.mh, i64 160
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !209
  %i.uf = getelementptr inbounds nuw i8, ptr %i.mh, i64 164
  store i32 %i.tu, ptr %i.uf, align 4, !tbaa !210
  %i.ug = load i8, ptr %i.ua, align 1, !tbaa !22
  %i.uh = zext i8 %i.ug to i32                    ; 2 uses
  %i.ui = add nsw i32 %i.tt, %i.uh
  %i.uj = add nuw nsw i32 %i.tu, %i.uh            ; 2 uses
  %i.uk = shl nuw nsw i32 %i.ud, 1                ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.mh, i64 168
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !208
  %i.um = add i32 %.0554, 15
  %i.un = and i32 %i.mk, %i.um
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds i8, ptr %i.ml, i64 %i.uo ; 2 uses
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !22
  %i.ur = zext i8 %i.uq to i32
  %i.us = add nuw nsw i32 %i.uk, %i.ur            ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.mh, i64 172
  store i32 %i.us, ptr %i.ut, align 4, !tbaa !209
  %i.uu = getelementptr inbounds nuw i8, ptr %i.mh, i64 176
  store i32 %i.uj, ptr %i.uu, align 4, !tbaa !210
  %i.uv = load i8, ptr %i.up, align 1, !tbaa !22
  %i.uw = zext i8 %i.uv to i32                    ; 2 uses
  %i.ux = add nsw i32 %i.ui, %i.uw
  %i.uy = add nuw nsw i32 %i.uj, %i.uw            ; 2 uses
  %i.uz = shl nuw nsw i32 %i.us, 1                ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.mh, i64 180
  store i32 %i.uz, ptr %i.va, align 4, !tbaa !208
  %i.vb = add i32 %.0554, 16
  %i.vc = and i32 %i.mk, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds i8, ptr %i.ml, i64 %i.vd ; 2 uses
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !22
  %i.vg = zext i8 %i.vf to i32
  %i.vh = add nuw nsw i32 %i.uz, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.mh, i64 184
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !209
  %i.vj = getelementptr inbounds nuw i8, ptr %i.mh, i64 188
  store i32 %i.uy, ptr %i.vj, align 4, !tbaa !210
  %i.vk = load i8, ptr %i.ve, align 1, !tbaa !22
  %i.vl = zext i8 %i.vk to i32                    ; 2 uses
  %i.vm = add nsw i32 %i.ux, %i.vl
  %i.vn = add nuw nsw i32 %i.uy, %i.vl
  %i.vo = icmp samesign ult i32 %i.vn, 2048
  br i1 %i.vo, label %bb.do, label %.thread698

bb.ds:                                            ; preds = %bb.ds, %bb.dr
  %indvars.iv = phi i64 [ 0, %bb.dr ], [ %indvars.iv.next.1, %bb.ds ] ; 4 uses
  %i.vp = load i32, ptr @buf, align 8, !tbaa !33
  %i.vq = add nsw i32 %i.vp, -1
  %i.vr = trunc i64 %indvars.iv to i32
  %i.vs = add i32 %i.ly, %i.vr
  %i.vt = and i32 %i.vq, %i.vs
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.vv = sext i32 %i.vt to i64
  %i.vw = getelementptr inbounds i8, ptr %i.vu, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !22
  %i.vy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE4hbuf, i64 16), align 8, !tbaa !35
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %indvars.iv
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.mc
  store i8 %i.vx, ptr %i.wa, align 1, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.wb = load i32, ptr @buf, align 8, !tbaa !33
  %i.wc = add nsw i32 %i.wb, -1
  %i.wd = trunc i64 %indvars.iv.next to i32
  %i.we = add i32 %i.ly, %i.wd
  %i.wf = and i32 %i.wc, %i.we
  %i.wg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.wh = sext i32 %i.wf to i64
  %i.wi = getelementptr inbounds i8, ptr %i.wg, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !22
  %i.wk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE4hbuf, i64 16), align 8, !tbaa !35
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %indvars.iv.next
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.mc
  store i8 %i.wj, ptr %i.wm, align 1, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.preheader805, label %bb.ds, !llvm.loop !193

.thread698:                                       ; preds = %.preheader805
  store i32 0, ptr @_ZZ9jpegModelR5MixerE4jpeg, align 4, !tbaa !18
  %i.wn = load i32, ptr @_ZZ9jpegModelR5MixerE9next_jpeg, align 4, !tbaa !18
  br label %.thread727

.critedge:                                        ; preds = %bb.dq, %bb.do, %bb.dp
  %i.wo = icmp eq i32 %.0554, %i.ld
  br i1 %i.wo, label %bb.dn, label %bb.dt

bb.dt:                                            ; preds = %.critedge
  store i32 0, ptr @_ZZ9jpegModelR5MixerE4jpeg, align 4, !tbaa !18
  %i.wp = load i32, ptr @_ZZ9jpegModelR5MixerE9next_jpeg, align 4, !tbaa !18
  br label %.thread727

bb.du:                                            ; preds = %bb.dn
  store i32 0, ptr @_ZZ9jpegModelR5MixerE8huffsize, align 4, !tbaa !18
  store i32 0, ptr @_ZZ9jpegModelR5MixerE8huffbits, align 4, !tbaa !18
  store i32 0, ptr @_ZZ9jpegModelR5MixerE8huffcode, align 4, !tbaa !18
  store i32 -1, ptr @_ZZ9jpegModelR5MixerE2rs, align 4, !tbaa !18
  %i.wq = load i32, ptr @_ZZ9jpegModelR5MixerE3sof, align 4, !tbaa !18 ; 18 uses
  %i.wr = icmp eq i32 %i.wq, 0
  %i.ws = load i32, ptr @_ZZ9jpegModelR5MixerE3sos, align 4 ; 3 uses
  %i.wt = icmp ne i32 %i.ws, 0
  %or.cond32 = select i1 %i.wr, i1 %i.wt, i1 false
  br i1 %or.cond32, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.wu = load i32, ptr @_ZZ9jpegModelR5MixerE9next_jpeg, align 4, !tbaa !18
  br label %.thread727

bb.dw:                                            ; preds = %bb.du
  %i.wv = add nsw i32 %i.ws, 4
  %i.ww = load i32, ptr @buf, align 8, !tbaa !33
  %i.wx = add nsw i32 %i.ww, -1                   ; 2 uses
  %i.wy = and i32 %i.wx, %i.wv
  %i.wz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 26 uses
  %i.xa = sext i32 %i.wy to i64
  %i.xb = getelementptr inbounds i8, ptr %i.wz, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !22  ; 3 uses
  %i.xd = zext i8 %i.xc to i32
  %i.xe = add nsw i32 %i.wq, 9
  %i.xf = and i32 %i.wx, %i.xe
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds i8, ptr %i.wz, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !22  ; 5 uses
  %i.xj = icmp ult i8 %i.xc, 5
  %i.xk = icmp ult i8 %i.xi, 5
  %or.cond34 = select i1 %i.xj, i1 %i.xk, i1 false
  br i1 %or.cond34, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr @_ZZ9jpegModelR5MixerE4jpeg, align 4, !tbaa !18
  %i.xl = load i32, ptr @_ZZ9jpegModelR5MixerE9next_jpeg, align 4, !tbaa !18
  br label %.thread727

bb.dy:                                            ; preds = %bb.dw
  store i32 0, ptr @_ZZ9jpegModelR5MixerE7mcusize, align 4, !tbaa !18
  %.not879 = icmp eq i8 %i.xc, 0
  %.not625832.not = icmp eq i8 %i.xi, 0
  %or.cond1110 = select i1 %.not879, i1 true, i1 %.not625832.not
  br i1 %or.cond1110, label %._crit_edge.thread, label %.preheader804.us.preheader

.preheader804.us.preheader:                       ; preds = %bb.dy
  %i.xm = add nsw i32 %i.wq, 10
  %i.xn = add nsw i32 %i.wq, 11
  %i.xo = add nsw i32 %i.wq, 12
  %exitcond912.not = icmp eq i8 %i.xi, 1
  %i.xp = add nsw i32 %i.wq, 13
  %i.xq = add nsw i32 %i.wq, 14
  %i.xr = add nsw i32 %i.wq, 15
  %exitcond912.not.1 = icmp eq i8 %i.xi, 2
  %i.xs = add nsw i32 %i.wq, 16
  %i.xt = add nsw i32 %i.wq, 17
  %i.xu = add nsw i32 %i.wq, 18
  %exitcond912.not.2 = icmp eq i8 %i.xi, 3
  %i.xv = add nsw i32 %i.wq, 19
  %i.xw = add nsw i32 %i.wq, 20
  %i.xx = add nsw i32 %i.wq, 21
  br label %.preheader804.us

.preheader804.us:                                 ; preds = %.preheader804.us.preheader, %..thread718_crit_edge.us
  %.0524843.us = phi i32 [ %.3527.us.lcssa, %..thread718_crit_edge.us ], [ 0, %.preheader804.us.preheader ] ; 2 uses
  %.1558842.us = phi i32 [ %i.afu, %..thread718_crit_edge.us ], [ 0, %.preheader804.us.preheader ] ; 6 uses
  %_ZZ9jpegModelR5MixerE7mcusize.promoted828839841.us = phi i32 [ %_ZZ9jpegModelR5MixerE7mcusize.promoted828837.us.lcssa, %..thread718_crit_edge.us ], [ 0, %.preheader804.us.preheader ] ; 4 uses
  %i.xy = shl nuw nsw i32 %.1558842.us, 1
  %i.xz = add nsw i32 %i.xy, %i.ws                ; 2 uses
  %i.ya = add nsw i32 %i.xz, 5                    ; 4 uses
  %i.yb = add nsw i32 %i.xz, 6                    ; 4 uses
  %i.yc = load i32, ptr @buf, align 8, !tbaa !33
  %i.yd = add nsw i32 %i.yc, -1                   ; 3 uses
  %i.ye = and i32 %i.yd, %i.ya
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds i8, ptr %i.wz, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !22
  %i.yi = and i32 %i.yd, %i.xm
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds i8, ptr %i.wz, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !22
  %i.ym = icmp eq i8 %i.yh, %i.yl
  br i1 %i.ym, label %bb.dz, label %.loopexit803.us

bb.dz:                                            ; preds = %.preheader804.us
  %i.yn = and i32 %i.yd, %i.xn
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds i8, ptr %i.wz, i64 %i.yo
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !22
  %i.yr = zext i8 %i.yq to i32                    ; 2 uses
  %i.ys = lshr i32 %i.yr, 4                       ; 2 uses
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ys, i32 %.0524843.us)
  %i.yt = and i32 %i.yr, 15
  %i.yu = mul nuw nsw i32 %i.yt, %i.ys            ; 3 uses
  %.not623.us = icmp ne i32 %i.yu, 0
  %i.yv = add nsw i32 %_ZZ9jpegModelR5MixerE7mcusize.promoted828839841.us, %i.yu
  %i.yw = icmp slt i32 %i.yv, 11
  %or.cond877 = select i1 %.not623.us, i1 %i.yw, i1 false
  br i1 %or.cond877, label %.preheader802.us, label %.thread724

bb.ea:                                            ; preds = %.preheader802.us, %bb.ed
  %indvars.iv907 = phi i64 [ %i.aft, %.preheader802.us ], [ %indvars.iv.next908, %bb.ed ] ; 6 uses
  %.0521827.us = phi i32 [ %i.yu, %.preheader802.us ], [ %i.zv, %bb.ed ]
  %exitcond911.not = icmp eq i64 %indvars.iv907, %wide.trip.count910
  br i1 %exitcond911.not, label %.split.us, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.yx = load i32, ptr @buf, align 8, !tbaa !33
  %i.yy = add nsw i32 %i.yx, -1
  %i.yz = and i32 %i.yy, %i.yb
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds i8, ptr %i.wz, i64 %i.za
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !22  ; 3 uses
  %i.zd = lshr i8 %i.zc, 4
  %i.ze = zext nneg i8 %i.zd to i32
  %i.zf = getelementptr inbounds [4 x i8], ptr @_ZZ9jpegModelR5MixerE6hufsel, i64 %indvars.iv907
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !18
  %i.zg = and i8 %i.zc, 15                        ; 2 uses
  %i.zh = zext nneg i8 %i.zg to i32
  %i.zi = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE6hufsel, i64 40), i64 %indvars.iv907
  store i32 %i.zh, ptr %i.zi, align 4, !tbaa !18
  %i.zj = icmp ult i8 %i.zc, 64
  %i.zk = icmp samesign ult i8 %i.zg, 4
  %or.cond768.us = select i1 %i.zj, i1 %i.zk, i1 false
  br i1 %or.cond768.us, label %bb.ec, label %.split.us

bb.ec:                                            ; preds = %bb.eb
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.afr, i64 %indvars.iv907
  store i32 %.1558842.us, ptr %i.zl, align 4, !tbaa !18
  %i.zm = load i32, ptr @buf, align 8, !tbaa !33
  %i.zn = add nsw i32 %i.zm, -1
  %i.zo = and i32 %i.zn, %i.xo
  %i.zp = sext i32 %i.zo to i64
end_hunk_0
