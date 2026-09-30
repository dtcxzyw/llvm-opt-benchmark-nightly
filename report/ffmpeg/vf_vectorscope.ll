Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_vectorscope?download=true
inline.NumInlined: 57
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@vectorscope8:bb.a
  %i.of = phi i32 [ %i.oa, %.preheader448.preheader ], [ %i.ot, %._crit_edge500 ]
  %i.og = phi i32 [ %i.oc, %.preheader448.preheader ], [ %i.ou, %._crit_edge500 ] ; 2 uses
  %i.oh = phi i32 [ %i.oc, %.preheader448.preheader ], [ %i.ov, %._crit_edge500 ] ; 2 uses
  %indvars.iv583 = phi i64 [ 0, %.preheader448.preheader ], [ %indvars.iv.next584, %._crit_edge500 ] ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.lr.ph499, label %._crit_edge500

.lr.ph499:                                        ; preds = %.preheader448.a
  %i.oj = mul nsw i64 %indvars.iv583, %i.oe
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph499, %bb.bj
  %i.ok = phi i32 [ %i.og, %.lr.ph499 ], [ %i.oq, %bb.bj ]
  %indvars.iv580 = phi i64 [ 0, %.lr.ph499 ], [ %indvars.iv.next581, %bb.bj ] ; 2 uses
  %i.ol = add nsw i64 %indvars.iv580, %i.oj       ; 2 uses
  %i.om = getelementptr inbounds i8, ptr %i.an, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !68
  %.not427 = icmp eq i8 %i.on, 0
  br i1 %.not427, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oo = load ptr, ptr %i.ny, align 8, !tbaa !58
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 %i.ol
  store i8 -1, ptr %i.op, align 1, !tbaa !68
  %.pre601 = load i32, ptr %i.ba, align 8, !tbaa !67
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.oq = phi i32 [ %.pre601, %bb.bi ], [ %i.ok, %bb.bh ] ; 4 uses
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next581, %i.or
  br i1 %i.os, label %bb.bh, label %._crit_edge500.loopexit, !llvm.loop !115

._crit_edge500.loopexit:                          ; preds = %bb.bj
  %.pre602 = load i32, ptr %i.aw, align 4, !tbaa !66
  br label %._crit_edge500

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit, %.preheader448.a
  %i.ot = phi i32 [ %.pre602, %._crit_edge500.loopexit ], [ %i.of, %.preheader448.a ] ; 2 uses
  %i.ou = phi i32 [ %i.oq, %._crit_edge500.loopexit ], [ %i.og, %.preheader448.a ]
  %i.ov = phi i32 [ %i.oq, %._crit_edge500.loopexit ], [ %i.oh, %.preheader448.a ]
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %i.ow = sext i32 %i.ot to i64
  %i.ox = icmp slt i64 %indvars.iv.next584, %i.ow
  br i1 %i.ox, label %.preheader448.a, label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %._crit_edge500, %.preheader448.lr.ph, %.preheader449, %envelope.exit
  %i.oy = load i32, ptr %i.ax, align 8, !tbaa !61
  switch i32 %i.oy, label %.thread436 [
    i32 0, label %bb.bk
    i32 1, label %.preheader443
    i32 5, label %.preheader446
  ]

.preheader446:                                    ; preds = %.loopexit
  %i.oz = load i32, ptr %i.aw, align 4, !tbaa !66 ; 2 uses
  %i.pa = icmp sgt i32 %i.oz, 0
  br i1 %i.pa, label %.preheader445.lr.ph, label %.thread436

.preheader445.lr.ph:                              ; preds = %.preheader446
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.d
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.i
  %i.pe = load i32, ptr %i.ba, align 8, !tbaa !67 ; 3 uses
  %i.pf = icmp sgt i32 %i.pe, 0
  br i1 %i.pf, label %.preheader445, label %.thread436

.preheader443:                                    ; preds = %.loopexit
  %i.pg = load i32, ptr %i.aw, align 4, !tbaa !66 ; 2 uses
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %.preheader442.lr.ph.a, label %.thread436

