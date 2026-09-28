Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 70
begin_hunk_0_@H5S__hyper_deserialize:bb.a
  %i.on = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.oo = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !18
  %i.op = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4431, i64 noundef %i.on, i64 noundef %i.oo, ptr noundef nonnull @.str.86) #14 ; 0 uses
  br label %.thread515

.thread515:                                       ; preds = %bb.bc, %bb.as, %bb.bd, %bb.ba, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.cl

bb.be:                                            ; preds = %.loopexit550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.cj

bb.bf:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  switch i8 %.1464513, label %bb.bv [
    i8 2, label %bb.bg
    i8 4, label %bb.bl
    i8 8, label %bb.bq
  ]

bb.bg:                                            ; preds = %bb.bf
  br i1 %3, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oq = icmp ugt ptr %i.bx, %.0445.ptr
  br i1 %i.oq, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.or = ptrtoint ptr %.0445.ptr to i64
  %i.os = ptrtoint ptr %i.bx to i64
  %i.ot = add i64 %i.or, 1
  %i.ou = sub i64 %i.ot, %i.os
  %i.ov = icmp ult i64 %i.ou, 2
  br i1 %i.ov, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.ow = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.ox = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.oy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4448, i64 noundef %i.ow, i64 noundef %i.ox, ptr noundef nonnull @.str.87) #14 ; 0 uses
  br label %.thread520

bb.bk:                                            ; preds = %bb.bi, %bb.bg
  %i.oz = load i16, ptr %i.bx, align 1
  %i.pa = zext i16 %i.oz to i64
  br label %bb.bw

bb.bl:                                            ; preds = %bb.bf
  br i1 %3, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pb = icmp ugt ptr %i.bx, %.0445.ptr
  br i1 %i.pb, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pc = ptrtoint ptr %.0445.ptr to i64
  %i.pd = ptrtoint ptr %i.bx to i64
  %i.pe = add i64 %i.pc, 1
  %i.pf = sub i64 %i.pe, %i.pd
  %i.pg = icmp ult i64 %i.pf, 4
  br i1 %i.pg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.ph = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.pi = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.pj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4455, i64 noundef %i.ph, i64 noundef %i.pi, ptr noundef nonnull @.str.87) #14 ; 0 uses
  br label %.thread520

bb.bp:                                            ; preds = %bb.bn, %bb.bl
  %i.pk = load i32, ptr %i.bx, align 1
  %i.pl = zext i32 %i.pk to i64
  br label %bb.bw

bb.bq:                                            ; preds = %bb.bf
  br i1 %3, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pm = icmp ugt ptr %i.bx, %.0445.ptr
  br i1 %i.pm, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pn = ptrtoint ptr %.0445.ptr to i64
  %i.po = ptrtoint ptr %i.bx to i64
  %i.pp = add i64 %i.pn, 1
  %i.pq = sub i64 %i.pp, %i.po
  %i.pr = icmp ult i64 %i.pq, 8
  br i1 %i.pr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.ps = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.pt = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.pu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4462, i64 noundef %i.ps, i64 noundef %i.pt, ptr noundef nonnull @.str.87) #14 ; 0 uses
  br label %.thread520

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %i.pv = getelementptr inbounds nuw i8, ptr %.1457514, i64 11
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !24
  %i.px = zext i8 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %.1457514, i64 10
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !24
  %i.qa = zext i8 %i.pz to i64
  %i.qb = shl nuw nsw i64 %i.px, 16
  %i.qc = shl nuw nsw i64 %i.qa, 8
  %i.qd = or disjoint i64 %i.qb, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %.1457514, i64 9
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !24
  %i.qg = zext i8 %i.qf to i64
  %i.qh = or disjoint i64 %i.qd, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %.1457514, i64 8
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !24
  %i.qk = zext i8 %i.qj to i64
  %i.ql = shl nuw nsw i64 %i.qh, 16
  %i.qm = shl nuw nsw i64 %i.qk, 8
  %i.qn = or disjoint i64 %i.ql, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %.1457514, i64 7
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !24
  %i.qq = zext i8 %i.qp to i64
  %i.qr = or disjoint i64 %i.qn, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %.1457514, i64 6
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !24
  %i.qu = zext i8 %i.qt to i64
  %i.qv = shl nuw nsw i64 %i.qr, 16
  %i.qw = shl nuw nsw i64 %i.qu, 8
  %i.qx = or disjoint i64 %i.qv, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %.1457514, i64 5
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !24
  %i.ra = zext i8 %i.qz to i64
  %i.rb = or disjoint i64 %i.qx, %i.ra
  %i.rc = shl nuw i64 %i.rb, 8
  %i.rd = getelementptr inbounds nuw i8, ptr %.1457514, i64 4
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !24
  %i.rf = zext i8 %i.re to i64
  %i.rg = or disjoint i64 %i.rc, %i.rf
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bf
  %i.rh = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.ri = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !18
  %i.rj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4467, i64 noundef %i.rh, i64 noundef %i.ri, ptr noundef nonnull @.str.71) #14 ; 0 uses
  br label %.thread520

bb.bw:                                            ; preds = %bb.bu, %bb.bp, %bb.bk
  %.sink = phi i64 [ 12, %bb.bu ], [ 8, %bb.bp ], [ 6, %bb.bk ]
  %.1429 = phi i64 [ %i.rg, %bb.bu ], [ %i.pl, %bb.bp ], [ %i.pa, %bb.bk ] ; 2 uses
  %i.rk = getelementptr i8, ptr %.1457514, i64 %.sink ; 2 uses
  %.not642 = icmp eq i64 %.1429, 0
  br i1 %.not642, label %._crit_edge635, label %.lr.ph634

.lr.ph634:                                        ; preds = %bb.bw
  %i.rl = shl nuw nsw i32 %i.bw, 4
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = ptrtoint ptr %.0445.ptr to i64
  %i.ro = add i64 %i.rn, 1                        ; 3 uses
  %i.rp = shl nuw nsw i32 %i.bw, 3
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl nuw nsw i32 %i.bw, 2
  %i.rs = zext nneg i32 %i.rr to i64
  switch i8 %.1464513, label %bb.ch [
    i8 2, label %.lr.ph634.split.preheader
    i8 4, label %.lr.ph634.split.preheader
    i8 8, label %.lr.ph634.split.preheader
  ]

.lr.ph634.split.preheader:                        ; preds = %.lr.ph634, %.lr.ph634, %.lr.ph634
  %i.rt = add nsw i32 %i.bw, -1                   ; 2 uses
  %xtraiter = and i32 %i.bw, 1
  %i.ru = icmp eq i32 %i.rt, 0
  %unroll_iter = and i32 %i.bw, 62
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod772.a = trunc i32 %i.bw to i1
  %xtraiter773 = and i32 %i.bw, 1
  %i.rv = icmp eq i32 %i.rt, 0
  %unroll_iter777 = and i32 %i.bw, 62
  %lcmp.mod774.not = icmp eq i32 %xtraiter773, 0
  %lcmp.mod776 = trunc i32 %i.bw to i1
  %i.rw = add nsw i32 %i.bw, -1                   ; 2 uses
  %i.rx = zext i32 %i.rw to i64
  %i.ry = add nuw nsw i64 %i.rx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.rw, 3
  %n.vec = and i64 %i.ry, 8589934588              ; 4 uses
  %i.rz = trunc i64 %n.vec to i32
  %i.sa = shl nuw nsw i64 %n.vec, 3               ; 3 uses
  %i.sb = getelementptr i8, ptr %i.c, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.f, i64 %i.sa
  %i.sd = getelementptr i8, ptr %i.b, i64 %i.sa
  %cmp.n = icmp eq i64 %i.ry, %n.vec
  br label %.lr.ph634.split

bb.bx:                                            ; preds = %._crit_edge
  %i.se = add i32 %.3455632, 1                    ; 2 uses
  %i.sf = zext i32 %i.se to i64
  %i.sg = icmp ugt i64 %.1429, %i.sf
  br i1 %i.sg, label %.lr.ph634.split, label %._crit_edge635, !llvm.loop !104

.lr.ph634.split:                                  ; preds = %.lr.ph634.split.preheader, %bb.bx
  %.3455632 = phi i32 [ %i.se, %bb.bx ], [ 0, %.lr.ph634.split.preheader ] ; 2 uses
  %.13631 = phi ptr [ %.22, %bb.bx ], [ %i.rk, %.lr.ph634.split.preheader ] ; 10 uses
  switch i8 %.1464513, label %bb.ce [
    i8 2, label %4
    i8 4, label %bb.cb
  ]

4:                                                ; preds = %.lr.ph634.split
  br i1 %3, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bz, %4
  br i1 %i.ru, label %.lr.ph619.epil.preheader, label %.lr.ph619

bb.bz:                                            ; preds = %4
  %i.sh = icmp ugt ptr %.13631, %.0445.ptr
  %i.si = ptrtoint ptr %.13631 to i64
  %i.sj = sub i64 %i.ro, %i.si
  %i.sk = icmp ult i64 %i.sj, %i.rs
  %or.cond729 = select i1 %i.sh, i1 true, i1 %i.sk
  br i1 %or.cond729, label %bb.ca, label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.sl = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.sm = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.sn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4481, i64 noundef %i.sl, i64 noundef %i.sm, ptr noundef nonnull @.str.88) #14 ; 0 uses
  br label %.thread520

.lr.ph619:                                        ; preds = %bb.by, %.lr.ph619
  %.0435617 = phi ptr [ %i.tf, %.lr.ph619 ], [ %i.b, %bb.by ] ; 4 uses
  %.14616 = phi ptr [ %i.te, %.lr.ph619 ], [ %.13631, %bb.by ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph619 ], [ 0, %bb.by ]
  %i.so = load i8, ptr %.14616, align 1, !tbaa !24
  %i.sp = zext i8 %i.so to i64                    ; 2 uses
  store i64 %i.sp, ptr %.0435617, align 8, !tbaa !18
  %i.sq = getelementptr inbounds nuw i8, ptr %.14616, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !24
  %i.ss = zext i8 %i.sr to i64
  %i.st = shl nuw nsw i64 %i.ss, 8
  %i.su = or disjoint i64 %i.st, %i.sp
  store i64 %i.su, ptr %.0435617, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.14616, i64 2
  %i.sw = getelementptr inbounds nuw i8, ptr %.0435617, i64 8 ; 2 uses
  %i.sx = load i8, ptr %i.sv, align 1, !tbaa !24
  %i.sy = zext i8 %i.sx to i64                    ; 2 uses
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.14616, i64 3
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !24
  %i.tb = zext i8 %i.ta to i64
  %i.tc = shl nuw nsw i64 %i.tb, 8
  %i.td = or disjoint i64 %i.tc, %i.sy
  store i64 %i.td, ptr %i.sw, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.14616, i64 4 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.0435617, i64 16 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph624.preheader.unr-lcssa, label %.lr.ph619, !llvm.loop !105

