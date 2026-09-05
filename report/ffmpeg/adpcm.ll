Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcm?download=true
inline.NumInlined: 172
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@adpcm_decode_frame:bb.a
  %.sroa.02376.33528 = phi ptr [ %.sroa.02376.1662659, %.lr.ph3530.preheader ], [ %i.ou, %.critedge1854 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv4065 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.02376.33528, i64 2
  %i.ok = load i16, ptr %.sroa.02376.33528, align 1, !tbaa !13 ; 2 uses
  %i.ol = sext i16 %i.ok to i32
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv4065
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !181
  store i16 %i.ok, ptr %i.on, align 2, !tbaa !12
  store i32 %i.ol, ptr %i.oi, align 4, !tbaa !14
  %i.oo = load i8, ptr %i.oj, align 1, !tbaa !13  ; 3 uses
  %i.op = zext i8 %i.oo to i16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i16 %i.op, ptr %i.oq, align 4, !tbaa !11
  %i.or = icmp ult i8 %i.oo, 89
  br i1 %i.or, label %.critedge1854, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph3530
  %i.os = trunc nuw nsw i64 %indvars.iv4065 to i32
  %i.ot = zext i8 %i.oo to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.102, i32 noundef %i.os, i32 noundef %i.ot) #13
  br label %.critedge1894

.critedge1854:                                    ; preds = %.lr.ph3530
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.02376.33528, i64 4 ; 5 uses
  %indvars.iv.next4066 = add nuw nsw i64 %indvars.iv4065, 1 ; 2 uses
  %exitcond4069.not = icmp eq i64 %indvars.iv.next4066, %wide.trip.count4068
  br i1 %exitcond4069.not, label %.critedge1856, label %.lr.ph3530, !llvm.loop !54

.critedge1856:                                    ; preds = %.critedge1854
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !43 ; 7 uses
  %.not1845 = icmp eq i32 %i.ow, 4
  br i1 %.not1845, label %.preheader2773, label %bb.bv

.preheader2773:                                   ; preds = %.critedge1856
  %i.ox = icmp sgt i32 %.01552, 8
  br i1 %i.ox, label %.preheader2772.lr.ph, label %.critedge1852thread-pre-split

.preheader2772.lr.ph:                             ; preds = %.preheader2773
  %i.oy = add nsw i32 %.01552, -1
  %i.oz = lshr i32 %i.oy, 3
  %wide.trip.count4103 = zext nneg i32 %i.oz to i64
  %wide.trip.count4097 = zext nneg i32 %i.o to i64
  br label %.lr.ph3549

bb.bv:                                            ; preds = %.critedge1856
  %i.pa = add nsw i32 %i.ow, -2                   ; 7 uses
  %i.pb = sext i32 %i.pa to i64                   ; 2 uses
  %i.pc = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_samples, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !13  ; 2 uses
  %i.pe = zext i8 %i.pd to i32
  %i.pf = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_sizes, i64 %i.pb
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !13  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(84) %i.a, i8 0, i64 84, i1 false)
  %i.ph = add nsw i32 %.01552, -1
  %i.pi = udiv i32 %i.ph, %i.pe                   ; 2 uses
  %.not1847.not3542 = icmp sgt i32 %i.pi, 0
  br i1 %.not1847.not3542, label %.preheader2775.lr.ph.split, label %.thread2672

