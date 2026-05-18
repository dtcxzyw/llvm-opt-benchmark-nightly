inline.NumInlined: 30
inline.NumDeleted: 5
begin_hunk_0_@Falign_noudp:bb.a
  %i.mx = sub nsw i64 %indvars.iv708.ph, %wide.trip.count711
  %i.my = icmp ugt i64 %i.mx, -4
  br i1 %i.my, label %.preheader495, label %scalar.ph

.preheader495:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge552..preheader495_crit_edge
  %.1410557.pre-phi = phi i32 [ %.pre828, %._crit_edge552..preheader495_crit_edge ], [ %i.lt, %middle.block ], [ %i.lt, %scalar.ph ], [ %i.lt, %scalar.ph.prol.loopexit ]
  %i.mz = icmp slt i32 %.1410557.pre-phi, %.0412
  br i1 %i.mz, label %.lr.ph559, label %._crit_edge560

.lr.ph559:                                        ; preds = %.preheader495
  %i.na = load ptr, ptr @Falign_noudp.naisekiNoWa, align 8, !tbaa !26 ; 9 uses
  %i.nb = add nsw i32 %i.i, %.0412                ; 7 uses
  %narrow = add nsw i32 %i.i, 1
  %i.nc = sext i32 %narrow to i64                 ; 5 uses
  %wide.trip.count717 = sext i32 %.0412 to i64    ; 7 uses
  %i.nd = xor i32 %i.i, -1
  %i.ne = sext i32 %i.nd to i64
  %i.nf = add nsw i64 %i.ne, %wide.trip.count717  ; 3 uses
  %min.iters.check929 = icmp ult i64 %i.nf, 38
  br i1 %min.iters.check929, label %scalar.ph928.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph559
  %narrow952 = sub nsw i32 -2, %i.i
  %i.ng = sext i32 %narrow952 to i64
  %i.nh = add nsw i64 %i.ng, %wide.trip.count717  ; 2 uses
  %i.ni = add i32 %.0412, -1                      ; 2 uses
  %i.nj = trunc i64 %i.nh to i32
  %i.nk = sub i32 %i.ni, %i.nj
  %i.nl = icmp sgt i32 %i.nk, %i.ni
  %i.nm = icmp ugt i64 %i.nh, 4294967295
  %i.nn = or i1 %i.nl, %i.nm
  br i1 %i.nn, label %scalar.ph928.preheader, label %vector.memcheck918

vector.memcheck918:                               ; preds = %vector.scevcheck
  %i.no = sext i32 %i.i to i64                    ; 2 uses
  %i.np = shl nsw i64 %i.no, 3
  %i.nq = getelementptr i8, ptr %.pre814.pre, i64 %i.np
  %scevgep919 = getelementptr i8, ptr %i.nq, i64 8
  %i.nr = shl nsw i64 %wide.trip.count717, 3
  %scevgep920 = getelementptr i8, ptr %.pre814.pre, i64 %i.nr
  %scevgep921 = getelementptr i8, ptr %i.na, i64 32
  %i.ns = add i32 %.0412, -1
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = add nsw i64 %i.no, %i.nt
  %i.nv = sub nsw i64 %i.nu, %wide.trip.count717
  %i.nw = shl nsw i64 %i.nv, 4
  %scevgep922 = getelementptr i8, ptr %scevgep921, i64 %i.nw
  %scevgep923 = getelementptr i8, ptr %i.na, i64 8
  %i.nx = shl nsw i64 %i.nt, 4
  %scevgep924 = getelementptr i8, ptr %scevgep923, i64 %i.nx
  %bound0925 = icmp ult ptr %scevgep919, %scevgep924
  %bound1926 = icmp ult ptr %scevgep922, %scevgep920
  %found.conflict927 = and i1 %bound0925, %bound1926
  br i1 %found.conflict927, label %scalar.ph928.preheader, label %vector.ph930

vector.ph930:                                     ; preds = %vector.memcheck918
  %n.vec932 = and i64 %i.nf, -4                   ; 3 uses
  %i.ny = add nsw i64 %n.vec932, %i.nc
  br label %vector.body933