.preheader442.lr.ph.a:                            ; preds = %.preheader443
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.d
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.i
  %i.pl = load i32, ptr %i.ba, align 8, !tbaa !67 ; 3 uses
  %i.pm = icmp sgt i32 %i.pl, 0
  br i1 %i.pm, label %.preheader442, label %.thread436

bb.bk:                                            ; preds = %.loopexit
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !59
  %.not419 = icmp eq i32 %i.po, 0
  br i1 %.not419, label %.preheader439, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !35
  %.not420 = icmp eq i32 %i.pq, 128
  br i1 %.not420, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !35
  %.not421 = icmp eq i32 %i.ps, 128
  br i1 %.not421, label %.thread436, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.pt = load i32, ptr %i.aw, align 4, !tbaa !66 ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %.preheader440.lr.ph, label %.thread436

.preheader440.lr.ph:                              ; preds = %bb.bn
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.pw = sext i32 %i.p to i64
  %.pre607.a = load i32, ptr %i.ba, align 8, !tbaa !67 ; 2 uses
  br label %.preheader440

.preheader440:                                    ; preds = %.preheader440.lr.ph, %._crit_edge512
  %i.px = phi i32 [ %i.pt, %.preheader440.lr.ph ], [ %i.qp, %._crit_edge512 ]
  %i.py = phi i32 [ %.pre607.a, %.preheader440.lr.ph ], [ %i.qq, %._crit_edge512 ] ; 2 uses
  %i.pz = phi i32 [ %.pre607.a, %.preheader440.lr.ph ], [ %i.qr, %._crit_edge512 ] ; 2 uses
  %indvars.iv589 = phi i64 [ 0, %.preheader440.lr.ph ], [ %indvars.iv.next590, %._crit_edge512 ] ; 2 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %.preheader440
  %i.qb = mul nsw i64 %indvars.iv589, %i.pw
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph511, %bb.bq
  %i.qc = phi i32 [ %i.py, %.lr.ph511 ], [ %i.qm, %bb.bq ]
  %indvars.iv586 = phi i64 [ 0, %.lr.ph511 ], [ %indvars.iv.next587, %bb.bq ] ; 2 uses
  %i.qd = add nsw i64 %indvars.iv586, %i.qb       ; 3 uses
  %i.qe = getelementptr inbounds i8, ptr %i.an, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !68
  %.not426 = icmp eq i8 %i.qf, 0
  br i1 %.not426, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qg = load i32, ptr %i.pp, align 8, !tbaa !35
  %i.qh = trunc i32 %i.qg to i8
  %i.qi = getelementptr inbounds i8, ptr %i.ap, i64 %i.qd
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !68
  %i.qj = load i32, ptr %i.pv, align 4, !tbaa !35
  %i.qk = trunc i32 %i.qj to i8
  %i.ql = getelementptr inbounds i8, ptr %i.ar, i64 %i.qd
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !68
  %.pre608.a = load i32, ptr %i.ba, align 8, !tbaa !67
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.qm = phi i32 [ %.pre608.a, %bb.bp ], [ %i.qc, %bb.bo ] ; 4 uses
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %indvars.iv.next587, %i.qn
  br i1 %i.qo, label %bb.bo, label %._crit_edge512.loopexit, !llvm.loop !117

._crit_edge512.loopexit:                          ; preds = %bb.bq
  %.pre609 = load i32, ptr %i.aw, align 4, !tbaa !66
  br label %._crit_edge512

._crit_edge512:                                   ; preds = %._crit_edge512.loopexit, %.preheader440
  %i.qp = phi i32 [ %.pre609, %._crit_edge512.loopexit ], [ %i.px, %.preheader440 ] ; 2 uses
  %i.qq = phi i32 [ %i.qm, %._crit_edge512.loopexit ], [ %i.py, %.preheader440 ]
  %i.qr = phi i32 [ %i.qm, %._crit_edge512.loopexit ], [ %i.pz, %.preheader440 ]
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589, 1 ; 2 uses
  %i.qs = sext i32 %i.qp to i64
  %i.qt = icmp slt i64 %indvars.iv.next590, %i.qs
  br i1 %i.qt, label %.preheader440, label %.thread436, !llvm.loop !118