.preheader2775.lr.ph.split:                       ; preds = %bb.bv
  %i.pj = zext i8 %i.pg to i32                    ; 2 uses
  %i.pk = shl nuw nsw i32 %i.pj, 3
  %i.pl = add nuw nsw i32 %i.pk, 8
  %i.pm = add i32 %i.ow, -1                       ; 5 uses
  %i.pn = sub i32 32, %i.ow
  %i.po = lshr i32 -1, %i.pn
  %notmask.i.i = shl nsw i32 -1, %i.pm
  %i.pp = xor i32 %notmask.i.i, -1
  %i.pq = icmp sgt i32 %i.ow, 1
  %i.pr = shl nuw i32 1, %i.pm
  %i.ps = sext i32 %i.ow to i64
  %i.pt = getelementptr [8 x i8], ptr @adpcm_index_tables, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pt, i64 -16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !179
  %umax = tail call i32 @llvm.umax.i32(i32 %i.pj, i32 1) ; 2 uses
  %i.pw = zext i8 %i.pd to i64                    ; 2 uses
  %i.px = zext i8 %i.pg to i64
  %wide.trip.count4089 = zext nneg i32 %i.pi to i64
  %wide.trip.count4084 = zext nneg i32 %i.o to i64
  %wide.trip.count4073 = zext nneg i32 %umax to i64 ; 2 uses
  %xtraiter4881 = and i64 %wide.trip.count4073, 1
  %unroll_iter4885 = and i64 %wide.trip.count4073, 254
  %lcmp.mod4883.not = icmp eq i64 %xtraiter4881, 0
  %lcmp.mod4884 = trunc i32 %umax to i1
  %xtraiter4887 = and i32 %i.pm, 3                ; 3 uses
  %i.py = icmp ult i32 %i.pa, 3
  %unroll_iter4892 = and i32 %i.pm, -4
  %lcmp.mod4889.not = icmp eq i32 %xtraiter4887, 0
  %lcmp.mod4891 = icmp ne i32 %xtraiter4887, 0
  br label %.preheader2775

.preheader2775:                                   ; preds = %.preheader2775.lr.ph.split, %..thread2669_crit_edge
  %indvars.iv4086 = phi i64 [ 0, %.preheader2775.lr.ph.split ], [ %indvars.iv.next4087, %..thread2669_crit_edge ] ; 3 uses
  %i.pz = mul nuw nsw i64 %indvars.iv4086, %i.pw
  %i.qa = mul nuw nsw i64 %indvars.iv4086, %i.px
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = add i32 %i.qb, 4                        ; 3 uses
  br label %.lr.ph3534

.lr.ph3534:                                       ; preds = %bb.by, %.preheader2775
  %indvars.iv4081 = phi i64 [ 0, %.preheader2775 ], [ %indvars.iv.next4082, %bb.by ] ; 4 uses
  %i.qd = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv4081 ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv4081
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !181
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.pz
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  %indvars.iv4081.tr = trunc nuw i64 %indvars.iv4081 to i32
  %i.qi = shl nuw i32 %indvars.iv4081.tr, 2       ; 3 uses
  br label %bb.bw

._crit_edge3535.unr-lcssa:                        ; preds = %bb.bw
  br i1 %lcmp.mod4883.not, label %._crit_edge3535, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3535.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod4884)
  %i.qj = trunc nuw nsw i64 %indvars.iv.next4071.1 to i32 ; 2 uses
  %i.qk = and i32 %i.qj, 3
  %i.ql = and i32 %i.qj, 2147483644
  %reass.add.epil = add i32 %i.qc, %i.ql
  %reass.mul.epil = mul i32 %reass.add.epil, %i.o
  %i.qm = or disjoint i32 %i.qk, %i.qi
  %i.qn = add i32 %i.qm, %reass.mul.epil
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds i8, ptr %i.i, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !13
  %i.qr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next4071.1
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !13
  br label %._crit_edge3535