vector.body933:                                   ; preds = %vector.body933, %vector.ph930
  %index934 = phi i64 [ 0, %vector.ph930 ], [ %index.next935, %vector.body933 ] ; 2 uses
  %i.nz = add i64 %index934, %i.nc                ; 2 uses
  %i.oa = trunc i64 %i.nz to i32                  ; 4 uses
  %.neg953 = xor i32 %i.oa, -1
  %i.ob = add i32 %i.oa, 2
  %i.oc = add i32 %i.oa, 3
  %i.od = sub i32 %i.nb, %i.oa
  %i.oe = add i32 %i.nb, %.neg953
  %i.of = sub i32 %i.nb, %i.ob
  %i.og = sub i32 %i.nb, %i.oc
  %i.oh = sext i32 %i.od to i64
  %i.oi = sext i32 %i.oe to i64
  %i.oj = sext i32 %i.of to i64
  %i.ok = sext i32 %i.og to i64
  %i.ol = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.oh
  %i.om = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.oi
  %i.on = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.oj
  %i.oo = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.ok
  %i.op = load double, ptr %i.ol, align 8, !tbaa !40, !alias.scope !192
  %i.oq = load double, ptr %i.om, align 8, !tbaa !40, !alias.scope !192
  %i.or = insertelement <2 x double> poison, double %i.op, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.oq, i64 1
  %i.ot = load double, ptr %i.on, align 8, !tbaa !40, !alias.scope !192
  %i.ou = load double, ptr %i.oo, align 8, !tbaa !40, !alias.scope !192
  %i.ov = insertelement <2 x double> poison, double %i.ot, i64 0
  %i.ow = insertelement <2 x double> %i.ov, double %i.ou, i64 1
  %i.ox = getelementptr inbounds [8 x i8], ptr %.pre814.pre, i64 %i.nz ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store <2 x double> %i.os, ptr %i.ox, align 8, !tbaa !34, !alias.scope !195, !noalias !192
  store <2 x double> %i.ow, ptr %i.oy, align 8, !tbaa !34, !alias.scope !195, !noalias !192
  %index.next935 = add nuw i64 %index934, 4       ; 2 uses
  %i.oz = icmp eq i64 %index.next935, %n.vec932
  br i1 %i.oz, label %middle.block936, label %vector.body933, !llvm.loop !197

middle.block936:                                  ; preds = %vector.body933
  %cmp.n937 = icmp eq i64 %i.nf, %n.vec932
  br i1 %cmp.n937, label %._crit_edge560, label %scalar.ph928.preheader

scalar.ph928.preheader:                           ; preds = %vector.memcheck918, %vector.scevcheck, %.lr.ph559, %middle.block936
  %indvars.iv713.ph = phi i64 [ %i.nc, %vector.memcheck918 ], [ %i.nc, %vector.scevcheck ], [ %i.nc, %.lr.ph559 ], [ %i.ny, %middle.block936 ] ; 6 uses
  %i.pa = sub nsw i64 %wide.trip.count717, %indvars.iv713.ph
  %xtraiter978 = and i64 %i.pa, 1
  %lcmp.mod979.not = icmp eq i64 %xtraiter978, 0
  br i1 %lcmp.mod979.not, label %scalar.ph928.prol.loopexit, label %scalar.ph928.prol

scalar.ph928.prol:                                ; preds = %scalar.ph928.preheader
  %i.pb = trunc nsw i64 %indvars.iv713.ph to i32
  %i.pc = sub i32 %i.nb, %i.pb
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.pd
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !40
  %i.pg = getelementptr inbounds [8 x i8], ptr %.pre814.pre, i64 %indvars.iv713.ph
  store double %i.pf, ptr %i.pg, align 8, !tbaa !34
  %indvars.iv.next714.prol = add nsw i64 %indvars.iv713.ph, 1
  br label %scalar.ph928.prol.loopexit