.lr.ph624.preheader.unr-lcssa:                    ; preds = %.lr.ph619
  br i1 %lcmp.mod.not, label %.lr.ph624.preheader, label %.lr.ph619.epil.preheader

.lr.ph619.epil.preheader:                         ; preds = %.lr.ph624.preheader.unr-lcssa, %bb.by
  %.0435617.epil.init = phi ptr [ %i.b, %bb.by ], [ %i.tf, %.lr.ph624.preheader.unr-lcssa ] ; 2 uses
  %.14616.epil.init = phi ptr [ %.13631, %bb.by ], [ %i.te, %.lr.ph624.preheader.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod772.a)
  %i.tg = load i8, ptr %.14616.epil.init, align 1, !tbaa !24
  %i.th = zext i8 %i.tg to i64                    ; 2 uses
  store i64 %i.th, ptr %.0435617.epil.init, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %.14616.epil.init, i64 1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !24
  %i.tk = zext i8 %i.tj to i64
  %i.tl = shl nuw nsw i64 %i.tk, 8
  %i.tm = or disjoint i64 %i.tl, %i.th
  store i64 %i.tm, ptr %.0435617.epil.init, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %.14616.epil.init, i64 2
  br label %.lr.ph624.preheader

.lr.ph624.preheader:                              ; preds = %.lr.ph624.preheader.unr-lcssa, %.lr.ph619.epil.preheader
  %.lcssa761 = phi ptr [ %i.te, %.lr.ph624.preheader.unr-lcssa ], [ %i.tn, %.lr.ph619.epil.preheader ] ; 2 uses
  br i1 %i.rv, label %.lr.ph624.epil.preheader, label %.lr.ph624

.lr.ph624:                                        ; preds = %.lr.ph624.preheader, %.lr.ph624
  %.0431622 = phi ptr [ %i.uf, %.lr.ph624 ], [ %i.f, %.lr.ph624.preheader ] ; 4 uses
  %.15621 = phi ptr [ %i.ue, %.lr.ph624 ], [ %.lcssa761, %.lr.ph624.preheader ] ; 5 uses
  %niter778 = phi i32 [ %niter778.next.1, %.lr.ph624 ], [ 0, %.lr.ph624.preheader ]
  %i.to = load i8, ptr %.15621, align 1, !tbaa !24
  %i.tp = zext i8 %i.to to i64                    ; 2 uses
  store i64 %i.tp, ptr %.0431622, align 8, !tbaa !18
  %i.tq = getelementptr inbounds nuw i8, ptr %.15621, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !24
  %i.ts = zext i8 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 8
  %i.tu = or disjoint i64 %i.tt, %i.tp
  store i64 %i.tu, ptr %.0431622, align 8, !tbaa !18
  %i.tv = getelementptr inbounds nuw i8, ptr %.15621, i64 2
  %i.tw = getelementptr inbounds nuw i8, ptr %.0431622, i64 8 ; 2 uses
  %i.tx = load i8, ptr %i.tv, align 1, !tbaa !24
  %i.ty = zext i8 %i.tx to i64                    ; 2 uses
  store i64 %i.ty, ptr %i.tw, align 8, !tbaa !18
  %i.tz = getelementptr inbounds nuw i8, ptr %.15621, i64 3
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !24
  %i.ub = zext i8 %i.ua to i64
  %i.uc = shl nuw nsw i64 %i.ub, 8
  %i.ud = or disjoint i64 %i.uc, %i.ty
  store i64 %i.ud, ptr %i.tw, align 8, !tbaa !18
  %i.ue = getelementptr inbounds nuw i8, ptr %.15621, i64 4 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0431622, i64 16 ; 2 uses
  %niter778.next.1 = add i32 %niter778, 2         ; 2 uses
  %niter778.ncmp.1 = icmp eq i32 %niter778.next.1, %unroll_iter777
  br i1 %niter778.ncmp.1, label %.lr.ph630.preheader.loopexit758.unr-lcssa, label %.lr.ph624, !llvm.loop !106

bb.cb:                                            ; preds = %.lr.ph634.split
  br i1 %3, label %.lr.ph609.preheader, label %bb.cc

.lr.ph609.preheader:                              ; preds = %bb.cc, %bb.cb
  br label %.lr.ph609

bb.cc:                                            ; preds = %bb.cb
  %i.ug = icmp ugt ptr %.13631, %.0445.ptr
  %i.uh = ptrtoint ptr %.13631 to i64
  %i.ui = sub i64 %i.ro, %i.uh
  %i.uj = icmp ult i64 %i.ui, %i.rq
  %or.cond732 = select i1 %i.ug, i1 true, i1 %i.uj
  br i1 %or.cond732, label %bb.cd, label %.lr.ph609.preheader

bb.cd:                                            ; preds = %bb.cc
  %i.uk = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.ul = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.um = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4492, i64 noundef %i.uk, i64 noundef %i.ul, ptr noundef nonnull @.str.88) #14 ; 0 uses
  br label %.thread520

.lr.ph609:                                        ; preds = %.lr.ph609.preheader, %.lr.ph609
  %.2608 = phi i32 [ %i.vf, %.lr.ph609 ], [ 0, %.lr.ph609.preheader ]
  %.1436607 = phi ptr [ %i.vg, %.lr.ph609 ], [ %i.b, %.lr.ph609.preheader ] ; 5 uses
  %.16606 = phi ptr [ %i.ve, %.lr.ph609 ], [ %.13631, %.lr.ph609.preheader ] ; 5 uses
  %i.un = load i8, ptr %.16606, align 1, !tbaa !24
  %i.uo = zext i8 %i.un to i64                    ; 2 uses
  store i64 %i.uo, ptr %.1436607, align 8, !tbaa !18
  %i.up = getelementptr inbounds nuw i8, ptr %.16606, i64 1
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !24
  %i.ur = zext i8 %i.uq to i64
  %i.us = shl nuw nsw i64 %i.ur, 8
  %i.ut = or disjoint i64 %i.us, %i.uo            ; 2 uses
  store i64 %i.ut, ptr %.1436607, align 8, !tbaa !18
  %i.uu = getelementptr inbounds nuw i8, ptr %.16606, i64 2
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !24
  %i.uw = zext i8 %i.uv to i64
  %i.ux = shl nuw nsw i64 %i.uw, 16
  %i.uy = or disjoint i64 %i.ux, %i.ut            ; 2 uses
  store i64 %i.uy, ptr %.1436607, align 8, !tbaa !18
  %i.uz = getelementptr inbounds nuw i8, ptr %.16606, i64 3
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !24
  %i.vb = zext i8 %i.va to i64
  %i.vc = shl nuw nsw i64 %i.vb, 24
  %i.vd = or disjoint i64 %i.vc, %i.uy
  store i64 %i.vd, ptr %.1436607, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %.16606, i64 4 ; 2 uses
  %i.vf = add nuw nsw i32 %.2608, 1               ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.1436607, i64 8
  %exitcond676.not = icmp eq i32 %i.vf, %i.bw
  br i1 %exitcond676.not, label %.lr.ph614, label %.lr.ph609, !llvm.loop !107

.lr.ph614:                                        ; preds = %.lr.ph609, %.lr.ph614
  %.3613 = phi i32 [ %i.vz, %.lr.ph614 ], [ 0, %.lr.ph609 ]
  %.1432612 = phi ptr [ %i.wa, %.lr.ph614 ], [ %i.f, %.lr.ph609 ] ; 5 uses
  %.17611 = phi ptr [ %i.vy, %.lr.ph614 ], [ %i.ve, %.lr.ph609 ] ; 5 uses
  %i.vh = load i8, ptr %.17611, align 1, !tbaa !24
  %i.vi = zext i8 %i.vh to i64                    ; 2 uses
  store i64 %i.vi, ptr %.1432612, align 8, !tbaa !18
  %i.vj = getelementptr inbounds nuw i8, ptr %.17611, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !24
  %i.vl = zext i8 %i.vk to i64
  %i.vm = shl nuw nsw i64 %i.vl, 8
  %i.vn = or disjoint i64 %i.vm, %i.vi            ; 2 uses
  store i64 %i.vn, ptr %.1432612, align 8, !tbaa !18
  %i.vo = getelementptr inbounds nuw i8, ptr %.17611, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !24
  %i.vq = zext i8 %i.vp to i64
  %i.vr = shl nuw nsw i64 %i.vq, 16
  %i.vs = or disjoint i64 %i.vr, %i.vn            ; 2 uses
  store i64 %i.vs, ptr %.1432612, align 8, !tbaa !18
  %i.vt = getelementptr inbounds nuw i8, ptr %.17611, i64 3
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !24
  %i.vv = zext i8 %i.vu to i64
  %i.vw = shl nuw nsw i64 %i.vv, 24
  %i.vx = or disjoint i64 %i.vw, %i.vs
  store i64 %i.vx, ptr %.1432612, align 8, !tbaa !18
  %i.vy = getelementptr inbounds nuw i8, ptr %.17611, i64 4 ; 2 uses
  %i.vz = add nuw nsw i32 %.3613, 1               ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.1432612, i64 8
  %exitcond677.not = icmp eq i32 %i.vz, %i.bw
  br i1 %exitcond677.not, label %.lr.ph630.preheader, label %.lr.ph614, !llvm.loop !108

bb.ce:                                            ; preds = %.lr.ph634.split
  br i1 %3, label %.lr.ph597.preheader, label %bb.cf

.lr.ph597.preheader:                              ; preds = %bb.cf, %bb.ce
  br label %.lr.ph597

bb.cf:                                            ; preds = %bb.ce
  %i.wb = icmp ugt ptr %.13631, %.0445.ptr
  %i.wc = ptrtoint ptr %.13631 to i64
  %i.wd = sub i64 %i.ro, %i.wc
  %i.we = icmp ult i64 %i.wd, %i.rm
  %or.cond735 = select i1 %i.wb, i1 true, i1 %i.we
  br i1 %or.cond735, label %bb.cg, label %.lr.ph597.preheader

bb.cg:                                            ; preds = %bb.cf
  %i.wf = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.wg = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !18
  %i.wh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4503, i64 noundef %i.wf, i64 noundef %i.wg, ptr noundef nonnull @.str.88) #14 ; 0 uses
  br label %.thread520