.preheader439:                                    ; preds = %bb.bk
  %i.qu = load i32, ptr %i.aw, align 4, !tbaa !66 ; 2 uses
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %.preheader.lr.ph, label %.thread436

.preheader.lr.ph:                                 ; preds = %.preheader439
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qy = sext i32 %i.p to i64
  %.pre610 = load i32, ptr %i.ba, align 8, !tbaa !67 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge516
  %i.qz = phi i32 [ %i.qu, %.preheader.lr.ph ], [ %i.ry, %._crit_edge516 ]
  %i.ra = phi i32 [ %.pre610, %.preheader.lr.ph ], [ %i.rz, %._crit_edge516 ] ; 2 uses
  %i.rb = phi i32 [ %.pre610, %.preheader.lr.ph ], [ %i.sa, %._crit_edge516 ] ; 2 uses
  %indvars.iv595 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next596, %._crit_edge516 ] ; 2 uses
  %i.rc = icmp sgt i32 %i.rb, 0
  br i1 %i.rc, label %.lr.ph515, label %._crit_edge516

.lr.ph515:                                        ; preds = %.preheader
  %i.rd = mul nsw i64 %indvars.iv595, %i.qy
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph515, %bb.bt
  %i.re = phi i32 [ %i.ra, %.lr.ph515 ], [ %i.rv, %bb.bt ]
  %indvars.iv592 = phi i64 [ 0, %.lr.ph515 ], [ %indvars.iv.next593, %bb.bt ] ; 2 uses
  %i.rf = add nsw i64 %indvars.iv592, %i.rd       ; 3 uses
  %i.rg = getelementptr inbounds i8, ptr %i.an, i64 %i.rf ; 2 uses
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !68  ; 2 uses
  %.not423 = icmp eq i8 %i.rh, 0
  br i1 %.not423, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ri = uitofp i8 %i.rh to float                ; 2 uses
  %i.rj = load float, ptr %i.qw, align 4, !tbaa !47
  %i.rk = tail call nsz float @llvm.fmuladd.f32(float %i.ri, float %i.rj, float %i.ri)
  %i.rl = fptosi float %i.rk to i32
  %4 = tail call i32 @llvm.smax.i32(i32 %i.rl, i32 0)
  %.0.i435438 = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.rm = trunc nuw i32 %.0.i435438 to i8
  %i.rn = getelementptr inbounds i8, ptr %i.aj, i64 %i.rf
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !68
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !68
  %i.rp = uitofp i8 %i.ro to float                ; 2 uses
  %i.rq = load float, ptr %i.qx, align 8, !tbaa !47
  %i.rr = tail call nsz float @llvm.fmuladd.f32(float %i.rp, float %i.rq, float %i.rp)
  %i.rs = fptosi float %i.rr to i32
  %5 = tail call i32 @llvm.smax.i32(i32 %i.rs, i32 0)
  %.0.i439 = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.rt = trunc nuw i32 %.0.i439 to i8
  %i.ru = getelementptr inbounds i8, ptr %i.al, i64 %i.rf
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !68
  %.pre611 = load i32, ptr %i.ba, align 8, !tbaa !67
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.rv = phi i32 [ %.pre611, %bb.bs ], [ %i.re, %bb.br ] ; 4 uses
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %i.rw = sext i32 %i.rv to i64
  %i.rx = icmp slt i64 %indvars.iv.next593, %i.rw
  br i1 %i.rx, label %bb.br, label %._crit_edge516.loopexit, !llvm.loop !119

._crit_edge516.loopexit:                          ; preds = %bb.bt
  %.pre612 = load i32, ptr %i.aw, align 4, !tbaa !66
  br label %._crit_edge516