scalar.ph928.prol.loopexit:                       ; preds = %scalar.ph928.prol, %scalar.ph928.preheader
  %indvars.iv713.unr = phi i64 [ %indvars.iv713.ph, %scalar.ph928.preheader ], [ %indvars.iv.next714.prol, %scalar.ph928.prol ]
  %i.ph = add nsw i64 %wide.trip.count717, -1
  %i.pi = icmp eq i64 %indvars.iv713.ph, %i.ph
  br i1 %i.pi, label %._crit_edge560, label %scalar.ph928

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv708 = phi i64 [ %indvars.iv.next709.3, %scalar.ph ], [ %indvars.iv708.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.pj = sub nsw i64 %i.ls, %indvars.iv708
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.pj
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !40
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.pre814.pre, i64 %indvars.iv708
  store double %i.pl, ptr %i.pm, align 8, !tbaa !34
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %i.pn = sub nsw i64 %i.ls, %indvars.iv.next709
  %i.po = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.pn
  %i.pp = load double, ptr %i.po, align 8, !tbaa !40
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.pre814.pre, i64 %indvars.iv.next709
  store double %i.pp, ptr %i.pq, align 8, !tbaa !34
  %indvars.iv.next709.1 = add nuw nsw i64 %indvars.iv708, 2 ; 2 uses
  %i.pr = sub nsw i64 %i.ls, %indvars.iv.next709.1
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.pr
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !40
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %.pre814.pre, i64 %indvars.iv.next709.1
  store double %i.pt, ptr %i.pu, align 8, !tbaa !34
  %indvars.iv.next709.2 = add nuw nsw i64 %indvars.iv708, 3 ; 2 uses
  %i.pv = sub nsw i64 %i.ls, %indvars.iv.next709.2
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.pv
  %i.px = load double, ptr %i.pw, align 8, !tbaa !40
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %.pre814.pre, i64 %indvars.iv.next709.2
  store double %i.px, ptr %i.py, align 8, !tbaa !34
  %indvars.iv.next709.3 = add nuw nsw i64 %indvars.iv708, 4 ; 2 uses
  %exitcond712.not.3 = icmp eq i64 %indvars.iv.next709.3, %wide.trip.count711
  br i1 %exitcond712.not.3, label %.preheader495, label %scalar.ph, !llvm.loop !198

scalar.ph928:                                     ; preds = %scalar.ph928.prol.loopexit, %scalar.ph928
  %indvars.iv713 = phi i64 [ %indvars.iv.next714.1, %scalar.ph928 ], [ %indvars.iv713.unr, %scalar.ph928.prol.loopexit ] ; 4 uses
  %i.pz = trunc nsw i64 %indvars.iv713 to i32
  %i.qa = sub i32 %i.nb, %i.pz
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.qb
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !40
  %i.qe = getelementptr inbounds [8 x i8], ptr %.pre814.pre, i64 %indvars.iv713
  store double %i.qd, ptr %i.qe, align 8, !tbaa !34
  %indvars.iv.next714 = add nsw i64 %indvars.iv713, 1 ; 2 uses
  %i.qf = trunc nsw i64 %indvars.iv.next714 to i32
  %i.qg = sub i32 %i.nb, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [16 x i8], ptr %i.na, i64 %i.qh
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !40
  %i.qk = getelementptr inbounds [8 x i8], ptr %.pre814.pre, i64 %indvars.iv.next714
  store double %i.qj, ptr %i.qk, align 8, !tbaa !34
  %indvars.iv.next714.1 = add nsw i64 %indvars.iv713, 2 ; 2 uses
  %exitcond718.not.1 = icmp eq i64 %indvars.iv.next714.1, %wide.trip.count717
  br i1 %exitcond718.not.1, label %._crit_edge560, label %scalar.ph928, !llvm.loop !199

._crit_edge560:                                   ; preds = %scalar.ph928.prol.loopexit, %scalar.ph928, %middle.block936, %.preheader495
  %i.ql = load ptr, ptr @Falign_noudp.kouho, align 8, !tbaa !15
  %i.qm = tail call i32 @getKouho(ptr noundef %i.ql, i32 noundef 100, ptr noundef %.pre814.pre, i32 noundef %.0412) #14 ; 2 uses
  %.pr479 = load i32, ptr @kobetsubunkatsu, align 4, !tbaa !4
  %.not440 = icmp eq i32 %.pr479, 0
  br i1 %.not440, label %bb.ba, label %.thread874

.thread874:                                       ; preds = %._crit_edge560, %._crit_edge
  %i.qn = load ptr, ptr @Falign_noudp.kouho, align 8, !tbaa !15
  store i32 0, ptr %i.qn, align 4, !tbaa !4
  br label %.lr.ph567

bb.ba:                                            ; preds = %._crit_edge560
  %i.qo = icmp sgt i32 %i.qm, 0
  br i1 %i.qo, label %.lr.ph567, label %._crit_edge568.thread

.lr.ph567:                                        ; preds = %.thread874, %bb.ba
  %.0411876 = phi i32 [ 1, %.thread874 ], [ %i.qm, %bb.ba ]
  %i.qp = sub nsw i32 0, %i.c
  %wide.trip.count728 = zext nneg i32 %.0411876 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph567, %.loopexit494
  %indvars.iv725 = phi i64 [ 0, %.lr.ph567 ], [ %indvars.iv.next726, %.loopexit494 ] ; 2 uses
  %.0399565 = phi i32 [ 0, %.lr.ph567 ], [ %.2401, %.loopexit494 ] ; 5 uses
  %i.qq = load ptr, ptr @Falign_noudp.kouho, align 8, !tbaa !15
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv725
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !4  ; 8 uses
  %.not441 = icmp sgt i32 %i.qs, %i.qp
  %.not442 = icmp slt i32 %i.qs, %i.f
  %or.cond451 = and i1 %.not441, %.not442
  br i1 %or.cond451, label %bb.bc, label %.loopexit494

bb.bc:                                            ; preds = %bb.bb
  %i.qt = load ptr, ptr @Falign_noudp.tmpptr1, align 8, !tbaa !17
  %i.qu = load ptr, ptr @Falign_noudp.tmpptr2, align 8, !tbaa !17
  tail call void @zurasu2(i32 noundef %i.qs, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.qt, ptr noundef %i.qu) #14
  %i.qv = load ptr, ptr @Falign_noudp.tmpptr1, align 8, !tbaa !17
  %i.qw = load ptr, ptr @Falign_noudp.tmpptr2, align 8, !tbaa !17
  %i.qx = load ptr, ptr @Falign_noudp.segment, align 8, !tbaa !20
  %i.qy = sext i32 %.0399565 to i64               ; 3 uses
  %i.qz = getelementptr inbounds [48 x i8], ptr %i.qx, i64 %i.qy
  %i.ra = tail call i32 @alignableReagion(i32 noundef %4, i32 noundef %5, ptr noundef %i.qv, ptr noundef %i.qw, ptr noundef %2, ptr noundef %3, ptr noundef %i.qz) #14 ; 4 uses
  %i.rb = add nsw i32 %i.ra, %.0399565
  %i.rc = icmp sgt i32 %i.rb, 99997
  br i1 %i.rc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @ErrorExit(ptr noundef nonnull @.str.2) #14
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.rd = icmp eq i32 %i.ra, 0
  br i1 %i.rd, label %._crit_edge568, label %.preheader493

.preheader493:                                    ; preds = %bb.be
  %i.re = icmp sgt i32 %i.ra, 0
  br i1 %i.re, label %.lr.ph562, label %.loopexit494

.lr.ph562:                                        ; preds = %.preheader493
  %i.rf = add nsw i32 %i.ra, -1                   ; 2 uses
  %i.rg = icmp sgt i32 %i.qs, 0
  %i.rh = load ptr, ptr @Falign_noudp.segment, align 8 ; 2 uses
  %i.ri = load ptr, ptr @Falign_noudp.segment1, align 8 ; 2 uses
  %i.rj = load ptr, ptr @Falign_noudp.segment2, align 8 ; 2 uses
  br i1 %i.rg, label %.lr.ph562.split.us, label %.lr.ph562.split.preheader

.lr.ph562.split.preheader:                        ; preds = %.lr.ph562
  %8 = insertelement <3 x i32> poison, i32 %i.qs, i64 0
  %9 = shufflevector <3 x i32> %8, <3 x i32> poison, <3 x i32> zeroinitializer
  br label %.lr.ph562.split

.lr.ph562.split.us:                               ; preds = %.lr.ph562, %.lr.ph562.split.us
  %indvars.iv722 = phi i64 [ %indvars.iv.next723, %.lr.ph562.split.us ], [ %i.qy, %.lr.ph562 ] ; 4 uses
  %i.rk = phi i32 [ %i.sg, %.lr.ph562.split.us ], [ %i.rf, %.lr.ph562 ] ; 2 uses
  %i.rl = getelementptr inbounds [48 x i8], ptr %i.rh, i64 %indvars.iv722 ; 4 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !72 ; 2 uses
  %i.rn = getelementptr inbounds [48 x i8], ptr %i.ri, i64 %indvars.iv722 ; 6 uses
  store i32 %i.rm, ptr %i.rn, align 8, !tbaa !72
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !74 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !74
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !75 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 %i.rs, ptr %i.rt, align 8, !tbaa !75
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !76 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store double %i.rv, ptr %i.rw, align 8, !tbaa !76
  %i.rx = add nsw i32 %i.rm, %i.qs
  %i.ry = getelementptr inbounds [48 x i8], ptr %i.rj, i64 %indvars.iv722 ; 6 uses
  store i32 %i.rx, ptr %i.ry, align 8, !tbaa !72
  %i.rz = add nsw i32 %i.rp, %i.qs
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !74
  %i.sb = add nsw i32 %i.rs, %i.qs
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i32 %i.sb, ptr %i.sc, align 8, !tbaa !75
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store double %i.rv, ptr %i.sd, align 8, !tbaa !76
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  store ptr %i.ry, ptr %i.se, align 8, !tbaa !77
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  store ptr %i.rn, ptr %i.sf, align 8, !tbaa !77
  %indvars.iv.next723 = add nsw i64 %indvars.iv722, 1 ; 2 uses
  %i.sg = add nsw i32 %i.rk, -1
  %.not909 = icmp eq i32 %i.rk, 0
  br i1 %.not909, label %.loopexit494.loopexit, label %.lr.ph562.split.us, !llvm.loop !200

.lr.ph562.split:                                  ; preds = %.lr.ph562.split.preheader, %.lr.ph562.split
  %indvars.iv719 = phi i64 [ %indvars.iv.next720, %.lr.ph562.split ], [ %i.qy, %.lr.ph562.split.preheader ] ; 4 uses
  %i.sh = phi i32 [ %i.sv, %.lr.ph562.split ], [ %i.rf, %.lr.ph562.split.preheader ] ; 2 uses
  %i.si = getelementptr inbounds [48 x i8], ptr %i.rh, i64 %indvars.iv719 ; 4 uses
  %i.sj = getelementptr inbounds [48 x i8], ptr %i.ri, i64 %indvars.iv719 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %10 = load <3 x i32>, ptr %i.si, align 8, !tbaa !4
  %11 = sub nsw <3 x i32> %10, %9
  store <3 x i32> %11, ptr %i.sj, align 8, !tbaa !4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !76 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store double %i.sm, ptr %i.sn, align 8, !tbaa !76
  %i.so = getelementptr inbounds [48 x i8], ptr %i.rj, i64 %indvars.iv719 ; 5 uses
  %i.sp = load <2 x i32>, ptr %i.si, align 8, !tbaa !4
  store <2 x i32> %i.sp, ptr %i.so, align 8, !tbaa !4
  %i.sq = load i32, ptr %i.sk, align 8, !tbaa !75
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store i32 %i.sq, ptr %i.sr, align 8, !tbaa !75
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  store double %i.sm, ptr %i.ss, align 8, !tbaa !76
  %i.st = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  store ptr %i.so, ptr %i.st, align 8, !tbaa !77
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 32
  store ptr %i.sj, ptr %i.su, align 8, !tbaa !77
  %indvars.iv.next720 = add nsw i64 %indvars.iv719, 1 ; 2 uses
  %i.sv = add nsw i32 %i.sh, -1
  %.not908 = icmp eq i32 %i.sh, 0
  br i1 %.not908, label %.loopexit494.loopexit631, label %.lr.ph562.split, !llvm.loop !200

.loopexit494.loopexit:                            ; preds = %.lr.ph562.split.us
  %i.sw = trunc nsw i64 %indvars.iv.next723 to i32
  br label %.loopexit494

.loopexit494.loopexit631:                         ; preds = %.lr.ph562.split
  %i.sx = trunc nsw i64 %indvars.iv.next720 to i32
  br label %.loopexit494

.loopexit494:                                     ; preds = %.loopexit494.loopexit631, %.loopexit494.loopexit, %.preheader493, %bb.bb
  %.2401 = phi i32 [ %.0399565, %bb.bb ], [ %.0399565, %.preheader493 ], [ %i.sw, %.loopexit494.loopexit ], [ %i.sx, %.loopexit494.loopexit631 ] ; 2 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge568, label %bb.bb, !llvm.loop !201

._crit_edge568:                                   ; preds = %.loopexit494, %bb.be
  %.0399.lcssa.ph = phi i32 [ %.0399565, %bb.be ], [ %.2401, %.loopexit494 ] ; 2 uses
  %.pr877 = load i32, ptr @kobetsubunkatsu, align 4, !tbaa !4
  %.not443 = icmp eq i32 %.pr877, 0
  br i1 %.not443, label %._crit_edge568.thread, label %bb.bf

._crit_edge568.thread:                            ; preds = %bb.ba, %._crit_edge568
  %.0399.lcssa881 = phi i32 [ %.0399.lcssa.ph, %._crit_edge568 ], [ 0, %bb.ba ] ; 2 uses
  %i.sy = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.sz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sy, ptr noundef nonnull @.str.14, i32 noundef %.0399.lcssa881) #18 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge568.thread, %._crit_edge568
  %.0399.lcssa880 = phi i32 [ %.0399.lcssa881, %._crit_edge568.thread ], [ %.0399.lcssa.ph, %._crit_edge568 ] ; 13 uses
  %i.ta = icmp eq i32 %.0399.lcssa880, 0
  %i.tb = load i32, ptr @fftNoAnchStop, align 4
  %i.tc = icmp ne i32 %i.tb, 0
  %or.cond9 = select i1 %i.ta, i1 %i.tc, i1 false
  br i1 %or.cond9, label %.thread882, label %bb.bg