.lr.ph597:                                        ; preds = %.lr.ph597.preheader, %.lr.ph597
  %.4596 = phi i32 [ %i.xu, %.lr.ph597 ], [ 0, %.lr.ph597.preheader ]
  %.2437595 = phi ptr [ %i.xv, %.lr.ph597 ], [ %i.b, %.lr.ph597.preheader ] ; 10 uses
  %.18594 = phi ptr [ %i.xt, %.lr.ph597 ], [ %.13631, %.lr.ph597.preheader ] ; 9 uses
  store i64 0, ptr %.2437595, align 8, !tbaa !18
  %i.wi = getelementptr inbounds nuw i8, ptr %.18594, i64 7
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !24
  %i.wk = zext i8 %i.wj to i64                    ; 2 uses
  store i64 %i.wk, ptr %.2437595, align 8, !tbaa !18
  %i.wl = shl nuw nsw i64 %i.wk, 8
  %i.wm = getelementptr inbounds nuw i8, ptr %.18594, i64 6
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !24
  %i.wo = zext i8 %i.wn to i64
  %i.wp = or disjoint i64 %i.wl, %i.wo            ; 2 uses
  store i64 %i.wp, ptr %.2437595, align 8, !tbaa !18
  %i.wq = shl nuw nsw i64 %i.wp, 8
  %i.wr = getelementptr inbounds nuw i8, ptr %.18594, i64 5
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !24
  %i.wt = zext i8 %i.ws to i64
  %i.wu = or disjoint i64 %i.wq, %i.wt            ; 2 uses
  store i64 %i.wu, ptr %.2437595, align 8, !tbaa !18
  %i.wv = shl nuw nsw i64 %i.wu, 8
  %i.ww = getelementptr inbounds nuw i8, ptr %.18594, i64 4
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !24
  %i.wy = zext i8 %i.wx to i64
  %i.wz = or disjoint i64 %i.wv, %i.wy            ; 2 uses
  store i64 %i.wz, ptr %.2437595, align 8, !tbaa !18
  %i.xa = shl nuw nsw i64 %i.wz, 8
  %i.xb = getelementptr inbounds nuw i8, ptr %.18594, i64 3
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !24
  %i.xd = zext i8 %i.xc to i64
  %i.xe = or disjoint i64 %i.xa, %i.xd            ; 2 uses
  store i64 %i.xe, ptr %.2437595, align 8, !tbaa !18
  %i.xf = shl nuw nsw i64 %i.xe, 8
  %i.xg = getelementptr inbounds nuw i8, ptr %.18594, i64 2
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !24
  %i.xi = zext i8 %i.xh to i64
  %i.xj = or disjoint i64 %i.xf, %i.xi            ; 2 uses
  store i64 %i.xj, ptr %.2437595, align 8, !tbaa !18
  %i.xk = shl nuw nsw i64 %i.xj, 8
  %i.xl = getelementptr inbounds nuw i8, ptr %.18594, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !24
  %i.xn = zext i8 %i.xm to i64
  %i.xo = or disjoint i64 %i.xk, %i.xn            ; 2 uses
  store i64 %i.xo, ptr %.2437595, align 8, !tbaa !18
  %i.xp = shl nuw i64 %i.xo, 8
  %i.xq = load i8, ptr %.18594, align 1, !tbaa !24
  %i.xr = zext i8 %i.xq to i64
  %i.xs = or disjoint i64 %i.xp, %i.xr
  store i64 %i.xs, ptr %.2437595, align 8, !tbaa !18
  %i.xt = getelementptr inbounds nuw i8, ptr %.18594, i64 8 ; 2 uses
  %i.xu = add nuw nsw i32 %.4596, 1               ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.2437595, i64 8
  %exitcond681.not = icmp eq i32 %i.xu, %i.bw
  br i1 %exitcond681.not, label %.lr.ph604, label %.lr.ph597, !llvm.loop !109

.lr.ph604:                                        ; preds = %.lr.ph597, %.lr.ph604
  %.5603 = phi i32 [ %i.zi, %.lr.ph604 ], [ 0, %.lr.ph597 ]
  %.2433602 = phi ptr [ %i.zj, %.lr.ph604 ], [ %i.f, %.lr.ph597 ] ; 9 uses
  %.20601 = phi ptr [ %i.zh, %.lr.ph604 ], [ %i.xt, %.lr.ph597 ] ; 9 uses
  store i64 0, ptr %.2433602, align 8, !tbaa !18
  %i.xw = getelementptr inbounds nuw i8, ptr %.20601, i64 7
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !24
  %i.xy = zext i8 %i.xx to i64                    ; 2 uses
  store i64 %i.xy, ptr %.2433602, align 8, !tbaa !18
  %i.xz = shl nuw nsw i64 %i.xy, 8
  %i.ya = getelementptr inbounds nuw i8, ptr %.20601, i64 6
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !24
  %i.yc = zext i8 %i.yb to i64
  %i.yd = or disjoint i64 %i.xz, %i.yc            ; 2 uses
  store i64 %i.yd, ptr %.2433602, align 8, !tbaa !18
  %i.ye = shl nuw nsw i64 %i.yd, 8
  %i.yf = getelementptr inbounds nuw i8, ptr %.20601, i64 5
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !24
  %i.yh = zext i8 %i.yg to i64
  %i.yi = or disjoint i64 %i.ye, %i.yh            ; 2 uses
  store i64 %i.yi, ptr %.2433602, align 8, !tbaa !18
  %i.yj = shl nuw nsw i64 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.20601, i64 4
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !24
  %i.ym = zext i8 %i.yl to i64
  %i.yn = or disjoint i64 %i.yj, %i.ym            ; 2 uses
  store i64 %i.yn, ptr %.2433602, align 8, !tbaa !18
  %i.yo = shl nuw nsw i64 %i.yn, 8
  %i.yp = getelementptr inbounds nuw i8, ptr %.20601, i64 3
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !24
  %i.yr = zext i8 %i.yq to i64
  %i.ys = or disjoint i64 %i.yo, %i.yr            ; 2 uses
  store i64 %i.ys, ptr %.2433602, align 8, !tbaa !18
  %i.yt = shl nuw nsw i64 %i.ys, 8
  %i.yu = getelementptr inbounds nuw i8, ptr %.20601, i64 2
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !24
  %i.yw = zext i8 %i.yv to i64
  %i.yx = or disjoint i64 %i.yt, %i.yw            ; 2 uses
  store i64 %i.yx, ptr %.2433602, align 8, !tbaa !18
  %i.yy = getelementptr inbounds nuw i8, ptr %.20601, i64 1
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !24
  %i.za = zext i8 %i.yz to i64
  %i.zb = shl i64 %i.yx, 16
  %i.zc = shl nuw nsw i64 %i.za, 8
  %i.zd = or disjoint i64 %i.zb, %i.zc
  %i.ze = load i8, ptr %.20601, align 1, !tbaa !24
  %i.zf = zext i8 %i.ze to i64
  %i.zg = or disjoint i64 %i.zd, %i.zf
  store i64 %i.zg, ptr %.2433602, align 8, !tbaa !18
  %i.zh = getelementptr inbounds nuw i8, ptr %.20601, i64 8 ; 2 uses
  %i.zi = add nuw nsw i32 %.5603, 1               ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.2433602, i64 8
  %exitcond683.not = icmp eq i32 %i.zi, %i.bw
  br i1 %exitcond683.not, label %.lr.ph630.preheader, label %.lr.ph604, !llvm.loop !110

bb.ch:                                            ; preds = %.lr.ph634
  %i.zk = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.zl = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !18
  %i.zm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_deserialize, i32 noundef 4513, i64 noundef %i.zk, i64 noundef %i.zl, ptr noundef nonnull @.str.71) #14 ; 0 uses
  br label %.thread520

.lr.ph630.preheader.loopexit758.unr-lcssa:        ; preds = %.lr.ph624
  br i1 %lcmp.mod774.not, label %.lr.ph630.preheader, label %.lr.ph624.epil.preheader

.lr.ph624.epil.preheader:                         ; preds = %.lr.ph630.preheader.loopexit758.unr-lcssa, %.lr.ph624.preheader
  %.0431622.epil.init = phi ptr [ %i.f, %.lr.ph624.preheader ], [ %i.uf, %.lr.ph630.preheader.loopexit758.unr-lcssa ] ; 2 uses
  %.15621.epil.init = phi ptr [ %.lcssa761, %.lr.ph624.preheader ], [ %i.ue, %.lr.ph630.preheader.loopexit758.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod776)
  %i.zn = load i8, ptr %.15621.epil.init, align 1, !tbaa !24
  %i.zo = zext i8 %i.zn to i64                    ; 2 uses
  store i64 %i.zo, ptr %.0431622.epil.init, align 8, !tbaa !18
  %i.zp = getelementptr inbounds nuw i8, ptr %.15621.epil.init, i64 1
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !24
  %i.zr = zext i8 %i.zq to i64
  %i.zs = shl nuw nsw i64 %i.zr, 8
  %i.zt = or disjoint i64 %i.zs, %i.zo
  store i64 %i.zt, ptr %.0431622.epil.init, align 8, !tbaa !18
  %i.zu = getelementptr inbounds nuw i8, ptr %.15621.epil.init, i64 2
  br label %.lr.ph630.preheader

.lr.ph630.preheader:                              ; preds = %.lr.ph614, %.lr.ph624.epil.preheader, %.lr.ph630.preheader.loopexit758.unr-lcssa, %.lr.ph604
  %.22 = phi ptr [ %i.zu, %.lr.ph624.epil.preheader ], [ %i.zh, %.lr.ph604 ], [ %i.ue, %.lr.ph630.preheader.loopexit758.unr-lcssa ], [ %i.vy, %.lr.ph614 ] ; 2 uses
  br i1 %min.iters.check, label %.lr.ph630.preheader757, label %vector.body

vector.body:                                      ; preds = %.lr.ph630.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph630.preheader ] ; 2 uses
  %i.zv = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.zv ; 2 uses
  %next.gep749 = getelementptr i8, ptr %i.f, i64 %i.zv ; 2 uses
  %next.gep750 = getelementptr i8, ptr %i.b, i64 %i.zv ; 2 uses
  %i.zw = getelementptr i8, ptr %next.gep749, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep749, align 16, !tbaa !18
  %wide.load751 = load <2 x i64>, ptr %i.zw, align 16, !tbaa !18
  %i.zx = getelementptr i8, ptr %next.gep750, i64 16
  %wide.load752 = load <2 x i64>, ptr %next.gep750, align 16, !tbaa !18
  %wide.load753 = load <2 x i64>, ptr %i.zx, align 16, !tbaa !18
  %i.zy = add <2 x i64> %wide.load, splat (i64 1)
  %i.zz = add <2 x i64> %wide.load751, splat (i64 1)
  %i.aaa = sub <2 x i64> %i.zy, %wide.load752
  %i.aab = sub <2 x i64> %i.zz, %wide.load753
  %i.aac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.aaa, ptr %next.gep, align 16, !tbaa !18
  store <2 x i64> %i.aab, ptr %i.aac, align 16, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aad = icmp eq i64 %index.next, %n.vec
  br i1 %i.aad, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph630.preheader757