._crit_edge516:                                   ; preds = %._crit_edge516.loopexit, %.preheader
  %i.ry = phi i32 [ %.pre612, %._crit_edge516.loopexit ], [ %i.qz, %.preheader ] ; 2 uses
  %i.rz = phi i32 [ %i.rv, %._crit_edge516.loopexit ], [ %i.ra, %.preheader ]
  %i.sa = phi i32 [ %i.rv, %._crit_edge516.loopexit ], [ %i.rb, %.preheader ]
  %indvars.iv.next596 = add nuw nsw i64 %indvars.iv595, 1 ; 2 uses
  %i.sb = sext i32 %i.ry to i64
  %i.sc = icmp slt i64 %indvars.iv.next596, %i.sb
  br i1 %i.sc, label %.preheader, label %.thread436, !llvm.loop !120

.preheader442:                                    ; preds = %.preheader442.lr.ph.a, %._crit_edge508
  %i.sd = phi i32 [ %i.ti, %._crit_edge508 ], [ %i.pg, %.preheader442.lr.ph.a ]
  %i.se = phi i32 [ %i.tj, %._crit_edge508 ], [ %i.pl, %.preheader442.lr.ph.a ] ; 2 uses
  %i.sf = phi i32 [ %i.tk, %._crit_edge508 ], [ %i.pl, %.preheader442.lr.ph.a ] ; 2 uses
  %.9398509 = phi i32 [ %i.tl, %._crit_edge508 ], [ 0, %.preheader442.lr.ph.a ] ; 6 uses
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %.lr.ph507, label %._crit_edge508

.lr.ph507:                                        ; preds = %.preheader442
  %i.sh = trunc i32 %.9398509 to i8
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph507, %bb.bw
  %i.si = phi i32 [ %i.se, %.lr.ph507 ], [ %i.tf, %bb.bw ]
  %.8506 = phi i32 [ 0, %.lr.ph507 ], [ %i.tg, %bb.bw ] ; 6 uses
  %i.sj = load i32, ptr %i.pi, align 4, !tbaa !35
  %i.sk = mul nsw i32 %i.sj, %.9398509
  %i.sl = add nsw i32 %i.sk, %.8506
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds i8, ptr %i.an, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !68
  %.not425 = icmp eq i8 %i.so, 0
  br i1 %.not425, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.sp = trunc i32 %.8506 to i8
  %i.sq = load i32, ptr %i.pj, align 4, !tbaa !35
  %i.sr = mul nsw i32 %i.sq, %.9398509
  %i.ss = add nsw i32 %i.sr, %.8506
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds i8, ptr %i.aj, i64 %i.st
  store i8 %i.sp, ptr %i.su, align 1, !tbaa !68
  %i.sv = load i32, ptr %i.pk, align 4, !tbaa !35
  %i.sw = mul nsw i32 %i.sv, %.9398509
  %i.sx = add nsw i32 %i.sw, %.8506
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds i8, ptr %i.al, i64 %i.sy
  store i8 %i.sh, ptr %i.sz, align 1, !tbaa !68
  %i.ta = load i32, ptr %i.pi, align 4, !tbaa !35
  %i.tb = mul nsw i32 %i.ta, %.9398509
  %i.tc = add nsw i32 %i.tb, %.8506
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr %i.an, i64 %i.td
  store i8 -128, ptr %i.te, align 1, !tbaa !68
  %.pre605.a = load i32, ptr %i.ba, align 8, !tbaa !67
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %i.tf = phi i32 [ %i.si, %bb.bu ], [ %.pre605.a, %bb.bv ] ; 4 uses
  %i.tg = add nuw nsw i32 %.8506, 1               ; 2 uses
  %i.th = icmp slt i32 %i.tg, %i.tf
  br i1 %i.th, label %bb.bu, label %._crit_edge508.loopexit, !llvm.loop !121

._crit_edge508.loopexit:                          ; preds = %bb.bw
  %.pre606.a = load i32, ptr %i.aw, align 4, !tbaa !66
  br label %._crit_edge508