.thread882:                                       ; preds = %bb.bf
  tail call void @ErrorExit(ptr noundef nonnull @.str.4) #14
  %.pre815883 = load ptr, ptr @Falign_noudp.sortedseg1, align 8, !tbaa !22
  br label %._crit_edge581.thread.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.td = icmp sgt i32 %.0399.lcssa880, 0
  %.pre815 = load ptr, ptr @Falign_noudp.sortedseg1, align 8, !tbaa !22 ; 7 uses
  br i1 %i.td, label %.lr.ph574, label %._crit_edge581.thread.critedge

.lr.ph574:                                        ; preds = %bb.bg
  %.pre815940 = ptrtoaddr ptr %.pre815 to i64
  %i.te = load ptr, ptr @Falign_noudp.segment1, align 8, !tbaa !20 ; 5 uses
  %i.tf = load ptr, ptr @Falign_noudp.segment2, align 8, !tbaa !20 ; 5 uses
  %i.tg = load ptr, ptr @Falign_noudp.sortedseg2, align 8, !tbaa !22 ; 5 uses
  %wide.trip.count733 = zext nneg i32 %.0399.lcssa880 to i64 ; 11 uses
  %min.iters.check942 = icmp ult i32 %.0399.lcssa880, 6
  %i.th = ptrtoaddr ptr %i.tg to i64
  %i.ti = sub i64 %i.th, %.pre815940
  %diff.check = icmp ult i64 %i.ti, 32
  %or.cond955 = select i1 %min.iters.check942, i1 true, i1 %diff.check
  br i1 %or.cond955, label %scalar.ph941.preheader, label %vector.ph943