.lr.ph630.preheader757:                           ; preds = %.lr.ph630.preheader, %middle.block
  %.6629.ph = phi i32 [ 0, %.lr.ph630.preheader ], [ %i.rz, %middle.block ]
  %.0430628.ph = phi ptr [ %i.c, %.lr.ph630.preheader ], [ %i.sb, %middle.block ]
  %.3434627.ph = phi ptr [ %i.f, %.lr.ph630.preheader ], [ %i.sc, %middle.block ]
  %.3438626.ph = phi ptr [ %i.b, %.lr.ph630.preheader ], [ %i.sd, %middle.block ]
  br label %.lr.ph630

.lr.ph630:                                        ; preds = %.lr.ph630.preheader757, %.lr.ph630
  %.6629 = phi i32 [ %i.aai, %.lr.ph630 ], [ %.6629.ph, %.lr.ph630.preheader757 ]
  %.0430628 = phi ptr [ %i.aal, %.lr.ph630 ], [ %.0430628.ph, %.lr.ph630.preheader757 ] ; 2 uses
  %.3434627 = phi ptr [ %i.aak, %.lr.ph630 ], [ %.3434627.ph, %.lr.ph630.preheader757 ] ; 2 uses
  %.3438626 = phi ptr [ %i.aaj, %.lr.ph630 ], [ %.3438626.ph, %.lr.ph630.preheader757 ] ; 2 uses
  %i.aae = load i64, ptr %.3434627, align 8, !tbaa !18
  %i.aaf = load i64, ptr %.3438626, align 8, !tbaa !18
  %i.aag = add i64 %i.aae, 1
  %i.aah = sub i64 %i.aag, %i.aaf
  store i64 %i.aah, ptr %.0430628, align 8, !tbaa !18
  %i.aai = add nuw nsw i32 %.6629, 1              ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.3438626, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %.3434627, i64 8
  %i.aal = getelementptr inbounds nuw i8, ptr %.0430628, i64 8
  %exitcond684.not = icmp eq i32 %i.aai, %i.bw
  br i1 %exitcond684.not, label %._crit_edge, label %.lr.ph630, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph630, %middle.block
  %i.aam = icmp ne i32 %.3455632, 0
  %i.aan = zext i1 %i.aam to i32
  %i.aao = call i32 @H5S_select_hyperslab(ptr noundef nonnull %.0466, i32 noundef %i.aan, ptr noundef nonnull %i.b, ptr noundef nonnull @H5S_hyper_ones_g, ptr noundef nonnull @H5S_hyper_ones_g, ptr noundef nonnull %i.c)
end_hunk_0
begin_hunk_1_@H5S__hyper_iter_get_seq_list:bb.a
  %.1381460.i.unr = phi i64 [ %.1381460.i.ph, %.lr.ph463.i.preheader859 ], [ %i.abt, %.lr.ph463.i.prol ]
  %i.abu = icmp eq i64 %.1381460.i.ph, 1
  br i1 %i.abu, label %._crit_edge464.i, label %.lr.ph463.i

.lr.ph463.i:                                      ; preds = %.lr.ph463.i.prol.loopexit, %.lr.ph463.i
  %.11462.i = phi i64 [ %i.acb, %.lr.ph463.i ], [ %.11462.i.unr, %.lr.ph463.i.prol.loopexit ] ; 4 uses
  %.15461.i = phi i64 [ %i.acc, %.lr.ph463.i ], [ %.15461.i.unr, %.lr.ph463.i.prol.loopexit ] ; 2 uses
  %.1381460.i = phi i64 [ %i.acd, %.lr.ph463.i ], [ %.1381460.i.unr, %.lr.ph463.i.prol.loopexit ]
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.11462.i
  store i64 %.15461.i, ptr %i.abv, align 8, !tbaa !18
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.11462.i
  store i64 %i.rq, ptr %i.abw, align 8, !tbaa !18
  %i.abx = add i64 %.11462.i, 1                   ; 2 uses
  %i.aby = add i64 %.15461.i, %i.rw               ; 2 uses
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.abx
  store i64 %i.aby, ptr %i.abz, align 8, !tbaa !18
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %i.abx
  store i64 %i.rq, ptr %i.aca, align 8, !tbaa !18
  %i.acb = add i64 %.11462.i, 2                   ; 2 uses
  %i.acc = add i64 %i.aby, %i.rw                  ; 2 uses
  %i.acd = add i64 %.1381460.i, -2                ; 2 uses
  %.not401.i.1 = icmp eq i64 %i.acd, 0
  br i1 %.not401.i.1, label %._crit_edge464.i, label %.lr.ph463.i, !llvm.loop !290

._crit_edge464.i:                                 ; preds = %.lr.ph463.i.prol.loopexit, %.lr.ph463.i, %middle.block691, %.preheader.i
  %.15.lcssa.i = phi i64 [ %.4366.lcssa.i, %.preheader.i ], [ %i.abf, %middle.block691 ], [ %.lcssa860.unr, %.lr.ph463.i.prol.loopexit ], [ %i.acc, %.lr.ph463.i ]
  %.11.lcssa.i = phi i64 [ %.2356.lcssa.i, %.preheader.i ], [ %i.abd, %middle.block691 ], [ %.lcssa861.unr, %.lr.ph463.i.prol.loopexit ], [ %i.acb, %.lr.ph463.i ] ; 6 uses
  %i.ace = mul i64 %i.aba, %i.rp
  %i.acf = sub i64 %i.aaz, %i.ace                 ; 4 uses
  %i.acg = mul i64 %i.aba, %i.rt
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.rl ; 3 uses
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !18
  %i.acj = add i64 %i.aci, %i.acg                 ; 2 uses
  store i64 %i.acj, ptr %i.ach, align 8, !tbaa !18
  %.not402.i = icmp eq i64 %i.acf, 0
  br i1 %.not402.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %._crit_edge464.i
  %i.ack = icmp ult i64 %.11.lcssa.i, %.0130
  br i1 %i.ack, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.acl = mul i64 %i.acf, %i.pj
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.11.lcssa.i
  store i64 %.15.lcssa.i, ptr %i.acm, align 8, !tbaa !18
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.11.lcssa.i
  store i64 %i.acl, ptr %i.acn, align 8, !tbaa !18
  %i.aco = add nuw i64 %.11.lcssa.i, 1
  %i.acp = add i64 %i.acj, %i.acf
  store i64 %i.acp, ptr %i.ach, align 8, !tbaa !18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge464.i, %bb.ar, %._crit_edge456.i
  %.12.i = phi i64 [ %i.aco, %bb.at ], [ %.11.lcssa.i, %bb.as ], [ %.11.lcssa.i, %._crit_edge464.i ], [ %.2356.lcssa.i, %bb.ar ], [ %.2356.lcssa.i, %._crit_edge456.i ]
  %.1353.i = phi i64 [ 0, %bb.at ], [ %i.acf, %bb.as ], [ 0, %._crit_edge464.i ], [ %i.aaz, %bb.ar ], [ 0, %._crit_edge456.i ]
  br i1 %.not471544549564.i, label %._crit_edge470.i, label %.lr.ph469.preheader.i

.lr.ph469.preheader.i:                            ; preds = %bb.au
  %wide.trip.count506.i = zext i32 %.0377540551562.i to i64 ; 5 uses
  %min.iters.check701 = icmp ult i32 %.0377540551562.i, 14
  br i1 %min.iters.check701, label %.lr.ph469.i.preheader, label %vector.memcheck696

vector.memcheck696:                               ; preds = %.lr.ph469.preheader.i
  %i.acq = add i64 %i.a, 552                      ; 2 uses
  %i.acr = sub i64 %i.c, %i.acq
  %diff.check697 = icmp ugt i64 %i.acr, -32
  %i.acs = sub i64 %.0382538552561.i698, %i.acq
  %diff.check699 = icmp ugt i64 %i.acs, -32
  %conflict.rdx = or i1 %diff.check697, %diff.check699
  br i1 %conflict.rdx, label %.lr.ph469.i.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %vector.memcheck696
  %n.vec703 = and i64 %wide.trip.count506.i, 4294967292 ; 3 uses
  br label %vector.body704

vector.body704:                                   ; preds = %vector.body704, %vector.ph702
  %index705 = phi i64 [ 0, %vector.ph702 ], [ %index.next710, %vector.body704 ] ; 4 uses
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index705 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %wide.load706 = load <2 x i64>, ptr %i.act, align 16, !tbaa !18
  %wide.load707 = load <2 x i64>, ptr %i.acu, align 16, !tbaa !18
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %index705 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %wide.load708 = load <2 x i64>, ptr %i.acv, align 8, !tbaa !18
  %wide.load709 = load <2 x i64>, ptr %i.acw, align 8, !tbaa !18
  %i.acx = sub nsw <2 x i64> %wide.load706, %wide.load708
  %i.acy = sub nsw <2 x i64> %wide.load707, %wide.load709
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index705 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  store <2 x i64> %i.acx, ptr %i.acz, align 8, !tbaa !24
  store <2 x i64> %i.acy, ptr %i.ada, align 8, !tbaa !24
  %index.next710 = add nuw i64 %index705, 4       ; 2 uses
  %i.adb = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.adb, label %middle.block711, label %vector.body704, !llvm.loop !291

middle.block711:                                  ; preds = %vector.body704
  %cmp.n712 = icmp eq i64 %n.vec703, %wide.trip.count506.i
  br i1 %cmp.n712, label %._crit_edge470.i, label %.lr.ph469.i.preheader

.lr.ph469.i.preheader:                            ; preds = %vector.memcheck696, %.lr.ph469.preheader.i, %middle.block711
  %indvars.iv503.i.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph469.preheader.i ], [ %n.vec703, %middle.block711 ] ; 3 uses
  %xtraiter945 = and i64 %wide.trip.count506.i, 3 ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph469.i.prol.loopexit, label %.lr.ph469.i.prol

.lr.ph469.i.prol:                                 ; preds = %.lr.ph469.i.preheader, %.lr.ph469.i.prol
  %indvars.iv503.i.prol = phi i64 [ %indvars.iv.next504.i.prol, %.lr.ph469.i.prol ], [ %indvars.iv503.i.ph, %.lr.ph469.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph469.i.prol ], [ 0, %.lr.ph469.i.preheader ]
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503.i.prol
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !18
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv503.i.prol
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !18
  %i.adg = sub nsw i64 %i.add, %i.adf
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv503.i.prol
  store i64 %i.adg, ptr %i.adh, align 8, !tbaa !24
  %indvars.iv.next504.i.prol = add nuw nsw i64 %indvars.iv503.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter945
  br i1 %prol.iter.cmp.not, label %.lr.ph469.i.prol.loopexit, label %.lr.ph469.i.prol, !llvm.loop !292

.lr.ph469.i.prol.loopexit:                        ; preds = %.lr.ph469.i.prol, %.lr.ph469.i.preheader
  %indvars.iv503.i.unr = phi i64 [ %indvars.iv503.i.ph, %.lr.ph469.i.preheader ], [ %indvars.iv.next504.i.prol, %.lr.ph469.i.prol ]
  %i.adi = sub nsw i64 %indvars.iv503.i.ph, %wide.trip.count506.i
  %i.adj = icmp ugt i64 %i.adi, -4
  br i1 %i.adj, label %._crit_edge470.i, label %.lr.ph469.i