._crit_edge508:                                   ; preds = %._crit_edge508.loopexit, %.preheader442
  %i.ti = phi i32 [ %.pre606.a, %._crit_edge508.loopexit ], [ %i.sd, %.preheader442 ] ; 2 uses
  %i.tj = phi i32 [ %i.tf, %._crit_edge508.loopexit ], [ %i.se, %.preheader442 ]
  %i.tk = phi i32 [ %i.tf, %._crit_edge508.loopexit ], [ %i.sf, %.preheader442 ]
  %i.tl = add nuw nsw i32 %.9398509, 1            ; 2 uses
  %i.tm = icmp slt i32 %i.tl, %i.ti
  br i1 %i.tm, label %.preheader442, label %.thread436, !llvm.loop !122

.preheader445:                                    ; preds = %.preheader445.lr.ph, %._crit_edge504
  %i.tn = phi i32 [ %i.uz, %._crit_edge504 ], [ %i.oz, %.preheader445.lr.ph ]
  %i.to = phi i32 [ %i.va, %._crit_edge504 ], [ %i.pe, %.preheader445.lr.ph ] ; 2 uses
  %i.tp = phi i32 [ %i.vb, %._crit_edge504 ], [ %i.pe, %.preheader445.lr.ph ] ; 2 uses
  %.10505 = phi i32 [ %i.vc, %._crit_edge504 ], [ 0, %.preheader445.lr.ph ] ; 7 uses
  %i.tq = icmp sgt i32 %i.tp, 0
  br i1 %i.tq, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %.preheader445
  %i.tr = trunc i32 %.10505 to i8
  %i.ts = add nsw i32 %.10505, -128
  %i.tt = sitofp nsz i32 %i.ts to double
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph503, %bb.bz
  %i.tu = phi i32 [ %i.to, %.lr.ph503 ], [ %i.uw, %bb.bz ]
  %.9502 = phi i32 [ 0, %.lr.ph503 ], [ %i.ux, %bb.bz ] ; 7 uses
  %i.tv = load i32, ptr %i.pb, align 4, !tbaa !35
  %i.tw = mul nsw i32 %i.tv, %.10505
  %i.tx = add nsw i32 %i.tw, %.9502
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds i8, ptr %i.an, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !68
  %.not424 = icmp eq i8 %i.ua, 0
  br i1 %.not424, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ub = trunc i32 %.9502 to i8
  %i.uc = load i32, ptr %i.pc, align 4, !tbaa !35
  %i.ud = mul nsw i32 %i.uc, %.10505
  %i.ue = add nsw i32 %i.ud, %.9502
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds i8, ptr %i.aj, i64 %i.uf
  store i8 %i.ub, ptr %i.ug, align 1, !tbaa !68
  %i.uh = load i32, ptr %i.pd, align 4, !tbaa !35
  %i.ui = mul nsw i32 %i.uh, %.10505
  %i.uj = add nsw i32 %i.ui, %.9502
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds i8, ptr %i.al, i64 %i.uk
  store i8 %i.tr, ptr %i.ul, align 1, !tbaa !68
  %i.um = add nsw i32 %.9502, -128
  %i.un = sitofp nsz i32 %i.um to double
  %i.uo = tail call nsz double @hypot(double noundef %i.tt, double noundef %i.un) #15
  %i.up = fsub nsz double f0x4066A09E667F3BCD, %i.uo
  %i.uq = fptoui double %i.up to i8
  %i.ur = load i32, ptr %i.pb, align 4, !tbaa !35
  %i.us = mul nsw i32 %i.ur, %.10505
  %i.ut = add nsw i32 %i.us, %.9502
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds i8, ptr %i.an, i64 %i.uu
  store i8 %i.uq, ptr %i.uv, align 1, !tbaa !68
  %.pre603 = load i32, ptr %i.ba, align 8, !tbaa !67
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.uw = phi i32 [ %i.tu, %bb.bx ], [ %.pre603, %bb.by ] ; 4 uses
  %i.ux = add nuw nsw i32 %.9502, 1               ; 2 uses
  %i.uy = icmp slt i32 %i.ux, %i.uw
  br i1 %i.uy, label %bb.bx, label %._crit_edge504.loopexit, !llvm.loop !123