vector.ph943:                                     ; preds = %.lr.ph574
  %n.vec945 = and i64 %wide.trip.count733, 2147483644 ; 3 uses
  br label %vector.body946

vector.body946:                                   ; preds = %vector.body946, %vector.ph943
  %index947 = phi i64 [ 0, %vector.ph943 ], [ %index.next948, %vector.body946 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph943 ], [ %vec.ind.next, %vector.body946 ] ; 4 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %i.tj = getelementptr inbounds nuw [48 x i8], ptr %i.te, <2 x i64> %vec.ind
  %i.tk = getelementptr inbounds nuw [48 x i8], ptr %i.te, <2 x i64> %step.add
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.pre815, i64 %index947 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store <2 x ptr> %i.tj, ptr %i.tl, align 8, !tbaa !20
  store <2 x ptr> %i.tk, ptr %i.tm, align 8, !tbaa !20
  %i.tn = getelementptr inbounds nuw [48 x i8], ptr %i.tf, <2 x i64> %vec.ind
  %i.to = getelementptr inbounds nuw [48 x i8], ptr %i.tf, <2 x i64> %step.add
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %index947 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store <2 x ptr> %i.tn, ptr %i.tp, align 8, !tbaa !20
  store <2 x ptr> %i.to, ptr %i.tq, align 8, !tbaa !20
  %index.next948 = add nuw i64 %index947, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.tr = icmp eq i64 %index.next948, %n.vec945
  br i1 %i.tr, label %middle.block949, label %vector.body946, !llvm.loop !202

