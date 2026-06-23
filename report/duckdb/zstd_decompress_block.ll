inline.NumInlined: 579
inline.NumDeleted: 38
begin_hunk_0_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.sroa.6471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.12478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hu = ptrtoint ptr %i.j to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.12315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hy = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.hz = add i64 %i.aj, 16
  %i.ia = add i64 %i.aj, 16
  %i.ib = add i64 %i.aj, 16
  br label %bb.bf

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, %.lr.ph.i
  %i.ic = phi ptr [ %i.gz, %.lr.ph.i ], [ %i.oo, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 2 uses
  %i.id = phi i64 [ %i.af, %.lr.ph.i ], [ %i.la, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 2 uses
  %i.ie = phi i64 [ %i.gd, %.lr.ph.i ], [ %i.op, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ]
  %i.if = phi i64 [ %i.ep, %.lr.ph.i ], [ %i.oq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ]
  %i.ig = phi i64 [ %i.dh, %.lr.ph.i ], [ %i.or, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 3 uses
  %i.ih = phi i64 [ %i.ab, %.lr.ph.i ], [ %.sink854.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 6 uses
  %i.ii = phi i64 [ %i.y, %.lr.ph.i ], [ %.sink.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 6 uses
  %.0241.i691.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.pd, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ]
  %i.ij = phi i64 [ %i.dh, %.lr.ph.i ], [ %i.ov, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 2 uses
  %i.ik = phi i64 [ %i.gd, %.lr.ph.i ], [ %i.ou, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 2 uses
  %i.il = phi i64 [ %i.ep, %.lr.ph.i ], [ %i.ot, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 2 uses
  %.val.i.i222678690.i = phi i64 [ %.promoted677.i, %.lr.ph.i ], [ %.val.i.i222679.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 6 uses
  %.val4.i215687689.i = phi i32 [ %.promoted681.i, %.lr.ph.i ], [ %.val4.i215682.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 5 uses
  %i.im = phi ptr [ %.promoted688.i, %.lr.ph.i ], [ %i.os, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i ] ; 8 uses
  %.not640.i = icmp eq i64 %indvars.iv.i, %i.hf
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ij ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.ik ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.il ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !49, !noalias !94
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !49, !noalias !94 ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !49, !noalias !94 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.iz = load i8, ptr %i.iy, align 2, !tbaa !66, !noalias !94 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !66, !noalias !94 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.jd = load i8, ptr %i.jc, align 2, !tbaa !66, !noalias !94 ; 4 uses
  %i.je = zext i8 %i.iz to i32                    ; 2 uses
  %i.jf = zext i8 %i.jb to i32                    ; 2 uses
  %i.jg = add i8 %i.jb, %i.iz
  %i.jh = add i8 %i.jg, %i.jd
  %i.ji = load i16, ptr %i.in, align 4, !tbaa !65, !noalias !94
  %i.jj = load i16, ptr %i.io, align 4, !tbaa !65, !noalias !94
  %i.jk = load i16, ptr %i.ip, align 4, !tbaa !65, !noalias !94
  %i.jl = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !64, !noalias !94 ; 2 uses
  %i.jn = zext i8 %i.jm to i32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !64, !noalias !94 ; 2 uses
  %i.jq = zext i8 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ip, i64 3
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !64, !noalias !94 ; 2 uses
  %i.jt = zext i8 %i.js to i32
  %i.ju = icmp ugt i8 %i.jd, 1
  br i1 %i.ju, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jv = zext i8 %i.jd to i32                    ; 2 uses
  %i.jw = and i32 %.val4.i215687689.i, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl i64 %.val.i.i222678690.i, %i.jx
  %i.jz = sub nsw i32 0, %i.jv
  %i.ka = and i32 %i.jz, 63
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = lshr i64 %i.jy, %i.kb
  %i.kd = add i32 %.val4.i215687689.i, %i.jv      ; 2 uses
  store i32 %i.kd, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %i.ke = zext i32 %i.ix to i64
  %i.kf = add i64 %i.kc, %i.ke
  store i64 %i.ih, ptr %i.ag, align 8, !tbaa !53, !noalias !94
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.kg = icmp eq i32 %i.iu, 0                    ; 3 uses
  %i.kh = icmp eq i8 %i.jd, 0
  br i1 %i.kh, label %bb.ak, label %bb.al, !prof !97

bb.ak:                                            ; preds = %bb.aj
  %i.ki = select i1 %i.kg, i64 %i.ih, i64 %i.ii
  %i.kj = select i1 %i.kg, i64 %i.ii, i64 %i.ih
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.kk = zext i1 %i.kg to i32
  %i.kl = add i32 %i.ix, %i.kk
  %i.km = zext i32 %i.kl to i64
  %i.kn = and i32 %.val4.i215687689.i, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl i64 %.val.i.i222678690.i, %i.ko
  %i.kq = lshr i64 %i.kp, 63
  %i.kr = add i32 %.val4.i215687689.i, 1          ; 3 uses
  store i32 %i.kr, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %i.ks = add nuw nsw i64 %i.kq, %i.km            ; 3 uses
  %i.kt = icmp eq i64 %i.ks, 3
  br i1 %i.kt, label %.thread.i, label %bb.am

.thread.i:                                        ; preds = %bb.al
  %i.ku = add i64 %i.ii, -1                       ; 2 uses
  %.not.i6571.i = icmp eq i64 %i.ku, 0
  %i.kv = select i1 %.not.i6571.i, i64 -1, i64 %i.ku
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ks
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !53, !noalias !94 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.kx, 0
  %i.ky = select i1 %.not.i6.i, i64 -1, i64 %i.kx ; 2 uses
  %.not101.i.i = icmp eq i64 %i.ks, 1
  br i1 %.not101.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %i.kz = phi i64 [ %i.kv, %.thread.i ], [ %i.ky, %bb.am ]
  store i64 %i.ih, ptr %i.ag, align 8, !tbaa !53, !noalias !94
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai
  %.sink854.i = phi i64 [ %i.ii, %bb.ai ], [ %i.kj, %bb.ak ], [ %i.ii, %bb.an ], [ %i.ii, %bb.am ] ; 3 uses
  %.sink.i = phi i64 [ %i.kf, %bb.ai ], [ %i.ki, %bb.ak ], [ %i.kz, %bb.an ], [ %i.ky, %bb.am ] ; 6 uses
  %i.la = phi i64 [ %i.ih, %bb.ai ], [ %i.id, %bb.ak ], [ %i.ih, %bb.an ], [ %i.id, %bb.am ] ; 2 uses
  %.val4.i215686.i = phi i32 [ %i.kd, %bb.ai ], [ %.val4.i215687689.i, %bb.ak ], [ %i.kr, %bb.an ], [ %i.kr, %bb.am ] ; 3 uses
  store i64 %.sink854.i, ptr %i.ac, align 8, !tbaa !53, !noalias !94
  store i64 %.sink.i, ptr %i.w, align 8, !tbaa !53, !noalias !94
  %.not102.i.i = icmp eq i8 %i.jb, 0
  br i1 %.not102.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lb = and i32 %.val4.i215686.i, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl i64 %.val.i.i222678690.i, %i.lc
  %i.le = sub nsw i32 0, %i.jf
  %i.lf = and i32 %i.le, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = lshr i64 %i.ld, %i.lg
  %i.li = add i32 %.val4.i215686.i, %i.jf         ; 2 uses
  store i32 %i.li, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %i.lj = add i64 %i.lh, %i.is
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.val4.i215685.i = phi i32 [ %.val4.i215686.i, %bb.ao ], [ %i.li, %bb.ap ] ; 8 uses
  %.sroa.7.0.i = phi i64 [ %i.is, %bb.ao ], [ %i.lj, %bb.ap ] ; 2 uses
  %i.lk = icmp ugt i8 %i.jh, 30
  br i1 %i.lk, label %bb.ar, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i, !prof !60

bb.ar:                                            ; preds = %bb.aq
  %i.ll = icmp ugt i32 %.val4.i215685.i, 64
  br i1 %i.ll, label %bb.as, label %bb.at, !prof !60

bb.as:                                            ; preds = %bb.ar
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dj, align 8, !tbaa !86, !noalias !94
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i

bb.at:                                            ; preds = %bb.ar
  %.not.i55.i = icmp ult ptr %i.im, %i.an
  br i1 %.not.i55.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lm = lshr i32 %.val4.i215685.i, 3
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = sub nsw i64 0, %i.ln
  %i.lp = getelementptr inbounds i8, ptr %i.im, i64 %i.lo ; 4 uses
  store ptr %i.lp, ptr %i.dj, align 8, !tbaa !86, !noalias !94
  %i.lq = and i32 %.val4.i215685.i, 7             ; 2 uses
  store i32 %i.lq, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %.val.i.i218.i = load i64, ptr %i.lp, align 1, !tbaa !53, !noalias !94 ; 2 uses
  store i64 %.val.i.i218.i, ptr %13, align 8, !tbaa !87, !noalias !94
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i

bb.av:                                            ; preds = %bb.at
  %i.lr = icmp eq ptr %i.im, %3
  br i1 %i.lr, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ls = lshr i32 %.val4.i215685.i, 3            ; 2 uses
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = sub nsw i64 0, %i.lt
  %i.lv = getelementptr inbounds i8, ptr %i.im, i64 %i.lu
  %i.lw = icmp ult ptr %i.lv, %3
  %i.lx = ptrtoint ptr %i.im to i64
  %i.ly = sub i64 %i.lx, %i.he
  %i.lz = trunc i64 %i.ly to i32
  %.021.i57.i = select i1 %i.lw, i32 %i.lz, i32 %i.ls ; 2 uses
  %i.ma = zext i32 %.021.i57.i to i64
  %i.mb = sub nsw i64 0, %i.ma
  %i.mc = getelementptr inbounds i8, ptr %i.im, i64 %i.mb ; 4 uses
  store ptr %i.mc, ptr %i.dj, align 8, !tbaa !86, !noalias !94
  %i.md = shl i32 %.021.i57.i, 3
  %i.me = sub i32 %.val4.i215685.i, %i.md         ; 2 uses
  store i32 %i.me, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %.val.i219.i = load i64, ptr %i.mc, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i219.i, ptr %13, align 8, !tbaa !87, !noalias !94
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.aq
  %i.mf = phi ptr [ %i.ic, %bb.av ], [ %i.mc, %bb.aw ], [ %i.lp, %bb.au ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.as ], [ %i.ic, %bb.aq ] ; 2 uses
  %i.mg = phi ptr [ %i.im, %bb.av ], [ %i.mc, %bb.aw ], [ %i.lp, %bb.au ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.as ], [ %i.im, %bb.aq ] ; 8 uses
  %.val4.i215684.i = phi i32 [ %.val4.i215685.i, %bb.av ], [ %i.me, %bb.aw ], [ %i.lq, %bb.au ], [ %.val4.i215685.i, %bb.as ], [ %.val4.i215685.i, %bb.aq ] ; 3 uses
  %.val.i.i222680.i = phi i64 [ %.val.i.i222678690.i, %bb.av ], [ %.val.i219.i, %bb.aw ], [ %.val.i.i218.i, %bb.au ], [ %.val.i.i222678690.i, %bb.as ], [ %.val.i.i222678690.i, %bb.aq ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.iz, 0
  br i1 %.not103.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i
  %i.mh = and i32 %.val4.i215684.i, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl i64 %.val.i.i222680.i, %i.mi
  %i.mk = sub nsw i32 0, %i.je
  %i.ml = and i32 %i.mk, 63
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 %i.mj, %i.mm
  %i.mo = add i32 %.val4.i215684.i, %i.je         ; 2 uses
  store i32 %i.mo, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %i.mp = add i64 %i.mn, %i.iv
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i
  %.val4.i215683.i = phi i32 [ %.val4.i215684.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i ], [ %i.mo, %bb.ax ] ; 2 uses
  %.sroa.0278.0.i = phi i64 [ %i.iv, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61.i ], [ %i.mp, %bb.ax ] ; 2 uses
  br i1 %.not640.i, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mq = add i32 %.val4.i215683.i, %i.jn         ; 2 uses
  %i.mr = sub i32 0, %i.mq
  %i.ms = and i32 %i.mr, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = lshr i64 %.val.i.i222680.i, %i.mt
  %i.mv = zext nneg i8 %i.jm to i64
  %notmask.i.i73.i = shl nsw i64 -1, %i.mv
  %i.mw = xor i64 %notmask.i.i73.i, -1
  %i.mx = and i64 %i.mu, %i.mw
  %i.my = zext i16 %i.ji to i64
  %i.mz = add nuw i64 %i.mx, %i.my                ; 9 uses
  store i64 %i.mz, ptr %i.cv, align 8, !tbaa !89, !noalias !94
  %i.na = add i32 %i.mq, %i.jq                    ; 2 uses
  %i.nb = sub i32 0, %i.na
  %i.nc = and i32 %i.nb, 63
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = lshr i64 %.val.i.i222680.i, %i.nd
  %i.nf = zext nneg i8 %i.jp to i64
  %notmask.i.i72.i = shl nsw i64 -1, %i.nf
  %i.ng = xor i64 %notmask.i.i72.i, -1
  %i.nh = and i64 %i.ne, %i.ng
  %i.ni = zext i16 %i.jj to i64
  %i.nj = add nuw i64 %i.nh, %i.ni                ; 9 uses
  store i64 %i.nj, ptr %i.fr, align 8, !tbaa !89, !noalias !94
  %i.nk = add i32 %i.na, %i.jt                    ; 9 uses
  %i.nl = sub i32 0, %i.nk
  %i.nm = and i32 %i.nl, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = lshr i64 %.val.i.i222680.i, %i.nn
  %i.np = zext nneg i8 %i.js to i64
  %notmask.i.i71.i = shl nsw i64 -1, %i.np
  %i.nq = xor i64 %notmask.i.i71.i, -1
  %i.nr = and i64 %i.no, %i.nq
  store i32 %i.nk, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %i.ns = zext i16 %i.jk to i64
  %i.nt = add nuw i64 %i.nr, %i.ns                ; 9 uses
  store i64 %i.nt, ptr %i.ed, align 8, !tbaa !89, !noalias !94
  %i.nu = icmp ugt i32 %i.nk, 64
  br i1 %i.nu, label %bb.ba, label %bb.bb, !prof !60

bb.ba:                                            ; preds = %bb.az
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dj, align 8, !tbaa !86, !noalias !94
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.bb:                                            ; preds = %bb.az
  %.not.i62.i = icmp ult ptr %i.mg, %i.an
  br i1 %.not.i62.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nv = lshr i32 %i.nk, 3
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = sub nsw i64 0, %i.nw
  %i.ny = getelementptr inbounds i8, ptr %i.mg, i64 %i.nx ; 4 uses
  store ptr %i.ny, ptr %i.dj, align 8, !tbaa !86, !noalias !94
  %i.nz = and i32 %i.nk, 7                        ; 2 uses
  store i32 %i.nz, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %.val.i.i222.i = load i64, ptr %i.ny, align 1, !tbaa !53, !noalias !94 ; 2 uses
  store i64 %.val.i.i222.i, ptr %13, align 8, !tbaa !87, !noalias !94
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.oa = icmp eq ptr %i.mg, %3
  br i1 %i.oa, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ob = lshr i32 %i.nk, 3                       ; 2 uses
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr inbounds i8, ptr %i.mg, i64 %i.od
  %i.of = icmp ult ptr %i.oe, %3
  %i.og = ptrtoint ptr %i.mg to i64
  %i.oh = sub i64 %i.og, %i.he
  %i.oi = trunc i64 %i.oh to i32
  %.021.i64.i = select i1 %i.of, i32 %i.oi, i32 %i.ob ; 2 uses
  %i.oj = zext i32 %.021.i64.i to i64
  %i.ok = sub nsw i64 0, %i.oj
  %i.ol = getelementptr inbounds i8, ptr %i.mg, i64 %i.ok ; 4 uses
  store ptr %i.ol, ptr %i.dj, align 8, !tbaa !86, !noalias !94
  %i.om = shl i32 %.021.i64.i, 3
  %i.on = sub i32 %i.nk, %i.om                    ; 2 uses
  store i32 %i.on, ptr %i.cz, align 8, !tbaa !91, !noalias !94
  %.val.i223.i = load i64, ptr %i.ol, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i223.i, ptr %13, align 8, !tbaa !87, !noalias !94
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.oo = phi ptr [ %i.mf, %bb.bd ], [ %i.ol, %bb.be ], [ %i.ny, %bb.bc ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ba ], [ %i.mf, %bb.ay ] ; 2 uses
  %i.op = phi i64 [ %i.nj, %bb.bd ], [ %i.nj, %bb.be ], [ %i.nj, %bb.bc ], [ %i.nj, %bb.ba ], [ %i.ie, %bb.ay ] ; 2 uses
  %i.oq = phi i64 [ %i.nt, %bb.bd ], [ %i.nt, %bb.be ], [ %i.nt, %bb.bc ], [ %i.nt, %bb.ba ], [ %i.if, %bb.ay ] ; 2 uses
  %i.or = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.be ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.ba ], [ %i.ig, %bb.ay ] ; 2 uses
  %i.os = phi ptr [ %i.mg, %bb.bd ], [ %i.ol, %bb.be ], [ %i.ny, %bb.bc ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ba ], [ %i.mg, %bb.ay ] ; 2 uses
  %.val4.i215682.i = phi i32 [ %i.nk, %bb.bd ], [ %i.on, %bb.be ], [ %i.nz, %bb.bc ], [ %i.nk, %bb.ba ], [ %.val4.i215683.i, %bb.ay ] ; 2 uses
  %.val.i.i222679.i = phi i64 [ %.val.i.i222680.i, %bb.bd ], [ %.val.i223.i, %bb.be ], [ %.val.i.i222.i, %bb.bc ], [ %.val.i.i222680.i, %bb.ba ], [ %.val.i.i222680.i, %bb.ay ] ; 2 uses
  %i.ot = phi i64 [ %i.nt, %bb.bd ], [ %i.nt, %bb.be ], [ %i.nt, %bb.bc ], [ %i.nt, %bb.ba ], [ %i.il, %bb.ay ]
  %i.ou = phi i64 [ %i.nj, %bb.bd ], [ %i.nj, %bb.be ], [ %i.nj, %bb.bc ], [ %i.nj, %bb.ba ], [ %i.ik, %bb.ay ]
  %i.ov = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.be ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.ba ], [ %i.ij, %bb.ay ]
  %i.ow = add i64 %.sroa.0278.0.i, %.0241.i691.i  ; 3 uses
  %i.ox = icmp ugt i64 %.sink.i, %i.ow
  %i.oy = select i1 %i.ox, ptr %i.t, ptr %i.p
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 %i.ow
  %i.pa = sub i64 0, %.sink.i
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 %i.pa ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.pb, i32 0, i32 3, i32 1)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pc, i32 0, i32 3, i32 1)
  %i.pd = add i64 %i.ow, %.sroa.7.0.i             ; 2 uses
  %i.pe = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %indvars.iv.i ; 3 uses
  store i64 %.sroa.0278.0.i, ptr %i.pe, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx280.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx280.i, align 8, !tbaa !53
  %.sroa.10.0..sroa_idx282.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store i64 %.sink.i, ptr %.sroa.10.0..sroa_idx282.i, align 8, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader661.i, label %bb.ah, !llvm.loop !98

bb.bf:                                            ; preds = %bb.eu, %.lr.ph703.i
  %i.pf = phi ptr [ %i.hg, %.lr.ph703.i ], [ %i.vt, %bb.eu ] ; 8 uses
  %i.pg = phi i32 [ %i.hi, %.lr.ph703.i ], [ %i.vu, %bb.eu ] ; 5 uses
  %i.ph = phi i64 [ %i.hh, %.lr.ph703.i ], [ %i.vv, %bb.eu ] ; 6 uses
  %i.pi = phi i64 [ %i.hk, %.lr.ph703.i ], [ %i.sc, %bb.eu ] ; 2 uses
  %i.pj = phi i64 [ %i.hl, %.lr.ph703.i ], [ %.sink856.i, %bb.eu ] ; 6 uses
  %i.pk = phi i64 [ %i.hm, %.lr.ph703.i ], [ %.sink855.i, %bb.eu ] ; 6 uses
  %i.pl = phi i64 [ %i.hn, %.lr.ph703.i ], [ %i.vw, %bb.eu ] ; 2 uses
  %i.pm = phi i64 [ %i.ho, %.lr.ph703.i ], [ %i.vx, %bb.eu ] ; 2 uses
  %i.pn = phi i64 [ %i.hp, %.lr.ph703.i ], [ %i.vy, %bb.eu ] ; 2 uses
  %.0207.i699.i = phi ptr [ %1, %.lr.ph703.i ], [ %.6213.i.ph.i, %bb.eu ] ; 26 uses
  %.0226.i698.i = phi ptr [ %i.n, %.lr.ph703.i ], [ %.3229.i.ph.i, %bb.eu ] ; 5 uses
  %.1239.i697.i = phi i32 [ %.0238.i.lcssa.i, %.lr.ph703.i ], [ %i.amd, %bb.eu ] ; 5 uses
  %.1242.i696.i = phi i64 [ %.0241.i.lcssa.i, %.lr.ph703.i ], [ %.6247.i.ph.i, %bb.eu ] ; 2 uses
  %.0207.i699.i113 = ptrtoaddr ptr %.0207.i699.i to i64 ; 2 uses
  %.not636.i = icmp eq i32 %.1239.i697.i, %i.hr
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.pn ; 4 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.pl ; 4 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.pm ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !49, !noalias !99
  %i.pt = zext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !49, !noalias !99 ; 2 uses
  %i.pw = zext i32 %i.pv to i64                   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.py = load i32, ptr %i.px, align 4, !tbaa !49, !noalias !99 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %i.qa = load i8, ptr %i.pz, align 2, !tbaa !66, !noalias !99 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 2
  %i.qc = load i8, ptr %i.qb, align 2, !tbaa !66, !noalias !99 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  %i.qe = load i8, ptr %i.qd, align 2, !tbaa !66, !noalias !99 ; 4 uses
  %i.qf = zext i8 %i.qa to i32                    ; 2 uses
  %i.qg = zext i8 %i.qc to i32                    ; 2 uses
  %i.qh = add i8 %i.qc, %i.qa
  %i.qi = add i8 %i.qh, %i.qe
  %i.qj = load i16, ptr %i.po, align 4, !tbaa !65, !noalias !99
  %i.qk = load i16, ptr %i.pp, align 4, !tbaa !65, !noalias !99
  %i.ql = load i16, ptr %i.pq, align 4, !tbaa !65, !noalias !99
  %i.qm = getelementptr inbounds nuw i8, ptr %i.po, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !64, !noalias !99 ; 2 uses
  %i.qo = zext i8 %i.qn to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pp, i64 3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !64, !noalias !99 ; 2 uses
  %i.qr = zext i8 %i.qq to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pq, i64 3
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !64, !noalias !99 ; 2 uses
  %i.qu = zext i8 %i.qt to i32
  %i.qv = icmp ugt i8 %i.qe, 1
  br i1 %i.qv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qw = zext i8 %i.qe to i32                    ; 2 uses
  %i.qx = and i32 %i.pg, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = shl i64 %i.ph, %i.qy
  %i.ra = sub nsw i32 0, %i.qw
  %i.rb = and i32 %i.ra, 63
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = lshr i64 %i.qz, %i.rc
  %i.re = add i32 %i.pg, %i.qw                    ; 2 uses
  store i32 %i.re, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %i.rf = zext i32 %i.py to i64
  %i.rg = add i64 %i.rd, %i.rf
  store i64 %i.pj, ptr %i.ag, align 8, !tbaa !53, !noalias !99
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bf
  %i.rh = icmp eq i32 %i.pv, 0                    ; 3 uses
  %i.ri = icmp eq i8 %i.qe, 0
  br i1 %i.ri, label %bb.bi, label %bb.bj, !prof !97

bb.bi:                                            ; preds = %bb.bh
  %i.rj = select i1 %i.rh, i64 %i.pj, i64 %i.pk
  %i.rk = select i1 %i.rh, i64 %i.pk, i64 %i.pj
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.rl = zext i1 %i.rh to i32
  %i.rm = add i32 %i.py, %i.rl
  %i.rn = zext i32 %i.rm to i64
  %i.ro = and i32 %i.pg, 63
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = shl i64 %i.ph, %i.rp
  %i.rr = lshr i64 %i.rq, 63
  %i.rs = add i32 %i.pg, 1                        ; 3 uses
  store i32 %i.rs, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %i.rt = add nuw nsw i64 %i.rr, %i.rn            ; 3 uses
  %i.ru = icmp eq i64 %i.rt, 3
  br i1 %i.ru, label %.thread573.i, label %bb.bk

.thread573.i:                                     ; preds = %bb.bj
  %i.rv = add i64 %i.pk, -1                       ; 2 uses
  %.not.i8574.i = icmp eq i64 %i.rv, 0
  %i.rw = select i1 %.not.i8574.i, i64 -1, i64 %i.rv
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.rt
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !53, !noalias !99 ; 2 uses
  %.not.i8.i = icmp eq i64 %i.ry, 0
  %i.rz = select i1 %.not.i8.i, i64 -1, i64 %i.ry ; 2 uses
  %.not101.i9.i = icmp eq i64 %i.rt, 1
  br i1 %.not101.i9.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread573.i
  %i.sa = phi i64 [ %i.rw, %.thread573.i ], [ %i.rz, %bb.bk ]
  store i64 %i.pj, ptr %i.ag, align 8, !tbaa !53, !noalias !99
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg
  %i.sb = phi i32 [ %i.re, %bb.bg ], [ %i.pg, %bb.bi ], [ %i.rs, %bb.bl ], [ %i.rs, %bb.bk ] ; 3 uses
  %.sink856.i = phi i64 [ %i.pk, %bb.bg ], [ %i.rk, %bb.bi ], [ %i.pk, %bb.bl ], [ %i.pk, %bb.bk ] ; 3 uses
  %.sink855.i = phi i64 [ %i.rg, %bb.bg ], [ %i.rj, %bb.bi ], [ %i.sa, %bb.bl ], [ %i.rz, %bb.bk ] ; 9 uses
  %i.sc = phi i64 [ %i.pj, %bb.bg ], [ %i.pi, %bb.bi ], [ %i.pj, %bb.bl ], [ %i.pi, %bb.bk ] ; 2 uses
  store i64 %.sink856.i, ptr %i.ac, align 8, !tbaa !53, !noalias !99
  store i64 %.sink855.i, ptr %i.w, align 8, !tbaa !53, !noalias !99
  %.not102.i11.i = icmp eq i8 %i.qc, 0
  br i1 %.not102.i11.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sd = and i32 %i.sb, 63
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = shl i64 %i.ph, %i.se
  %i.sg = sub nsw i32 0, %i.qg
  %i.sh = and i32 %i.sg, 63
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = lshr i64 %i.sf, %i.si
  %i.sk = add i32 %i.sb, %i.qg                    ; 2 uses
  store i32 %i.sk, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %i.sl = add i64 %i.sj, %i.pt
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.sm = phi i32 [ %i.sb, %bb.bm ], [ %i.sk, %bb.bn ] ; 8 uses
  %.sroa.9.0.i = phi i64 [ %i.pt, %bb.bm ], [ %i.sl, %bb.bn ] ; 3 uses
  %i.sn = icmp ugt i8 %i.qi, 30
  br i1 %i.sn, label %bb.bp, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, !prof !60

bb.bp:                                            ; preds = %bb.bo
  %i.so = icmp ugt i32 %i.sm, 64
  br i1 %i.so, label %bb.bq, label %bb.br, !prof !60

bb.bq:                                            ; preds = %bb.bp
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dj, align 8, !tbaa !86, !noalias !99
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.br:                                            ; preds = %bb.bp
  %.not.i46.i = icmp ult ptr %i.pf, %i.an
  br i1 %.not.i46.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sp = lshr i32 %i.sm, 3
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = sub nsw i64 0, %i.sq
  %i.ss = getelementptr inbounds i8, ptr %i.pf, i64 %i.sr ; 3 uses
  store ptr %i.ss, ptr %i.dj, align 8, !tbaa !86, !noalias !99
  %i.st = and i32 %i.sm, 7                        ; 2 uses
  store i32 %i.st, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %.val.i.i230.i = load i64, ptr %i.ss, align 1, !tbaa !53, !noalias !99 ; 2 uses
  store i64 %.val.i.i230.i, ptr %13, align 8, !tbaa !87, !noalias !99
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.su = icmp eq ptr %i.pf, %3
  br i1 %i.su, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sv = lshr i32 %i.sm, 3                       ; 2 uses
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = sub nsw i64 0, %i.sw
  %i.sy = getelementptr inbounds i8, ptr %i.pf, i64 %i.sx
  %i.sz = icmp ult ptr %i.sy, %3
  %i.ta = ptrtoint ptr %i.pf to i64
  %i.tb = sub i64 %i.ta, %i.hy
  %i.tc = trunc i64 %i.tb to i32
  %.021.i.i = select i1 %i.sz, i32 %i.tc, i32 %i.sv ; 2 uses
  %i.td = zext i32 %.021.i.i to i64
  %i.te = sub nsw i64 0, %i.td
  %i.tf = getelementptr inbounds i8, ptr %i.pf, i64 %i.te ; 3 uses
  store ptr %i.tf, ptr %i.dj, align 8, !tbaa !86, !noalias !99
  %i.tg = shl i32 %.021.i.i, 3
  %i.th = sub i32 %i.sm, %i.tg                    ; 2 uses
  store i32 %i.th, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %.val.i231.i = load i64, ptr %i.tf, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i231.i, ptr %13, align 8, !tbaa !87, !noalias !99
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq, %bb.bo
  %i.ti = phi ptr [ %i.tf, %bb.bu ], [ %i.pf, %bb.bt ], [ %i.ss, %bb.bs ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bq ], [ %i.pf, %bb.bo ] ; 8 uses
  %i.tj = phi i32 [ %i.th, %bb.bu ], [ %i.sm, %bb.bt ], [ %i.st, %bb.bs ], [ %i.sm, %bb.bq ], [ %i.sm, %bb.bo ] ; 3 uses
  %i.tk = phi i64 [ %.val.i231.i, %bb.bu ], [ %i.ph, %bb.bt ], [ %.val.i.i230.i, %bb.bs ], [ %i.ph, %bb.bq ], [ %i.ph, %bb.bo ] ; 7 uses
  %.not103.i12.i = icmp eq i8 %i.qa, 0
  br i1 %.not103.i12.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.tl = and i32 %i.tj, 63
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = shl i64 %i.tk, %i.tm
  %i.to = sub nsw i32 0, %i.qf
  %i.tp = and i32 %i.to, 63
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = lshr i64 %i.tn, %i.tq
  %i.ts = add i32 %i.tj, %i.qf                    ; 2 uses
  store i32 %i.ts, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %i.tt = add i64 %i.tr, %i.pw
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.tu = phi i32 [ %i.tj, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.ts, %bb.bv ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.pw, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.tt, %bb.bv ] ; 4 uses
  br i1 %.not636.i, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tv = add i32 %i.tu, %i.qo                    ; 2 uses
  %i.tw = sub i32 0, %i.tv
  %i.tx = and i32 %i.tw, 63
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = lshr i64 %i.tk, %i.ty
  %i.ua = zext nneg i8 %i.qn to i64
  %notmask.i.i70.i = shl nsw i64 -1, %i.ua
  %i.ub = xor i64 %notmask.i.i70.i, -1
  %i.uc = and i64 %i.tz, %i.ub
  %i.ud = zext i16 %i.qj to i64
  %i.ue = add nuw i64 %i.uc, %i.ud                ; 5 uses
  store i64 %i.ue, ptr %i.cv, align 8, !tbaa !89, !noalias !99
  %i.uf = add i32 %i.tv, %i.qr                    ; 2 uses
  %i.ug = sub i32 0, %i.uf
  %i.uh = and i32 %i.ug, 63
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = lshr i64 %i.tk, %i.ui
  %i.uk = zext nneg i8 %i.qq to i64
  %notmask.i.i69.i = shl nsw i64 -1, %i.uk
  %i.ul = xor i64 %notmask.i.i69.i, -1
  %i.um = and i64 %i.uj, %i.ul
  %i.un = zext i16 %i.qk to i64
  %i.uo = add nuw i64 %i.um, %i.un                ; 5 uses
  store i64 %i.uo, ptr %i.fr, align 8, !tbaa !89, !noalias !99
  %i.up = add i32 %i.uf, %i.qu                    ; 9 uses
  %i.uq = sub i32 0, %i.up
  %i.ur = and i32 %i.uq, 63
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = lshr i64 %i.tk, %i.us
  %i.uu = zext nneg i8 %i.qt to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.uu
  %i.uv = xor i64 %notmask.i.i.i, -1
  %i.uw = and i64 %i.ut, %i.uv
  store i32 %i.up, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %i.ux = zext i16 %i.ql to i64
  %i.uy = add nuw i64 %i.uw, %i.ux                ; 5 uses
  store i64 %i.uy, ptr %i.ed, align 8, !tbaa !89, !noalias !99
  %i.uz = icmp ugt i32 %i.up, 64
  br i1 %i.uz, label %bb.by, label %bb.bz, !prof !60

bb.by:                                            ; preds = %bb.bx
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dj, align 8, !tbaa !86, !noalias !99
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i

bb.bz:                                            ; preds = %bb.bx
  %.not.i48.i = icmp ult ptr %i.ti, %i.an
  br i1 %.not.i48.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.va = lshr i32 %i.up, 3
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = sub nsw i64 0, %i.vb
  %i.vd = getelementptr inbounds i8, ptr %i.ti, i64 %i.vc ; 3 uses
  store ptr %i.vd, ptr %i.dj, align 8, !tbaa !86, !noalias !99
  %i.ve = and i32 %i.up, 7                        ; 2 uses
  store i32 %i.ve, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %.val.i.i234.i = load i64, ptr %i.vd, align 1, !tbaa !53, !noalias !99 ; 2 uses
  store i64 %.val.i.i234.i, ptr %13, align 8, !tbaa !87, !noalias !99
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i

bb.cb:                                            ; preds = %bb.bz
  %i.vf = icmp eq ptr %i.ti, %3
  br i1 %i.vf, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vg = lshr i32 %i.up, 3                       ; 2 uses
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = sub nsw i64 0, %i.vh
  %i.vj = getelementptr inbounds i8, ptr %i.ti, i64 %i.vi
  %i.vk = icmp ult ptr %i.vj, %3
  %i.vl = ptrtoint ptr %i.ti to i64
  %i.vm = sub i64 %i.vl, %i.hy
  %i.vn = trunc i64 %i.vm to i32
  %.021.i50.i = select i1 %i.vk, i32 %i.vn, i32 %i.vg ; 2 uses
  %i.vo = zext i32 %.021.i50.i to i64
  %i.vp = sub nsw i64 0, %i.vo
  %i.vq = getelementptr inbounds i8, ptr %i.ti, i64 %i.vp ; 3 uses
  store ptr %i.vq, ptr %i.dj, align 8, !tbaa !86, !noalias !99
  %i.vr = shl i32 %.021.i50.i, 3
  %i.vs = sub i32 %i.up, %i.vr                    ; 2 uses
  store i32 %i.vs, ptr %i.cz, align 8, !tbaa !91, !noalias !99
  %.val.i235.i = load i64, ptr %i.vq, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i235.i, ptr %13, align 8, !tbaa !87, !noalias !99
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bw
  %i.vt = phi ptr [ %i.ti, %bb.cb ], [ %i.vq, %bb.cc ], [ %i.vd, %bb.ca ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.by ], [ %i.ti, %bb.bw ] ; 2 uses
  %i.vu = phi i32 [ %i.up, %bb.cb ], [ %i.vs, %bb.cc ], [ %i.ve, %bb.ca ], [ %i.up, %bb.by ], [ %i.tu, %bb.bw ] ; 2 uses
  %i.vv = phi i64 [ %i.tk, %bb.cb ], [ %.val.i235.i, %bb.cc ], [ %.val.i.i234.i, %bb.ca ], [ %i.tk, %bb.by ], [ %i.tk, %bb.bw ]
  %i.vw = phi i64 [ %i.uo, %bb.cb ], [ %i.uo, %bb.cc ], [ %i.uo, %bb.ca ], [ %i.uo, %bb.by ], [ %i.pl, %bb.bw ]
  %i.vx = phi i64 [ %i.uy, %bb.cb ], [ %i.uy, %bb.cc ], [ %i.uy, %bb.ca ], [ %i.uy, %bb.by ], [ %i.pm, %bb.bw ]
  %i.vy = phi i64 [ %i.ue, %bb.cb ], [ %i.ue, %bb.cc ], [ %i.ue, %bb.ca ], [ %i.ue, %bb.by ], [ %i.pn, %bb.bw ]
  %i.vz = load i32, ptr %i.d, align 8, !tbaa !43
  %i.wa = icmp eq i32 %i.vz, 2
  br i1 %i.wa, label %bb.cd, label %bb.dz

bb.cd:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14.i
  %i.wb = load ptr, ptr %i.a, align 8, !tbaa !46  ; 14 uses
  %i.wc = and i32 %.1239.i697.i, 7
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.wd ; 8 uses
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !102 ; 8 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wf ; 4 uses
  %i.wh = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.wi = icmp ugt ptr %i.wg, %i.wh
  br i1 %i.wi, label %bb.ce, label %bb.df

bb.ce:                                            ; preds = %bb.cd
  %i.wj = ptrtoint ptr %i.wh to i64               ; 2 uses
  %i.wk = ptrtoint ptr %i.wb to i64               ; 4 uses
  %i.wl = sub i64 %i.wj, %i.wk                    ; 9 uses
  %.not273.i.i = icmp eq ptr %i.wh, %i.wb
  br i1 %.not273.i.i, label %thread-pre-split.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wm = ptrtoint ptr %.0207.i699.i to i64       ; 8 uses
  %i.wn = sub i64 %i.hu, %i.wm
  %i.wo = icmp ugt i64 %i.wl, %i.wn
  br i1 %i.wo, label %.thread620.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wp = sub i64 %i.wm, %i.wk                    ; 2 uses
  %i.wq = getelementptr inbounds i8, ptr %.0207.i699.i, i64 %i.wl ; 3 uses
  %i.wr = icmp slt i64 %i.wl, 8
  %i.ws = icmp sgt i64 %i.wp, -8
  %or.cond.i236.i = or i1 %i.ws, %i.wr
  br i1 %or.cond.i236.i, label %.preheader.i.i, label %bb.ch

.preheader.i.i:                                   ; preds = %bb.cg
  %i.wt = icmp sgt i64 %i.wl, 0
  br i1 %i.wt, label %iter.check, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.wu = add i64 %i.wm, %i.wj
  %i.wv = sub i64 %i.wu, %i.wk
  %i.ww = add i64 %i.wm, 1
  %umax44 = tail call i64 @llvm.umax.i64(i64 %i.wv, i64 %i.ww)
  %i.wx = sub i64 %umax44, %i.wm                  ; 7 uses
  %min.iters.check46 = icmp ult i64 %i.wx, 4
  %i.wy = sub i64 %i.wm, %i.wk
  %diff.check43 = icmp ult i64 %i.wy, 32
  %or.cond = or i1 %min.iters.check46, %diff.check43
  br i1 %or.cond, label %.lr.ph40.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.wx, 32
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph48

vector.ph48:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf49 = and i64 %i.wx, 28
  %n.vec50 = and i64 %i.wx, -32                   ; 5 uses
  %i.wz = getelementptr i8, ptr %.0207.i699.i, i64 %n.vec50
  %i.xa = getelementptr i8, ptr %i.wb, i64 %n.vec50
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next57, %vector.body51 ] ; 3 uses
  %next.gep53 = getelementptr i8, ptr %.0207.i699.i, i64 %index52 ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.wb, i64 %index52 ; 2 uses
  %i.xb = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load55 = load <16 x i8>, ptr %next.gep54, align 1, !tbaa !9
  %wide.load56 = load <16 x i8>, ptr %i.xb, align 1, !tbaa !9
  %i.xc = getelementptr i8, ptr %next.gep53, i64 16
  store <16 x i8> %wide.load55, ptr %next.gep53, align 1, !tbaa !9
  store <16 x i8> %wide.load56, ptr %i.xc, align 1, !tbaa !9
  %index.next57 = add nuw i64 %index52, 32        ; 2 uses
  %i.xd = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.xd, label %middle.block58, label %vector.body51, !llvm.loop !104

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.wx, %n.vec50
  br i1 %cmp.n59, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block58
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf49, 0
  br i1 %min.epilog.iters.check, label %.lr.ph40.i.i.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec50, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %i.wx, -4                    ; 4 uses
  %i.xe = getelementptr i8, ptr %.0207.i699.i, i64 %n.vec63
  %i.xf = getelementptr i8, ptr %i.wb, i64 %n.vec63
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %next.gep65 = getelementptr i8, ptr %.0207.i699.i, i64 %index64
  %next.gep66 = getelementptr i8, ptr %i.wb, i64 %index64
  %wide.load67 = load <4 x i8>, ptr %next.gep66, align 1, !tbaa !9
  store <4 x i8> %wide.load67, ptr %next.gep65, align 1, !tbaa !9
  %index.next68 = add nuw i64 %index64, 4         ; 2 uses
  %i.xg = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.xg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.wx, %n.vec63
  br i1 %cmp.n69, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph40.i.i.preheader

.lr.ph40.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039.i.i.ph = phi ptr [ %.0207.i699.i, %iter.check ], [ %i.wz, %vec.epilog.iter.check ], [ %i.xe, %vec.epilog.middle.block ]
  %.02938.i.i.ph = phi ptr [ %i.wb, %iter.check ], [ %i.xa, %vec.epilog.iter.check ], [ %i.xf, %vec.epilog.middle.block ]
  br label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %.lr.ph40.i.i.preheader, %.lr.ph40.i.i
  %.039.i.i = phi ptr [ %i.xj, %.lr.ph40.i.i ], [ %.039.i.i.ph, %.lr.ph40.i.i.preheader ] ; 2 uses
  %.02938.i.i = phi ptr [ %i.xh, %.lr.ph40.i.i ], [ %.02938.i.i.ph, %.lr.ph40.i.i.preheader ] ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.02938.i.i, i64 1
  %i.xi = load i8, ptr %.02938.i.i, align 1, !tbaa !9
  %i.xj = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 1 ; 2 uses
  store i8 %i.xi, ptr %.039.i.i, align 1, !tbaa !9
  %i.xk = icmp ult ptr %i.xj, %i.wq
  br i1 %i.xk, label %.lr.ph40.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, !llvm.loop !107

bb.ch:                                            ; preds = %bb.cg
  %i.xl = icmp samesign ugt i64 %i.wl, 31
  %i.xm = icmp samesign ult i64 %i.wp, -16
  %or.cond3.i.i = and i1 %i.xm, %i.xl
  br i1 %or.cond3.i.i, label %bb.ci, label %iter.check95

bb.ci:                                            ; preds = %bb.ch
  %i.xn = getelementptr inbounds i8, ptr %i.wq, i64 -32 ; 2 uses
  %i.xo = add nsw i64 %i.wl, -32                  ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 %i.xo
  %i.xq = load <2 x i64>, ptr %i.wb, align 1, !tbaa !9
  store <2 x i64> %i.xq, ptr %.0207.i699.i, align 1, !tbaa !9
  %i.xr = icmp samesign ult i64 %i.wl, 49
  br i1 %i.xr, label %.thread.i237.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xs = getelementptr inbounds nuw i8, ptr %.0207.i699.i, i64 16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %bb.cj
  %.130.i.i.i = phi ptr [ %i.xs, %bb.cj ], [ %i.xx, %bb.ck ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.wb, %bb.cj ], [ %i.xv, %bb.ck ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.xt = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %i.xt, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.xu = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.xv = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.xw = load <2 x i64>, ptr %i.xv, align 1, !tbaa !9
  store <2 x i64> %i.xw, ptr %i.xu, align 1, !tbaa !9
  %i.xx = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.xy = icmp ult ptr %i.xx, %i.xp
  br i1 %i.xy, label %bb.ck, label %.thread.i237.i, !llvm.loop !108

.thread.i237.i:                                   ; preds = %bb.ck, %bb.ci
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.xo
  %.pre.i.i = ptrtoint ptr %i.xn to i64
  br label %iter.check95

iter.check95:                                     ; preds = %.thread.i237.i, %bb.ch
  %.149.i.i = phi ptr [ %i.xn, %.thread.i237.i ], [ %.0207.i699.i, %bb.ch ] ; 7 uses
  %.13048.i.i = phi ptr [ %i.xz, %.thread.i237.i ], [ %i.wb, %bb.ch ] ; 6 uses
  %.142.pre-phi47.i.i = phi i64 [ %.pre.i.i, %.thread.i237.i ], [ %i.wm, %bb.ch ]
  %i.ya = add i64 %i.wl, %i.wm
  %i.yb = sub i64 %i.ya, %.142.pre-phi47.i.i      ; 8 uses
  %scevgep.i.i = getelementptr i8, ptr %.149.i.i, i64 %i.yb
  %min.iters.check77 = icmp ult i64 %i.yb, 4
  %.13048.i.i74 = ptrtoaddr ptr %.13048.i.i to i64
  %.149.i.i73 = ptrtoaddr ptr %.149.i.i to i64
  %i.yc = sub i64 %.149.i.i73, %.13048.i.i74
  %diff.check75 = icmp ult i64 %i.yc, 32
  %or.cond315 = select i1 %min.iters.check77, i1 true, i1 %diff.check75
  br i1 %or.cond315, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %iter.check95
  %min.iters.check79 = icmp ult i64 %i.yb, 32
  br i1 %min.iters.check79, label %vec.epilog.ph99, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %n.mod.vf81 = and i64 %i.yb, 28
  %n.vec82 = and i64 %i.yb, -32                   ; 5 uses
  %i.yd = getelementptr i8, ptr %.149.i.i, i64 %n.vec82
  %i.ye = getelementptr i8, ptr %.13048.i.i, i64 %n.vec82
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph80
  %index84 = phi i64 [ 0, %vector.ph80 ], [ %index.next89, %vector.body83 ] ; 3 uses
  %next.gep85 = getelementptr i8, ptr %.149.i.i, i64 %index84 ; 2 uses
  %next.gep86 = getelementptr i8, ptr %.13048.i.i, i64 %index84 ; 2 uses
  %i.yf = getelementptr i8, ptr %next.gep86, i64 16
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a

_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %i.gp = phi ptr [ %i.gm, %bb.ad ], [ %i.fb, %bb.ac ], [ %i.fy, %bb.ab ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.z ]
  %i.gq = phi i32 [ %i.go, %bb.ad ], [ %i.fm, %bb.ac ], [ %i.fz, %bb.ab ], [ %i.fm, %bb.z ]
  %i.gr = phi i64 [ %.val.i.i24.i, %bb.ad ], [ %i.fe, %bb.ac ], [ %.val.i.i.i21.i, %bb.ab ], [ %i.fe, %bb.z ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !92
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !133
  %i.gu = ptrtoint ptr %i.j to i64                ; 21 uses
  %i.gv = ptrtoint ptr %i.l to i64                ; 3 uses
  %.sroa.6139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gw = ptrtoint ptr %3 to i64                  ; 4 uses
  %i.gx = add i64 %i.gu, 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.bw, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i
  %i.gy = phi ptr [ %i.gp, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nx, %bb.bw ] ; 8 uses
  %i.gz = phi i32 [ %i.gq, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.ny, %bb.bw ] ; 5 uses
  %i.ha = phi i64 [ %i.gr, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nz, %bb.bw ] ; 6 uses
  %i.hb = phi i64 [ %i.z, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.jv, %bb.bw ] ; 2 uses
  %i.hc = phi i64 [ %i.v, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %.sink463.i, %bb.bw ] ; 6 uses
  %i.hd = phi i64 [ %i.s, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %.sink.i, %bb.bw ] ; 6 uses
  %i.he = phi i64 [ %i.ft, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.oe, %bb.bw ] ; 3 uses
  %i.hf = phi i64 [ %i.ef, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.od, %bb.bw ] ; 3 uses
  %i.hg = phi i64 [ %i.cx, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.oc, %bb.bw ] ; 3 uses
  %.0135.i287.i = phi i32 [ %5, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.sm, %bb.bw ] ; 4 uses
  %.0142.i285.i = phi ptr [ %1, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.sl, %bb.bw ] ; 20 uses
  %.0142.i285.i106 = ptrtoaddr ptr %.0142.i285.i to i64
  %.not.i = icmp eq i32 %.0135.i287.i, 1
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.he ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.hf ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !49, !noalias !134
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !49, !noalias !134 ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !49, !noalias !134 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.ht = load i8, ptr %i.hs, align 2, !tbaa !66, !noalias !134 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hv = load i8, ptr %i.hu, align 2, !tbaa !66, !noalias !134 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !66, !noalias !134 ; 4 uses
  %i.hy = zext i8 %i.ht to i32                    ; 2 uses
  %i.hz = zext i8 %i.hv to i32                    ; 2 uses
  %i.ia = add i8 %i.hv, %i.ht
  %i.ib = add i8 %i.ia, %i.hx
  %i.ic = load i16, ptr %i.hh, align 4, !tbaa !65, !noalias !134
  %i.id = load i16, ptr %i.hi, align 4, !tbaa !65, !noalias !134
  %i.ie = load i16, ptr %i.hj, align 4, !tbaa !65, !noalias !134
  %i.if = getelementptr inbounds nuw i8, ptr %i.hh, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !64, !noalias !134 ; 2 uses
  %i.ih = zext i8 %i.ig to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !64, !noalias !134 ; 2 uses
  %i.ik = zext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %i.im = load i8, ptr %i.il, align 1, !tbaa !64, !noalias !134 ; 2 uses
  %i.in = zext i8 %i.im to i32
  %i.io = icmp ugt i8 %i.hx, 1
  br i1 %i.io, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ip = zext i8 %i.hx to i32                    ; 2 uses
  %i.iq = and i32 %i.gz, 63
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = shl i64 %i.ha, %i.ir
  %i.it = sub nsw i32 0, %i.ip
  %i.iu = and i32 %i.it, 63
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = lshr i64 %i.is, %i.iv
  %i.ix = add i32 %i.gz, %i.ip                    ; 2 uses
  store i32 %i.ix, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %i.iy = zext i32 %i.hr to i64
  %i.iz = add i64 %i.iw, %i.iy
  store i64 %i.hc, ptr %i.aa, align 8, !tbaa !53, !noalias !134
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.ja = icmp eq i32 %i.ho, 0                    ; 3 uses
  %i.jb = icmp eq i8 %i.hx, 0
  br i1 %i.jb, label %bb.ah, label %bb.ai, !prof !97

bb.ah:                                            ; preds = %bb.ag
  %i.jc = select i1 %i.ja, i64 %i.hc, i64 %i.hd
  %i.jd = select i1 %i.ja, i64 %i.hd, i64 %i.hc
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.je = zext i1 %i.ja to i32
  %i.jf = add i32 %i.hr, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = and i32 %i.gz, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl i64 %i.ha, %i.ji
  %i.jk = lshr i64 %i.jj, 63
  %i.jl = add i32 %i.gz, 1                        ; 3 uses
  store i32 %i.jl, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %i.jm = add nuw nsw i64 %i.jk, %i.jg            ; 3 uses
  %i.jn = icmp eq i64 %i.jm, 3
  br i1 %i.jn, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.ai
  %i.jo = add i64 %i.hd, -1                       ; 2 uses
  %.not.i193.i182.i = icmp eq i64 %i.jo, 0
  %i.jp = select i1 %.not.i193.i182.i, i64 -1, i64 %i.jo
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.jm
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !53, !noalias !134 ; 2 uses
  %.not.i193.i.i = icmp eq i64 %i.jr, 0
  %i.js = select i1 %.not.i193.i.i, i64 -1, i64 %i.jr ; 2 uses
  %.not101.i194.i.i = icmp eq i64 %i.jm, 1
  br i1 %.not101.i194.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread.i
  %i.jt = phi i64 [ %i.jp, %.thread.i ], [ %i.js, %bb.aj ]
  store i64 %i.hc, ptr %i.aa, align 8, !tbaa !53, !noalias !134
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af
  %i.ju = phi i32 [ %i.ix, %bb.af ], [ %i.gz, %bb.ah ], [ %i.jl, %bb.ak ], [ %i.jl, %bb.aj ] ; 3 uses
  %.sink463.i = phi i64 [ %i.hd, %bb.af ], [ %i.jd, %bb.ah ], [ %i.hd, %bb.ak ], [ %i.hd, %bb.aj ] ; 5 uses
  %.sink.i = phi i64 [ %i.iz, %bb.af ], [ %i.jc, %bb.ah ], [ %i.jt, %bb.ak ], [ %i.js, %bb.aj ] ; 29 uses
  %i.jv = phi i64 [ %i.hc, %bb.af ], [ %i.hb, %bb.ah ], [ %i.hc, %bb.ak ], [ %i.hb, %bb.aj ] ; 4 uses
  store i64 %.sink463.i, ptr %i.w, align 8, !tbaa !53, !noalias !134
  store i64 %.sink.i, ptr %i.q, align 8, !tbaa !53, !noalias !134
  %.not102.i196.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not102.i196.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jw = and i32 %i.ju, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl i64 %i.ha, %i.jx
  %i.jz = sub nsw i32 0, %i.hz
  %i.ka = and i32 %i.jz, 63
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = lshr i64 %i.jy, %i.kb
  %i.kd = add i32 %i.ju, %i.hz                    ; 2 uses
  store i32 %i.kd, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %i.ke = add i64 %i.kc, %i.hm
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.kf = phi i32 [ %i.ju, %bb.al ], [ %i.kd, %bb.am ] ; 8 uses
  %.sroa.659.0.i = phi i64 [ %i.hm, %bb.al ], [ %i.ke, %bb.am ] ; 12 uses
  %i.kg = icmp ugt i8 %i.ib, 30
  br i1 %i.kg, label %bb.ao, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, !prof !60

bb.ao:                                            ; preds = %bb.an
  %i.kh = icmp ugt i32 %i.kf, 64
  br i1 %i.kh, label %bb.ap, label %bb.aq, !prof !60

bb.ap:                                            ; preds = %bb.ao
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cz, align 8, !tbaa !86, !noalias !134
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %.not.i212.i.i = icmp ult ptr %i.gy, %i.ad
  br i1 %.not.i212.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ki = lshr i32 %i.kf, 3
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = sub nsw i64 0, %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.gy, i64 %i.kk ; 3 uses
  store ptr %i.kl, ptr %i.cz, align 8, !tbaa !86, !noalias !134
  %i.km = and i32 %i.kf, 7                        ; 2 uses
  store i32 %i.km, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %.val.i.i30.i = load i64, ptr %i.kl, align 1, !tbaa !53, !noalias !134 ; 2 uses
  store i64 %.val.i.i30.i, ptr %9, align 8, !tbaa !87, !noalias !134
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.kn = icmp eq ptr %i.gy, %3
  br i1 %i.kn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ko = lshr i32 %i.kf, 3                       ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = sub nsw i64 0, %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.gy, i64 %i.kq
  %i.ks = icmp ult ptr %i.kr, %3
  %i.kt = ptrtoint ptr %i.gy to i64
  %i.ku = sub i64 %i.kt, %i.gw
  %i.kv = trunc i64 %i.ku to i32
  %.021.i.i.i = select i1 %i.ks, i32 %i.kv, i32 %i.ko ; 2 uses
  %i.kw = zext i32 %.021.i.i.i to i64
  %i.kx = sub nsw i64 0, %i.kw
  %i.ky = getelementptr inbounds i8, ptr %i.gy, i64 %i.kx ; 3 uses
  store ptr %i.ky, ptr %i.cz, align 8, !tbaa !86, !noalias !134
  %i.kz = shl i32 %.021.i.i.i, 3
  %i.la = sub i32 %i.kf, %i.kz                    ; 2 uses
  store i32 %i.la, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %.val.i31.i = load i64, ptr %i.ky, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i31.i, ptr %9, align 8, !tbaa !87, !noalias !134
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.an
  %i.lb = phi ptr [ %i.ky, %bb.at ], [ %i.gy, %bb.as ], [ %i.kl, %bb.ar ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ap ], [ %i.gy, %bb.an ] ; 9 uses
  %i.lc = phi i32 [ %i.la, %bb.at ], [ %i.kf, %bb.as ], [ %i.km, %bb.ar ], [ %i.kf, %bb.ap ], [ %i.kf, %bb.an ] ; 3 uses
  %i.ld = phi i64 [ %.val.i31.i, %bb.at ], [ %i.ha, %bb.as ], [ %.val.i.i30.i, %bb.ar ], [ %i.ha, %bb.ap ], [ %i.ha, %bb.an ] ; 8 uses
  %.not103.i197.i.i = icmp eq i8 %i.ht, 0
  br i1 %.not103.i197.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %i.le = and i32 %i.lc, 63
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = shl i64 %i.ld, %i.lf
  %i.lh = sub nsw i32 0, %i.hy
  %i.li = and i32 %i.lh, 63
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = lshr i64 %i.lg, %i.lj
  %i.ll = add i32 %i.lc, %i.hy                    ; 2 uses
  store i32 %i.ll, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %i.lm = add i64 %i.lk, %i.hp
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %i.ln = phi i32 [ %i.lc, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ], [ %i.ll, %bb.au ] ; 3 uses
  %.sroa.057.0.i = phi i64 [ %i.hp, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ], [ %i.lm, %bb.au ] ; 10 uses
  br i1 %.not.i, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lo = add i32 %i.ln, %i.ih                    ; 2 uses
  %i.lp = sub i32 0, %i.lo
  %i.lq = and i32 %i.lp, 63
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = lshr i64 %i.ld, %i.lr
  %i.lt = zext nneg i8 %i.ig to i64
  %notmask.i.i236.i.i = shl nsw i64 -1, %i.lt
  %i.lu = xor i64 %notmask.i.i236.i.i, -1
  %i.lv = and i64 %i.ls, %i.lu
  %i.lw = zext i16 %i.ic to i64
  %i.lx = add nuw i64 %i.lv, %i.lw                ; 3 uses
  store i64 %i.lx, ptr %i.cl, align 8, !tbaa !89, !noalias !134
  %i.ly = add i32 %i.lo, %i.ik                    ; 2 uses
  %i.lz = sub i32 0, %i.ly
  %i.ma = and i32 %i.lz, 63
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = lshr i64 %i.ld, %i.mb
  %i.md = zext nneg i8 %i.ij to i64
  %notmask.i.i235.i.i = shl nsw i64 -1, %i.md
  %i.me = xor i64 %notmask.i.i235.i.i, -1
  %i.mf = and i64 %i.mc, %i.me
  %i.mg = zext i16 %i.id to i64
  %i.mh = add nuw i64 %i.mf, %i.mg                ; 3 uses
  store i64 %i.mh, ptr %i.fh, align 8, !tbaa !89, !noalias !134
  %i.mi = add i32 %i.ly, %i.in                    ; 9 uses
  %i.mj = sub i32 0, %i.mi
  %i.mk = and i32 %i.mj, 63
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = lshr i64 %i.ld, %i.ml
  %i.mn = zext nneg i8 %i.im to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.mn
  %i.mo = xor i64 %notmask.i.i.i.i, -1
  %i.mp = and i64 %i.mm, %i.mo
  store i32 %i.mi, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %i.mq = zext i16 %i.ie to i64
  %i.mr = add nuw i64 %i.mp, %i.mq                ; 3 uses
  store i64 %i.mr, ptr %i.dt, align 8, !tbaa !89, !noalias !134
  %i.ms = icmp ugt i32 %i.mi, 64
  br i1 %i.ms, label %bb.ax, label %bb.ay, !prof !60

bb.ax:                                            ; preds = %bb.aw
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cz, align 8, !tbaa !86, !noalias !134
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i

bb.ay:                                            ; preds = %bb.aw
  %.not.i214.i.i = icmp ult ptr %i.lb, %i.ad
  br i1 %.not.i214.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mt = lshr i32 %i.mi, 3
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds i8, ptr %i.lb, i64 %i.mv ; 3 uses
  store ptr %i.mw, ptr %i.cz, align 8, !tbaa !86, !noalias !134
  %i.mx = and i32 %i.mi, 7                        ; 2 uses
  store i32 %i.mx, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %.val.i.i34.i = load i64, ptr %i.mw, align 1, !tbaa !53, !noalias !134 ; 2 uses
  store i64 %.val.i.i34.i, ptr %9, align 8, !tbaa !87, !noalias !134
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.my = icmp eq ptr %i.lb, %3
  br i1 %i.my, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mz = lshr i32 %i.mi, 3                       ; 2 uses
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = sub nsw i64 0, %i.na
  %i.nc = getelementptr inbounds i8, ptr %i.lb, i64 %i.nb
  %i.nd = icmp ult ptr %i.nc, %3
  %i.ne = ptrtoint ptr %i.lb to i64
  %i.nf = sub i64 %i.ne, %i.gw
  %i.ng = trunc i64 %i.nf to i32
  %.021.i216.i.i = select i1 %i.nd, i32 %i.ng, i32 %i.mz ; 2 uses
  %i.nh = zext i32 %.021.i216.i.i to i64
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds i8, ptr %i.lb, i64 %i.ni ; 3 uses
  store ptr %i.nj, ptr %i.cz, align 8, !tbaa !86, !noalias !134
  %i.nk = shl i32 %.021.i216.i.i, 3
  %i.nl = sub i32 %i.mi, %i.nk                    ; 2 uses
  store i32 %i.nl, ptr %i.cp, align 8, !tbaa !91, !noalias !134
  %.val.i35.i = load i64, ptr %i.nj, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i35.i, ptr %9, align 8, !tbaa !87, !noalias !134
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  %i.nm = phi ptr [ %i.nj, %bb.bb ], [ %i.lb, %bb.ba ], [ %i.mw, %bb.az ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ax ] ; 2 uses
  %i.nn = phi i32 [ %i.nl, %bb.bb ], [ %i.mi, %bb.ba ], [ %i.mx, %bb.az ], [ %i.mi, %bb.ax ] ; 2 uses
  %i.no = phi i64 [ %.val.i35.i, %bb.bb ], [ %i.ld, %bb.ba ], [ %.val.i.i34.i, %bb.az ], [ %i.ld, %bb.ax ] ; 2 uses
  %i.np = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sroa.057.0.i ; 2 uses
  %i.nr = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.ns = icmp ugt ptr %i.nq, %i.nr
  br i1 %i.ns, label %bb.bx, label %bb.bc

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i: ; preds = %bb.av
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.sroa.057.0.i ; 2 uses
  %i.nv = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.nw = icmp ugt ptr %i.nu, %i.nv
  br i1 %i.nw, label %.thread384.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i
  %i.nx = phi ptr [ %i.lb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.nm, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 2 uses
  %i.ny = phi i32 [ %i.ln, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.nn, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 2 uses
  %i.nz = phi i64 [ %i.ld, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.no, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.oa = phi ptr [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.nq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 3 uses
  %i.ob = phi ptr [ %i.nt, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.np, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ] ; 2 uses
  %i.oc = phi i64 [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.lx, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.od = phi i64 [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.mr, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.oe = phi i64 [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ], [ %i.mh, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i ]
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.og = getelementptr i8, ptr %.0142.i285.i, i64 %.sroa.057.0.i ; 7 uses
  %i.oh = add i64 %.sroa.057.0.i, %.sroa.659.0.i  ; 9 uses
  %i.oi = sub i64 0, %.sink.i
  %i.oj = getelementptr inbounds i8, ptr %i.og, i64 %i.oi ; 2 uses
  %i.ok = icmp ugt ptr %i.oa, %i.h
  %i.ol = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 %i.oh
  %i.om = icmp ugt ptr %i.ol, %i.of
  %or.cond.i207.i.i = select i1 %i.ok, i1 true, i1 %i.om, !prof !112
  br i1 %or.cond.i207.i.i, label %bb.bd, label %.critedge.i208.i.i, !prof !112

.critedge.i208.i.i:                               ; preds = %bb.bc
  %i.on = load <2 x i64>, ptr %i.ob, align 1, !tbaa !9
  store <2 x i64> %i.on, ptr %.0142.i285.i, align 1, !tbaa !9
  %i.oo = icmp ugt i64 %.sroa.057.0.i, 16
  br i1 %i.oo, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !prof !60

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.057.0.i, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.659.0.i, ptr %.sroa.6139.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink.i, ptr %.sroa.13144.0..sroa_idx.i, align 8, !tbaa !53
  %i.op = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0142.i285.i, ptr noundef %i.d, ptr noundef nonnull %i.of, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.be:                                            ; preds = %.critedge.i208.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.os = add i64 %.sroa.057.0.i, -16
  %i.ot = load <2 x i64>, ptr %i.or, align 1, !tbaa !9
  store <2 x i64> %i.ot, ptr %i.oq, align 1, !tbaa !9
  %i.ou = icmp slt i64 %i.os, 17
  br i1 %i.ou, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ov = getelementptr inbounds nuw i8, ptr %.0142.i285.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i.i = phi ptr [ %i.ov, %bb.bf ], [ %i.pa, %bb.bg ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.or, %bb.bf ], [ %i.oy, %bb.bg ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.ow = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ow, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.oz = load <2 x i64>, ptr %i.oy, align 1, !tbaa !9
  store <2 x i64> %i.oz, ptr %i.ox, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.pb = icmp ult ptr %i.pa, %i.og
  br i1 %i.pb, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bg, %bb.be, %.critedge.i208.i.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !46
  %i.pc = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = icmp ugt i64 %.sink.i, %i.pd
  br i1 %i.pe, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.pf = sub i64 %i.pc, %i.gv
  %i.pg = icmp ugt i64 %.sink.i, %i.pf
  br i1 %i.pg, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i, label %bb.bi, !prof !60

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread236.i

bb.bi:                                            ; preds = %bb.bh
  %i.ph = ptrtoint ptr %i.oj to i64
  %i.pi = sub i64 %i.ph, %i.gu                    ; 3 uses
  %i.pj = getelementptr inbounds i8, ptr %i.n, i64 %i.pi ; 2 uses
  %i.pk = add nsw i64 %i.pi, %.sroa.659.0.i       ; 2 uses
  %.not.i210.i.i = icmp sgt i64 %i.pk, 0
  br i1 %.not.i210.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pj, i64 %.sroa.659.0.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i211.i.i = sub nsw i64 0, %i.pi        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pj, i64 %gepdiff.i211.i.i, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i211.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.sroa.6139.0.i = phi i64 [ %i.pk, %bb.bk ], [ %.sroa.659.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %.0170.i = phi ptr [ %i.j, %bb.bk ], [ %i.oj, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.pl, %bb.bk ], [ %i.og, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %i.pm = icmp ugt i64 %.sink.i, 15
  br i1 %i.pm, label %bb.bm, label %bb.bp, !prof !97

bb.bm:                                            ; preds = %bb.bl
  %i.pn = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.6139.0.i
  %i.po = load <2 x i64>, ptr %.0170.i, align 1, !tbaa !9
  store <2 x i64> %i.po, ptr %.0.i, align 1, !tbaa !9
  %i.pp = icmp slt i64 %.sroa.6139.0.i, 17
  br i1 %i.pp, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i243.i.i = phi ptr [ %i.pq, %bb.bn ], [ %i.pv, %bb.bo ] ; 3 uses
  %.pn.i244.i.i = phi ptr [ %.0170.i, %bb.bn ], [ %i.pt, %bb.bo ] ; 2 uses
  %.1.i245.i.i = getelementptr inbounds nuw i8, ptr %.pn.i244.i.i, i64 16
  %i.pr = load <2 x i64>, ptr %.1.i245.i.i, align 1, !tbaa !9
  store <2 x i64> %i.pr, ptr %.130.i243.i.i, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %.130.i243.i.i, i64 16
  %i.pt = getelementptr inbounds nuw i8, ptr %.pn.i244.i.i, i64 32 ; 2 uses
  %i.pu = load <2 x i64>, ptr %i.pt, align 1, !tbaa !9
  store <2 x i64> %i.pu, ptr %i.ps, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.130.i243.i.i, i64 32 ; 2 uses
  %i.pw = icmp ult ptr %i.pv, %i.pn
  br i1 %i.pw, label %bb.bo, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !108

bb.bp:                                            ; preds = %bb.bl
  %i.px = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.px, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.py = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = load i8, ptr %.0170.i, align 1, !tbaa !9
  store i8 %i.qa, ptr %.0.i, align 1, !tbaa !9
  %i.qb = getelementptr inbounds nuw i8, ptr %.0170.i, i64 1
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %.0170.i, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %.0170.i, i64 3
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !9
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !9
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %.0170.i, i64 %i.qm ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.qp = load i32, ptr %i.qn, align 1
  store i32 %i.qp, ptr %i.qo, align 1
  %i.qq = sext i32 %i.pz to i64
  %i.qr = sub nsw i64 0, %i.qq
  %i.qs = getelementptr inbounds i8, ptr %i.qn, i64 %i.qr
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %i.qt = load i64, ptr %.0170.i, align 1
  store i64 %i.qt, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.br, %bb.bq
  %.1.i = phi ptr [ %i.qs, %bb.bq ], [ %.0170.i, %bb.br ] ; 2 uses
  %.1.i107 = ptrtoaddr ptr %.1.i to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qw = icmp ugt i64 %.sroa.6139.0.i, 8
  br i1 %i.qw, label %bb.bs, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = ptrtoint ptr %i.qu to i64
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = getelementptr i8, ptr %.0.i, i64 %.sroa.6139.0.i ; 2 uses
  %i.rb = icmp slt i64 %i.qz, 16
  br i1 %i.rb, label %.preheader265.i.preheader, label %bb.bt
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  br i1 %i.zm, label %bb.cy, label %.thread236.i

bb.cy:                                            ; preds = %.loopexit.i
  %.not252.i = icmp eq i32 %i.zo, 0
  br i1 %.not252.i, label %.thread232.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !148
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !149
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !151
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  %.sroa.675.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zp = add i64 %i.gu, 16
  br label %bb.da

bb.da:                                            ; preds = %bb.er, %bb.cz
  %i.zq = phi ptr [ %i.so, %bb.cz ], [ %i.age, %bb.er ] ; 8 uses
  %i.zr = phi i32 [ %i.sp, %bb.cz ], [ %i.agf, %bb.er ] ; 5 uses
  %i.zs = phi i64 [ %i.sq, %bb.cz ], [ %i.agg, %bb.er ] ; 6 uses
  %i.zt = phi i64 [ %i.jv, %bb.cz ], [ %i.acn, %bb.er ] ; 2 uses
  %i.zu = phi i64 [ %.sink463.i, %bb.cz ], [ %.sink465.i, %bb.er ] ; 6 uses
  %i.zv = phi i64 [ %.sink.i, %bb.cz ], [ %.sink464.i, %bb.er ] ; 6 uses
  %i.zw = phi i64 [ %i.sr, %bb.cz ], [ %i.agh, %bb.er ] ; 2 uses
  %i.zx = phi i64 [ %i.ss, %bb.cz ], [ %i.agi, %bb.er ] ; 2 uses
  %i.zy = phi i64 [ %i.st, %bb.cz ], [ %i.agj, %bb.er ] ; 2 uses
  %.4139.i290.i = phi i32 [ %i.zo, %bb.cz ], [ %i.aks, %bb.er ] ; 2 uses
  %.7149.i288.i = phi ptr [ %i.zn, %bb.cz ], [ %i.akr, %bb.er ] ; 8 uses
  %.7149.i288.i208 = ptrtoaddr ptr %.7149.i288.i to i64
  %.not256.i = icmp eq i32 %.4139.i290.i, 1
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.zy ; 4 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.zw ; 4 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.zx ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !49, !noalias !153
  %i.aae = zext i32 %i.aad to i64                 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !49, !noalias !153 ; 2 uses
  %i.aah = zext i32 %i.aag to i64                 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !49, !noalias !153 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zz, i64 2
  %i.aal = load i8, ptr %i.aak, align 2, !tbaa !66, !noalias !153 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  %i.aan = load i8, ptr %i.aam, align 2, !tbaa !66, !noalias !153 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aab, i64 2
  %i.aap = load i8, ptr %i.aao, align 2, !tbaa !66, !noalias !153 ; 4 uses
  %i.aaq = zext i8 %i.aal to i32                  ; 2 uses
  %i.aar = zext i8 %i.aan to i32                  ; 2 uses
  %i.aas = add i8 %i.aan, %i.aal
  %i.aat = add i8 %i.aas, %i.aap
  %i.aau = load i16, ptr %i.zz, align 4, !tbaa !65, !noalias !153
  %i.aav = load i16, ptr %i.aaa, align 4, !tbaa !65, !noalias !153
  %i.aaw = load i16, ptr %i.aab, align 4, !tbaa !65, !noalias !153
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zz, i64 3
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaa, i64 3
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.abc = zext i8 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aab, i64 3
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !64, !noalias !153 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = icmp ugt i8 %i.aap, 1
  br i1 %i.abg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abh = zext i8 %i.aap to i32                  ; 2 uses
  %i.abi = and i32 %i.zr, 63
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = shl i64 %i.zs, %i.abj
  %i.abl = sub nsw i32 0, %i.abh
  %i.abm = and i32 %i.abl, 63
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = lshr i64 %i.abk, %i.abn
  %i.abp = add i32 %i.zr, %i.abh                  ; 2 uses
  store i32 %i.abp, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.abq = zext i32 %i.aaj to i64
  %i.abr = add i64 %i.abo, %i.abq
  store i64 %i.zu, ptr %i.aa, align 8, !tbaa !53, !noalias !153
  br label %bb.dh

bb.dc:                                            ; preds = %bb.da
  %i.abs = icmp eq i32 %i.aag, 0                  ; 3 uses
  %i.abt = icmp eq i8 %i.aap, 0
  br i1 %i.abt, label %bb.dd, label %bb.de, !prof !97

bb.dd:                                            ; preds = %bb.dc
  %i.abu = select i1 %i.abs, i64 %i.zu, i64 %i.zv
  %i.abv = select i1 %i.abs, i64 %i.zv, i64 %i.zu
  br label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.abw = zext i1 %i.abs to i32
  %i.abx = add i32 %i.aaj, %i.abw
  %i.aby = zext i32 %i.abx to i64
  %i.abz = and i32 %i.zr, 63
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = shl i64 %i.zs, %i.aca
  %i.acc = lshr i64 %i.acb, 63
  %i.acd = add i32 %i.zr, 1                       ; 3 uses
  store i32 %i.acd, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.ace = add nuw nsw i64 %i.acc, %i.aby         ; 3 uses
  %i.acf = icmp eq i64 %i.ace, 3
  br i1 %i.acf, label %.thread215.i, label %bb.df

.thread215.i:                                     ; preds = %bb.de
  %i.acg = add i64 %i.zv, -1                      ; 2 uses
  %.not.i.i216.i = icmp eq i64 %i.acg, 0
  %i.ach = select i1 %.not.i.i216.i, i64 -1, i64 %i.acg
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ace
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !53, !noalias !153 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.acj, 0
  %i.ack = select i1 %.not.i.i.i, i64 -1, i64 %i.acj ; 2 uses
  %.not101.i.i.i = icmp eq i64 %i.ace, 1
  br i1 %.not101.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.thread215.i
  %i.acl = phi i64 [ %i.ach, %.thread215.i ], [ %i.ack, %bb.df ]
  store i64 %i.zu, ptr %i.aa, align 8, !tbaa !53, !noalias !153
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.db
  %i.acm = phi i32 [ %i.abp, %bb.db ], [ %i.zr, %bb.dd ], [ %i.acd, %bb.dg ], [ %i.acd, %bb.df ] ; 3 uses
  %.sink465.i = phi i64 [ %i.zv, %bb.db ], [ %i.abv, %bb.dd ], [ %i.zv, %bb.dg ], [ %i.zv, %bb.df ] ; 3 uses
  %.sink464.i = phi i64 [ %i.abr, %bb.db ], [ %i.abu, %bb.dd ], [ %i.acl, %bb.dg ], [ %i.ack, %bb.df ] ; 15 uses
  %i.acn = phi i64 [ %i.zu, %bb.db ], [ %i.zt, %bb.dd ], [ %i.zu, %bb.dg ], [ %i.zt, %bb.df ] ; 2 uses
  store i64 %.sink465.i, ptr %i.w, align 8, !tbaa !53, !noalias !153
  store i64 %.sink464.i, ptr %i.q, align 8, !tbaa !53, !noalias !153
  %.not102.i.i.i = icmp eq i8 %i.aan, 0
  br i1 %.not102.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aco = and i32 %i.acm, 63
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = shl i64 %i.zs, %i.acp
  %i.acr = sub nsw i32 0, %i.aar
  %i.acs = and i32 %i.acr, 63
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = lshr i64 %i.acq, %i.act
  %i.acv = add i32 %i.acm, %i.aar                 ; 2 uses
  store i32 %i.acv, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.acw = add i64 %i.acu, %i.aae
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.acx = phi i32 [ %i.acm, %bb.dh ], [ %i.acv, %bb.di ] ; 8 uses
  %.sroa.6.0.i = phi i64 [ %i.aae, %bb.dh ], [ %i.acw, %bb.di ] ; 6 uses
  %i.acy = icmp ugt i8 %i.aat, 30
  br i1 %i.acy, label %bb.dk, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i, !prof !60

bb.dk:                                            ; preds = %bb.dj
  %i.acz = icmp ugt i32 %i.acx, 64
  br i1 %i.acz, label %bb.dl, label %bb.dm, !prof !60

bb.dl:                                            ; preds = %bb.dk
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i

bb.dm:                                            ; preds = %bb.dk
  %.not.i221.i.i = icmp ult ptr %i.zq, %i.ad
  br i1 %.not.i221.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ada = lshr i32 %i.acx, 3
  %i.adb = zext nneg i32 %i.ada to i64
  %i.adc = sub nsw i64 0, %i.adb
  %i.add = getelementptr inbounds i8, ptr %i.zq, i64 %i.adc ; 3 uses
  store ptr %i.add, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  %i.ade = and i32 %i.acx, 7                      ; 2 uses
  store i32 %i.ade, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %.val.i.i46.i = load i64, ptr %i.add, align 1, !tbaa !53, !noalias !153 ; 2 uses
  store i64 %.val.i.i46.i, ptr %9, align 8, !tbaa !87, !noalias !153
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i

bb.do:                                            ; preds = %bb.dm
  %i.adf = icmp eq ptr %i.zq, %3
  br i1 %i.adf, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.adg = lshr i32 %i.acx, 3                     ; 2 uses
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = sub nsw i64 0, %i.adh
  %i.adj = getelementptr inbounds i8, ptr %i.zq, i64 %i.adi
  %i.adk = icmp ult ptr %i.adj, %3
  %i.adl = ptrtoint ptr %i.zq to i64
  %i.adm = sub i64 %i.adl, %i.gw
  %i.adn = trunc i64 %i.adm to i32
  %.021.i223.i.i = select i1 %i.adk, i32 %i.adn, i32 %i.adg ; 2 uses
  %i.ado = zext i32 %.021.i223.i.i to i64
  %i.adp = sub nsw i64 0, %i.ado
  %i.adq = getelementptr inbounds i8, ptr %i.zq, i64 %i.adp ; 3 uses
  store ptr %i.adq, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  %i.adr = shl i32 %.021.i223.i.i, 3
  %i.ads = sub i32 %i.acx, %i.adr                 ; 2 uses
  store i32 %i.ads, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %.val.i47.i = load i64, ptr %i.adq, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i47.i, ptr %9, align 8, !tbaa !87, !noalias !153
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i: ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dl, %bb.dj
  %i.adt = phi ptr [ %i.adq, %bb.dp ], [ %i.zq, %bb.do ], [ %i.add, %bb.dn ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dl ], [ %i.zq, %bb.dj ] ; 8 uses
  %i.adu = phi i32 [ %i.ads, %bb.dp ], [ %i.acx, %bb.do ], [ %i.ade, %bb.dn ], [ %i.acx, %bb.dl ], [ %i.acx, %bb.dj ] ; 3 uses
  %i.adv = phi i64 [ %.val.i47.i, %bb.dp ], [ %i.zs, %bb.do ], [ %.val.i.i46.i, %bb.dn ], [ %i.zs, %bb.dl ], [ %i.zs, %bb.dj ] ; 7 uses
  %.not103.i.i.i = icmp eq i8 %i.aal, 0
  br i1 %.not103.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i
  %i.adw = and i32 %i.adu, 63
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = shl i64 %i.adv, %i.adx
  %i.adz = sub nsw i32 0, %i.aaq
  %i.aea = and i32 %i.adz, 63
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = lshr i64 %i.ady, %i.aeb
  %i.aed = add i32 %i.adu, %i.aaq                 ; 2 uses
  store i32 %i.aed, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.aee = add i64 %i.aec, %i.aah
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i
  %i.aef = phi i32 [ %i.adu, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i ], [ %i.aed, %bb.dq ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.aah, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i.i ], [ %i.aee, %bb.dq ] ; 7 uses
  br i1 %.not256.i, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aeg = add i32 %i.aef, %i.aaz                 ; 2 uses
  %i.aeh = sub i32 0, %i.aeg
  %i.aei = and i32 %i.aeh, 63
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = lshr i64 %i.adv, %i.aej
  %i.ael = zext nneg i8 %i.aay to i64
  %notmask.i.i239.i.i = shl nsw i64 -1, %i.ael
  %i.aem = xor i64 %notmask.i.i239.i.i, -1
  %i.aen = and i64 %i.aek, %i.aem
  %i.aeo = zext i16 %i.aau to i64
  %i.aep = add nuw i64 %i.aen, %i.aeo             ; 5 uses
  store i64 %i.aep, ptr %i.cl, align 8, !tbaa !89, !noalias !153
  %i.aeq = add i32 %i.aeg, %i.abc                 ; 2 uses
  %i.aer = sub i32 0, %i.aeq
  %i.aes = and i32 %i.aer, 63
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = lshr i64 %i.adv, %i.aet
  %i.aev = zext nneg i8 %i.abb to i64
  %notmask.i.i238.i.i = shl nsw i64 -1, %i.aev
  %i.aew = xor i64 %notmask.i.i238.i.i, -1
  %i.aex = and i64 %i.aeu, %i.aew
  %i.aey = zext i16 %i.aav to i64
  %i.aez = add nuw i64 %i.aex, %i.aey             ; 5 uses
  store i64 %i.aez, ptr %i.fh, align 8, !tbaa !89, !noalias !153
  %i.afa = add i32 %i.aeq, %i.abf                 ; 9 uses
  %i.afb = sub i32 0, %i.afa
  %i.afc = and i32 %i.afb, 63
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = lshr i64 %i.adv, %i.afd
  %i.aff = zext nneg i8 %i.abe to i64
  %notmask.i.i237.i.i = shl nsw i64 -1, %i.aff
  %i.afg = xor i64 %notmask.i.i237.i.i, -1
  %i.afh = and i64 %i.afe, %i.afg
  store i32 %i.afa, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %i.afi = zext i16 %i.aaw to i64
  %i.afj = add nuw i64 %i.afh, %i.afi             ; 5 uses
  store i64 %i.afj, ptr %i.dt, align 8, !tbaa !89, !noalias !153
  %i.afk = icmp ugt i32 %i.afa, 64
  br i1 %i.afk, label %bb.dt, label %bb.du, !prof !60

bb.dt:                                            ; preds = %bb.ds
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

bb.du:                                            ; preds = %bb.ds
  %.not.i228.i.i = icmp ult ptr %i.adt, %i.ad
  br i1 %.not.i228.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.afl = lshr i32 %i.afa, 3
  %i.afm = zext nneg i32 %i.afl to i64
  %i.afn = sub nsw i64 0, %i.afm
  %i.afo = getelementptr inbounds i8, ptr %i.adt, i64 %i.afn ; 3 uses
  store ptr %i.afo, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  %i.afp = and i32 %i.afa, 7                      ; 2 uses
  store i32 %i.afp, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %.val.i.i50.i = load i64, ptr %i.afo, align 1, !tbaa !53, !noalias !153 ; 2 uses
  store i64 %.val.i.i50.i, ptr %9, align 8, !tbaa !87, !noalias !153
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

bb.dw:                                            ; preds = %bb.du
  %i.afq = icmp eq ptr %i.adt, %3
  br i1 %i.afq, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.afr = lshr i32 %i.afa, 3                     ; 2 uses
  %i.afs = zext nneg i32 %i.afr to i64
  %i.aft = sub nsw i64 0, %i.afs
  %i.afu = getelementptr inbounds i8, ptr %i.adt, i64 %i.aft
  %i.afv = icmp ult ptr %i.afu, %3
  %i.afw = ptrtoint ptr %i.adt to i64
  %i.afx = sub i64 %i.afw, %i.gw
  %i.afy = trunc i64 %i.afx to i32
  %.021.i230.i.i = select i1 %i.afv, i32 %i.afy, i32 %i.afr ; 2 uses
  %i.afz = zext i32 %.021.i230.i.i to i64
  %i.aga = sub nsw i64 0, %i.afz
  %i.agb = getelementptr inbounds i8, ptr %i.adt, i64 %i.aga ; 3 uses
  store ptr %i.agb, ptr %i.cz, align 8, !tbaa !86, !noalias !153
  %i.agc = shl i32 %.021.i230.i.i, 3
  %i.agd = sub i32 %i.afa, %i.agc                 ; 2 uses
  store i32 %i.agd, ptr %i.cp, align 8, !tbaa !91, !noalias !153
  %.val.i51.i = load i64, ptr %i.agb, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i51.i, ptr %9, align 8, !tbaa !87, !noalias !153
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.dr
  %i.age = phi ptr [ %i.adt, %bb.dw ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dt ], [ %i.afo, %bb.dv ], [ %i.agb, %bb.dx ], [ %i.adt, %bb.dr ] ; 2 uses
  %i.agf = phi i32 [ %i.afa, %bb.dw ], [ %i.afa, %bb.dt ], [ %i.afp, %bb.dv ], [ %i.agd, %bb.dx ], [ %i.aef, %bb.dr ] ; 2 uses
  %i.agg = phi i64 [ %i.adv, %bb.dw ], [ %i.adv, %bb.dt ], [ %.val.i.i50.i, %bb.dv ], [ %.val.i51.i, %bb.dx ], [ %i.adv, %bb.dr ]
  %i.agh = phi i64 [ %i.aez, %bb.dw ], [ %i.aez, %bb.dt ], [ %i.aez, %bb.dv ], [ %i.aez, %bb.dx ], [ %i.zw, %bb.dr ]
  %i.agi = phi i64 [ %i.afj, %bb.dw ], [ %i.afj, %bb.dt ], [ %i.afj, %bb.dv ], [ %i.afj, %bb.dx ], [ %i.zx, %bb.dr ]
  %i.agj = phi i64 [ %i.aep, %bb.dw ], [ %i.aep, %bb.dt ], [ %i.aep, %bb.dv ], [ %i.aep, %bb.dx ], [ %i.zy, %bb.dr ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.agk = getelementptr i8, ptr %.7149.i288.i, i64 %.sroa.0.0.i ; 7 uses
  %i.agl = add i64 %.sroa.0.0.i, %.sroa.6.0.i     ; 9 uses
  %i.agm = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %.sroa.0.0.i ; 2 uses
  %i.ago = sub i64 0, %.sink464.i
  %i.agp = getelementptr inbounds i8, ptr %i.agk, i64 %i.ago ; 2 uses
  %i.agq = icmp ugt ptr %i.agn, %i.ve
  %i.agr = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 %i.agl
  %i.ags = icmp ugt ptr %i.agr, %i.vm
  %or.cond.i.i.i = select i1 %i.agq, i1 true, i1 %i.ags, !prof !112
  br i1 %or.cond.i.i.i, label %bb.dy, label %.critedge.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  %i.agt = load <2 x i64>, ptr %i.agm, align 1, !tbaa !9
  store <2 x i64> %i.agt, ptr %.7149.i288.i, align 1, !tbaa !9
  %i.agu = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.agu, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, !prof !60

bb.dy:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  store i64 %.sroa.0.0.i, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.6.0.i, ptr %.sroa.675.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink464.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !53
  %i.agv = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7149.i288.i, ptr noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ve, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.dz:                                            ; preds = %.critedge.i.i.i
  %i.agw = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agm, i64 16 ; 2 uses
  %i.agy = add i64 %.sroa.0.0.i, -16
  %i.agz = load <2 x i64>, ptr %i.agx, align 1, !tbaa !9
  store <2 x i64> %i.agz, ptr %i.agw, align 1, !tbaa !9
  %i.aha = icmp slt i64 %i.agy, 17
  br i1 %i.aha, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahb = getelementptr inbounds nuw i8, ptr %.7149.i288.i, i64 32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %bb.ea
  %.130.i276.i.i = phi ptr [ %i.ahb, %bb.ea ], [ %i.ahg, %bb.eb ] ; 3 uses
  %.pn.i277.i.i = phi ptr [ %i.agx, %bb.ea ], [ %i.ahe, %bb.eb ] ; 2 uses
  %.1.i278.i.i = getelementptr inbounds nuw i8, ptr %.pn.i277.i.i, i64 16
  %i.ahc = load <2 x i64>, ptr %.1.i278.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ahc, ptr %.130.i276.i.i, align 1, !tbaa !9
  %i.ahd = getelementptr inbounds nuw i8, ptr %.130.i276.i.i, i64 16
  %i.ahe = getelementptr inbounds nuw i8, ptr %.pn.i277.i.i, i64 32 ; 2 uses
  %i.ahf = load <2 x i64>, ptr %i.ahe, align 1, !tbaa !9
  store <2 x i64> %i.ahf, ptr %i.ahd, align 1, !tbaa !9
  %i.ahg = getelementptr inbounds nuw i8, ptr %.130.i276.i.i, i64 32 ; 2 uses
  %i.ahh = icmp ult ptr %i.ahg, %i.agk
  br i1 %i.ahh, label %bb.eb, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i: ; preds = %bb.eb, %bb.dz, %.critedge.i.i.i
  store ptr %i.agn, ptr %i.a, align 8, !tbaa !46
  %i.ahi = ptrtoint ptr %i.agk to i64             ; 2 uses
  %i.ahj = sub i64 %i.ahi, %i.gu                  ; 3 uses
  %i.ahk = icmp ugt i64 %.sink464.i, %i.ahj
  br i1 %i.ahk, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i
  %i.ahl = sub i64 %i.ahi, %i.gv
  %i.ahm = icmp ugt i64 %.sink464.i, %i.ahl
  br i1 %i.ahm, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, label %bb.ed, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread236.i

bb.ed:                                            ; preds = %bb.ec
  %i.ahn = ptrtoint ptr %i.agp to i64
  %i.aho = sub i64 %i.ahn, %i.gu                  ; 3 uses
  %i.ahp = getelementptr inbounds i8, ptr %i.n, i64 %i.aho ; 2 uses
  %i.ahq = add nsw i64 %i.aho, %.sroa.6.0.i       ; 2 uses
  %.not.i200.i.i = icmp sgt i64 %i.ahq, 0
  br i1 %.not.i200.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agk, ptr align 1 %i.ahp, i64 %.sroa.6.0.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %gepdiff.i.i.i = sub nsw i64 0, %i.aho          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agk, ptr align 1 %i.ahp, i64 %gepdiff.i.i.i, i1 false)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agk, i64 %gepdiff.i.i.i
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i
  %.sroa.675.0.i = phi i64 [ %i.ahq, %bb.ef ], [ %.sroa.6.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 5 uses
  %.0175.i = phi ptr [ %i.j, %bb.ef ], [ %i.agp, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 9 uses
  %.0174.i = phi ptr [ %i.ahr, %bb.ef ], [ %i.agk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i.i ] ; 12 uses
  %i.ahs = icmp ugt i64 %.sink464.i, 15
  br i1 %i.ahs, label %bb.eh, label %bb.ek, !prof !97

bb.eh:                                            ; preds = %bb.eg
  %i.aht = getelementptr inbounds i8, ptr %.0174.i, i64 %.sroa.675.0.i
  %i.ahu = load <2 x i64>, ptr %.0175.i, align 1, !tbaa !9
  store <2 x i64> %i.ahu, ptr %.0174.i, align 1, !tbaa !9
  %i.ahv = icmp slt i64 %.sroa.675.0.i, 17
  br i1 %i.ahv, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0174.i, i64 16
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.130.i283.i.i = phi ptr [ %i.ahw, %bb.ei ], [ %i.aib, %bb.ej ] ; 3 uses
  %.pn.i284.i.i = phi ptr [ %.0175.i, %bb.ei ], [ %i.ahz, %bb.ej ] ; 2 uses
  %.1.i285.i.i = getelementptr inbounds nuw i8, ptr %.pn.i284.i.i, i64 16
  %i.ahx = load <2 x i64>, ptr %.1.i285.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ahx, ptr %.130.i283.i.i, align 1, !tbaa !9
  %i.ahy = getelementptr inbounds nuw i8, ptr %.130.i283.i.i, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %.pn.i284.i.i, i64 32 ; 2 uses
  %i.aia = load <2 x i64>, ptr %i.ahz, align 1, !tbaa !9
  store <2 x i64> %i.aia, ptr %i.ahy, align 1, !tbaa !9
  %i.aib = getelementptr inbounds nuw i8, ptr %.130.i283.i.i, i64 32 ; 2 uses
  %i.aic = icmp ult ptr %i.aib, %i.aht
  br i1 %i.aic, label %bb.ej, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

bb.ek:                                            ; preds = %bb.eg
  %i.aid = icmp samesign ult i64 %.sink464.i, 8
  br i1 %i.aid, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink464.i
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !3
  %i.aig = load i8, ptr %.0175.i, align 1, !tbaa !9
  store i8 %i.aig, ptr %.0174.i, align 1, !tbaa !9
  %i.aih = getelementptr inbounds nuw i8, ptr %.0175.i, i64 1
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !9
  %i.aij = getelementptr inbounds nuw i8, ptr %.0174.i, i64 1
  store i8 %i.aii, ptr %i.aij, align 1, !tbaa !9
  %i.aik = getelementptr inbounds nuw i8, ptr %.0175.i, i64 2
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !9
  %i.aim = getelementptr inbounds nuw i8, ptr %.0174.i, i64 2
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !9
  %i.ain = getelementptr inbounds nuw i8, ptr %.0175.i, i64 3
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !9
  %i.aip = getelementptr inbounds nuw i8, ptr %.0174.i, i64 3
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !9
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink464.i
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !3
  %i.ais = zext i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %.0175.i, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0174.i, i64 4
  %i.aiv = load i32, ptr %i.ait, align 1
  store i32 %i.aiv, ptr %i.aiu, align 1
  %i.aiw = sext i32 %i.aif to i64
  %i.aix = sub nsw i64 0, %i.aiw
  %i.aiy = getelementptr inbounds i8, ptr %i.ait, i64 %i.aix
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i

bb.em:                                            ; preds = %bb.ek
  %i.aiz = load i64, ptr %.0175.i, align 1
  store i64 %i.aiz, ptr %.0174.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i: ; preds = %bb.em, %bb.el
  %.1176.i = phi ptr [ %i.aiy, %bb.el ], [ %.0175.i, %bb.em ] ; 2 uses
  %.1176.i210 = ptrtoaddr ptr %.1176.i to i64
  %i.aja = getelementptr inbounds nuw i8, ptr %.1176.i, i64 8 ; 7 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0174.i, i64 8 ; 6 uses
  %i.ajc = icmp ugt i64 %.sroa.675.0.i, 8
  br i1 %i.ajc, label %bb.en, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.en:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i.i
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = ptrtoint ptr %i.aja to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %i.ajg = getelementptr i8, ptr %.0174.i, i64 %.sroa.675.0.i ; 2 uses
  %i.ajh = icmp slt i64 %i.ajf, 16
  br i1 %i.ajh, label %.preheader258.i.preheader, label %bb.eo

.preheader258.i.preheader:                        ; preds = %bb.en
  %i.aji = add i64 %.sroa.6.0.i, %i.gu
  %umin212 = tail call i64 @llvm.umin.i64(i64 %.sink464.i, i64 %i.ahj)
  %i.ajj = add i64 %i.aji, %umin212
  %umax213 = tail call i64 @llvm.umax.i64(i64 %.sink464.i, i64 %i.ahj) ; 3 uses
  %i.ajk = add i64 %i.ajj, %umax213
  %i.ajl = sub i64 %i.ajk, %.sink464.i
  %i.ajm = add i64 %i.zp, %umax213
  %umax214 = tail call i64 @llvm.umax.i64(i64 %i.ajl, i64 %i.ajm)
  %i.ajn = add i64 %umax214, -9
  %i.ajo = add i64 %umax213, %i.gu
  %i.ajp = sub i64 %i.ajn, %i.ajo                 ; 2 uses
  %i.ajq = lshr i64 %i.ajp, 3
  %i.ajr = add nuw nsw i64 %i.ajq, 1              ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.ajp, 72
  br i1 %min.iters.check216, label %.preheader258.i.preheader234, label %vector.memcheck207

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL24ZSTD_decompressSequencesEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !92
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !159
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !160
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !161
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !162
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !163
  %i.hb = getelementptr inbounds i8, ptr %i.j, i64 -32
  %i.hc = ptrtoint ptr %i.q to i64                ; 7 uses
  %i.hd = ptrtoint ptr %i.s to i64
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.he = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.hf = add i64 %i.hc, 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.by, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i
  %i.hg = phi ptr [ %i.gw, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nu, %bb.by ] ; 8 uses
  %i.hh = phi i32 [ %i.gx, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nv, %bb.by ] ; 5 uses
  %i.hi = phi i64 [ %i.gy, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nw, %bb.by ] ; 6 uses
  %i.hj = phi i64 [ %i.ag, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.kd, %bb.by ] ; 2 uses
  %i.hk = phi i64 [ %i.ac, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %.sink159.i, %bb.by ] ; 6 uses
  %i.hl = phi i64 [ %i.z, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %.sink.i, %bb.by ] ; 6 uses
  %i.hm = phi i64 [ %i.ga, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nx, %bb.by ] ; 2 uses
  %i.hn = phi i64 [ %i.em, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.ny, %bb.by ] ; 2 uses
  %i.ho = phi i64 [ %i.de, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.nz, %bb.by ] ; 2 uses
  %.063.i105.i = phi i32 [ %5, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.si, %bb.by ] ; 2 uses
  %.068.i103.i = phi ptr [ %1, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25.i ], [ %i.sh, %bb.by ] ; 8 uses
  %.068.i103.i17 = ptrtoaddr ptr %.068.i103.i to i64
  %.not.i = icmp eq i32 %.063.i105.i, 1
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ho ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hm ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.hn ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !49, !noalias !164
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !49, !noalias !164 ; 2 uses
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !49, !noalias !164 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ib = load i8, ptr %i.ia, align 2, !tbaa !66, !noalias !164 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !66, !noalias !164 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !66, !noalias !164 ; 4 uses
  %i.ig = zext i8 %i.ib to i32                    ; 2 uses
  %i.ih = zext i8 %i.id to i32                    ; 2 uses
  %i.ii = add i8 %i.id, %i.ib
  %i.ij = add i8 %i.ii, %i.if
  %i.ik = load i16, ptr %i.hp, align 4, !tbaa !65, !noalias !164
  %i.il = load i16, ptr %i.hq, align 4, !tbaa !65, !noalias !164
  %i.im = load i16, ptr %i.hr, align 4, !tbaa !65, !noalias !164
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !64, !noalias !164 ; 2 uses
  %i.ip = zext i8 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !64, !noalias !164 ; 2 uses
  %i.is = zext i8 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !64, !noalias !164 ; 2 uses
  %i.iv = zext i8 %i.iu to i32
  %i.iw = icmp ugt i8 %i.if, 1
  br i1 %i.iw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ix = zext i8 %i.if to i32                    ; 2 uses
  %i.iy = and i32 %i.hh, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %i.hi, %i.iz
  %i.jb = sub nsw i32 0, %i.ix
  %i.jc = and i32 %i.jb, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 %i.ja, %i.jd
  %i.jf = add i32 %i.hh, %i.ix                    ; 2 uses
  store i32 %i.jf, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %i.jg = zext i32 %i.hz to i64
  %i.jh = add i64 %i.je, %i.jg
  store i64 %i.hk, ptr %i.ah, align 8, !tbaa !53, !noalias !164
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.ji = icmp eq i32 %i.hw, 0                    ; 3 uses
  %i.jj = icmp eq i8 %i.if, 0
  br i1 %i.jj, label %bb.ak, label %bb.al, !prof !97

bb.ak:                                            ; preds = %bb.aj
  %i.jk = select i1 %i.ji, i64 %i.hk, i64 %i.hl
  %i.jl = select i1 %i.ji, i64 %i.hl, i64 %i.hk
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.jm = zext i1 %i.ji to i32
  %i.jn = add i32 %i.hz, %i.jm
  %i.jo = zext i32 %i.jn to i64
  %i.jp = and i32 %i.hh, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl i64 %i.hi, %i.jq
  %i.js = lshr i64 %i.jr, 63
  %i.jt = add i32 %i.hh, 1                        ; 3 uses
  store i32 %i.jt, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %i.ju = add nuw nsw i64 %i.js, %i.jo            ; 3 uses
  %i.jv = icmp eq i64 %i.ju, 3
  br i1 %i.jv, label %.thread.i, label %bb.am

.thread.i:                                        ; preds = %bb.al
  %i.jw = add i64 %i.hl, -1                       ; 2 uses
  %.not.i.i78.i = icmp eq i64 %i.jw, 0
  %i.jx = select i1 %.not.i.i78.i, i64 -1, i64 %i.jw
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ju
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !53, !noalias !164 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.jz, 0
  %i.ka = select i1 %.not.i.i.i, i64 -1, i64 %i.jz ; 2 uses
  %.not101.i.i.i = icmp eq i64 %i.ju, 1
  br i1 %.not101.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %i.kb = phi i64 [ %i.jx, %.thread.i ], [ %i.ka, %bb.am ]
  store i64 %i.hk, ptr %i.ah, align 8, !tbaa !53, !noalias !164
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai
  %i.kc = phi i32 [ %i.jf, %bb.ai ], [ %i.hh, %bb.ak ], [ %i.jt, %bb.an ], [ %i.jt, %bb.am ] ; 3 uses
  %.sink159.i = phi i64 [ %i.hl, %bb.ai ], [ %i.jl, %bb.ak ], [ %i.hl, %bb.an ], [ %i.hl, %bb.am ] ; 3 uses
  %.sink.i = phi i64 [ %i.jh, %bb.ai ], [ %i.jk, %bb.ak ], [ %i.kb, %bb.an ], [ %i.ka, %bb.am ] ; 15 uses
  %i.kd = phi i64 [ %i.hk, %bb.ai ], [ %i.hj, %bb.ak ], [ %i.hk, %bb.an ], [ %i.hj, %bb.am ] ; 2 uses
  store i64 %.sink159.i, ptr %i.ad, align 8, !tbaa !53, !noalias !164
  store i64 %.sink.i, ptr %i.x, align 8, !tbaa !53, !noalias !164
  %.not102.i.i.i = icmp eq i8 %i.id, 0
  br i1 %.not102.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ke = and i32 %i.kc, 63
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = shl i64 %i.hi, %i.kf
  %i.kh = sub nsw i32 0, %i.ih
  %i.ki = and i32 %i.kh, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = lshr i64 %i.kg, %i.kj
  %i.kl = add i32 %i.kc, %i.ih                    ; 2 uses
  store i32 %i.kl, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %i.km = add i64 %i.kk, %i.hu
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kn = phi i32 [ %i.kc, %bb.ao ], [ %i.kl, %bb.ap ] ; 8 uses
  %.sroa.6.0.i = phi i64 [ %i.hu, %bb.ao ], [ %i.km, %bb.ap ] ; 6 uses
  %i.ko = icmp ugt i8 %i.ij, 30
  br i1 %i.ko, label %bb.ar, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, !prof !60

bb.ar:                                            ; preds = %bb.aq
  %i.kp = icmp ugt i32 %i.kn, 64
  br i1 %i.kp, label %bb.as, label %bb.at, !prof !60

bb.as:                                            ; preds = %bb.ar
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.at:                                            ; preds = %bb.ar
  %.not.i83.i.i = icmp ult ptr %i.hg, %i.ak
  br i1 %.not.i83.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kq = lshr i32 %i.kn, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = sub nsw i64 0, %i.kr
  %i.kt = getelementptr inbounds i8, ptr %i.hg, i64 %i.ks ; 3 uses
  store ptr %i.kt, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  %i.ku = and i32 %i.kn, 7                        ; 2 uses
  store i32 %i.ku, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %.val.i.i30.i = load i64, ptr %i.kt, align 1, !tbaa !53, !noalias !164 ; 2 uses
  store i64 %.val.i.i30.i, ptr %7, align 8, !tbaa !87, !noalias !164
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.kv = icmp eq ptr %i.hg, %3
  br i1 %i.kv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kw = lshr i32 %i.kn, 3                       ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.hg, i64 %i.ky
  %i.la = icmp ult ptr %i.kz, %3
  %i.lb = ptrtoint ptr %i.hg to i64
  %i.lc = sub i64 %i.lb, %i.he
  %i.ld = trunc i64 %i.lc to i32
  %.021.i.i.i = select i1 %i.la, i32 %i.ld, i32 %i.kw ; 2 uses
  %i.le = zext i32 %.021.i.i.i to i64
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.hg, i64 %i.lf ; 3 uses
  store ptr %i.lg, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  %i.lh = shl i32 %.021.i.i.i, 3
  %i.li = sub i32 %i.kn, %i.lh                    ; 2 uses
  store i32 %i.li, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %.val.i31.i = load i64, ptr %i.lg, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i31.i, ptr %7, align 8, !tbaa !87, !noalias !164
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.aq
  %i.lj = phi ptr [ %i.lg, %bb.aw ], [ %i.hg, %bb.av ], [ %i.kt, %bb.au ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.as ], [ %i.hg, %bb.aq ] ; 8 uses
  %i.lk = phi i32 [ %i.li, %bb.aw ], [ %i.kn, %bb.av ], [ %i.ku, %bb.au ], [ %i.kn, %bb.as ], [ %i.kn, %bb.aq ] ; 3 uses
  %i.ll = phi i64 [ %.val.i31.i, %bb.aw ], [ %i.hi, %bb.av ], [ %.val.i.i30.i, %bb.au ], [ %i.hi, %bb.as ], [ %i.hi, %bb.aq ] ; 7 uses
  %.not103.i.i.i = icmp eq i8 %i.ib, 0
  br i1 %.not103.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %i.lm = and i32 %i.lk, 63
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl i64 %i.ll, %i.ln
  %i.lp = sub nsw i32 0, %i.ig
  %i.lq = and i32 %i.lp, 63
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = lshr i64 %i.lo, %i.lr
  %i.lt = add i32 %i.lk, %i.ig                    ; 2 uses
  store i32 %i.lt, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %i.lu = add i64 %i.ls, %i.hx
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %i.lv = phi i32 [ %i.lk, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ], [ %i.lt, %bb.ax ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.hx, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ], [ %i.lu, %bb.ax ] ; 7 uses
  br i1 %.not.i, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lw = add i32 %i.lv, %i.ip                    ; 2 uses
  %i.lx = sub i32 0, %i.lw
  %i.ly = and i32 %i.lx, 63
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = lshr i64 %i.ll, %i.lz
  %i.mb = zext nneg i8 %i.io to i64
  %notmask.i.i93.i.i = shl nsw i64 -1, %i.mb
  %i.mc = xor i64 %notmask.i.i93.i.i, -1
  %i.md = and i64 %i.ma, %i.mc
  %i.me = zext i16 %i.ik to i64
  %i.mf = add nuw i64 %i.md, %i.me                ; 5 uses
  store i64 %i.mf, ptr %i.cs, align 8, !tbaa !89, !noalias !164
  %i.mg = add i32 %i.lw, %i.is                    ; 2 uses
  %i.mh = sub i32 0, %i.mg
  %i.mi = and i32 %i.mh, 63
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = lshr i64 %i.ll, %i.mj
  %i.ml = zext nneg i8 %i.ir to i64
  %notmask.i.i92.i.i = shl nsw i64 -1, %i.ml
  %i.mm = xor i64 %notmask.i.i92.i.i, -1
  %i.mn = and i64 %i.mk, %i.mm
  %i.mo = zext i16 %i.il to i64
  %i.mp = add nuw i64 %i.mn, %i.mo                ; 5 uses
  store i64 %i.mp, ptr %i.fo, align 8, !tbaa !89, !noalias !164
  %i.mq = add i32 %i.mg, %i.iv                    ; 9 uses
  %i.mr = sub i32 0, %i.mq
  %i.ms = and i32 %i.mr, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = lshr i64 %i.ll, %i.mt
  %i.mv = zext nneg i8 %i.iu to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.mv
  %i.mw = xor i64 %notmask.i.i.i.i, -1
  %i.mx = and i64 %i.mu, %i.mw
  store i32 %i.mq, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %i.my = zext i16 %i.im to i64
  %i.mz = add nuw i64 %i.mx, %i.my                ; 5 uses
  store i64 %i.mz, ptr %i.ea, align 8, !tbaa !89, !noalias !164
  %i.na = icmp ugt i32 %i.mq, 64
  br i1 %i.na, label %bb.ba, label %bb.bb, !prof !60

bb.ba:                                            ; preds = %bb.az
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %.not.i85.i.i = icmp ult ptr %i.lj, %i.ak
  br i1 %.not.i85.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nb = lshr i32 %i.mq, 3
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = sub nsw i64 0, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.lj, i64 %i.nd ; 3 uses
  store ptr %i.ne, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  %i.nf = and i32 %i.mq, 7                        ; 2 uses
  store i32 %i.nf, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %.val.i.i34.i = load i64, ptr %i.ne, align 1, !tbaa !53, !noalias !164 ; 2 uses
  store i64 %.val.i.i34.i, ptr %7, align 8, !tbaa !87, !noalias !164
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ng = icmp eq ptr %i.lj, %3
  br i1 %i.ng, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nh = lshr i32 %i.mq, 3                       ; 2 uses
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = sub nsw i64 0, %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.lj, i64 %i.nj
  %i.nl = icmp ult ptr %i.nk, %3
  %i.nm = ptrtoint ptr %i.lj to i64
  %i.nn = sub i64 %i.nm, %i.he
  %i.no = trunc i64 %i.nn to i32
  %.021.i87.i.i = select i1 %i.nl, i32 %i.no, i32 %i.nh ; 2 uses
  %i.np = zext i32 %.021.i87.i.i to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.lj, i64 %i.nq ; 3 uses
  store ptr %i.nr, ptr %i.dg, align 8, !tbaa !86, !noalias !164
  %i.ns = shl i32 %.021.i87.i.i, 3
  %i.nt = sub i32 %i.mq, %i.ns                    ; 2 uses
  store i32 %i.nt, ptr %i.cw, align 8, !tbaa !91, !noalias !164
  %.val.i35.i = load i64, ptr %i.nr, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i35.i, ptr %7, align 8, !tbaa !87, !noalias !164
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.nu = phi ptr [ %i.lj, %bb.bd ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ba ], [ %i.ne, %bb.bc ], [ %i.nr, %bb.be ], [ %i.lj, %bb.ay ] ; 2 uses
  %i.nv = phi i32 [ %i.mq, %bb.bd ], [ %i.mq, %bb.ba ], [ %i.nf, %bb.bc ], [ %i.nt, %bb.be ], [ %i.lv, %bb.ay ] ; 2 uses
  %i.nw = phi i64 [ %i.ll, %bb.bd ], [ %i.ll, %bb.ba ], [ %.val.i.i34.i, %bb.bc ], [ %.val.i35.i, %bb.be ], [ %i.ll, %bb.ay ]
  %i.nx = phi i64 [ %i.mp, %bb.bd ], [ %i.mp, %bb.ba ], [ %i.mp, %bb.bc ], [ %i.mp, %bb.be ], [ %i.hm, %bb.ay ]
  %i.ny = phi i64 [ %i.mz, %bb.bd ], [ %i.mz, %bb.ba ], [ %i.mz, %bb.bc ], [ %i.mz, %bb.be ], [ %i.hn, %bb.ay ]
  %i.nz = phi i64 [ %i.mf, %bb.bd ], [ %i.mf, %bb.ba ], [ %i.mf, %bb.bc ], [ %i.mf, %bb.be ], [ %i.ho, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.oa = getelementptr i8, ptr %.068.i103.i, i64 %.sroa.0.0.i ; 7 uses
  %i.ob = add i64 %.sroa.0.0.i, %.sroa.6.0.i      ; 9 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0.i ; 2 uses
  %i.oe = sub i64 0, %.sink.i
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.oe ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.o
  %i.oh = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 %i.ob
  %i.oi = icmp ugt ptr %i.oh, %i.hb
  %or.cond.i.i.i = select i1 %i.og, i1 true, i1 %i.oi, !prof !112
  br i1 %or.cond.i.i.i, label %bb.bf, label %.critedge.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  %i.oj = load <2 x i64>, ptr %i.oc, align 1, !tbaa !9
  store <2 x i64> %i.oj, ptr %.068.i103.i, align 1, !tbaa !9
  %i.ok = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.ok, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !prof !60

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i.i
  store i64 %.sroa.0.0.i, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.6.0.i, ptr %.sroa.643.0..sroa_idx.i, align 8, !tbaa !53
  store i64 %.sink.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !53
  %i.ol = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.068.i103.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.oo = add i64 %.sroa.0.0.i, -16
  %i.op = load <2 x i64>, ptr %i.on, align 1, !tbaa !9
  store <2 x i64> %i.op, ptr %i.om, align 1, !tbaa !9
  %i.oq = icmp slt i64 %i.oo, 17
  br i1 %i.oq, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.or = getelementptr inbounds nuw i8, ptr %.068.i103.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.130.i.i.i = phi ptr [ %i.or, %bb.bh ], [ %i.ow, %bb.bi ] ; 3 uses
  %.pn.i.i.i = phi ptr [ %i.on, %bb.bh ], [ %i.ou, %bb.bi ] ; 2 uses
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.os = load <2 x i64>, ptr %.1.i.i.i, align 1, !tbaa !9
  store <2 x i64> %i.os, ptr %.130.i.i.i, align 1, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %i.ov = load <2 x i64>, ptr %i.ou, align 1, !tbaa !9
  store <2 x i64> %i.ov, ptr %i.ot, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.oa
  br i1 %i.ox, label %bb.bi, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bi, %bb.bg, %.critedge.i.i.i
  store ptr %i.od, ptr %i.a, align 8, !tbaa !46
  %i.oy = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.hc                    ; 3 uses
  %i.pa = icmp ugt i64 %.sink.i, %i.oz
  br i1 %i.pa, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.pb = sub i64 %i.oy, %i.hd
  %i.pc = icmp ugt i64 %.sink.i, %i.pb
  br i1 %i.pc, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i, label %bb.bk, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread85.i

bb.bk:                                            ; preds = %bb.bj
  %i.pd = ptrtoint ptr %i.of to i64
  %i.pe = sub i64 %i.pd, %i.hc                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.u, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.6.0.i         ; 2 uses
  %.not.i82.i.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i82.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pf, i64 %.sroa.6.0.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %gepdiff.i.i.i = sub nsw i64 0, %i.pe           ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pf, i64 %gepdiff.i.i.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oa, i64 %gepdiff.i.i.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.sroa.643.0.i = phi i64 [ %i.pg, %bb.bm ], [ %.sroa.6.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %.072.i = phi ptr [ %i.q, %bb.bm ], [ %i.of, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.0.i = phi ptr [ %i.ph, %bb.bm ], [ %i.oa, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %i.pi = icmp ugt i64 %.sink.i, 15
  br i1 %i.pi, label %bb.bo, label %bb.br, !prof !97

bb.bo:                                            ; preds = %bb.bn
  %i.pj = getelementptr inbounds i8, ptr %.0.i, i64 %.sroa.643.0.i
  %i.pk = load <2 x i64>, ptr %.072.i, align 1, !tbaa !9
  store <2 x i64> %i.pk, ptr %.0.i, align 1, !tbaa !9
  %i.pl = icmp slt i64 %.sroa.643.0.i, 17
  br i1 %i.pl, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.130.i97.i.i = phi ptr [ %i.pm, %bb.bp ], [ %i.pr, %bb.bq ] ; 3 uses
  %.pn.i98.i.i = phi ptr [ %.072.i, %bb.bp ], [ %i.pp, %bb.bq ] ; 2 uses
  %.1.i99.i.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 16
  %i.pn = load <2 x i64>, ptr %.1.i99.i.i, align 1, !tbaa !9
  store <2 x i64> %i.pn, ptr %.130.i97.i.i, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 16
  %i.pp = getelementptr inbounds nuw i8, ptr %.pn.i98.i.i, i64 32 ; 2 uses
  %i.pq = load <2 x i64>, ptr %i.pp, align 1, !tbaa !9
  store <2 x i64> %i.pq, ptr %i.po, align 1, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.130.i97.i.i, i64 32 ; 2 uses
  %i.ps = icmp ult ptr %i.pr, %i.pj
  br i1 %i.ps, label %bb.bq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i, !llvm.loop !108

bb.br:                                            ; preds = %bb.bn
  %i.pt = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = load i8, ptr %.072.i, align 1, !tbaa !9
  store i8 %i.pw, ptr %.0.i, align 1, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %.072.i, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !9
  %i.qa = getelementptr inbounds nuw i8, ptr %.072.i, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.072.i, i64 3
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !9
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !3
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %.072.i, i64 %i.qi ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ql = load i32, ptr %i.qj, align 1
  store i32 %i.ql, ptr %i.qk, align 1
  %i.qm = sext i32 %i.pv to i64
  %i.qn = sub nsw i64 0, %i.qm
  %i.qo = getelementptr inbounds i8, ptr %i.qj, i64 %i.qn
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.qp = load i64, ptr %.072.i, align 1
  store i64 %i.qp, ptr %.0.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.bt, %bb.bs
  %.1.i = phi ptr [ %i.qo, %bb.bs ], [ %.072.i, %bb.bt ] ; 2 uses
  %.1.i18 = ptrtoaddr ptr %.1.i to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 6 uses
  %i.qs = icmp ugt i64 %.sroa.643.0.i, 8
  br i1 %i.qs, label %bb.bu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.i

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = ptrtoint ptr %i.qq to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %i.qw = getelementptr i8, ptr %.0.i, i64 %.sroa.643.0.i ; 2 uses
  %i.qx = icmp slt i64 %i.qv, 16
  br i1 %i.qx, label %.preheader97.i.preheader, label %bb.bv

.preheader97.i.preheader:                         ; preds = %bb.bu
  %i.qy = add i64 %.sroa.6.0.i, %i.hc
  %umin = tail call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.oz)
  %i.qz = add i64 %i.qy, %umin
  %umax19 = tail call i64 @llvm.umax.i64(i64 %.sink.i, i64 %i.oz) ; 3 uses
  %i.ra = add i64 %i.qz, %umax19
  %i.rb = sub i64 %i.ra, %.sink.i
  %i.rc = add i64 %i.hf, %umax19
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.rb, i64 %i.rc)
  %i.rd = add i64 %umax20, -9
  %i.re = add i64 %umax19, %i.hc
  %i.rf = sub i64 %i.rd, %i.re                    ; 2 uses
  %i.rg = lshr i64 %i.rf, 3
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rf, 72
  br i1 %min.iters.check, label %.preheader97.i.preheader25, label %vector.memcheck

end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %.sroa.12478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hv = ptrtoint ptr %i.h to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.12315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hz = add i64 %i.ah, 16
  %i.ia = add i64 %i.ah, 16
  %i.ib = add i64 %i.ah, 16
  %i.ic = ptrtoint ptr %3 to i64
  %i.id = ptrtoint ptr %3 to i64
  br label %bb.bd

bb.af:                                            ; preds = %.lr.ph, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit
  %i.ie = phi ptr [ %i.gx, %.lr.ph ], [ %i.oq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.if = phi i64 [ %i.ad, %.lr.ph ], [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.ig = phi i64 [ %i.gb, %.lr.ph ], [ %i.or, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.ih = phi i64 [ %i.en, %.lr.ph ], [ %i.os, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.ii = phi i64 [ %i.df, %.lr.ph ], [ %i.ot, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 3 uses
  %i.ij = phi i64 [ %i.z, %.lr.ph ], [ %.sink854, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 6 uses
  %i.ik = phi i64 [ %i.w, %.lr.ph ], [ %.sink, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 6 uses
  %.0241.i691 = phi i64 [ %i.ai, %.lr.ph ], [ %i.pf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ]
  %i.il = phi i64 [ %i.df, %.lr.ph ], [ %i.ox, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.im = phi i64 [ %i.gb, %.lr.ph ], [ %i.ow, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %i.in = phi i64 [ %i.en, %.lr.ph ], [ %i.ov, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 2 uses
  %.val.i.i222678690 = phi i64 [ %.promoted677, %.lr.ph ], [ %.val.i.i222679, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 6 uses
  %.val4.i215687689 = phi i32 [ %.promoted681, %.lr.ph ], [ %.val4.i215682, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 5 uses
  %i.io = phi ptr [ %.promoted688, %.lr.ph ], [ %i.ou, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit ] ; 8 uses
  %.not640 = icmp eq i64 %indvars.iv, %i.hf
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.il ; 4 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.im ; 4 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.in ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !49, !noalias !171
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !49, !noalias !171 ; 2 uses
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !49, !noalias !171 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !66, !noalias !171 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.jd = load i8, ptr %i.jc, align 2, !tbaa !66, !noalias !171 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.jf = load i8, ptr %i.je, align 2, !tbaa !66, !noalias !171 ; 4 uses
  %i.jg = zext i8 %i.jb to i32                    ; 2 uses
  %i.jh = zext i8 %i.jd to i32                    ; 2 uses
  %i.ji = add i8 %i.jd, %i.jb
  %i.jj = add i8 %i.ji, %i.jf
  %i.jk = load i16, ptr %i.ip, align 4, !tbaa !65, !noalias !171
  %i.jl = load i16, ptr %i.iq, align 4, !tbaa !65, !noalias !171
  %i.jm = load i16, ptr %i.ir, align 4, !tbaa !65, !noalias !171
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ip, i64 3
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !64, !noalias !171 ; 2 uses
  %i.jp = zext i8 %i.jo to i32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !64, !noalias !171 ; 2 uses
  %i.js = zext i8 %i.jr to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ir, i64 3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !64, !noalias !171 ; 2 uses
  %i.jv = zext i8 %i.ju to i32
  %i.jw = icmp ugt i8 %i.jf, 1
  br i1 %i.jw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jx = zext i8 %i.jf to i32                    ; 2 uses
  %i.jy = and i32 %.val4.i215687689, 63
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = shl i64 %.val.i.i222678690, %i.jz
  %i.kb = sub nsw i32 0, %i.jx
  %i.kc = and i32 %i.kb, 63
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = lshr i64 %i.ka, %i.kd
  %i.kf = add i32 %.val4.i215687689, %i.jx        ; 2 uses
  store i32 %i.kf, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.kg = zext i32 %i.iz to i64
  %i.kh = add i64 %i.ke, %i.kg
  store i64 %i.ij, ptr %i.hd, align 8, !tbaa !53, !noalias !171
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.ki = icmp eq i32 %i.iw, 0                    ; 3 uses
  %i.kj = icmp eq i8 %i.jf, 0
  br i1 %i.kj, label %bb.ai, label %bb.aj, !prof !97

bb.ai:                                            ; preds = %bb.ah
  %i.kk = select i1 %i.ki, i64 %i.ij, i64 %i.ik
  %i.kl = select i1 %i.ki, i64 %i.ik, i64 %i.ij
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.km = zext i1 %i.ki to i32
  %i.kn = add i32 %i.iz, %i.km
  %i.ko = zext i32 %i.kn to i64
  %i.kp = and i32 %.val4.i215687689, 63
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl i64 %.val.i.i222678690, %i.kq
  %i.ks = lshr i64 %i.kr, 63
  %i.kt = add i32 %.val4.i215687689, 1            ; 3 uses
  store i32 %i.kt, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.ku = add nuw nsw i64 %i.ks, %i.ko            ; 3 uses
  %i.kv = icmp eq i64 %i.ku, 3
  br i1 %i.kv, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.kw = add i64 %i.ik, -1                       ; 2 uses
  %.not.i6571 = icmp eq i64 %i.kw, 0
  %i.kx = select i1 %.not.i6571, i64 -1, i64 %i.kw
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ku
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !53, !noalias !171 ; 2 uses
  %.not.i6 = icmp eq i64 %i.kz, 0
  %i.la = select i1 %.not.i6, i64 -1, i64 %i.kz   ; 2 uses
  %.not101.i = icmp eq i64 %i.ku, 1
  br i1 %.not101.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.lb = phi i64 [ %i.kx, %.thread ], [ %i.la, %bb.ak ]
  store i64 %i.ij, ptr %i.hd, align 8, !tbaa !53, !noalias !171
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ag
  %.sink854 = phi i64 [ %i.ik, %bb.ag ], [ %i.kl, %bb.ai ], [ %i.ik, %bb.al ], [ %i.ik, %bb.ak ] ; 3 uses
  %.sink = phi i64 [ %i.kh, %bb.ag ], [ %i.kk, %bb.ai ], [ %i.lb, %bb.al ], [ %i.la, %bb.ak ] ; 6 uses
  %i.lc = phi i64 [ %i.ij, %bb.ag ], [ %i.if, %bb.ai ], [ %i.ij, %bb.al ], [ %i.if, %bb.ak ] ; 2 uses
  %.val4.i215686 = phi i32 [ %i.kf, %bb.ag ], [ %.val4.i215687689, %bb.ai ], [ %i.kt, %bb.al ], [ %i.kt, %bb.ak ] ; 3 uses
  store i64 %.sink854, ptr %i.hc, align 8, !tbaa !53, !noalias !171
  store i64 %.sink, ptr %i.u, align 8, !tbaa !53, !noalias !171
  %.not102.i = icmp eq i8 %i.jd, 0
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ld = and i32 %.val4.i215686, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = shl i64 %.val.i.i222678690, %i.le
  %i.lg = sub nsw i32 0, %i.jh
  %i.lh = and i32 %i.lg, 63
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = lshr i64 %i.lf, %i.li
  %i.lk = add i32 %.val4.i215686, %i.jh           ; 2 uses
  store i32 %i.lk, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.ll = add i64 %i.lj, %i.iu
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.val4.i215685 = phi i32 [ %.val4.i215686, %bb.am ], [ %i.lk, %bb.an ] ; 8 uses
  %.sroa.7.0 = phi i64 [ %i.iu, %bb.am ], [ %i.ll, %bb.an ] ; 2 uses
  %i.lm = icmp ugt i8 %i.jj, 30
  br i1 %i.lm, label %bb.ap, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61, !prof !60

bb.ap:                                            ; preds = %bb.ao
  %i.ln = icmp ugt i32 %.val4.i215685, 64
  br i1 %i.ln, label %bb.aq, label %bb.ar, !prof !60

bb.aq:                                            ; preds = %bb.ap
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61

bb.ar:                                            ; preds = %bb.ap
  %.not.i55 = icmp ult ptr %i.io, %i.al
  br i1 %.not.i55, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lo = lshr i32 %.val4.i215685, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = sub nsw i64 0, %i.lp
  %i.lr = getelementptr inbounds i8, ptr %i.io, i64 %i.lq ; 4 uses
  store ptr %i.lr, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  %i.ls = and i32 %.val4.i215685, 7               ; 2 uses
  store i32 %i.ls, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %.val.i.i218 = load i64, ptr %i.lr, align 1, !tbaa !53, !noalias !171 ; 2 uses
  store i64 %.val.i.i218, ptr %13, align 8, !tbaa !87, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61

bb.at:                                            ; preds = %bb.ar
  %i.lt = icmp eq ptr %i.io, %3
  br i1 %i.lt, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lu = lshr i32 %.val4.i215685, 3              ; 2 uses
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr inbounds i8, ptr %i.io, i64 %i.lw
  %i.ly = icmp ult ptr %i.lx, %3
  %i.lz = ptrtoint ptr %i.io to i64
  %i.ma = sub i64 %i.lz, %i.he
  %i.mb = trunc i64 %i.ma to i32
  %.021.i57 = select i1 %i.ly, i32 %i.mb, i32 %i.lu ; 2 uses
  %i.mc = zext i32 %.021.i57 to i64
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.io, i64 %i.md ; 4 uses
  store ptr %i.me, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  %i.mf = shl i32 %.021.i57, 3
  %i.mg = sub i32 %.val4.i215685, %i.mf           ; 2 uses
  store i32 %i.mg, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %.val.i219 = load i64, ptr %i.me, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i219, ptr %13, align 8, !tbaa !87, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61: ; preds = %bb.at, %bb.au, %bb.as, %bb.aq, %bb.ao
  %i.mh = phi ptr [ %i.ie, %bb.at ], [ %i.me, %bb.au ], [ %i.lr, %bb.as ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aq ], [ %i.ie, %bb.ao ] ; 2 uses
  %i.mi = phi ptr [ %i.io, %bb.at ], [ %i.me, %bb.au ], [ %i.lr, %bb.as ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aq ], [ %i.io, %bb.ao ] ; 8 uses
  %.val4.i215684 = phi i32 [ %.val4.i215685, %bb.at ], [ %i.mg, %bb.au ], [ %i.ls, %bb.as ], [ %.val4.i215685, %bb.aq ], [ %.val4.i215685, %bb.ao ] ; 3 uses
  %.val.i.i222680 = phi i64 [ %.val.i.i222678690, %bb.at ], [ %.val.i219, %bb.au ], [ %.val.i.i218, %bb.as ], [ %.val.i.i222678690, %bb.aq ], [ %.val.i.i222678690, %bb.ao ] ; 7 uses
  %.not103.i = icmp eq i8 %i.jb, 0
  br i1 %.not103.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61
  %i.mj = and i32 %.val4.i215684, 63
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl i64 %.val.i.i222680, %i.mk
  %i.mm = sub nsw i32 0, %i.jg
  %i.mn = and i32 %i.mm, 63
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = lshr i64 %i.ml, %i.mo
  %i.mq = add i32 %.val4.i215684, %i.jg           ; 2 uses
  store i32 %i.mq, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.mr = add i64 %i.mp, %i.ix
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61
  %.val4.i215683 = phi i32 [ %.val4.i215684, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61 ], [ %i.mq, %bb.av ] ; 2 uses
  %.sroa.0278.0 = phi i64 [ %i.ix, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit61 ], [ %i.mr, %bb.av ] ; 2 uses
  br i1 %.not640, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ms = add i32 %.val4.i215683, %i.jp           ; 2 uses
  %i.mt = sub i32 0, %i.ms
  %i.mu = and i32 %i.mt, 63
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = lshr i64 %.val.i.i222680, %i.mv
  %i.mx = zext nneg i8 %i.jo to i64
  %notmask.i.i73 = shl nsw i64 -1, %i.mx
  %i.my = xor i64 %notmask.i.i73, -1
  %i.mz = and i64 %i.mw, %i.my
  %i.na = zext i16 %i.jk to i64
  %i.nb = add nuw i64 %i.mz, %i.na                ; 9 uses
  store i64 %i.nb, ptr %i.ct, align 8, !tbaa !89, !noalias !171
  %i.nc = add i32 %i.ms, %i.js                    ; 2 uses
  %i.nd = sub i32 0, %i.nc
  %i.ne = and i32 %i.nd, 63
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = lshr i64 %.val.i.i222680, %i.nf
  %i.nh = zext nneg i8 %i.jr to i64
  %notmask.i.i72 = shl nsw i64 -1, %i.nh
  %i.ni = xor i64 %notmask.i.i72, -1
  %i.nj = and i64 %i.ng, %i.ni
  %i.nk = zext i16 %i.jl to i64
  %i.nl = add nuw i64 %i.nj, %i.nk                ; 9 uses
  store i64 %i.nl, ptr %i.fp, align 8, !tbaa !89, !noalias !171
  %i.nm = add i32 %i.nc, %i.jv                    ; 9 uses
  %i.nn = sub i32 0, %i.nm
  %i.no = and i32 %i.nn, 63
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = lshr i64 %.val.i.i222680, %i.np
  %i.nr = zext nneg i8 %i.ju to i64
  %notmask.i.i71 = shl nsw i64 -1, %i.nr
  %i.ns = xor i64 %notmask.i.i71, -1
  %i.nt = and i64 %i.nq, %i.ns
  store i32 %i.nm, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %i.nu = zext i16 %i.jm to i64
  %i.nv = add nuw i64 %i.nt, %i.nu                ; 9 uses
  store i64 %i.nv, ptr %i.eb, align 8, !tbaa !89, !noalias !171
  %i.nw = icmp ugt i32 %i.nm, 64
  br i1 %i.nw, label %bb.ay, label %bb.az, !prof !60

bb.ay:                                            ; preds = %bb.ax
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit

bb.az:                                            ; preds = %bb.ax
  %.not.i62 = icmp ult ptr %i.mi, %i.al
  br i1 %.not.i62, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nx = lshr i32 %i.nm, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = sub nsw i64 0, %i.ny
  %i.oa = getelementptr inbounds i8, ptr %i.mi, i64 %i.nz ; 4 uses
  store ptr %i.oa, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  %i.ob = and i32 %i.nm, 7                        ; 2 uses
  store i32 %i.ob, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %.val.i.i222 = load i64, ptr %i.oa, align 1, !tbaa !53, !noalias !171 ; 2 uses
  store i64 %.val.i.i222, ptr %13, align 8, !tbaa !87, !noalias !171
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit

bb.bb:                                            ; preds = %bb.az
  %i.oc = icmp eq ptr %i.mi, %3
  br i1 %i.oc, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.od = lshr i32 %i.nm, 3                       ; 2 uses
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = sub nsw i64 0, %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.mi, i64 %i.of
  %i.oh = icmp ult ptr %i.og, %3
  %i.oi = ptrtoint ptr %i.mi to i64
  %i.oj = sub i64 %i.oi, %i.he
  %i.ok = trunc i64 %i.oj to i32
  %.021.i64 = select i1 %i.oh, i32 %i.ok, i32 %i.od ; 2 uses
  %i.ol = zext i32 %.021.i64 to i64
  %i.om = sub nsw i64 0, %i.ol
  %i.on = getelementptr inbounds i8, ptr %i.mi, i64 %i.om ; 4 uses
  store ptr %i.on, ptr %i.dh, align 8, !tbaa !86, !noalias !171
  %i.oo = shl i32 %.021.i64, 3
  %i.op = sub i32 %i.nm, %i.oo                    ; 2 uses
  store i32 %i.op, ptr %i.cx, align 8, !tbaa !91, !noalias !171
  %.val.i223 = load i64, ptr %i.on, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i223, ptr %13, align 8, !tbaa !87, !noalias !171
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit: ; preds = %bb.bb, %bb.bc, %bb.ba, %bb.ay, %bb.aw
  %i.oq = phi ptr [ %i.mh, %bb.bb ], [ %i.on, %bb.bc ], [ %i.oa, %bb.ba ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ay ], [ %i.mh, %bb.aw ] ; 2 uses
  %i.or = phi i64 [ %i.nl, %bb.bb ], [ %i.nl, %bb.bc ], [ %i.nl, %bb.ba ], [ %i.nl, %bb.ay ], [ %i.ig, %bb.aw ] ; 2 uses
  %i.os = phi i64 [ %i.nv, %bb.bb ], [ %i.nv, %bb.bc ], [ %i.nv, %bb.ba ], [ %i.nv, %bb.ay ], [ %i.ih, %bb.aw ] ; 2 uses
  %i.ot = phi i64 [ %i.nb, %bb.bb ], [ %i.nb, %bb.bc ], [ %i.nb, %bb.ba ], [ %i.nb, %bb.ay ], [ %i.ii, %bb.aw ] ; 2 uses
  %i.ou = phi ptr [ %i.mi, %bb.bb ], [ %i.on, %bb.bc ], [ %i.oa, %bb.ba ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ay ], [ %i.mi, %bb.aw ] ; 2 uses
  %.val4.i215682 = phi i32 [ %i.nm, %bb.bb ], [ %i.op, %bb.bc ], [ %i.ob, %bb.ba ], [ %i.nm, %bb.ay ], [ %.val4.i215683, %bb.aw ] ; 2 uses
  %.val.i.i222679 = phi i64 [ %.val.i.i222680, %bb.bb ], [ %.val.i223, %bb.bc ], [ %.val.i.i222, %bb.ba ], [ %.val.i.i222680, %bb.ay ], [ %.val.i.i222680, %bb.aw ] ; 2 uses
  %i.ov = phi i64 [ %i.nv, %bb.bb ], [ %i.nv, %bb.bc ], [ %i.nv, %bb.ba ], [ %i.nv, %bb.ay ], [ %i.in, %bb.aw ]
  %i.ow = phi i64 [ %i.nl, %bb.bb ], [ %i.nl, %bb.bc ], [ %i.nl, %bb.ba ], [ %i.nl, %bb.ay ], [ %i.im, %bb.aw ]
  %i.ox = phi i64 [ %i.nb, %bb.bb ], [ %i.nb, %bb.bc ], [ %i.nb, %bb.ba ], [ %i.nb, %bb.ay ], [ %i.il, %bb.aw ]
  %i.oy = add i64 %.sroa.0278.0, %.0241.i691      ; 3 uses
  %i.oz = icmp ugt i64 %.sink, %i.oy
  %i.pa = select i1 %i.oz, ptr %i.r, ptr %i.n
  %i.pb = getelementptr inbounds i8, ptr %i.pa, i64 %i.oy
  %i.pc = sub i64 0, %.sink
  %i.pd = getelementptr inbounds i8, ptr %i.pb, i64 %i.pc ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.pd, i32 0, i32 3, i32 1)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.pe, i32 0, i32 3, i32 1)
  %i.pf = add i64 %i.oy, %.sroa.7.0               ; 2 uses
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %indvars.iv ; 3 uses
  store i64 %.sroa.0278.0, ptr %i.pg, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx280, align 8, !tbaa !53
  %.sroa.10.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i64 %.sink, ptr %.sroa.10.0..sroa_idx282, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader661, label %bb.af, !llvm.loop !98

bb.bd:                                            ; preds = %.lr.ph703, %bb.es
  %i.ph = phi ptr [ %i.hg, %.lr.ph703 ], [ %i.vt, %bb.es ] ; 8 uses
  %i.pi = phi i32 [ %i.hh, %.lr.ph703 ], [ %i.vu, %bb.es ] ; 5 uses
  %.val.i231345 = phi i64 [ %.val.i231348, %.lr.ph703 ], [ %.val.i231346, %bb.es ] ; 6 uses
  %i.pj = phi i64 [ %i.hj, %.lr.ph703 ], [ %i.sd, %bb.es ] ; 2 uses
  %i.pk = phi i64 [ %i.hk, %.lr.ph703 ], [ %.sink856, %bb.es ] ; 6 uses
  %i.pl = phi i64 [ %i.hl, %.lr.ph703 ], [ %.sink855, %bb.es ] ; 6 uses
  %i.pm = phi i64 [ %i.hm, %.lr.ph703 ], [ %i.vv, %bb.es ] ; 2 uses
  %i.pn = phi i64 [ %i.hn, %.lr.ph703 ], [ %i.vw, %bb.es ] ; 2 uses
  %i.po = phi i64 [ %i.ho, %.lr.ph703 ], [ %i.vx, %bb.es ] ; 2 uses
  %.0207.i699 = phi ptr [ %1, %.lr.ph703 ], [ %.6213.i.ph, %bb.es ] ; 26 uses
  %.0226.i698 = phi ptr [ %i.l, %.lr.ph703 ], [ %.3229.i.ph, %bb.es ] ; 5 uses
  %.1239.i697 = phi i32 [ %.0238.i.lcssa, %.lr.ph703 ], [ %i.amc, %bb.es ] ; 5 uses
  %.1242.i696 = phi i64 [ %.0241.i.lcssa, %.lr.ph703 ], [ %.6247.i.ph, %bb.es ] ; 2 uses
  %.0207.i699106 = ptrtoaddr ptr %.0207.i699 to i64 ; 2 uses
  %.not636 = icmp eq i32 %.1239.i697, %i.hq
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.po ; 4 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.pm ; 4 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.pn ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !49, !noalias !174
  %i.pu = zext i32 %i.pt to i64                   ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !49, !noalias !174 ; 2 uses
  %i.px = zext i32 %i.pw to i64                   ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !49, !noalias !174 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 2
  %i.qb = load i8, ptr %i.qa, align 2, !tbaa !66, !noalias !174 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  %i.qd = load i8, ptr %i.qc, align 2, !tbaa !66, !noalias !174 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  %i.qf = load i8, ptr %i.qe, align 2, !tbaa !66, !noalias !174 ; 4 uses
  %i.qg = zext i8 %i.qb to i32                    ; 2 uses
  %i.qh = zext i8 %i.qd to i32                    ; 2 uses
  %i.qi = add i8 %i.qd, %i.qb
  %i.qj = add i8 %i.qi, %i.qf
  %i.qk = load i16, ptr %i.pp, align 4, !tbaa !65, !noalias !174
  %i.ql = load i16, ptr %i.pq, align 4, !tbaa !65, !noalias !174
  %i.qm = load i16, ptr %i.pr, align 4, !tbaa !65, !noalias !174
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pp, i64 3
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !64, !noalias !174 ; 2 uses
  %i.qp = zext i8 %i.qo to i32
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pq, i64 3
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !64, !noalias !174 ; 2 uses
  %i.qs = zext i8 %i.qr to i32
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !64, !noalias !174 ; 2 uses
  %i.qv = zext i8 %i.qu to i32
  %i.qw = icmp ugt i8 %i.qf, 1
  br i1 %i.qw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.qx = zext i8 %i.qf to i32                    ; 2 uses
  %i.qy = and i32 %i.pi, 63
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = shl i64 %.val.i231345, %i.qz
  %i.rb = sub nsw i32 0, %i.qx
  %i.rc = and i32 %i.rb, 63
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = lshr i64 %i.ra, %i.rd
  %i.rf = add i32 %i.pi, %i.qx                    ; 2 uses
  store i32 %i.rf, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.rg = zext i32 %i.pz to i64
  %i.rh = add i64 %i.re, %i.rg
  store i64 %i.pk, ptr %i.hs, align 8, !tbaa !53, !noalias !174
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.ri = icmp eq i32 %i.pw, 0                    ; 3 uses
  %i.rj = icmp eq i8 %i.qf, 0
  br i1 %i.rj, label %bb.bg, label %bb.bh, !prof !97

bb.bg:                                            ; preds = %bb.bf
  %i.rk = select i1 %i.ri, i64 %i.pk, i64 %i.pl
  %i.rl = select i1 %i.ri, i64 %i.pl, i64 %i.pk
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.rm = zext i1 %i.ri to i32
  %i.rn = add i32 %i.pz, %i.rm
  %i.ro = zext i32 %i.rn to i64
  %i.rp = and i32 %i.pi, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl i64 %.val.i231345, %i.rq
  %i.rs = lshr i64 %i.rr, 63
  %i.rt = add i32 %i.pi, 1                        ; 3 uses
  store i32 %i.rt, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.ru = add nuw nsw i64 %i.rs, %i.ro            ; 3 uses
  %i.rv = icmp eq i64 %i.ru, 3
  br i1 %i.rv, label %.thread573, label %bb.bi

.thread573:                                       ; preds = %bb.bh
  %i.rw = add i64 %i.pl, -1                       ; 2 uses
  %.not.i8574 = icmp eq i64 %i.rw, 0
  %i.rx = select i1 %.not.i8574, i64 -1, i64 %i.rw
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ru
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !53, !noalias !174 ; 2 uses
  %.not.i8 = icmp eq i64 %i.rz, 0
  %i.sa = select i1 %.not.i8, i64 -1, i64 %i.rz   ; 2 uses
  %.not101.i9 = icmp eq i64 %i.ru, 1
  br i1 %.not101.i9, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread573, %bb.bi
  %i.sb = phi i64 [ %i.rx, %.thread573 ], [ %i.sa, %bb.bi ]
  store i64 %i.pk, ptr %i.hs, align 8, !tbaa !53, !noalias !174
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bg, %bb.be
  %i.sc = phi i32 [ %i.rf, %bb.be ], [ %i.pi, %bb.bg ], [ %i.rt, %bb.bj ], [ %i.rt, %bb.bi ] ; 3 uses
  %.sink856 = phi i64 [ %i.pl, %bb.be ], [ %i.rl, %bb.bg ], [ %i.pl, %bb.bj ], [ %i.pl, %bb.bi ] ; 3 uses
  %.sink855 = phi i64 [ %i.rh, %bb.be ], [ %i.rk, %bb.bg ], [ %i.sb, %bb.bj ], [ %i.sa, %bb.bi ] ; 9 uses
  %i.sd = phi i64 [ %i.pk, %bb.be ], [ %i.pj, %bb.bg ], [ %i.pk, %bb.bj ], [ %i.pj, %bb.bi ] ; 2 uses
  store i64 %.sink856, ptr %i.hr, align 8, !tbaa !53, !noalias !174
  store i64 %.sink855, ptr %i.u, align 8, !tbaa !53, !noalias !174
  %.not102.i11 = icmp eq i8 %i.qd, 0
  br i1 %.not102.i11, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.se = and i32 %i.sc, 63
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = shl i64 %.val.i231345, %i.sf
  %i.sh = sub nsw i32 0, %i.qh
  %i.si = and i32 %i.sh, 63
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = lshr i64 %i.sg, %i.sj
  %i.sl = add i32 %i.sc, %i.qh                    ; 2 uses
  store i32 %i.sl, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.sm = add i64 %i.sk, %i.pu
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sn = phi i32 [ %i.sc, %bb.bk ], [ %i.sl, %bb.bl ] ; 8 uses
  %.sroa.9.0 = phi i64 [ %i.pu, %bb.bk ], [ %i.sm, %bb.bl ] ; 3 uses
  %i.so = icmp ugt i8 %i.qj, 30
  br i1 %i.so, label %bb.bn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, !prof !60

bb.bn:                                            ; preds = %bb.bm
  %i.sp = icmp ugt i32 %i.sn, 64
  br i1 %i.sp, label %bb.bo, label %bb.bp, !prof !60

bb.bo:                                            ; preds = %bb.bn
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i46 = icmp ult ptr %i.ph, %i.al
  br i1 %.not.i46, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sq = lshr i32 %i.sn, 3
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = sub nsw i64 0, %i.sr
  %i.st = getelementptr inbounds i8, ptr %i.ph, i64 %i.ss ; 3 uses
  store ptr %i.st, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.su = and i32 %i.sn, 7                        ; 2 uses
  store i32 %i.su, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val.i.i230 = load i64, ptr %i.st, align 1, !tbaa !53, !noalias !174 ; 2 uses
  store i64 %.val.i.i230, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.br:                                            ; preds = %bb.bp
  %i.sv = icmp eq ptr %i.ph, %3
  br i1 %i.sv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sw = lshr i32 %i.sn, 3                       ; 2 uses
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = sub nsw i64 0, %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.ph, i64 %i.sy
  %i.ta = icmp ult ptr %i.sz, %3
  %i.tb = ptrtoint ptr %i.ph to i64
  %i.tc = sub i64 %i.tb, %i.ic
  %i.td = trunc i64 %i.tc to i32
  %.021.i = select i1 %i.ta, i32 %i.td, i32 %i.sw ; 2 uses
  %i.te = zext i32 %.021.i to i64
  %i.tf = sub nsw i64 0, %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.ph, i64 %i.tf ; 3 uses
  store ptr %i.tg, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.th = shl i32 %.021.i, 3
  %i.ti = sub i32 %i.sn, %i.th                    ; 2 uses
  store i32 %i.ti, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val.i231 = load i64, ptr %i.tg, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i231, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit: ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bo, %bb.bm
  %i.tj = phi ptr [ %i.ph, %bb.br ], [ %i.tg, %bb.bs ], [ %i.st, %bb.bq ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bo ], [ %i.ph, %bb.bm ] ; 8 uses
  %i.tk = phi i32 [ %i.sn, %bb.br ], [ %i.ti, %bb.bs ], [ %i.su, %bb.bq ], [ %i.sn, %bb.bo ], [ %i.sn, %bb.bm ] ; 3 uses
  %.val.i231347 = phi i64 [ %.val.i231345, %bb.br ], [ %.val.i231, %bb.bs ], [ %.val.i.i230, %bb.bq ], [ %.val.i231345, %bb.bo ], [ %.val.i231345, %bb.bm ] ; 7 uses
  %.not103.i12 = icmp eq i8 %i.qb, 0
  br i1 %.not103.i12, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.tl = and i32 %i.tk, 63
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = shl i64 %.val.i231347, %i.tm
  %i.to = sub nsw i32 0, %i.qg
  %i.tp = and i32 %i.to, 63
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = lshr i64 %i.tn, %i.tq
  %i.ts = add i32 %i.tk, %i.qg                    ; 2 uses
  store i32 %i.ts, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.tt = add i64 %i.tr, %i.px
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.tu = phi i32 [ %i.tk, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %i.ts, %bb.bt ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.px, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %i.tt, %bb.bt ] ; 4 uses
  br i1 %.not636, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tv = add i32 %i.tu, %i.qp                    ; 2 uses
  %i.tw = sub i32 0, %i.tv
  %i.tx = and i32 %i.tw, 63
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = lshr i64 %.val.i231347, %i.ty
  %i.ua = zext nneg i8 %i.qo to i64
  %notmask.i.i70 = shl nsw i64 -1, %i.ua
  %i.ub = xor i64 %notmask.i.i70, -1
  %i.uc = and i64 %i.tz, %i.ub
  %i.ud = zext i16 %i.qk to i64
  %i.ue = add nuw i64 %i.uc, %i.ud                ; 5 uses
  store i64 %i.ue, ptr %i.ct, align 8, !tbaa !89, !noalias !174
  %i.uf = add i32 %i.tv, %i.qs                    ; 2 uses
  %i.ug = sub i32 0, %i.uf
  %i.uh = and i32 %i.ug, 63
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = lshr i64 %.val.i231347, %i.ui
  %i.uk = zext nneg i8 %i.qr to i64
  %notmask.i.i69 = shl nsw i64 -1, %i.uk
  %i.ul = xor i64 %notmask.i.i69, -1
  %i.um = and i64 %i.uj, %i.ul
  %i.un = zext i16 %i.ql to i64
  %i.uo = add nuw i64 %i.um, %i.un                ; 5 uses
  store i64 %i.uo, ptr %i.fp, align 8, !tbaa !89, !noalias !174
  %i.up = add i32 %i.uf, %i.qv                    ; 9 uses
  %i.uq = sub i32 0, %i.up
  %i.ur = and i32 %i.uq, 63
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = lshr i64 %.val.i231347, %i.us
  %i.uu = zext nneg i8 %i.qu to i64
  %notmask.i.i = shl nsw i64 -1, %i.uu
  %i.uv = xor i64 %notmask.i.i, -1
  %i.uw = and i64 %i.ut, %i.uv
  store i32 %i.up, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %i.ux = zext i16 %i.qm to i64
  %i.uy = add nuw i64 %i.uw, %i.ux                ; 5 uses
  store i64 %i.uy, ptr %i.eb, align 8, !tbaa !89, !noalias !174
  %i.uz = icmp ugt i32 %i.up, 64
  br i1 %i.uz, label %bb.bw, label %bb.bx, !prof !60

bb.bw:                                            ; preds = %bb.bv
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14

bb.bx:                                            ; preds = %bb.bv
  %.not.i48 = icmp ult ptr %i.tj, %i.al
  br i1 %.not.i48, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.va = lshr i32 %i.up, 3
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = sub nsw i64 0, %i.vb
  %i.vd = getelementptr inbounds i8, ptr %i.tj, i64 %i.vc ; 3 uses
  store ptr %i.vd, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.ve = and i32 %i.up, 7                        ; 2 uses
  store i32 %i.ve, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val.i.i234 = load i64, ptr %i.vd, align 1, !tbaa !53, !noalias !174 ; 2 uses
  store i64 %.val.i.i234, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14

bb.bz:                                            ; preds = %bb.bx
  %i.vf = icmp eq ptr %i.tj, %3
  br i1 %i.vf, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vg = lshr i32 %i.up, 3                       ; 2 uses
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = sub nsw i64 0, %i.vh
  %i.vj = getelementptr inbounds i8, ptr %i.tj, i64 %i.vi
  %i.vk = icmp ult ptr %i.vj, %3
  %i.vl = ptrtoint ptr %i.tj to i64
  %i.vm = sub i64 %i.vl, %i.id
  %i.vn = trunc i64 %i.vm to i32
  %.021.i50 = select i1 %i.vk, i32 %i.vn, i32 %i.vg ; 2 uses
  %i.vo = zext i32 %.021.i50 to i64
  %i.vp = sub nsw i64 0, %i.vo
  %i.vq = getelementptr inbounds i8, ptr %i.tj, i64 %i.vp ; 3 uses
  store ptr %i.vq, ptr %i.dh, align 8, !tbaa !86, !noalias !174
  %i.vr = shl i32 %.021.i50, 3
  %i.vs = sub i32 %i.up, %i.vr                    ; 2 uses
  store i32 %i.vs, ptr %i.cx, align 8, !tbaa !91, !noalias !174
  %.val.i235 = load i64, ptr %i.vq, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i235, ptr %13, align 8, !tbaa !87, !noalias !174
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14: ; preds = %bb.bz, %bb.ca, %bb.by, %bb.bw, %bb.bu
  %i.vt = phi ptr [ %i.tj, %bb.bz ], [ %i.vq, %bb.ca ], [ %i.vd, %bb.by ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bw ], [ %i.tj, %bb.bu ] ; 2 uses
  %i.vu = phi i32 [ %i.up, %bb.bz ], [ %i.vs, %bb.ca ], [ %i.ve, %bb.by ], [ %i.up, %bb.bw ], [ %i.tu, %bb.bu ] ; 2 uses
  %.val.i231346 = phi i64 [ %.val.i231347, %bb.bz ], [ %.val.i235, %bb.ca ], [ %.val.i.i234, %bb.by ], [ %.val.i231347, %bb.bw ], [ %.val.i231347, %bb.bu ]
  %i.vv = phi i64 [ %i.uo, %bb.bz ], [ %i.uo, %bb.ca ], [ %i.uo, %bb.by ], [ %i.uo, %bb.bw ], [ %i.pm, %bb.bu ]
  %i.vw = phi i64 [ %i.uy, %bb.bz ], [ %i.uy, %bb.ca ], [ %i.uy, %bb.by ], [ %i.uy, %bb.bw ], [ %i.pn, %bb.bu ]
  %i.vx = phi i64 [ %i.ue, %bb.bz ], [ %i.ue, %bb.ca ], [ %i.ue, %bb.by ], [ %i.ue, %bb.bw ], [ %i.po, %bb.bu ]
  %i.vy = load i32, ptr %i.b, align 8, !tbaa !43
  %i.vz = icmp eq i32 %i.vy, 2
  br i1 %i.vz, label %bb.cb, label %bb.dx

bb.cb:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit14
  %i.wa = load ptr, ptr %i.a, align 8, !tbaa !46  ; 14 uses
  %i.wb = and i32 %.1239.i697, 7
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.wc ; 8 uses
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !102 ; 8 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.we ; 4 uses
  %i.wg = load ptr, ptr %i.k, align 8, !tbaa !42  ; 3 uses
  %i.wh = icmp ugt ptr %i.wf, %i.wg
  br i1 %i.wh, label %bb.cc, label %bb.dd

bb.cc:                                            ; preds = %bb.cb
  %i.wi = ptrtoint ptr %i.wg to i64               ; 2 uses
  %i.wj = ptrtoint ptr %i.wa to i64               ; 4 uses
  %i.wk = sub i64 %i.wi, %i.wj                    ; 9 uses
  %.not273.i = icmp eq ptr %i.wg, %i.wa
  br i1 %.not273.i, label %thread-pre-split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wl = ptrtoint ptr %.0207.i699 to i64         ; 8 uses
  %i.wm = sub i64 %i.hv, %i.wl
  %i.wn = icmp ugt i64 %i.wk, %i.wm
  br i1 %i.wn, label %.thread620, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wo = sub i64 %i.wl, %i.wj                    ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %.0207.i699, i64 %i.wk ; 3 uses
  %i.wq = icmp slt i64 %i.wk, 8
  %i.wr = icmp sgt i64 %i.wo, -8
  %or.cond.i236 = or i1 %i.wr, %i.wq
  br i1 %or.cond.i236, label %.preheader.i, label %bb.cf

.preheader.i:                                     ; preds = %bb.ce
  %i.ws = icmp sgt i64 %i.wk, 0
  br i1 %i.ws, label %iter.check, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit

iter.check:                                       ; preds = %.preheader.i
  %i.wt = add i64 %i.wl, %i.wi
  %i.wu = sub i64 %i.wt, %i.wj
  %i.wv = add i64 %i.wl, 1
  %umax37 = tail call i64 @llvm.umax.i64(i64 %i.wu, i64 %i.wv)
  %i.ww = sub i64 %umax37, %i.wl                  ; 7 uses
  %min.iters.check39 = icmp ult i64 %i.ww, 4
  %i.wx = sub i64 %i.wl, %i.wj
  %diff.check36 = icmp ult i64 %i.wx, 32
  %or.cond308 = or i1 %min.iters.check39, %diff.check36
  br i1 %or.cond308, label %.lr.ph40.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.ww, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph41

vector.ph41:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf42 = and i64 %i.ww, 28
  %n.vec43 = and i64 %i.ww, -32                   ; 5 uses
  %i.wy = getelementptr i8, ptr %.0207.i699, i64 %n.vec43
  %i.wz = getelementptr i8, ptr %i.wa, i64 %n.vec43
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index45 = phi i64 [ 0, %vector.ph41 ], [ %index.next50, %vector.body44 ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %.0207.i699, i64 %index45 ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.wa, i64 %index45 ; 2 uses
  %i.xa = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load48 = load <16 x i8>, ptr %next.gep47, align 1, !tbaa !9
  %wide.load49 = load <16 x i8>, ptr %i.xa, align 1, !tbaa !9
  %i.xb = getelementptr i8, ptr %next.gep46, i64 16
  store <16 x i8> %wide.load48, ptr %next.gep46, align 1, !tbaa !9
  store <16 x i8> %wide.load49, ptr %i.xb, align 1, !tbaa !9
  %index.next50 = add nuw i64 %index45, 32        ; 2 uses
  %i.xc = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.xc, label %middle.block51, label %vector.body44, !llvm.loop !177

middle.block51:                                   ; preds = %vector.body44
  %cmp.n52 = icmp eq i64 %i.ww, %n.vec43
  br i1 %cmp.n52, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block51
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf42, 0
  br i1 %min.epilog.iters.check, label %.lr.ph40.i.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec43, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.ww, -4                    ; 4 uses
  %i.xd = getelementptr i8, ptr %.0207.i699, i64 %n.vec56
  %i.xe = getelementptr i8, ptr %i.wa, i64 %n.vec56
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %next.gep58 = getelementptr i8, ptr %.0207.i699, i64 %index57
  %next.gep59 = getelementptr i8, ptr %i.wa, i64 %index57
  %wide.load60 = load <4 x i8>, ptr %next.gep59, align 1, !tbaa !9
  store <4 x i8> %wide.load60, ptr %next.gep58, align 1, !tbaa !9
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.xf = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.xf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.ww, %n.vec56
  br i1 %cmp.n62, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph40.i.preheader

.lr.ph40.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039.i.ph = phi ptr [ %.0207.i699, %iter.check ], [ %i.wy, %vec.epilog.iter.check ], [ %i.xd, %vec.epilog.middle.block ]
  %.02938.i.ph = phi ptr [ %i.wa, %iter.check ], [ %i.wz, %vec.epilog.iter.check ], [ %i.xe, %vec.epilog.middle.block ]
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.preheader, %.lr.ph40.i
  %.039.i = phi ptr [ %i.xi, %.lr.ph40.i ], [ %.039.i.ph, %.lr.ph40.i.preheader ] ; 2 uses
  %.02938.i = phi ptr [ %i.xg, %.lr.ph40.i ], [ %.02938.i.ph, %.lr.ph40.i.preheader ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.02938.i, i64 1
  %i.xh = load i8, ptr %.02938.i, align 1, !tbaa !9
  %i.xi = getelementptr inbounds nuw i8, ptr %.039.i, i64 1 ; 2 uses
  store i8 %i.xh, ptr %.039.i, align 1, !tbaa !9
  %i.xj = icmp ult ptr %i.xi, %i.wp
  br i1 %i.xj, label %.lr.ph40.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, !llvm.loop !179

bb.cf:                                            ; preds = %bb.ce
  %i.xk = icmp samesign ugt i64 %i.wk, 31
  %i.xl = icmp samesign ult i64 %i.wo, -16
  %or.cond3.i = and i1 %i.xl, %i.xk
  br i1 %or.cond3.i, label %bb.cg, label %iter.check88

bb.cg:                                            ; preds = %bb.cf
  %i.xm = getelementptr inbounds i8, ptr %i.wp, i64 -32 ; 2 uses
  %i.xn = add nsw i64 %i.wk, -32                  ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 %i.xn
  %i.xp = load <2 x i64>, ptr %i.wa, align 1, !tbaa !9
  store <2 x i64> %i.xp, ptr %.0207.i699, align 1, !tbaa !9
  %i.xq = icmp samesign ult i64 %i.wk, 49
  br i1 %i.xq, label %.thread.i237, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xr = getelementptr inbounds nuw i8, ptr %.0207.i699, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.130.i.i = phi ptr [ %i.xr, %bb.ch ], [ %i.xw, %bb.ci ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.wa, %bb.ch ], [ %i.xu, %bb.ci ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.xs = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %i.xs, ptr %.130.i.i, align 1, !tbaa !9
  %i.xt = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.xu = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.xv = load <2 x i64>, ptr %i.xu, align 1, !tbaa !9
  store <2 x i64> %i.xv, ptr %i.xt, align 1, !tbaa !9
  %i.xw = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.xx = icmp ult ptr %i.xw, %i.xo
  br i1 %i.xx, label %bb.ci, label %.thread.i237, !llvm.loop !108

.thread.i237:                                     ; preds = %bb.ci, %bb.cg
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.xn
  %.pre.i = ptrtoint ptr %i.xm to i64
  br label %iter.check88

iter.check88:                                     ; preds = %bb.cf, %.thread.i237
  %.149.i = phi ptr [ %i.xm, %.thread.i237 ], [ %.0207.i699, %bb.cf ] ; 7 uses
  %.13048.i = phi ptr [ %i.xy, %.thread.i237 ], [ %i.wa, %bb.cf ] ; 6 uses
  %.142.pre-phi47.i = phi i64 [ %.pre.i, %.thread.i237 ], [ %i.wl, %bb.cf ]
  %i.xz = add i64 %i.wk, %i.wl
  %i.ya = sub i64 %i.xz, %.142.pre-phi47.i        ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.149.i, i64 %i.ya
  %min.iters.check70 = icmp ult i64 %i.ya, 4
  %.13048.i67 = ptrtoaddr ptr %.13048.i to i64
  %.149.i66 = ptrtoaddr ptr %.149.i to i64
  %i.yb = sub i64 %.149.i66, %.13048.i67
  %diff.check68 = icmp ult i64 %i.yb, 32
  %or.cond309 = select i1 %min.iters.check70, i1 true, i1 %diff.check68
  br i1 %or.cond309, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check71

vector.main.loop.iter.check71:                    ; preds = %iter.check88
  %min.iters.check72 = icmp ult i64 %i.ya, 32
  br i1 %min.iters.check72, label %vec.epilog.ph92, label %vector.ph73

vector.ph73:                                      ; preds = %vector.main.loop.iter.check71
  %n.mod.vf74 = and i64 %i.ya, 28
  %n.vec75 = and i64 %i.ya, -32                   ; 5 uses
  %i.yc = getelementptr i8, ptr %.149.i, i64 %n.vec75
  %i.yd = getelementptr i8, ptr %.13048.i, i64 %n.vec75
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph73
  %index77 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body76 ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %.149.i, i64 %index77 ; 2 uses
  %next.gep79 = getelementptr i8, ptr %.13048.i, i64 %index77 ; 2 uses
  %i.ye = getelementptr i8, ptr %next.gep79, i64 16
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.go = phi i32 [ %i.fk, %bb.x ], [ %i.fx, %bb.z ], [ %i.fk, %bb.aa ], [ %i.gm, %bb.ab ]
  %i.gp = phi i64 [ %i.fc, %bb.x ], [ %.val.i.i.i21, %bb.z ], [ %i.fc, %bb.aa ], [ %.val.i.i24, %bb.ab ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !92
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !133
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 4 uses
  %i.gu = ptrtoint ptr %i.h to i64                ; 21 uses
  %i.gv = ptrtoint ptr %i.j to i64                ; 3 uses
  %.sroa.6139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gw = add i64 %i.gu, 16
  %i.gx = ptrtoint ptr %3 to i64
  %i.gy = ptrtoint ptr %3 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25, %bb.bu
  %i.gz = phi ptr [ %i.gn, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.ny, %bb.bu ] ; 8 uses
  %i.ha = phi i32 [ %i.go, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.nz, %bb.bu ] ; 5 uses
  %i.hb = phi i64 [ %i.gp, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.oa, %bb.bu ] ; 6 uses
  %i.hc = phi i64 [ %i.x, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.jw, %bb.bu ] ; 2 uses
  %i.hd = phi i64 [ %i.t, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %.sink463, %bb.bu ] ; 6 uses
  %i.he = phi i64 [ %i.q, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %.sink, %bb.bu ] ; 6 uses
  %i.hf = phi i64 [ %i.fr, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.of, %bb.bu ] ; 3 uses
  %i.hg = phi i64 [ %i.ed, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.oe, %bb.bu ] ; 3 uses
  %i.hh = phi i64 [ %i.cv, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.od, %bb.bu ] ; 3 uses
  %.0135.i287 = phi i32 [ %5, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.sn, %bb.bu ] ; 4 uses
  %.0142.i285 = phi ptr [ %1, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.sm, %bb.bu ] ; 20 uses
  %.0142.i28576 = ptrtoaddr ptr %.0142.i285 to i64
  %.not = icmp eq i32 %.0135.i287, 1
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.hh ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hf ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.hg ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !49, !noalias !225
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !49, !noalias !225 ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !49, !noalias !225 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !66, !noalias !225 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hw = load i8, ptr %i.hv, align 2, !tbaa !66, !noalias !225 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !66, !noalias !225 ; 4 uses
  %i.hz = zext i8 %i.hu to i32                    ; 2 uses
  %i.ia = zext i8 %i.hw to i32                    ; 2 uses
  %i.ib = add i8 %i.hw, %i.hu
  %i.ic = add i8 %i.ib, %i.hy
  %i.id = load i16, ptr %i.hi, align 4, !tbaa !65, !noalias !225
  %i.ie = load i16, ptr %i.hj, align 4, !tbaa !65, !noalias !225
  %i.if = load i16, ptr %i.hk, align 4, !tbaa !65, !noalias !225
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !64, !noalias !225 ; 2 uses
  %i.ii = zext i8 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !64, !noalias !225 ; 2 uses
  %i.il = zext i8 %i.ik to i32
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !64, !noalias !225 ; 2 uses
  %i.io = zext i8 %i.in to i32
  %i.ip = icmp ugt i8 %i.hy, 1
  br i1 %i.ip, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.iq = zext i8 %i.hy to i32                    ; 2 uses
  %i.ir = and i32 %i.ha, 63
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = shl i64 %i.hb, %i.is
  %i.iu = sub nsw i32 0, %i.iq
  %i.iv = and i32 %i.iu, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 %i.it, %i.iw
  %i.iy = add i32 %i.ha, %i.iq                    ; 2 uses
  store i32 %i.iy, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.iz = zext i32 %i.hs to i64
  %i.ja = add i64 %i.ix, %i.iz
  store i64 %i.hd, ptr %i.gt, align 8, !tbaa !53, !noalias !225
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.jb = icmp eq i32 %i.hp, 0                    ; 3 uses
  %i.jc = icmp eq i8 %i.hy, 0
  br i1 %i.jc, label %bb.af, label %bb.ag, !prof !97

bb.af:                                            ; preds = %bb.ae
  %i.jd = select i1 %i.jb, i64 %i.hd, i64 %i.he
  %i.je = select i1 %i.jb, i64 %i.he, i64 %i.hd
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.jf = zext i1 %i.jb to i32
  %i.jg = add i32 %i.hs, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = and i32 %i.ha, 63
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = shl i64 %i.hb, %i.jj
  %i.jl = lshr i64 %i.jk, 63
  %i.jm = add i32 %i.ha, 1                        ; 3 uses
  store i32 %i.jm, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.jn = add nuw nsw i64 %i.jl, %i.jh            ; 3 uses
  %i.jo = icmp eq i64 %i.jn, 3
  br i1 %i.jo, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  %i.jp = add i64 %i.he, -1                       ; 2 uses
  %.not.i193.i182 = icmp eq i64 %i.jp, 0
  %i.jq = select i1 %.not.i193.i182, i64 -1, i64 %i.jp
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jn
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !53, !noalias !225 ; 2 uses
  %.not.i193.i = icmp eq i64 %i.js, 0
  %i.jt = select i1 %.not.i193.i, i64 -1, i64 %i.js ; 2 uses
  %.not101.i194.i = icmp eq i64 %i.jn, 1
  br i1 %.not101.i194.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread, %bb.ah
  %i.ju = phi i64 [ %i.jq, %.thread ], [ %i.jt, %bb.ah ]
  store i64 %i.hd, ptr %i.gt, align 8, !tbaa !53, !noalias !225
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.af, %bb.ad
  %i.jv = phi i32 [ %i.iy, %bb.ad ], [ %i.ha, %bb.af ], [ %i.jm, %bb.ai ], [ %i.jm, %bb.ah ] ; 3 uses
  %.sink463 = phi i64 [ %i.he, %bb.ad ], [ %i.je, %bb.af ], [ %i.he, %bb.ai ], [ %i.he, %bb.ah ] ; 5 uses
  %.sink = phi i64 [ %i.ja, %bb.ad ], [ %i.jd, %bb.af ], [ %i.ju, %bb.ai ], [ %i.jt, %bb.ah ] ; 29 uses
  %i.jw = phi i64 [ %i.hd, %bb.ad ], [ %i.hc, %bb.af ], [ %i.hd, %bb.ai ], [ %i.hc, %bb.ah ] ; 4 uses
  store i64 %.sink463, ptr %i.gs, align 8, !tbaa !53, !noalias !225
  store i64 %.sink, ptr %i.o, align 8, !tbaa !53, !noalias !225
  %.not102.i196.i = icmp eq i8 %i.hw, 0
  br i1 %.not102.i196.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jx = and i32 %i.jv, 63
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = shl i64 %i.hb, %i.jy
  %i.ka = sub nsw i32 0, %i.ia
  %i.kb = and i32 %i.ka, 63
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = lshr i64 %i.jz, %i.kc
  %i.ke = add i32 %i.jv, %i.ia                    ; 2 uses
  store i32 %i.ke, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.kf = add i64 %i.kd, %i.hn
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.kg = phi i32 [ %i.jv, %bb.aj ], [ %i.ke, %bb.ak ] ; 8 uses
  %.sroa.659.0 = phi i64 [ %i.hn, %bb.aj ], [ %i.kf, %bb.ak ] ; 12 uses
  %i.kh = icmp ugt i8 %i.ic, 30
  br i1 %i.kh, label %bb.am, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, !prof !60

bb.am:                                            ; preds = %bb.al
  %i.ki = icmp ugt i32 %i.kg, 64
  br i1 %i.ki, label %bb.an, label %bb.ao, !prof !60

bb.an:                                            ; preds = %bb.am
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.ao:                                            ; preds = %bb.am
  %.not.i212.i = icmp ult ptr %i.gz, %i.ab
  br i1 %.not.i212.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kj = lshr i32 %i.kg, 3
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = sub nsw i64 0, %i.kk
  %i.km = getelementptr inbounds i8, ptr %i.gz, i64 %i.kl ; 3 uses
  store ptr %i.km, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.kn = and i32 %i.kg, 7                        ; 2 uses
  store i32 %i.kn, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val.i.i30 = load i64, ptr %i.km, align 1, !tbaa !53, !noalias !225 ; 2 uses
  store i64 %.val.i.i30, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.ko = icmp eq ptr %i.gz, %3
  br i1 %i.ko, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kp = lshr i32 %i.kg, 3                       ; 2 uses
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = sub nsw i64 0, %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.gz, i64 %i.kr
  %i.kt = icmp ult ptr %i.ks, %3
  %i.ku = ptrtoint ptr %i.gz to i64
  %i.kv = sub i64 %i.ku, %i.gx
  %i.kw = trunc i64 %i.kv to i32
  %.021.i.i = select i1 %i.kt, i32 %i.kw, i32 %i.kp ; 2 uses
  %i.kx = zext i32 %.021.i.i to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.gz, i64 %i.ky ; 3 uses
  store ptr %i.kz, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.la = shl i32 %.021.i.i, 3
  %i.lb = sub i32 %i.kg, %i.la                    ; 2 uses
  store i32 %i.lb, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val.i31 = load i64, ptr %i.kz, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i31, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.aq, %bb.an, %bb.ap, %bb.ar, %bb.al
  %i.lc = phi ptr [ %i.gz, %bb.aq ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.an ], [ %i.km, %bb.ap ], [ %i.kz, %bb.ar ], [ %i.gz, %bb.al ] ; 9 uses
  %i.ld = phi i32 [ %i.kg, %bb.aq ], [ %i.kg, %bb.an ], [ %i.kn, %bb.ap ], [ %i.lb, %bb.ar ], [ %i.kg, %bb.al ] ; 3 uses
  %i.le = phi i64 [ %i.hb, %bb.aq ], [ %i.hb, %bb.an ], [ %.val.i.i30, %bb.ap ], [ %.val.i31, %bb.ar ], [ %i.hb, %bb.al ] ; 8 uses
  %.not103.i197.i = icmp eq i8 %i.hu, 0
  br i1 %.not103.i197.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.lf = and i32 %i.ld, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = shl i64 %i.le, %i.lg
  %i.li = sub nsw i32 0, %i.hz
  %i.lj = and i32 %i.li, 63
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = lshr i64 %i.lh, %i.lk
  %i.lm = add i32 %i.ld, %i.hz                    ; 2 uses
  store i32 %i.lm, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.ln = add i64 %i.ll, %i.hq
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.lo = phi i32 [ %i.ld, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.lm, %bb.as ] ; 3 uses
  %.sroa.057.0 = phi i64 [ %i.hq, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.ln, %bb.as ] ; 10 uses
  br i1 %.not, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lp = add i32 %i.lo, %i.ii                    ; 2 uses
  %i.lq = sub i32 0, %i.lp
  %i.lr = and i32 %i.lq, 63
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = lshr i64 %i.le, %i.ls
  %i.lu = zext nneg i8 %i.ih to i64
  %notmask.i.i236.i = shl nsw i64 -1, %i.lu
  %i.lv = xor i64 %notmask.i.i236.i, -1
  %i.lw = and i64 %i.lt, %i.lv
  %i.lx = zext i16 %i.id to i64
  %i.ly = add nuw i64 %i.lw, %i.lx                ; 3 uses
  store i64 %i.ly, ptr %i.cj, align 8, !tbaa !89, !noalias !225
  %i.lz = add i32 %i.lp, %i.il                    ; 2 uses
  %i.ma = sub i32 0, %i.lz
  %i.mb = and i32 %i.ma, 63
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = lshr i64 %i.le, %i.mc
  %i.me = zext nneg i8 %i.ik to i64
  %notmask.i.i235.i = shl nsw i64 -1, %i.me
  %i.mf = xor i64 %notmask.i.i235.i, -1
  %i.mg = and i64 %i.md, %i.mf
  %i.mh = zext i16 %i.ie to i64
  %i.mi = add nuw i64 %i.mg, %i.mh                ; 3 uses
  store i64 %i.mi, ptr %i.ff, align 8, !tbaa !89, !noalias !225
  %i.mj = add i32 %i.lz, %i.io                    ; 9 uses
  %i.mk = sub i32 0, %i.mj
  %i.ml = and i32 %i.mk, 63
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 %i.le, %i.mm
  %i.mo = zext nneg i8 %i.in to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mo
  %i.mp = xor i64 %notmask.i.i.i, -1
  %i.mq = and i64 %i.mn, %i.mp
  store i32 %i.mj, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %i.mr = zext i16 %i.if to i64
  %i.ms = add nuw i64 %i.mq, %i.mr                ; 3 uses
  store i64 %i.ms, ptr %i.dr, align 8, !tbaa !89, !noalias !225
  %i.mt = icmp ugt i32 %i.mj, 64
  br i1 %i.mt, label %bb.av, label %bb.aw, !prof !60

bb.av:                                            ; preds = %bb.au
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i

bb.aw:                                            ; preds = %bb.au
  %.not.i214.i = icmp ult ptr %i.lc, %i.ab
  br i1 %.not.i214.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mu = lshr i32 %i.mj, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.lc, i64 %i.mw ; 3 uses
  store ptr %i.mx, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.my = and i32 %i.mj, 7                        ; 2 uses
  store i32 %i.my, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val.i.i34 = load i64, ptr %i.mx, align 1, !tbaa !53, !noalias !225 ; 2 uses
  store i64 %.val.i.i34, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i

bb.ay:                                            ; preds = %bb.aw
  %i.mz = icmp eq ptr %i.lc, %3
  br i1 %i.mz, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.na = lshr i32 %i.mj, 3                       ; 2 uses
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.lc, i64 %i.nc
  %i.ne = icmp ult ptr %i.nd, %3
  %i.nf = ptrtoint ptr %i.lc to i64
  %i.ng = sub i64 %i.nf, %i.gy
  %i.nh = trunc i64 %i.ng to i32
  %.021.i216.i = select i1 %i.ne, i32 %i.nh, i32 %i.na ; 2 uses
  %i.ni = zext i32 %.021.i216.i to i64
  %i.nj = sub nsw i64 0, %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.lc, i64 %i.nj ; 3 uses
  store ptr %i.nk, ptr %i.cx, align 8, !tbaa !86, !noalias !225
  %i.nl = shl i32 %.021.i216.i, 3
  %i.nm = sub i32 %i.mj, %i.nl                    ; 2 uses
  store i32 %i.nm, ptr %i.cn, align 8, !tbaa !91, !noalias !225
  %.val.i35 = load i64, ptr %i.nk, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i35, ptr %9, align 8, !tbaa !87, !noalias !225
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i: ; preds = %bb.ay, %bb.av, %bb.ax, %bb.az
  %i.nn = phi ptr [ %i.lc, %bb.ay ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.av ], [ %i.mx, %bb.ax ], [ %i.nk, %bb.az ] ; 2 uses
  %i.no = phi i32 [ %i.mj, %bb.ay ], [ %i.mj, %bb.av ], [ %i.my, %bb.ax ], [ %i.nm, %bb.az ] ; 2 uses
  %i.np = phi i64 [ %i.le, %bb.ay ], [ %i.le, %bb.av ], [ %.val.i.i34, %bb.ax ], [ %.val.i35, %bb.az ] ; 2 uses
  %i.nq = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.057.0 ; 2 uses
  %i.ns = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.nt = icmp ugt ptr %i.nr, %i.ns
  br i1 %i.nt, label %bb.bv, label %bb.ba

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread: ; preds = %bb.at
  %i.nu = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.sroa.057.0 ; 2 uses
  %i.nw = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.nx = icmp ugt ptr %i.nv, %i.nw
  br i1 %i.nx, label %.thread384, label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i
  %i.ny = phi ptr [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nn, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.nz = phi i32 [ %i.lo, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.no, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.oa = phi i64 [ %i.le, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.np, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.ob = phi ptr [ %i.nv, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nr, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 3 uses
  %i.oc = phi ptr [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.nq, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ] ; 2 uses
  %i.od = phi i64 [ %i.hh, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.ly, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.oe = phi i64 [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.ms, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.of = phi i64 [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ], [ %i.mi, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i ]
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.oh = getelementptr i8, ptr %.0142.i285, i64 %.sroa.057.0 ; 7 uses
  %i.oi = add i64 %.sroa.057.0, %.sroa.659.0      ; 9 uses
  %i.oj = sub i64 0, %.sink
  %i.ok = getelementptr inbounds i8, ptr %i.oh, i64 %i.oj ; 2 uses
  %i.ol = icmp ugt ptr %i.ob, %i.f
  %i.om = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 %i.oi
  %i.on = icmp ugt ptr %i.om, %i.og
  %or.cond.i207.i = select i1 %i.ol, i1 true, i1 %i.on, !prof !112
  br i1 %or.cond.i207.i, label %bb.bb, label %.critedge.i208.i, !prof !112

.critedge.i208.i:                                 ; preds = %bb.ba
  %i.oo = load <2 x i64>, ptr %i.oc, align 1, !tbaa !9
  store <2 x i64> %i.oo, ptr %.0142.i285, align 1, !tbaa !9
  %i.op = icmp ugt i64 %.sroa.057.0, 16
  br i1 %i.op, label %bb.bc, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.bb:                                            ; preds = %bb.ba
  store i64 %.sroa.057.0, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.659.0, ptr %.sroa.6139.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink, ptr %.sroa.13144.0..sroa_idx, align 8, !tbaa !53
  %i.oq = call fastcc noundef i64 @_ZN11duckdb_zstdL34ZSTD_execSequenceEndSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_(ptr noundef %.0142.i285, ptr noundef %i.b, ptr noundef nonnull %i.og, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bc:                                            ; preds = %.critedge.i208.i
  %i.or = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.ot = add i64 %.sroa.057.0, -16
  %i.ou = load <2 x i64>, ptr %i.os, align 1, !tbaa !9
  store <2 x i64> %i.ou, ptr %i.or, align 1, !tbaa !9
  %i.ov = icmp slt i64 %i.ot, 17
  br i1 %i.ov, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ow = getelementptr inbounds nuw i8, ptr %.0142.i285, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.130.i.i = phi ptr [ %i.ow, %bb.bd ], [ %i.pb, %bb.be ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.os, %bb.bd ], [ %i.oz, %bb.be ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ox = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ox, ptr %.130.i.i, align 1, !tbaa !9
  %i.oy = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.oz = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.pa = load <2 x i64>, ptr %i.oz, align 1, !tbaa !9
  store <2 x i64> %i.pa, ptr %i.oy, align 1, !tbaa !9
  %i.pb = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.pc = icmp ult ptr %i.pb, %i.oh
  br i1 %i.pc, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.be, %bb.bc, %.critedge.i208.i
  store ptr %i.ob, ptr %i.a, align 8, !tbaa !46
  %i.pd = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = icmp ugt i64 %.sink, %i.pe
  br i1 %i.pf, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.pg = sub i64 %i.pd, %i.gv
  %i.ph = icmp ugt i64 %.sink, %i.pg
  br i1 %i.ph, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread, label %bb.bg, !prof !60

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread236

bb.bg:                                            ; preds = %bb.bf
  %i.pi = ptrtoint ptr %i.ok to i64
  %i.pj = sub i64 %i.pi, %i.gu                    ; 3 uses
  %i.pk = getelementptr inbounds i8, ptr %i.l, i64 %i.pj ; 2 uses
  %i.pl = add nsw i64 %i.pj, %.sroa.659.0         ; 2 uses
  %.not.i210.i = icmp sgt i64 %i.pl, 0
  br i1 %.not.i210.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr align 1 %i.pk, i64 %.sroa.659.0, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i211.i = sub nsw i64 0, %i.pj          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr align 1 %i.pk, i64 %gepdiff.i211.i, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 %gepdiff.i211.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.6139.0 = phi i64 [ %i.pl, %bb.bi ], [ %.sroa.659.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.0170 = phi ptr [ %i.h, %bb.bi ], [ %i.ok, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pm, %bb.bi ], [ %i.oh, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.pn = icmp ugt i64 %.sink, 15
  br i1 %i.pn, label %bb.bk, label %bb.bn, !prof !97

bb.bk:                                            ; preds = %bb.bj
  %i.po = getelementptr inbounds i8, ptr %.0, i64 %.sroa.6139.0
  %i.pp = load <2 x i64>, ptr %.0170, align 1, !tbaa !9
  store <2 x i64> %i.pp, ptr %.0, align 1, !tbaa !9
  %i.pq = icmp slt i64 %.sroa.6139.0, 17
  br i1 %i.pq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pr = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.130.i243.i = phi ptr [ %i.pr, %bb.bl ], [ %i.pw, %bb.bm ] ; 3 uses
  %.pn.i244.i = phi ptr [ %.0170, %bb.bl ], [ %i.pu, %bb.bm ] ; 2 uses
  %.1.i245.i = getelementptr inbounds nuw i8, ptr %.pn.i244.i, i64 16
  %i.ps = load <2 x i64>, ptr %.1.i245.i, align 1, !tbaa !9
  store <2 x i64> %i.ps, ptr %.130.i243.i, align 1, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %.130.i243.i, i64 16
  %i.pu = getelementptr inbounds nuw i8, ptr %.pn.i244.i, i64 32 ; 2 uses
  %i.pv = load <2 x i64>, ptr %i.pu, align 1, !tbaa !9
  store <2 x i64> %i.pv, ptr %i.pt, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %.130.i243.i, i64 32 ; 2 uses
  %i.px = icmp ult ptr %i.pw, %i.po
  br i1 %i.px, label %bb.bm, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !108

bb.bn:                                            ; preds = %bb.bj
  %i.py = icmp samesign ult i64 %.sink, 8
  br i1 %i.py, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !3
  %i.qb = load i8, ptr %.0170, align 1, !tbaa !9
  store i8 %i.qb, ptr %.0, align 1, !tbaa !9
  %i.qc = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !9
  %i.qf = getelementptr inbounds nuw i8, ptr %.0170, i64 2
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %.0170, i64 3
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !9
  %i.qk = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !9
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %.0170, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.qq = load i32, ptr %i.qo, align 1
  store i32 %i.qq, ptr %i.qp, align 1
  %i.qr = sext i32 %i.qa to i64
  %i.qs = sub nsw i64 0, %i.qr
  %i.qt = getelementptr inbounds i8, ptr %i.qo, i64 %i.qs
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.qu = load i64, ptr %.0170, align 1
  store i64 %i.qu, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.bp, %bb.bo
  %.1 = phi ptr [ %i.qt, %bb.bo ], [ %.0170, %bb.bp ] ; 2 uses
  %.177 = ptrtoaddr ptr %.1 to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qx = icmp ugt i64 %.sroa.6139.0, 8
  br i1 %i.qx, label %bb.bq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = getelementptr i8, ptr %.0, i64 %.sroa.6139.0 ; 2 uses
  %i.rc = icmp slt i64 %i.ra, 16
  br i1 %i.rc, label %.preheader265.preheader, label %bb.br
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
bb.cw:                                            ; preds = %.loopexit
  %.not252 = icmp eq i32 %i.zp, 0
  br i1 %.not252, label %.thread232, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !148
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !149
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !150
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !151
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !152
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zq = add i64 %i.gu, 16
  %i.zr = ptrtoint ptr %3 to i64
  %i.zs = ptrtoint ptr %3 to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ep
  %i.zt = phi ptr [ %i.sp, %bb.cx ], [ %i.agh, %bb.ep ] ; 8 uses
  %i.zu = phi i32 [ %i.sq, %bb.cx ], [ %i.agi, %bb.ep ] ; 5 uses
  %i.zv = phi i64 [ %i.sr, %bb.cx ], [ %i.agj, %bb.ep ] ; 6 uses
  %i.zw = phi i64 [ %i.jw, %bb.cx ], [ %i.acq, %bb.ep ] ; 2 uses
  %i.zx = phi i64 [ %.sink463, %bb.cx ], [ %.sink465, %bb.ep ] ; 6 uses
  %i.zy = phi i64 [ %.sink, %bb.cx ], [ %.sink464, %bb.ep ] ; 6 uses
  %i.zz = phi i64 [ %i.ss, %bb.cx ], [ %i.agk, %bb.ep ] ; 2 uses
  %i.aaa = phi i64 [ %i.st, %bb.cx ], [ %i.agl, %bb.ep ] ; 2 uses
  %i.aab = phi i64 [ %i.su, %bb.cx ], [ %i.agm, %bb.ep ] ; 2 uses
  %.4139.i290 = phi i32 [ %i.zp, %bb.cx ], [ %i.akv, %bb.ep ] ; 2 uses
  %.7149.i288 = phi ptr [ %i.zo, %bb.cx ], [ %i.aku, %bb.ep ] ; 8 uses
  %.7149.i288178 = ptrtoaddr ptr %.7149.i288 to i64
  %.not256 = icmp eq i32 %.4139.i290, 1
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.aab ; 4 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.zz ; 4 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.aaa ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !49, !noalias !238
  %i.aah = zext i32 %i.aag to i64                 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !49, !noalias !238 ; 2 uses
  %i.aak = zext i32 %i.aaj to i64                 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !49, !noalias !238 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aac, i64 2
  %i.aao = load i8, ptr %i.aan, align 2, !tbaa !66, !noalias !238 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !66, !noalias !238 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  %i.aas = load i8, ptr %i.aar, align 2, !tbaa !66, !noalias !238 ; 4 uses
  %i.aat = zext i8 %i.aao to i32                  ; 2 uses
  %i.aau = zext i8 %i.aaq to i32                  ; 2 uses
  %i.aav = add i8 %i.aaq, %i.aao
  %i.aaw = add i8 %i.aav, %i.aas
  %i.aax = load i16, ptr %i.aac, align 4, !tbaa !65, !noalias !238
  %i.aay = load i16, ptr %i.aad, align 4, !tbaa !65, !noalias !238
  %i.aaz = load i16, ptr %i.aae, align 4, !tbaa !65, !noalias !238
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aac, i64 3
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.abc = zext i8 %i.abb to i32
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aad, i64 3
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aae, i64 3
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !64, !noalias !238 ; 2 uses
  %i.abi = zext i8 %i.abh to i32
  %i.abj = icmp ugt i8 %i.aas, 1
  br i1 %i.abj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.abk = zext i8 %i.aas to i32                  ; 2 uses
  %i.abl = and i32 %i.zu, 63
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = shl i64 %i.zv, %i.abm
  %i.abo = sub nsw i32 0, %i.abk
  %i.abp = and i32 %i.abo, 63
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = lshr i64 %i.abn, %i.abq
  %i.abs = add i32 %i.zu, %i.abk                  ; 2 uses
  store i32 %i.abs, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.abt = zext i32 %i.aam to i64
  %i.abu = add i64 %i.abr, %i.abt
  store i64 %i.zx, ptr %i.gt, align 8, !tbaa !53, !noalias !238
  br label %bb.df

bb.da:                                            ; preds = %bb.cy
  %i.abv = icmp eq i32 %i.aaj, 0                  ; 3 uses
  %i.abw = icmp eq i8 %i.aas, 0
  br i1 %i.abw, label %bb.db, label %bb.dc, !prof !97

bb.db:                                            ; preds = %bb.da
  %i.abx = select i1 %i.abv, i64 %i.zx, i64 %i.zy
  %i.aby = select i1 %i.abv, i64 %i.zy, i64 %i.zx
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.abz = zext i1 %i.abv to i32
  %i.aca = add i32 %i.aam, %i.abz
  %i.acb = zext i32 %i.aca to i64
  %i.acc = and i32 %i.zu, 63
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = shl i64 %i.zv, %i.acd
  %i.acf = lshr i64 %i.ace, 63
  %i.acg = add i32 %i.zu, 1                       ; 3 uses
  store i32 %i.acg, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.ach = add nuw nsw i64 %i.acf, %i.acb         ; 3 uses
  %i.aci = icmp eq i64 %i.ach, 3
  br i1 %i.aci, label %.thread215, label %bb.dd

.thread215:                                       ; preds = %bb.dc
  %i.acj = add i64 %i.zy, -1                      ; 2 uses
  %.not.i.i216 = icmp eq i64 %i.acj, 0
  %i.ack = select i1 %.not.i.i216, i64 -1, i64 %i.acj
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ach
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !53, !noalias !238 ; 2 uses
  %.not.i.i = icmp eq i64 %i.acm, 0
  %i.acn = select i1 %.not.i.i, i64 -1, i64 %i.acm ; 2 uses
  %.not101.i.i = icmp eq i64 %i.ach, 1
  br i1 %.not101.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread215, %bb.dd
  %i.aco = phi i64 [ %i.ack, %.thread215 ], [ %i.acn, %bb.dd ]
  store i64 %i.zx, ptr %i.gt, align 8, !tbaa !53, !noalias !238
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %bb.db, %bb.cz
  %i.acp = phi i32 [ %i.abs, %bb.cz ], [ %i.zu, %bb.db ], [ %i.acg, %bb.de ], [ %i.acg, %bb.dd ] ; 3 uses
  %.sink465 = phi i64 [ %i.zy, %bb.cz ], [ %i.aby, %bb.db ], [ %i.zy, %bb.de ], [ %i.zy, %bb.dd ] ; 3 uses
  %.sink464 = phi i64 [ %i.abu, %bb.cz ], [ %i.abx, %bb.db ], [ %i.aco, %bb.de ], [ %i.acn, %bb.dd ] ; 15 uses
  %i.acq = phi i64 [ %i.zx, %bb.cz ], [ %i.zw, %bb.db ], [ %i.zx, %bb.de ], [ %i.zw, %bb.dd ] ; 2 uses
  store i64 %.sink465, ptr %i.gs, align 8, !tbaa !53, !noalias !238
  store i64 %.sink464, ptr %i.o, align 8, !tbaa !53, !noalias !238
  %.not102.i.i = icmp eq i8 %i.aaq, 0
  br i1 %.not102.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.acr = and i32 %i.acp, 63
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = shl i64 %i.zv, %i.acs
  %i.acu = sub nsw i32 0, %i.aau
  %i.acv = and i32 %i.acu, 63
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = lshr i64 %i.act, %i.acw
  %i.acy = add i32 %i.acp, %i.aau                 ; 2 uses
  store i32 %i.acy, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.acz = add i64 %i.acx, %i.aah
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.ada = phi i32 [ %i.acp, %bb.df ], [ %i.acy, %bb.dg ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.aah, %bb.df ], [ %i.acz, %bb.dg ] ; 6 uses
  %i.adb = icmp ugt i8 %i.aaw, 30
  br i1 %i.adb, label %bb.di, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i, !prof !60

bb.di:                                            ; preds = %bb.dh
  %i.adc = icmp ugt i32 %i.ada, 64
  br i1 %i.adc, label %bb.dj, label %bb.dk, !prof !60

bb.dj:                                            ; preds = %bb.di
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i

bb.dk:                                            ; preds = %bb.di
  %.not.i221.i = icmp ult ptr %i.zt, %i.ab
  br i1 %.not.i221.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.add = lshr i32 %i.ada, 3
  %i.ade = zext nneg i32 %i.add to i64
  %i.adf = sub nsw i64 0, %i.ade
  %i.adg = getelementptr inbounds i8, ptr %i.zt, i64 %i.adf ; 3 uses
  store ptr %i.adg, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.adh = and i32 %i.ada, 7                      ; 2 uses
  store i32 %i.adh, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i.i46 = load i64, ptr %i.adg, align 1, !tbaa !53, !noalias !238 ; 2 uses
  store i64 %.val.i.i46, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i

bb.dm:                                            ; preds = %bb.dk
  %i.adi = icmp eq ptr %i.zt, %3
  br i1 %i.adi, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.adj = lshr i32 %i.ada, 3                     ; 2 uses
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = sub nsw i64 0, %i.adk
  %i.adm = getelementptr inbounds i8, ptr %i.zt, i64 %i.adl
  %i.adn = icmp ult ptr %i.adm, %3
  %i.ado = ptrtoint ptr %i.zt to i64
  %i.adp = sub i64 %i.ado, %i.zr
  %i.adq = trunc i64 %i.adp to i32
  %.021.i223.i = select i1 %i.adn, i32 %i.adq, i32 %i.adj ; 2 uses
  %i.adr = zext i32 %.021.i223.i to i64
  %i.ads = sub nsw i64 0, %i.adr
  %i.adt = getelementptr inbounds i8, ptr %i.zt, i64 %i.ads ; 3 uses
  store ptr %i.adt, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.adu = shl i32 %.021.i223.i, 3
  %i.adv = sub i32 %i.ada, %i.adu                 ; 2 uses
  store i32 %i.adv, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i47 = load i64, ptr %i.adt, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i47, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i: ; preds = %bb.dm, %bb.dj, %bb.dl, %bb.dn, %bb.dh
  %i.adw = phi ptr [ %i.zt, %bb.dm ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dj ], [ %i.adg, %bb.dl ], [ %i.adt, %bb.dn ], [ %i.zt, %bb.dh ] ; 8 uses
  %i.adx = phi i32 [ %i.ada, %bb.dm ], [ %i.ada, %bb.dj ], [ %i.adh, %bb.dl ], [ %i.adv, %bb.dn ], [ %i.ada, %bb.dh ] ; 3 uses
  %i.ady = phi i64 [ %i.zv, %bb.dm ], [ %i.zv, %bb.dj ], [ %.val.i.i46, %bb.dl ], [ %.val.i47, %bb.dn ], [ %i.zv, %bb.dh ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.aao, 0
  br i1 %.not103.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i
  %i.adz = and i32 %i.adx, 63
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = shl i64 %i.ady, %i.aea
  %i.aec = sub nsw i32 0, %i.aat
  %i.aed = and i32 %i.aec, 63
  %i.aee = zext nneg i32 %i.aed to i64
  %i.aef = lshr i64 %i.aeb, %i.aee
  %i.aeg = add i32 %i.adx, %i.aat                 ; 2 uses
  store i32 %i.aeg, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.aeh = add i64 %i.aef, %i.aak
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i
  %i.aei = phi i32 [ %i.adx, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i ], [ %i.aeg, %bb.do ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.aak, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit227.i ], [ %i.aeh, %bb.do ] ; 7 uses
  br i1 %.not256, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aej = add i32 %i.aei, %i.abc                 ; 2 uses
  %i.aek = sub i32 0, %i.aej
  %i.ael = and i32 %i.aek, 63
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = lshr i64 %i.ady, %i.aem
  %i.aeo = zext nneg i8 %i.abb to i64
  %notmask.i.i239.i = shl nsw i64 -1, %i.aeo
  %i.aep = xor i64 %notmask.i.i239.i, -1
  %i.aeq = and i64 %i.aen, %i.aep
  %i.aer = zext i16 %i.aax to i64
  %i.aes = add nuw i64 %i.aeq, %i.aer             ; 5 uses
  store i64 %i.aes, ptr %i.cj, align 8, !tbaa !89, !noalias !238
  %i.aet = add i32 %i.aej, %i.abf                 ; 2 uses
  %i.aeu = sub i32 0, %i.aet
  %i.aev = and i32 %i.aeu, 63
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = lshr i64 %i.ady, %i.aew
  %i.aey = zext nneg i8 %i.abe to i64
  %notmask.i.i238.i = shl nsw i64 -1, %i.aey
  %i.aez = xor i64 %notmask.i.i238.i, -1
  %i.afa = and i64 %i.aex, %i.aez
  %i.afb = zext i16 %i.aay to i64
  %i.afc = add nuw i64 %i.afa, %i.afb             ; 5 uses
  store i64 %i.afc, ptr %i.ff, align 8, !tbaa !89, !noalias !238
  %i.afd = add i32 %i.aet, %i.abi                 ; 9 uses
  %i.afe = sub i32 0, %i.afd
  %i.aff = and i32 %i.afe, 63
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = lshr i64 %i.ady, %i.afg
  %i.afi = zext nneg i8 %i.abh to i64
  %notmask.i.i237.i = shl nsw i64 -1, %i.afi
  %i.afj = xor i64 %notmask.i.i237.i, -1
  %i.afk = and i64 %i.afh, %i.afj
  store i32 %i.afd, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %i.afl = zext i16 %i.aaz to i64
  %i.afm = add nuw i64 %i.afk, %i.afl             ; 5 uses
  store i64 %i.afm, ptr %i.dr, align 8, !tbaa !89, !noalias !238
  %i.afn = icmp ugt i32 %i.afd, 64
  br i1 %i.afn, label %bb.dr, label %bb.ds, !prof !60

bb.dr:                                            ; preds = %bb.dq
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.ds:                                            ; preds = %bb.dq
  %.not.i228.i = icmp ult ptr %i.adw, %i.ab
  br i1 %.not.i228.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.afo = lshr i32 %i.afd, 3
  %i.afp = zext nneg i32 %i.afo to i64
  %i.afq = sub nsw i64 0, %i.afp
  %i.afr = getelementptr inbounds i8, ptr %i.adw, i64 %i.afq ; 3 uses
  store ptr %i.afr, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.afs = and i32 %i.afd, 7                      ; 2 uses
  store i32 %i.afs, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i.i50 = load i64, ptr %i.afr, align 1, !tbaa !53, !noalias !238 ; 2 uses
  store i64 %.val.i.i50, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.aft = icmp eq ptr %i.adw, %3
  br i1 %i.aft, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.afu = lshr i32 %i.afd, 3                     ; 2 uses
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = sub nsw i64 0, %i.afv
  %i.afx = getelementptr inbounds i8, ptr %i.adw, i64 %i.afw
  %i.afy = icmp ult ptr %i.afx, %3
  %i.afz = ptrtoint ptr %i.adw to i64
  %i.aga = sub i64 %i.afz, %i.zs
  %i.agb = trunc i64 %i.aga to i32
  %.021.i230.i = select i1 %i.afy, i32 %i.agb, i32 %i.afu ; 2 uses
  %i.agc = zext i32 %.021.i230.i to i64
  %i.agd = sub nsw i64 0, %i.agc
  %i.age = getelementptr inbounds i8, ptr %i.adw, i64 %i.agd ; 3 uses
  store ptr %i.age, ptr %i.cx, align 8, !tbaa !86, !noalias !238
  %i.agf = shl i32 %.021.i230.i, 3
  %i.agg = sub i32 %i.afd, %i.agf                 ; 2 uses
  store i32 %i.agg, ptr %i.cn, align 8, !tbaa !91, !noalias !238
  %.val.i51 = load i64, ptr %i.age, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i51, ptr %9, align 8, !tbaa !87, !noalias !238
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.du, %bb.dr, %bb.dt, %bb.dv, %bb.dp
  %i.agh = phi ptr [ %i.adw, %bb.du ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.dr ], [ %i.afr, %bb.dt ], [ %i.age, %bb.dv ], [ %i.adw, %bb.dp ] ; 2 uses
  %i.agi = phi i32 [ %i.afd, %bb.du ], [ %i.afd, %bb.dr ], [ %i.afs, %bb.dt ], [ %i.agg, %bb.dv ], [ %i.aei, %bb.dp ] ; 2 uses
  %i.agj = phi i64 [ %i.ady, %bb.du ], [ %i.ady, %bb.dr ], [ %.val.i.i50, %bb.dt ], [ %.val.i51, %bb.dv ], [ %i.ady, %bb.dp ]
  %i.agk = phi i64 [ %i.afc, %bb.du ], [ %i.afc, %bb.dr ], [ %i.afc, %bb.dt ], [ %i.afc, %bb.dv ], [ %i.zz, %bb.dp ]
  %i.agl = phi i64 [ %i.afm, %bb.du ], [ %i.afm, %bb.dr ], [ %i.afm, %bb.dt ], [ %i.afm, %bb.dv ], [ %i.aaa, %bb.dp ]
  %i.agm = phi i64 [ %i.aes, %bb.du ], [ %i.aes, %bb.dr ], [ %i.aes, %bb.dt ], [ %i.aes, %bb.dv ], [ %i.aab, %bb.dp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.agn = getelementptr i8, ptr %.7149.i288, i64 %.sroa.0.0 ; 7 uses
  %i.ago = add i64 %.sroa.0.0, %.sroa.6.0         ; 9 uses
  %i.agp = load ptr, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %.sroa.0.0 ; 2 uses
  %i.agr = sub i64 0, %.sink464
  %i.ags = getelementptr inbounds i8, ptr %i.agn, i64 %i.agr ; 2 uses
  %i.agt = icmp ugt ptr %i.agq, %i.vf
  %i.agu = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 %i.ago
  %i.agv = icmp ugt ptr %i.agu, %i.vn
  %or.cond.i.i = select i1 %i.agt, i1 true, i1 %i.agv, !prof !112
  br i1 %or.cond.i.i, label %bb.dw, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  %i.agw = load <2 x i64>, ptr %i.agp, align 1, !tbaa !9
  store <2 x i64> %i.agw, ptr %.7149.i288, align 1, !tbaa !9
  %i.agx = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.agx, label %bb.dx, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, !prof !60

bb.dw:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  store i64 %.sroa.0.0, ptr %8, align 8, !tbaa !53
  store i64 %.sroa.6.0, ptr %.sroa.675.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink464, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !53
  %i.agy = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.7149.i288, ptr noundef %i.b, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vf, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.dx:                                            ; preds = %.critedge.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 16
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agp, i64 16 ; 2 uses
  %i.ahb = add i64 %.sroa.0.0, -16
  %i.ahc = load <2 x i64>, ptr %i.aha, align 1, !tbaa !9
  store <2 x i64> %i.ahc, ptr %i.agz, align 1, !tbaa !9
  %i.ahd = icmp slt i64 %i.ahb, 17
  br i1 %i.ahd, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahe = getelementptr inbounds nuw i8, ptr %.7149.i288, i64 32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %bb.dy
  %.130.i276.i = phi ptr [ %i.ahe, %bb.dy ], [ %i.ahj, %bb.dz ] ; 3 uses
  %.pn.i277.i = phi ptr [ %i.aha, %bb.dy ], [ %i.ahh, %bb.dz ] ; 2 uses
  %.1.i278.i = getelementptr inbounds nuw i8, ptr %.pn.i277.i, i64 16
  %i.ahf = load <2 x i64>, ptr %.1.i278.i, align 1, !tbaa !9
  store <2 x i64> %i.ahf, ptr %.130.i276.i, align 1, !tbaa !9
  %i.ahg = getelementptr inbounds nuw i8, ptr %.130.i276.i, i64 16
  %i.ahh = getelementptr inbounds nuw i8, ptr %.pn.i277.i, i64 32 ; 2 uses
  %i.ahi = load <2 x i64>, ptr %i.ahh, align 1, !tbaa !9
  store <2 x i64> %i.ahi, ptr %i.ahg, align 1, !tbaa !9
  %i.ahj = getelementptr inbounds nuw i8, ptr %.130.i276.i, i64 32 ; 2 uses
  %i.ahk = icmp ult ptr %i.ahj, %i.agn
  br i1 %i.ahk, label %bb.dz, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i: ; preds = %bb.dz, %bb.dx, %.critedge.i.i
  store ptr %i.agq, ptr %i.a, align 8, !tbaa !46
  %i.ahl = ptrtoint ptr %i.agn to i64             ; 2 uses
  %i.ahm = sub i64 %i.ahl, %i.gu                  ; 3 uses
  %i.ahn = icmp ugt i64 %.sink464, %i.ahm
  br i1 %i.ahn, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i
  %i.aho = sub i64 %i.ahl, %i.gv
  %i.ahp = icmp ugt i64 %.sink464, %i.aho
  br i1 %i.ahp, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, label %bb.eb, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread236

bb.eb:                                            ; preds = %bb.ea
  %i.ahq = ptrtoint ptr %i.ags to i64
  %i.ahr = sub i64 %i.ahq, %i.gu                  ; 3 uses
  %i.ahs = getelementptr inbounds i8, ptr %i.l, i64 %i.ahr ; 2 uses
  %i.aht = add nsw i64 %i.ahr, %.sroa.6.0         ; 2 uses
  %.not.i200.i = icmp sgt i64 %i.aht, 0
  br i1 %.not.i200.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agn, ptr align 1 %i.ahs, i64 %.sroa.6.0, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.ed:                                            ; preds = %bb.eb
  %gepdiff.i.i = sub nsw i64 0, %i.ahr            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agn, ptr align 1 %i.ahs, i64 %gepdiff.i.i, i1 false)
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agn, i64 %gepdiff.i.i
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i
  %.sroa.675.0 = phi i64 [ %i.aht, %bb.ed ], [ %.sroa.6.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 5 uses
  %.0175 = phi ptr [ %i.h, %bb.ed ], [ %i.ags, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 9 uses
  %.0174 = phi ptr [ %i.ahu, %bb.ed ], [ %i.agn, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit281.i ] ; 12 uses
  %i.ahv = icmp ugt i64 %.sink464, 15
  br i1 %i.ahv, label %bb.ef, label %bb.ei, !prof !97

bb.ef:                                            ; preds = %bb.ee
  %i.ahw = getelementptr inbounds i8, ptr %.0174, i64 %.sroa.675.0
  %i.ahx = load <2 x i64>, ptr %.0175, align 1, !tbaa !9
  store <2 x i64> %i.ahx, ptr %.0174, align 1, !tbaa !9
  %i.ahy = icmp slt i64 %.sroa.675.0, 17
  br i1 %i.ahy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0174, i64 16
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %bb.eg
  %.130.i283.i = phi ptr [ %i.ahz, %bb.eg ], [ %i.aie, %bb.eh ] ; 3 uses
  %.pn.i284.i = phi ptr [ %.0175, %bb.eg ], [ %i.aic, %bb.eh ] ; 2 uses
  %.1.i285.i = getelementptr inbounds nuw i8, ptr %.pn.i284.i, i64 16
  %i.aia = load <2 x i64>, ptr %.1.i285.i, align 1, !tbaa !9
  store <2 x i64> %i.aia, ptr %.130.i283.i, align 1, !tbaa !9
  %i.aib = getelementptr inbounds nuw i8, ptr %.130.i283.i, i64 16
  %i.aic = getelementptr inbounds nuw i8, ptr %.pn.i284.i, i64 32 ; 2 uses
  %i.aid = load <2 x i64>, ptr %i.aic, align 1, !tbaa !9
  store <2 x i64> %i.aid, ptr %i.aib, align 1, !tbaa !9
  %i.aie = getelementptr inbounds nuw i8, ptr %.130.i283.i, i64 32 ; 2 uses
  %i.aif = icmp ult ptr %i.aie, %i.ahw
  br i1 %i.aif, label %bb.eh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.ei:                                            ; preds = %bb.ee
  %i.aig = icmp samesign ult i64 %.sink464, 8
  br i1 %i.aig, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink464
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !3
  %i.aij = load i8, ptr %.0175, align 1, !tbaa !9
  store i8 %i.aij, ptr %.0174, align 1, !tbaa !9
  %i.aik = getelementptr inbounds nuw i8, ptr %.0175, i64 1
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !9
  %i.aim = getelementptr inbounds nuw i8, ptr %.0174, i64 1
  store i8 %i.ail, ptr %i.aim, align 1, !tbaa !9
  %i.ain = getelementptr inbounds nuw i8, ptr %.0175, i64 2
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !9
  %i.aip = getelementptr inbounds nuw i8, ptr %.0174, i64 2
  store i8 %i.aio, ptr %i.aip, align 1, !tbaa !9
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0175, i64 3
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !9
  %i.ais = getelementptr inbounds nuw i8, ptr %.0174, i64 3
  store i8 %i.air, ptr %i.ais, align 1, !tbaa !9
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink464
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !3
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0175, i64 %i.aiv ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.0174, i64 4
  %i.aiy = load i32, ptr %i.aiw, align 1
  store i32 %i.aiy, ptr %i.aix, align 1
  %i.aiz = sext i32 %i.aii to i64
  %i.aja = sub nsw i64 0, %i.aiz
  %i.ajb = getelementptr inbounds i8, ptr %i.aiw, i64 %i.aja
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i

bb.ek:                                            ; preds = %bb.ei
  %i.ajc = load i64, ptr %.0175, align 1
  store i64 %i.ajc, ptr %.0174, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i: ; preds = %bb.ek, %bb.ej
  %.1176 = phi ptr [ %i.ajb, %bb.ej ], [ %.0175, %bb.ek ] ; 2 uses
  %.1176180 = ptrtoaddr ptr %.1176 to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %.1176, i64 8 ; 7 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.0174, i64 8 ; 6 uses
  %i.ajf = icmp ugt i64 %.sroa.675.0, 8
  br i1 %i.ajf, label %bb.el, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.el:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit297.i
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = ptrtoint ptr %i.ajd to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = getelementptr i8, ptr %.0174, i64 %.sroa.675.0 ; 2 uses
  %i.ajk = icmp slt i64 %i.aji, 16
  br i1 %i.ajk, label %.preheader258.preheader, label %bb.em

.preheader258.preheader:                          ; preds = %bb.el
  %i.ajl = add i64 %.sroa.6.0, %i.gu
  %umin182 = tail call i64 @llvm.umin.i64(i64 %.sink464, i64 %i.ahm)
  %i.ajm = add i64 %i.ajl, %umin182
  %umax183 = tail call i64 @llvm.umax.i64(i64 %.sink464, i64 %i.ahm) ; 3 uses
  %i.ajn = add i64 %i.ajm, %umax183
  %i.ajo = sub i64 %i.ajn, %.sink464
  %i.ajp = add i64 %i.zq, %umax183
  %umax184 = tail call i64 @llvm.umax.i64(i64 %i.ajo, i64 %i.ajp)
  %i.ajq = add i64 %umax184, -9
  %i.ajr = add i64 %umax183, %i.gu
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 2 uses
  %i.ajt = lshr i64 %i.ajs, 3
  %i.aju = add nuw nsw i64 %i.ajt, 1              ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.ajs, 72
  br i1 %min.iters.check186, label %.preheader258.preheader205, label %vector.memcheck177

end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL29ZSTD_decompressSequences_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !159
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !160
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !161
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !162
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !163
  %i.gz = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.hc = ptrtoint ptr %i.o to i64                ; 7 uses
  %i.hd = ptrtoint ptr %i.q to i64
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.he = add i64 %i.hc, 16
  %i.hf = ptrtoint ptr %3 to i64
  %i.hg = ptrtoint ptr %3 to i64
  br label %bb.af

bb.af:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25, %bb.bw
  %i.hh = phi ptr [ %i.gu, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.nv, %bb.bw ] ; 8 uses
  %i.hi = phi i32 [ %i.gv, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.nw, %bb.bw ] ; 5 uses
  %i.hj = phi i64 [ %i.gw, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.nx, %bb.bw ] ; 6 uses
  %i.hk = phi i64 [ %i.ae, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.ke, %bb.bw ] ; 2 uses
  %i.hl = phi i64 [ %i.aa, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %.sink159, %bb.bw ] ; 6 uses
  %i.hm = phi i64 [ %i.x, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %.sink, %bb.bw ] ; 6 uses
  %i.hn = phi i64 [ %i.fy, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.ny, %bb.bw ] ; 2 uses
  %i.ho = phi i64 [ %i.ek, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.nz, %bb.bw ] ; 2 uses
  %i.hp = phi i64 [ %i.dc, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.oa, %bb.bw ] ; 2 uses
  %.063.i105 = phi i32 [ %5, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.sj, %bb.bw ] ; 2 uses
  %.068.i103 = phi ptr [ %1, %_ZN11duckdb_zstdL17ZSTD_initFseStateEPNS_13ZSTD_fseStateEPNS_13BIT_DStream_tEPKNS_14ZSTD_seqSymbolE.exit25 ], [ %i.si, %bb.bw ] ; 8 uses
  %.068.i10311 = ptrtoaddr ptr %.068.i103 to i64
  %.not = icmp eq i32 %.063.i105, 1
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.hp ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hn ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ho ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !49, !noalias !243
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !49, !noalias !243 ; 2 uses
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !49, !noalias !243 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !66, !noalias !243 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !66, !noalias !243 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !66, !noalias !243 ; 4 uses
  %i.ih = zext i8 %i.ic to i32                    ; 2 uses
  %i.ii = zext i8 %i.ie to i32                    ; 2 uses
  %i.ij = add i8 %i.ie, %i.ic
  %i.ik = add i8 %i.ij, %i.ig
  %i.il = load i16, ptr %i.hq, align 4, !tbaa !65, !noalias !243
  %i.im = load i16, ptr %i.hr, align 4, !tbaa !65, !noalias !243
  %i.in = load i16, ptr %i.hs, align 4, !tbaa !65, !noalias !243
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !64, !noalias !243 ; 2 uses
  %i.iq = zext i8 %i.ip to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !64, !noalias !243 ; 2 uses
  %i.it = zext i8 %i.is to i32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !64, !noalias !243 ; 2 uses
  %i.iw = zext i8 %i.iv to i32
  %i.ix = icmp ugt i8 %i.ig, 1
  br i1 %i.ix, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iy = zext i8 %i.ig to i32                    ; 2 uses
  %i.iz = and i32 %i.hi, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl i64 %i.hj, %i.ja
  %i.jc = sub nsw i32 0, %i.iy
  %i.jd = and i32 %i.jc, 63
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = lshr i64 %i.jb, %i.je
  %i.jg = add i32 %i.hi, %i.iy                    ; 2 uses
  store i32 %i.jg, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.jh = zext i32 %i.ia to i64
  %i.ji = add i64 %i.jf, %i.jh
  store i64 %i.hl, ptr %i.hb, align 8, !tbaa !53, !noalias !243
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.jj = icmp eq i32 %i.hx, 0                    ; 3 uses
  %i.jk = icmp eq i8 %i.ig, 0
  br i1 %i.jk, label %bb.ai, label %bb.aj, !prof !97

bb.ai:                                            ; preds = %bb.ah
  %i.jl = select i1 %i.jj, i64 %i.hl, i64 %i.hm
  %i.jm = select i1 %i.jj, i64 %i.hm, i64 %i.hl
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.jn = zext i1 %i.jj to i32
  %i.jo = add i32 %i.ia, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = and i32 %i.hi, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl i64 %i.hj, %i.jr
  %i.jt = lshr i64 %i.js, 63
  %i.ju = add i32 %i.hi, 1                        ; 3 uses
  store i32 %i.ju, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.jv = add nuw nsw i64 %i.jt, %i.jp            ; 3 uses
  %i.jw = icmp eq i64 %i.jv, 3
  br i1 %i.jw, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.jx = add i64 %i.hm, -1                       ; 2 uses
  %.not.i.i78 = icmp eq i64 %i.jx, 0
  %i.jy = select i1 %.not.i.i78, i64 -1, i64 %i.jx
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.jv
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !53, !noalias !243 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ka, 0
  %i.kb = select i1 %.not.i.i, i64 -1, i64 %i.ka  ; 2 uses
  %.not101.i.i = icmp eq i64 %i.jv, 1
  br i1 %.not101.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.kc = phi i64 [ %i.jy, %.thread ], [ %i.kb, %bb.ak ]
  store i64 %i.hl, ptr %i.hb, align 8, !tbaa !53, !noalias !243
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ag
  %i.kd = phi i32 [ %i.jg, %bb.ag ], [ %i.hi, %bb.ai ], [ %i.ju, %bb.al ], [ %i.ju, %bb.ak ] ; 3 uses
  %.sink159 = phi i64 [ %i.hm, %bb.ag ], [ %i.jm, %bb.ai ], [ %i.hm, %bb.al ], [ %i.hm, %bb.ak ] ; 3 uses
  %.sink = phi i64 [ %i.ji, %bb.ag ], [ %i.jl, %bb.ai ], [ %i.kc, %bb.al ], [ %i.kb, %bb.ak ] ; 15 uses
  %i.ke = phi i64 [ %i.hl, %bb.ag ], [ %i.hk, %bb.ai ], [ %i.hl, %bb.al ], [ %i.hk, %bb.ak ] ; 2 uses
  store i64 %.sink159, ptr %i.ha, align 8, !tbaa !53, !noalias !243
  store i64 %.sink, ptr %i.v, align 8, !tbaa !53, !noalias !243
  %.not102.i.i = icmp eq i8 %i.ie, 0
  br i1 %.not102.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kf = and i32 %i.kd, 63
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = shl i64 %i.hj, %i.kg
  %i.ki = sub nsw i32 0, %i.ii
  %i.kj = and i32 %i.ki, 63
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = lshr i64 %i.kh, %i.kk
  %i.km = add i32 %i.kd, %i.ii                    ; 2 uses
  store i32 %i.km, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.kn = add i64 %i.kl, %i.hv
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ko = phi i32 [ %i.kd, %bb.am ], [ %i.km, %bb.an ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.hv, %bb.am ], [ %i.kn, %bb.an ] ; 6 uses
  %i.kp = icmp ugt i8 %i.ik, 30
  br i1 %i.kp, label %bb.ap, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, !prof !60

bb.ap:                                            ; preds = %bb.ao
  %i.kq = icmp ugt i32 %i.ko, 64
  br i1 %i.kq, label %bb.aq, label %bb.ar, !prof !60

bb.aq:                                            ; preds = %bb.ap
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.de, align 8, !tbaa !86, !noalias !243
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i83.i = icmp ult ptr %i.hh, %i.ai
  br i1 %.not.i83.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kr = lshr i32 %i.ko, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds i8, ptr %i.hh, i64 %i.kt ; 3 uses
  store ptr %i.ku, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.kv = and i32 %i.ko, 7                        ; 2 uses
  store i32 %i.kv, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i.i30 = load i64, ptr %i.ku, align 1, !tbaa !53, !noalias !243 ; 2 uses
  store i64 %.val.i.i30, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.kw = icmp eq ptr %i.hh, %3
  br i1 %i.kw, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kx = lshr i32 %i.ko, 3                       ; 2 uses
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.hh, i64 %i.kz
  %i.lb = icmp ult ptr %i.la, %3
  %i.lc = ptrtoint ptr %i.hh to i64
  %i.ld = sub i64 %i.lc, %i.hf
  %i.le = trunc i64 %i.ld to i32
  %.021.i.i = select i1 %i.lb, i32 %i.le, i32 %i.kx ; 2 uses
  %i.lf = zext i32 %.021.i.i to i64
  %i.lg = sub nsw i64 0, %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.hh, i64 %i.lg ; 3 uses
  store ptr %i.lh, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.li = shl i32 %.021.i.i, 3
  %i.lj = sub i32 %i.ko, %i.li                    ; 2 uses
  store i32 %i.lj, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i31 = load i64, ptr %i.lh, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i31, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.at, %bb.aq, %bb.as, %bb.au, %bb.ao
  %i.lk = phi ptr [ %i.hh, %bb.at ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.aq ], [ %i.ku, %bb.as ], [ %i.lh, %bb.au ], [ %i.hh, %bb.ao ] ; 8 uses
  %i.ll = phi i32 [ %i.ko, %bb.at ], [ %i.ko, %bb.aq ], [ %i.kv, %bb.as ], [ %i.lj, %bb.au ], [ %i.ko, %bb.ao ] ; 3 uses
  %i.lm = phi i64 [ %i.hj, %bb.at ], [ %i.hj, %bb.aq ], [ %.val.i.i30, %bb.as ], [ %.val.i31, %bb.au ], [ %i.hj, %bb.ao ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not103.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.ln = and i32 %i.ll, 63
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl i64 %i.lm, %i.lo
  %i.lq = sub nsw i32 0, %i.ih
  %i.lr = and i32 %i.lq, 63
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = lshr i64 %i.lp, %i.ls
  %i.lu = add i32 %i.ll, %i.ih                    ; 2 uses
  store i32 %i.lu, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.lv = add i64 %i.lt, %i.hy
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.lw = phi i32 [ %i.ll, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.lu, %bb.av ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.hy, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.lv, %bb.av ] ; 7 uses
  br i1 %.not, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lx = add i32 %i.lw, %i.iq                    ; 2 uses
  %i.ly = sub i32 0, %i.lx
  %i.lz = and i32 %i.ly, 63
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = lshr i64 %i.lm, %i.ma
  %i.mc = zext nneg i8 %i.ip to i64
  %notmask.i.i93.i = shl nsw i64 -1, %i.mc
  %i.md = xor i64 %notmask.i.i93.i, -1
  %i.me = and i64 %i.mb, %i.md
  %i.mf = zext i16 %i.il to i64
  %i.mg = add nuw i64 %i.me, %i.mf                ; 5 uses
  store i64 %i.mg, ptr %i.cq, align 8, !tbaa !89, !noalias !243
  %i.mh = add i32 %i.lx, %i.it                    ; 2 uses
  %i.mi = sub i32 0, %i.mh
  %i.mj = and i32 %i.mi, 63
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = lshr i64 %i.lm, %i.mk
  %i.mm = zext nneg i8 %i.is to i64
  %notmask.i.i92.i = shl nsw i64 -1, %i.mm
  %i.mn = xor i64 %notmask.i.i92.i, -1
  %i.mo = and i64 %i.ml, %i.mn
  %i.mp = zext i16 %i.im to i64
  %i.mq = add nuw i64 %i.mo, %i.mp                ; 5 uses
  store i64 %i.mq, ptr %i.fm, align 8, !tbaa !89, !noalias !243
  %i.mr = add i32 %i.mh, %i.iw                    ; 9 uses
  %i.ms = sub i32 0, %i.mr
  %i.mt = and i32 %i.ms, 63
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = lshr i64 %i.lm, %i.mu
  %i.mw = zext nneg i8 %i.iv to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mw
  %i.mx = xor i64 %notmask.i.i.i, -1
  %i.my = and i64 %i.mv, %i.mx
  store i32 %i.mr, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %i.mz = zext i16 %i.in to i64
  %i.na = add nuw i64 %i.my, %i.mz                ; 5 uses
  store i64 %i.na, ptr %i.dy, align 8, !tbaa !89, !noalias !243
  %i.nb = icmp ugt i32 %i.mr, 64
  br i1 %i.nb, label %bb.ay, label %bb.az, !prof !60

bb.ay:                                            ; preds = %bb.ax
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.de, align 8, !tbaa !86, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.az:                                            ; preds = %bb.ax
  %.not.i85.i = icmp ult ptr %i.lk, %i.ai
  br i1 %.not.i85.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nc = lshr i32 %i.mr, 3
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = sub nsw i64 0, %i.nd
  %i.nf = getelementptr inbounds i8, ptr %i.lk, i64 %i.ne ; 3 uses
  store ptr %i.nf, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.ng = and i32 %i.mr, 7                        ; 2 uses
  store i32 %i.ng, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i.i34 = load i64, ptr %i.nf, align 1, !tbaa !53, !noalias !243 ; 2 uses
  store i64 %.val.i.i34, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.nh = icmp eq ptr %i.lk, %3
  br i1 %i.nh, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ni = lshr i32 %i.mr, 3                       ; 2 uses
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = sub nsw i64 0, %i.nj
  %i.nl = getelementptr inbounds i8, ptr %i.lk, i64 %i.nk
  %i.nm = icmp ult ptr %i.nl, %3
  %i.nn = ptrtoint ptr %i.lk to i64
  %i.no = sub i64 %i.nn, %i.hg
  %i.np = trunc i64 %i.no to i32
  %.021.i87.i = select i1 %i.nm, i32 %i.np, i32 %i.ni ; 2 uses
  %i.nq = zext i32 %.021.i87.i to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds i8, ptr %i.lk, i64 %i.nr ; 3 uses
  store ptr %i.ns, ptr %i.de, align 8, !tbaa !86, !noalias !243
  %i.nt = shl i32 %.021.i87.i, 3
  %i.nu = sub i32 %i.mr, %i.nt                    ; 2 uses
  store i32 %i.nu, ptr %i.cu, align 8, !tbaa !91, !noalias !243
  %.val.i35 = load i64, ptr %i.ns, align 1, !tbaa !53 ; 2 uses
  store i64 %.val.i35, ptr %7, align 8, !tbaa !87, !noalias !243
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i: ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.bc, %bb.aw
  %i.nv = phi ptr [ %i.lk, %bb.bb ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ay ], [ %i.nf, %bb.ba ], [ %i.ns, %bb.bc ], [ %i.lk, %bb.aw ] ; 2 uses
  %i.nw = phi i32 [ %i.mr, %bb.bb ], [ %i.mr, %bb.ay ], [ %i.ng, %bb.ba ], [ %i.nu, %bb.bc ], [ %i.lw, %bb.aw ] ; 2 uses
  %i.nx = phi i64 [ %i.lm, %bb.bb ], [ %i.lm, %bb.ay ], [ %.val.i.i34, %bb.ba ], [ %.val.i35, %bb.bc ], [ %i.lm, %bb.aw ]
  %i.ny = phi i64 [ %i.mq, %bb.bb ], [ %i.mq, %bb.ay ], [ %i.mq, %bb.ba ], [ %i.mq, %bb.bc ], [ %i.hn, %bb.aw ]
  %i.nz = phi i64 [ %i.na, %bb.bb ], [ %i.na, %bb.ay ], [ %i.na, %bb.ba ], [ %i.na, %bb.bc ], [ %i.ho, %bb.aw ]
  %i.oa = phi i64 [ %i.mg, %bb.bb ], [ %i.mg, %bb.ay ], [ %i.mg, %bb.ba ], [ %i.mg, %bb.bc ], [ %i.hp, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ob = getelementptr i8, ptr %.068.i103, i64 %.sroa.0.0 ; 7 uses
  %i.oc = add i64 %.sroa.0.0, %.sroa.6.0          ; 9 uses
  %i.od = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %.sroa.0.0 ; 2 uses
  %i.of = sub i64 0, %.sink
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 %i.of ; 2 uses
  %i.oh = icmp ugt ptr %i.oe, %i.m
  %i.oi = getelementptr inbounds nuw i8, ptr %.068.i103, i64 %i.oc
  %i.oj = icmp ugt ptr %i.oi, %i.gz
  %or.cond.i.i = select i1 %i.oh, i1 true, i1 %i.oj, !prof !112
  br i1 %or.cond.i.i, label %bb.bd, label %.critedge.i.i, !prof !112

.critedge.i.i:                                    ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  %i.ok = load <2 x i64>, ptr %i.od, align 1, !tbaa !9
  store <2 x i64> %i.ok, ptr %.068.i103, align 1, !tbaa !9
  %i.ol = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.ol, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !prof !60

bb.bd:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit.i
  store i64 %.sroa.0.0, ptr %6, align 8, !tbaa !53
  store i64 %.sroa.6.0, ptr %.sroa.643.0..sroa_idx, align 8, !tbaa !53
  store i64 %.sink, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !53
  %i.om = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.068.i103, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.068.i103, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.op = add i64 %.sroa.0.0, -16
  %i.oq = load <2 x i64>, ptr %i.oo, align 1, !tbaa !9
  store <2 x i64> %i.oq, ptr %i.on, align 1, !tbaa !9
  %i.or = icmp slt i64 %i.op, 17
  br i1 %i.or, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.os = getelementptr inbounds nuw i8, ptr %.068.i103, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.130.i.i = phi ptr [ %i.os, %bb.bf ], [ %i.ox, %bb.bg ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.oo, %bb.bf ], [ %i.ov, %bb.bg ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ot = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !9
  store <2 x i64> %i.ot, ptr %.130.i.i, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.ow = load <2 x i64>, ptr %i.ov, align 1, !tbaa !9
  store <2 x i64> %i.ow, ptr %i.ou, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.oy = icmp ult ptr %i.ox, %i.ob
  br i1 %i.oy, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !108

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.bg, %bb.be, %.critedge.i.i
  store ptr %i.oe, ptr %i.a, align 8, !tbaa !46
  %i.oz = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.pa = sub i64 %i.oz, %i.hc                    ; 3 uses
  %i.pb = icmp ugt i64 %.sink, %i.pa
  br i1 %i.pb, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.pc = sub i64 %i.oz, %i.hd
  %i.pd = icmp ugt i64 %.sink, %i.pc
  br i1 %i.pd, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread, label %bb.bi, !prof !60

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i.thread: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread85

bb.bi:                                            ; preds = %bb.bh
  %i.pe = ptrtoint ptr %i.og to i64
  %i.pf = sub i64 %i.pe, %i.hc                    ; 3 uses
  %i.pg = getelementptr inbounds i8, ptr %i.s, i64 %i.pf ; 2 uses
  %i.ph = add nsw i64 %i.pf, %.sroa.6.0           ; 2 uses
  %.not.i82.i = icmp sgt i64 %i.ph, 0
  br i1 %.not.i82.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr align 1 %i.pg, i64 %.sroa.6.0, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i.i = sub nsw i64 0, %i.pf             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ob, ptr align 1 %i.pg, i64 %gepdiff.i.i, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ob, i64 %gepdiff.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.sroa.643.0 = phi i64 [ %i.ph, %bb.bk ], [ %.sroa.6.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %.072 = phi ptr [ %i.o, %bb.bk ], [ %i.og, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.0 = phi ptr [ %i.pi, %bb.bk ], [ %i.ob, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %i.pj = icmp ugt i64 %.sink, 15
  br i1 %i.pj, label %bb.bm, label %bb.bp, !prof !97

bb.bm:                                            ; preds = %bb.bl
  %i.pk = getelementptr inbounds i8, ptr %.0, i64 %.sroa.643.0
  %i.pl = load <2 x i64>, ptr %.072, align 1, !tbaa !9
  store <2 x i64> %i.pl, ptr %.0, align 1, !tbaa !9
  %i.pm = icmp slt i64 %.sroa.643.0, 17
  br i1 %i.pm, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.130.i97.i = phi ptr [ %i.pn, %bb.bn ], [ %i.ps, %bb.bo ] ; 3 uses
  %.pn.i98.i = phi ptr [ %.072, %bb.bn ], [ %i.pq, %bb.bo ] ; 2 uses
  %.1.i99.i = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 16
  %i.po = load <2 x i64>, ptr %.1.i99.i, align 1, !tbaa !9
  store <2 x i64> %i.po, ptr %.130.i97.i, align 1, !tbaa !9
  %i.pp = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %.pn.i98.i, i64 32 ; 2 uses
  %i.pr = load <2 x i64>, ptr %i.pq, align 1, !tbaa !9
  store <2 x i64> %i.pr, ptr %i.pp, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %.130.i97.i, i64 32 ; 2 uses
  %i.pt = icmp ult ptr %i.ps, %i.pk
  br i1 %i.pt, label %bb.bo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !108

bb.bp:                                            ; preds = %bb.bl
  %i.pu = icmp samesign ult i64 %.sink, 8
  br i1 %i.pu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !3
  %i.px = load i8, ptr %.072, align 1, !tbaa !9
  store i8 %i.px, ptr %.0, align 1, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %.072, i64 1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !9
  %i.qa = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !9
  %i.qb = getelementptr inbounds nuw i8, ptr %.072, i64 2
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %.072, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !9
  %i.qg = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %.072, i64 %i.qj ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.qm = load i32, ptr %i.qk, align 1
  store i32 %i.qm, ptr %i.ql, align 1
  %i.qn = sext i32 %i.pw to i64
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.qk, i64 %i.qo
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.qq = load i64, ptr %.072, align 1
  store i64 %i.qq, ptr %.0, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qp, %bb.bq ], [ %.072, %bb.br ] ; 2 uses
  %.112 = ptrtoaddr ptr %.1 to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 7 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 6 uses
  %i.qt = icmp ugt i64 %.sroa.643.0, 8
  br i1 %i.qt, label %bb.bs, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = getelementptr i8, ptr %.0, i64 %.sroa.643.0 ; 2 uses
  %i.qy = icmp slt i64 %i.qw, 16
  br i1 %i.qy, label %.preheader97.preheader, label %bb.bt

.preheader97.preheader:                           ; preds = %bb.bs
  %i.qz = add i64 %.sroa.6.0, %i.hc
  %umin = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.pa)
  %i.ra = add i64 %i.qz, %umin
  %umax13 = tail call i64 @llvm.umax.i64(i64 %.sink, i64 %i.pa) ; 3 uses
  %i.rb = add i64 %i.ra, %umax13
  %i.rc = sub i64 %i.rb, %.sink
  %i.rd = add i64 %i.he, %umax13
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.rc, i64 %i.rd)
  %i.re = add i64 %umax14, -9
  %i.rf = add i64 %umax13, %i.hc
  %i.rg = sub i64 %i.re, %i.rf                    ; 2 uses
  %i.rh = lshr i64 %i.rg, 3
  %i.ri = add nuw nsw i64 %i.rh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.rg, 72
  br i1 %min.iters.check, label %.preheader97.preheader19, label %vector.memcheck

end_hunk_7