.lr.ph469.i:                                      ; preds = %.lr.ph469.i.prol.loopexit, %.lr.ph469.i
  %indvars.iv503.i = phi i64 [ %indvars.iv.next504.i.3, %.lr.ph469.i ], [ %indvars.iv503.i.unr, %.lr.ph469.i.prol.loopexit ] ; 7 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503.i
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !18
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv503.i
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !18
  %i.ado = sub nsw i64 %i.adl, %i.adn
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv503.i
  store i64 %i.ado, ptr %i.adp, align 8, !tbaa !24
  %indvars.iv.next504.i = add nuw nsw i64 %indvars.iv503.i, 1 ; 3 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next504.i
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !18
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv.next504.i
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !18
  %i.adu = sub nsw i64 %i.adr, %i.adt
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next504.i
  store i64 %i.adu, ptr %i.adv, align 8, !tbaa !24
  %indvars.iv.next504.i.1 = add nuw nsw i64 %indvars.iv503.i, 2 ; 3 uses
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next504.i.1
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !18
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv.next504.i.1
  %i.adz = load i64, ptr %i.ady, align 8, !tbaa !18
  %i.aea = sub nsw i64 %i.adx, %i.adz
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next504.i.1
  store i64 %i.aea, ptr %i.aeb, align 8, !tbaa !24
  %indvars.iv.next504.i.2 = add nuw nsw i64 %indvars.iv503.i, 3 ; 3 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next504.i.2
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !18
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv.next504.i.2
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !18
  %i.aeg = sub nsw i64 %i.aed, %i.aef
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next504.i.2
  store i64 %i.aeg, ptr %i.aeh, align 8, !tbaa !24
  %indvars.iv.next504.i.3 = add nuw nsw i64 %indvars.iv503.i, 4 ; 2 uses
  %exitcond507.not.i.3 = icmp eq i64 %indvars.iv.next504.i.3, %wide.trip.count506.i
  br i1 %exitcond507.not.i.3, label %._crit_edge470.i, label %.lr.ph469.i, !llvm.loop !293

._crit_edge470.i:                                 ; preds = %.lr.ph469.i.prol.loopexit, %.lr.ph469.i, %middle.block711, %bb.au
  %i.aei = sub i64 %.535.i, %.1353.i              ; 2 uses
  %i.aej = load i64, ptr %i.pl, align 8, !tbaa !86
  %i.aek = sub i64 %i.aej, %i.aei
  store i64 %i.aek, ptr %i.pl, align 8, !tbaa !86
  %i.ael = load i64, ptr %3, align 8, !tbaa !18
  %i.aem = add i64 %i.ael, %.12.i
  store i64 %i.aem, ptr %3, align 8, !tbaa !18
  %i.aen = load i64, ptr %4, align 8, !tbaa !18
  %i.aeo = add i64 %i.aen, %i.aei
  store i64 %i.aeo, ptr %4, align 8, !tbaa !18
  br label %H5S__hyper_iter_get_seq_list_opt.exit

H5S__hyper_iter_get_seq_list_opt.exit:            ; preds = %bb.v, %._crit_edge470.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.critedge147

bb.av:                                            ; preds = %bb.b
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !70 ; 10 uses
  %i.aer = add i32 %i.aeq, -1                     ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 7 uses
  %i.aet = zext i32 %i.aer to i64                 ; 17 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.aet ; 5 uses
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !24 ; 5 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 17 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 10 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !71 ; 5 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !86
  %..i165 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.afc) ; 4 uses
  %.not558.i = icmp eq i32 %i.aeq, 0              ; 2 uses
  br i1 %.not558.i, label %._crit_edge.i172, label %.lr.ph.preheader.i166

.lr.ph.preheader.i166:                            ; preds = %bb.av
  %wide.trip.count.i167 = zext i32 %i.aeq to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.aeq, 4
  br i1 %min.iters.check, label %.lr.ph.i168.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i166
  %n.vec = and i64 %wide.trip.count.i167, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aff, %vector.body ]
  %vec.phi568 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.afg, %vector.body ]
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %index ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %wide.load = load <2 x i64>, ptr %i.afd, align 8, !tbaa !18
  %wide.load569 = load <2 x i64>, ptr %i.afe, align 8, !tbaa !18
  %i.aff = add <2 x i64> %wide.load, %vec.phi     ; 2 uses
  %i.afg = add <2 x i64> %wide.load569, %vec.phi568 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afh = icmp eq i64 %index.next, %n.vec
  br i1 %i.afh, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.afg, %i.aff
  %i.afi = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i167
  br i1 %cmp.n, label %._crit_edge.i172, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %.lr.ph.preheader.i166, %middle.block
  %indvars.iv.i169.ph = phi i64 [ 0, %.lr.ph.preheader.i166 ], [ %n.vec, %middle.block ]
  %.0328505.i.ph = phi i64 [ 0, %.lr.ph.preheader.i166 ], [ %i.afi, %middle.block ]
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.lr.ph.i168 ], [ %indvars.iv.i169.ph, %.lr.ph.i168.preheader ] ; 2 uses
  %.0328505.i = phi i64 [ %i.afl, %.lr.ph.i168 ], [ %.0328505.i.ph, %.lr.ph.i168.preheader ]
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv.i169
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !18
  %i.afl = add i64 %i.afk, %.0328505.i            ; 2 uses
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i167
  br i1 %exitcond.not.i171, label %._crit_edge.i172, label %.lr.ph.i168, !llvm.loop !295

._crit_edge.i172:                                 ; preds = %.lr.ph.i168, %middle.block, %bb.av
  %.0328.lcssa.i = phi i64 [ 0, %bb.av ], [ %i.afi, %middle.block ], [ %i.afl, %.lr.ph.i168 ] ; 6 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aet ; 8 uses
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !18 ; 2 uses
  %i.afo = load i64, ptr %i.aev, align 8, !tbaa !61
  %.not.i173 = icmp eq i64 %i.afn, %i.afo
  br i1 %.not.i173, label %.thread.i174, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i172
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aev, i64 8 ; 2 uses
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !65
  %reass.sub = sub i64 %i.afq, %i.afn
  %i.afr = add i64 %reass.sub, 1
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.afr, i64 %..i165) ; 3 uses
  %i.afs = mul i64 %spec.select.i, %i.afa         ; 3 uses
  store i64 %.0328.lcssa.i, ptr %5, align 8, !tbaa !18
  store i64 %i.afs, ptr %6, align 8, !tbaa !18
  %i.aft = add i64 %i.afs, %.0328.lcssa.i         ; 5 uses
  %i.afu = sub nuw i64 %..i165, %spec.select.i    ; 6 uses
  %.not364.i = icmp eq i64 %i.afu, 0
  br i1 %.not364.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !64 ; 4 uses
  %.not367.i = icmp eq ptr %i.afw, null
  br i1 %.not367.i, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !61 ; 3 uses
  %i.afy = load i64, ptr %i.afm, align 8, !tbaa !18
  %i.afz = sub i64 %i.afx, %i.afy
  %i.aga = mul i64 %i.afz, %i.afa
  %i.agb = add i64 %i.aga, %.0328.lcssa.i
  store i64 %i.afx, ptr %i.afm, align 8, !tbaa !18
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.aet
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !18
  %i.age = add nsw i64 %i.agd, %i.afx
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aet
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !18
  %i.agh = mul i64 %i.age, %i.agg
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aet
  store i64 %i.agh, ptr %i.agi, align 8, !tbaa !18
  store ptr %i.afw, ptr %i.aeu, align 8, !tbaa !59
  br label %.thread.i174

bb.az:                                            ; preds = %bb.aw
  %i.agj = load i64, ptr %i.afm, align 8, !tbaa !18
  %i.agk = add i64 %i.agj, %spec.select.i         ; 2 uses
  store i64 %i.agk, ptr %i.afm, align 8, !tbaa !18
  %i.agl = load i64, ptr %i.afp, align 8, !tbaa !65
  %.not365.i = icmp ugt i64 %i.agk, %i.agl
  br i1 %.not365.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aet ; 2 uses
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !18
  %i.ago = add i64 %i.agn, %i.afs
  store i64 %i.ago, ptr %i.agm, align 8, !tbaa !18
  br label %.thread430.i

bb.bb:                                            ; preds = %bb.az
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !64 ; 3 uses
  %.not366.i = icmp eq ptr %i.agq, null
  br i1 %.not366.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !61 ; 2 uses
  store i64 %i.agr, ptr %i.afm, align 8, !tbaa !18
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.aet
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !18
  %i.agu = add nsw i64 %i.agt, %i.agr
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aet
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !18
  %i.agx = mul i64 %i.agu, %i.agw
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aet
  store i64 %i.agx, ptr %i.agy, align 8, !tbaa !18
  store ptr %i.agq, ptr %i.aeu, align 8, !tbaa !59
  br label %.thread430.i

bb.bd:                                            ; preds = %bb.bb, %bb.ax
  %i.agz = add i32 %i.aeq, -2                     ; 2 uses
  %i.aha = icmp sgt i32 %i.agz, -1
  br i1 %i.aha, label %.lr.ph511.i, label %.thread.i174

.lr.ph511.i:                                      ; preds = %bb.bd, %bb.bh
  %.0303509.i = phi i32 [ %i.aia, %bb.bh ], [ %i.agz, %bb.bd ] ; 4 uses
  %i.ahb = zext nneg i32 %.0303509.i to i64       ; 10 uses
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.ahb
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !59 ; 3 uses
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ahb ; 2 uses
  %i.ahf = load i64, ptr %i.ahe, align 8, !tbaa !18
  %i.ahg = add i64 %i.ahf, 1                      ; 2 uses
  store i64 %i.ahg, ptr %i.ahe, align 8, !tbaa !18
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !65
  %.not368.i = icmp ugt i64 %i.ahg, %i.ahi
  br i1 %.not368.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph511.i
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.ahb
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !18
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.ahb ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !18
  %i.ahn = add i64 %i.ahm, %i.ahk
  store i64 %i.ahn, ptr %i.ahl, align 8, !tbaa !18
  br label %bb.bi

bb.bf:                                            ; preds = %.lr.ph511.i
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !64 ; 4 uses
  %.not369.i = icmp eq ptr %i.ahp, null
  br i1 %.not369.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.ahb
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ahb
  store ptr %i.ahp, ptr %i.ahq, align 8, !tbaa !59
  %i.ahs = load i64, ptr %i.ahp, align 8, !tbaa !61 ; 2 uses
  store i64 %i.ahs, ptr %i.ahr, align 8, !tbaa !18
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.ahb
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !18
  %i.ahv = add nsw i64 %i.ahu, %i.ahs
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.ahb
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !18
  %i.ahy = mul i64 %i.ahv, %i.ahx
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.ahb
  store i64 %i.ahy, ptr %i.ahz, align 8, !tbaa !18
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.aia = add nsw i32 %.0303509.i, -1
  %i.aib = icmp sgt i32 %.0303509.i, 0
  br i1 %i.aib, label %.lr.ph511.i, label %.thread.i174, !llvm.loop !296