middle.block949:                                  ; preds = %vector.body946
  %cmp.n950 = icmp eq i64 %n.vec945, %wide.trip.count733
  br i1 %cmp.n950, label %._crit_edge575, label %scalar.ph941.preheader

scalar.ph941.preheader:                           ; preds = %.lr.ph574, %middle.block949
  %indvars.iv730.ph = phi i64 [ 0, %.lr.ph574 ], [ %n.vec945, %middle.block949 ] ; 7 uses
  %xtraiter981 = and i64 %wide.trip.count733, 1
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  br i1 %lcmp.mod982.not, label %scalar.ph941.prol.loopexit, label %scalar.ph941.prol

scalar.ph941.prol:                                ; preds = %scalar.ph941.preheader
  %i.ts = getelementptr inbounds nuw [48 x i8], ptr %i.te, i64 %indvars.iv730.ph
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %.pre815, i64 %indvars.iv730.ph
  store ptr %i.ts, ptr %i.tt, align 8, !tbaa !20
  %i.tu = getelementptr inbounds nuw [48 x i8], ptr %i.tf, i64 %indvars.iv730.ph
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv730.ph
  store ptr %i.tu, ptr %i.tv, align 8, !tbaa !20
  %indvars.iv.next731.prol = or disjoint i64 %indvars.iv730.ph, 1
  br label %scalar.ph941.prol.loopexit