._crit_edge504.loopexit:                          ; preds = %bb.bz
  %.pre604 = load i32, ptr %i.aw, align 4, !tbaa !66
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %._crit_edge504.loopexit, %.preheader445
  %i.uz = phi i32 [ %.pre604, %._crit_edge504.loopexit ], [ %i.tn, %.preheader445 ] ; 2 uses
  %i.va = phi i32 [ %i.uw, %._crit_edge504.loopexit ], [ %i.to, %.preheader445 ]
  %i.vb = phi i32 [ %i.uw, %._crit_edge504.loopexit ], [ %i.tp, %.preheader445 ]
  %i.vc = add nuw nsw i32 %.10505, 1              ; 2 uses
  %i.vd = icmp slt i32 %i.vc, %i.uz
  br i1 %i.vd, label %.preheader445, label %.thread436, !llvm.loop !124

.thread436:                                       ; preds = %._crit_edge504, %._crit_edge508, %._crit_edge512, %._crit_edge516, %bb.bm, %.preheader442.lr.ph.a, %.preheader445.lr.ph, %.preheader446, %.preheader443, %bb.bn, %.preheader439, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vectorscope16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %i.g = sdiv i32 %i.f, 2                         ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = sdiv i32 %i.l, 2                         ; 5 uses
  %i.n = sext i32 %3 to i64                       ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = sdiv i32 %i.p, 2                         ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !35
  %i.t = sdiv i32 %i.s, 2                         ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.j
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.d
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35 ; 7 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 5 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.j
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167 ; 5 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.n
end_hunk_0
begin_hunk_1_@draw_idots16:bb.a
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.a, float %i.ap)
  %i.ar = fptoui float %i.aq to i16
  store i16 %i.ar, ptr %i.aj, align 2, !tbaa !46
  %i.as = mul nsw i32 %1, 3                       ; 5 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [2 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -6     ; 2 uses
  %i.aw = load <2 x i16>, ptr %i.av, align 2, !tbaa !46 ; 2 uses
  %i.ax = zext <2 x i16> %i.aw to <2 x i32>
  %i.ay = uitofp <2 x i16> %i.aw to <2 x float>
  %i.az = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ba = shufflevector <2 x i32> %i.az, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = sub nsw <2 x i32> %i.ba, %i.ax
  %i.bc = sitofp <2 x i32> %i.bb to <2 x float>
  %i.bd = insertelement <2 x float> poison, float %3, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = fmul nsz <2 x float> %i.be, %i.bc
  %i.bg = insertelement <2 x float> poison, float %i.a, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = fptoui <2 x float> %i.bi to <2 x i16>
  store <2 x i16> %i.bj, ptr %i.av, align 2, !tbaa !46
  %i.bk = getelementptr i8, ptr %i.au, i64 4      ; 2 uses
  %i.bl = load <2 x i16>, ptr %i.bk, align 2, !tbaa !46 ; 2 uses
  %i.bm = zext <2 x i16> %i.bl to <2 x i32>
  %i.bn = uitofp <2 x i16> %i.bl to <2 x float>
  %i.bo = sub nsw <2 x i32> %i.ba, %i.bm
  %i.bp = sitofp <2 x i32> %i.bo to <2 x float>
  %i.bq = fmul nsz <2 x float> %i.be, %i.bp
  %i.br = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bh, <2 x float> %i.bq)
  %i.bs = fptoui <2 x float> %i.br to <2 x i16>
  store <2 x i16> %i.bs, ptr %i.bk, align 2, !tbaa !46
  %i.bt = sub i32 -3, %i.as
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !46 ; 2 uses
  %i.bx = zext i16 %i.bw to i32
  %i.by = uitofp i16 %i.bw to float
  %i.bz = sub nsw i32 %2, %i.bx
  %i.ca = sitofp nsz i32 %i.bz to float
  %i.cb = fmul nsz float %3, %i.ca
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.a, float %i.cb)
  %i.cd = fptoui float %i.cc to i16
  store i16 %i.cd, ptr %i.bv, align 2, !tbaa !46
  %i.ce = sub i32 3, %i.as
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !46 ; 2 uses
  %i.ci = zext i16 %i.ch to i32
  %i.cj = uitofp i16 %i.ch to float
  %i.ck = sub nsw i32 %2, %i.ci
  %i.cl = sitofp nsz i32 %i.ck to float
  %i.cm = fmul nsz float %3, %i.cl
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.a, float %i.cm)
  %i.co = fptoui float %i.cn to i16
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !46
  %i.cp = sub i32 -2, %i.as
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cq ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !46 ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = uitofp i16 %i.cs to float
  %i.cv = sub nsw i32 %2, %i.ct
  %i.cw = sitofp nsz i32 %i.cv to float
  %i.cx = fmul nsz float %3, %i.cw
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.a, float %i.cx)
  %i.cz = fptoui float %i.cy to i16
  store i16 %i.cz, ptr %i.cr, align 2, !tbaa !46
  %i.da = sub i32 2, %i.as
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !46 ; 2 uses
  %i.de = zext i16 %i.dd to i32
  %i.df = uitofp i16 %i.dd to float
  %i.dg = sub nsw i32 %2, %i.de
  %i.dh = sitofp nsz i32 %i.dg to float
  %i.di = fmul nsz float %3, %i.dh
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %i.df, float %i.a, float %i.di)
  %i.dk = fptoui float %i.dj to i16
  store i16 %i.dk, ptr %i.dc, align 2, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56)) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.e, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.e, ptr %i.g, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.h, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  %i.i = load i32, ptr %i.d, align 4, !tbaa !44
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = tail call noalias ptr @av_calloc(i64 noundef %i.j, i64 noundef %i.j) #13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !203
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.d, align 4, !tbaa !44
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @av_calloc(i64 noundef %i.n, i64 noundef 8) #13 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %i.o, ptr %i.p, align 8, !tbaa !70
  %.not22 = icmp eq ptr %i.o, null
  br i1 %.not22, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.q = load i32, ptr %i.d, align 4, !tbaa !44   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.s = zext nneg i32 %i.q to i64                ; 7 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !203 ; 5 uses
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.t = icmp ult i32 %i.q, 4
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = mul nuw nsw i64 %indvars.iv, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 8, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv.next, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  store ptr %i.y, ptr %i.z, align 8, !tbaa !58
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aa = mul nuw nsw i64 %indvars.iv.next.1, %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.1
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !58
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = mul nuw nsw i64 %indvars.iv.next.2, %i.s
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.2
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !200

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = mul nuw nsw i64 %indvars.iv.epil, %i.s
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.epil
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !58
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !201

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader, %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.b ], [ -12, %bb.a ], [ 0, %.preheader ], [ 0, %.lr.ph.epil ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.0
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!25 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!26 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!27 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!28 = !{!"AVFilterFormatsConfig", !26, i64 0, !26, i64 8, !27, i64 16, !26, i64 24, !26, i64 32, !26, i64 40}
!29 = !{!"AVFilterLink", !22, i64 0, !13, i64 8, !22, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !24, i64 72, !23, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!30 = !{!"float", !5, i64 0}
!31 = !{!"p2 omnipotent char", !14, i64 0}
!32 = !{!"VectorscopeContext", !10, i64 0, !6, i64 8, !6, i64 12, !30, i64 16, !5, i64 20, !5, i64 28, !5, i64 36, !5, i64 52, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !30, i64 112, !30, i64 116, !30, i64 120, !30, i64 124, !5, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !12, i64 160, !31, i64 168, !9, i64 176, !9, i64 184}
!33 = !{!32, !6, i64 76}
!34 = !{!32, !6, i64 80}
!35 = !{!6, !6, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !36, i64 16, !5, i64 24, !12, i64 104}
!38 = !{!37, !36, i64 16}
!39 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!40 = !{!39, !6, i64 16}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!18, !15, i64 56}
!43 = !{!29, !22, i64 16}
!44 = !{!32, !6, i64 92}
!45 = !{!"short", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!30, !30, i64 0}
!48 = !{!32, !6, i64 12}
!49 = !{!32, !6, i64 96}
!50 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!51 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!52 = !{!"AVFrame", !5, i64 0, !5, i64 64, !31, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 124, !36, i64 136, !36, i64 144, !23, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !50, i64 248, !6, i64 256, !25, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !36, i64 304, !51, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !9, i64 376, !24, i64 384, !36, i64 408, !6, i64 416}
!53 = !{!29, !6, i64 40}
!54 = !{!29, !6, i64 44}
!55 = !{!32, !9, i64 176}
!56 = !{!32, !6, i64 84}
!57 = !{!32, !9, i64 184}
!58 = !{!12, !12, i64 0}
!59 = !{!32, !6, i64 88}
!60 = !{!32, !6, i64 100}
!61 = !{!32, !6, i64 8}
!62 = !{!32, !6, i64 68}
!63 = !{!32, !6, i64 72}
!64 = !{!32, !6, i64 136}
!65 = !{!32, !6, i64 140}
!66 = !{!52, !6, i64 108}
!67 = !{!52, !6, i64 104}
!68 = !{!5, !5, i64 0}
!69 = !{!32, !6, i64 104}
!70 = !{!32, !31, i64 168}
!71 = !{!"llvm.loop.unswitch.partial.disable"}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = !{!32, !30, i64 112}
!77 = !{!32, !6, i64 144}
!78 = distinct !{!78, !41}
!79 = !{!18, !15, i64 32}
!80 = !{!29, !26, i64 120}
!81 = !{!"p1 int", !9, i64 0}
!82 = !{!"any p3 pointer", !14, i64 0}
!83 = !{!"p3 _ZTS15AVFilterFormats", !82, i64 0}
!84 = !{!"AVFilterFormats", !6, i64 0, !81, i64 8, !6, i64 16, !83, i64 24}
!85 = !{!84, !6, i64 0}
!86 = !{!29, !26, i64 168}
!87 = !{!84, !81, i64 8}
!88 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!32, !30, i64 116}
!91 = !{!32, !30, i64 16}
!92 = !{!32, !6, i64 148}
!93 = !{!32, !6, i64 152}
!94 = !{!52, !6, i64 292}
!95 = !{!29, !6, i64 36}
!96 = !{!32, !6, i64 108}
!97 = !{!37, !5, i64 9}
!98 = !{!37, !5, i64 10}
!99 = distinct !{!99, !41}
!100 = distinct !{!100, !41}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !41}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !41}
!105 = distinct !{!105, !41}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = distinct !{!111, !41, !71}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41, !72}
!114 = distinct !{!114, !41, !71}
!115 = distinct !{!115, !41}
!116 = distinct !{!116, !41, !71}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41, !71}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41, !71}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41, !71}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41, !71}
!139 = distinct !{!139, !41, !72}
!140 = distinct !{!140, !"LVerDomain"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !41, !73, !74}
!144 = distinct !{!144, !41, !73, !74}
!145 = distinct !{!145, !"LVerDomain"}
!146 = distinct !{!146, !145}
!147 = distinct !{!147, !145}
!148 = distinct !{!148, !41, !72, !73, !74}
!149 = distinct !{!149, !41, !72, !73, !74}
!150 = distinct !{!150, !41, !72, !73}
!151 = distinct !{!151, !41, !73}
!152 = distinct !{!152, !41, !72}
!153 = distinct !{!153, !41}
!154 = distinct !{!154, !41, !73, !74}
!155 = distinct !{!155, !41, !73, !74}
!156 = distinct !{!156, !41, !73}
!157 = distinct !{!157, !41}
!158 = distinct !{!158, !41}
!159 = distinct !{!159, !41}
!160 = distinct !{!160, !41}
!161 = distinct !{!161, !41}
!162 = distinct !{!162, !41}
!163 = distinct !{!163, !41}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = !{!"p1 short", !9, i64 0}
!167 = !{!166, !166, i64 0}
!168 = !{!141}
!169 = !{!142}
end_hunk_1