bb.bi:                                            ; preds = %bb.bg, %bb.be
  %.2338.i = phi ptr [ %i.ahd, %bb.be ], [ %i.ahp, %bb.bg ] ; 2 uses
  %i.aic = icmp ult i32 %.0303509.i, %i.aer
  br i1 %i.aic, label %.lr.ph515.i, label %.lr.ph519.preheader.i

.lr.ph519.preheader.i:                            ; preds = %.lr.ph515.i, %bb.bi
  %.3339.lcssa650.i = phi ptr [ %.2338.i, %bb.bi ], [ %i.aim, %.lr.ph515.i ] ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.aeq, i32 1)
  %wide.trip.count625.i = zext i32 %umax.i to i64 ; 3 uses
  %min.iters.check571 = icmp ult i32 %i.aeq, 4
  br i1 %min.iters.check571, label %.lr.ph519.i.preheader, label %vector.ph572

vector.ph572:                                     ; preds = %.lr.ph519.preheader.i
  %n.vec573 = and i64 %wide.trip.count625.i, 4294967292 ; 3 uses
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph572
  %index575 = phi i64 [ 0, %vector.ph572 ], [ %index.next580, %vector.body574 ] ; 2 uses
  %vec.phi576 = phi <2 x i64> [ zeroinitializer, %vector.ph572 ], [ %i.aif, %vector.body574 ]
  %vec.phi577 = phi <2 x i64> [ zeroinitializer, %vector.ph572 ], [ %i.aig, %vector.body574 ]
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %index575 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %wide.load578 = load <2 x i64>, ptr %i.aid, align 8, !tbaa !18
  %wide.load579 = load <2 x i64>, ptr %i.aie, align 8, !tbaa !18
  %i.aif = add <2 x i64> %wide.load578, %vec.phi576 ; 2 uses
  %i.aig = add <2 x i64> %wide.load579, %vec.phi577 ; 2 uses
  %index.next580 = add nuw i64 %index575, 4       ; 2 uses
  %i.aih = icmp eq i64 %index.next580, %n.vec573
  br i1 %i.aih, label %middle.block581, label %vector.body574, !llvm.loop !297

middle.block581:                                  ; preds = %vector.body574
  %bin.rdx582 = add <2 x i64> %i.aig, %i.aif
  %i.aii = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx582) ; 2 uses
  %cmp.n583 = icmp eq i64 %n.vec573, %wide.trip.count625.i
  br i1 %cmp.n583, label %.thread.i174, label %.lr.ph519.i.preheader

.lr.ph519.i.preheader:                            ; preds = %.lr.ph519.preheader.i, %middle.block581
  %indvars.iv622.i.ph = phi i64 [ 0, %.lr.ph519.preheader.i ], [ %n.vec573, %middle.block581 ]
  %.2330517.i.ph = phi i64 [ 0, %.lr.ph519.preheader.i ], [ %i.aii, %middle.block581 ]
  br label %.lr.ph519.i

.lr.ph515.i:                                      ; preds = %bb.bi, %.lr.ph515.i
  %indvars.iv617.i = phi i64 [ %indvars.iv.next618.i, %.lr.ph515.i ], [ %i.ahb, %bb.bi ]
  %.3339512.i = phi ptr [ %i.aim, %.lr.ph515.i ], [ %.2338.i, %bb.bi ]
  %indvars.iv.next618.i = add nuw nsw i64 %indvars.iv617.i, 1 ; 7 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.3339512.i, i64 16
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !62
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 56
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !59 ; 4 uses
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %indvars.iv.next618.i
  store ptr %i.aim, ptr %i.ain, align 8, !tbaa !59
  %i.aio = load i64, ptr %i.aim, align 8, !tbaa !61 ; 2 uses
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next618.i
  store i64 %i.aio, ptr %i.aip, align 8, !tbaa !18
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %indvars.iv.next618.i
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !18
  %i.ais = add nsw i64 %i.air, %i.aio
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %indvars.iv.next618.i
  %i.aiu = load i64, ptr %i.ait, align 8, !tbaa !18
  %i.aiv = mul i64 %i.ais, %i.aiu
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv.next618.i
  store i64 %i.aiv, ptr %i.aiw, align 8, !tbaa !18
  %exitcond621.not.i = icmp eq i64 %indvars.iv.next618.i, %i.aet
  br i1 %exitcond621.not.i, label %.lr.ph519.preheader.i, label %.lr.ph515.i, !llvm.loop !298

.lr.ph519.i:                                      ; preds = %.lr.ph519.i.preheader, %.lr.ph519.i
  %indvars.iv622.i = phi i64 [ %indvars.iv.next623.i, %.lr.ph519.i ], [ %indvars.iv622.i.ph, %.lr.ph519.i.preheader ] ; 2 uses
  %.2330517.i = phi i64 [ %i.aiz, %.lr.ph519.i ], [ %.2330517.i.ph, %.lr.ph519.i.preheader ]
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv622.i
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !18
  %i.aiz = add i64 %i.aiy, %.2330517.i            ; 2 uses
  %indvars.iv.next623.i = add nuw nsw i64 %indvars.iv622.i, 1 ; 2 uses
  %exitcond626.not.i = icmp eq i64 %indvars.iv.next623.i, %wide.trip.count625.i
  br i1 %exitcond626.not.i, label %.thread.i174, label %.lr.ph519.i, !llvm.loop !299

.thread.i174:                                     ; preds = %bb.bh, %.lr.ph519.i, %middle.block581, %bb.bd, %bb.ay, %._crit_edge.i172
  %.4340.i = phi ptr [ %.3339.lcssa650.i, %middle.block581 ], [ %i.afw, %bb.ay ], [ %i.aev, %._crit_edge.i172 ], [ null, %bb.bd ], [ %.3339.lcssa650.i, %.lr.ph519.i ], [ null, %bb.bh ]
  %.3331.i = phi i64 [ %i.aii, %middle.block581 ], [ %i.agb, %bb.ay ], [ %.0328.lcssa.i, %._crit_edge.i172 ], [ %.0328.lcssa.i, %bb.bd ], [ %i.aiz, %.lr.ph519.i ], [ %.0328.lcssa.i, %bb.bh ]
  %.0323.i = phi i64 [ %i.aft, %middle.block581 ], [ %i.aft, %bb.ay ], [ 0, %._crit_edge.i172 ], [ %i.aft, %bb.bd ], [ %i.aft, %.lr.ph519.i ], [ %i.aft, %bb.bh ]
  %.0311.i = phi i64 [ %i.afu, %middle.block581 ], [ %i.afu, %bb.ay ], [ %..i165, %._crit_edge.i172 ], [ %i.afu, %bb.bd ], [ %i.afu, %.lr.ph519.i ], [ %i.afu, %bb.bh ] ; 3 uses
  %.0307.i = phi i64 [ 1, %middle.block581 ], [ 1, %bb.ay ], [ 0, %._crit_edge.i172 ], [ 1, %bb.bd ], [ 1, %.lr.ph519.i ], [ 1, %bb.bh ] ; 3 uses
  %i.aja = icmp ne i64 %.0311.i, 0
  %i.ajb = icmp ult i64 %.0307.i, %1
  %i.ajc = and i1 %i.aja, %i.ajb
  br i1 %i.ajc, label %.preheader451.lr.ph.i, label %.thread430.i

.preheader451.lr.ph.i:                            ; preds = %.thread.i174
  %i.ajd = add i32 %i.aeq, -2                     ; 2 uses
  %i.aje = icmp sgt i32 %i.ajd, -1
  %wide.trip.count635.i = zext i32 %i.aeq to i64  ; 3 uses
  %min.iters.check587 = icmp ult i32 %i.aeq, 4
  %n.vec589 = and i64 %wide.trip.count635.i, 4294967292 ; 3 uses
  %cmp.n599 = icmp eq i64 %n.vec589, %wide.trip.count635.i
  br label %.preheader451.i

.loopexit.i177:                                   ; preds = %.lr.ph549.i, %middle.block597, %.preheader.i178
  %.12.lcssa662.i = phi ptr [ %i.amv, %.preheader.i178 ], [ %.12.lcssa661.i, %middle.block597 ], [ %.12.lcssa661.i, %.lr.ph549.i ]
  %.7335.lcssa.i = phi i64 [ 0, %.preheader.i178 ], [ %i.amr, %middle.block597 ], [ %i.ani, %.lr.ph549.i ]
  %i.ajf = icmp ne i64 %.4315412.i, 0
  %i.ajg = icmp ult i64 %.6415.i, %1
  %i.ajh = select i1 %i.ajf, i1 %i.ajg, i1 false
  br i1 %i.ajh, label %.preheader451.i, label %.thread430.i

.preheader451.i:                                  ; preds = %.loopexit.i177, %.preheader451.lr.ph.i
  %.1308555.i = phi i64 [ %.0307.i, %.preheader451.lr.ph.i ], [ %.6415.i, %.loopexit.i177 ] ; 2 uses
  %.1312554.i = phi i64 [ %.0311.i, %.preheader451.lr.ph.i ], [ %.4315412.i, %.loopexit.i177 ] ; 2 uses
  %.1324553.i = phi i64 [ %.0323.i, %.preheader451.lr.ph.i ], [ %.2325461.i, %.loopexit.i177 ] ; 2 uses
  %.4332552.i = phi i64 [ %.3331.i, %.preheader451.lr.ph.i ], [ %.7335.lcssa.i, %.loopexit.i177 ]
  %.5341551.i = phi ptr [ %.4340.i, %.preheader451.lr.ph.i ], [ %.12.lcssa662.i, %.loopexit.i177 ] ; 3 uses
  %.not370521.i = icmp eq ptr %.5341551.i, null
  br i1 %.not370521.i, label %.thread396.thread.i, label %.lr.ph528.i