scalar.ph941.prol.loopexit:                       ; preds = %scalar.ph941.prol, %scalar.ph941.preheader
  %indvars.iv730.unr = phi i64 [ %indvars.iv730.ph, %scalar.ph941.preheader ], [ %indvars.iv.next731.prol, %scalar.ph941.prol ]
  %i.tw = add nsw i64 %wide.trip.count733, -1
  %i.tx = icmp eq i64 %indvars.iv730.ph, %i.tw
  br i1 %i.tx, label %._crit_edge575, label %scalar.ph941

scalar.ph941:                                     ; preds = %scalar.ph941.prol.loopexit, %scalar.ph941
  %indvars.iv730 = phi i64 [ %indvars.iv.next731.1, %scalar.ph941 ], [ %indvars.iv730.unr, %scalar.ph941.prol.loopexit ] ; 6 uses
  %i.ty = getelementptr inbounds nuw [48 x i8], ptr %i.te, i64 %indvars.iv730
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.pre815, i64 %indvars.iv730
  store ptr %i.ty, ptr %i.tz, align 8, !tbaa !20
  %i.ua = getelementptr inbounds nuw [48 x i8], ptr %i.tf, i64 %indvars.iv730
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv730
  store ptr %i.ua, ptr %i.ub, align 8, !tbaa !20
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 4 uses
  %i.uc = getelementptr inbounds nuw [48 x i8], ptr %i.te, i64 %indvars.iv.next731
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.pre815, i64 %indvars.iv.next731
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !20
  %i.ue = getelementptr inbounds nuw [48 x i8], ptr %i.tf, i64 %indvars.iv.next731
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next731
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !20
  %indvars.iv.next731.1 = add nuw nsw i64 %indvars.iv730, 2 ; 2 uses
  %exitcond734.not.1 = icmp eq i64 %indvars.iv.next731.1, %wide.trip.count733
  br i1 %exitcond734.not.1, label %._crit_edge575, label %scalar.ph941, !llvm.loop !203