._crit_edge3535:                                  ; preds = %._crit_edge3535.unr-lcssa, %.epil.preheader
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qd, i64 4 ; 2 uses
  %.promoted3536 = load i32, ptr %i.qd, align 4, !tbaa !14
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bw, %.lr.ph3534
  %indvars.iv4070 = phi i64 [ 0, %.lr.ph3534 ], [ %indvars.iv.next4071.1, %bb.bw ] ; 4 uses
  %niter4886 = phi i64 [ 0, %.lr.ph3534 ], [ %niter4886.next.1, %bb.bw ]
  %i.qt = trunc nuw nsw i64 %indvars.iv4070 to i32 ; 2 uses
  %i.qu = and i32 %i.qt, 2
  %i.qv = and i32 %i.qt, 2147483644
  %reass.add = add i32 %i.qc, %i.qv
  %reass.mul = mul i32 %reass.add, %i.o
  %i.qw = or disjoint i32 %i.qu, %i.qi
  %i.qx = add i32 %i.qw, %reass.mul
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds i8, ptr %i.i, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !13
  %i.rb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv4070
  store i8 %i.ra, ptr %i.rb, align 2, !tbaa !13
  %indvars.iv.next4071 = or disjoint i64 %indvars.iv4070, 1 ; 2 uses
  %i.rc = trunc nuw nsw i64 %indvars.iv.next4071 to i32 ; 2 uses
  %i.rd = and i32 %i.rc, 3
  %i.re = and i32 %i.rc, 2147483644
  %reass.add.1 = add i32 %i.qc, %i.re
  %reass.mul.1 = mul i32 %reass.add.1, %i.o
  %i.rf = or disjoint i32 %i.rd, %i.qi
  %i.rg = add i32 %i.rf, %reass.mul.1
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %i.i, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !13
  %i.rk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next4071
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !13
  %indvars.iv.next4071.1 = add nuw nsw i64 %indvars.iv4070, 2 ; 3 uses
  %niter4886.next.1 = add i64 %niter4886, 2       ; 2 uses
  %niter4886.ncmp.1 = icmp eq i64 %niter4886.next.1, %unroll_iter4885
  br i1 %niter4886.ncmp.1, label %._crit_edge3535.unr-lcssa, label %bb.bw, !llvm.loop !55

bb.bx:                                            ; preds = %._crit_edge3535, %adpcm_ima_wav_expand_nibble.exit
  %indvars.iv4075 = phi i64 [ 0, %._crit_edge3535 ], [ %indvars.iv.next4076, %adpcm_ima_wav_expand_nibble.exit ] ; 2 uses
  %.sroa.52373.03537 = phi i32 [ 0, %._crit_edge3535 ], [ %i.ru, %adpcm_ima_wav_expand_nibble.exit ] ; 3 uses
  %i.rl = phi i32 [ %.promoted3536, %._crit_edge3535 ], [ %i.tw, %adpcm_ima_wav_expand_nibble.exit ]
  %i.rm = lshr i32 %.sroa.52373.03537, 3
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 1, !tbaa !13
  %i.rq = and i32 %.sroa.52373.03537, 7
  %i.rr = lshr i32 %i.rp, %i.rq
  %i.rs = and i32 %i.rr, %i.po                    ; 3 uses
  %i.rt = add i32 %.sroa.52373.03537, %i.ow
  %i.ru = tail call i32 @llvm.umin.i32(i32 %i.pl, i32 %i.rt)
  %i.rv = load i16, ptr %i.qs, align 4, !tbaa !11 ; 2 uses
  %i.rw = sext i16 %i.rv to i64
  %i.rx = getelementptr inbounds [2 x i8], ptr @ff_adpcm_step_table, i64 %i.rw
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !12
  %i.rz = sext i16 %i.ry to i32                   ; 6 uses
  %i.sa = sext i32 %i.rs to i64
  %i.sb = getelementptr inbounds i8, ptr %i.pv, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !13
  %i.sd = and i32 %i.rs, %i.pp                    ; 5 uses
  %i.se = ashr i32 %i.rz, %i.pm                   ; 3 uses
  br i1 %i.pq, label %.lr.ph.i.preheader, label %adpcm_ima_wav_expand_nibble.exit