.lr.ph528.i:                                      ; preds = %.preheader451.i, %bb.bq
  %.0296527.i = phi ptr [ %.6342522.i, %bb.bq ], [ %.5341551.i, %.preheader451.i ]
  %.2309526.i = phi i64 [ %.4.i179, %bb.bq ], [ %.1308555.i, %.preheader451.i ] ; 12 uses
  %.2313525.i = phi i64 [ %i.akb, %bb.bq ], [ %.1312554.i, %.preheader451.i ] ; 5 uses
  %.2325524.i = phi i64 [ %i.akk, %bb.bq ], [ %.1324553.i, %.preheader451.i ] ; 3 uses
  %.5333523.i = phi i64 [ %i.ajm, %bb.bq ], [ %.4332552.i, %.preheader451.i ]
  %.6342522.i = phi ptr [ %i.akm, %bb.bq ], [ %.5341551.i, %.preheader451.i ] ; 9 uses
  %i.aji = load i64, ptr %.6342522.i, align 8, !tbaa !61 ; 2 uses
  %i.ajj = load i64, ptr %.0296527.i, align 8, !tbaa !61
  %i.ajk = sub i64 %i.aji, %i.ajj
  %i.ajl = mul i64 %i.ajk, %i.afa
  %i.ajm = add i64 %i.ajl, %.5333523.i            ; 6 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 8
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !65
  %i.ajp = sub i64 %i.ajo, %i.aji
  %i.ajq = add i64 %i.ajp, 1                      ; 4 uses
  %.not371.i = icmp ult i64 %i.ajq, %.2313525.i
  br i1 %.not371.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph528.i
  %i.ajr = mul i64 %.2313525.i, %i.afa            ; 2 uses
  %.not374.i = icmp ne i64 %.2309526.i, 0
  %i.ajs = icmp eq i64 %.2325524.i, %i.ajm
  %or.cond.i176 = select i1 %.not374.i, i1 %i.ajs, i1 false
  br i1 %or.cond.i176, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ajt = getelementptr [8 x i8], ptr %6, i64 %.2309526.i
  %i.aju = getelementptr i8, ptr %i.ajt, i64 -8   ; 2 uses
  %i.ajv = load i64, ptr %i.aju, align 8, !tbaa !18
  %i.ajw = add i64 %i.ajv, %i.ajr
  store i64 %i.ajw, ptr %i.aju, align 8, !tbaa !18
  br label %.thread388.thread.i

bb.bl:                                            ; preds = %bb.bj
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2309526.i
  store i64 %i.ajm, ptr %i.ajx, align 8, !tbaa !18
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.2309526.i
  store i64 %i.ajr, ptr %i.ajy, align 8, !tbaa !18
  %i.ajz = add nuw i64 %.2309526.i, 1
  br label %.thread388.thread.i

bb.bm:                                            ; preds = %.lr.ph528.i
  %i.aka = mul i64 %i.ajq, %i.afa                 ; 3 uses
  %i.akb = sub nuw i64 %.2313525.i, %i.ajq        ; 3 uses
  %.not372.i = icmp ne i64 %.2309526.i, 0
  %i.akc = icmp eq i64 %.2325524.i, %i.ajm
  %or.cond381.i = select i1 %.not372.i, i1 %i.akc, i1 false
  br i1 %or.cond381.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.akd = getelementptr [8 x i8], ptr %6, i64 %.2309526.i
  %i.ake = getelementptr i8, ptr %i.akd, i64 -8   ; 2 uses
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !18
  %i.akg = add i64 %i.akf, %i.aka
  store i64 %i.akg, ptr %i.ake, align 8, !tbaa !18
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2309526.i
  store i64 %i.ajm, ptr %i.akh, align 8, !tbaa !18
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.2309526.i
  store i64 %i.aka, ptr %i.aki, align 8, !tbaa !18
  %i.akj = add i64 %.2309526.i, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.4.i179 = phi i64 [ %.2309526.i, %bb.bn ], [ %i.akj, %bb.bo ] ; 4 uses
  %.not373.i = icmp ult i64 %.4.i179, %1
  br i1 %.not373.i, label %bb.bq, label %.thread388.thread.i

bb.bq:                                            ; preds = %bb.bp
  %i.akk = add i64 %i.aka, %i.ajm                 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 24
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !64 ; 2 uses
  %.not370.i = icmp eq ptr %i.akm, null
  br i1 %.not370.i, label %.thread396.thread.i, label %.lr.ph528.i

.thread388.thread.i:                              ; preds = %bb.bp, %bb.bl, %bb.bk
  %.6414.i = phi i64 [ %.2309526.i, %bb.bk ], [ %i.ajz, %bb.bl ], [ %.4.i179, %bb.bp ] ; 3 uses
  %.4315411.i = phi i64 [ 0, %bb.bk ], [ 0, %bb.bl ], [ %i.akb, %bb.bp ] ; 3 uses
  %.5322407.i = phi i64 [ %.2313525.i, %bb.bk ], [ %.2313525.i, %bb.bl ], [ %i.ajq, %bb.bp ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 8
  %i.ako = load i64, ptr %.6342522.i, align 8, !tbaa !61
  %i.akp = add i64 %i.ako, %.5322407.i            ; 2 uses
  store i64 %i.akp, ptr %i.afm, align 8, !tbaa !18
  %i.akq = load i64, ptr %i.akn, align 8, !tbaa !65
  %.not377.i = icmp ugt i64 %i.akp, %i.akq
  br i1 %.not377.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread388.thread.i
  store ptr %.6342522.i, ptr %i.aeu, align 8, !tbaa !59
  %i.akr = load i64, ptr %.6342522.i, align 8, !tbaa !61
  %i.aks = add nsw i64 %i.akr, %.5322407.i
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.aet
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !18
  %i.akv = add nsw i64 %i.aks, %i.aku
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aet
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !18
  %i.aky = mul i64 %i.akv, %i.akx
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aet
  store i64 %i.aky, ptr %i.akz, align 8, !tbaa !18
  br label %.thread430.i

bb.bs:                                            ; preds = %.thread388.thread.i
  %i.ala = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 24
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !64 ; 3 uses
  %.not378.i = icmp eq ptr %i.alb, null
  br i1 %.not378.i, label %.thread396.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !61 ; 2 uses
  store i64 %i.alc, ptr %i.afm, align 8, !tbaa !18
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.aet
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !18
  %i.alf = add nsw i64 %i.ale, %i.alc
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aet
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !18
  %i.ali = mul i64 %i.alf, %i.alh
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aet
  store i64 %i.ali, ptr %i.alj, align 8, !tbaa !18
  store ptr %i.alb, ptr %i.aeu, align 8, !tbaa !59
  br label %.thread430.i

.thread396.thread.i:                              ; preds = %bb.bq, %bb.bs, %.preheader451.i
  %.2325461.i = phi i64 [ %.2325524.i, %bb.bs ], [ %.1324553.i, %.preheader451.i ], [ %i.akk, %bb.bq ]
  %.6415.i = phi i64 [ %.6414.i, %bb.bs ], [ %.1308555.i, %.preheader451.i ], [ %.4.i179, %bb.bq ] ; 5 uses
  %.4315412.i = phi i64 [ %.4315411.i, %bb.bs ], [ %.1312554.i, %.preheader451.i ], [ %i.akb, %bb.bq ] ; 5 uses
  br i1 %i.aje, label %.lr.ph536.i, label %.thread430.i

.lr.ph536.i:                                      ; preds = %.thread396.thread.i, %bb.bx
  %.2305534.i = phi i32 [ %i.amj, %bb.bx ], [ %i.ajd, %.thread396.thread.i ] ; 4 uses
  %i.alk = zext nneg i32 %.2305534.i to i64       ; 10 uses
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.alk
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !59 ; 3 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.alk ; 2 uses
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !18
  %i.alp = add i64 %i.alo, 1                      ; 2 uses
  store i64 %i.alp, ptr %i.aln, align 8, !tbaa !18
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alm, i64 8
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !65
  %.not379.i = icmp ugt i64 %i.alp, %i.alr
  br i1 %.not379.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph536.i
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.alk
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !18
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.alk ; 2 uses
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !18
  %i.alw = add i64 %i.alv, %i.alt
  store i64 %i.alw, ptr %i.alu, align 8, !tbaa !18
  br label %bb.by

bb.bv:                                            ; preds = %.lr.ph536.i
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alm, i64 24
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !64 ; 4 uses
  %.not380.i = icmp eq ptr %i.aly, null
  br i1 %.not380.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.aes, i64 %i.alk
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.alk
  store ptr %i.aly, ptr %i.alz, align 8, !tbaa !59
  %i.amb = load i64, ptr %i.aly, align 8, !tbaa !61 ; 2 uses
  store i64 %i.amb, ptr %i.ama, align 8, !tbaa !18
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.alk
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !18
  %i.ame = add nsw i64 %i.amd, %i.amb
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.alk
end_hunk_1
begin_hunk_2_@H5S__hyper_proj_int_build_proj:bb.a
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !65
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.vm ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !18
  %i.vx = xor i64 %i.vu, -1
  %.neg520 = add i64 %i.vw, %i.vx
  %.neg521 = mul i64 %.neg520, %i.vs
  %i.vy = load i64, ptr %i.gm, align 8, !tbaa !85
  %i.vz = add i64 %.neg521, %i.vy
  store i64 %i.vz, ptr %i.gm, align 8, !tbaa !85
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !64 ; 3 uses
  store ptr %i.wb, ptr %i.vn, align 8, !tbaa !59
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !61
  store i64 %i.wc, ptr %i.vv, align 8, !tbaa !18
  %i.wd = load i64, ptr %i.gm, align 8, !tbaa !85 ; 2 uses
  %.not522 = icmp eq i64 %i.wd, 0
  br i1 %.not522, label %._crit_edge, label %.preheader537, !llvm.loop !364

.preheader:                                       ; preds = %.lr.ph685, %bb.cl
  %i.we = phi i64 [ %i.xo, %bb.cl ], [ %i.qh, %.lr.ph685 ] ; 4 uses
  %i.wf = phi ptr [ %i.xn, %bb.cl ], [ %i.qe, %.lr.ph685 ]
  %i.wg = phi i32 [ %i.xb, %bb.cl ], [ %i.px, %.lr.ph685 ]
  %i.wh = phi i64 [ %i.xp, %bb.cl ], [ %.pre792, %.lr.ph685 ] ; 2 uses
  %i.wi = zext i32 %i.wg to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !65 ; 2 uses
  %i.wl = add i64 %i.wk, 1
  %i.wm = sub i64 %i.wl, %i.we
  %i.wn = icmp ult i64 %i.wh, %i.wm
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.wi ; 2 uses
  br i1 %i.wn, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %.preheader
  %i.wp = add i64 %i.wh, -1
  %i.wq = add i64 %i.wp, %i.we
  %i.wr = tail call fastcc i32 @H5S__hyper_append_span(ptr noundef %i.wo, i32 noundef 1, i64 noundef %i.we, i64 noundef %i.wq, ptr noundef null)
  %i.ws = icmp slt i32 %i.wr, 0
  br i1 %i.ws, label %bb.ci, label %._crit_edge.sink.split

bb.ci:                                            ; preds = %bb.ch
  %i.wt = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.wu = load i64, ptr @H5E_CANTAPPEND_g, align 8, !tbaa !18
  %i.wv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_proj_int_build_proj, i32 noundef 11376, i64 noundef %i.wt, i64 noundef %i.wu, ptr noundef nonnull @.str.98) #14 ; 0 uses
  br label %.thread