._crit_edge575:                                   ; preds = %scalar.ph941.prol.loopexit, %scalar.ph941, %middle.block949
  %i.ug = add nsw i32 %.0399.lcssa880, -1         ; 2 uses
  tail call fastcc void @mymergesort(i32 noundef 0, i32 noundef %i.ug, ptr noundef %.pre815)
  %i.uh = load ptr, ptr @Falign_noudp.sortedseg2, align 8, !tbaa !22
  tail call fastcc void @mymergesort(i32 noundef 0, i32 noundef %i.ug, ptr noundef %i.uh)
  %i.ui = load ptr, ptr @Falign_noudp.sortedseg1, align 8, !tbaa !22 ; 9 uses
  %xtraiter985 = and i64 %wide.trip.count733, 7   ; 3 uses
  %i.uj = icmp ult i32 %.0399.lcssa880, 8
  br i1 %i.uj, label %.epil.preheader984, label %._crit_edge575.new

._crit_edge575.new:                               ; preds = %._crit_edge575
  %unroll_iter989 = and i64 %wide.trip.count733, 2147483640
  br label %bb.bi

.lr.ph580.unr-lcssa:                              ; preds = %bb.bi
  %lcmp.mod987.not = icmp eq i64 %xtraiter985, 0
  br i1 %lcmp.mod987.not, label %.lr.ph580, label %.epil.preheader984

.epil.preheader984:                               ; preds = %.lr.ph580.unr-lcssa, %._crit_edge575
  %indvars.iv735.epil.init = phi i64 [ 0, %._crit_edge575 ], [ %indvars.iv.next736.7, %.lr.ph580.unr-lcssa ]
  %lcmp.mod988 = icmp ne i64 %xtraiter985, 0
  tail call void @llvm.assume(i1 %lcmp.mod988)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader984
  %indvars.iv735.epil = phi i64 [ %indvars.iv735.epil.init, %.epil.preheader984 ], [ %indvars.iv.next736.epil, %bb.bh ] ; 3 uses
  %epil.iter986 = phi i64 [ 0, %.epil.preheader984 ], [ %epil.iter986.next, %bb.bh ]
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv735.epil
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !20
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 40
  %i.un = trunc nuw nsw i64 %indvars.iv735.epil to i32
  store i32 %i.un, ptr %i.um, align 8, !tbaa !82
  %indvars.iv.next736.epil = add nuw nsw i64 %indvars.iv735.epil, 1
  %epil.iter986.next = add i64 %epil.iter986, 1   ; 2 uses
  %epil.iter986.cmp.not = icmp eq i64 %epil.iter986.next, %xtraiter985
  br i1 %epil.iter986.cmp.not, label %.lr.ph580, label %bb.bh, !llvm.loop !204

.lr.ph580:                                        ; preds = %bb.bh, %.lr.ph580.unr-lcssa
  %i.uo = load ptr, ptr @Falign_noudp.sortedseg2, align 8, !tbaa !22 ; 9 uses
  %xtraiter992 = and i64 %wide.trip.count733, 7   ; 3 uses
  %i.up = icmp ult i32 %.0399.lcssa880, 8
  br i1 %i.up, label %.epil.preheader991, label %.lr.ph580.new

.lr.ph580.new:                                    ; preds = %.lr.ph580
  %unroll_iter996 = and i64 %wide.trip.count733, 2147483640
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bi, %._crit_edge575.new
  %indvars.iv735 = phi i64 [ 0, %._crit_edge575.new ], [ %indvars.iv.next736.7, %bb.bi ] ; 10 uses
  %niter990 = phi i64 [ 0, %._crit_edge575.new ], [ %niter990.next.7, %bb.bi ]
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv735
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !20
end_hunk_0