.lr.ph.i.preheader:                               ; preds = %bb.bx
  br i1 %i.py, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i32 [ %i.tg, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %.03337.i = phi i32 [ %i.tf, %.lr.ph.i ], [ %i.se, %.lr.ph.i.preheader ]
  %niter4893 = phi i32 [ %niter4893.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.sf = sub nuw i32 %i.pa, %.038.i
  %i.sg = ashr i32 %i.rz, %i.sf
  %i.sh = lshr i32 %i.sd, %.038.i
  %i.si = trunc i32 %i.sh to i1
  %i.sj = select i1 %i.si, i32 %i.sg, i32 0
  %i.sk = add nsw i32 %i.sj, %.03337.i
  %i.sl = or disjoint i32 %.038.i, 1              ; 2 uses
  %i.sm = sub nuw i32 %i.pa, %i.sl
  %i.sn = ashr i32 %i.rz, %i.sm
  %i.so = lshr i32 %i.sd, %i.sl
  %i.sp = trunc i32 %i.so to i1
  %i.sq = select i1 %i.sp, i32 %i.sn, i32 0
  %i.sr = add nsw i32 %i.sq, %i.sk
  %i.ss = or disjoint i32 %.038.i, 2              ; 2 uses
  %i.st = sub nuw i32 %i.pa, %i.ss
  %i.su = ashr i32 %i.rz, %i.st
  %i.sv = lshr i32 %i.sd, %i.ss
  %i.sw = trunc i32 %i.sv to i1
  %i.sx = select i1 %i.sw, i32 %i.su, i32 0
  %i.sy = add nsw i32 %i.sx, %i.sr
  %i.sz = or disjoint i32 %.038.i, 3              ; 2 uses
  %i.ta = sub nuw i32 %i.pa, %i.sz
  %i.tb = ashr i32 %i.rz, %i.ta
  %i.tc = lshr i32 %i.sd, %i.sz
  %i.td = trunc i32 %i.tc to i1
  %i.te = select i1 %i.td, i32 %i.tb, i32 0
  %i.tf = add nsw i32 %i.te, %i.sy                ; 3 uses
  %i.tg = add nuw nsw i32 %.038.i, 4              ; 2 uses
  %niter4893.next.3 = add i32 %niter4893, 4       ; 2 uses
  %niter4893.ncmp.3 = icmp eq i32 %niter4893.next.3, %unroll_iter4892
  br i1 %niter4893.ncmp.3, label %adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !56

adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod4889.not, label %adpcm_ima_wav_expand_nibble.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.038.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.tg, %adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa ]
  %.03337.i.epil.init = phi i32 [ %i.se, %.lr.ph.i.preheader ], [ %i.tf, %adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4891)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.038.i.epil = phi i32 [ %i.tn, %.lr.ph.i.epil ], [ %.038.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.03337.i.epil = phi i32 [ %i.tm, %.lr.ph.i.epil ], [ %.03337.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter4888 = phi i32 [ %epil.iter4888.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.th = sub nuw i32 %i.pa, %.038.i.epil
  %i.ti = ashr i32 %i.rz, %i.th
  %i.tj = lshr i32 %i.sd, %.038.i.epil
  %i.tk = trunc i32 %i.tj to i1
  %i.tl = select i1 %i.tk, i32 %i.ti, i32 0
  %i.tm = add nsw i32 %i.tl, %.03337.i.epil       ; 2 uses
  %i.tn = add nuw nsw i32 %.038.i.epil, 1
  %epil.iter4888.next = add i32 %epil.iter4888, 1 ; 2 uses
  %epil.iter4888.cmp.not = icmp eq i32 %epil.iter4888.next, %xtraiter4887
  br i1 %epil.iter4888.cmp.not, label %adpcm_ima_wav_expand_nibble.exit, label %.lr.ph.i.epil, !llvm.loop !57

adpcm_ima_wav_expand_nibble.exit:                 ; preds = %adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.bx
  %.033.lcssa.i = phi i32 [ %i.se, %bb.bx ], [ %i.tf, %adpcm_ima_wav_expand_nibble.exit.loopexit.unr-lcssa ], [ %i.tm, %.lr.ph.i.epil ] ; 2 uses
  %i.to = and i32 %i.rs, %i.pr
  %.not.i2001 = icmp eq i32 %i.to, 0
  %i.tp = sub i32 0, %.033.lcssa.i
  %.034.p.i = select i1 %.not.i2001, i32 %.033.lcssa.i, i32 %i.tp
  %.034.i = add i32 %i.rl, %.034.p.i
  %i.tq = sext i16 %i.rv to i32
  %i.tr = sext i8 %i.sc to i32
  %i.ts = add nsw i32 %i.tr, %i.tq
  %i.tt = tail call i32 @llvm.smax.i32(i32 %i.ts, i32 0)
  %i.tu = tail call i32 @llvm.umin.i32(i32 %i.tt, i32 88)
  %i.tv = tail call i32 @llvm.smax.i32(i32 %.034.i, i32 -32768)
  %i.tw = tail call i32 @llvm.smin.i32(i32 %i.tv, i32 32767) ; 3 uses
  %.0.i36.i = trunc nsw i32 %i.tw to i16
  store i32 %i.tw, ptr %i.qd, align 4, !tbaa !14
  %i.tx = trunc nuw nsw i32 %i.tu to i16
  store i16 %i.tx, ptr %i.qs, align 4, !tbaa !11
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.qh, i64 %indvars.iv4075
  store i16 %.0.i36.i, ptr %i.ty, align 2, !tbaa !12
  %indvars.iv.next4076 = add nuw nsw i64 %indvars.iv4075, 1 ; 2 uses
  %exitcond4080.not = icmp eq i64 %indvars.iv.next4076, %i.pw
  br i1 %exitcond4080.not, label %bb.by, label %bb.bx, !llvm.loop !58

bb.by:                                            ; preds = %adpcm_ima_wav_expand_nibble.exit
  %indvars.iv.next4082 = add nuw nsw i64 %indvars.iv4081, 1 ; 2 uses
  %exitcond4085.not = icmp eq i64 %indvars.iv.next4082, %wide.trip.count4084
  br i1 %exitcond4085.not, label %..thread2669_crit_edge, label %.lr.ph3534, !llvm.loop !59

..thread2669_crit_edge:                           ; preds = %bb.by
  %indvars.iv.next4087 = add nuw nsw i64 %indvars.iv4086, 1 ; 2 uses
  %exitcond4090.not = icmp eq i64 %indvars.iv.next4087, %wide.trip.count4089
  br i1 %exitcond4090.not, label %.thread2672, label %.preheader2775, !llvm.loop !60

.thread2672:                                      ; preds = %..thread2669_crit_edge, %bb.bv
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !42
  %i.ub = shl nuw nsw i32 %i.o, 2
  %i.uc = sub nsw i32 %i.ua, %i.ub
  %i.ud = ptrtoint ptr %i.s to i64
  %i.ue = ptrtoint ptr %i.ou to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = zext i32 %i.uc to i64
  %..i1942 = tail call i64 @llvm.smin.i64(i64 %i.uf, i64 %i.ug)
  %i.uh = getelementptr inbounds i8, ptr %i.ou, i64 %..i1942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.critedge1852thread-pre-split

.lr.ph3549:                                       ; preds = %._crit_edge3550, %.preheader2772.lr.ph
  %indvars.iv4099 = phi i64 [ 0, %.preheader2772.lr.ph ], [ %indvars.iv.next4100, %._crit_edge3550 ] ; 2 uses
  %.sroa.02376.53552 = phi ptr [ %i.ou, %.preheader2772.lr.ph ], [ %i.up, %._crit_edge3550 ]
  %.idx4313 = shl nuw nsw i64 %indvars.iv4099, 4
  br label %bb.bz

._crit_edge3550:                                  ; preds = %bb.ca
  %indvars.iv.next4100 = add nuw nsw i64 %indvars.iv4099, 1 ; 2 uses
  %exitcond4104.not = icmp eq i64 %indvars.iv.next4100, %wide.trip.count4103
  br i1 %exitcond4104.not, label %.critedge1852thread-pre-split, label %.lr.ph3549, !llvm.loop !61

bb.bz:                                            ; preds = %.lr.ph3549, %bb.ca
  %indvars.iv4094 = phi i64 [ 0, %.lr.ph3549 ], [ %indvars.iv.next4095, %bb.ca ] ; 3 uses
  %.sroa.02376.63547 = phi ptr [ %.sroa.02376.53552, %.lr.ph3549 ], [ %i.up, %bb.ca ]
  %i.ui = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv4094 ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv4094
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !181
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %.idx4313
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 4 ; 4 uses
  %.promoted3544 = load i32, ptr %i.ui, align 4, !tbaa !14
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cb
  %indvars.iv.next4095 = add nuw nsw i64 %indvars.iv4094, 1 ; 2 uses
  %exitcond4098.not = icmp eq i64 %indvars.iv.next4095, %wide.trip.count4097
  br i1 %exitcond4098.not, label %._crit_edge3550, label %bb.bz, !llvm.loop !62

bb.cb:                                            ; preds = %bb.bz, %bb.cb
  %indvars.iv4091 = phi i64 [ 0, %bb.bz ], [ %indvars.iv.next4092, %bb.cb ] ; 3 uses
  %.sroa.02376.73545 = phi ptr [ %.sroa.02376.63547, %bb.bz ], [ %i.up, %bb.cb ] ; 2 uses
  %i.uo = phi i32 [ %.promoted3544, %bb.bz ], [ %i.wu, %bb.cb ]
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.02376.73545, i64 1 ; 4 uses
  %i.uq = load i8, ptr %.sroa.02376.73545, align 1, !tbaa !13 ; 2 uses
  %i.ur = zext i8 %i.uq to i32                    ; 9 uses
  %i.us = and i32 %i.ur, 15
  %i.ut = load i16, ptr %i.un, align 4, !tbaa !11 ; 2 uses
  %i.uu = sext i16 %i.ut to i64
  %i.uv = getelementptr inbounds [2 x i8], ptr @ff_adpcm_step_table, i64 %i.uu
  %i.uw = load i16, ptr %i.uv, align 2, !tbaa !12
  %i.ux = sext i16 %i.uw to i32                   ; 4 uses
  %i.uy = zext nneg i32 %i.us to i64
  %i.uz = getelementptr inbounds nuw i8, ptr @ff_adpcm_index_table, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !13
  %i.vb = ashr i32 %i.ux, 3
  %i.vc = and i32 %i.ur, 4
  %.not.i2002 = icmp eq i32 %i.vc, 0
  %i.vd = select i1 %.not.i2002, i32 0, i32 %i.ux
  %spec.select.i2003 = add nsw i32 %i.vb, %i.vd
  %i.ve = and i32 %i.ur, 2
  %.not24.i2004 = icmp eq i32 %i.ve, 0
  %i.vf = ashr i32 %i.ux, 1
  %i.vg = select i1 %.not24.i2004, i32 0, i32 %i.vf
  %.1.i2005 = add nsw i32 %spec.select.i2003, %i.vg
  %i.vh = and i32 %i.ur, 1
  %.not25.i2006 = icmp eq i32 %i.vh, 0
  %i.vi = ashr i32 %i.ux, 2
  %i.vj = select i1 %.not25.i2006, i32 0, i32 %i.vi
  %.2.i2007 = add nsw i32 %.1.i2005, %i.vj        ; 2 uses
  %i.vk = and i32 %i.ur, 8
  %.not26.i2008 = icmp eq i32 %i.vk, 0
  %i.vl = sub nsw i32 0, %.2.i2007
  %.023.p.i2009 = select i1 %.not26.i2008, i32 %.2.i2007, i32 %i.vl
  %.023.i2010 = add i32 %.023.p.i2009, %i.uo
  %i.vm = sext i16 %i.ut to i32
  %i.vn = sext i8 %i.va to i32
  %i.vo = add nsw i32 %i.vn, %i.vm
  %i.vp = tail call i32 @llvm.smax.i32(i32 %i.vo, i32 0)
  %i.vq = tail call i32 @llvm.umin.i32(i32 %i.vp, i32 88)
  %i.vr = tail call i32 @llvm.smax.i32(i32 %.023.i2010, i32 -32768)
  %i.vs = tail call i32 @llvm.smin.i32(i32 %i.vr, i32 32767) ; 2 uses
  %.0.i27.i2011 = trunc nsw i32 %i.vs to i16
  %i.vt = trunc nuw nsw i32 %i.vq to i16
  store i16 %i.vt, ptr %i.un, align 4, !tbaa !11
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %indvars.iv4091 ; 2 uses
  store i16 %.0.i27.i2011, ptr %i.vu, align 2, !tbaa !12
  %i.vv = lshr i32 %i.ur, 4
  %i.vw = load i16, ptr %i.un, align 4, !tbaa !11 ; 2 uses
  %i.vx = sext i16 %i.vw to i64
  %i.vy = getelementptr inbounds [2 x i8], ptr @ff_adpcm_step_table, i64 %i.vx
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !12
  %i.wa = sext i16 %i.vz to i32                   ; 4 uses
  %i.wb = zext nneg i32 %i.vv to i64
  %i.wc = getelementptr inbounds nuw i8, ptr @ff_adpcm_index_table, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !13
  %i.we = ashr i32 %i.wa, 3
  %i.wf = and i32 %i.ur, 64
  %.not.i2012 = icmp eq i32 %i.wf, 0
  %i.wg = select i1 %.not.i2012, i32 0, i32 %i.wa
  %spec.select.i2013 = add nsw i32 %i.we, %i.wg
  %i.wh = and i32 %i.ur, 32
  %.not24.i2014 = icmp eq i32 %i.wh, 0
  %i.wi = ashr i32 %i.wa, 1
  %i.wj = select i1 %.not24.i2014, i32 0, i32 %i.wi
  %.1.i2015 = add nsw i32 %spec.select.i2013, %i.wj
  %i.wk = and i32 %i.ur, 16
  %.not25.i2016 = icmp eq i32 %i.wk, 0
  %i.wl = ashr i32 %i.wa, 2
  %i.wm = select i1 %.not25.i2016, i32 0, i32 %i.wl
  %.2.i2017 = add nsw i32 %.1.i2015, %i.wm        ; 2 uses
  %i.wn = sub nsw i32 0, %.2.i2017
  %.not26.i20182764 = icmp slt i8 %i.uq, 0
  %.023.p.i2019 = select i1 %.not26.i20182764, i32 %i.wn, i32 %.2.i2017
  %.023.i2020 = add nsw i32 %.023.p.i2019, %i.vs
  %i.wo = sext i16 %i.vw to i32
  %i.wp = sext i8 %i.wd to i32
  %i.wq = add nsw i32 %i.wp, %i.wo
  %i.wr = tail call i32 @llvm.smax.i32(i32 %i.wq, i32 0)
  %i.ws = tail call i32 @llvm.umin.i32(i32 %i.wr, i32 88)
  %i.wt = tail call i32 @llvm.smax.i32(i32 %.023.i2020, i32 -32768)
  %i.wu = tail call i32 @llvm.smin.i32(i32 %i.wt, i32 32767) ; 3 uses
  %.0.i27.i2021 = trunc nsw i32 %i.wu to i16
  store i32 %i.wu, ptr %i.ui, align 4, !tbaa !14
  %i.wv = trunc nuw nsw i32 %i.ws to i16
  store i16 %i.wv, ptr %i.un, align 4, !tbaa !11
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  store i16 %.0.i27.i2021, ptr %i.ww, align 2, !tbaa !12
  %indvars.iv.next4092 = add nuw nsw i64 %indvars.iv4091, 2
  %i.wx = icmp samesign ult i64 %indvars.iv4091, 6
  br i1 %i.wx, label %bb.cb, label %bb.ca, !llvm.loop !63

.critedge1862.preheader:                          ; preds = %.critedge1860
  %i.wy = icmp sgt i32 %.01552, 8
  br i1 %i.wy, label %.preheader2777.lr.ph, label %.critedge1862._crit_edge

.preheader2777.lr.ph:                             ; preds = %.critedge1862.preheader
  %i.wz = add nsw i32 %.01552, -1
  %i.xa = lshr i32 %i.wz, 3
  %wide.trip.count4063 = zext nneg i32 %i.xa to i64
  %wide.trip.count4057 = zext nneg i32 %i.o to i64
  br label %.lr.ph3521

.lr.ph3514:                                       ; preds = %.lr.ph3514.preheader, %.critedge1860
  %indvars.iv4046 = phi i64 [ 0, %.lr.ph3514.preheader ], [ %indvars.iv.next4047, %.critedge1860 ] ; 4 uses
  %.sroa.02376.83512 = phi ptr [ %.sroa.02376.1662659, %.lr.ph3514.preheader ], [ %i.xm, %.critedge1860 ] ; 3 uses
  %i.xb = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv4046 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.02376.83512, i64 2
  %i.xd = load i16, ptr %.sroa.02376.83512, align 1, !tbaa !13 ; 2 uses
  %i.xe = sext i16 %i.xd to i32
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv4046
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !181
  store i16 %i.xd, ptr %i.xg, align 2, !tbaa !12
end_hunk_0