bb.cj:                                            ; preds = %.preheader
  %i.ww = tail call fastcc i32 @H5S__hyper_append_span(ptr noundef %i.wo, i32 noundef 1, i64 noundef %i.we, i64 noundef %i.wk, ptr noundef null)
  %i.wx = icmp slt i32 %i.ww, 0
  br i1 %i.wx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.wy = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.wz = load i64, ptr @H5E_CANTAPPEND_g, align 8, !tbaa !18
  %i.xa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_proj_int_build_proj, i32 noundef 11385, i64 noundef %i.wy, i64 noundef %i.wz, ptr noundef nonnull @.str.98) #14 ; 0 uses
  br label %.thread

bb.cl:                                            ; preds = %bb.cj
  %i.xb = load i32, ptr %i.gk, align 4, !tbaa !367 ; 2 uses
  %i.xc = zext i32 %i.xb to i64                   ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.xc ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !59 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !65
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.xc ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !18
  %i.xj = xor i64 %i.xg, -1
  %.neg518 = add i64 %i.xi, %i.xj
  %i.xk = load i64, ptr %i.gm, align 8, !tbaa !85
  %i.xl = add i64 %.neg518, %i.xk
  store i64 %i.xl, ptr %i.gm, align 8, !tbaa !85
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !64 ; 3 uses
  store ptr %i.xn, ptr %i.xd, align 8, !tbaa !59
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !61 ; 2 uses
  store i64 %i.xo, ptr %i.xh, align 8, !tbaa !18
  %i.xp = load i64, ptr %i.gm, align 8, !tbaa !85 ; 2 uses
  %.not519 = icmp eq i64 %i.xp, 0
  br i1 %.not519, label %._crit_edge, label %.preheader, !llvm.loop !365

.loopexit:                                        ; preds = %bb.bw, %bb.bm
  %i.xq = phi i64 [ %i.tt, %bb.bw ], [ %i.rd, %bb.bm ]
  %i.xr = phi i32 [ %i.tf, %bb.bw ], [ %i.qr, %bb.bm ]
  %.not516 = icmp eq i64 %i.xq, 0
  br i1 %.not516, label %._crit_edge, label %.lr.ph685, !llvm.loop !366

._crit_edge.sink.split:                           ; preds = %bb.ch, %bb.aw
  %i.xs = load i64, ptr %i.gm, align 8, !tbaa !85
  %i.xt = load i32, ptr %i.gk, align 4, !tbaa !367
  %i.xu = zext i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.xu ; 2 uses
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !18
  %i.xx = add i64 %i.xw, %i.xs
  store i64 %i.xx, ptr %i.xv, align 8, !tbaa !18
  store i64 0, ptr %i.gm, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bl, %.loopexit, %bb.cg, %bb.cl, %._crit_edge.sink.split, %bb.bi, %.loopexit539
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i32 0, ptr %i.xy, align 8, !tbaa !83
  br label %.thread

bb.cm:                                            ; preds = %bb.ah, %bb.aj, %bb.ar, %bb.at, %bb.bt, %bb.bv, %bb.cd, %bb.cf
  %.10 = phi ptr [ %i.ul, %bb.cf ], [ %i.im, %bb.ah ], [ %i.im, %bb.aj ], [ %i.ry, %bb.bt ], [ %i.ry, %bb.bv ], [ %i.kz, %bb.at ], [ %i.kz, %bb.ar ], [ %i.ul, %bb.cd ]
  %i.xz = tail call fastcc i32 @H5S__hyper_free_span_info(ptr noundef nonnull %.10)
  %i.ya = icmp slt i32 %i.xz, 0
  br i1 %i.ya, label %bb.cn, label %.thread

bb.cn:                                            ; preds = %bb.cm
  %i.yb = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.yc = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.yd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_proj_int_build_proj, i32 noundef 11407, i64 noundef %i.yb, i64 noundef %i.yc, ptr noundef nonnull @.str.13) #14 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.p, %bb.n, %bb.az, %bb.ax, %bb.ap, %bb.bj, %bb.bg, %bb.be, %bb.an, %bb.af, %._crit_edge, %bb.ck, %bb.ci, %bb.cb, %bb.bz, %bb.br, %bb.bp, %bb.ad, %bb.cm, %bb.cn, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.cm ], [ -1, %bb.cn ], [ -1, %bb.s ], [ -1, %bb.p ], [ -1, %bb.n ], [ -1, %bb.az ], [ -1, %bb.ax ], [ -1, %bb.ap ], [ -1, %bb.bj ], [ -1, %bb.bg ], [ -1, %bb.be ], [ -1, %bb.an ], [ -1, %bb.af ], [ 0, %._crit_edge ], [ -1, %bb.ck ], [ -1, %bb.ci ], [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %bb.br ], [ -1, %bb.bp ], [ -1, %bb.ad ]
  ret i32 %.2
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @H5S__hyper_spans_nelem_helper(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.lr.ph40, label %.lr.ph

.lr.ph40:                                         ; preds = %bb.d, %.lr.ph40
  %.039 = phi i64 [ %i.v, %.lr.ph40 ], [ 0, %bb.d ]
  %.02738 = phi ptr [ %i.x, %.lr.ph40 ], [ %i.m, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02738, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65
  %i.s = load i64, ptr %.02738, align 8, !tbaa !61
  %i.t = add i64 %.039, 1
  %i.u = add i64 %i.t, %i.r
  %i.v = sub i64 %i.u, %i.s                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02738, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %.not30 = icmp eq ptr %i.x, null
  br i1 %.not30, label %.loopexit, label %.lr.ph40, !llvm.loop !368

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.136 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %bb.d ]
  %.12835 = phi ptr [ %i.aj, %.lr.ph ], [ %i.m, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.12835, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !65
  %i.aa = load i64, ptr %.12835, align 8, !tbaa !61
  %i.ab = add i64 %i.z, 1
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.12835, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.af = tail call fastcc i64 @H5S__hyper_spans_nelem_helper(ptr noundef %i.ae, i64 noundef %1)
  %i.ag = mul i64 %i.af, %i.ac
  %i.ah = add i64 %i.ag, %.136                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.12835, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !369

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.2 = phi i64 [ %i.v, %.lr.ph40 ], [ %i.ah, %.lr.ph ] ; 2 uses
  store i64 %1, ptr %i.g, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2, ptr %i.ak, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.loopexit, %bb.a
  %.3 = phi i64 [ %i.k, %bb.c ], [ %.2, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"long", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"", !8, i64 0, !8, i64 1024, !8, i64 2048, !8, i64 2304}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!"p1 _ZTS21H5S_hyper_span_info_t", !20, i64 0}
!22 = !{!"", !9, i64 0, !19, i64 8, !9, i64 2568, !17, i64 2576, !21, i64 2584}
!23 = !{!22, !21, i64 2584}
!24 = !{!8, !8, i64 0}
!25 = !{!22, !9, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"p1 _ZTS5H5F_t", !20, i64 0}
!28 = !{!"H5O_shared_t", !9, i64 0, !27, i64 8, !9, i64 16, !8, i64 24}
!29 = !{!"p1 long", !20, i64 0}
!30 = !{!"H5S_extent_t", !28, i64 0, !9, i64 40, !9, i64 44, !17, i64 48, !9, i64 56, !29, i64 64, !29, i64 72}
!31 = !{!"", !20, i64 0, !12, i64 8, !8, i64 16, !17, i64 272, !8, i64 280}
!32 = !{!"H5S_t", !30, i64 0, !31, i64 80}
!33 = !{!32, !9, i64 56}
!34 = !{!22, !9, i64 2568}
!35 = !{!22, !17, i64 2576}
!36 = !{!32, !17, i64 352}
!37 = !{!32, !9, i64 40}
!38 = !{!29, !29, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!32, !29, i64 64}
!41 = !{!"H5S_hyper_dim_t", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!42 = !{!41, !17, i64 16}
!43 = !{!"branch_weights", i32 2002, i32 2000}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"p1 omnipotent char", !20, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!32, !20, i64 80}
!48 = !{!"", !9, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160}
!49 = !{!48, !9, i64 0}
!50 = !{!41, !17, i64 0}
!51 = !{!41, !17, i64 8}
!52 = !{!41, !17, i64 24}
!53 = !{!"p1 _ZTS5H5S_t", !20, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!32, !12, i64 88}
!58 = !{!"p1 _ZTS16H5S_hyper_span_t", !20, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"H5S_hyper_span_t", !17, i64 0, !17, i64 8, !21, i64 16, !58, i64 24}
!61 = !{!60, !17, i64 0}
!62 = !{!60, !21, i64 16}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = !{!60, !58, i64 24}
!65 = !{!60, !17, i64 8}
!66 = !{!21, !21, i64 0}
!67 = !{ptr @H5S__hyper_free_span}
!68 = !{!"p1 _ZTS20H5S_sel_iter_class_t", !20, i64 0}
!69 = !{!"H5S_sel_iter_t", !68, i64 0, !9, i64 8, !8, i64 16, !8, i64 272, !17, i64 528, !17, i64 536, !9, i64 544, !8, i64 552}
!70 = !{!69, !9, i64 8}
!71 = !{!69, !17, i64 536}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 1073205, i32 2146410443}
!74 = !{!"branch_weights", i32 0, i32 -2147483648}
!75 = !{!"branch_weights", i32 -2147483648, i32 0}
!76 = !{!"H5S_hyper_op_info_t", !17, i64 0, !8, i64 8}
!77 = !{!76, !17, i64 0}
!78 = !{!"", !8, i64 0, !8, i64 256, !8, i64 512, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !17, i64 784, !17, i64 792, !17, i64 800, !12, i64 808}
!79 = !{!78, !9, i64 772}
!80 = !{!78, !9, i64 776}
!81 = !{!78, !17, i64 800}
!82 = !{!78, !12, i64 808}
!83 = !{!78, !9, i64 768}
!84 = !{!78, !17, i64 784}
!85 = !{!78, !17, i64 792}
!86 = !{!69, !17, i64 528}
!87 = !{!20, !20, i64 0}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = distinct !{!101, !39}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39, !55, !56}
!112 = distinct !{!112, !39, !56, !55}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !39}
!117 = distinct !{!117, !39, !63}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !39}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !39}
!123 = distinct !{!123, !39}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !44}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = distinct !{!134, !44}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = distinct !{!144, !39}
!145 = distinct !{!145, !39}
!146 = distinct !{!146, !44}
!147 = distinct !{!147, !39}
!148 = distinct !{!148, !44}
!149 = distinct !{!149, !39}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !39}
!152 = distinct !{!152, !39, !55, !56}
!153 = distinct !{!153, !39, !56, !55}
!154 = !{!69, !9, i64 544}
!155 = !{!69, !68, i64 0}
end_hunk_2
