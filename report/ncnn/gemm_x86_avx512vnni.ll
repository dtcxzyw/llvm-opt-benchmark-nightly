inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn27pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii:bb.a
  br i1 %i.pm, label %vec.epilog.middle.block420, label %vec.epilog.vector.body408, !llvm.loop !47

vec.epilog.middle.block420:                       ; preds = %vec.epilog.vector.body408
  %i.pn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.pl) ; 2 uses
  %ind.escape421 = getelementptr i8, ptr %i.pb, i64 -4
  br i1 %cmp.n422, label %._crit_edge158.i.us, label %.lr.ph157.i.us.preheader

.lr.ph157.i.us.preheader:                         ; preds = %vector.memcheck339, %iter.check402, %vec.epilog.iter.check404, %vec.epilog.middle.block420
  %.0155.i.us.ph = phi i32 [ 0, %iter.check402 ], [ 0, %vector.memcheck339 ], [ %i.oz, %vec.epilog.iter.check404 ], [ %i.pn, %vec.epilog.middle.block420 ]
  %.0237154.i.us.ph = phi i32 [ 0, %iter.check402 ], [ 0, %vector.memcheck339 ], [ %i.mo, %vec.epilog.iter.check404 ], [ %i.mr, %vec.epilog.middle.block420 ]
  %.0238153.i.us.ph = phi ptr [ %i.ni, %iter.check402 ], [ %i.ni, %vector.memcheck339 ], [ %i.nm, %vec.epilog.iter.check404 ], [ %i.pa, %vec.epilog.middle.block420 ]
  %.21152.i.us.ph = phi ptr [ %.20171.i.us, %iter.check402 ], [ %.20171.i.us, %vector.memcheck339 ], [ %i.nn, %vec.epilog.iter.check404 ], [ %i.pb, %vec.epilog.middle.block420 ]
  br label %.lr.ph157.i.us

.lr.ph157.i.us:                                   ; preds = %.lr.ph157.i.us.preheader, %.lr.ph157.i.us
  %.0155.i.us = phi i32 [ %i.qf, %.lr.ph157.i.us ], [ %.0155.i.us.ph, %.lr.ph157.i.us.preheader ]
  %.0237154.i.us = phi i32 [ %i.qi, %.lr.ph157.i.us ], [ %.0237154.i.us.ph, %.lr.ph157.i.us.preheader ]
  %.0238153.i.us = phi ptr [ %i.qh, %.lr.ph157.i.us ], [ %.0238153.i.us.ph, %.lr.ph157.i.us.preheader ] ; 5 uses
  %.21152.i.us = phi ptr [ %i.qg, %.lr.ph157.i.us ], [ %.21152.i.us.ph, %.lr.ph157.i.us.preheader ] ; 6 uses
  %i.po = load i8, ptr %.0238153.i.us, align 1, !tbaa !17 ; 2 uses
  store i8 %i.po, ptr %.21152.i.us, align 1, !tbaa !17
  %i.pp = getelementptr inbounds nuw i8, ptr %.0238153.i.us, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !17  ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.21152.i.us, i64 1
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !17
  %i.ps = getelementptr inbounds nuw i8, ptr %.0238153.i.us, i64 2
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !17  ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.21152.i.us, i64 2
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !17
  %i.pv = getelementptr inbounds nuw i8, ptr %.0238153.i.us, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !17  ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.21152.i.us, i64 3
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !17
  %i.py = sext i8 %i.po to i32
  %i.pz = add nsw i32 %.0155.i.us, %i.py
  %i.qa = sext i8 %i.pq to i32
  %i.qb = add nsw i32 %i.pz, %i.qa
  %i.qc = sext i8 %i.pt to i32
  %i.qd = add nsw i32 %i.qb, %i.qc
  %i.qe = sext i8 %i.pw to i32
  %i.qf = add nsw i32 %i.qd, %i.qe                ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.21152.i.us, i64 4 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0238153.i.us, i64 4 ; 2 uses
  %i.qi = add nuw nsw i32 %.0237154.i.us, 4       ; 2 uses
  %i.qj = or disjoint i32 %i.qi, 3
  %i.qk = icmp slt i32 %i.qj, %5
  br i1 %i.qk, label %.lr.ph157.i.us, label %._crit_edge158.i.us, !llvm.loop !48

._crit_edge158.i.us:                              ; preds = %.lr.ph157.i.us, %vec.epilog.middle.block420, %middle.block391
  %.21152.i.us.lcssa = phi ptr [ %ind.escape421, %vec.epilog.middle.block420 ], [ %ind.escape395, %middle.block391 ], [ %.21152.i.us, %.lr.ph157.i.us ]
  %.lcssa119.a = phi i32 [ %i.pn, %vec.epilog.middle.block420 ], [ %i.oz, %middle.block391 ], [ %i.qf, %.lr.ph157.i.us ]
  %.lcssa118 = phi ptr [ %i.pb, %vec.epilog.middle.block420 ], [ %i.nn, %middle.block391 ], [ %i.qg, %.lr.ph157.i.us ]
  %.lcssa = phi ptr [ %i.pa, %vec.epilog.middle.block420 ], [ %i.nm, %middle.block391 ], [ %i.qh, %.lr.ph157.i.us ] ; 6 uses
  %i.ql = mul nsw i32 %.lcssa119.a, 127
  store i32 %i.ql, ptr %.lcssa118, align 4, !tbaa !49
  %i.qm = getelementptr inbounds nuw i8, ptr %.21152.i.us.lcssa, i64 8 ; 7 uses
  br i1 %.not, label %._crit_edge168.i.us, label %iter.check322

iter.check322:                                    ; preds = %._crit_edge158.i.us
  br i1 %min.iters.check302, label %.lr.ph167.i.us.preheader, label %vector.memcheck299

vector.memcheck299:                               ; preds = %iter.check322
  %i.qn = mul i64 %i.my, %i.nf
  %i.qo = mul i64 %i.qn, %i.nd
  %i.qp = add i64 %i.qo, %i.lx
  %i.qq = add i64 %i.qp, %i.nb
  %i.qr = sub i64 %.20171.i.us300, %i.qq
  %i.qs = add i64 %i.qr, 3
  %diff.check = icmp ult i64 %i.qs, 255
  br i1 %diff.check, label %.lr.ph167.i.us.preheader, label %vector.main.loop.iter.check303

vector.main.loop.iter.check303:                   ; preds = %vector.memcheck299
  br i1 %min.iters.check304, label %vec.epilog.ph326, label %vector.ph305

vector.ph305:                                     ; preds = %vector.main.loop.iter.check303
  %i.qt = getelementptr i8, ptr %.lcssa, i64 %n.vec306
  %i.qu = getelementptr i8, ptr %i.qm, i64 %n.vec306 ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next315, %vector.body307 ] ; 3 uses
  %next.gep309 = getelementptr i8, ptr %.lcssa, i64 %index308 ; 4 uses
  %next.gep310 = getelementptr i8, ptr %i.qm, i64 %index308 ; 4 uses
  %i.qv = getelementptr i8, ptr %next.gep309, i64 64
  %i.qw = getelementptr i8, ptr %next.gep309, i64 128
  %i.qx = getelementptr i8, ptr %next.gep309, i64 192
  %wide.load311 = load <64 x i8>, ptr %next.gep309, align 1, !tbaa !17
  %wide.load312 = load <64 x i8>, ptr %i.qv, align 1, !tbaa !17
  %wide.load313 = load <64 x i8>, ptr %i.qw, align 1, !tbaa !17
  %wide.load314 = load <64 x i8>, ptr %i.qx, align 1, !tbaa !17
  %i.qy = getelementptr i8, ptr %next.gep310, i64 64
  %i.qz = getelementptr i8, ptr %next.gep310, i64 128
  %i.ra = getelementptr i8, ptr %next.gep310, i64 192
  store <64 x i8> %wide.load311, ptr %next.gep310, align 1, !tbaa !17
  store <64 x i8> %wide.load312, ptr %i.qy, align 1, !tbaa !17
  store <64 x i8> %wide.load313, ptr %i.qz, align 1, !tbaa !17
  store <64 x i8> %wide.load314, ptr %i.ra, align 1, !tbaa !17
  %index.next315 = add nuw i64 %index308, 256     ; 2 uses
  %i.rb = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.rb, label %middle.block316, label %vector.body307, !llvm.loop !50

middle.block316:                                  ; preds = %vector.body307
  br i1 %cmp.n317, label %._crit_edge168.i.us, label %vec.epilog.iter.check324

vec.epilog.iter.check324:                         ; preds = %middle.block316
  br i1 %min.epilog.iters.check325, label %.lr.ph167.i.us.preheader, label %vec.epilog.ph326, !prof !51

vec.epilog.ph326:                                 ; preds = %vector.main.loop.iter.check303, %vec.epilog.iter.check324
  %vec.epilog.resume.val318 = phi i64 [ %n.vec306, %vec.epilog.iter.check324 ], [ 0, %vector.main.loop.iter.check303 ]
  %i.rc = getelementptr i8, ptr %.lcssa, i64 %n.vec327
  %i.rd = getelementptr i8, ptr %i.qm, i64 %n.vec327 ; 2 uses
  br label %vec.epilog.vector.body328

vec.epilog.vector.body328:                        ; preds = %vec.epilog.vector.body328, %vec.epilog.ph326
  %index329 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph326 ], [ %index.next333, %vec.epilog.vector.body328 ] ; 3 uses
  %next.gep330 = getelementptr i8, ptr %.lcssa, i64 %index329
  %next.gep331 = getelementptr i8, ptr %i.qm, i64 %index329
  %wide.load332 = load <16 x i8>, ptr %next.gep330, align 1, !tbaa !17
  store <16 x i8> %wide.load332, ptr %next.gep331, align 1, !tbaa !17
  %index.next333 = add nuw i64 %index329, 16      ; 2 uses
  %i.re = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.re, label %vec.epilog.middle.block334, label %vec.epilog.vector.body328, !llvm.loop !52

vec.epilog.middle.block334:                       ; preds = %vec.epilog.vector.body328
  br i1 %cmp.n335, label %._crit_edge168.i.us, label %.lr.ph167.i.us.preheader

.lr.ph167.i.us.preheader:                         ; preds = %vector.memcheck299, %iter.check322, %vec.epilog.iter.check324, %vec.epilog.middle.block334
  %.1165.i.us.ph = phi i32 [ %i.lz, %iter.check322 ], [ %i.lz, %vector.memcheck299 ], [ %i.mv, %vec.epilog.iter.check324 ], [ %i.mx, %vec.epilog.middle.block334 ] ; 4 uses
  %.1239164.i.us.ph = phi ptr [ %.lcssa, %iter.check322 ], [ %.lcssa, %vector.memcheck299 ], [ %i.qt, %vec.epilog.iter.check324 ], [ %i.rc, %vec.epilog.middle.block334 ] ; 2 uses
  %.23163.i.us.ph = phi ptr [ %i.qm, %iter.check322 ], [ %i.qm, %vector.memcheck299 ], [ %i.qu, %vec.epilog.iter.check324 ], [ %i.rd, %vec.epilog.middle.block334 ] ; 2 uses
  %i.rf = sub i32 %5, %.1165.i.us.ph
  %xtraiter522 = and i32 %i.rf, 7                 ; 2 uses
  %lcmp.mod523.not = icmp eq i32 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %.lr.ph167.i.us.prol.loopexit, label %.lr.ph167.i.us.prol

.lr.ph167.i.us.prol:                              ; preds = %.lr.ph167.i.us.preheader, %.lr.ph167.i.us.prol
  %.1165.i.us.prol = phi i32 [ %i.rj, %.lr.ph167.i.us.prol ], [ %.1165.i.us.ph, %.lr.ph167.i.us.preheader ]
  %.1239164.i.us.prol = phi ptr [ %i.ri, %.lr.ph167.i.us.prol ], [ %.1239164.i.us.ph, %.lr.ph167.i.us.preheader ] ; 2 uses
  %.23163.i.us.prol = phi ptr [ %i.rh, %.lr.ph167.i.us.prol ], [ %.23163.i.us.ph, %.lr.ph167.i.us.preheader ] ; 2 uses
  %prol.iter524 = phi i32 [ %prol.iter524.next, %.lr.ph167.i.us.prol ], [ 0, %.lr.ph167.i.us.preheader ]
  %i.rg = load i8, ptr %.1239164.i.us.prol, align 1, !tbaa !17
  store i8 %i.rg, ptr %.23163.i.us.prol, align 1, !tbaa !17
  %i.rh = getelementptr inbounds nuw i8, ptr %.23163.i.us.prol, i64 1 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1239164.i.us.prol, i64 1 ; 2 uses
  %i.rj = add nuw nsw i32 %.1165.i.us.prol, 1     ; 2 uses
  %prol.iter524.next = add i32 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i32 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %.lr.ph167.i.us.prol.loopexit, label %.lr.ph167.i.us.prol, !llvm.loop !53

.lr.ph167.i.us.prol.loopexit:                     ; preds = %.lr.ph167.i.us.prol, %.lr.ph167.i.us.preheader
  %.lcssa438.unr = phi ptr [ poison, %.lr.ph167.i.us.preheader ], [ %i.rh, %.lr.ph167.i.us.prol ]
  %.1165.i.us.unr = phi i32 [ %.1165.i.us.ph, %.lr.ph167.i.us.preheader ], [ %i.rj, %.lr.ph167.i.us.prol ]
  %.1239164.i.us.unr = phi ptr [ %.1239164.i.us.ph, %.lr.ph167.i.us.preheader ], [ %i.ri, %.lr.ph167.i.us.prol ]
  %.23163.i.us.unr = phi ptr [ %.23163.i.us.ph, %.lr.ph167.i.us.preheader ], [ %i.rh, %.lr.ph167.i.us.prol ]
  %i.rk = sub i32 %.1165.i.us.ph, %5
  %i.rl = icmp ugt i32 %i.rk, -8
  br i1 %i.rl, label %._crit_edge168.i.us, label %.lr.ph167.i.us

.lr.ph167.i.us:                                   ; preds = %.lr.ph167.i.us.prol.loopexit, %.lr.ph167.i.us
  %.1165.i.us = phi i32 [ %i.sk, %.lr.ph167.i.us ], [ %.1165.i.us.unr, %.lr.ph167.i.us.prol.loopexit ]
  %.1239164.i.us = phi ptr [ %i.sj, %.lr.ph167.i.us ], [ %.1239164.i.us.unr, %.lr.ph167.i.us.prol.loopexit ] ; 9 uses
  %.23163.i.us = phi ptr [ %i.si, %.lr.ph167.i.us ], [ %.23163.i.us.unr, %.lr.ph167.i.us.prol.loopexit ] ; 9 uses
  %i.rm = load i8, ptr %.1239164.i.us, align 1, !tbaa !17
  store i8 %i.rm, ptr %.23163.i.us, align 1, !tbaa !17
  %i.rn = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 1
  %i.ro = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !17
  store i8 %i.rp, ptr %i.rn, align 1, !tbaa !17
  %i.rq = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 2
  %i.rr = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 2
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !17
  store i8 %i.rs, ptr %i.rq, align 1, !tbaa !17
  %i.rt = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 3
  %i.ru = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 3
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !17
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !17
  %i.rw = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 4
  %i.rx = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 4
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !17
  store i8 %i.ry, ptr %i.rw, align 1, !tbaa !17
  %i.rz = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 5
  %i.sa = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 5
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !17
  store i8 %i.sb, ptr %i.rz, align 1, !tbaa !17
  %i.sc = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 6
  %i.sd = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 6
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !17
  store i8 %i.se, ptr %i.sc, align 1, !tbaa !17
  %i.sf = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 7
  %i.sg = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 7
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !17
  store i8 %i.sh, ptr %i.sf, align 1, !tbaa !17
  %i.si = getelementptr inbounds nuw i8, ptr %.23163.i.us, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.1239164.i.us, i64 8
  %i.sk = add nuw nsw i32 %.1165.i.us, 8          ; 2 uses
  %exitcond231.not.i.us.7 = icmp eq i32 %i.sk, %5
  br i1 %exitcond231.not.i.us.7, label %._crit_edge168.i.us, label %.lr.ph167.i.us, !llvm.loop !54

._crit_edge168.i.us:                              ; preds = %.lr.ph167.i.us.prol.loopexit, %.lr.ph167.i.us, %middle.block316, %vec.epilog.middle.block334, %._crit_edge158.i.us
  %.23.lcssa.i.us = phi ptr [ %i.qm, %._crit_edge158.i.us ], [ %i.rd, %vec.epilog.middle.block334 ], [ %i.qu, %middle.block316 ], [ %.lcssa438.unr, %.lr.ph167.i.us.prol.loopexit ], [ %i.si, %.lr.ph167.i.us ]
  %indvars.iv.next233.i.us = add nsw i64 %indvars.iv232.i.us, 1 ; 2 uses
  %exitcond235.not.i.us = icmp eq i64 %indvars.iv.next233.i.us, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond235.not.i.us, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check402, !llvm.loop !55

.lr.ph172.i.split:                                ; preds = %.lr.ph172.i
  %i.sl = icmp sgt i32 %5, 0
  br i1 %i.sl, label %._crit_edge158.i.preheader, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

._crit_edge158.i.preheader:                       ; preds = %.lr.ph172.i.split
  %exitcond231.not.i = icmp eq i32 %5, 1
  %exitcond231.not.i.1 = icmp eq i32 %5, 2
  br label %._crit_edge158.i

bb.e:                                             ; preds = %._crit_edge145.i, %.lr.ph149.i
  %indvars.iv228.i = phi i64 [ %i.hm, %.lr.ph149.i ], [ %indvars.iv.next229.i, %._crit_edge145.i ] ; 2 uses
  %.15148.i = phi ptr [ %.10.lcssa.i, %.lr.ph149.i ], [ %.19.lcssa.i, %._crit_edge145.i ] ; 9 uses
  %i.sm = add i64 %indvars.iv228.i, %i.ho         ; 2 uses
  %i.sn = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.so = load i32, ptr %i.hh, align 4, !tbaa !15
  %i.sp = sext i32 %i.so to i64
  %i.sq = load i64, ptr %i.hi, align 8, !tbaa !16
  %i.sr = mul i64 %i.sq, %i.sp                    ; 2 uses
  %i.ss = mul i64 %i.sr, %i.sm                    ; 2 uses
  %i.st = getelementptr i8, ptr %i.sn, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 %i.hj  ; 7 uses
  %i.sv = add nsw i64 %i.sm, 1
  %i.sw = mul i64 %i.sr, %i.sv                    ; 2 uses
  %i.sx = getelementptr i8, ptr %i.sn, i64 %i.sw
  %i.sy = getelementptr i8, ptr %i.sx, i64 %i.hj  ; 7 uses
  br i1 %i.hk, label %.lr.ph122.i.preheader, label %._crit_edge123.i

.lr.ph122.i.preheader:                            ; preds = %bb.e
  br i1 %min.iters.check255, label %.lr.ph122.i.preheader441, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph122.i.preheader
  %i.sz = getelementptr i8, ptr %.15148.i, i64 %i.hu
  %scevgep244 = getelementptr i8, ptr %i.sz, i64 8 ; 2 uses
  %i.ta = getelementptr i8, ptr %i.sn, i64 %i.hv
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.hj
  %scevgep245 = getelementptr i8, ptr %i.tb, i64 4 ; 2 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.sw
  %scevgep247 = getelementptr i8, ptr %scevgep245, i64 %i.ss
  %bound0248 = icmp ult ptr %.15148.i, %scevgep246
  %bound1249 = icmp ult ptr %i.sy, %scevgep244
  %found.conflict250 = and i1 %bound0248, %bound1249
  %bound0251 = icmp ult ptr %.15148.i, %scevgep247
  %bound1252 = icmp ult ptr %i.su, %scevgep244
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %found.conflict250, %found.conflict253
  br i1 %conflict.rdx254, label %.lr.ph122.i.preheader441, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck243
  %i.tc = getelementptr i8, ptr %i.sy, i64 %i.ib  ; 2 uses
  %i.td = getelementptr i8, ptr %i.su, i64 %i.ib  ; 2 uses
  %i.te = getelementptr i8, ptr %.15148.i, i64 %i.ic ; 3 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next291, %vector.body258 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.un, %vector.body258 ]
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.uo, %vector.body258 ]
  %vec.phi261 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.tx, %vector.body258 ]
  %vec.phi262 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.ty, %vector.body258 ]
  %i.tf = shl i64 %index259, 2                    ; 3 uses
  %i.tg = or disjoint i64 %i.tf, 16               ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.sy, i64 %i.tf
  %next.gep264 = getelementptr i8, ptr %i.sy, i64 %i.tg
  %next.gep265 = getelementptr i8, ptr %i.su, i64 %i.tf
  %next.gep266 = getelementptr i8, ptr %i.su, i64 %i.tg
  %i.th = shl i64 %index259, 3                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.15148.i, i64 %i.th
  %i.ti = getelementptr i8, ptr %.15148.i, i64 %i.th
  %next.gep268 = getelementptr i8, ptr %i.ti, i64 32
  %wide.vec269 = load <16 x i8>, ptr %next.gep265, align 1, !tbaa !17, !alias.scope !56 ; 5 uses
  %strided.vec270 = shufflevector <16 x i8> %wide.vec269, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec271 = shufflevector <16 x i8> %wide.vec269, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec272 = shufflevector <16 x i8> %wide.vec269, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec273 = shufflevector <16 x i8> %wide.vec269, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec274 = load <16 x i8>, ptr %next.gep266, align 1, !tbaa !17, !alias.scope !56 ; 5 uses
  %strided.vec275 = shufflevector <16 x i8> %wide.vec274, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec276 = shufflevector <16 x i8> %wide.vec274, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec277 = shufflevector <16 x i8> %wide.vec274, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec278 = shufflevector <16 x i8> %wide.vec274, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec279 = load <16 x i8>, ptr %next.gep263, align 1, !tbaa !17, !alias.scope !59 ; 5 uses
  %strided.vec280 = shufflevector <16 x i8> %wide.vec279, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec281 = shufflevector <16 x i8> %wide.vec279, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec282 = shufflevector <16 x i8> %wide.vec279, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec283 = shufflevector <16 x i8> %wide.vec279, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec284 = load <16 x i8>, ptr %next.gep264, align 1, !tbaa !17, !alias.scope !59 ; 5 uses
  %strided.vec285 = shufflevector <16 x i8> %wide.vec284, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec286 = shufflevector <16 x i8> %wide.vec284, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec287 = shufflevector <16 x i8> %wide.vec284, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec288 = shufflevector <16 x i8> %wide.vec284, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec289 = shufflevector <16 x i8> %wide.vec269, <16 x i8> %wide.vec279, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x i8> %interleaved.vec289, ptr %next.gep267, align 1, !tbaa !17, !alias.scope !61, !noalias !63
  %interleaved.vec290 = shufflevector <16 x i8> %wide.vec274, <16 x i8> %wide.vec284, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x i8> %interleaved.vec290, ptr %next.gep268, align 1, !tbaa !17, !alias.scope !61, !noalias !63
  %i.tj = sext <4 x i8> %strided.vec270 to <4 x i32>
  %i.tk = sext <4 x i8> %strided.vec275 to <4 x i32>
  %i.tl = add <4 x i32> %vec.phi261, %i.tj
  %i.tm = add <4 x i32> %vec.phi262, %i.tk
  %i.tn = sext <4 x i8> %strided.vec271 to <4 x i32>
  %i.to = sext <4 x i8> %strided.vec276 to <4 x i32>
  %i.tp = add <4 x i32> %i.tl, %i.tn
  %i.tq = add <4 x i32> %i.tm, %i.to
  %i.tr = sext <4 x i8> %strided.vec272 to <4 x i32>
  %i.ts = sext <4 x i8> %strided.vec277 to <4 x i32>
  %i.tt = add <4 x i32> %i.tp, %i.tr
  %i.tu = add <4 x i32> %i.tq, %i.ts
  %i.tv = sext <4 x i8> %strided.vec273 to <4 x i32>
  %i.tw = sext <4 x i8> %strided.vec278 to <4 x i32>
  %i.tx = add <4 x i32> %i.tt, %i.tv              ; 2 uses
  %i.ty = add <4 x i32> %i.tu, %i.tw              ; 2 uses
  %i.tz = sext <4 x i8> %strided.vec280 to <4 x i32>
  %i.ua = sext <4 x i8> %strided.vec285 to <4 x i32>
  %i.ub = add <4 x i32> %vec.phi, %i.tz
  %i.uc = add <4 x i32> %vec.phi260, %i.ua
  %i.ud = sext <4 x i8> %strided.vec281 to <4 x i32>
  %i.ue = sext <4 x i8> %strided.vec286 to <4 x i32>
  %i.uf = add <4 x i32> %i.ub, %i.ud
  %i.ug = add <4 x i32> %i.uc, %i.ue
  %i.uh = sext <4 x i8> %strided.vec282 to <4 x i32>
  %i.ui = sext <4 x i8> %strided.vec287 to <4 x i32>
  %i.uj = add <4 x i32> %i.uf, %i.uh
  %i.uk = add <4 x i32> %i.ug, %i.ui
  %i.ul = sext <4 x i8> %strided.vec283 to <4 x i32>
  %i.um = sext <4 x i8> %strided.vec288 to <4 x i32>
  %i.un = add <4 x i32> %i.uj, %i.ul              ; 2 uses
  %i.uo = add <4 x i32> %i.uk, %i.um              ; 2 uses
  %index.next291 = add nuw i64 %index259, 8       ; 2 uses
  %i.up = icmp eq i64 %index.next291, %n.vec257
  br i1 %i.up, label %middle.block292, label %vector.body258, !llvm.loop !64

middle.block292:                                  ; preds = %vector.body258
  %bin.rdx = add <4 x i32> %i.uo, %i.un
  %i.uq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx293 = add <4 x i32> %i.ty, %i.tx
  %i.ur = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx293) ; 2 uses
  %ind.escape = getelementptr i8, ptr %i.te, i64 -8
  br i1 %cmp.n294, label %.loopexit, label %.lr.ph122.i.preheader441

.lr.ph122.i.preheader441:                         ; preds = %vector.memcheck243, %.lr.ph122.i.preheader, %middle.block292
  %.0240120.i.ph = phi i32 [ 0, %vector.memcheck243 ], [ 0, %.lr.ph122.i.preheader ], [ %i.uq, %middle.block292 ]
  %.0241119.i.ph = phi i32 [ 0, %vector.memcheck243 ], [ 0, %.lr.ph122.i.preheader ], [ %i.ur, %middle.block292 ]
  %.0242118.i.ph = phi i32 [ 0, %vector.memcheck243 ], [ 0, %.lr.ph122.i.preheader ], [ %i.ia, %middle.block292 ]
  %.0244117.i.ph = phi ptr [ %i.sy, %vector.memcheck243 ], [ %i.sy, %.lr.ph122.i.preheader ], [ %i.tc, %middle.block292 ]
  %.0247116.i.ph = phi ptr [ %i.su, %vector.memcheck243 ], [ %i.su, %.lr.ph122.i.preheader ], [ %i.td, %middle.block292 ]
  %.16115.i.ph = phi ptr [ %.15148.i, %vector.memcheck243 ], [ %.15148.i, %.lr.ph122.i.preheader ], [ %i.te, %middle.block292 ]
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %.lr.ph122.i.preheader441, %.lr.ph122.i
  %.0240120.i = phi i32 [ %i.wc, %.lr.ph122.i ], [ %.0240120.i.ph, %.lr.ph122.i.preheader441 ]
  %.0241119.i = phi i32 [ %i.vu, %.lr.ph122.i ], [ %.0241119.i.ph, %.lr.ph122.i.preheader441 ]
  %.0242118.i = phi i32 [ %i.wg, %.lr.ph122.i ], [ %.0242118.i.ph, %.lr.ph122.i.preheader441 ]
  %.0244117.i = phi ptr [ %i.wf, %.lr.ph122.i ], [ %.0244117.i.ph, %.lr.ph122.i.preheader441 ] ; 5 uses
  %.0247116.i = phi ptr [ %i.we, %.lr.ph122.i ], [ %.0247116.i.ph, %.lr.ph122.i.preheader441 ] ; 5 uses
  %.16115.i = phi ptr [ %i.wd, %.lr.ph122.i ], [ %.16115.i.ph, %.lr.ph122.i.preheader441 ] ; 10 uses
  %i.us = load i8, ptr %.0247116.i, align 1, !tbaa !17 ; 2 uses
  store i8 %i.us, ptr %.16115.i, align 1, !tbaa !17
  %i.ut = getelementptr inbounds nuw i8, ptr %.0247116.i, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !17  ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.16115.i, i64 1
  store i8 %i.uu, ptr %i.uv, align 1, !tbaa !17
  %i.uw = getelementptr inbounds nuw i8, ptr %.0247116.i, i64 2
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !17  ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.16115.i, i64 2
  store i8 %i.ux, ptr %i.uy, align 1, !tbaa !17
  %i.uz = getelementptr inbounds nuw i8, ptr %.0247116.i, i64 3
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !17  ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.16115.i, i64 3
  store i8 %i.va, ptr %i.vb, align 1, !tbaa !17
  %i.vc = load i8, ptr %.0244117.i, align 1, !tbaa !17 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.16115.i, i64 4
  store i8 %i.vc, ptr %i.vd, align 1, !tbaa !17
  %i.ve = getelementptr inbounds nuw i8, ptr %.0244117.i, i64 1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !17  ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.16115.i, i64 5
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !17
  %i.vh = getelementptr inbounds nuw i8, ptr %.0244117.i, i64 2
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !17  ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.16115.i, i64 6
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !17
  %i.vk = getelementptr inbounds nuw i8, ptr %.0244117.i, i64 3
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !17  ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.16115.i, i64 7
  store i8 %i.vl, ptr %i.vm, align 1, !tbaa !17
  %i.vn = sext i8 %i.us to i32
  %i.vo = add nsw i32 %.0241119.i, %i.vn
  %i.vp = sext i8 %i.uu to i32
  %i.vq = add nsw i32 %i.vo, %i.vp
  %i.vr = sext i8 %i.ux to i32
  %i.vs = add nsw i32 %i.vq, %i.vr
  %i.vt = sext i8 %i.va to i32
  %i.vu = add nsw i32 %i.vs, %i.vt                ; 2 uses
  %i.vv = sext i8 %i.vc to i32
  %i.vw = add nsw i32 %.0240120.i, %i.vv
  %i.vx = sext i8 %i.vf to i32
  %i.vy = add nsw i32 %i.vw, %i.vx
  %i.vz = sext i8 %i.vi to i32
  %i.wa = add nsw i32 %i.vy, %i.vz
end_hunk_0
begin_hunk_1_@_ZN4ncnn27pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii:bb.a
  %i.yi = shl nuw nsw i64 %n.vec, 1
  %i.yj = getelementptr i8, ptr %.18.lcssa.i, i64 %i.yi ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1245.lcssa.i, i64 %index
  %next.gep162 = getelementptr i8, ptr %.1248.lcssa.i, i64 %index
  %i.yk = shl i64 %index, 1
  %next.gep163 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.yk
  %wide.load = load <64 x i8>, ptr %next.gep162, align 1, !tbaa !17, !alias.scope !77
  %wide.load164 = load <64 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !80
  %interleaved.vec = shufflevector <64 x i8> %wide.load, <64 x i8> %wide.load164, <128 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  store <128 x i8> %interleaved.vec, ptr %next.gep163, align 1, !tbaa !17, !alias.scope !82, !noalias !84
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.yl = icmp eq i64 %index.next, %n.vec
  br i1 %i.yl, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.xy, %n.vec
  br i1 %cmp.n, label %._crit_edge145.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph144.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec168 = and i64 %i.xy, 8589934584           ; 6 uses
  %i.ym = trunc i64 %n.vec168 to i32
  %i.yn = add i32 %.1243.lcssa.i, %i.ym
  %i.yo = getelementptr i8, ptr %.1245.lcssa.i, i64 %n.vec168
  %i.yp = getelementptr i8, ptr %.1248.lcssa.i, i64 %n.vec168
  %i.yq = shl nuw nsw i64 %n.vec168, 1
  %i.yr = getelementptr i8, ptr %.18.lcssa.i, i64 %i.yq ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index169 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 4 uses
  %next.gep170 = getelementptr i8, ptr %.1245.lcssa.i, i64 %index169
  %next.gep171 = getelementptr i8, ptr %.1248.lcssa.i, i64 %index169
  %i.ys = shl i64 %index169, 1
  %next.gep172 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.ys
  %wide.load173 = load <8 x i8>, ptr %next.gep171, align 1, !tbaa !17, !alias.scope !77
  %wide.load174 = load <8 x i8>, ptr %next.gep170, align 1, !tbaa !17, !alias.scope !80
  %interleaved.vec175 = shufflevector <8 x i8> %wide.load173, <8 x i8> %wide.load174, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec175, ptr %next.gep172, align 1, !tbaa !17, !alias.scope !82, !noalias !84
  %index.next176 = add nuw i64 %index169, 8       ; 2 uses
  %i.yt = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.yt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n177 = icmp eq i64 %i.xy, %n.vec168
  br i1 %cmp.n177, label %._crit_edge145.i, label %.lr.ph144.i.preheader

.lr.ph144.i.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2143.i.ph = phi i32 [ %.1243.lcssa.i, %iter.check ], [ %.1243.lcssa.i, %vector.memcheck ], [ %i.yf, %vec.epilog.iter.check ], [ %i.yn, %vec.epilog.middle.block ] ; 4 uses
  %.2246142.i.ph = phi ptr [ %.1245.lcssa.i, %iter.check ], [ %.1245.lcssa.i, %vector.memcheck ], [ %i.yg, %vec.epilog.iter.check ], [ %i.yo, %vec.epilog.middle.block ] ; 2 uses
  %.2249141.i.ph = phi ptr [ %.1248.lcssa.i, %iter.check ], [ %.1248.lcssa.i, %vector.memcheck ], [ %i.yh, %vec.epilog.iter.check ], [ %i.yp, %vec.epilog.middle.block ] ; 2 uses
  %.19140.i.ph = phi ptr [ %.18.lcssa.i, %iter.check ], [ %.18.lcssa.i, %vector.memcheck ], [ %i.yj, %vec.epilog.iter.check ], [ %i.yr, %vec.epilog.middle.block ] ; 2 uses
  %i.yu = sub i32 %5, %.2143.i.ph
  %xtraiter519 = and i32 %i.yu, 3                 ; 2 uses
  %lcmp.mod520.not = icmp eq i32 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol

.lr.ph144.i.prol:                                 ; preds = %.lr.ph144.i.preheader, %.lr.ph144.i.prol
  %.2143.i.prol = phi i32 [ %i.zb, %.lr.ph144.i.prol ], [ %.2143.i.ph, %.lr.ph144.i.preheader ]
  %.2246142.i.prol = phi ptr [ %i.za, %.lr.ph144.i.prol ], [ %.2246142.i.ph, %.lr.ph144.i.preheader ] ; 2 uses
  %.2249141.i.prol = phi ptr [ %i.yz, %.lr.ph144.i.prol ], [ %.2249141.i.ph, %.lr.ph144.i.preheader ] ; 2 uses
  %.19140.i.prol = phi ptr [ %i.yy, %.lr.ph144.i.prol ], [ %.19140.i.ph, %.lr.ph144.i.preheader ] ; 3 uses
  %prol.iter521 = phi i32 [ %prol.iter521.next, %.lr.ph144.i.prol ], [ 0, %.lr.ph144.i.preheader ]
  %i.yv = load i8, ptr %.2249141.i.prol, align 1, !tbaa !17
  store i8 %i.yv, ptr %.19140.i.prol, align 1, !tbaa !17
  %i.yw = load i8, ptr %.2246142.i.prol, align 1, !tbaa !17
  %i.yx = getelementptr inbounds nuw i8, ptr %.19140.i.prol, i64 1
  store i8 %i.yw, ptr %i.yx, align 1, !tbaa !17
  %i.yy = getelementptr inbounds nuw i8, ptr %.19140.i.prol, i64 2 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.2249141.i.prol, i64 1 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.2246142.i.prol, i64 1 ; 2 uses
  %i.zb = add nuw nsw i32 %.2143.i.prol, 1        ; 2 uses
  %prol.iter521.next = add i32 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i32 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol, !llvm.loop !87

.lr.ph144.i.prol.loopexit:                        ; preds = %.lr.ph144.i.prol, %.lr.ph144.i.preheader
  %.lcssa456.unr = phi ptr [ poison, %.lr.ph144.i.preheader ], [ %i.yy, %.lr.ph144.i.prol ]
  %.2143.i.unr = phi i32 [ %.2143.i.ph, %.lr.ph144.i.preheader ], [ %i.zb, %.lr.ph144.i.prol ]
  %.2246142.i.unr = phi ptr [ %.2246142.i.ph, %.lr.ph144.i.preheader ], [ %i.za, %.lr.ph144.i.prol ]
  %.2249141.i.unr = phi ptr [ %.2249141.i.ph, %.lr.ph144.i.preheader ], [ %i.yz, %.lr.ph144.i.prol ]
  %.19140.i.unr = phi ptr [ %.19140.i.ph, %.lr.ph144.i.preheader ], [ %i.yy, %.lr.ph144.i.prol ]
  %i.zc = sub i32 %.2143.i.ph, %5
  %i.zd = icmp ugt i32 %i.zc, -4
  br i1 %i.zd, label %._crit_edge145.i, label %.lr.ph144.i

.lr.ph135.i:                                      ; preds = %.lr.ph135.i.preheader, %.lr.ph135.i
  %.1243133.i = phi i32 [ %i.zq, %.lr.ph135.i ], [ %.1243133.i.ph, %.lr.ph135.i.preheader ]
  %.1245132.i = phi ptr [ %i.zp, %.lr.ph135.i ], [ %.1245132.i.ph, %.lr.ph135.i.preheader ] ; 3 uses
  %.1248131.i = phi ptr [ %i.zo, %.lr.ph135.i ], [ %.1248131.i.ph, %.lr.ph135.i.preheader ] ; 3 uses
  %.18130.i = phi ptr [ %i.zn, %.lr.ph135.i ], [ %.18130.i.ph, %.lr.ph135.i.preheader ] ; 5 uses
  %i.ze = load i8, ptr %.1248131.i, align 1, !tbaa !17
  store i8 %i.ze, ptr %.18130.i, align 1, !tbaa !17
  %i.zf = getelementptr inbounds nuw i8, ptr %.1248131.i, i64 1
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !17
  %i.zh = getelementptr inbounds nuw i8, ptr %.18130.i, i64 1
  store i8 %i.zg, ptr %i.zh, align 1, !tbaa !17
  %i.zi = load i8, ptr %.1245132.i, align 1, !tbaa !17
  %i.zj = getelementptr inbounds nuw i8, ptr %.18130.i, i64 2
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !17
  %i.zk = getelementptr inbounds nuw i8, ptr %.1245132.i, i64 1
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !17
  %i.zm = getelementptr inbounds nuw i8, ptr %.18130.i, i64 3
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !17
  %i.zn = getelementptr inbounds nuw i8, ptr %.18130.i, i64 4 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.1248131.i, i64 2 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.1245132.i, i64 2 ; 2 uses
  %i.zq = add nuw nsw i32 %.1243133.i, 2          ; 3 uses
  %i.zr = or disjoint i32 %i.zq, 1
  %i.zs = icmp slt i32 %i.zr, %5
  br i1 %i.zs, label %.lr.ph135.i, label %.preheader22.i, !llvm.loop !88

.lr.ph144.i:                                      ; preds = %.lr.ph144.i.prol.loopexit, %.lr.ph144.i
  %.2143.i = phi i32 [ %i.aar, %.lr.ph144.i ], [ %.2143.i.unr, %.lr.ph144.i.prol.loopexit ]
  %.2246142.i = phi ptr [ %i.aaq, %.lr.ph144.i ], [ %.2246142.i.unr, %.lr.ph144.i.prol.loopexit ] ; 5 uses
  %.2249141.i = phi ptr [ %i.aap, %.lr.ph144.i ], [ %.2249141.i.unr, %.lr.ph144.i.prol.loopexit ] ; 5 uses
  %.19140.i = phi ptr [ %i.aao, %.lr.ph144.i ], [ %.19140.i.unr, %.lr.ph144.i.prol.loopexit ] ; 9 uses
  %i.zt = load i8, ptr %.2249141.i, align 1, !tbaa !17
  store i8 %i.zt, ptr %.19140.i, align 1, !tbaa !17
  %i.zu = load i8, ptr %.2246142.i, align 1, !tbaa !17
  %i.zv = getelementptr inbounds nuw i8, ptr %.19140.i, i64 1
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !17
  %i.zw = getelementptr inbounds nuw i8, ptr %.19140.i, i64 2
  %i.zx = getelementptr inbounds nuw i8, ptr %.2249141.i, i64 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.2246142.i, i64 1
  %i.zz = load i8, ptr %i.zx, align 1, !tbaa !17
  store i8 %i.zz, ptr %i.zw, align 1, !tbaa !17
  %i.aaa = load i8, ptr %i.zy, align 1, !tbaa !17
  %i.aab = getelementptr inbounds nuw i8, ptr %.19140.i, i64 3
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !17
  %i.aac = getelementptr inbounds nuw i8, ptr %.19140.i, i64 4
  %i.aad = getelementptr inbounds nuw i8, ptr %.2249141.i, i64 2
  %i.aae = getelementptr inbounds nuw i8, ptr %.2246142.i, i64 2
  %i.aaf = load i8, ptr %i.aad, align 1, !tbaa !17
  store i8 %i.aaf, ptr %i.aac, align 1, !tbaa !17
  %i.aag = load i8, ptr %i.aae, align 1, !tbaa !17
  %i.aah = getelementptr inbounds nuw i8, ptr %.19140.i, i64 5
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !17
  %i.aai = getelementptr inbounds nuw i8, ptr %.19140.i, i64 6
  %i.aaj = getelementptr inbounds nuw i8, ptr %.2249141.i, i64 3
  %i.aak = getelementptr inbounds nuw i8, ptr %.2246142.i, i64 3
  %i.aal = load i8, ptr %i.aaj, align 1, !tbaa !17
  store i8 %i.aal, ptr %i.aai, align 1, !tbaa !17
  %i.aam = load i8, ptr %i.aak, align 1, !tbaa !17
  %i.aan = getelementptr inbounds nuw i8, ptr %.19140.i, i64 7
  store i8 %i.aam, ptr %i.aan, align 1, !tbaa !17
  %i.aao = getelementptr inbounds nuw i8, ptr %.19140.i, i64 8 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.2249141.i, i64 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %.2246142.i, i64 4
  %i.aar = add nuw nsw i32 %.2143.i, 4            ; 2 uses
  %exitcond227.not.i.3 = icmp eq i32 %i.aar, %5
  br i1 %exitcond227.not.i.3, label %._crit_edge145.i, label %.lr.ph144.i, !llvm.loop !89

._crit_edge145.i:                                 ; preds = %.lr.ph144.i.prol.loopexit, %.lr.ph144.i, %middle.block, %vec.epilog.middle.block, %.preheader22.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader22.i ], [ %i.yr, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %.lcssa456.unr, %.lr.ph144.i.prol.loopexit ], [ %i.aao, %.lr.ph144.i ] ; 2 uses
  %indvars.iv.next229.i = add nuw nsw i64 %indvars.iv228.i, 2 ; 3 uses
  %i.aas = icmp slt i64 %indvars.iv.next229.i, %invariant.op333.i
  br i1 %i.aas, label %bb.e, label %.preheader.loopexit.i, !llvm.loop !90

._crit_edge158.i:                                 ; preds = %._crit_edge158.i.preheader, %._crit_edge168.i.loopexit
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %._crit_edge168.i.loopexit ], [ %i.ma, %._crit_edge158.i.preheader ] ; 2 uses
  %.20171.i = phi ptr [ %.lcssa440, %._crit_edge168.i.loopexit ], [ %.15.lcssa.i, %._crit_edge158.i.preheader ] ; 4 uses
  %i.aat = load ptr, ptr %0, align 8, !tbaa !9
  %i.aau = add nsw i64 %indvars.iv232.i, %i.mb
  %i.aav = load i32, ptr %i.lv, align 4, !tbaa !15
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = mul nsw i64 %i.aau, %i.aaw
  %i.aay = load i64, ptr %i.lw, align 8, !tbaa !16
  %i.aaz = mul i64 %i.aax, %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aaz
  %i.abb = getelementptr inbounds i8, ptr %i.aba, i64 %i.lx ; 3 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !17
  store i8 %i.abc, ptr %.20171.i, align 1, !tbaa !17
  %i.abd = getelementptr inbounds nuw i8, ptr %.20171.i, i64 1 ; 2 uses
  br i1 %exitcond231.not.i, label %._crit_edge168.i.loopexit, label %.lr.ph167.i.1

.lr.ph167.i.1:                                    ; preds = %._crit_edge158.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !17
  store i8 %i.abf, ptr %i.abd, align 1, !tbaa !17
  %i.abg = getelementptr inbounds nuw i8, ptr %.20171.i, i64 2 ; 2 uses
  br i1 %exitcond231.not.i.1, label %._crit_edge168.i.loopexit, label %.lr.ph167.i.2

.lr.ph167.i.2:                                    ; preds = %.lr.ph167.i.1
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 2
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !17
  store i8 %i.abi, ptr %i.abg, align 1, !tbaa !17
  %i.abj = getelementptr inbounds nuw i8, ptr %.20171.i, i64 3
  br label %._crit_edge168.i.loopexit

._crit_edge168.i.loopexit:                        ; preds = %.lr.ph167.i.2, %.lr.ph167.i.1, %._crit_edge158.i
  %.lcssa440 = phi ptr [ %i.abd, %._crit_edge158.i ], [ %i.abg, %.lr.ph167.i.1 ], [ %i.abj, %.lr.ph167.i.2 ]
  %indvars.iv.next233.i = add nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count.i
  br i1 %exitcond235.not.i, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %._crit_edge158.i, !llvm.loop !55

_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge168.i.loopexit, %._crit_edge168.i.us, %.lr.ph172.i.split, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32>, <16 x i8>, <16 x i8>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn37transpose_pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 20 uses
  %i.c = icmp sgt i32 %3, 15
  br i1 %i.c, label %.lr.ph66.i, label %.preheader39.i

.lr.ph66.i:                                       ; preds = %bb.a
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp sgt i32 %5, 3
  %i.g = sext i32 %i.b to i64                     ; 11 uses
  %i.h = shl nsw i32 %i.b, 1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = mul nsw i32 %i.b, 3
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i32 %i.b, 2
  %i.m = sext i32 %i.l to i64
  %i.n = and i32 %5, -4
  %i.o = zext nneg i32 %3 to i64
  %i.p = sext i32 %2 to i64
  br label %bb.b

.preheader39.loopexit.i:                          ; preds = %._crit_edge61.i
  %i.q = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %bb.a
  %.0310.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.q, %.preheader39.loopexit.i ] ; 3 uses
  %.0307.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.4.lcssa.i, %.preheader39.loopexit.i ] ; 2 uses
  %i.r = or disjoint i32 %.0310.lcssa.i, 7
  %i.s = icmp slt i32 %i.r, %3
  br i1 %i.s, label %.lr.ph95.i, label %.preheader37.i

.lr.ph95.i:                                       ; preds = %.preheader39.i
  %i.t = sext i32 %4 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = icmp sgt i32 %5, 3
  %i.w = sext i32 %i.b to i64                     ; 11 uses
  %i.x = shl nsw i32 %i.b, 1
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i32 %i.b, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i32 %i.b, 2
  %i.ac = sext i32 %i.ab to i64
  %i.ad = and i32 %5, -4
  %i.ae = zext nneg i32 %.0310.lcssa.i to i64
  %i.af = sext i32 %3 to i64
  %i.ag = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.af, -7
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge61.i, %.lr.ph66.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %._crit_edge61.i ] ; 2 uses
  %.030764.i = phi ptr [ %.val, %.lr.ph66.i ], [ %.4.lcssa.i, %._crit_edge61.i ] ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !15
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.d
  %i.al = load i64, ptr %i.e, align 8, !tbaa !16
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.p   ; 2 uses
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.130845.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.030764.i, %bb.b ] ; 3 uses
  %.031544.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.ap, %bb.b ] ; 5 uses
  %.031843.i = phi i32 [ %i.bu, %.lr.ph.i ], [ 0, %bb.b ]
  %i.aq = phi <16 x i32> [ %i.br, %.lr.ph.i ], [ zeroinitializer, %bb.b ]
  %i.ar = load <16 x i8>, ptr %.031544.i, align 1, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.031544.i, i64 %i.g
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !17 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.031544.i, i64 %i.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !17 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.031544.i, i64 %i.k
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !17 ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.ar, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ba = shufflevector <16 x i8> %i.av, <16 x i8> %i.ax, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bb = shufflevector <16 x i8> %i.av, <16 x i8> %i.ax, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bc = bitcast <16 x i8> %i.ay to <8 x i16>    ; 2 uses
  %i.bd = bitcast <16 x i8> %i.ba to <8 x i16>    ; 2 uses
  %i.be = shufflevector <8 x i16> %i.bc, <8 x i16> %i.bd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bf = bitcast <8 x i16> %i.be to <2 x i64>
  %i.bg = shufflevector <8 x i16> %i.bc, <8 x i16> %i.bd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bh = bitcast <8 x i16> %i.bg to <2 x i64>
  %i.bi = bitcast <16 x i8> %i.az to <8 x i16>
  %i.bj = bitcast <16 x i8> %i.bb to <8 x i16>
  %i.bk = shufflevector <8 x i16> %i.bi, <8 x i16> %i.bj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bl = shufflevector <2 x i64> %i.bf, <2 x i64> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bm = bitcast <8 x i64> %i.bl to <16 x i32>
  %i.bn = bitcast <16 x i16> %i.bk to <8 x i32>
  %i.bo = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <16 x i32> %i.bm, <16 x i32> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.bq = bitcast <16 x i32> %i.bp to <64 x i8>
  %i.br = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aq, <64 x i8> splat (i8 127), <64 x i8> %i.bq) ; 2 uses
  store <16 x i32> %i.bp, ptr %.130845.i, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.130845.i, i64 64 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.031544.i, i64 %i.m ; 2 uses
  %i.bu = add nuw nsw i32 %.031843.i, 4           ; 2 uses
  %i.bv = or disjoint i32 %i.bu, 3
  %i.bw = icmp slt i32 %i.bv, %5
  br i1 %i.bw, label %.lr.ph.i, label %bb.c, !llvm.loop !91

bb.c:                                             ; preds = %.lr.ph.i
  store <16 x i32> %i.br, ptr %i.bs, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.130845.i, i64 128
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.0315.lcssa255.i = phi ptr [ %i.bt, %bb.c ], [ %i.ap, %bb.b ] ; 2 uses
  %.0318.lcssa253.i = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.2309.i = phi ptr [ %i.bx, %bb.c ], [ %.030764.i, %bb.b ] ; 2 uses
  %i.by = or disjoint i32 %.0318.lcssa253.i, 1
  %i.bz = icmp slt i32 %i.by, %5
  br i1 %i.bz, label %.lr.ph53.i, label %.preheader40.i

.preheader40.i:                                   ; preds = %.lr.ph53.i, %._crit_edge.i
  %.1319.lcssa.i = phi i32 [ %.0318.lcssa253.i, %._crit_edge.i ], [ %i.cq, %.lr.ph53.i ] ; 5 uses
  %.1316.lcssa.i = phi ptr [ %.0315.lcssa255.i, %._crit_edge.i ], [ %i.cp, %.lr.ph53.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.2309.i, %._crit_edge.i ], [ %i.co, %.lr.ph53.i ] ; 3 uses
  %i.ca = icmp slt i32 %.1319.lcssa.i, %5
  br i1 %i.ca, label %.lr.ph60.i.preheader, label %._crit_edge61.i

.lr.ph60.i.preheader:                             ; preds = %.preheader40.i
  %i.cb = sub i32 %5, %.1319.lcssa.i
  %xtraiter = and i32 %i.cb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph60.i.prol.loopexit, label %.lr.ph60.i.prol

.lr.ph60.i.prol:                                  ; preds = %.lr.ph60.i.preheader, %.lr.ph60.i.prol
  %.459.i.prol = phi ptr [ %i.cd, %.lr.ph60.i.prol ], [ %.3.lcssa.i, %.lr.ph60.i.preheader ] ; 2 uses
  %.231758.i.prol = phi ptr [ %i.ce, %.lr.ph60.i.prol ], [ %.1316.lcssa.i, %.lr.ph60.i.preheader ] ; 2 uses
  %.232057.i.prol = phi i32 [ %i.cf, %.lr.ph60.i.prol ], [ %.1319.lcssa.i, %.lr.ph60.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph60.i.prol ], [ 0, %.lr.ph60.i.preheader ]
  %i.cc = load <2 x i64>, ptr %.231758.i.prol, align 1, !tbaa !17
  store <2 x i64> %i.cc, ptr %.459.i.prol, align 16, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.459.i.prol, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.231758.i.prol, i64 %i.g ; 2 uses
  %i.cf = add nuw nsw i32 %.232057.i.prol, 1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph60.i.prol.loopexit, label %.lr.ph60.i.prol, !llvm.loop !92

.lr.ph60.i.prol.loopexit:                         ; preds = %.lr.ph60.i.prol, %.lr.ph60.i.preheader
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph60.i.preheader ], [ %i.cd, %.lr.ph60.i.prol ]
  %.459.i.unr = phi ptr [ %.3.lcssa.i, %.lr.ph60.i.preheader ], [ %i.cd, %.lr.ph60.i.prol ]
  %.231758.i.unr = phi ptr [ %.1316.lcssa.i, %.lr.ph60.i.preheader ], [ %i.ce, %.lr.ph60.i.prol ]
  %.232057.i.unr = phi i32 [ %.1319.lcssa.i, %.lr.ph60.i.preheader ], [ %i.cf, %.lr.ph60.i.prol ]
  %i.cg = sub i32 %.1319.lcssa.i, %5
  %i.ch = icmp ugt i32 %i.cg, -8
  br i1 %i.ch, label %._crit_edge61.i, label %.lr.ph60.i

.lr.ph53.i:                                       ; preds = %._crit_edge.i, %.lr.ph53.i
  %.351.i = phi ptr [ %i.co, %.lr.ph53.i ], [ %.2309.i, %._crit_edge.i ] ; 3 uses
  %.131650.i = phi ptr [ %i.cp, %.lr.ph53.i ], [ %.0315.lcssa255.i, %._crit_edge.i ] ; 3 uses
  %.131949.i = phi i32 [ %i.cq, %.lr.ph53.i ], [ %.0318.lcssa253.i, %._crit_edge.i ]
  %i.ci = load <16 x i8>, ptr %.131650.i, align 1, !tbaa !17 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.131650.i, i64 %i.g
  %i.ck = load <16 x i8>, ptr %i.cj, align 1, !tbaa !17 ; 2 uses
  %i.cl = shufflevector <16 x i8> %i.ci, <16 x i8> %i.ck, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cm = shufflevector <16 x i8> %i.ci, <16 x i8> %i.ck, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.cl, ptr %.351.i, align 16, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.351.i, i64 16
  store <16 x i8> %i.cm, ptr %i.cn, align 16, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %.351.i, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.131650.i, i64 %i.i ; 2 uses
  %i.cq = add nuw nsw i32 %.131949.i, 2           ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 1
  %i.cs = icmp slt i32 %i.cr, %5
  br i1 %i.cs, label %.lr.ph53.i, label %.preheader40.i, !llvm.loop !93
end_hunk_1
begin_hunk_2_@_ZN4ncnn37transpose_pack_A_tile_int8_avx512vnniERKNS_3MatERS0_iiii:bb.a
  %.2303118.i = phi i32 [ %i.my, %.lr.ph119.i ], [ %.2303118.i.unr, %.lr.ph119.i.prol.loopexit ]
  %.2306117.i = phi ptr [ %i.mx, %.lr.ph119.i ], [ %.2306117.i.unr, %.lr.ph119.i.prol.loopexit ] ; 5 uses
  %.14116.i = phi ptr [ %i.mw, %.lr.ph119.i ], [ %.14116.i.unr, %.lr.ph119.i.prol.loopexit ] ; 9 uses
  %i.ma = load i8, ptr %.2306117.i, align 1, !tbaa !17
  store i8 %i.ma, ptr %.14116.i, align 1, !tbaa !17
  %i.mb = getelementptr inbounds nuw i8, ptr %.2306117.i, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %.14116.i, i64 1
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !17
  %i.me = getelementptr inbounds nuw i8, ptr %.2306117.i, i64 2
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !17
  %i.mg = getelementptr inbounds nuw i8, ptr %.14116.i, i64 2
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %.2306117.i, i64 3
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %.14116.i, i64 3
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !17
  %i.mk = getelementptr inbounds nuw i8, ptr %.14116.i, i64 4
  %i.ml = getelementptr inbounds i8, ptr %.2306117.i, i64 %i.ef ; 5 uses
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %.14116.i, i64 5
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %.14116.i, i64 6
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !17
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 3
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %.14116.i, i64 7
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !17
  %i.mw = getelementptr inbounds nuw i8, ptr %.14116.i, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %i.ml, i64 %i.ef
  %i.my = add nuw nsw i32 %.2303118.i, 2          ; 2 uses
  %exitcond228.not.i.1 = icmp eq i32 %i.my, %5
  br i1 %exitcond228.not.i.1, label %._crit_edge120.i, label %.lr.ph119.i, !llvm.loop !104

._crit_edge120.i:                                 ; preds = %.lr.ph119.i.prol.loopexit, %.lr.ph119.i, %.preheader36.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader36.i ], [ %.lcssa164.unr, %.lr.ph119.i.prol.loopexit ], [ %i.mw, %.lr.ph119.i ] ; 2 uses
  %indvars.iv.next230.i = add nuw nsw i64 %indvars.iv229.i, 4 ; 3 uses
  %i.mz = icmp slt i64 %indvars.iv.next230.i, %invariant.op332.i
  br i1 %i.mz, label %bb.f, label %.preheader35.loopexit.i, !llvm.loop !105

.preheader.loopexit.i:                            ; preds = %._crit_edge152.i
  %i.na = trunc nsw i64 %indvars.iv.next234.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader35.i
  %.3313.lcssa.i = phi i32 [ %.2312.lcssa.i, %.preheader35.i ], [ %i.na, %.preheader.loopexit.i ] ; 2 uses
  %.15.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader35.i ], [ %.19.lcssa.i, %.preheader.loopexit.i ] ; 2 uses
  %i.nb = icmp slt i32 %.3313.lcssa.i, %3
  br i1 %i.nb, label %.lr.ph179.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph179.i:                                      ; preds = %.preheader.i
  %i.nc = sext i32 %4 to i64                      ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ne = icmp sgt i32 %5, 3
  %i.nf = sext i32 %i.b to i64                    ; 12 uses
  %i.ng = shl nsw i32 %i.b, 1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = mul nsw i32 %i.b, 3
  %i.nj = sext i32 %i.ni to i64
  %i.nk = shl nsw i32 %i.b, 2
  %i.nl = sext i32 %i.nk to i64
  %i.nm = and i32 %5, -4                          ; 4 uses
  %i.nn = sext i32 %.3313.lcssa.i to i64          ; 2 uses
  %i.no = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count.i = sext i32 %3 to i64         ; 2 uses
  br i1 %i.ne, label %.lr.ph179.i.split.us, label %.lr.ph179.i.split

.lr.ph179.i.split.us:                             ; preds = %.lr.ph179.i
  %.not = icmp eq i32 %i.nm, %5
  %i.np = and i32 %5, 3                           ; 2 uses
  %lcmp.mod196.not = icmp eq i32 %i.np, 0
  %i.nq = sub nsw i32 %i.nm, %5
  %i.nr = icmp ugt i32 %i.nq, -8
  br label %.lr.ph164.i.preheader.us

.lr.ph164.i.preheader.us:                         ; preds = %._crit_edge175.i.us, %.lr.ph179.i.split.us
  %indvars.iv237.i.us = phi i64 [ %i.nn, %.lr.ph179.i.split.us ], [ %indvars.iv.next238.i.us, %._crit_edge175.i.us ] ; 2 uses
  %.20178.i.us = phi ptr [ %.15.lcssa.i, %.lr.ph179.i.split.us ], [ %.23.lcssa.i.us, %._crit_edge175.i.us ]
  %i.ns = load ptr, ptr %0, align 8, !tbaa !9
  %i.nt = load i32, ptr %i.a, align 4, !tbaa !15
  %i.nu = sext i32 %i.nt to i64
  %i.nv = mul nsw i64 %i.nu, %i.nc
  %i.nw = load i64, ptr %i.nd, align 8, !tbaa !16
  %i.nx = mul i64 %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 %indvars.iv237.i.us
  %i.oa = getelementptr i8, ptr %i.nz, i64 %i.no
  br label %.lr.ph164.i.us

.lr.ph164.i.us:                                   ; preds = %.lr.ph164.i.preheader.us, %.lr.ph164.i.us
  %.0162.i.us = phi i32 [ %i.os, %.lr.ph164.i.us ], [ 0, %.lr.ph164.i.preheader.us ]
  %.0291161.i.us = phi i32 [ %i.ov, %.lr.ph164.i.us ], [ 0, %.lr.ph164.i.preheader.us ]
  %.0292160.i.us = phi ptr [ %i.ou, %.lr.ph164.i.us ], [ %i.oa, %.lr.ph164.i.preheader.us ] ; 5 uses
  %.21159.i.us = phi ptr [ %i.ot, %.lr.ph164.i.us ], [ %.20178.i.us, %.lr.ph164.i.preheader.us ] ; 6 uses
  %i.ob = load i8, ptr %.0292160.i.us, align 1, !tbaa !17 ; 2 uses
  store i8 %i.ob, ptr %.21159.i.us, align 1, !tbaa !17
  %i.oc = getelementptr inbounds i8, ptr %.0292160.i.us, i64 %i.nf
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !17  ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.21159.i.us, i64 1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !17
  %i.of = getelementptr inbounds i8, ptr %.0292160.i.us, i64 %i.nh
  %i.og = load i8, ptr %i.of, align 1, !tbaa !17  ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.21159.i.us, i64 2
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !17
  %i.oi = getelementptr inbounds i8, ptr %.0292160.i.us, i64 %i.nj
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !17  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.21159.i.us, i64 3
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !17
  %i.ol = sext i8 %i.ob to i32
  %i.om = add nsw i32 %.0162.i.us, %i.ol
  %i.on = sext i8 %i.od to i32
  %i.oo = add nsw i32 %i.om, %i.on
  %i.op = sext i8 %i.og to i32
  %i.oq = add nsw i32 %i.oo, %i.op
  %i.or = sext i8 %i.oj to i32
  %i.os = add nsw i32 %i.oq, %i.or                ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.21159.i.us, i64 4 ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %.0292160.i.us, i64 %i.nl ; 3 uses
  %i.ov = add nuw nsw i32 %.0291161.i.us, 4       ; 2 uses
  %i.ow = or disjoint i32 %i.ov, 3
  %i.ox = icmp slt i32 %i.ow, %5
  br i1 %i.ox, label %.lr.ph164.i.us, label %._crit_edge165.i.us, !llvm.loop !106

._crit_edge165.i.us:                              ; preds = %.lr.ph164.i.us
  %i.oy = mul nsw i32 %i.os, 127
  store i32 %i.oy, ptr %i.ot, align 4, !tbaa !49
  %i.oz = getelementptr inbounds nuw i8, ptr %.21159.i.us, i64 8 ; 3 uses
  br i1 %.not, label %._crit_edge175.i.us, label %.lr.ph174.i.us.preheader

.lr.ph174.i.us.preheader:                         ; preds = %._crit_edge165.i.us
  br i1 %lcmp.mod196.not, label %.lr.ph174.i.us.prol.loopexit, label %.lr.ph174.i.us.prol

.lr.ph174.i.us.prol:                              ; preds = %.lr.ph174.i.us.preheader, %.lr.ph174.i.us.prol
  %.1172.i.us.prol = phi i32 [ %i.pd, %.lr.ph174.i.us.prol ], [ %i.nm, %.lr.ph174.i.us.preheader ]
  %.1293171.i.us.prol = phi ptr [ %i.pc, %.lr.ph174.i.us.prol ], [ %i.ou, %.lr.ph174.i.us.preheader ] ; 2 uses
  %.23170.i.us.prol = phi ptr [ %i.pb, %.lr.ph174.i.us.prol ], [ %i.oz, %.lr.ph174.i.us.preheader ] ; 2 uses
  %prol.iter197 = phi i32 [ %prol.iter197.next, %.lr.ph174.i.us.prol ], [ 0, %.lr.ph174.i.us.preheader ]
  %i.pa = load i8, ptr %.1293171.i.us.prol, align 1, !tbaa !17
  store i8 %i.pa, ptr %.23170.i.us.prol, align 1, !tbaa !17
  %i.pb = getelementptr inbounds nuw i8, ptr %.23170.i.us.prol, i64 1 ; 3 uses
  %i.pc = getelementptr inbounds i8, ptr %.1293171.i.us.prol, i64 %i.nf ; 2 uses
  %i.pd = add nuw nsw i32 %.1172.i.us.prol, 1     ; 2 uses
  %prol.iter197.next = add i32 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i32 %prol.iter197.next, %i.np
  br i1 %prol.iter197.cmp.not, label %.lr.ph174.i.us.prol.loopexit, label %.lr.ph174.i.us.prol, !llvm.loop !107

.lr.ph174.i.us.prol.loopexit:                     ; preds = %.lr.ph174.i.us.prol, %.lr.ph174.i.us.preheader
  %.lcssa147.unr = phi ptr [ poison, %.lr.ph174.i.us.preheader ], [ %i.pb, %.lr.ph174.i.us.prol ]
  %.1172.i.us.unr = phi i32 [ %i.nm, %.lr.ph174.i.us.preheader ], [ %i.pd, %.lr.ph174.i.us.prol ]
  %.1293171.i.us.unr = phi ptr [ %i.ou, %.lr.ph174.i.us.preheader ], [ %i.pc, %.lr.ph174.i.us.prol ]
  %.23170.i.us.unr = phi ptr [ %i.oz, %.lr.ph174.i.us.preheader ], [ %i.pb, %.lr.ph174.i.us.prol ]
  br i1 %i.nr, label %._crit_edge175.i.us, label %.lr.ph174.i.us

.lr.ph174.i.us:                                   ; preds = %.lr.ph174.i.us.prol.loopexit, %.lr.ph174.i.us
  %.1172.i.us = phi i32 [ %i.qc, %.lr.ph174.i.us ], [ %.1172.i.us.unr, %.lr.ph174.i.us.prol.loopexit ]
  %.1293171.i.us = phi ptr [ %i.qb, %.lr.ph174.i.us ], [ %.1293171.i.us.unr, %.lr.ph174.i.us.prol.loopexit ] ; 2 uses
  %.23170.i.us = phi ptr [ %i.qa, %.lr.ph174.i.us ], [ %.23170.i.us.unr, %.lr.ph174.i.us.prol.loopexit ] ; 9 uses
  %i.pe = load i8, ptr %.1293171.i.us, align 1, !tbaa !17
  store i8 %i.pe, ptr %.23170.i.us, align 1, !tbaa !17
  %i.pf = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 1
  %i.pg = getelementptr inbounds i8, ptr %.1293171.i.us, i64 %i.nf ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !17
  store i8 %i.ph, ptr %i.pf, align 1, !tbaa !17
  %i.pi = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 2
  %i.pj = getelementptr inbounds i8, ptr %i.pg, i64 %i.nf ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !17
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !17
  %i.pl = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 3
  %i.pm = getelementptr inbounds i8, ptr %i.pj, i64 %i.nf ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !17
  store i8 %i.pn, ptr %i.pl, align 1, !tbaa !17
  %i.po = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 4
  %i.pp = getelementptr inbounds i8, ptr %i.pm, i64 %i.nf ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !17
  store i8 %i.pq, ptr %i.po, align 1, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 5
  %i.ps = getelementptr inbounds i8, ptr %i.pp, i64 %i.nf ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !17
  store i8 %i.pt, ptr %i.pr, align 1, !tbaa !17
  %i.pu = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 6
  %i.pv = getelementptr inbounds i8, ptr %i.ps, i64 %i.nf ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !17
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !17
  %i.px = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 7
  %i.py = getelementptr inbounds i8, ptr %i.pv, i64 %i.nf ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !17
  store i8 %i.pz, ptr %i.px, align 1, !tbaa !17
  %i.qa = getelementptr inbounds nuw i8, ptr %.23170.i.us, i64 8 ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %i.py, i64 %i.nf
  %i.qc = add nuw nsw i32 %.1172.i.us, 8          ; 2 uses
  %exitcond236.not.i.us.7 = icmp eq i32 %i.qc, %5
  br i1 %exitcond236.not.i.us.7, label %._crit_edge175.i.us, label %.lr.ph174.i.us, !llvm.loop !108

._crit_edge175.i.us:                              ; preds = %.lr.ph174.i.us.prol.loopexit, %.lr.ph174.i.us, %._crit_edge165.i.us
  %.23.lcssa.i.us = phi ptr [ %i.oz, %._crit_edge165.i.us ], [ %.lcssa147.unr, %.lr.ph174.i.us.prol.loopexit ], [ %i.qa, %.lr.ph174.i.us ]
  %indvars.iv.next238.i.us = add nsw i64 %indvars.iv237.i.us, 1 ; 2 uses
  %exitcond240.not.i.us = icmp eq i64 %indvars.iv.next238.i.us, %wide.trip.count.i
  br i1 %exitcond240.not.i.us, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph164.i.preheader.us, !llvm.loop !109

.lr.ph179.i.split:                                ; preds = %.lr.ph179.i
  %i.qd = icmp sgt i32 %5, 0
  br i1 %i.qd, label %._crit_edge165.i.preheader, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

._crit_edge165.i.preheader:                       ; preds = %.lr.ph179.i.split
  %exitcond236.not.i = icmp eq i32 %5, 1
  %exitcond236.not.i.1 = icmp eq i32 %5, 2
  br label %._crit_edge165.i

bb.g:                                             ; preds = %._crit_edge152.i, %.lr.ph156.i
  %indvars.iv233.i = phi i64 [ %i.in, %.lr.ph156.i ], [ %indvars.iv.next234.i, %._crit_edge152.i ] ; 2 uses
  %.15155.i = phi ptr [ %.10.lcssa.i, %.lr.ph156.i ], [ %.19.lcssa.i, %._crit_edge152.i ] ; 2 uses
  %i.qe = load ptr, ptr %0, align 8, !tbaa !9
  %i.qf = load i32, ptr %i.a, align 4, !tbaa !15
  %i.qg = sext i32 %i.qf to i64
  %i.qh = mul nsw i64 %i.qg, %i.ic
  %i.qi = load i64, ptr %i.id, align 8, !tbaa !16
  %i.qj = mul i64 %i.qh, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qj
  %i.ql = getelementptr i8, ptr %i.qk, i64 %indvars.iv233.i
  %i.qm = getelementptr i8, ptr %i.ql, i64 %i.ip  ; 2 uses
  br i1 %i.ie, label %.lr.ph133.i, label %._crit_edge134.i

.lr.ph133.i:                                      ; preds = %bb.g, %.lr.ph133.i
  %.0294131.i = phi i32 [ %i.ry, %.lr.ph133.i ], [ 0, %bb.g ]
  %.0295130.i = phi i32 [ %i.rq, %.lr.ph133.i ], [ 0, %bb.g ]
  %.0296129.i = phi i32 [ %i.sb, %.lr.ph133.i ], [ 0, %bb.g ]
  %.0298128.i = phi ptr [ %i.sa, %.lr.ph133.i ], [ %i.qm, %bb.g ] ; 6 uses
  %.16127.i = phi ptr [ %i.rz, %.lr.ph133.i ], [ %.15155.i, %bb.g ] ; 11 uses
  %i.qn = load i8, ptr %.0298128.i, align 1, !tbaa !17 ; 2 uses
  store i8 %i.qn, ptr %.16127.i, align 1, !tbaa !17
  %i.qo = getelementptr inbounds i8, ptr %.0298128.i, i64 %i.if ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !17  ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.16127.i, i64 1
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !17
  %i.qr = getelementptr inbounds i8, ptr %.0298128.i, i64 %i.ih ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !17  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.16127.i, i64 2
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !17
  %i.qu = getelementptr inbounds i8, ptr %.0298128.i, i64 %i.ij ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !17  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.16127.i, i64 3
  store i8 %i.qv, ptr %i.qw, align 1, !tbaa !17
  %i.qx = getelementptr inbounds nuw i8, ptr %.0298128.i, i64 1
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !17  ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.16127.i, i64 4
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !17
  %i.ra = getelementptr i8, ptr %i.qo, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !17  ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.16127.i, i64 5
  store i8 %i.rb, ptr %i.rc, align 1, !tbaa !17
  %i.rd = getelementptr i8, ptr %i.qr, i64 1
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !17  ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.16127.i, i64 6
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !17
  %i.rg = getelementptr i8, ptr %i.qu, i64 1
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !17  ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.16127.i, i64 7
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !17
  %i.rj = sext i8 %i.qn to i32
  %i.rk = add nsw i32 %.0295130.i, %i.rj
  %i.rl = sext i8 %i.qp to i32
  %i.rm = add nsw i32 %i.rk, %i.rl
  %i.rn = sext i8 %i.qs to i32
  %i.ro = add nsw i32 %i.rm, %i.rn
  %i.rp = sext i8 %i.qv to i32
  %i.rq = add nsw i32 %i.ro, %i.rp                ; 2 uses
  %i.rr = sext i8 %i.qy to i32
  %i.rs = add nsw i32 %.0294131.i, %i.rr
  %i.rt = sext i8 %i.rb to i32
  %i.ru = add nsw i32 %i.rs, %i.rt
  %i.rv = sext i8 %i.re to i32
  %i.rw = add nsw i32 %i.ru, %i.rv
  %i.rx = sext i8 %i.rh to i32
  %i.ry = add nsw i32 %i.rw, %i.rx                ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.16127.i, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds i8, ptr %.0298128.i, i64 %i.il ; 2 uses
  %i.sb = add nuw nsw i32 %.0296129.i, 4          ; 2 uses
  %i.sc = or disjoint i32 %i.sb, 3
  %i.sd = icmp slt i32 %i.sc, %5
  br i1 %i.sd, label %.lr.ph133.i, label %bb.h, !llvm.loop !110

bb.h:                                             ; preds = %.lr.ph133.i
  %i.se = mul nsw i32 %i.rq, 127
  %i.sf = mul nsw i32 %i.ry, 127
  store i32 %i.se, ptr %i.rz, align 4, !tbaa !49
  %i.sg = getelementptr inbounds nuw i8, ptr %.16127.i, i64 12
  store i32 %i.sf, ptr %i.sg, align 4, !tbaa !49
  %i.sh = getelementptr inbounds nuw i8, ptr %.16127.i, i64 16
  br label %._crit_edge134.i

._crit_edge134.i:                                 ; preds = %bb.h, %bb.g
  %.0296.lcssa286.i = phi i32 [ %i.im, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.0298.lcssa284.i = phi ptr [ %i.sa, %bb.h ], [ %i.qm, %bb.g ] ; 2 uses
  %.17.i = phi ptr [ %i.sh, %bb.h ], [ %.15155.i, %bb.g ] ; 2 uses
  %i.si = or disjoint i32 %.0296.lcssa286.i, 1
  %i.sj = icmp slt i32 %i.si, %5
  br i1 %i.sj, label %.lr.ph144.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %.lr.ph144.i, %._crit_edge134.i
  %.18.lcssa.i = phi ptr [ %.17.i, %._crit_edge134.i ], [ %i.tf, %.lr.ph144.i ] ; 3 uses
  %.1299.lcssa.i = phi ptr [ %.0298.lcssa284.i, %._crit_edge134.i ], [ %i.tg, %.lr.ph144.i ] ; 2 uses
  %.1297.lcssa.i = phi i32 [ %.0296.lcssa286.i, %._crit_edge134.i ], [ %i.th, %.lr.ph144.i ] ; 5 uses
  %i.sk = icmp slt i32 %.1297.lcssa.i, %5
  br i1 %i.sk, label %.lr.ph151.i.preheader, label %._crit_edge152.i

.lr.ph151.i.preheader:                            ; preds = %.preheader34.i
  %i.sl = sub i32 %5, %.1297.lcssa.i
  %xtraiter192 = and i32 %i.sl, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph151.i.prol.loopexit, label %.lr.ph151.i.prol

.lr.ph151.i.prol:                                 ; preds = %.lr.ph151.i.preheader, %.lr.ph151.i.prol
  %.2150.i.prol = phi i32 [ %i.ss, %.lr.ph151.i.prol ], [ %.1297.lcssa.i, %.lr.ph151.i.preheader ]
  %.2300149.i.prol = phi ptr [ %i.sr, %.lr.ph151.i.prol ], [ %.1299.lcssa.i, %.lr.ph151.i.preheader ] ; 3 uses
  %.19148.i.prol = phi ptr [ %i.sq, %.lr.ph151.i.prol ], [ %.18.lcssa.i, %.lr.ph151.i.preheader ] ; 3 uses
  %prol.iter194 = phi i32 [ %prol.iter194.next, %.lr.ph151.i.prol ], [ 0, %.lr.ph151.i.preheader ]
  %i.sm = load i8, ptr %.2300149.i.prol, align 1, !tbaa !17
  store i8 %i.sm, ptr %.19148.i.prol, align 1, !tbaa !17
  %i.sn = getelementptr inbounds nuw i8, ptr %.2300149.i.prol, i64 1
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !17
  %i.sp = getelementptr inbounds nuw i8, ptr %.19148.i.prol, i64 1
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !17
  %i.sq = getelementptr inbounds nuw i8, ptr %.19148.i.prol, i64 2 ; 3 uses
  %i.sr = getelementptr inbounds i8, ptr %.2300149.i.prol, i64 %i.if ; 2 uses
  %i.ss = add nuw nsw i32 %.2150.i.prol, 1        ; 2 uses
  %prol.iter194.next = add i32 %prol.iter194, 1   ; 2 uses
  %prol.iter194.cmp.not = icmp eq i32 %prol.iter194.next, %xtraiter192
  br i1 %prol.iter194.cmp.not, label %.lr.ph151.i.prol.loopexit, label %.lr.ph151.i.prol, !llvm.loop !111

.lr.ph151.i.prol.loopexit:                        ; preds = %.lr.ph151.i.prol, %.lr.ph151.i.preheader
  %.lcssa157.unr = phi ptr [ poison, %.lr.ph151.i.preheader ], [ %i.sq, %.lr.ph151.i.prol ]
  %.2150.i.unr = phi i32 [ %.1297.lcssa.i, %.lr.ph151.i.preheader ], [ %i.ss, %.lr.ph151.i.prol ]
  %.2300149.i.unr = phi ptr [ %.1299.lcssa.i, %.lr.ph151.i.preheader ], [ %i.sr, %.lr.ph151.i.prol ]
  %.19148.i.unr = phi ptr [ %.18.lcssa.i, %.lr.ph151.i.preheader ], [ %i.sq, %.lr.ph151.i.prol ]
  %i.st = sub i32 %.1297.lcssa.i, %5
  %i.su = icmp ugt i32 %i.st, -4
  br i1 %i.su, label %._crit_edge152.i, label %.lr.ph151.i

.lr.ph144.i:                                      ; preds = %._crit_edge134.i, %.lr.ph144.i
  %.1297142.i = phi i32 [ %i.th, %.lr.ph144.i ], [ %.0296.lcssa286.i, %._crit_edge134.i ]
  %.1299141.i = phi ptr [ %i.tg, %.lr.ph144.i ], [ %.0298.lcssa284.i, %._crit_edge134.i ] ; 4 uses
  %.18140.i = phi ptr [ %i.tf, %.lr.ph144.i ], [ %.17.i, %._crit_edge134.i ] ; 5 uses
  %i.sv = load i8, ptr %.1299141.i, align 1, !tbaa !17
  store i8 %i.sv, ptr %.18140.i, align 1, !tbaa !17
  %i.sw = getelementptr inbounds i8, ptr %.1299141.i, i64 %i.if ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !17
  %i.sy = getelementptr inbounds nuw i8, ptr %.18140.i, i64 1
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !17
  %i.sz = getelementptr inbounds nuw i8, ptr %.1299141.i, i64 1
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !17
  %i.tb = getelementptr inbounds nuw i8, ptr %.18140.i, i64 2
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !17
  %i.tc = getelementptr i8, ptr %i.sw, i64 1
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !17
  %i.te = getelementptr inbounds nuw i8, ptr %.18140.i, i64 3
  store i8 %i.td, ptr %i.te, align 1, !tbaa !17
  %i.tf = getelementptr inbounds nuw i8, ptr %.18140.i, i64 4 ; 2 uses
  %i.tg = getelementptr inbounds i8, ptr %.1299141.i, i64 %i.ih ; 2 uses
  %i.th = add nuw nsw i32 %.1297142.i, 2          ; 3 uses
  %i.ti = or disjoint i32 %i.th, 1
  %i.tj = icmp slt i32 %i.ti, %5
  br i1 %i.tj, label %.lr.ph144.i, label %.preheader34.i, !llvm.loop !112

.lr.ph151.i:                                      ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i
  %.2150.i = phi i32 [ %i.ui, %.lr.ph151.i ], [ %.2150.i.unr, %.lr.ph151.i.prol.loopexit ]
  %.2300149.i = phi ptr [ %i.uh, %.lr.ph151.i ], [ %.2300149.i.unr, %.lr.ph151.i.prol.loopexit ] ; 3 uses
  %.19148.i = phi ptr [ %i.ug, %.lr.ph151.i ], [ %.19148.i.unr, %.lr.ph151.i.prol.loopexit ] ; 9 uses
  %i.tk = load i8, ptr %.2300149.i, align 1, !tbaa !17
  store i8 %i.tk, ptr %.19148.i, align 1, !tbaa !17
  %i.tl = getelementptr inbounds nuw i8, ptr %.2300149.i, i64 1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !17
  %i.tn = getelementptr inbounds nuw i8, ptr %.19148.i, i64 1
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !17
  %i.to = getelementptr inbounds nuw i8, ptr %.19148.i, i64 2
  %i.tp = getelementptr inbounds i8, ptr %.2300149.i, i64 %i.if ; 3 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !17
  store i8 %i.tq, ptr %i.to, align 1, !tbaa !17
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !17
  %i.tt = getelementptr inbounds nuw i8, ptr %.19148.i, i64 3
  store i8 %i.ts, ptr %i.tt, align 1, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %.19148.i, i64 4
  %i.tv = getelementptr inbounds i8, ptr %i.tp, i64 %i.if ; 3 uses
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !17
  store i8 %i.tw, ptr %i.tu, align 1, !tbaa !17
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %.19148.i, i64 5
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !17
  %i.ua = getelementptr inbounds nuw i8, ptr %.19148.i, i64 6
  %i.ub = getelementptr inbounds i8, ptr %i.tv, i64 %i.if ; 3 uses
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !17
  store i8 %i.uc, ptr %i.ua, align 1, !tbaa !17
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !17
  %i.uf = getelementptr inbounds nuw i8, ptr %.19148.i, i64 7
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !17
  %i.ug = getelementptr inbounds nuw i8, ptr %.19148.i, i64 8 ; 2 uses
  %i.uh = getelementptr inbounds i8, ptr %i.ub, i64 %i.if
  %i.ui = add nuw nsw i32 %.2150.i, 4             ; 2 uses
  %exitcond232.not.i.3 = icmp eq i32 %i.ui, %5
  br i1 %exitcond232.not.i.3, label %._crit_edge152.i, label %.lr.ph151.i, !llvm.loop !113

._crit_edge152.i:                                 ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i, %.preheader34.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader34.i ], [ %.lcssa157.unr, %.lr.ph151.i.prol.loopexit ], [ %i.ug, %.lr.ph151.i ] ; 2 uses
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 2 ; 3 uses
  %i.uj = icmp slt i64 %indvars.iv.next234.i, %invariant.op333.i
  br i1 %i.uj, label %bb.g, label %.preheader.loopexit.i, !llvm.loop !114

._crit_edge165.i:                                 ; preds = %._crit_edge165.i.preheader, %._crit_edge175.i.loopexit
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %._crit_edge175.i.loopexit ], [ %i.nn, %._crit_edge165.i.preheader ] ; 2 uses
  %.20178.i = phi ptr [ %.lcssa149, %._crit_edge175.i.loopexit ], [ %.15.lcssa.i, %._crit_edge165.i.preheader ] ; 4 uses
  %i.uk = load ptr, ptr %0, align 8, !tbaa !9
  %i.ul = load i32, ptr %i.a, align 4, !tbaa !15
  %i.um = sext i32 %i.ul to i64
  %i.un = mul nsw i64 %i.um, %i.nc
  %i.uo = load i64, ptr %i.nd, align 8, !tbaa !16
  %i.up = mul i64 %i.un, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 %indvars.iv237.i
  %i.us = getelementptr i8, ptr %i.ur, i64 %i.no  ; 2 uses
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !17
  store i8 %i.ut, ptr %.20178.i, align 1, !tbaa !17
  %i.uu = getelementptr inbounds nuw i8, ptr %.20178.i, i64 1 ; 2 uses
  br i1 %exitcond236.not.i, label %._crit_edge175.i.loopexit, label %.lr.ph174.i.1

.lr.ph174.i.1:                                    ; preds = %._crit_edge165.i
  %i.uv = getelementptr inbounds i8, ptr %i.us, i64 %i.nf ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !17
  store i8 %i.uw, ptr %i.uu, align 1, !tbaa !17
  %i.ux = getelementptr inbounds nuw i8, ptr %.20178.i, i64 2 ; 2 uses
  br i1 %exitcond236.not.i.1, label %._crit_edge175.i.loopexit, label %.lr.ph174.i.2

.lr.ph174.i.2:                                    ; preds = %.lr.ph174.i.1
  %i.uy = getelementptr inbounds i8, ptr %i.uv, i64 %i.nf
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !17
  store i8 %i.uz, ptr %i.ux, align 1, !tbaa !17
  %i.va = getelementptr inbounds nuw i8, ptr %.20178.i, i64 3
  br label %._crit_edge175.i.loopexit

._crit_edge175.i.loopexit:                        ; preds = %.lr.ph174.i.2, %.lr.ph174.i.1, %._crit_edge165.i
  %.lcssa149 = phi ptr [ %i.uu, %._crit_edge165.i ], [ %i.ux, %.lr.ph174.i.1 ], [ %i.va, %.lr.ph174.i.2 ]
  %indvars.iv.next238.i = add nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count.i
  br i1 %exitcond240.not.i, label %_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %._crit_edge165.i, !llvm.loop !109

_ZN4ncnnL26transpose_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge175.i.loopexit, %._crit_edge175.i.us, %.lr.ph179.i.split, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn27pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.a = icmp sgt i32 %3, 15
  br i1 %i.a, label %.lr.ph40.i, label %.preheader17.i

.lr.ph40.i:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = sext i32 %4 to i64
  %i.e = icmp sgt i32 %5, 3
  %i.f = and i32 %5, -4                           ; 2 uses
  %i.g = zext nneg i32 %3 to i64
  %i.h = sext i32 %2 to i64
  %i.i = add i32 %5, -4                           ; 2 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %xtraiter = and i32 %i.k, 3                     ; 3 uses
  %i.l = icmp ult i32 %i.i, 12
  %unroll_iter = and i32 %i.k, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod386 = icmp ne i32 %xtraiter, 0
  br label %bb.b

.preheader17.loopexit.i:                          ; preds = %._crit_edge.i
  %i.m = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %.preheader17.loopexit.i, %bb.a
  %.0211.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.m, %.preheader17.loopexit.i ] ; 3 uses
  %.0208.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.3.lcssa.i, %.preheader17.loopexit.i ] ; 2 uses
  %i.n = or disjoint i32 %.0211.lcssa.i, 7
  %i.o = icmp slt i32 %i.n, %3
  br i1 %i.o, label %.lr.ph66.i, label %.preheader14.i

.lr.ph66.i:                                       ; preds = %.preheader17.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = sext i32 %4 to i64
  %i.s = icmp sgt i32 %5, 3
  %i.t = and i32 %5, -4                           ; 2 uses
  %i.u = zext nneg i32 %.0211.lcssa.i to i64
  %i.v = sext i32 %3 to i64
  %i.w = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.v, -7
  %i.x = add i32 %5, -4                           ; 2 uses
  %i.y = lshr i32 %i.x, 2
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %xtraiter389 = and i32 %i.z, 3                  ; 3 uses
  %i.aa = icmp ult i32 %i.x, 12
  %unroll_iter395 = and i32 %i.z, 2147483644
  %lcmp.mod391.not = icmp eq i32 %xtraiter389, 0
  %lcmp.mod394 = icmp ne i32 %xtraiter389, 0
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph40.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph40.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.020838.i = phi ptr [ %.val, %.lr.ph40.i ], [ %.3.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ab = add nsw i64 %indvars.iv.i, %i.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ab, %i.ae
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 3 uses
  %i.ak = insertelement <16 x i32> poison, i32 %i.ad, i64 0
  %i.al = shufflevector <16 x i32> %i.ak, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.am = mul <16 x i32> %i.al, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 11 uses
  br i1 %i.e, label %.lr.ph.i.preheader, label %.preheader19.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader19.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader19.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader19.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.120922.i.epil.init = phi ptr [ %.020838.i, %.lr.ph.i.preheader ], [ %i.bm, %.preheader19.i.loopexit.unr-lcssa ]
  %.021621.i.epil.init = phi ptr [ %i.aj, %.lr.ph.i.preheader ], [ %i.bn, %.preheader19.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.120922.i.epil = phi ptr [ %i.aq, %.lr.ph.i.epil ], [ %.120922.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.021621.i.epil = phi ptr [ %i.ar, %.lr.ph.i.epil ], [ %.021621.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.021621.i.epil, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.ao = bitcast <16 x i32> %i.an to <64 x i8>
  %i.ap = add <64 x i8> %i.ao, splat (i8 127)
  store <64 x i8> %i.ap, ptr %.120922.i.epil, align 1, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %.120922.i.epil, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.021621.i.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader19.i, label %.lr.ph.i.epil, !llvm.loop !115

.preheader19.i:                                   ; preds = %.preheader19.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.0225.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.f, %.lr.ph.i.epil ], [ %i.f, %.preheader19.i.loopexit.unr-lcssa ] ; 3 uses
  %.0216.lcssa.i = phi ptr [ %i.aj, %bb.b ], [ %i.bn, %.preheader19.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ] ; 2 uses
  %.1209.lcssa.i = phi ptr [ %.020838.i, %bb.b ], [ %i.bm, %.preheader19.i.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ] ; 2 uses
  %i.as = or disjoint i32 %.0225.lcssa.i, 1
  %i.at = icmp slt i32 %i.as, %5
  br i1 %i.at, label %.lr.ph28.i, label %.preheader18.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.120922.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %.020838.i, %.lr.ph.i.preheader ] ; 5 uses
  %.021621.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.au = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.021621.i, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.av = bitcast <16 x i32> %i.au to <64 x i8>
  %i.aw = add <64 x i8> %i.av, splat (i8 127)
  store <64 x i8> %i.aw, ptr %.120922.i, align 1, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.120922.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.021621.i, i64 4
  %i.az = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ay, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.ba = bitcast <16 x i32> %i.az to <64 x i8>
  %i.bb = add <64 x i8> %i.ba, splat (i8 127)
  store <64 x i8> %i.bb, ptr %i.ax, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.120922.i, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %.021621.i, i64 8
  %i.be = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bd, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.bf = bitcast <16 x i32> %i.be to <64 x i8>
  %i.bg = add <64 x i8> %i.bf, splat (i8 127)
  store <64 x i8> %i.bg, ptr %i.bc, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.120922.i, i64 192
  %i.bi = getelementptr inbounds nuw i8, ptr %.021621.i, i64 12
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bi, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.bk = bitcast <16 x i32> %i.bj to <64 x i8>
  %i.bl = add <64 x i8> %i.bk, splat (i8 127)
  store <64 x i8> %i.bl, ptr %i.bh, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.120922.i, i64 256 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.021621.i, i64 16 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader19.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !116

.preheader18.i:                                   ; preds = %.lr.ph28.i, %.preheader19.i
  %.1226.lcssa.i = phi i32 [ %.0225.lcssa.i, %.preheader19.i ], [ %i.cb, %.lr.ph28.i ] ; 5 uses
  %.1217.lcssa.i = phi ptr [ %.0216.lcssa.i, %.preheader19.i ], [ %i.ca, %.lr.ph28.i ] ; 2 uses
  %.2210.lcssa.i = phi ptr [ %.1209.lcssa.i, %.preheader19.i ], [ %i.bz, %.lr.ph28.i ] ; 3 uses
  %i.bo = icmp slt i32 %.1226.lcssa.i, %5
  br i1 %i.bo, label %.lr.ph35.i.preheader, label %._crit_edge.i

.lr.ph35.i.preheader:                             ; preds = %.preheader18.i
  %i.bp = sub i32 %5, %.1226.lcssa.i
  %xtraiter387 = and i32 %i.bp, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i32 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol

.lr.ph35.i.prol:                                  ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i.prol
  %.334.i.prol = phi ptr [ %i.bs, %.lr.ph35.i.prol ], [ %.2210.lcssa.i, %.lr.ph35.i.preheader ] ; 2 uses
  %.221833.i.prol = phi ptr [ %i.bt, %.lr.ph35.i.prol ], [ %.1217.lcssa.i, %.lr.ph35.i.preheader ] ; 2 uses
  %.222732.i.prol = phi i32 [ %i.bu, %.lr.ph35.i.prol ], [ %.1226.lcssa.i, %.lr.ph35.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph35.i.prol ], [ 0, %.lr.ph35.i.preheader ]
  %i.bq = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.221833.i.prol, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.br = trunc <16 x i32> %i.bq to <16 x i8>
  store <16 x i8> %i.br, ptr %.334.i.prol, align 16, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.334.i.prol, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.221833.i.prol, i64 1 ; 2 uses
  %i.bu = add nuw nsw i32 %.222732.i.prol, 1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter387
  br i1 %prol.iter.cmp.not, label %.lr.ph35.i.prol.loopexit, label %.lr.ph35.i.prol, !llvm.loop !117

.lr.ph35.i.prol.loopexit:                         ; preds = %.lr.ph35.i.prol, %.lr.ph35.i.preheader
  %.lcssa383.unr = phi ptr [ poison, %.lr.ph35.i.preheader ], [ %i.bs, %.lr.ph35.i.prol ]
  %.334.i.unr = phi ptr [ %.2210.lcssa.i, %.lr.ph35.i.preheader ], [ %i.bs, %.lr.ph35.i.prol ]
  %.221833.i.unr = phi ptr [ %.1217.lcssa.i, %.lr.ph35.i.preheader ], [ %i.bt, %.lr.ph35.i.prol ]
  %.222732.i.unr = phi i32 [ %.1226.lcssa.i, %.lr.ph35.i.preheader ], [ %i.bu, %.lr.ph35.i.prol ]
  %i.bv = sub i32 %.1226.lcssa.i, %5
  %i.bw = icmp ugt i32 %i.bv, -4
  br i1 %i.bw, label %._crit_edge.i, label %.lr.ph35.i

.lr.ph28.i:                                       ; preds = %.preheader19.i, %.lr.ph28.i
  %.221027.i = phi ptr [ %i.bz, %.lr.ph28.i ], [ %.1209.lcssa.i, %.preheader19.i ] ; 2 uses
  %.121726.i = phi ptr [ %i.ca, %.lr.ph28.i ], [ %.0216.lcssa.i, %.preheader19.i ] ; 2 uses
  %.122625.i = phi i32 [ %i.cb, %.lr.ph28.i ], [ %.0225.lcssa.i, %.preheader19.i ]
  %i.bx = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.121726.i, <16 x i32> %i.am, <16 x i1> splat (i1 true), i32 1)
  %i.by = trunc <16 x i32> %i.bx to <16 x i16>
  store <16 x i16> %i.by, ptr %.221027.i, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.221027.i, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.121726.i, i64 2 ; 2 uses
  %i.cb = add nuw nsw i32 %.122625.i, 2           ; 3 uses
  %i.cc = or disjoint i32 %i.cb, 1
  %i.cd = icmp slt i32 %i.cc, %5
  br i1 %i.cd, label %.lr.ph28.i, label %.preheader18.i, !llvm.loop !118

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.prol.loopexit, %.lr.ph35.i
  %.334.i = phi ptr [ %i.cs, %.lr.ph35.i ], [ %.334.i.unr, %.lr.ph35.i.prol.loopexit ] ; 5 uses
  %.221833.i = phi ptr [ %i.ct, %.lr.ph35.i ], [ %.221833.i.unr, %.lr.ph35.i.prol.loopexit ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn27pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii:bb.a
  %i.lf = add nuw nsw i32 %.222185.i, 4           ; 2 uses
  %exitcond188.not.i.3 = icmp eq i32 %i.lf, %5
  br i1 %exitcond188.not.i.3, label %._crit_edge88.i, label %.lr.ph87.i, !llvm.loop !131

._crit_edge88.i:                                  ; preds = %.lr.ph87.i.prol.loopexit, %.lr.ph87.i, %.preheader12.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader12.i ], [ %.lcssa371.unr, %.lr.ph87.i.prol.loopexit ], [ %i.ld, %.lr.ph87.i ] ; 2 uses
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 4 ; 3 uses
  %i.lg = icmp slt i64 %indvars.iv.next190.i, %invariant.op242.i
  br i1 %i.lg, label %bb.d, label %.preheader11.loopexit.i, !llvm.loop !132

.preheader8.loopexit.i:                           ; preds = %._crit_edge119.i
  %i.lh = trunc nsw i64 %indvars.iv.next194.i to i32
  br label %.preheader8.i

.preheader8.i:                                    ; preds = %.preheader8.loopexit.i, %.preheader11.i
  %.3214.lcssa.i = phi i32 [ %.2213.lcssa.i, %.preheader11.i ], [ %i.lh, %.preheader8.loopexit.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader11.i ], [ %.15.lcssa.i, %.preheader8.loopexit.i ] ; 2 uses
  %i.li = icmp slt i32 %.3214.lcssa.i, %3
  br i1 %i.li, label %.lr.ph142.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph142.i:                                      ; preds = %.preheader8.i
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ll = sext i32 %4 to i64                      ; 4 uses
  %i.lm = icmp sgt i32 %5, 3
  br i1 %i.lm, label %.lr.ph130.us.preheader.i, label %.lr.ph142.split.i

.lr.ph130.us.preheader.i:                         ; preds = %.lr.ph142.i
  %i.ln = and i32 %5, 2147483644                  ; 7 uses
  %i.lo = sext i32 %.3214.lcssa.i to i64          ; 2 uses
  %i.lp = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count204.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.ln, %5
  %i.lq = add nsw i64 %i.lo, %i.lp
  %i.lr = or disjoint i32 %i.ln, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.lr)
  %i.ls = xor i32 %i.ln, -1
  %i.lt = add nsw i32 %smax, %i.ls                ; 3 uses
  %i.lu = zext i32 %i.lt to i64
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 5 uses
  %i.lw = add nsw i32 %5, -4                      ; 4 uses
  %i.lx = and i32 %i.lw, -4
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %i.lz = lshr i32 %i.lw, 2
  %narrow351.a = add nuw nsw i32 %i.lz, 1
  %i.ma = zext nneg i32 %narrow351.a to i64       ; 5 uses
  %min.iters.check306 = icmp ult i32 %i.lw, 12
  %min.iters.check308 = icmp ult i32 %i.lw, 124
  %i.mb = and i64 %i.ma, 28
  %n.vec310 = and i64 %i.ma, 2147483616           ; 5 uses
  %i.mc = trunc nuw nsw i64 %n.vec310 to i32
  %i.md = shl i32 %i.mc, 2
  %i.me = shl nuw nsw i64 %n.vec310, 2            ; 2 uses
  %cmp.n323 = icmp eq i64 %n.vec310, %i.ma
  %min.epilog.iters.check331 = icmp eq i64 %i.mb, 0
  %n.vec333 = and i64 %i.ma, 2147483644           ; 4 uses
  %i.mf = trunc nuw nsw i64 %n.vec333 to i32
  %i.mg = shl i32 %i.mf, 2
  %i.mh = shl nuw nsw i64 %n.vec333, 2            ; 2 uses
  %cmp.n346 = icmp eq i64 %n.vec333, %i.ma
  %min.iters.check261 = icmp ult i32 %i.lt, 15
  %min.iters.check263 = icmp ult i32 %i.lt, 255
  %i.mi = and i64 %i.lv, 240
  %n.vec265 = and i64 %i.lv, 8589934336           ; 6 uses
  %i.mj = trunc i64 %n.vec265 to i32
  %i.mk = add i32 %i.ln, %i.mj
  %cmp.n276 = icmp eq i64 %i.lv, %n.vec265
  %min.epilog.iters.check284 = icmp eq i64 %i.mi, 0
  %n.vec286 = and i64 %i.lv, 8589934576           ; 5 uses
  %i.ml = trunc i64 %n.vec286 to i32
  %i.mm = add i32 %i.ln, %i.ml
  %cmp.n294 = icmp eq i64 %i.lv, %n.vec286
  br label %iter.check328

iter.check328:                                    ; preds = %._crit_edge138.us.i, %.lr.ph130.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge138.us.i ], [ 0, %.lr.ph130.us.preheader.i ] ; 2 uses
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i, %._crit_edge138.us.i ], [ %i.lo, %.lr.ph130.us.preheader.i ] ; 2 uses
  %.16141.us.i = phi ptr [ %.18.lcssa.us.i, %._crit_edge138.us.i ], [ %.12.lcssa.i, %.lr.ph130.us.preheader.i ] ; 9 uses
  %.16141.us.i259 = ptrtoaddr ptr %.16141.us.i to i64
  %i.mn = add i64 %i.lq, %indvar
  %i.mo = add i64 %indvars.iv201.i, %i.lp
  %i.mp = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.mq = ptrtoaddr ptr %i.mp to i64
  %i.mr = load i32, ptr %i.lj, align 4, !tbaa !15
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = mul i64 %i.mo, %i.ms
  %i.mu = load i64, ptr %i.lk, align 8, !tbaa !16 ; 2 uses
  %i.mv = mul i64 %i.mt, %i.mu                    ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mp, i64 %i.mv
  %i.mx = getelementptr i8, ptr %i.mw, i64 %i.ll  ; 7 uses
  br i1 %min.iters.check306, label %vec.epilog.scalar.ph329.preheader, label %vector.memcheck298

vector.memcheck298:                               ; preds = %iter.check328
  %i.my = getelementptr i8, ptr %.16141.us.i, i64 %i.ly
  %scevgep299 = getelementptr i8, ptr %i.my, i64 4
  %i.mz = getelementptr i8, ptr %i.mp, i64 %i.ly
  %i.na = getelementptr i8, ptr %i.mz, i64 %i.ll
  %scevgep300 = getelementptr i8, ptr %i.na, i64 4
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.mv
  %bound0302 = icmp ult ptr %.16141.us.i, %scevgep301
  %bound1303 = icmp ult ptr %i.mx, %scevgep299
  %found.conflict304 = and i1 %bound0302, %bound1303
  br i1 %found.conflict304, label %vec.epilog.scalar.ph329.preheader, label %vector.main.loop.iter.check307

vector.main.loop.iter.check307:                   ; preds = %vector.memcheck298
  br i1 %min.iters.check308, label %vec.epilog.ph332, label %vector.ph309

vector.ph309:                                     ; preds = %vector.main.loop.iter.check307
  %i.nb = getelementptr i8, ptr %i.mx, i64 %i.me  ; 2 uses
  %i.nc = getelementptr i8, ptr %.16141.us.i, i64 %i.me ; 2 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next321, %vector.body311 ] ; 2 uses
  %i.nd = shl i64 %index312, 2                    ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.mx, i64 %i.nd
  %next.gep314 = getelementptr i8, ptr %.16141.us.i, i64 %i.nd
  %wide.vec315 = load <128 x i8>, ptr %next.gep313, align 1, !tbaa !17, !alias.scope !133
  %interleaved.vec320 = add <128 x i8> %wide.vec315, splat (i8 127)
  store <128 x i8> %interleaved.vec320, ptr %next.gep314, align 1, !tbaa !17, !alias.scope !136, !noalias !133
  %index.next321 = add nuw i64 %index312, 32      ; 2 uses
  %i.ne = icmp eq i64 %index.next321, %n.vec310
  br i1 %i.ne, label %middle.block322, label %vector.body311, !llvm.loop !138

middle.block322:                                  ; preds = %vector.body311
  br i1 %cmp.n323, label %..preheader_crit_edge.us.i, label %vec.epilog.iter.check330

vec.epilog.iter.check330:                         ; preds = %middle.block322
  br i1 %min.epilog.iters.check331, label %vec.epilog.scalar.ph329.preheader, label %vec.epilog.ph332, !prof !139

vec.epilog.ph332:                                 ; preds = %vector.main.loop.iter.check307, %vec.epilog.iter.check330
  %vec.epilog.resume.val324 = phi i64 [ %n.vec310, %vec.epilog.iter.check330 ], [ 0, %vector.main.loop.iter.check307 ]
  %i.nf = getelementptr i8, ptr %i.mx, i64 %i.mh  ; 2 uses
  %i.ng = getelementptr i8, ptr %.16141.us.i, i64 %i.mh ; 2 uses
  br label %vec.epilog.vector.body334

vec.epilog.vector.body334:                        ; preds = %vec.epilog.vector.body334, %vec.epilog.ph332
  %index335 = phi i64 [ %vec.epilog.resume.val324, %vec.epilog.ph332 ], [ %index.next344, %vec.epilog.vector.body334 ] ; 2 uses
  %i.nh = shl i64 %index335, 2                    ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.mx, i64 %i.nh
  %next.gep337 = getelementptr i8, ptr %.16141.us.i, i64 %i.nh
  %wide.vec338 = load <16 x i8>, ptr %next.gep336, align 1, !tbaa !17, !alias.scope !133
  %interleaved.vec343 = add <16 x i8> %wide.vec338, splat (i8 127)
  store <16 x i8> %interleaved.vec343, ptr %next.gep337, align 1, !tbaa !17, !alias.scope !136, !noalias !133
  %index.next344 = add nuw i64 %index335, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next344, %n.vec333
  br i1 %i.ni, label %vec.epilog.middle.block345, label %vec.epilog.vector.body334, !llvm.loop !140

vec.epilog.middle.block345:                       ; preds = %vec.epilog.vector.body334
  br i1 %cmp.n346, label %..preheader_crit_edge.us.i, label %vec.epilog.scalar.ph329.preheader

vec.epilog.scalar.ph329.preheader:                ; preds = %vector.memcheck298, %iter.check328, %vec.epilog.iter.check330, %vec.epilog.middle.block345
  %.0128.us.i.ph = phi i32 [ 0, %iter.check328 ], [ 0, %vector.memcheck298 ], [ %i.md, %vec.epilog.iter.check330 ], [ %i.mg, %vec.epilog.middle.block345 ]
  %.0198127.us.i.ph = phi ptr [ %i.mx, %iter.check328 ], [ %i.mx, %vector.memcheck298 ], [ %i.nb, %vec.epilog.iter.check330 ], [ %i.nf, %vec.epilog.middle.block345 ]
  %.17126.us.i.ph = phi ptr [ %.16141.us.i, %iter.check328 ], [ %.16141.us.i, %vector.memcheck298 ], [ %i.nc, %vec.epilog.iter.check330 ], [ %i.ng, %vec.epilog.middle.block345 ]
  br label %vec.epilog.scalar.ph329

vec.epilog.scalar.ph329:                          ; preds = %vec.epilog.scalar.ph329.preheader, %vec.epilog.scalar.ph329
  %.0128.us.i = phi i32 [ %i.nz, %vec.epilog.scalar.ph329 ], [ %.0128.us.i.ph, %vec.epilog.scalar.ph329.preheader ]
  %.0198127.us.i = phi ptr [ %i.ny, %vec.epilog.scalar.ph329 ], [ %.0198127.us.i.ph, %vec.epilog.scalar.ph329.preheader ] ; 5 uses
  %.17126.us.i = phi ptr [ %i.nx, %vec.epilog.scalar.ph329 ], [ %.17126.us.i.ph, %vec.epilog.scalar.ph329.preheader ] ; 5 uses
  %i.nj = load i8, ptr %.0198127.us.i, align 1, !tbaa !17
  %i.nk = add i8 %i.nj, 127
  store i8 %i.nk, ptr %.17126.us.i, align 1, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %.0198127.us.i, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !17
  %i.nn = add i8 %i.nm, 127
  %i.no = getelementptr inbounds nuw i8, ptr %.17126.us.i, i64 1
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %.0198127.us.i, i64 2
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !17
  %i.nr = add i8 %i.nq, 127
  %i.ns = getelementptr inbounds nuw i8, ptr %.17126.us.i, i64 2
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !17
  %i.nt = getelementptr inbounds nuw i8, ptr %.0198127.us.i, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !17
  %i.nv = add i8 %i.nu, 127
  %i.nw = getelementptr inbounds nuw i8, ptr %.17126.us.i, i64 3
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.17126.us.i, i64 4 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.0198127.us.i, i64 4 ; 2 uses
  %i.nz = add nuw nsw i32 %.0128.us.i, 4          ; 2 uses
  %i.oa = or disjoint i32 %i.nz, 3
  %i.ob = icmp slt i32 %i.oa, %5
  br i1 %i.ob, label %vec.epilog.scalar.ph329, label %..preheader_crit_edge.us.i, !llvm.loop !141

.lr.ph137.us.i:                                   ; preds = %.lr.ph137.us.i.preheader, %.lr.ph137.us.i
  %.1136.us.i = phi i32 [ %i.of, %.lr.ph137.us.i ], [ %.1136.us.i.ph, %.lr.ph137.us.i.preheader ]
  %.1199135.us.i = phi ptr [ %i.oe, %.lr.ph137.us.i ], [ %.1199135.us.i.ph, %.lr.ph137.us.i.preheader ] ; 2 uses
  %.18134.us.i = phi ptr [ %i.od, %.lr.ph137.us.i ], [ %.18134.us.i.ph, %.lr.ph137.us.i.preheader ] ; 2 uses
  %i.oc = load i8, ptr %.1199135.us.i, align 1, !tbaa !17
  store i8 %i.oc, ptr %.18134.us.i, align 1, !tbaa !17
  %i.od = getelementptr inbounds nuw i8, ptr %.18134.us.i, i64 1 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.1199135.us.i, i64 1
  %i.of = add nuw nsw i32 %.1136.us.i, 1          ; 2 uses
  %i.og = icmp slt i32 %i.of, %5
  br i1 %i.og, label %.lr.ph137.us.i, label %._crit_edge138.us.i, !llvm.loop !142

._crit_edge138.us.i:                              ; preds = %.lr.ph137.us.i, %middle.block275, %vec.epilog.middle.block293, %..preheader_crit_edge.us.i
  %.18.lcssa.us.i = phi ptr [ %.lcssa102, %..preheader_crit_edge.us.i ], [ %i.ow, %vec.epilog.middle.block293 ], [ %i.on, %middle.block275 ], [ %i.od, %.lr.ph137.us.i ]
  %indvars.iv.next202.i = add nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count204.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond205.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check328, !llvm.loop !143

..preheader_crit_edge.us.i:                       ; preds = %vec.epilog.scalar.ph329, %vec.epilog.middle.block345, %middle.block322
  %.lcssa102 = phi ptr [ %i.ng, %vec.epilog.middle.block345 ], [ %i.nc, %middle.block322 ], [ %i.nx, %vec.epilog.scalar.ph329 ] ; 7 uses
  %.lcssa = phi ptr [ %i.nf, %vec.epilog.middle.block345 ], [ %i.nb, %middle.block322 ], [ %i.ny, %vec.epilog.scalar.ph329 ] ; 6 uses
  br i1 %.not, label %._crit_edge138.us.i, label %iter.check281

iter.check281:                                    ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check261, label %.lr.ph137.us.i.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %iter.check281
  %i.oh = mul i64 %i.mn, %i.mu
  %i.oi = mul i64 %i.oh, %i.ms
  %i.oj = add i64 %i.oi, %i.ll
  %i.ok = add i64 %i.oj, %i.mq
  %i.ol = sub i64 %i.ok, %.16141.us.i259
  %diff.check = icmp ugt i64 %i.ol, -256
  br i1 %diff.check, label %.lr.ph137.us.i.preheader, label %vector.main.loop.iter.check262

vector.main.loop.iter.check262:                   ; preds = %vector.memcheck258
  br i1 %min.iters.check263, label %vec.epilog.ph285, label %vector.ph264

vector.ph264:                                     ; preds = %vector.main.loop.iter.check262
  %i.om = getelementptr i8, ptr %.lcssa, i64 %n.vec265
  %i.on = getelementptr i8, ptr %.lcssa102, i64 %n.vec265 ; 2 uses
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph264
  %index267 = phi i64 [ 0, %vector.ph264 ], [ %index.next274, %vector.body266 ] ; 3 uses
  %next.gep268 = getelementptr i8, ptr %.lcssa, i64 %index267 ; 4 uses
  %next.gep269 = getelementptr i8, ptr %.lcssa102, i64 %index267 ; 4 uses
  %i.oo = getelementptr i8, ptr %next.gep268, i64 64
  %i.op = getelementptr i8, ptr %next.gep268, i64 128
  %i.oq = getelementptr i8, ptr %next.gep268, i64 192
  %wide.load270 = load <64 x i8>, ptr %next.gep268, align 1, !tbaa !17
  %wide.load271 = load <64 x i8>, ptr %i.oo, align 1, !tbaa !17
  %wide.load272 = load <64 x i8>, ptr %i.op, align 1, !tbaa !17
  %wide.load273 = load <64 x i8>, ptr %i.oq, align 1, !tbaa !17
  %i.or = getelementptr i8, ptr %next.gep269, i64 64
  %i.os = getelementptr i8, ptr %next.gep269, i64 128
  %i.ot = getelementptr i8, ptr %next.gep269, i64 192
  store <64 x i8> %wide.load270, ptr %next.gep269, align 1, !tbaa !17
  store <64 x i8> %wide.load271, ptr %i.or, align 1, !tbaa !17
  store <64 x i8> %wide.load272, ptr %i.os, align 1, !tbaa !17
  store <64 x i8> %wide.load273, ptr %i.ot, align 1, !tbaa !17
  %index.next274 = add nuw i64 %index267, 256     ; 2 uses
  %i.ou = icmp eq i64 %index.next274, %n.vec265
  br i1 %i.ou, label %middle.block275, label %vector.body266, !llvm.loop !144

middle.block275:                                  ; preds = %vector.body266
  br i1 %cmp.n276, label %._crit_edge138.us.i, label %vec.epilog.iter.check283

vec.epilog.iter.check283:                         ; preds = %middle.block275
  br i1 %min.epilog.iters.check284, label %.lr.ph137.us.i.preheader, label %vec.epilog.ph285, !prof !51

vec.epilog.ph285:                                 ; preds = %vector.main.loop.iter.check262, %vec.epilog.iter.check283
  %vec.epilog.resume.val277 = phi i64 [ %n.vec265, %vec.epilog.iter.check283 ], [ 0, %vector.main.loop.iter.check262 ]
  %i.ov = getelementptr i8, ptr %.lcssa, i64 %n.vec286
  %i.ow = getelementptr i8, ptr %.lcssa102, i64 %n.vec286 ; 2 uses
  br label %vec.epilog.vector.body287

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287, %vec.epilog.ph285
  %index288 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph285 ], [ %index.next292, %vec.epilog.vector.body287 ] ; 3 uses
  %next.gep289 = getelementptr i8, ptr %.lcssa, i64 %index288
  %next.gep290 = getelementptr i8, ptr %.lcssa102, i64 %index288
  %wide.load291 = load <16 x i8>, ptr %next.gep289, align 1, !tbaa !17
  store <16 x i8> %wide.load291, ptr %next.gep290, align 1, !tbaa !17
  %index.next292 = add nuw i64 %index288, 16      ; 2 uses
  %i.ox = icmp eq i64 %index.next292, %n.vec286
  br i1 %i.ox, label %vec.epilog.middle.block293, label %vec.epilog.vector.body287, !llvm.loop !145

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body287
  br i1 %cmp.n294, label %._crit_edge138.us.i, label %.lr.ph137.us.i.preheader

.lr.ph137.us.i.preheader:                         ; preds = %vector.memcheck258, %iter.check281, %vec.epilog.iter.check283, %vec.epilog.middle.block293
  %.1136.us.i.ph = phi i32 [ %i.ln, %iter.check281 ], [ %i.ln, %vector.memcheck258 ], [ %i.mk, %vec.epilog.iter.check283 ], [ %i.mm, %vec.epilog.middle.block293 ]
  %.1199135.us.i.ph = phi ptr [ %.lcssa, %iter.check281 ], [ %.lcssa, %vector.memcheck258 ], [ %i.om, %vec.epilog.iter.check283 ], [ %i.ov, %vec.epilog.middle.block293 ]
  %.18134.us.i.ph = phi ptr [ %.lcssa102, %iter.check281 ], [ %.lcssa102, %vector.memcheck258 ], [ %i.on, %vec.epilog.iter.check283 ], [ %i.ow, %vec.epilog.middle.block293 ]
  br label %.lr.ph137.us.i

.lr.ph142.split.i:                                ; preds = %.lr.ph142.i
  %i.oy = icmp sgt i32 %5, 0
  br i1 %i.oy, label %.preheader.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph142.split.i
  %i.oz = sext i32 %.3214.lcssa.i to i64
  %i.pa = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond196.not.i = icmp eq i32 %5, 1
  %exitcond196.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.e:                                             ; preds = %._crit_edge119.i, %.lr.ph123.i
  %indvars.iv193.i = phi i64 [ %i.he, %.lr.ph123.i ], [ %indvars.iv.next194.i, %._crit_edge119.i ] ; 2 uses
  %.12122.i = phi ptr [ %.8.lcssa.i, %.lr.ph123.i ], [ %.15.lcssa.i, %._crit_edge119.i ] ; 8 uses
  %i.pb = add i64 %indvars.iv193.i, %i.hg         ; 2 uses
  %i.pc = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.pd = load i32, ptr %i.gz, align 4, !tbaa !15
  %i.pe = sext i32 %i.pd to i64
  %i.pf = load i64, ptr %i.ha, align 8, !tbaa !16
  %i.pg = mul i64 %i.pf, %i.pe                    ; 2 uses
  %i.ph = mul i64 %i.pg, %i.pb                    ; 2 uses
  %i.pi = getelementptr i8, ptr %i.pc, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 %i.hb  ; 6 uses
  %i.pk = add nsw i64 %i.pb, 1
  %i.pl = mul i64 %i.pg, %i.pk                    ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pc, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.hb  ; 6 uses
  br i1 %i.hc, label %.lr.ph100.i.preheader, label %.preheader10.i

.lr.ph100.i.preheader:                            ; preds = %bb.e
  br i1 %min.iters.check233, label %.lr.ph100.i.preheader357, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph100.i.preheader
  %i.po = getelementptr i8, ptr %.12122.i, i64 %i.hm
  %scevgep222 = getelementptr i8, ptr %i.po, i64 8 ; 2 uses
  %i.pp = getelementptr i8, ptr %i.pc, i64 %i.hn
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.hb
  %scevgep223 = getelementptr i8, ptr %i.pq, i64 4 ; 2 uses
  %scevgep224 = getelementptr i8, ptr %scevgep223, i64 %i.pl
  %scevgep225 = getelementptr i8, ptr %scevgep223, i64 %i.ph
  %bound0226 = icmp ult ptr %.12122.i, %scevgep224
  %bound1227 = icmp ult ptr %i.pn, %scevgep222
  %found.conflict228 = and i1 %bound0226, %bound1227
  %bound0229 = icmp ult ptr %.12122.i, %scevgep225
  %bound1230 = icmp ult ptr %i.pj, %scevgep222
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %found.conflict228, %found.conflict231
  br i1 %conflict.rdx232, label %.lr.ph100.i.preheader357, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck221
  %i.pr = getelementptr i8, ptr %i.pn, i64 %i.ht  ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pj, i64 %i.ht  ; 2 uses
  %i.pt = getelementptr i8, ptr %.12122.i, i64 %i.hu ; 2 uses
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next252, %vector.body236 ] ; 3 uses
  %i.pu = shl i64 %index237, 2                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.pn, i64 %i.pu
  %next.gep239 = getelementptr i8, ptr %i.pj, i64 %i.pu
  %i.pv = shl i64 %index237, 3
  %next.gep240 = getelementptr i8, ptr %.12122.i, i64 %i.pv
  %wide.vec241 = load <16 x i8>, ptr %next.gep239, align 1, !tbaa !17, !alias.scope !146
  %wide.vec246 = load <16 x i8>, ptr %next.gep238, align 1, !tbaa !17, !alias.scope !149
  %i.pw = shufflevector <16 x i8> %wide.vec241, <16 x i8> %wide.vec246, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec251 = add <32 x i8> %i.pw, splat (i8 127)
  store <32 x i8> %interleaved.vec251, ptr %next.gep240, align 1, !tbaa !17, !alias.scope !151, !noalias !153
  %index.next252 = add nuw i64 %index237, 4       ; 2 uses
  %i.px = icmp eq i64 %index.next252, %n.vec235
  br i1 %i.px, label %middle.block253, label %vector.body236, !llvm.loop !154

middle.block253:                                  ; preds = %vector.body236
  br i1 %cmp.n254, label %.preheader10.i, label %.lr.ph100.i.preheader357

.lr.ph100.i.preheader357:                         ; preds = %vector.memcheck221, %.lr.ph100.i.preheader, %middle.block253
  %.020098.i.ph = phi i32 [ 0, %vector.memcheck221 ], [ 0, %.lr.ph100.i.preheader ], [ %i.hs, %middle.block253 ]
  %.020297.i.ph = phi ptr [ %i.pn, %vector.memcheck221 ], [ %i.pn, %.lr.ph100.i.preheader ], [ %i.pr, %middle.block253 ]
  %.020596.i.ph = phi ptr [ %i.pj, %vector.memcheck221 ], [ %i.pj, %.lr.ph100.i.preheader ], [ %i.ps, %middle.block253 ]
  %.1395.i.ph = phi ptr [ %.12122.i, %vector.memcheck221 ], [ %.12122.i, %.lr.ph100.i.preheader ], [ %i.pt, %middle.block253 ]
  br label %.lr.ph100.i

.preheader10.i:                                   ; preds = %.lr.ph100.i, %middle.block253, %bb.e
  %.13.lcssa.i = phi ptr [ %.12122.i, %bb.e ], [ %i.pt, %middle.block253 ], [ %i.si, %.lr.ph100.i ] ; 10 uses
  %.0205.lcssa.i = phi ptr [ %i.pj, %bb.e ], [ %i.ps, %middle.block253 ], [ %i.sj, %.lr.ph100.i ] ; 9 uses
  %.0202.lcssa.i = phi ptr [ %i.pn, %bb.e ], [ %i.pr, %middle.block253 ], [ %i.sk, %.lr.ph100.i ] ; 9 uses
  %.0200.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.hd, %middle.block253 ], [ %i.hd, %.lr.ph100.i ] ; 8 uses
  %i.py = or disjoint i32 %.0200.lcssa.i, 1
  %i.pz = icmp slt i32 %i.py, %5
  br i1 %i.pz, label %iter.check196, label %.preheader9.i

iter.check196:                                    ; preds = %.preheader10.i
  %i.qa = sub i32 %i.hi, %.0200.lcssa.i           ; 3 uses
  %i.qb = lshr i32 %i.qa, 1
  %narrow350 = add nuw i32 %i.qb, 1
  %i.qc = zext i32 %narrow350 to i64              ; 5 uses
  %min.iters.check174 = icmp ult i32 %i.qa, 14
  br i1 %min.iters.check174, label %.lr.ph109.i.preheader, label %vector.memcheck160

vector.memcheck160:                               ; preds = %iter.check196
  %scevgep161 = getelementptr i8, ptr %.13.lcssa.i, i64 4
  %i.qd = sub i32 %i.hh, %.0200.lcssa.i
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %i.qf = shl nuw nsw i64 %i.qe, 1
  %i.qg = and i64 %i.qf, 8589934588
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.qg ; 2 uses
  %scevgep163 = getelementptr i8, ptr %.0202.lcssa.i, i64 2
  %i.qh = and i64 %i.qe, 4294967294               ; 2 uses
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.qh
  %scevgep165 = getelementptr i8, ptr %.0205.lcssa.i, i64 2
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.qh
  %bound0167 = icmp ult ptr %.13.lcssa.i, %scevgep164
  %bound1168 = icmp ult ptr %.0202.lcssa.i, %scevgep162
  %found.conflict169 = and i1 %bound0167, %bound1168
  %bound0170 = icmp ult ptr %.13.lcssa.i, %scevgep166
  %bound1171 = icmp ult ptr %.0205.lcssa.i, %scevgep162
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %found.conflict169, %found.conflict172
end_hunk_3
begin_hunk_4_@_ZN4ncnn27pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii:bb.a
  %i.tc = shl nuw nsw i64 %n.vec, 1
  %i.td = getelementptr i8, ptr %.14.lcssa.i, i64 %i.tc ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1203.lcssa.i, i64 %index
  %next.gep140 = getelementptr i8, ptr %.1206.lcssa.i, i64 %index
  %i.te = shl i64 %index, 1
  %next.gep141 = getelementptr i8, ptr %.14.lcssa.i, i64 %i.te
  %wide.load = load <64 x i8>, ptr %next.gep140, align 1, !tbaa !17, !alias.scope !166
  %wide.load142 = load <64 x i8>, ptr %next.gep, align 1, !tbaa !17, !alias.scope !169
  %interleaved.vec = shufflevector <64 x i8> %wide.load, <64 x i8> %wide.load142, <128 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  store <128 x i8> %interleaved.vec, ptr %next.gep141, align 1, !tbaa !17, !alias.scope !171, !noalias !173
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.tf = icmp eq i64 %index.next, %n.vec
  br i1 %i.tf, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ss, %n.vec
  br i1 %cmp.n, label %._crit_edge119.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.sx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph118.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec146 = and i64 %i.ss, 8589934584           ; 6 uses
  %i.tg = trunc i64 %n.vec146 to i32
  %i.th = add i32 %.1201.lcssa.i, %i.tg
  %i.ti = getelementptr i8, ptr %.1203.lcssa.i, i64 %n.vec146
  %i.tj = getelementptr i8, ptr %.1206.lcssa.i, i64 %n.vec146
  %i.tk = shl nuw nsw i64 %n.vec146, 1
  %i.tl = getelementptr i8, ptr %.14.lcssa.i, i64 %i.tk ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ] ; 4 uses
  %next.gep148 = getelementptr i8, ptr %.1203.lcssa.i, i64 %index147
  %next.gep149 = getelementptr i8, ptr %.1206.lcssa.i, i64 %index147
  %i.tm = shl i64 %index147, 1
  %next.gep150 = getelementptr i8, ptr %.14.lcssa.i, i64 %i.tm
  %wide.load151 = load <8 x i8>, ptr %next.gep149, align 1, !tbaa !17, !alias.scope !166
  %wide.load152 = load <8 x i8>, ptr %next.gep148, align 1, !tbaa !17, !alias.scope !169
  %interleaved.vec153 = shufflevector <8 x i8> %wide.load151, <8 x i8> %wide.load152, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec153, ptr %next.gep150, align 1, !tbaa !17, !alias.scope !171, !noalias !173
  %index.next154 = add nuw i64 %index147, 8       ; 2 uses
  %i.tn = icmp eq i64 %index.next154, %n.vec146
  br i1 %i.tn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n155 = icmp eq i64 %i.ss, %n.vec146
  br i1 %cmp.n155, label %._crit_edge119.i, label %.lr.ph118.i.preheader

.lr.ph118.i.preheader:                            ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2117.i.ph = phi i32 [ %.1201.lcssa.i, %iter.check ], [ %.1201.lcssa.i, %vector.memcheck ], [ %i.sz, %vec.epilog.iter.check ], [ %i.th, %vec.epilog.middle.block ] ; 4 uses
  %.2204116.i.ph = phi ptr [ %.1203.lcssa.i, %iter.check ], [ %.1203.lcssa.i, %vector.memcheck ], [ %i.ta, %vec.epilog.iter.check ], [ %i.ti, %vec.epilog.middle.block ] ; 2 uses
  %.2207115.i.ph = phi ptr [ %.1206.lcssa.i, %iter.check ], [ %.1206.lcssa.i, %vector.memcheck ], [ %i.tb, %vec.epilog.iter.check ], [ %i.tj, %vec.epilog.middle.block ] ; 2 uses
  %.15114.i.ph = phi ptr [ %.14.lcssa.i, %iter.check ], [ %.14.lcssa.i, %vector.memcheck ], [ %i.td, %vec.epilog.iter.check ], [ %i.tl, %vec.epilog.middle.block ] ; 2 uses
  %i.to = sub i32 %5, %.2117.i.ph
  %xtraiter411 = and i32 %i.to, 3                 ; 2 uses
  %lcmp.mod412.not = icmp eq i32 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph118.i.prol.loopexit, label %.lr.ph118.i.prol

.lr.ph118.i.prol:                                 ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i.prol
  %.2117.i.prol = phi i32 [ %i.tv, %.lr.ph118.i.prol ], [ %.2117.i.ph, %.lr.ph118.i.preheader ]
  %.2204116.i.prol = phi ptr [ %i.tu, %.lr.ph118.i.prol ], [ %.2204116.i.ph, %.lr.ph118.i.preheader ] ; 2 uses
  %.2207115.i.prol = phi ptr [ %i.tt, %.lr.ph118.i.prol ], [ %.2207115.i.ph, %.lr.ph118.i.preheader ] ; 2 uses
  %.15114.i.prol = phi ptr [ %i.ts, %.lr.ph118.i.prol ], [ %.15114.i.ph, %.lr.ph118.i.preheader ] ; 3 uses
  %prol.iter413 = phi i32 [ %prol.iter413.next, %.lr.ph118.i.prol ], [ 0, %.lr.ph118.i.preheader ]
  %i.tp = load i8, ptr %.2207115.i.prol, align 1, !tbaa !17
  store i8 %i.tp, ptr %.15114.i.prol, align 1, !tbaa !17
  %i.tq = load i8, ptr %.2204116.i.prol, align 1, !tbaa !17
  %i.tr = getelementptr inbounds nuw i8, ptr %.15114.i.prol, i64 1
  store i8 %i.tq, ptr %i.tr, align 1, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.15114.i.prol, i64 2 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.2207115.i.prol, i64 1 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.2204116.i.prol, i64 1 ; 2 uses
  %i.tv = add nuw nsw i32 %.2117.i.prol, 1        ; 2 uses
  %prol.iter413.next = add i32 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i32 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %.lr.ph118.i.prol.loopexit, label %.lr.ph118.i.prol, !llvm.loop !176

.lr.ph118.i.prol.loopexit:                        ; preds = %.lr.ph118.i.prol, %.lr.ph118.i.preheader
  %.lcssa365.unr = phi ptr [ poison, %.lr.ph118.i.preheader ], [ %i.ts, %.lr.ph118.i.prol ]
  %.2117.i.unr = phi i32 [ %.2117.i.ph, %.lr.ph118.i.preheader ], [ %i.tv, %.lr.ph118.i.prol ]
  %.2204116.i.unr = phi ptr [ %.2204116.i.ph, %.lr.ph118.i.preheader ], [ %i.tu, %.lr.ph118.i.prol ]
  %.2207115.i.unr = phi ptr [ %.2207115.i.ph, %.lr.ph118.i.preheader ], [ %i.tt, %.lr.ph118.i.prol ]
  %.15114.i.unr = phi ptr [ %.15114.i.ph, %.lr.ph118.i.preheader ], [ %i.ts, %.lr.ph118.i.prol ]
  %i.tw = sub i32 %.2117.i.ph, %5
  %i.tx = icmp ugt i32 %i.tw, -4
  br i1 %i.tx, label %._crit_edge119.i, label %.lr.ph118.i

.lr.ph109.i:                                      ; preds = %.lr.ph109.i.preheader, %.lr.ph109.i
  %.1201108.i = phi i32 [ %i.uk, %.lr.ph109.i ], [ %.1201108.i.ph, %.lr.ph109.i.preheader ]
  %.1203107.i = phi ptr [ %i.uj, %.lr.ph109.i ], [ %.1203107.i.ph, %.lr.ph109.i.preheader ] ; 3 uses
  %.1206106.i = phi ptr [ %i.ui, %.lr.ph109.i ], [ %.1206106.i.ph, %.lr.ph109.i.preheader ] ; 3 uses
  %.14105.i = phi ptr [ %i.uh, %.lr.ph109.i ], [ %.14105.i.ph, %.lr.ph109.i.preheader ] ; 5 uses
  %i.ty = load i8, ptr %.1206106.i, align 1, !tbaa !17
  store i8 %i.ty, ptr %.14105.i, align 1, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %.1206106.i, i64 1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.ub = getelementptr inbounds nuw i8, ptr %.14105.i, i64 1
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !17
  %i.uc = load i8, ptr %.1203107.i, align 1, !tbaa !17
  %i.ud = getelementptr inbounds nuw i8, ptr %.14105.i, i64 2
  store i8 %i.uc, ptr %i.ud, align 1, !tbaa !17
  %i.ue = getelementptr inbounds nuw i8, ptr %.1203107.i, i64 1
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !17
  %i.ug = getelementptr inbounds nuw i8, ptr %.14105.i, i64 3
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !17
  %i.uh = getelementptr inbounds nuw i8, ptr %.14105.i, i64 4 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.1206106.i, i64 2 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.1203107.i, i64 2 ; 2 uses
  %i.uk = add nuw nsw i32 %.1201108.i, 2          ; 3 uses
  %i.ul = or disjoint i32 %i.uk, 1
  %i.um = icmp slt i32 %i.ul, %5
  br i1 %i.um, label %.lr.ph109.i, label %.preheader9.i, !llvm.loop !177

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.prol.loopexit, %.lr.ph118.i
  %.2117.i = phi i32 [ %i.vl, %.lr.ph118.i ], [ %.2117.i.unr, %.lr.ph118.i.prol.loopexit ]
  %.2204116.i = phi ptr [ %i.vk, %.lr.ph118.i ], [ %.2204116.i.unr, %.lr.ph118.i.prol.loopexit ] ; 5 uses
  %.2207115.i = phi ptr [ %i.vj, %.lr.ph118.i ], [ %.2207115.i.unr, %.lr.ph118.i.prol.loopexit ] ; 5 uses
  %.15114.i = phi ptr [ %i.vi, %.lr.ph118.i ], [ %.15114.i.unr, %.lr.ph118.i.prol.loopexit ] ; 9 uses
  %i.un = load i8, ptr %.2207115.i, align 1, !tbaa !17
  store i8 %i.un, ptr %.15114.i, align 1, !tbaa !17
  %i.uo = load i8, ptr %.2204116.i, align 1, !tbaa !17
  %i.up = getelementptr inbounds nuw i8, ptr %.15114.i, i64 1
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !17
  %i.uq = getelementptr inbounds nuw i8, ptr %.15114.i, i64 2
  %i.ur = getelementptr inbounds nuw i8, ptr %.2207115.i, i64 1
  %i.us = getelementptr inbounds nuw i8, ptr %.2204116.i, i64 1
  %i.ut = load i8, ptr %i.ur, align 1, !tbaa !17
  store i8 %i.ut, ptr %i.uq, align 1, !tbaa !17
  %i.uu = load i8, ptr %i.us, align 1, !tbaa !17
  %i.uv = getelementptr inbounds nuw i8, ptr %.15114.i, i64 3
  store i8 %i.uu, ptr %i.uv, align 1, !tbaa !17
  %i.uw = getelementptr inbounds nuw i8, ptr %.15114.i, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %.2207115.i, i64 2
  %i.uy = getelementptr inbounds nuw i8, ptr %.2204116.i, i64 2
  %i.uz = load i8, ptr %i.ux, align 1, !tbaa !17
  store i8 %i.uz, ptr %i.uw, align 1, !tbaa !17
  %i.va = load i8, ptr %i.uy, align 1, !tbaa !17
  %i.vb = getelementptr inbounds nuw i8, ptr %.15114.i, i64 5
  store i8 %i.va, ptr %i.vb, align 1, !tbaa !17
  %i.vc = getelementptr inbounds nuw i8, ptr %.15114.i, i64 6
  %i.vd = getelementptr inbounds nuw i8, ptr %.2207115.i, i64 3
  %i.ve = getelementptr inbounds nuw i8, ptr %.2204116.i, i64 3
  %i.vf = load i8, ptr %i.vd, align 1, !tbaa !17
  store i8 %i.vf, ptr %i.vc, align 1, !tbaa !17
  %i.vg = load i8, ptr %i.ve, align 1, !tbaa !17
  %i.vh = getelementptr inbounds nuw i8, ptr %.15114.i, i64 7
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !17
  %i.vi = getelementptr inbounds nuw i8, ptr %.15114.i, i64 8 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.2207115.i, i64 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.2204116.i, i64 4
  %i.vl = add nuw nsw i32 %.2117.i, 4             ; 2 uses
  %exitcond192.not.i.3 = icmp eq i32 %i.vl, %5
  br i1 %exitcond192.not.i.3, label %._crit_edge119.i, label %.lr.ph118.i, !llvm.loop !178

._crit_edge119.i:                                 ; preds = %.lr.ph118.i.prol.loopexit, %.lr.ph118.i, %middle.block, %vec.epilog.middle.block, %.preheader9.i
  %.15.lcssa.i = phi ptr [ %.14.lcssa.i, %.preheader9.i ], [ %i.tl, %vec.epilog.middle.block ], [ %i.td, %middle.block ], [ %.lcssa365.unr, %.lr.ph118.i.prol.loopexit ], [ %i.vi, %.lr.ph118.i ] ; 2 uses
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 2 ; 3 uses
  %i.vm = icmp slt i64 %indvars.iv.next194.i, %invariant.op243.i
  br i1 %i.vm, label %bb.e, label %.preheader8.loopexit.i, !llvm.loop !179

.preheader.i:                                     ; preds = %._crit_edge138.i, %.preheader.preheader.i
  %indvars.iv197.i = phi i64 [ %i.oz, %.preheader.preheader.i ], [ %indvars.iv.next198.i, %._crit_edge138.i ] ; 2 uses
  %.16141.i = phi ptr [ %.12.lcssa.i, %.preheader.preheader.i ], [ %.lcssa356, %._crit_edge138.i ] ; 4 uses
  %i.vn = load ptr, ptr %0, align 8, !tbaa !9
  %i.vo = add nsw i64 %indvars.iv197.i, %i.pa
  %i.vp = load i32, ptr %i.lj, align 4, !tbaa !15
  %i.vq = sext i32 %i.vp to i64
  %i.vr = mul nsw i64 %i.vo, %i.vq
  %i.vs = load i64, ptr %i.lk, align 8, !tbaa !16
  %i.vt = mul i64 %i.vr, %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vt
  %i.vv = getelementptr inbounds i8, ptr %i.vu, i64 %i.ll ; 3 uses
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !17
  store i8 %i.vw, ptr %.16141.i, align 1, !tbaa !17
  %i.vx = getelementptr inbounds nuw i8, ptr %.16141.i, i64 1 ; 2 uses
  br i1 %exitcond196.not.i, label %._crit_edge138.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !17
  store i8 %i.vz, ptr %i.vx, align 1, !tbaa !17
  %i.wa = getelementptr inbounds nuw i8, ptr %.16141.i, i64 2 ; 2 uses
  br i1 %exitcond196.not.i.1, label %._crit_edge138.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !17
  store i8 %i.wc, ptr %i.wa, align 1, !tbaa !17
  %i.wd = getelementptr inbounds nuw i8, ptr %.16141.i, i64 3
  br label %._crit_edge138.i

._crit_edge138.i:                                 ; preds = %bb.g, %bb.f, %.preheader.i
  %.lcssa356 = phi ptr [ %i.vx, %.preheader.i ], [ %i.wa, %bb.f ], [ %i.wd, %bb.g ]
  %indvars.iv.next198.i = add nsw i64 %indvars.iv197.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next198.i, %wide.trip.count.i
  br i1 %exitcond200.not.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.preheader.i, !llvm.loop !143

_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge138.i, %._crit_edge138.us.i, %.preheader8.i, %.lr.ph142.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn37transpose_pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 20 uses
  %i.c = icmp sgt i32 %3, 15
  br i1 %i.c, label %.lr.ph52.i, label %.preheader29.i

.lr.ph52.i:                                       ; preds = %bb.a
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp sgt i32 %5, 3
  %i.g = sext i32 %i.b to i64                     ; 11 uses
  %i.h = shl nsw i32 %i.b, 1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = mul nsw i32 %i.b, 3
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i32 %i.b, 2
  %i.m = sext i32 %i.l to i64
  %i.n = and i32 %5, -4
  %i.o = zext nneg i32 %3 to i64
  %i.p = sext i32 %2 to i64
  br label %bb.b

.preheader29.loopexit.i:                          ; preds = %._crit_edge.i
  %i.q = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.loopexit.i, %bb.a
  %.0269.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.q, %.preheader29.loopexit.i ] ; 3 uses
  %.0260.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.3.lcssa.i, %.preheader29.loopexit.i ] ; 2 uses
  %i.r = or disjoint i32 %.0269.lcssa.i, 7
  %i.s = icmp slt i32 %i.r, %3
  br i1 %i.s, label %.lr.ph78.i, label %.preheader26.i

.lr.ph78.i:                                       ; preds = %.preheader29.i
  %i.t = sext i32 %4 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = icmp sgt i32 %5, 3
  %i.w = sext i32 %i.b to i64                     ; 11 uses
  %i.x = shl nsw i32 %i.b, 1
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i32 %i.b, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i32 %i.b, 2
  %i.ac = sext i32 %i.ab to i64
  %i.ad = and i32 %5, -4
  %i.ae = zext nneg i32 %.0269.lcssa.i to i64
  %i.af = sext i32 %3 to i64
  %i.ag = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.af, -7
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph52.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.026050.i = phi ptr [ %.val, %.lr.ph52.i ], [ %.3.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !9
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !15
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.d
  %i.al = load i64, ptr %i.e, align 8, !tbaa !16
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.p   ; 2 uses
  br i1 %i.f, label %.lr.ph.i, label %.preheader31.i

.preheader31.i:                                   ; preds = %.lr.ph.i, %bb.b
  %.0277.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %.0274.lcssa.i = phi ptr [ %i.ap, %bb.b ], [ %i.bu, %.lr.ph.i ] ; 2 uses
  %.1261.lcssa.i = phi ptr [ %.026050.i, %bb.b ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %i.aq = or disjoint i32 %.0277.lcssa.i, 1
  %i.ar = icmp slt i32 %i.aq, %5
  br i1 %i.ar, label %.lr.ph40.i, label %.preheader30.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.126134.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.026050.i, %bb.b ] ; 2 uses
  %.027433.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.ap, %bb.b ] ; 5 uses
  %.027732.i = phi i32 [ %i.bv, %.lr.ph.i ], [ 0, %bb.b ]
  %i.as = load <16 x i8>, ptr %.027433.i, align 1, !tbaa !17 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.027433.i, i64 %i.g
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !17 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.027433.i, i64 %i.i
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.027433.i, i64 %i.k
  %i.ay = load <16 x i8>, ptr %i.ax, align 1, !tbaa !17 ; 2 uses
  %i.az = shufflevector <16 x i8> %i.as, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ba = shufflevector <16 x i8> %i.as, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bb = shufflevector <16 x i8> %i.aw, <16 x i8> %i.ay, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = shufflevector <16 x i8> %i.aw, <16 x i8> %i.ay, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bd = bitcast <16 x i8> %i.az to <8 x i16>    ; 2 uses
  %i.be = bitcast <16 x i8> %i.bb to <8 x i16>    ; 2 uses
  %i.bf = shufflevector <8 x i16> %i.bd, <8 x i16> %i.be, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bg = bitcast <8 x i16> %i.bf to <2 x i64>
  %i.bh = shufflevector <8 x i16> %i.bd, <8 x i16> %i.be, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bi = bitcast <8 x i16> %i.bh to <2 x i64>
  %i.bj = bitcast <16 x i8> %i.ba to <8 x i16>
  %i.bk = bitcast <16 x i8> %i.bc to <8 x i16>
  %i.bl = shufflevector <8 x i16> %i.bj, <8 x i16> %i.bk, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bm = shufflevector <2 x i64> %i.bg, <2 x i64> %i.bi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bn = bitcast <8 x i64> %i.bm to <16 x i32>
  %i.bo = bitcast <16 x i16> %i.bl to <8 x i32>
  %i.bp = shufflevector <8 x i32> %i.bo, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <16 x i32> %i.bn, <16 x i32> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.br = bitcast <16 x i32> %i.bq to <64 x i8>
  %i.bs = add <64 x i8> %i.br, splat (i8 127)
  store <64 x i8> %i.bs, ptr %.126134.i, align 1, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.126134.i, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.027433.i, i64 %i.m ; 2 uses
  %i.bv = add nuw nsw i32 %.027732.i, 4           ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 3
  %i.bx = icmp slt i32 %i.bw, %5
  br i1 %i.bx, label %.lr.ph.i, label %.preheader31.i, !llvm.loop !180

.preheader30.i:                                   ; preds = %.lr.ph40.i, %.preheader31.i
  %.1278.lcssa.i = phi i32 [ %.0277.lcssa.i, %.preheader31.i ], [ %i.co, %.lr.ph40.i ] ; 5 uses
  %.1275.lcssa.i = phi ptr [ %.0274.lcssa.i, %.preheader31.i ], [ %i.cn, %.lr.ph40.i ] ; 2 uses
  %.2262.lcssa.i = phi ptr [ %.1261.lcssa.i, %.preheader31.i ], [ %i.cm, %.lr.ph40.i ] ; 3 uses
  %i.by = icmp slt i32 %.1278.lcssa.i, %5
  br i1 %i.by, label %.lr.ph47.i.preheader, label %._crit_edge.i

.lr.ph47.i.preheader:                             ; preds = %.preheader30.i
  %i.bz = sub i32 %5, %.1278.lcssa.i
  %xtraiter = and i32 %i.bz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol

.lr.ph47.i.prol:                                  ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i.prol
  %.346.i.prol = phi ptr [ %i.cb, %.lr.ph47.i.prol ], [ %.2262.lcssa.i, %.lr.ph47.i.preheader ] ; 2 uses
  %.227645.i.prol = phi ptr [ %i.cc, %.lr.ph47.i.prol ], [ %.1275.lcssa.i, %.lr.ph47.i.preheader ] ; 2 uses
  %.227944.i.prol = phi i32 [ %i.cd, %.lr.ph47.i.prol ], [ %.1278.lcssa.i, %.lr.ph47.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph47.i.prol ], [ 0, %.lr.ph47.i.preheader ]
  %i.ca = load <2 x i64>, ptr %.227645.i.prol, align 1, !tbaa !17
  store <2 x i64> %i.ca, ptr %.346.i.prol, align 16, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.346.i.prol, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.227645.i.prol, i64 %i.g ; 2 uses
  %i.cd = add nuw nsw i32 %.227944.i.prol, 1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol, !llvm.loop !181

.lr.ph47.i.prol.loopexit:                         ; preds = %.lr.ph47.i.prol, %.lr.ph47.i.preheader
  %.lcssa150.unr = phi ptr [ poison, %.lr.ph47.i.preheader ], [ %i.cb, %.lr.ph47.i.prol ]
  %.346.i.unr = phi ptr [ %.2262.lcssa.i, %.lr.ph47.i.preheader ], [ %i.cb, %.lr.ph47.i.prol ]
  %.227645.i.unr = phi ptr [ %.1275.lcssa.i, %.lr.ph47.i.preheader ], [ %i.cc, %.lr.ph47.i.prol ]
  %.227944.i.unr = phi i32 [ %.1278.lcssa.i, %.lr.ph47.i.preheader ], [ %i.cd, %.lr.ph47.i.prol ]
  %i.ce = sub i32 %.1278.lcssa.i, %5
  %i.cf = icmp ugt i32 %i.ce, -8
  br i1 %i.cf, label %._crit_edge.i, label %.lr.ph47.i

.lr.ph40.i:                                       ; preds = %.preheader31.i, %.lr.ph40.i
  %.226239.i = phi ptr [ %i.cm, %.lr.ph40.i ], [ %.1261.lcssa.i, %.preheader31.i ] ; 3 uses
  %.127538.i = phi ptr [ %i.cn, %.lr.ph40.i ], [ %.0274.lcssa.i, %.preheader31.i ] ; 3 uses
  %.127837.i = phi i32 [ %i.co, %.lr.ph40.i ], [ %.0277.lcssa.i, %.preheader31.i ]
  %i.cg = load <16 x i8>, ptr %.127538.i, align 1, !tbaa !17 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.127538.i, i64 %i.g
  %i.ci = load <16 x i8>, ptr %i.ch, align 1, !tbaa !17 ; 2 uses
  %i.cj = shufflevector <16 x i8> %i.cg, <16 x i8> %i.ci, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ck = shufflevector <16 x i8> %i.cg, <16 x i8> %i.ci, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.cj, ptr %.226239.i, align 16, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.226239.i, i64 16
  store <16 x i8> %i.ck, ptr %i.cl, align 16, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %.226239.i, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.127538.i, i64 %i.i ; 2 uses
  %i.co = add nuw nsw i32 %.127837.i, 2           ; 3 uses
  %i.cp = or disjoint i32 %i.co, 1
  %i.cq = icmp slt i32 %i.cp, %5
  br i1 %i.cq, label %.lr.ph40.i, label %.preheader30.i, !llvm.loop !182

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i
  %.346.i = phi ptr [ %i.dn, %.lr.ph47.i ], [ %.346.i.unr, %.lr.ph47.i.prol.loopexit ] ; 9 uses
  %.227645.i = phi ptr [ %i.do, %.lr.ph47.i ], [ %.227645.i.unr, %.lr.ph47.i.prol.loopexit ] ; 2 uses
  %.227944.i = phi i32 [ %i.dp, %.lr.ph47.i ], [ %.227944.i.unr, %.lr.ph47.i.prol.loopexit ]
  %i.cr = load <2 x i64>, ptr %.227645.i, align 1, !tbaa !17
  store <2 x i64> %i.cr, ptr %.346.i, align 16, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %.346.i, i64 16
  %i.ct = getelementptr inbounds i8, ptr %.227645.i, i64 %i.g ; 2 uses
  %i.cu = load <2 x i64>, ptr %i.ct, align 1, !tbaa !17
  store <2 x i64> %i.cu, ptr %i.cs, align 16, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %.346.i, i64 32
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.g ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 1, !tbaa !17
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %.346.i, i64 48
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.g ; 2 uses
  %i.da = load <2 x i64>, ptr %i.cz, align 1, !tbaa !17
  store <2 x i64> %i.da, ptr %i.cy, align 16, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %.346.i, i64 64
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.g ; 2 uses
  %i.dd = load <2 x i64>, ptr %i.dc, align 1, !tbaa !17
  store <2 x i64> %i.dd, ptr %i.db, align 16, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %.346.i, i64 80
end_hunk_4
begin_hunk_5_@_ZN4ncnn37transpose_pack_B_tile_int8_avx512vnniERKNS_3MatERS0_iiii:bb.a
  %i.ke = getelementptr inbounds nuw i8, ptr %.1267.lcssa.i, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !17
  %i.kg = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 1
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !17
  %i.kh = getelementptr inbounds nuw i8, ptr %.1267.lcssa.i, i64 2
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !17
  %i.kj = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 2
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !17
  %i.kk = getelementptr inbounds nuw i8, ptr %.1267.lcssa.i, i64 3
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !17
  %i.km = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 3
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !17
  %i.kn = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 4 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.1267.lcssa.i, i64 %i.ed
  %i.kp = add nuw nsw i32 %.1264.lcssa.i, 1
  br label %.lr.ph99.i.prol.loopexit

.lr.ph99.i.prol.loopexit:                         ; preds = %.lr.ph99.i.prol, %.lr.ph99.i.preheader
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph99.i.preheader ], [ %i.kn, %.lr.ph99.i.prol ]
  %.1198.i.unr = phi ptr [ %.10.lcssa.i, %.lr.ph99.i.preheader ], [ %i.kn, %.lr.ph99.i.prol ]
  %.226597.i.unr = phi i32 [ %.1264.lcssa.i, %.lr.ph99.i.preheader ], [ %i.kp, %.lr.ph99.i.prol ]
  %.226896.i.unr = phi ptr [ %.1267.lcssa.i, %.lr.ph99.i.preheader ], [ %i.ko, %.lr.ph99.i.prol ]
  %i.kq = icmp eq i32 %5, %.neg
  br i1 %i.kq, label %._crit_edge100.i, label %.lr.ph99.i

.lr.ph92.i:                                       ; preds = %.preheader25.i, %.lr.ph92.i
  %.1091.i = phi ptr [ %i.ln, %.lr.ph92.i ], [ %.9.lcssa.i, %.preheader25.i ] ; 9 uses
  %.126490.i = phi i32 [ %i.lp, %.lr.ph92.i ], [ %.0263.lcssa.i, %.preheader25.i ]
  %.126789.i = phi ptr [ %i.lo, %.lr.ph92.i ], [ %.0266.lcssa.i, %.preheader25.i ] ; 6 uses
  %i.kr = load i8, ptr %.126789.i, align 1, !tbaa !17
  store i8 %i.kr, ptr %.1091.i, align 1, !tbaa !17
  %i.ks = getelementptr inbounds i8, ptr %.126789.i, i64 %i.ed ; 4 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !17
  %i.ku = getelementptr inbounds nuw i8, ptr %.1091.i, i64 1
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !17
  %i.kv = getelementptr inbounds nuw i8, ptr %.126789.i, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !17
  %i.kx = getelementptr inbounds nuw i8, ptr %.1091.i, i64 2
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !17
  %i.ky = getelementptr i8, ptr %i.ks, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %.1091.i, i64 3
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !17
  %i.lb = getelementptr inbounds nuw i8, ptr %.126789.i, i64 2
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !17
  %i.ld = getelementptr inbounds nuw i8, ptr %.1091.i, i64 4
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !17
  %i.le = getelementptr i8, ptr %i.ks, i64 2
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !17
  %i.lg = getelementptr inbounds nuw i8, ptr %.1091.i, i64 5
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !17
  %i.lh = getelementptr inbounds nuw i8, ptr %.126789.i, i64 3
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !17
  %i.lj = getelementptr inbounds nuw i8, ptr %.1091.i, i64 6
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !17
  %i.lk = getelementptr i8, ptr %i.ks, i64 3
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !17
  %i.lm = getelementptr inbounds nuw i8, ptr %.1091.i, i64 7
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !17
  %i.ln = getelementptr inbounds nuw i8, ptr %.1091.i, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %.126789.i, i64 %i.ef ; 2 uses
  %i.lp = add nuw nsw i32 %.126490.i, 2           ; 3 uses
  %i.lq = or disjoint i32 %i.lp, 1
  %i.lr = icmp slt i32 %i.lq, %5
  br i1 %i.lr, label %.lr.ph92.i, label %.preheader24.i, !llvm.loop !192

.lr.ph99.i:                                       ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i
  %.1198.i = phi ptr [ %i.mo, %.lr.ph99.i ], [ %.1198.i.unr, %.lr.ph99.i.prol.loopexit ] ; 9 uses
  %.226597.i = phi i32 [ %i.mq, %.lr.ph99.i ], [ %.226597.i.unr, %.lr.ph99.i.prol.loopexit ]
  %.226896.i = phi ptr [ %i.mp, %.lr.ph99.i ], [ %.226896.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %i.ls = load i8, ptr %.226896.i, align 1, !tbaa !17
  store i8 %i.ls, ptr %.1198.i, align 1, !tbaa !17
  %i.lt = getelementptr inbounds nuw i8, ptr %.226896.i, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %.1198.i, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.226896.i, i64 2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !17
  %i.ly = getelementptr inbounds nuw i8, ptr %.1198.i, i64 2
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %.226896.i, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17
  %i.mb = getelementptr inbounds nuw i8, ptr %.1198.i, i64 3
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.1198.i, i64 4
  %i.md = getelementptr inbounds i8, ptr %.226896.i, i64 %i.ed ; 5 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !17
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !17
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %.1198.i, i64 5
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !17
  %i.mk = getelementptr inbounds nuw i8, ptr %.1198.i, i64 6
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !17
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 3
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %.1198.i, i64 7
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.1198.i, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.md, i64 %i.ed
  %i.mq = add nuw nsw i32 %.226597.i, 2           ; 2 uses
  %exitcond193.not.i.1 = icmp eq i32 %i.mq, %5
  br i1 %exitcond193.not.i.1, label %._crit_edge100.i, label %.lr.ph99.i, !llvm.loop !193

._crit_edge100.i:                                 ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i, %.preheader24.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader24.i ], [ %.lcssa138.unr, %.lr.ph99.i.prol.loopexit ], [ %i.mo, %.lr.ph99.i ] ; 2 uses
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 4 ; 3 uses
  %i.mr = icmp slt i64 %indvars.iv.next195.i, %invariant.op245.i
  br i1 %i.mr, label %bb.d, label %.preheader23.loopexit.i, !llvm.loop !194

.preheader20.loopexit.i:                          ; preds = %._crit_edge126.i
  %i.ms = trunc nsw i64 %indvars.iv.next199.i to i32
  br label %.preheader20.i

.preheader20.i:                                   ; preds = %.preheader20.loopexit.i, %.preheader23.i
  %.3272.lcssa.i = phi i32 [ %.2271.lcssa.i, %.preheader23.i ], [ %i.ms, %.preheader20.loopexit.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader23.i ], [ %.15.lcssa.i, %.preheader20.loopexit.i ] ; 2 uses
  %i.mt = icmp slt i32 %.3272.lcssa.i, %3
  br i1 %i.mt, label %.lr.ph149.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph149.i:                                      ; preds = %.preheader20.i
  %i.mu = sext i32 %4 to i64                      ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mw = icmp sgt i32 %5, 3
  %i.mx = sext i32 %i.b to i64                    ; 4 uses
  %i.my = shl nsw i32 %i.b, 1
  %i.mz = sext i32 %i.my to i64
  %i.na = mul nsw i32 %i.b, 3
  %i.nb = sext i32 %i.na to i64
  %i.nc = shl nsw i32 %i.b, 2
  %i.nd = sext i32 %i.nc to i64
  br i1 %i.mw, label %.lr.ph137.us.preheader.i, label %.lr.ph149.split.i

.lr.ph137.us.preheader.i:                         ; preds = %.lr.ph149.i
  %i.ne = and i32 %5, 2147483644                  ; 2 uses
  %i.nf = sext i32 %.3272.lcssa.i to i64
  %i.ng = sext i32 %2 to i64
  %wide.trip.count209.i = sext i32 %3 to i64
  %.not = icmp eq i32 %i.ne, %5
  br label %.lr.ph137.us.i

.lr.ph137.us.i:                                   ; preds = %._crit_edge145.us.i, %.lr.ph137.us.preheader.i
  %indvars.iv206.i = phi i64 [ %i.nf, %.lr.ph137.us.preheader.i ], [ %indvars.iv.next207.i, %._crit_edge145.us.i ] ; 2 uses
  %.16148.us.i = phi ptr [ %.12.lcssa.i, %.lr.ph137.us.preheader.i ], [ %.18.lcssa.us.i, %._crit_edge145.us.i ]
  %i.nh = load ptr, ptr %0, align 8, !tbaa !9
  %i.ni = load i32, ptr %i.a, align 4, !tbaa !15
  %i.nj = sext i32 %i.ni to i64
  %i.nk = mul nsw i64 %i.nj, %i.mu
  %i.nl = load i64, ptr %i.mv, align 8, !tbaa !16
  %i.nm = mul i64 %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 %indvars.iv206.i
  %i.np = getelementptr i8, ptr %i.no, i64 %i.ng
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph137.us.i
  %.0135.us.i = phi i32 [ 0, %.lr.ph137.us.i ], [ %i.og, %bb.e ]
  %.0253134.us.i = phi ptr [ %i.np, %.lr.ph137.us.i ], [ %i.of, %bb.e ] ; 5 uses
  %.17133.us.i = phi ptr [ %.16148.us.i, %.lr.ph137.us.i ], [ %i.oe, %bb.e ] ; 5 uses
  %i.nq = load i8, ptr %.0253134.us.i, align 1, !tbaa !17
  %i.nr = add i8 %i.nq, 127
  store i8 %i.nr, ptr %.17133.us.i, align 1, !tbaa !17
  %i.ns = getelementptr inbounds i8, ptr %.0253134.us.i, i64 %i.mx
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !17
  %i.nu = add i8 %i.nt, 127
  %i.nv = getelementptr inbounds nuw i8, ptr %.17133.us.i, i64 1
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !17
  %i.nw = getelementptr inbounds i8, ptr %.0253134.us.i, i64 %i.mz
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = add i8 %i.nx, 127
  %i.nz = getelementptr inbounds nuw i8, ptr %.17133.us.i, i64 2
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !17
  %i.oa = getelementptr inbounds i8, ptr %.0253134.us.i, i64 %i.nb
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !17
  %i.oc = add i8 %i.ob, 127
  %i.od = getelementptr inbounds nuw i8, ptr %.17133.us.i, i64 3
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !17
  %i.oe = getelementptr inbounds nuw i8, ptr %.17133.us.i, i64 4 ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %.0253134.us.i, i64 %i.nd ; 2 uses
  %i.og = add nuw nsw i32 %.0135.us.i, 4          ; 2 uses
  %i.oh = or disjoint i32 %i.og, 3
  %i.oi = icmp slt i32 %i.oh, %5
  br i1 %i.oi, label %bb.e, label %..preheader_crit_edge.us.i, !llvm.loop !195

.lr.ph144.us.i:                                   ; preds = %..preheader_crit_edge.us.i, %.lr.ph144.us.i
  %.1143.us.i = phi i32 [ %i.om, %.lr.ph144.us.i ], [ %i.ne, %..preheader_crit_edge.us.i ]
  %.1254142.us.i = phi ptr [ %i.ol, %.lr.ph144.us.i ], [ %i.of, %..preheader_crit_edge.us.i ] ; 2 uses
  %.18141.us.i = phi ptr [ %i.ok, %.lr.ph144.us.i ], [ %i.oe, %..preheader_crit_edge.us.i ] ; 2 uses
  %i.oj = load i8, ptr %.1254142.us.i, align 1, !tbaa !17
  store i8 %i.oj, ptr %.18141.us.i, align 1, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %.18141.us.i, i64 1 ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %.1254142.us.i, i64 %i.mx
  %i.om = add nuw nsw i32 %.1143.us.i, 1          ; 2 uses
  %i.on = icmp slt i32 %i.om, %5
  br i1 %i.on, label %.lr.ph144.us.i, label %._crit_edge145.us.i, !llvm.loop !196

._crit_edge145.us.i:                              ; preds = %.lr.ph144.us.i, %..preheader_crit_edge.us.i
  %.18.lcssa.us.i = phi ptr [ %i.oe, %..preheader_crit_edge.us.i ], [ %i.ok, %.lr.ph144.us.i ]
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count209.i
  br i1 %exitcond210.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph137.us.i, !llvm.loop !197

..preheader_crit_edge.us.i:                       ; preds = %bb.e
  br i1 %.not, label %._crit_edge145.us.i, label %.lr.ph144.us.i

.lr.ph149.split.i:                                ; preds = %.lr.ph149.i
  %i.oo = icmp sgt i32 %5, 0
  br i1 %i.oo, label %.preheader.preheader.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.preheader.preheader.i:                           ; preds = %.lr.ph149.split.i
  %i.op = sext i32 %.3272.lcssa.i to i64
  %i.oq = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %exitcond201.not.i = icmp eq i32 %5, 1
  %exitcond201.not.i.1 = icmp eq i32 %5, 2
  br label %.preheader.i

bb.f:                                             ; preds = %._crit_edge126.i, %.lr.ph130.i
  %indvars.iv198.i = phi i64 [ %i.ij, %.lr.ph130.i ], [ %indvars.iv.next199.i, %._crit_edge126.i ] ; 2 uses
  %.12129.i = phi ptr [ %.8.lcssa.i, %.lr.ph130.i ], [ %.15.lcssa.i, %._crit_edge126.i ] ; 2 uses
  %i.or = load ptr, ptr %0, align 8, !tbaa !9
  %i.os = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ot = sext i32 %i.os to i64
  %i.ou = mul nsw i64 %i.ot, %i.hy
  %i.ov = load i64, ptr %i.hz, align 8, !tbaa !16
  %i.ow = mul i64 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.ox, i64 %indvars.iv198.i
  %i.oz = getelementptr i8, ptr %i.oy, i64 %i.il  ; 2 uses
  br i1 %i.ia, label %.lr.ph111.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %.lr.ph111.i, %bb.f
  %.13.lcssa.i = phi ptr [ %.12129.i, %bb.f ], [ %i.qg, %.lr.ph111.i ] ; 2 uses
  %.0257.lcssa.i = phi ptr [ %i.oz, %bb.f ], [ %i.qh, %.lr.ph111.i ] ; 2 uses
  %.0255.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.ii, %.lr.ph111.i ] ; 3 uses
  %i.pa = or disjoint i32 %.0255.lcssa.i, 1
  %i.pb = icmp slt i32 %i.pa, %5
  br i1 %i.pb, label %.lr.ph118.i, label %.preheader21.i

.lr.ph111.i:                                      ; preds = %bb.f, %.lr.ph111.i
  %.0255109.i = phi i32 [ %i.qi, %.lr.ph111.i ], [ 0, %bb.f ]
  %.0257108.i = phi ptr [ %i.qh, %.lr.ph111.i ], [ %i.oz, %bb.f ] ; 6 uses
  %.13107.i = phi ptr [ %i.qg, %.lr.ph111.i ], [ %.12129.i, %bb.f ] ; 9 uses
  %i.pc = load i8, ptr %.0257108.i, align 1, !tbaa !17
  %i.pd = add i8 %i.pc, 127
  store i8 %i.pd, ptr %.13107.i, align 1, !tbaa !17
  %i.pe = getelementptr inbounds i8, ptr %.0257108.i, i64 %i.ib ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !17
  %i.pg = add i8 %i.pf, 127
  %i.ph = getelementptr inbounds nuw i8, ptr %.13107.i, i64 1
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !17
  %i.pi = getelementptr inbounds i8, ptr %.0257108.i, i64 %i.id ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !17
  %i.pk = add i8 %i.pj, 127
  %i.pl = getelementptr inbounds nuw i8, ptr %.13107.i, i64 2
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !17
  %i.pm = getelementptr inbounds i8, ptr %.0257108.i, i64 %i.if ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !17
  %i.po = add i8 %i.pn, 127
  %i.pp = getelementptr inbounds nuw i8, ptr %.13107.i, i64 3
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !17
  %i.pq = getelementptr inbounds nuw i8, ptr %.0257108.i, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !17
  %i.ps = add i8 %i.pr, 127
  %i.pt = getelementptr inbounds nuw i8, ptr %.13107.i, i64 4
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !17
  %i.pu = getelementptr i8, ptr %i.pe, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !17
  %i.pw = add i8 %i.pv, 127
  %i.px = getelementptr inbounds nuw i8, ptr %.13107.i, i64 5
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !17
  %i.py = getelementptr i8, ptr %i.pi, i64 1
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !17
  %i.qa = add i8 %i.pz, 127
  %i.qb = getelementptr inbounds nuw i8, ptr %.13107.i, i64 6
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !17
  %i.qc = getelementptr i8, ptr %i.pm, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !17
  %i.qe = add i8 %i.qd, 127
  %i.qf = getelementptr inbounds nuw i8, ptr %.13107.i, i64 7
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !17
  %i.qg = getelementptr inbounds nuw i8, ptr %.13107.i, i64 8 ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %.0257108.i, i64 %i.ih ; 2 uses
  %i.qi = add nuw nsw i32 %.0255109.i, 4          ; 2 uses
  %i.qj = or disjoint i32 %i.qi, 3
  %i.qk = icmp slt i32 %i.qj, %5
  br i1 %i.qk, label %.lr.ph111.i, label %.preheader22.i, !llvm.loop !198

.preheader21.i:                                   ; preds = %.lr.ph118.i, %.preheader22.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader22.i ], [ %i.rg, %.lr.ph118.i ] ; 3 uses
  %.1258.lcssa.i = phi ptr [ %.0257.lcssa.i, %.preheader22.i ], [ %i.rh, %.lr.ph118.i ] ; 2 uses
  %.1256.lcssa.i = phi i32 [ %.0255.lcssa.i, %.preheader22.i ], [ %i.ri, %.lr.ph118.i ] ; 5 uses
  %i.ql = icmp slt i32 %.1256.lcssa.i, %5
  br i1 %i.ql, label %.lr.ph125.i.preheader, label %._crit_edge126.i

.lr.ph125.i.preheader:                            ; preds = %.preheader21.i
  %i.qm = sub i32 %5, %.1256.lcssa.i
  %xtraiter162 = and i32 %i.qm, 3                 ; 2 uses
  %lcmp.mod163.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol

.lr.ph125.i.prol:                                 ; preds = %.lr.ph125.i.preheader, %.lr.ph125.i.prol
  %.2124.i.prol = phi i32 [ %i.qt, %.lr.ph125.i.prol ], [ %.1256.lcssa.i, %.lr.ph125.i.preheader ]
  %.2259123.i.prol = phi ptr [ %i.qs, %.lr.ph125.i.prol ], [ %.1258.lcssa.i, %.lr.ph125.i.preheader ] ; 3 uses
  %.15122.i.prol = phi ptr [ %i.qr, %.lr.ph125.i.prol ], [ %.14.lcssa.i, %.lr.ph125.i.preheader ] ; 3 uses
  %prol.iter164 = phi i32 [ %prol.iter164.next, %.lr.ph125.i.prol ], [ 0, %.lr.ph125.i.preheader ]
  %i.qn = load i8, ptr %.2259123.i.prol, align 1, !tbaa !17
  store i8 %i.qn, ptr %.15122.i.prol, align 1, !tbaa !17
  %i.qo = getelementptr inbounds nuw i8, ptr %.2259123.i.prol, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %.15122.i.prol, i64 1
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !17
  %i.qr = getelementptr inbounds nuw i8, ptr %.15122.i.prol, i64 2 ; 3 uses
  %i.qs = getelementptr inbounds i8, ptr %.2259123.i.prol, i64 %i.ib ; 2 uses
  %i.qt = add nuw nsw i32 %.2124.i.prol, 1        ; 2 uses
  %prol.iter164.next = add i32 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i32 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.lr.ph125.i.prol.loopexit, label %.lr.ph125.i.prol, !llvm.loop !199

.lr.ph125.i.prol.loopexit:                        ; preds = %.lr.ph125.i.prol, %.lr.ph125.i.preheader
  %.lcssa132.unr = phi ptr [ poison, %.lr.ph125.i.preheader ], [ %i.qr, %.lr.ph125.i.prol ]
  %.2124.i.unr = phi i32 [ %.1256.lcssa.i, %.lr.ph125.i.preheader ], [ %i.qt, %.lr.ph125.i.prol ]
  %.2259123.i.unr = phi ptr [ %.1258.lcssa.i, %.lr.ph125.i.preheader ], [ %i.qs, %.lr.ph125.i.prol ]
  %.15122.i.unr = phi ptr [ %.14.lcssa.i, %.lr.ph125.i.preheader ], [ %i.qr, %.lr.ph125.i.prol ]
  %i.qu = sub i32 %.1256.lcssa.i, %5
  %i.qv = icmp ugt i32 %i.qu, -4
  br i1 %i.qv, label %._crit_edge126.i, label %.lr.ph125.i

.lr.ph118.i:                                      ; preds = %.preheader22.i, %.lr.ph118.i
  %.1256117.i = phi i32 [ %i.ri, %.lr.ph118.i ], [ %.0255.lcssa.i, %.preheader22.i ]
  %.1258116.i = phi ptr [ %i.rh, %.lr.ph118.i ], [ %.0257.lcssa.i, %.preheader22.i ] ; 4 uses
  %.14115.i = phi ptr [ %i.rg, %.lr.ph118.i ], [ %.13.lcssa.i, %.preheader22.i ] ; 5 uses
  %i.qw = load i8, ptr %.1258116.i, align 1, !tbaa !17
  store i8 %i.qw, ptr %.14115.i, align 1, !tbaa !17
  %i.qx = getelementptr inbounds i8, ptr %.1258116.i, i64 %i.ib ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !17
  %i.qz = getelementptr inbounds nuw i8, ptr %.14115.i, i64 1
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !17
  %i.ra = getelementptr inbounds nuw i8, ptr %.1258116.i, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %.14115.i, i64 2
  store i8 %i.rb, ptr %i.rc, align 1, !tbaa !17
  %i.rd = getelementptr i8, ptr %i.qx, i64 1
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !17
  %i.rf = getelementptr inbounds nuw i8, ptr %.14115.i, i64 3
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !17
  %i.rg = getelementptr inbounds nuw i8, ptr %.14115.i, i64 4 ; 2 uses
  %i.rh = getelementptr inbounds i8, ptr %.1258116.i, i64 %i.id ; 2 uses
  %i.ri = add nuw nsw i32 %.1256117.i, 2          ; 3 uses
  %i.rj = or disjoint i32 %i.ri, 1
  %i.rk = icmp slt i32 %i.rj, %5
  br i1 %i.rk, label %.lr.ph118.i, label %.preheader21.i, !llvm.loop !200

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.prol.loopexit, %.lr.ph125.i
  %.2124.i = phi i32 [ %i.sj, %.lr.ph125.i ], [ %.2124.i.unr, %.lr.ph125.i.prol.loopexit ]
  %.2259123.i = phi ptr [ %i.si, %.lr.ph125.i ], [ %.2259123.i.unr, %.lr.ph125.i.prol.loopexit ] ; 3 uses
  %.15122.i = phi ptr [ %i.sh, %.lr.ph125.i ], [ %.15122.i.unr, %.lr.ph125.i.prol.loopexit ] ; 9 uses
  %i.rl = load i8, ptr %.2259123.i, align 1, !tbaa !17
  store i8 %i.rl, ptr %.15122.i, align 1, !tbaa !17
  %i.rm = getelementptr inbounds nuw i8, ptr %.2259123.i, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !17
  %i.ro = getelementptr inbounds nuw i8, ptr %.15122.i, i64 1
  store i8 %i.rn, ptr %i.ro, align 1, !tbaa !17
  %i.rp = getelementptr inbounds nuw i8, ptr %.15122.i, i64 2
  %i.rq = getelementptr inbounds i8, ptr %.2259123.i, i64 %i.ib ; 3 uses
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !17
  store i8 %i.rr, ptr %i.rp, align 1, !tbaa !17
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !17
  %i.ru = getelementptr inbounds nuw i8, ptr %.15122.i, i64 3
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !17
  %i.rv = getelementptr inbounds nuw i8, ptr %.15122.i, i64 4
  %i.rw = getelementptr inbounds i8, ptr %i.rq, i64 %i.ib ; 3 uses
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !17
  store i8 %i.rx, ptr %i.rv, align 1, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !17
  %i.sa = getelementptr inbounds nuw i8, ptr %.15122.i, i64 5
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !17
  %i.sb = getelementptr inbounds nuw i8, ptr %.15122.i, i64 6
  %i.sc = getelementptr inbounds i8, ptr %i.rw, i64 %i.ib ; 3 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !17
  store i8 %i.sd, ptr %i.sb, align 1, !tbaa !17
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !17
  %i.sg = getelementptr inbounds nuw i8, ptr %.15122.i, i64 7
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !17
  %i.sh = getelementptr inbounds nuw i8, ptr %.15122.i, i64 8 ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.sc, i64 %i.ib
  %i.sj = add nuw nsw i32 %.2124.i, 4             ; 2 uses
  %exitcond197.not.i.3 = icmp eq i32 %i.sj, %5
  br i1 %exitcond197.not.i.3, label %._crit_edge126.i, label %.lr.ph125.i, !llvm.loop !201

._crit_edge126.i:                                 ; preds = %.lr.ph125.i.prol.loopexit, %.lr.ph125.i, %.preheader21.i
  %.15.lcssa.i = phi ptr [ %.14.lcssa.i, %.preheader21.i ], [ %.lcssa132.unr, %.lr.ph125.i.prol.loopexit ], [ %i.sh, %.lr.ph125.i ] ; 2 uses
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 2 ; 3 uses
  %i.sk = icmp slt i64 %indvars.iv.next199.i, %invariant.op246.i
  br i1 %i.sk, label %bb.f, label %.preheader20.loopexit.i, !llvm.loop !202

.preheader.i:                                     ; preds = %._crit_edge145.i, %.preheader.preheader.i
  %indvars.iv202.i = phi i64 [ %i.op, %.preheader.preheader.i ], [ %indvars.iv.next203.i, %._crit_edge145.i ] ; 2 uses
  %.16148.i = phi ptr [ %.12.lcssa.i, %.preheader.preheader.i ], [ %.lcssa126, %._crit_edge145.i ] ; 4 uses
  %i.sl = load ptr, ptr %0, align 8, !tbaa !9
  %i.sm = load i32, ptr %i.a, align 4, !tbaa !15
  %i.sn = sext i32 %i.sm to i64
  %i.so = mul nsw i64 %i.sn, %i.mu
  %i.sp = load i64, ptr %i.mv, align 8, !tbaa !16
  %i.sq = mul i64 %i.so, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 %indvars.iv202.i
  %i.st = getelementptr i8, ptr %i.ss, i64 %i.oq  ; 2 uses
  %i.su = load i8, ptr %i.st, align 1, !tbaa !17
  store i8 %i.su, ptr %.16148.i, align 1, !tbaa !17
  %i.sv = getelementptr inbounds nuw i8, ptr %.16148.i, i64 1 ; 2 uses
  br i1 %exitcond201.not.i, label %._crit_edge145.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.sw = getelementptr inbounds i8, ptr %i.st, i64 %i.mx ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !17
  store i8 %i.sx, ptr %i.sv, align 1, !tbaa !17
  %i.sy = getelementptr inbounds nuw i8, ptr %.16148.i, i64 2 ; 2 uses
  br i1 %exitcond201.not.i.1, label %._crit_edge145.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.sz = getelementptr inbounds i8, ptr %i.sw, i64 %i.mx
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !17
  store i8 %i.ta, ptr %i.sy, align 1, !tbaa !17
  %i.tb = getelementptr inbounds nuw i8, ptr %.16148.i, i64 3
  br label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.h, %bb.g, %.preheader.i
  %.lcssa126 = phi ptr [ %i.sv, %.preheader.i ], [ %i.sy, %bb.g ], [ %i.tb, %bb.h ]
  %indvars.iv.next203.i = add nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next203.i, %wide.trip.count.i
  br i1 %exitcond205.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.preheader.i, !llvm.loop !197

_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge145.i, %._crit_edge145.us.i, %.preheader20.i, %.lr.ph149.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn35pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 39 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph497.i, label %.preheader385.i

.lr.ph497.i:                                      ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = icmp sgt i32 %5, 3                       ; 4 uses
  %.idx853.i = shl i64 %i.k, 5                    ; 9 uses
  %.idx848.i = shl i64 %i.k, 4                    ; 4 uses
  %.idx850.i = mul i64 %i.k, 48                   ; 4 uses
  %.idx828.i = shl i64 %i.k, 3
  %.idx829.i = mul i64 %i.k, 12
  %.idx831.i = mul i64 %i.k, 20
  %.idx832.i = mul i64 %i.k, 24
  %.idx833.i = mul i64 %i.k, 28
  %.idx835.i = mul i64 %i.k, 36
  %.idx836.i = mul i64 %i.k, 40
  %.idx837.i = mul i64 %i.k, 44
  %.idx839.i = mul i64 %i.k, 52
  %.idx840.i = mul i64 %i.k, 56
  %.idx841.i = mul i64 %i.k, 60
  %i.q = trunc i64 %i.k to i32
  %i.r = insertelement <16 x i32> poison, i32 %i.q, i64 0
  %i.s = shufflevector <16 x i32> %i.r, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.t = mul <16 x i32> %i.s, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.u = and i32 %5, -4                           ; 4 uses
  %i.v = zext nneg i32 %3 to i64                  ; 2 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.x = icmp eq i32 %i.w, 1
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.x, label %.split.i.us, label %.loopexit387.i.preheader

.loopexit387.i.preheader:                         ; preds = %.lr.ph497.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 31)
  %i.z = and i64 %umax, 2147483632
  br label %.preheader385.loopexit.i

.split.i.us:                                      ; preds = %.lr.ph497.i, %.loopexit387.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit387.i.us ], [ 0, %.lr.ph497.i ] ; 3 uses
  %.0725495.i.us = phi ptr [ %.20.i.us, %.loopexit387.i.us ], [ %.val, %.lr.ph497.i ] ; 9 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9
  %i.ab = add nsw i64 %indvars.iv.i.us, %i.o
  %i.ac = mul i64 %i.ab, %i.k
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.n ; 8 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !9
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.o
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.us
  %i.ai = load <16 x float>, ptr %i.ah, align 64, !tbaa !17 ; 34 uses
  switch i32 %i.y, label %.loopexit387.i.us [
    i32 4, label %.preheader397.i.us
    i32 3, label %.preheader394.i.us
    i32 2, label %.preheader391.i.us
    i32 0, label %.preheader388.i.us
  ]

.preheader388.i.us:                               ; preds = %.split.i.us
  br i1 %i.p, label %.lr.ph475.i.us, label %._crit_edge476.i.us

.lr.ph475.i.us:                                   ; preds = %.preheader388.i.us, %.lr.ph475.i.us
  %.16474.i.us = phi ptr [ %i.eb, %.lr.ph475.i.us ], [ %.0725495.i.us, %.preheader388.i.us ] ; 3 uses
  %.12744473.i.us = phi ptr [ %i.ec, %.lr.ph475.i.us ], [ %i.ae, %.preheader388.i.us ] ; 17 uses
  %i.aj = phi <16 x i32> [ %i.ea, %.lr.ph475.i.us ], [ zeroinitializer, %.preheader388.i.us ]
  %.0771472.i.us = phi i32 [ %i.ed, %.lr.ph475.i.us ], [ 0, %.preheader388.i.us ]
  %i.ak = load <4 x float>, ptr %.12744473.i.us, align 1, !tbaa !17
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.12744473.i.us, i64 %i.k
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx828.i
  %i.ao = load <4 x float>, ptr %i.an, align 1, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx829.i
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx848.i
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx831.i
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx832.i
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx833.i
  %i.ay = load <4 x float>, ptr %i.ax, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx853.i
  %i.ba = load <4 x float>, ptr %i.az, align 1, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx835.i
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx836.i
  %i.be = load <4 x float>, ptr %i.bd, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx837.i
  %i.bg = load <4 x float>, ptr %i.bf, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx850.i
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx839.i
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx840.i
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 %.idx841.i
  %i.bo = load <4 x float>, ptr %i.bn, align 1, !tbaa !17
  %i.bp = shufflevector <4 x float> %i.ak, <4 x float> %i.as, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.ba, <4 x float> %i.bi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <16 x float> %i.bp, <16 x float> %i.bq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.bs = shufflevector <4 x float> %i.am, <4 x float> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bc, <4 x float> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <16 x float> %i.bs, <16 x float> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.bv = shufflevector <4 x float> %i.ao, <4 x float> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.be, <4 x float> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <16 x float> %i.bv, <16 x float> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.by = shufflevector <4 x float> %i.aq, <4 x float> %i.ay, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bg, <4 x float> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ca = shufflevector <16 x float> %i.by, <16 x float> %i.bz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.cb = shufflevector <16 x float> %i.br, <16 x float> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cc = shufflevector <16 x float> %i.br, <16 x float> %i.bu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cd = shufflevector <16 x float> %i.bx, <16 x float> %i.ca, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ce = shufflevector <16 x float> %i.bx, <16 x float> %i.ca, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cf = shufflevector <16 x float> %i.cb, <16 x float> %i.cd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.cg = shufflevector <16 x float> %i.cb, <16 x float> %i.cd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ch = shufflevector <16 x float> %i.cc, <16 x float> %i.ce, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ci = shufflevector <16 x float> %i.cc, <16 x float> %i.ce, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cj = fmul fast <16 x float> %i.ai, %i.cf     ; 2 uses
  %i.ck = fmul fast <16 x float> %i.ai, %i.cg     ; 2 uses
  %i.cl = fmul fast <16 x float> %i.ai, %i.ch     ; 2 uses
  %i.cm = fmul fast <16 x float> %i.ai, %i.ci     ; 2 uses
  %i.cn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cj)
  %i.co = fadd fast <16 x float> %i.cn, %i.cj
  %i.cp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.co, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cp, <16 x i8> zeroinitializer, i16 -1)
  %i.cr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cq, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.cs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ck)
  %i.ct = fadd fast <16 x float> %i.cs, %i.ck
  %i.cu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ct, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cu, <16 x i8> zeroinitializer, i16 -1)
  %i.cw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cv, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.cx = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cl)
  %i.cy = fadd fast <16 x float> %i.cx, %i.cl
  %i.cz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.da = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cz, <16 x i8> zeroinitializer, i16 -1)
  %i.db = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.da, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.dc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cm)
  %i.dd = fadd fast <16 x float> %i.dc, %i.cm
  %i.de = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.df = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.de, <16 x i8> zeroinitializer, i16 -1)
  %i.dg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.df, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.dh = shufflevector <16 x i8> %i.cr, <16 x i8> %i.cw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.di = shufflevector <16 x i8> %i.cr, <16 x i8> %i.cw, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dj = shufflevector <16 x i8> %i.db, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dk = shufflevector <16 x i8> %i.db, <16 x i8> %i.dg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dl = bitcast <16 x i8> %i.dh to <8 x i16>    ; 2 uses
  %i.dm = bitcast <16 x i8> %i.dj to <8 x i16>    ; 2 uses
  %i.dn = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.do = bitcast <8 x i16> %i.dn to <2 x i64>
  %i.dp = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dq = bitcast <8 x i16> %i.dp to <2 x i64>
  %i.dr = bitcast <16 x i8> %i.di to <8 x i16>
  %i.ds = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dt = shufflevector <8 x i16> %i.dr, <8 x i16> %i.ds, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.du = shufflevector <2 x i64> %i.do, <2 x i64> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = bitcast <8 x i64> %i.du to <16 x i32>
  %i.dw = bitcast <16 x i16> %i.dt to <8 x i32>
  %i.dx = shufflevector <8 x i32> %i.dw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <16 x i32> %i.dv, <16 x i32> %i.dx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dz = bitcast <16 x i32> %i.dy to <64 x i8>
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aj, <64 x i8> splat (i8 127), <64 x i8> %i.dz) ; 2 uses
  store <16 x i32> %i.dy, ptr %.16474.i.us, align 1, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %.16474.i.us, i64 64 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.12744473.i.us, i64 16 ; 2 uses
  %i.ed = add nuw nsw i32 %.0771472.i.us, 4       ; 2 uses
  %i.ee = or disjoint i32 %i.ed, 3
  %i.ef = icmp slt i32 %i.ee, %5
  br i1 %i.ef, label %.lr.ph475.i.us, label %bb.b, !llvm.loop !205

bb.b:                                             ; preds = %.lr.ph475.i.us
  store <16 x i32> %i.ea, ptr %i.eb, align 1, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %.16474.i.us, i64 128
  br label %._crit_edge476.i.us

._crit_edge476.i.us:                              ; preds = %bb.b, %.preheader388.i.us
  %.12744.lcssa861.i.us = phi ptr [ %i.ec, %bb.b ], [ %i.ae, %.preheader388.i.us ] ; 2 uses
  %.0771.lcssa858.i.us = phi i32 [ %i.u, %bb.b ], [ 0, %.preheader388.i.us ] ; 3 uses
  %.17.i.us = phi ptr [ %i.eg, %bb.b ], [ %.0725495.i.us, %.preheader388.i.us ] ; 2 uses
  %i.eh = or disjoint i32 %.0771.lcssa858.i.us, 1
end_hunk_5
begin_hunk_6_@_ZN4ncnn35pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.bcb = mul nsw i32 %i.bbv, 127
  store i32 %i.bcb, ptr %i.bbw, align 4, !tbaa !49
  %i.bcc = getelementptr inbounds nuw i8, ptr %.54655.i, i64 8
  br label %._crit_edge661.i

._crit_edge661.i:                                 ; preds = %bb.p, %bb.o
  %.0722.lcssa942.i = phi i32 [ %i.avh, %bb.p ], [ 0, %bb.o ] ; 7 uses
  %.0723.lcssa940.i = phi ptr [ %i.bbx, %bb.p ], [ %i.bau, %bb.o ] ; 8 uses
  %.55.i = phi ptr [ %i.bcc, %bb.p ], [ %.53674.i, %bb.o ] ; 9 uses
  %i.bcd = icmp slt i32 %.0722.lcssa942.i, %5
  br i1 %i.bcd, label %iter.check394, label %._crit_edge671.i

iter.check394:                                    ; preds = %._crit_edge661.i
  %i.bce = xor i32 %.0722.lcssa942.i, -1
  %i.bcf = add i32 %5, %i.bce                     ; 3 uses
  %i.bcg = zext i32 %i.bcf to i64
  %i.bch = add nuw nsw i64 %i.bcg, 1              ; 5 uses
  %min.iters.check373 = icmp ult i32 %i.bcf, 7
  br i1 %min.iters.check373, label %.lr.ph670.i.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %iter.check394
  %scevgep366 = getelementptr i8, ptr %.55.i, i64 1
  %i.bci = xor i32 %.0722.lcssa942.i, -1
  %i.bcj = add i32 %5, %i.bci
  %i.bck = zext i32 %i.bcj to i64                 ; 2 uses
  %scevgep367 = getelementptr i8, ptr %scevgep366, i64 %i.bck
  %scevgep368 = getelementptr i8, ptr %.0723.lcssa940.i, i64 4
  %i.bcl = shl nuw nsw i64 %i.bck, 2
  %scevgep369 = getelementptr i8, ptr %scevgep368, i64 %i.bcl
  %bound0370 = icmp ult ptr %.55.i, %scevgep369
  %bound1371 = icmp ult ptr %.0723.lcssa940.i, %scevgep367
  %found.conflict372 = and i1 %bound0370, %bound1371
  br i1 %found.conflict372, label %.lr.ph670.i.preheader, label %vector.main.loop.iter.check374

vector.main.loop.iter.check374:                   ; preds = %vector.memcheck365
  %min.iters.check375 = icmp ult i32 %i.bcf, 63
  br i1 %min.iters.check375, label %vec.epilog.ph398, label %vector.ph376

vector.ph376:                                     ; preds = %vector.main.loop.iter.check374
  %i.bcm = and i64 %i.bch, 56
  %n.vec377 = and i64 %i.bch, 8589934528          ; 6 uses
  %i.bcn = trunc i64 %n.vec377 to i32
  %i.bco = add i32 %.0722.lcssa942.i, %i.bcn
  %i.bcp = shl nuw nsw i64 %n.vec377, 2
  %i.bcq = getelementptr i8, ptr %.0723.lcssa940.i, i64 %i.bcp
  %i.bcr = getelementptr i8, ptr %.55.i, i64 %n.vec377 ; 2 uses
  %broadcast.splatinsert378 = insertelement <16 x float> poison, float %i.bax, i64 0
  %broadcast.splat379 = shufflevector <16 x float> %broadcast.splatinsert378, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph376
  %index381 = phi i64 [ 0, %vector.ph376 ], [ %index.next388, %vector.body380 ] ; 3 uses
  %i.bcs = shl i64 %index381, 2
  %next.gep382 = getelementptr i8, ptr %.0723.lcssa940.i, i64 %i.bcs ; 4 uses
  %next.gep383 = getelementptr i8, ptr %.55.i, i64 %index381 ; 4 uses
  %i.bct = getelementptr i8, ptr %next.gep382, i64 64
  %i.bcu = getelementptr i8, ptr %next.gep382, i64 128
  %i.bcv = getelementptr i8, ptr %next.gep382, i64 192
  %wide.load384 = load <16 x float>, ptr %next.gep382, align 4, !tbaa !236, !alias.scope !254
  %wide.load385 = load <16 x float>, ptr %i.bct, align 4, !tbaa !236, !alias.scope !254
  %wide.load386 = load <16 x float>, ptr %i.bcu, align 4, !tbaa !236, !alias.scope !254
  %wide.load387 = load <16 x float>, ptr %i.bcv, align 4, !tbaa !236, !alias.scope !254
  %i.bcw = fmul fast <16 x float> %wide.load384, %broadcast.splat379
  %i.bcx = fmul fast <16 x float> %wide.load385, %broadcast.splat379
  %i.bcy = fmul fast <16 x float> %wide.load386, %broadcast.splat379
  %i.bcz = fmul fast <16 x float> %wide.load387, %broadcast.splat379
  %i.bda = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.bcw)
  %i.bdb = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.bcx)
  %i.bdc = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.bcy)
  %i.bdd = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.bcz)
  %i.bde = fptosi <16 x float> %i.bda to <16 x i32>
  %i.bdf = fptosi <16 x float> %i.bdb to <16 x i32>
  %i.bdg = fptosi <16 x float> %i.bdc to <16 x i32>
  %i.bdh = fptosi <16 x float> %i.bdd to <16 x i32>
  %i.bdi = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.bde, <16 x i32> splat (i32 -127))
  %i.bdj = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.bdf, <16 x i32> splat (i32 -127))
  %i.bdk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.bdg, <16 x i32> splat (i32 -127))
  %i.bdl = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.bdh, <16 x i32> splat (i32 -127))
  %i.bdm = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.bdi, <16 x i32> splat (i32 127))
  %i.bdn = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.bdj, <16 x i32> splat (i32 127))
  %i.bdo = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.bdk, <16 x i32> splat (i32 127))
  %i.bdp = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.bdl, <16 x i32> splat (i32 127))
  %i.bdq = trunc nsw <16 x i32> %i.bdm to <16 x i8>
  %i.bdr = trunc nsw <16 x i32> %i.bdn to <16 x i8>
  %i.bds = trunc nsw <16 x i32> %i.bdo to <16 x i8>
  %i.bdt = trunc nsw <16 x i32> %i.bdp to <16 x i8>
  %i.bdu = getelementptr i8, ptr %next.gep383, i64 16
  %i.bdv = getelementptr i8, ptr %next.gep383, i64 32
  %i.bdw = getelementptr i8, ptr %next.gep383, i64 48
  store <16 x i8> %i.bdq, ptr %next.gep383, align 1, !tbaa !17, !alias.scope !257, !noalias !254
  store <16 x i8> %i.bdr, ptr %i.bdu, align 1, !tbaa !17, !alias.scope !257, !noalias !254
  store <16 x i8> %i.bds, ptr %i.bdv, align 1, !tbaa !17, !alias.scope !257, !noalias !254
  store <16 x i8> %i.bdt, ptr %i.bdw, align 1, !tbaa !17, !alias.scope !257, !noalias !254
  %index.next388 = add nuw i64 %index381, 64      ; 2 uses
  %i.bdx = icmp eq i64 %index.next388, %n.vec377
  br i1 %i.bdx, label %middle.block389, label %vector.body380, !llvm.loop !259

middle.block389:                                  ; preds = %vector.body380
  %cmp.n390 = icmp eq i64 %i.bch, %n.vec377
  br i1 %cmp.n390, label %._crit_edge671.i, label %vec.epilog.iter.check396

vec.epilog.iter.check396:                         ; preds = %middle.block389
  %min.epilog.iters.check397 = icmp eq i64 %i.bcm, 0
  br i1 %min.epilog.iters.check397, label %.lr.ph670.i.preheader, label %vec.epilog.ph398, !prof !46

vec.epilog.ph398:                                 ; preds = %vector.main.loop.iter.check374, %vec.epilog.iter.check396
  %vec.epilog.resume.val391 = phi i64 [ %n.vec377, %vec.epilog.iter.check396 ], [ 0, %vector.main.loop.iter.check374 ]
  %n.vec399 = and i64 %i.bch, 8589934584          ; 5 uses
  %i.bdy = trunc i64 %n.vec399 to i32
  %i.bdz = add i32 %.0722.lcssa942.i, %i.bdy
  %i.bea = shl nuw nsw i64 %n.vec399, 2
  %i.beb = getelementptr i8, ptr %.0723.lcssa940.i, i64 %i.bea
  %i.bec = getelementptr i8, ptr %.55.i, i64 %n.vec399 ; 2 uses
  %broadcast.splatinsert400 = insertelement <8 x float> poison, float %i.bax, i64 0
  %broadcast.splat401 = shufflevector <8 x float> %broadcast.splatinsert400, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body402

vec.epilog.vector.body402:                        ; preds = %vec.epilog.vector.body402, %vec.epilog.ph398
  %index403 = phi i64 [ %vec.epilog.resume.val391, %vec.epilog.ph398 ], [ %index.next407, %vec.epilog.vector.body402 ] ; 3 uses
  %i.bed = shl i64 %index403, 2
  %next.gep404 = getelementptr i8, ptr %.0723.lcssa940.i, i64 %i.bed
  %next.gep405 = getelementptr i8, ptr %.55.i, i64 %index403
  %wide.load406 = load <8 x float>, ptr %next.gep404, align 4, !tbaa !236, !alias.scope !254
  %i.bee = fmul fast <8 x float> %wide.load406, %broadcast.splat401
  %i.bef = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.bee)
  %i.beg = fptosi <8 x float> %i.bef to <8 x i32>
  %i.beh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.beg, <8 x i32> splat (i32 -127))
  %i.bei = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.beh, <8 x i32> splat (i32 127))
  %i.bej = trunc nsw <8 x i32> %i.bei to <8 x i8>
  store <8 x i8> %i.bej, ptr %next.gep405, align 1, !tbaa !17, !alias.scope !257, !noalias !254
  %index.next407 = add nuw i64 %index403, 8       ; 2 uses
  %i.bek = icmp eq i64 %index.next407, %n.vec399
  br i1 %i.bek, label %vec.epilog.middle.block408, label %vec.epilog.vector.body402, !llvm.loop !260

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body402
  %cmp.n409 = icmp eq i64 %i.bch, %n.vec399
  br i1 %cmp.n409, label %._crit_edge671.i, label %.lr.ph670.i.preheader

.lr.ph670.i.preheader:                            ; preds = %vector.memcheck365, %iter.check394, %vec.epilog.iter.check396, %vec.epilog.middle.block408
  %.1668.i.ph = phi i32 [ %.0722.lcssa942.i, %iter.check394 ], [ %.0722.lcssa942.i, %vector.memcheck365 ], [ %i.bco, %vec.epilog.iter.check396 ], [ %i.bdz, %vec.epilog.middle.block408 ] ; 4 uses
  %.1724667.i.ph = phi ptr [ %.0723.lcssa940.i, %iter.check394 ], [ %.0723.lcssa940.i, %vector.memcheck365 ], [ %i.bcq, %vec.epilog.iter.check396 ], [ %i.beb, %vec.epilog.middle.block408 ] ; 3 uses
  %.56666.i.ph = phi ptr [ %.55.i, %iter.check394 ], [ %.55.i, %vector.memcheck365 ], [ %i.bcr, %vec.epilog.iter.check396 ], [ %i.bec, %vec.epilog.middle.block408 ] ; 3 uses
  %i.bel = sub i32 %5, %.1668.i.ph
  %.neg515 = add i32 %.1668.i.ph, 1
  %xtraiter506 = and i32 %i.bel, 1
  %lcmp.mod507.not = icmp eq i32 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %.lr.ph670.i.prol.loopexit, label %.lr.ph670.i.prol

.lr.ph670.i.prol:                                 ; preds = %.lr.ph670.i.preheader
  %i.bem = load float, ptr %.1724667.i.ph, align 4, !tbaa !236
  %i.ben = fmul fast float %i.bem, %i.bax
  %i.beo = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ben)
  %i.bep = fptosi float %i.beo to i32
  %spec.select.i362.i.prol = tail call i32 @llvm.smax.i32(i32 %i.bep, i32 -127)
  %.0.i363.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i362.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i363.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.56666.i.ph, align 1, !tbaa !17
  %i.beq = getelementptr inbounds nuw i8, ptr %.56666.i.ph, i64 1 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %.1724667.i.ph, i64 4
  %i.bes = add nuw nsw i32 %.1668.i.ph, 1
  br label %.lr.ph670.i.prol.loopexit

.lr.ph670.i.prol.loopexit:                        ; preds = %.lr.ph670.i.prol, %.lr.ph670.i.preheader
  %.lcssa415.unr = phi ptr [ poison, %.lr.ph670.i.preheader ], [ %i.beq, %.lr.ph670.i.prol ]
  %.1668.i.unr = phi i32 [ %.1668.i.ph, %.lr.ph670.i.preheader ], [ %i.bes, %.lr.ph670.i.prol ]
  %.1724667.i.unr = phi ptr [ %.1724667.i.ph, %.lr.ph670.i.preheader ], [ %i.ber, %.lr.ph670.i.prol ]
  %.56666.i.unr = phi ptr [ %.56666.i.ph, %.lr.ph670.i.preheader ], [ %i.beq, %.lr.ph670.i.prol ]
  %i.bet = icmp eq i32 %5, %.neg515
  br i1 %i.bet, label %._crit_edge671.i, label %.lr.ph670.i

.lr.ph670.i:                                      ; preds = %.lr.ph670.i.prol.loopexit, %.lr.ph670.i
  %.1668.i = phi i32 [ %i.bfg, %.lr.ph670.i ], [ %.1668.i.unr, %.lr.ph670.i.prol.loopexit ]
  %.1724667.i = phi ptr [ %i.bff, %.lr.ph670.i ], [ %.1724667.i.unr, %.lr.ph670.i.prol.loopexit ] ; 3 uses
  %.56666.i = phi ptr [ %i.bfe, %.lr.ph670.i ], [ %.56666.i.unr, %.lr.ph670.i.prol.loopexit ] ; 3 uses
  %i.beu = load float, ptr %.1724667.i, align 4, !tbaa !236
  %i.bev = fmul fast float %i.beu, %i.bax
  %i.bew = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bev)
  %i.bex = fptosi float %i.bew to i32
  %spec.select.i362.i = tail call i32 @llvm.smax.i32(i32 %i.bex, i32 -127)
  %.0.i363.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i362.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i363.i to i8
  store i8 %.0.i.i, ptr %.56666.i, align 1, !tbaa !17
  %i.bey = getelementptr inbounds nuw i8, ptr %.56666.i, i64 1
  %i.bez = getelementptr inbounds nuw i8, ptr %.1724667.i, i64 4
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !236
  %i.bfb = fmul fast float %i.bfa, %i.bax
  %i.bfc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bfb)
  %i.bfd = fptosi float %i.bfc to i32
  %spec.select.i362.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bfd, i32 -127)
  %.0.i363.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i362.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i363.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.bey, align 1, !tbaa !17
  %i.bfe = getelementptr inbounds nuw i8, ptr %.56666.i, i64 2 ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.1724667.i, i64 8
  %i.bfg = add nuw nsw i32 %.1668.i, 2            ; 2 uses
  %exitcond792.not.i.1 = icmp eq i32 %i.bfg, %5
  br i1 %exitcond792.not.i.1, label %._crit_edge671.i, label %.lr.ph670.i, !llvm.loop !261

._crit_edge671.i:                                 ; preds = %.lr.ph670.i.prol.loopexit, %.lr.ph670.i, %middle.block389, %vec.epilog.middle.block408, %._crit_edge661.i
  %.56.lcssa.i = phi ptr [ %.55.i, %._crit_edge661.i ], [ %i.bec, %vec.epilog.middle.block408 ], [ %i.bcr, %middle.block389 ], [ %.lcssa415.unr, %.lr.ph670.i.prol.loopexit ], [ %i.bfe, %.lr.ph670.i ]
  %indvars.iv.next794.i = add nsw i64 %indvars.iv793.i, 1 ; 2 uses
  %exitcond796.not.i = icmp eq i64 %indvars.iv.next794.i, %wide.trip.count.i
  br i1 %exitcond796.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.o, !llvm.loop !262

_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %._crit_edge671.i, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32>, <16 x i8>, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32>, <16 x i8>, i8) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn45transpose_pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 50 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph608.i, label %.preheader542.i

.lr.ph608.i:                                      ; preds = %bb.a
  %i.m = sext i32 %4 to i64
  %i.n = mul i64 %i.k, %i.m
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = icmp sgt i32 %5, 15
  %.idx1049.i = shl i64 %i.k, 6
  %i.q = icmp sgt i32 %5, 3                       ; 4 uses
  %i.r = icmp sgt i32 %5, 7
  %.idx1048.i = shl i64 %i.k, 5
  %.idx1047.i = shl i64 %i.k, 4                   ; 2 uses
  %.idx1044.i = shl i64 %i.k, 3                   ; 2 uses
  %.idx1045.i = mul i64 %i.k, 12
  %i.s = and i32 %5, -4
  %i.t = zext nneg i32 %3 to i64                  ; 2 uses
  %i.u = sext i32 %i.b to i64
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.w = icmp eq i32 %i.v, 1
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.w, label %.split.i.us, label %.loopexit544.i.preheader

.loopexit544.i.preheader:                         ; preds = %.lr.ph608.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 31)
  %i.y = and i64 %umax, 2147483632
  br label %.preheader542.loopexit.i

.split.i.us:                                      ; preds = %.lr.ph608.i, %.loopexit544.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit544.i.us ], [ 0, %.lr.ph608.i ] ; 3 uses
  %.0907606.i.us = phi ptr [ %.14.i.us, %.loopexit544.i.us ], [ %.val, %.lr.ph608.i ] ; 11 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.n
  %i.ab = add nsw i64 %indvars.iv.i.us, %i.o      ; 2 uses
  %i.ac = mul nsw i64 %i.ab, %i.u
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac ; 5 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !9
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.o
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.us
  %i.ah = load <16 x float>, ptr %i.ag, align 64, !tbaa !17 ; 21 uses
  switch i32 %i.x, label %.loopexit544.i.us [
    i32 4, label %.preheader546.i.us
    i32 3, label %bb.e
    i32 2, label %bb.c
    i32 0, label %.preheader545.i.us
  ]

.preheader545.i.us:                               ; preds = %.split.i.us
  br i1 %i.q, label %.lr.ph586.i.us, label %._crit_edge587.i.us

.lr.ph586.i.us:                                   ; preds = %.preheader545.i.us, %.lr.ph586.i.us
  %.10585.i.us = phi ptr [ %i.ci, %.lr.ph586.i.us ], [ %.0907606.i.us, %.preheader545.i.us ] ; 3 uses
  %.6933584.i.us = phi ptr [ %i.cj, %.lr.ph586.i.us ], [ %i.ad, %.preheader545.i.us ] ; 5 uses
  %i.ai = phi <16 x i32> [ %i.ch, %.lr.ph586.i.us ], [ zeroinitializer, %.preheader545.i.us ]
  %.0946583.i.us = phi i32 [ %i.ck, %.lr.ph586.i.us ], [ 0, %.preheader545.i.us ]
  %i.aj = load <16 x float>, ptr %.6933584.i.us, align 1, !tbaa !17
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.6933584.i.us, i64 %i.k
  %i.al = load <16 x float>, ptr %i.ak, align 1, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.6933584.i.us, i64 %.idx1044.i
  %i.an = load <16 x float>, ptr %i.am, align 1, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %.6933584.i.us, i64 %.idx1045.i
  %i.ap = load <16 x float>, ptr %i.ao, align 1, !tbaa !17
  %i.aq = fmul fast <16 x float> %i.aj, %i.ah     ; 2 uses
  %i.ar = fmul fast <16 x float> %i.al, %i.ah     ; 2 uses
  %i.as = fmul fast <16 x float> %i.an, %i.ah     ; 2 uses
  %i.at = fmul fast <16 x float> %i.ap, %i.ah     ; 2 uses
  %i.au = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aq)
  %i.av = fadd fast <16 x float> %i.au, %i.aq
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.av, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aw, <16 x i8> zeroinitializer, i16 -1)
  %i.ay = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ax, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.az = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ar)
  %i.ba = fadd fast <16 x float> %i.az, %i.ar
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ba, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bb, <16 x i8> zeroinitializer, i16 -1)
  %i.bd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bc, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.be = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.as)
  %i.bf = fadd fast <16 x float> %i.be, %i.as
  %i.bg = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bf, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bh = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bg, <16 x i8> zeroinitializer, i16 -1)
  %i.bi = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bh, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.at)
  %i.bk = fadd fast <16 x float> %i.bj, %i.at
  %i.bl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bl, <16 x i8> zeroinitializer, i16 -1)
  %i.bn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bm, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bo = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bp = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bd, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bq = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.br = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bs = bitcast <16 x i8> %i.bo to <8 x i16>    ; 2 uses
  %i.bt = bitcast <16 x i8> %i.bq to <8 x i16>    ; 2 uses
  %i.bu = shufflevector <8 x i16> %i.bs, <8 x i16> %i.bt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bv = bitcast <8 x i16> %i.bu to <2 x i64>
  %i.bw = shufflevector <8 x i16> %i.bs, <8 x i16> %i.bt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bx = bitcast <8 x i16> %i.bw to <2 x i64>
  %i.by = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.bz = bitcast <16 x i8> %i.br to <8 x i16>
  %i.ca = shufflevector <8 x i16> %i.by, <8 x i16> %i.bz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cb = shufflevector <2 x i64> %i.bv, <2 x i64> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = bitcast <8 x i64> %i.cb to <16 x i32>
  %i.cd = bitcast <16 x i16> %i.ca to <8 x i32>
  %i.ce = shufflevector <8 x i32> %i.cd, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cf = shufflevector <16 x i32> %i.cc, <16 x i32> %i.ce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.cg = bitcast <16 x i32> %i.cf to <64 x i8>
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ai, <64 x i8> splat (i8 127), <64 x i8> %i.cg) ; 2 uses
  store <16 x i32> %i.cf, ptr %.10585.i.us, align 1, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.10585.i.us, i64 64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.6933584.i.us, i64 %.idx1047.i ; 2 uses
  %i.ck = add nuw nsw i32 %.0946583.i.us, 4       ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = icmp slt i32 %i.cl, %5
  br i1 %i.cm, label %.lr.ph586.i.us, label %bb.b, !llvm.loop !263

bb.b:                                             ; preds = %.lr.ph586.i.us
  store <16 x i32> %i.ch, ptr %i.ci, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.10585.i.us, i64 128
  br label %._crit_edge587.i.us

._crit_edge587.i.us:                              ; preds = %bb.b, %.preheader545.i.us
  %.6933.lcssa987.i.us = phi ptr [ %i.cj, %bb.b ], [ %i.ad, %.preheader545.i.us ] ; 2 uses
  %.0946.lcssa984.i.us = phi i32 [ %i.s, %bb.b ], [ 0, %.preheader545.i.us ] ; 3 uses
  %.11.i.us = phi ptr [ %i.cn, %bb.b ], [ %.0907606.i.us, %.preheader545.i.us ] ; 2 uses
  %i.co = or disjoint i32 %.0946.lcssa984.i.us, 1
end_hunk_6
begin_hunk_7_@_ZN4ncnn45transpose_pack_A_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.bmp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bmo)
  %i.bmq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bmp, <16 x i8> zeroinitializer, i8 -1)
  %i.bmr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bmq, <16 x i8> splat (i8 -127)) ; 5 uses
  %i.bms = bitcast <16 x i8> %i.bmr to <2 x i64>
  %i.bmt = extractelement <2 x i64> %i.bms, i64 0 ; 2 uses
  store i64 %i.bmt, ptr %.64792.i, align 8, !tbaa !219
  %i.bmu = trunc i64 %i.bmt to i8
  %i.bmv = sext i8 %i.bmu to i32
  %i.bmw = shufflevector <16 x i8> %i.bmr, <16 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.bmx = extractelement <16 x i8> %i.bmr, i64 5
  %i.bmy = sext i8 %i.bmx to i32
  %i.bmz = extractelement <16 x i8> %i.bmr, i64 6
  %i.bna = sext i8 %i.bmz to i32
  %i.bnb = extractelement <16 x i8> %i.bmr, i64 7
  %i.bnc = sext i8 %i.bnb to i32
  %i.bnd = sext <4 x i8> %i.bmw to <4 x i32>
  %i.bne = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bnd)
  %op.rdx = add i32 %i.bne, %i.bmy
  %op.rdx272 = add nsw i32 %i.bna, %i.bnc
  %op.rdx273 = add i32 %.0916791.i, %i.bmv
  %op.rdx274 = add i32 %op.rdx, %op.rdx272
  %op.rdx275 = add i32 %op.rdx274, %op.rdx273     ; 2 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %.64792.i, i64 8 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %.2921789.i, i64 %.idx1020.i
  %i.bnh = add nuw nsw i32 %.0917790.i, 8         ; 2 uses
  %i.bni = or disjoint i32 %i.bnh, 7
  %i.bnj = icmp slt i32 %i.bni, %5
  br i1 %i.bnj, label %.lr.ph794.i, label %._crit_edge795.thread.i, !llvm.loop !292

._crit_edge795.thread.i:                          ; preds = %.lr.ph794.i
  %i.bnk = mul nsw i32 %op.rdx275, 127
  br label %bb.aa

._crit_edge795.i:                                 ; preds = %bb.z
  br i1 %i.bka, label %bb.aa, label %.loopexit.i

bb.aa:                                            ; preds = %._crit_edge795.i, %._crit_edge795.thread.i
  %.64.lcssa1130.i = phi ptr [ %i.bnf, %._crit_edge795.thread.i ], [ %.60827.i, %._crit_edge795.i ] ; 2 uses
  %.0916.lcssa1129.i = phi i32 [ %i.bnk, %._crit_edge795.thread.i ], [ 0, %._crit_edge795.i ]
  store i32 %.0916.lcssa1129.i, ptr %.64.lcssa1130.i, align 4, !tbaa !49
  %i.bnl = getelementptr inbounds nuw i8, ptr %.64.lcssa1130.i, i64 4
  br label %.loopexit.i

bb.ab:                                            ; preds = %.split1222.i
  %i.bnm = insertelement <4 x float> poison, float %i.bkz, i64 0
  %i.bnn = shufflevector <4 x float> %i.bnm, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bka, label %.lr.ph804.i, label %.loopexit.i

.lr.ph804.i:                                      ; preds = %bb.ab, %.lr.ph804.i
  %.67802.i = phi ptr [ %i.bok, %.lr.ph804.i ], [ %.60827.i, %bb.ab ] ; 3 uses
  %.0909801.i = phi i32 [ %i.boj, %.lr.ph804.i ], [ 0, %bb.ab ]
  %.0910800.i = phi i32 [ %i.bom, %.lr.ph804.i ], [ 0, %bb.ab ]
  %.4923799.i = phi ptr [ %i.bol, %.lr.ph804.i ], [ %i.bkw, %bb.ab ] ; 2 uses
  %i.bno = load <4 x float>, ptr %.4923799.i, align 16, !tbaa !17
  %i.bnp = fmul fast <4 x float> %i.bno, %i.bnn   ; 2 uses
  %i.bnq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bnp)
  %i.bnr = fadd fast <4 x float> %i.bnq, %i.bnp
  %i.bns = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bnr) ; 2 uses
  %i.bnt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bns, <4 x i32> %i.bns)
  %i.bnu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bnt, <8 x i16> splat (i16 -127))
  %i.bnv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bnu, <8 x i16> splat (i16 127))
  %i.bnw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bnv, <8 x i16> poison) ; 4 uses
  %i.bnx = bitcast <16 x i8> %i.bnw to <4 x i32>
  %i.bny = extractelement <4 x i32> %i.bnx, i64 0 ; 2 uses
  store i32 %i.bny, ptr %.67802.i, align 4, !tbaa !49
  %sext.i = shl i32 %i.bny, 24
  %i.bnz = ashr exact i32 %sext.i, 24
  %i.boa = extractelement <16 x i8> %i.bnw, i64 1
  %i.bob = sext i8 %i.boa to i32
  %i.boc = extractelement <16 x i8> %i.bnw, i64 2
  %i.bod = sext i8 %i.boc to i32
  %i.boe = extractelement <16 x i8> %i.bnw, i64 3
  %i.bof = sext i8 %i.boe to i32
  %i.bog = add i32 %.0909801.i, %i.bob
  %i.boh = add i32 %i.bog, %i.bod
  %i.boi = add i32 %i.boh, %i.bof
  %i.boj = add i32 %i.boi, %i.bnz                 ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %.67802.i, i64 4 ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %.4923799.i, i64 %.idx1019.i
  %i.bom = add nuw nsw i32 %.0910800.i, 4         ; 2 uses
  %i.bon = or disjoint i32 %i.bom, 3
  %i.boo = icmp slt i32 %i.bon, %5
  br i1 %i.boo, label %.lr.ph804.i, label %bb.ac, !llvm.loop !293

bb.ac:                                            ; preds = %.lr.ph804.i
  %i.bop = mul nsw i32 %i.boj, 127
  store i32 %i.bop, ptr %i.bok, align 4, !tbaa !49
  %i.boq = getelementptr inbounds nuw i8, ptr %.67802.i, i64 8
  br label %.loopexit.i

bb.ad:                                            ; preds = %.split1222.i
  %i.bor = insertelement <4 x float> poison, float %i.bkz, i64 0
  %i.bos = shufflevector <4 x float> %i.bor, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.bka, label %.lr.ph814.i, label %._crit_edge815.i

.lr.ph814.i:                                      ; preds = %bb.ad, %.lr.ph814.i
  %.0812.i = phi i32 [ %i.bpo, %.lr.ph814.i ], [ 0, %bb.ad ]
  %.0906811.i = phi i32 [ %i.bpr, %.lr.ph814.i ], [ 0, %bb.ad ]
  %.70810.i = phi ptr [ %i.bpp, %.lr.ph814.i ], [ %.60827.i, %bb.ad ] ; 3 uses
  %.6925809.i = phi ptr [ %i.bpq, %.lr.ph814.i ], [ %i.bkw, %bb.ad ] ; 2 uses
  %i.bot = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.6925809.i, <4 x i32> %i.bkf, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bou = fmul fast <4 x float> %i.bot, %i.bos   ; 2 uses
  %i.bov = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bou)
  %i.bow = fadd fast <4 x float> %i.bov, %i.bou
  %i.box = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bow) ; 2 uses
  %i.boy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.box, <4 x i32> %i.box)
  %i.boz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.boy, <8 x i16> splat (i16 -127))
  %i.bpa = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.boz, <8 x i16> splat (i16 127))
  %i.bpb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bpa, <8 x i16> poison) ; 4 uses
  %i.bpc = bitcast <16 x i8> %i.bpb to <4 x i32>
  %i.bpd = extractelement <4 x i32> %i.bpc, i64 0 ; 2 uses
  store i32 %i.bpd, ptr %.70810.i, align 4, !tbaa !49
  %sext950.i = shl i32 %i.bpd, 24
  %i.bpe = ashr exact i32 %sext950.i, 24
  %i.bpf = extractelement <16 x i8> %i.bpb, i64 1
  %i.bpg = sext i8 %i.bpf to i32
  %i.bph = extractelement <16 x i8> %i.bpb, i64 2
  %i.bpi = sext i8 %i.bph to i32
  %i.bpj = extractelement <16 x i8> %i.bpb, i64 3
  %i.bpk = sext i8 %i.bpj to i32
  %i.bpl = add i32 %.0812.i, %i.bpg
  %i.bpm = add i32 %i.bpl, %i.bpi
  %i.bpn = add i32 %i.bpm, %i.bpk
  %i.bpo = add i32 %i.bpn, %i.bpe                 ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %.70810.i, i64 4 ; 2 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %.6925809.i, i64 %.idx1019.i ; 2 uses
  %i.bpr = add nuw nsw i32 %.0906811.i, 4         ; 2 uses
  %i.bps = or disjoint i32 %i.bpr, 3
  %i.bpt = icmp slt i32 %i.bps, %5
  br i1 %i.bpt, label %.lr.ph814.i, label %bb.ae, !llvm.loop !294

bb.ae:                                            ; preds = %.lr.ph814.i
  %i.bpu = mul nsw i32 %i.bpo, 127
  store i32 %i.bpu, ptr %i.bpp, align 4, !tbaa !49
  %i.bpv = getelementptr inbounds nuw i8, ptr %.70810.i, i64 8
  br label %._crit_edge815.i

._crit_edge815.i:                                 ; preds = %bb.ae, %bb.ad
  %.0906.lcssa1151.i = phi i32 [ %i.bkg, %bb.ae ], [ 0, %bb.ad ] ; 4 uses
  %.6925.lcssa1148.i = phi ptr [ %i.bpq, %bb.ae ], [ %i.bkw, %bb.ad ] ; 3 uses
  %.71.i = phi ptr [ %i.bpv, %bb.ae ], [ %.60827.i, %bb.ad ] ; 4 uses
  %i.bpw = icmp slt i32 %.0906.lcssa1151.i, %5
  br i1 %i.bpw, label %.lr.ph824.i.preheader, label %.loopexit.i

.lr.ph824.i.preheader:                            ; preds = %._crit_edge815.i
  %.neg349 = or disjoint i32 %.0906.lcssa1151.i, 1
  br i1 %lcmp.mod341.not, label %.lr.ph824.i.prol.loopexit, label %.lr.ph824.i.prol

.lr.ph824.i.prol:                                 ; preds = %.lr.ph824.i.preheader
  %i.bpx = load float, ptr %.6925.lcssa1148.i, align 4, !tbaa !236
  %i.bpy = fmul fast float %i.bpx, %i.bkz
  %i.bpz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bpy)
  %i.bqa = fptosi float %i.bpz to i32
  %spec.select.i525.i.prol = tail call i32 @llvm.smax.i32(i32 %i.bqa, i32 -127)
  %.0.i526.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i525.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i526.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.71.i, align 1, !tbaa !17
  %i.bqb = getelementptr inbounds nuw i8, ptr %.71.i, i64 1 ; 2 uses
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %.6925.lcssa1148.i, i64 %i.k
  %i.bqd = or disjoint i32 %.0906.lcssa1151.i, 1
  br label %.lr.ph824.i.prol.loopexit

.lr.ph824.i.prol.loopexit:                        ; preds = %.lr.ph824.i.prol, %.lr.ph824.i.preheader
  %.lcssa278.unr = phi ptr [ poison, %.lr.ph824.i.preheader ], [ %i.bqb, %.lr.ph824.i.prol ]
  %.1822.i.unr = phi i32 [ %.0906.lcssa1151.i, %.lr.ph824.i.preheader ], [ %i.bqd, %.lr.ph824.i.prol ]
  %.72821.i.unr = phi ptr [ %.71.i, %.lr.ph824.i.preheader ], [ %i.bqb, %.lr.ph824.i.prol ]
  %.7926820.i.unr = phi ptr [ %.6925.lcssa1148.i, %.lr.ph824.i.preheader ], [ %i.bqc, %.lr.ph824.i.prol ]
  %i.bqe = icmp eq i32 %5, %.neg349
  br i1 %i.bqe, label %.loopexit.i, label %.lr.ph824.i

.lr.ph824.i:                                      ; preds = %.lr.ph824.i.prol.loopexit, %.lr.ph824.i
  %.1822.i = phi i32 [ %i.bqr, %.lr.ph824.i ], [ %.1822.i.unr, %.lr.ph824.i.prol.loopexit ]
  %.72821.i = phi ptr [ %i.bqp, %.lr.ph824.i ], [ %.72821.i.unr, %.lr.ph824.i.prol.loopexit ] ; 3 uses
  %.7926820.i = phi ptr [ %i.bqq, %.lr.ph824.i ], [ %.7926820.i.unr, %.lr.ph824.i.prol.loopexit ] ; 2 uses
  %i.bqf = load float, ptr %.7926820.i, align 4, !tbaa !236
  %i.bqg = fmul fast float %i.bqf, %i.bkz
  %i.bqh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bqg)
  %i.bqi = fptosi float %i.bqh to i32
  %spec.select.i525.i = tail call i32 @llvm.smax.i32(i32 %i.bqi, i32 -127)
  %.0.i526.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i525.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i526.i to i8
  store i8 %.0.i.i, ptr %.72821.i, align 1, !tbaa !17
  %i.bqj = getelementptr inbounds nuw i8, ptr %.72821.i, i64 1
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %.7926820.i, i64 %i.k ; 2 uses
  %i.bql = load float, ptr %i.bqk, align 4, !tbaa !236
  %i.bqm = fmul fast float %i.bql, %i.bkz
  %i.bqn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bqm)
  %i.bqo = fptosi float %i.bqn to i32
  %spec.select.i525.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bqo, i32 -127)
  %.0.i526.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i525.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i526.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.bqj, align 1, !tbaa !17
  %i.bqp = getelementptr inbounds nuw i8, ptr %.72821.i, i64 2 ; 2 uses
  %i.bqq = getelementptr inbounds nuw [4 x i8], ptr %i.bqk, i64 %i.k
  %i.bqr = add nuw nsw i32 %.1822.i, 2            ; 2 uses
  %exitcond931.not.i.1 = icmp eq i32 %i.bqr, %5
  br i1 %exitcond931.not.i.1, label %.loopexit.i, label %.lr.ph824.i, !llvm.loop !295

.loopexit.i:                                      ; preds = %.lr.ph824.i.prol.loopexit, %.lr.ph824.i, %._crit_edge815.i, %bb.ac, %bb.ab, %bb.aa, %._crit_edge795.i, %bb.y, %._crit_edge785.i, %.split1222.i
  %.73.i = phi ptr [ %.60827.i, %.split1222.i ], [ %.71.i, %._crit_edge815.i ], [ %i.bmi, %bb.y ], [ %.60827.i, %bb.ab ], [ %i.boq, %bb.ac ], [ %i.bnl, %bb.aa ], [ %.60827.i, %._crit_edge795.i ], [ %.60827.i, %._crit_edge785.i ], [ %.lcssa278.unr, %.lr.ph824.i.prol.loopexit ], [ %i.bqp, %.lr.ph824.i ]
  %indvars.iv.next933.i = add nsw i64 %indvars.iv932.i, 1 ; 2 uses
  %exitcond935.not.i = icmp eq i64 %indvars.iv.next933.i, %wide.trip.count.i
  br i1 %exitcond935.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %.split1222.i, !llvm.loop !296

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %.lr.ph828.i, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn35pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 40 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph411.i, label %.preheader315.i

.lr.ph411.i:                                      ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %4
  %i.n = sext i32 %i.m to i64
  %i.o = insertelement <16 x float> poison, float %6, i64 0
  %i.p = shufflevector <16 x float> %i.o, <16 x float> poison, <16 x i32> zeroinitializer ; 34 uses
  %i.q = icmp sgt i32 %5, 3                       ; 4 uses
  %.idx713.i = shl i64 %i.k, 5                    ; 9 uses
  %.idx708.i = shl i64 %i.k, 4                    ; 4 uses
  %.idx710.i = mul i64 %i.k, 48                   ; 4 uses
  %.idx688.i = shl i64 %i.k, 3
  %.idx689.i = mul i64 %i.k, 12
  %.idx691.i = mul i64 %i.k, 20
  %.idx692.i = mul i64 %i.k, 24
  %.idx693.i = mul i64 %i.k, 28
  %.idx695.i = mul i64 %i.k, 36
  %.idx696.i = mul i64 %i.k, 40
  %.idx697.i = mul i64 %i.k, 44
  %.idx699.i = mul i64 %i.k, 52
  %.idx700.i = mul i64 %i.k, 56
  %.idx701.i = mul i64 %i.k, 60
  %i.r = trunc i64 %i.k to i32
  %i.s = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %i.t = shufflevector <16 x i32> %i.s, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.u = mul <16 x i32> %i.t, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.v = and i32 %5, -4                           ; 4 uses
  %i.w = zext nneg i32 %3 to i64                  ; 2 uses
  %i.x = sext i32 %2 to i64
  %i.y = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  br i1 %i.z, label %.split.i.us, label %.loopexit317.i.preheader

.loopexit317.i.preheader:                         ; preds = %.lr.ph411.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.w, i64 31)
  %i.ab = and i64 %umax, 2147483632
  br label %.preheader315.loopexit.i

.split.i.us:                                      ; preds = %.lr.ph411.i, %.loopexit317.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit317.i.us ], [ 0, %.lr.ph411.i ] ; 2 uses
  %.0605410.i.us = phi ptr [ %.16.i.us, %.loopexit317.i.us ], [ %.val, %.lr.ph411.i ] ; 9 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = add nsw i64 %indvars.iv.i.us, %i.x
  %i.ae = mul i64 %i.ad, %i.k
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.n ; 8 uses
  switch i32 %i.aa, label %.loopexit317.i.us [
    i32 4, label %.preheader331.i.us
    i32 3, label %.preheader327.i.us
    i32 2, label %.preheader323.i.us
    i32 0, label %.preheader319.i.us
  ]

.preheader319.i.us:                               ; preds = %.split.i.us
  br i1 %i.q, label %.lr.ph393.i.us, label %.preheader318.i.us

.lr.ph393.i.us:                                   ; preds = %.preheader319.i.us, %.lr.ph393.i.us
  %.13392.i.us = phi ptr [ %i.df, %.lr.ph393.i.us ], [ %.0605410.i.us, %.preheader319.i.us ] ; 2 uses
  %.12624391.i.us = phi ptr [ %i.dg, %.lr.ph393.i.us ], [ %i.ag, %.preheader319.i.us ] ; 17 uses
  %.0642390.i.us = phi i32 [ %i.dh, %.lr.ph393.i.us ], [ 0, %.preheader319.i.us ]
  %i.ah = load <4 x float>, ptr %.12624391.i.us, align 1, !tbaa !17
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.12624391.i.us, i64 %i.k
  %i.aj = load <4 x float>, ptr %i.ai, align 1, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx688.i
  %i.al = load <4 x float>, ptr %i.ak, align 1, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx689.i
  %i.an = load <4 x float>, ptr %i.am, align 1, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx708.i
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx691.i
  %i.ar = load <4 x float>, ptr %i.aq, align 1, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx692.i
  %i.at = load <4 x float>, ptr %i.as, align 1, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx693.i
  %i.av = load <4 x float>, ptr %i.au, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx713.i
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx695.i
  %i.az = load <4 x float>, ptr %i.ay, align 1, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx696.i
  %i.bb = load <4 x float>, ptr %i.ba, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx697.i
  %i.bd = load <4 x float>, ptr %i.bc, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx710.i
  %i.bf = load <4 x float>, ptr %i.be, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx699.i
  %i.bh = load <4 x float>, ptr %i.bg, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx700.i
  %i.bj = load <4 x float>, ptr %i.bi, align 1, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 %.idx701.i
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !17
  %i.bm = shufflevector <4 x float> %i.ah, <4 x float> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.al, <4 x float> %i.an, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <16 x float> %i.bm, <16 x float> %i.bn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bp = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.at, <4 x float> %i.av, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <16 x float> %i.bp, <16 x float> %i.bq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bs = shufflevector <4 x float> %i.ax, <4 x float> %i.az, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bb, <4 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <16 x float> %i.bs, <16 x float> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bv = shufflevector <4 x float> %i.bf, <4 x float> %i.bh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bj, <4 x float> %i.bl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <16 x float> %i.bv, <16 x float> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.by = fmul fast <16 x float> %i.bo, %i.p      ; 2 uses
  %i.bz = fmul fast <16 x float> %i.br, %i.p      ; 2 uses
  %i.ca = fmul fast <16 x float> %i.bu, %i.p      ; 2 uses
  %i.cb = fmul fast <16 x float> %i.bx, %i.p      ; 2 uses
  %i.cc = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.by)
  %i.cd = fadd fast <16 x float> %i.cc, %i.by
  %i.ce = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cf = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ce, <16 x i8> zeroinitializer, i16 -1)
  %i.cg = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cf, <16 x i8> splat (i8 -127))
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bz)
  %i.cj = fadd fast <16 x float> %i.ci, %i.bz
  %i.ck = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ck, <16 x i8> zeroinitializer, i16 -1)
  %i.cm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cl, <16 x i8> splat (i8 -127))
  %i.cn = bitcast <16 x i8> %i.cm to <2 x i64>
  %i.co = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ca)
  %i.cp = fadd fast <16 x float> %i.co, %i.ca
  %i.cq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cq, <16 x i8> zeroinitializer, i16 -1)
  %i.cs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cb)
  %i.ct = fadd fast <16 x float> %i.cs, %i.cb
  %i.cu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ct, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cu, <16 x i8> zeroinitializer, i16 -1)
  %i.cw = shufflevector <16 x i8> %i.cr, <16 x i8> %i.cv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cx = tail call <32 x i8> @llvm.smax.v32i8(<32 x i8> %i.cw, <32 x i8> splat (i8 -127))
  %i.cy = shufflevector <2 x i64> %i.ch, <2 x i64> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = bitcast <8 x i64> %i.cy to <16 x i32>
  %i.da = bitcast <32 x i8> %i.cx to <8 x i32>
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dc = shufflevector <16 x i32> %i.cz, <16 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dd = bitcast <16 x i32> %i.dc to <64 x i8>
  %i.de = add <64 x i8> %i.dd, splat (i8 127)
  store <64 x i8> %i.de, ptr %.13392.i.us, align 1, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %.13392.i.us, i64 64 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.12624391.i.us, i64 16 ; 2 uses
  %i.dh = add nuw nsw i32 %.0642390.i.us, 4       ; 2 uses
  %i.di = or disjoint i32 %i.dh, 3
  %i.dj = icmp slt i32 %i.di, %5
  br i1 %i.dj, label %.lr.ph393.i.us, label %.preheader318.i.us, !llvm.loop !297

.preheader318.i.us:                               ; preds = %.lr.ph393.i.us, %.preheader319.i.us
  %.0642.lcssa.i.us = phi i32 [ 0, %.preheader319.i.us ], [ %i.v, %.lr.ph393.i.us ] ; 3 uses
  %.12624.lcssa.i.us = phi ptr [ %i.ag, %.preheader319.i.us ], [ %i.dg, %.lr.ph393.i.us ] ; 2 uses
  %.13.lcssa.i.us = phi ptr [ %.0605410.i.us, %.preheader319.i.us ], [ %i.df, %.lr.ph393.i.us ] ; 2 uses
  %i.dk = or disjoint i32 %.0642.lcssa.i.us, 1
  %i.dl = icmp slt i32 %i.dk, %5
  br i1 %i.dl, label %.lr.ph400.i.us, label %.preheader316.i.us

.lr.ph400.i.us:                                   ; preds = %.preheader318.i.us, %.lr.ph400.i.us
  %.14399.i.us = phi ptr [ %i.ee, %.lr.ph400.i.us ], [ %.13.lcssa.i.us, %.preheader318.i.us ] ; 3 uses
  %.13625398.i.us = phi ptr [ %i.ef, %.lr.ph400.i.us ], [ %.12624.lcssa.i.us, %.preheader318.i.us ] ; 3 uses
  %.1643397.i.us = phi i32 [ %i.eg, %.lr.ph400.i.us ], [ %.0642.lcssa.i.us, %.preheader318.i.us ]
  %i.dm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.13625398.i.us, <16 x i32> %i.u, <16 x i1> splat (i1 true), i32 4)
  %i.dn = getelementptr inbounds nuw i8, ptr %.13625398.i.us, i64 4
  %i.do = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.dn, <16 x i32> %i.u, <16 x i1> splat (i1 true), i32 4)
  %i.dp = fmul fast <16 x float> %i.dm, %i.p      ; 2 uses
  %i.dq = fmul fast <16 x float> %i.do, %i.p      ; 2 uses
  %i.dr = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.dp)
  %i.ds = fadd fast <16 x float> %i.dr, %i.dp
  %i.dt = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ds, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.du = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dt, <16 x i8> zeroinitializer, i16 -1)
  %i.dv = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.du, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.dw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.dq)
  %i.dx = fadd fast <16 x float> %i.dw, %i.dq
  %i.dy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dy, <16 x i8> zeroinitializer, i16 -1)
  %i.ea = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.dz, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.eb = shufflevector <16 x i8> %i.dv, <16 x i8> %i.ea, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ec = shufflevector <16 x i8> %i.dv, <16 x i8> %i.ea, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
end_hunk_7
begin_hunk_8_@_ZN4ncnn35pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a

vector.memcheck326:                               ; preds = %iter.check355
  %scevgep327 = getelementptr i8, ptr %.44.lcssa.i, i64 1
  %i.awd = xor i32 %.0.lcssa.i, -1
  %i.awe = add i32 %5, %i.awd
  %i.awf = zext i32 %i.awe to i64                 ; 2 uses
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.awf
  %scevgep329 = getelementptr i8, ptr %.0603.lcssa.i, i64 4
  %i.awg = shl nuw nsw i64 %i.awf, 2
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.awg
  %bound0331 = icmp ult ptr %.44.lcssa.i, %scevgep330
  %bound1332 = icmp ult ptr %.0603.lcssa.i, %scevgep328
  %found.conflict333 = and i1 %bound0331, %bound1332
  br i1 %found.conflict333, label %.lr.ph557.i.preheader, label %vector.main.loop.iter.check335

vector.main.loop.iter.check335:                   ; preds = %vector.memcheck326
  %min.iters.check336 = icmp ult i32 %i.awa, 63
  br i1 %min.iters.check336, label %vec.epilog.ph359, label %vector.ph337

vector.ph337:                                     ; preds = %vector.main.loop.iter.check335
  %i.awh = and i64 %i.awc, 56
  %n.vec338 = and i64 %i.awc, 8589934528          ; 6 uses
  %i.awi = trunc i64 %n.vec338 to i32
  %i.awj = add i32 %.0.lcssa.i, %i.awi
  %i.awk = shl nuw nsw i64 %n.vec338, 2
  %i.awl = getelementptr i8, ptr %.0603.lcssa.i, i64 %i.awk
  %i.awm = getelementptr i8, ptr %.44.lcssa.i, i64 %n.vec338 ; 2 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph337
  %index342 = phi i64 [ 0, %vector.ph337 ], [ %index.next349, %vector.body341 ] ; 3 uses
  %i.awn = shl i64 %index342, 2
  %next.gep343 = getelementptr i8, ptr %.0603.lcssa.i, i64 %i.awn ; 4 uses
  %next.gep344 = getelementptr i8, ptr %.44.lcssa.i, i64 %index342 ; 4 uses
  %i.awo = getelementptr i8, ptr %next.gep343, i64 64
  %i.awp = getelementptr i8, ptr %next.gep343, i64 128
  %i.awq = getelementptr i8, ptr %next.gep343, i64 192
  %wide.load345 = load <16 x float>, ptr %next.gep343, align 4, !tbaa !236, !alias.scope !341
  %wide.load346 = load <16 x float>, ptr %i.awo, align 4, !tbaa !236, !alias.scope !341
  %wide.load347 = load <16 x float>, ptr %i.awp, align 4, !tbaa !236, !alias.scope !341
  %wide.load348 = load <16 x float>, ptr %i.awq, align 4, !tbaa !236, !alias.scope !341
  %i.awr = fmul fast <16 x float> %wide.load345, %broadcast.splat340
  %i.aws = fmul fast <16 x float> %wide.load346, %broadcast.splat340
  %i.awt = fmul fast <16 x float> %wide.load347, %broadcast.splat340
  %i.awu = fmul fast <16 x float> %wide.load348, %broadcast.splat340
  %i.awv = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.awr)
  %i.aww = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.aws)
  %i.awx = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.awt)
  %i.awy = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.awu)
  %i.awz = fptosi <16 x float> %i.awv to <16 x i32>
  %i.axa = fptosi <16 x float> %i.aww to <16 x i32>
  %i.axb = fptosi <16 x float> %i.awx to <16 x i32>
  %i.axc = fptosi <16 x float> %i.awy to <16 x i32>
  %i.axd = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.awz, <16 x i32> splat (i32 -127))
  %i.axe = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.axa, <16 x i32> splat (i32 -127))
  %i.axf = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.axb, <16 x i32> splat (i32 -127))
  %i.axg = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.axc, <16 x i32> splat (i32 -127))
  %i.axh = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.axd, <16 x i32> splat (i32 127))
  %i.axi = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.axe, <16 x i32> splat (i32 127))
  %i.axj = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.axf, <16 x i32> splat (i32 127))
  %i.axk = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.axg, <16 x i32> splat (i32 127))
  %i.axl = trunc nsw <16 x i32> %i.axh to <16 x i8>
  %i.axm = trunc nsw <16 x i32> %i.axi to <16 x i8>
  %i.axn = trunc nsw <16 x i32> %i.axj to <16 x i8>
  %i.axo = trunc nsw <16 x i32> %i.axk to <16 x i8>
  %i.axp = getelementptr i8, ptr %next.gep344, i64 16
  %i.axq = getelementptr i8, ptr %next.gep344, i64 32
  %i.axr = getelementptr i8, ptr %next.gep344, i64 48
  store <16 x i8> %i.axl, ptr %next.gep344, align 1, !tbaa !17, !alias.scope !344, !noalias !341
  store <16 x i8> %i.axm, ptr %i.axp, align 1, !tbaa !17, !alias.scope !344, !noalias !341
  store <16 x i8> %i.axn, ptr %i.axq, align 1, !tbaa !17, !alias.scope !344, !noalias !341
  store <16 x i8> %i.axo, ptr %i.axr, align 1, !tbaa !17, !alias.scope !344, !noalias !341
  %index.next349 = add nuw i64 %index342, 64      ; 2 uses
  %i.axs = icmp eq i64 %index.next349, %n.vec338
  br i1 %i.axs, label %middle.block350, label %vector.body341, !llvm.loop !346

middle.block350:                                  ; preds = %vector.body341
  %cmp.n351 = icmp eq i64 %i.awc, %n.vec338
  br i1 %cmp.n351, label %._crit_edge558.i, label %vec.epilog.iter.check357

vec.epilog.iter.check357:                         ; preds = %middle.block350
  %min.epilog.iters.check358 = icmp eq i64 %i.awh, 0
  br i1 %min.epilog.iters.check358, label %.lr.ph557.i.preheader, label %vec.epilog.ph359, !prof !46

vec.epilog.ph359:                                 ; preds = %vector.main.loop.iter.check335, %vec.epilog.iter.check357
  %vec.epilog.resume.val352 = phi i64 [ %n.vec338, %vec.epilog.iter.check357 ], [ 0, %vector.main.loop.iter.check335 ]
  %n.vec360 = and i64 %i.awc, 8589934584          ; 5 uses
  %i.axt = trunc i64 %n.vec360 to i32
  %i.axu = add i32 %.0.lcssa.i, %i.axt
  %i.axv = shl nuw nsw i64 %n.vec360, 2
  %i.axw = getelementptr i8, ptr %.0603.lcssa.i, i64 %i.axv
  %i.axx = getelementptr i8, ptr %.44.lcssa.i, i64 %n.vec360 ; 2 uses
  br label %vec.epilog.vector.body363

vec.epilog.vector.body363:                        ; preds = %vec.epilog.vector.body363, %vec.epilog.ph359
  %index364 = phi i64 [ %vec.epilog.resume.val352, %vec.epilog.ph359 ], [ %index.next368, %vec.epilog.vector.body363 ] ; 3 uses
  %i.axy = shl i64 %index364, 2
  %next.gep365 = getelementptr i8, ptr %.0603.lcssa.i, i64 %i.axy
  %next.gep366 = getelementptr i8, ptr %.44.lcssa.i, i64 %index364
  %wide.load367 = load <8 x float>, ptr %next.gep365, align 4, !tbaa !236, !alias.scope !341
  %i.axz = fmul fast <8 x float> %wide.load367, %broadcast.splat362
  %i.aya = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.axz)
  %i.ayb = fptosi <8 x float> %i.aya to <8 x i32>
  %i.ayc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ayb, <8 x i32> splat (i32 -127))
  %i.ayd = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ayc, <8 x i32> splat (i32 127))
  %i.aye = trunc nsw <8 x i32> %i.ayd to <8 x i8>
  store <8 x i8> %i.aye, ptr %next.gep366, align 1, !tbaa !17, !alias.scope !344, !noalias !341
  %index.next368 = add nuw i64 %index364, 8       ; 2 uses
  %i.ayf = icmp eq i64 %index.next368, %n.vec360
  br i1 %i.ayf, label %vec.epilog.middle.block369, label %vec.epilog.vector.body363, !llvm.loop !347

vec.epilog.middle.block369:                       ; preds = %vec.epilog.vector.body363
  %cmp.n370 = icmp eq i64 %i.awc, %n.vec360
  br i1 %cmp.n370, label %._crit_edge558.i, label %.lr.ph557.i.preheader

.lr.ph557.i.preheader:                            ; preds = %vector.memcheck326, %iter.check355, %vec.epilog.iter.check357, %vec.epilog.middle.block369
  %.1556.i.ph = phi i32 [ %.0.lcssa.i, %iter.check355 ], [ %.0.lcssa.i, %vector.memcheck326 ], [ %i.awj, %vec.epilog.iter.check357 ], [ %i.axu, %vec.epilog.middle.block369 ] ; 4 uses
  %.1604555.i.ph = phi ptr [ %.0603.lcssa.i, %iter.check355 ], [ %.0603.lcssa.i, %vector.memcheck326 ], [ %i.awl, %vec.epilog.iter.check357 ], [ %i.axw, %vec.epilog.middle.block369 ] ; 3 uses
  %.45554.i.ph = phi ptr [ %.44.lcssa.i, %iter.check355 ], [ %.44.lcssa.i, %vector.memcheck326 ], [ %i.awm, %vec.epilog.iter.check357 ], [ %i.axx, %vec.epilog.middle.block369 ] ; 3 uses
  %i.ayg = sub i32 %5, %.1556.i.ph
  %.neg465 = add i32 %.1556.i.ph, 1
  %xtraiter456 = and i32 %i.ayg, 1
  %lcmp.mod457.not = icmp eq i32 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %.lr.ph557.i.prol.loopexit, label %.lr.ph557.i.prol

.lr.ph557.i.prol:                                 ; preds = %.lr.ph557.i.preheader
  %i.ayh = load float, ptr %.1604555.i.ph, align 4, !tbaa !236
  %i.ayi = fmul fast float %i.ayh, %6
  %i.ayj = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ayi)
  %i.ayk = fptosi float %i.ayj to i32
  %spec.select.i285.i.prol = tail call i32 @llvm.smax.i32(i32 %i.ayk, i32 -127)
  %.0.i286.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i285.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i286.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.45554.i.ph, align 1, !tbaa !17
  %i.ayl = getelementptr inbounds nuw i8, ptr %.45554.i.ph, i64 1 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %.1604555.i.ph, i64 4
  %i.ayn = add nuw nsw i32 %.1556.i.ph, 1
  br label %.lr.ph557.i.prol.loopexit

.lr.ph557.i.prol.loopexit:                        ; preds = %.lr.ph557.i.prol, %.lr.ph557.i.preheader
  %.lcssa375.unr = phi ptr [ poison, %.lr.ph557.i.preheader ], [ %i.ayl, %.lr.ph557.i.prol ]
  %.1556.i.unr = phi i32 [ %.1556.i.ph, %.lr.ph557.i.preheader ], [ %i.ayn, %.lr.ph557.i.prol ]
  %.1604555.i.unr = phi ptr [ %.1604555.i.ph, %.lr.ph557.i.preheader ], [ %i.aym, %.lr.ph557.i.prol ]
  %.45554.i.unr = phi ptr [ %.45554.i.ph, %.lr.ph557.i.preheader ], [ %i.ayl, %.lr.ph557.i.prol ]
  %i.ayo = icmp eq i32 %5, %.neg465
  br i1 %i.ayo, label %._crit_edge558.i, label %.lr.ph557.i

.lr.ph550.i:                                      ; preds = %bb.d, %.lr.ph550.i
  %.0548.i = phi i32 [ %i.azc, %.lr.ph550.i ], [ 0, %bb.d ]
  %.0603547.i = phi ptr [ %i.azb, %.lr.ph550.i ], [ %i.avx, %bb.d ] ; 2 uses
  %.44546.i = phi ptr [ %i.aza, %.lr.ph550.i ], [ %.43561.i, %bb.d ] ; 2 uses
  %i.ayp = load <4 x float>, ptr %.0603547.i, align 1, !tbaa !17
  %i.ayq = fmul fast <4 x float> %i.ayp, %i.arj   ; 2 uses
  %i.ayr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ayq)
  %i.ays = fadd fast <4 x float> %i.ayr, %i.ayq
  %i.ayt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ays) ; 2 uses
  %i.ayu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ayt, <4 x i32> %i.ayt)
  %i.ayv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ayu, <8 x i16> splat (i16 -127))
  %i.ayw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ayv, <8 x i16> splat (i16 127))
  %i.ayx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ayw, <8 x i16> poison)
  %i.ayy = shufflevector <16 x i8> %i.ayx, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ayz = add <4 x i8> %i.ayy, splat (i8 127)
  store <4 x i8> %i.ayz, ptr %.44546.i, align 1, !tbaa !17
  %i.aza = getelementptr inbounds nuw i8, ptr %.44546.i, i64 4 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %.0603547.i, i64 16 ; 2 uses
  %i.azc = add nuw nsw i32 %.0548.i, 4            ; 2 uses
  %i.azd = or disjoint i32 %i.azc, 3
  %i.aze = icmp slt i32 %i.azd, %5
  br i1 %i.aze, label %.lr.ph550.i, label %.preheader.i, !llvm.loop !348

.lr.ph557.i:                                      ; preds = %.lr.ph557.i.prol.loopexit, %.lr.ph557.i
  %.1556.i = phi i32 [ %i.azr, %.lr.ph557.i ], [ %.1556.i.unr, %.lr.ph557.i.prol.loopexit ]
  %.1604555.i = phi ptr [ %i.azq, %.lr.ph557.i ], [ %.1604555.i.unr, %.lr.ph557.i.prol.loopexit ] ; 3 uses
  %.45554.i = phi ptr [ %i.azp, %.lr.ph557.i ], [ %.45554.i.unr, %.lr.ph557.i.prol.loopexit ] ; 3 uses
  %i.azf = load float, ptr %.1604555.i, align 4, !tbaa !236
  %i.azg = fmul fast float %i.azf, %6
  %i.azh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.azg)
  %i.azi = fptosi float %i.azh to i32
  %spec.select.i285.i = tail call i32 @llvm.smax.i32(i32 %i.azi, i32 -127)
  %.0.i286.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i285.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i286.i to i8
  store i8 %.0.i.i, ptr %.45554.i, align 1, !tbaa !17
  %i.azj = getelementptr inbounds nuw i8, ptr %.45554.i, i64 1
  %i.azk = getelementptr inbounds nuw i8, ptr %.1604555.i, i64 4
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !236
  %i.azm = fmul fast float %i.azl, %6
  %i.azn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.azm)
  %i.azo = fptosi float %i.azn to i32
  %spec.select.i285.i.1 = tail call i32 @llvm.smax.i32(i32 %i.azo, i32 -127)
  %.0.i286.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i285.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i286.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.azj, align 1, !tbaa !17
  %i.azp = getelementptr inbounds nuw i8, ptr %.45554.i, i64 2 ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %.1604555.i, i64 8
  %i.azr = add nuw nsw i32 %.1556.i, 2            ; 2 uses
  %exitcond666.not.i.1 = icmp eq i32 %i.azr, %5
  br i1 %exitcond666.not.i.1, label %._crit_edge558.i, label %.lr.ph557.i, !llvm.loop !349

._crit_edge558.i:                                 ; preds = %.lr.ph557.i.prol.loopexit, %.lr.ph557.i, %middle.block350, %vec.epilog.middle.block369, %.preheader.i
  %.45.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader.i ], [ %i.axx, %vec.epilog.middle.block369 ], [ %i.awm, %middle.block350 ], [ %.lcssa375.unr, %.lr.ph557.i.prol.loopexit ], [ %i.azp, %.lr.ph557.i ]
  %indvars.iv.next668.i = add nsw i64 %indvars.iv667.i, 1 ; 2 uses
  %exitcond670.not.i = icmp eq i64 %indvars.iv.next668.i, %wide.trip.count.i
  br i1 %exitcond670.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.d, !llvm.loop !350

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge558.i, %.preheader291.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203  ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 50 uses
  %i.l = icmp sgt i32 %3, 15
  br i1 %i.l, label %.lr.ph463.i, label %.preheader415.i

.lr.ph463.i:                                      ; preds = %bb.a
  %i.m = sext i32 %4 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 4 uses
  %i.o = insertelement <16 x float> poison, float %6, i64 0
  %i.p = shufflevector <16 x float> %i.o, <16 x float> poison, <16 x i32> zeroinitializer ; 37 uses
  %i.q = icmp ne i32 %i.b, 16
  %i.r = icmp slt i32 %5, 16
  %.idx812.i = shl i64 %i.k, 6
  %.idx811.i = shl i64 %i.k, 5
  %i.s = icmp ne i32 %i.b, 4
  %i.t = icmp slt i32 %5, 4
  %.idx810.i = shl i64 %i.k, 4                    ; 2 uses
  %i.u = icmp eq i32 %i.b, 1
  %i.v = icmp sgt i32 %5, 3
  %.idx807.i = shl i64 %i.k, 3                    ; 2 uses
  %.idx808.i = mul i64 %i.k, 12
  %i.w = and i32 %5, -4
  %i.x = zext nneg i32 %3 to i64                  ; 5 uses
  %i.y = sext i32 %2 to i64                       ; 4 uses
  %i.z = sext i32 %i.b to i64                     ; 4 uses
  %brmerge.i = or i1 %i.r, %i.q
  %brmerge631.i = or i1 %i.t, %i.s
  br i1 %brmerge.i, label %.lr.ph463.i.split.us, label %.lr.ph.i.preheader

.lr.ph463.i.split.us:                             ; preds = %.lr.ph463.i
  %i.aa = icmp slt i32 %5, 8
  %i.ab = icmp ne i32 %i.b, 8
  %brmerge628.i = or i1 %i.aa, %i.ab
  br i1 %brmerge628.i, label %.lr.ph463.i.split.us.split.us, label %.loopexit425.i.us

.lr.ph463.i.split.us.split.us:                    ; preds = %.lr.ph463.i.split.us
  br i1 %brmerge631.i, label %.lr.ph463.i.split.us.split.us.split.us, label %.loopexit425.i.us.us

.lr.ph463.i.split.us.split.us.split.us:           ; preds = %.lr.ph463.i.split.us.split.us
  br i1 %i.u, label %.loopexit425.i.us.us.us.us, label %.loopexit425.i.us.us.us.preheader

.loopexit425.i.us.us.us.preheader:                ; preds = %.lr.ph463.i.split.us.split.us.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 31)
  %i.ac = and i64 %umax, 2147483632
  br label %.preheader415.loopexit.i

.loopexit425.i.us.us.us.us:                       ; preds = %.lr.ph463.i.split.us.split.us.split.us, %.loopexit417.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit417.i.us.us.us.us ], [ 0, %.lr.ph463.i.split.us.split.us.split.us ] ; 2 uses
  %.0704462.i.us.us.us.us = phi ptr [ %.10.i.us.us.us.us, %.loopexit417.i.us.us.us.us ], [ %.val, %.lr.ph463.i.split.us.split.us.split.us ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.n
  %i.af = add nsw i64 %indvars.iv.i.us.us.us.us, %i.y
  %i.ag = mul nuw nsw i64 %i.af, %i.z
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag ; 2 uses
  br i1 %i.v, label %.lr.ph445.i.us.us.us.us, label %.preheader418.i.us.us.us.us

.lr.ph445.i.us.us.us.us:                          ; preds = %.loopexit425.i.us.us.us.us, %.lr.ph445.i.us.us.us.us
  %.7444.i.us.us.us.us = phi ptr [ %i.ch, %.lr.ph445.i.us.us.us.us ], [ %.0704462.i.us.us.us.us, %.loopexit425.i.us.us.us.us ] ; 2 uses
  %.6719443.i.us.us.us.us = phi ptr [ %i.ci, %.lr.ph445.i.us.us.us.us ], [ %i.ah, %.loopexit425.i.us.us.us.us ] ; 5 uses
  %.0734442.i.us.us.us.us = phi i32 [ %i.cj, %.lr.ph445.i.us.us.us.us ], [ 0, %.loopexit425.i.us.us.us.us ]
  %i.ai = load <16 x float>, ptr %.6719443.i.us.us.us.us, align 1, !tbaa !17
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.6719443.i.us.us.us.us, i64 %i.k
  %i.ak = load <16 x float>, ptr %i.aj, align 1, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %.6719443.i.us.us.us.us, i64 %.idx807.i
  %i.am = load <16 x float>, ptr %i.al, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.6719443.i.us.us.us.us, i64 %.idx808.i
  %i.ao = load <16 x float>, ptr %i.an, align 1, !tbaa !17
  %i.ap = fmul fast <16 x float> %i.ai, %i.p      ; 2 uses
  %i.aq = fmul fast <16 x float> %i.ak, %i.p      ; 2 uses
  %i.ar = fmul fast <16 x float> %i.am, %i.p      ; 2 uses
  %i.as = fmul fast <16 x float> %i.ao, %i.p      ; 2 uses
  %i.at = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ap)
  %i.au = fadd fast <16 x float> %i.at, %i.ap
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.av, <16 x i8> zeroinitializer, i16 -1)
  %i.ax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aw, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aq)
  %i.az = fadd fast <16 x float> %i.ay, %i.aq
  %i.ba = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.az, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ba, <16 x i8> zeroinitializer, i16 -1)
  %i.bc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bb, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bd = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ar)
  %i.be = fadd fast <16 x float> %i.bd, %i.ar
  %i.bf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bf, <16 x i8> zeroinitializer, i16 -1)
  %i.bh = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bg, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.as)
  %i.bj = fadd fast <16 x float> %i.bi, %i.as
  %i.bk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bk, <16 x i8> zeroinitializer, i16 -1)
  %i.bm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bl, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.bn = shufflevector <16 x i8> %i.ax, <16 x i8> %i.bc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bo = shufflevector <16 x i8> %i.ax, <16 x i8> %i.bc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bp = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bq = shufflevector <16 x i8> %i.bh, <16 x i8> %i.bm, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.br = bitcast <16 x i8> %i.bn to <8 x i16>    ; 2 uses
  %i.bs = bitcast <16 x i8> %i.bp to <8 x i16>    ; 2 uses
  %i.bt = shufflevector <8 x i16> %i.br, <8 x i16> %i.bs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bu = bitcast <8 x i16> %i.bt to <2 x i64>
  %i.bv = shufflevector <8 x i16> %i.br, <8 x i16> %i.bs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bw = bitcast <8 x i16> %i.bv to <2 x i64>
  %i.bx = bitcast <16 x i8> %i.bo to <8 x i16>
  %i.by = bitcast <16 x i8> %i.bq to <8 x i16>
  %i.bz = shufflevector <8 x i16> %i.bx, <8 x i16> %i.by, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ca = shufflevector <2 x i64> %i.bu, <2 x i64> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = bitcast <8 x i64> %i.ca to <16 x i32>
  %i.cc = bitcast <16 x i16> %i.bz to <8 x i32>
  %i.cd = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <16 x i32> %i.cb, <16 x i32> %i.cd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cf = bitcast <16 x i32> %i.ce to <64 x i8>
  %i.cg = add <64 x i8> %i.cf, splat (i8 127)
  store <64 x i8> %i.cg, ptr %.7444.i.us.us.us.us, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.7444.i.us.us.us.us, i64 64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.6719443.i.us.us.us.us, i64 %.idx810.i ; 2 uses
  %i.cj = add nuw nsw i32 %.0734442.i.us.us.us.us, 4 ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 3
  %i.cl = icmp slt i32 %i.ck, %5
  br i1 %i.cl, label %.lr.ph445.i.us.us.us.us, label %.preheader418.i.us.us.us.us, !llvm.loop !351

.preheader418.i.us.us.us.us:                      ; preds = %.lr.ph445.i.us.us.us.us, %.loopexit425.i.us.us.us.us
  %.0734.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit425.i.us.us.us.us ], [ %i.w, %.lr.ph445.i.us.us.us.us ] ; 3 uses
  %.6719.lcssa.i.us.us.us.us = phi ptr [ %i.ah, %.loopexit425.i.us.us.us.us ], [ %i.ci, %.lr.ph445.i.us.us.us.us ] ; 2 uses
  %.7.lcssa.i.us.us.us.us = phi ptr [ %.0704462.i.us.us.us.us, %.loopexit425.i.us.us.us.us ], [ %i.ch, %.lr.ph445.i.us.us.us.us ] ; 2 uses
  %i.cm = or disjoint i32 %.0734.lcssa.i.us.us.us.us, 1
  %i.cn = icmp slt i32 %i.cm, %5
  br i1 %i.cn, label %.lr.ph452.i.us.us.us.us, label %.preheader416.i.us.us.us.us

.lr.ph452.i.us.us.us.us:                          ; preds = %.preheader418.i.us.us.us.us, %.lr.ph452.i.us.us.us.us
  %.8451.i.us.us.us.us = phi ptr [ %i.dg, %.lr.ph452.i.us.us.us.us ], [ %.7.lcssa.i.us.us.us.us, %.preheader418.i.us.us.us.us ] ; 3 uses
  %.7720450.i.us.us.us.us = phi ptr [ %i.dh, %.lr.ph452.i.us.us.us.us ], [ %.6719.lcssa.i.us.us.us.us, %.preheader418.i.us.us.us.us ] ; 3 uses
  %.1735449.i.us.us.us.us = phi i32 [ %i.di, %.lr.ph452.i.us.us.us.us ], [ %.0734.lcssa.i.us.us.us.us, %.preheader418.i.us.us.us.us ]
  %i.co = load <16 x float>, ptr %.7720450.i.us.us.us.us, align 1, !tbaa !17
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.7720450.i.us.us.us.us, i64 %i.k
  %i.cq = load <16 x float>, ptr %i.cp, align 1, !tbaa !17
  %i.cr = fmul fast <16 x float> %i.co, %i.p      ; 2 uses
  %i.cs = fmul fast <16 x float> %i.cq, %i.p      ; 2 uses
  %i.ct = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cr)
  %i.cu = fadd fast <16 x float> %i.ct, %i.cr
  %i.cv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.cv, <16 x i8> zeroinitializer, i16 -1)
  %i.cx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.cw, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.cy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.cs)
  %i.cz = fadd fast <16 x float> %i.cy, %i.cs
  %i.da = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.db = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.da, <16 x i8> zeroinitializer, i16 -1)
  %i.dc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.db, <16 x i8> splat (i8 -127)) ; 2 uses
  %i.dd = shufflevector <16 x i8> %i.cx, <16 x i8> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.de = shufflevector <16 x i8> %i.cx, <16 x i8> %i.dc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.dd, ptr %.8451.i.us.us.us.us, align 16, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %.8451.i.us.us.us.us, i64 16
  store <16 x i8> %i.de, ptr %i.df, align 16, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.8451.i.us.us.us.us, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.7720450.i.us.us.us.us, i64 %.idx807.i ; 2 uses
  %i.di = add nuw nsw i32 %.1735449.i.us.us.us.us, 2 ; 3 uses
  %i.dj = or disjoint i32 %i.di, 1
  %i.dk = icmp slt i32 %i.dj, %5
  br i1 %i.dk, label %.lr.ph452.i.us.us.us.us, label %.preheader416.i.us.us.us.us, !llvm.loop !352

.preheader416.i.us.us.us.us:                      ; preds = %.lr.ph452.i.us.us.us.us, %.preheader418.i.us.us.us.us
  %.1735.lcssa.i.us.us.us.us = phi i32 [ %.0734.lcssa.i.us.us.us.us, %.preheader418.i.us.us.us.us ], [ %i.di, %.lr.ph452.i.us.us.us.us ] ; 5 uses
  %.7720.lcssa.i.us.us.us.us = phi ptr [ %.6719.lcssa.i.us.us.us.us, %.preheader418.i.us.us.us.us ], [ %i.dh, %.lr.ph452.i.us.us.us.us ] ; 3 uses
  %.8.lcssa.i.us.us.us.us = phi ptr [ %.7.lcssa.i.us.us.us.us, %.preheader418.i.us.us.us.us ], [ %i.dg, %.lr.ph452.i.us.us.us.us ] ; 4 uses
  %i.dl = icmp slt i32 %.1735.lcssa.i.us.us.us.us, %5
  br i1 %i.dl, label %.lr.ph459.i.us.us.us.us.preheader, label %.loopexit417.i.us.us.us.us

.lr.ph459.i.us.us.us.us.preheader:                ; preds = %.preheader416.i.us.us.us.us
  %i.dm = sub i32 %5, %.1735.lcssa.i.us.us.us.us
  %.neg = add i32 %.1735.lcssa.i.us.us.us.us, 1
  %xtraiter = and i32 %i.dm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph459.i.us.us.us.us.prol.loopexit, label %.lr.ph459.i.us.us.us.us.prol

.lr.ph459.i.us.us.us.us.prol:                     ; preds = %.lr.ph459.i.us.us.us.us.preheader
  %i.dn = load <16 x float>, ptr %.7720.lcssa.i.us.us.us.us, align 1, !tbaa !17
  %i.do = fmul fast <16 x float> %i.dn, %i.p      ; 2 uses
  %i.dp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.do)
  %i.dq = fadd fast <16 x float> %i.dp, %i.do
  %i.dr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ds = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.dr, <16 x i8> zeroinitializer, i16 -1)
  %i.dt = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ds, <16 x i8> splat (i8 -127))
end_hunk_8
begin_hunk_9_@_ZN4ncnn45transpose_pack_B_tile_fp32_to_int8_avx512vnniERKNS_3MatERS0_iiiif:bb.a
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bby, i64 %.idx784.i ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit256.unr-lcssa, label %.lr.ph595.i, !llvm.loop !379

.loopexit393.i:                                   ; preds = %bb.e
  br i1 %brmerge664.i, label %.loopexit392.i, label %.lr.ph601.i.preheader

.lr.ph601.i.preheader:                            ; preds = %.loopexit393.i
  br i1 %i.avd, label %.lr.ph601.i.epil.preheader, label %.lr.ph601.i

.lr.ph601.i:                                      ; preds = %.lr.ph601.i.preheader, %.lr.ph601.i
  %.47600.i = phi ptr [ %i.bdd, %.lr.ph601.i ], [ %.44623.i, %.lr.ph601.i.preheader ] ; 3 uses
  %.2725598.i = phi ptr [ %i.bde, %.lr.ph601.i ], [ %i.bbo, %.lr.ph601.i.preheader ] ; 2 uses
  %niter323 = phi i32 [ %niter323.next.1, %.lr.ph601.i ], [ 0, %.lr.ph601.i.preheader ]
  %i.bcj = load <8 x float>, ptr %.2725598.i, align 32, !tbaa !17
  %i.bck = fmul fast <8 x float> %i.bcj, %i.auf   ; 2 uses
  %i.bcl = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bck)
  %i.bcm = fadd fast <8 x float> %i.bcl, %i.bck
  %i.bcn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bcm)
  %i.bco = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bcn, <16 x i8> zeroinitializer, i8 -1)
  %i.bcp = shufflevector <16 x i8> %i.bco, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcq = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.bcp, <8 x i8> splat (i8 -127))
  %i.bcr = add <8 x i8> %i.bcq, splat (i8 127)
  store <8 x i8> %i.bcr, ptr %.47600.i, align 1, !tbaa !17
  %i.bcs = getelementptr inbounds nuw i8, ptr %.47600.i, i64 8
  %i.bct = getelementptr inbounds nuw i8, ptr %.2725598.i, i64 %.idx783.i ; 2 uses
  %i.bcu = load <8 x float>, ptr %i.bct, align 32, !tbaa !17
  %i.bcv = fmul fast <8 x float> %i.bcu, %i.auf   ; 2 uses
  %i.bcw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bcv)
  %i.bcx = fadd fast <8 x float> %i.bcw, %i.bcv
  %i.bcy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bcx)
  %i.bcz = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bcy, <16 x i8> zeroinitializer, i8 -1)
  %i.bda = shufflevector <16 x i8> %i.bcz, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdb = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.bda, <8 x i8> splat (i8 -127))
  %i.bdc = add <8 x i8> %i.bdb, splat (i8 127)
  store <8 x i8> %i.bdc, ptr %i.bcs, align 1, !tbaa !17
  %i.bdd = getelementptr inbounds nuw i8, ptr %.47600.i, i64 16 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bct, i64 %.idx783.i ; 2 uses
  %niter323.next.1 = add i32 %niter323, 2         ; 2 uses
  %niter323.ncmp.1.not = icmp eq i32 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1.not, label %.loopexit.i.loopexit255.unr-lcssa, label %.lr.ph601.i, !llvm.loop !380

.loopexit392.i:                                   ; preds = %.loopexit393.i
  br i1 %brmerge667.i, label %.loopexit391.i, label %.lr.ph607.i

.lr.ph607.i:                                      ; preds = %.loopexit392.i, %.lr.ph607.i
  %.49606.i = phi ptr [ %i.bdq, %.lr.ph607.i ], [ %.44623.i, %.loopexit392.i ] ; 2 uses
  %.0706605.i = phi i32 [ %i.bds, %.lr.ph607.i ], [ 0, %.loopexit392.i ]
  %.4727604.i = phi ptr [ %i.bdr, %.lr.ph607.i ], [ %i.bbo, %.loopexit392.i ] ; 2 uses
  %i.bdf = load <4 x float>, ptr %.4727604.i, align 16, !tbaa !17
  %i.bdg = fmul fast <4 x float> %i.bdf, %i.auj   ; 2 uses
  %i.bdh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bdg)
  %i.bdi = fadd fast <4 x float> %i.bdh, %i.bdg
  %i.bdj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bdi) ; 2 uses
  %i.bdk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bdj, <4 x i32> %i.bdj)
  %i.bdl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bdk, <8 x i16> splat (i16 -127))
  %i.bdm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bdl, <8 x i16> splat (i16 127))
  %i.bdn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bdm, <8 x i16> poison)
  %i.bdo = shufflevector <16 x i8> %i.bdn, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdp = add <4 x i8> %i.bdo, splat (i8 127)
  store <4 x i8> %i.bdp, ptr %.49606.i, align 1, !tbaa !17
  %i.bdq = getelementptr inbounds nuw i8, ptr %.49606.i, i64 4 ; 2 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.4727604.i, i64 %.idx782.i
  %i.bds = add nuw nsw i32 %.0706605.i, 4         ; 2 uses
  %i.bdt = or disjoint i32 %i.bds, 3
  %i.bdu = icmp slt i32 %i.bdt, %5
  br i1 %i.bdu, label %.lr.ph607.i, label %.loopexit.i, !llvm.loop !381

.loopexit391.i:                                   ; preds = %.loopexit392.i
  br i1 %i.aul, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.loopexit391.i
  br i1 %i.aum, label %.lr.ph613.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph613.i, %bb.f
  %.6729.lcssa.i = phi ptr [ %i.bbo, %bb.f ], [ %i.beq, %.lr.ph613.i ] ; 3 uses
  %.51.lcssa.i = phi ptr [ %.44623.i, %bb.f ], [ %i.bep, %.lr.ph613.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.aur, %.lr.ph613.i ] ; 4 uses
  %i.bdv = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.bdv, label %.lr.ph620.i.preheader, label %.loopexit.i

.lr.ph620.i.preheader:                            ; preds = %.preheader.i
  %.neg328 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod325.not, label %.lr.ph620.i.prol.loopexit, label %.lr.ph620.i.prol

.lr.ph620.i.prol:                                 ; preds = %.lr.ph620.i.preheader
  %i.bdw = load float, ptr %.6729.lcssa.i, align 4, !tbaa !236
  %i.bdx = fmul fast float %i.bdw, %6
  %i.bdy = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bdx)
  %i.bdz = fptosi float %i.bdy to i32
  %spec.select.i385.i.prol = tail call i32 @llvm.smax.i32(i32 %i.bdz, i32 -127)
  %.0.i386.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i385.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i386.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.51.lcssa.i, align 1, !tbaa !17
  %i.bea = getelementptr inbounds nuw i8, ptr %.51.lcssa.i, i64 1 ; 2 uses
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.6729.lcssa.i, i64 %i.k
  %i.bec = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph620.i.prol.loopexit

.lr.ph620.i.prol.loopexit:                        ; preds = %.lr.ph620.i.prol, %.lr.ph620.i.preheader
  %.lcssa261.unr = phi ptr [ poison, %.lr.ph620.i.preheader ], [ %i.bea, %.lr.ph620.i.prol ]
  %.1619.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph620.i.preheader ], [ %i.bec, %.lr.ph620.i.prol ]
  %.52618.i.unr = phi ptr [ %.51.lcssa.i, %.lr.ph620.i.preheader ], [ %i.bea, %.lr.ph620.i.prol ]
  %.7730617.i.unr = phi ptr [ %.6729.lcssa.i, %.lr.ph620.i.preheader ], [ %i.beb, %.lr.ph620.i.prol ]
  %i.bed = icmp eq i32 %5, %.neg328
  br i1 %i.bed, label %.loopexit.i, label %.lr.ph620.i

.lr.ph613.i:                                      ; preds = %bb.f, %.lr.ph613.i
  %.0612.i = phi i32 [ %i.ber, %.lr.ph613.i ], [ 0, %bb.f ]
  %.51611.i = phi ptr [ %i.bep, %.lr.ph613.i ], [ %.44623.i, %bb.f ] ; 2 uses
  %.6729610.i = phi ptr [ %i.beq, %.lr.ph613.i ], [ %i.bbo, %bb.f ] ; 2 uses
  %i.bee = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %.6729610.i, <4 x i32> %i.auq, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bef = fmul fast <4 x float> %i.bee, %i.auj   ; 2 uses
  %i.beg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bef)
  %i.beh = fadd fast <4 x float> %i.beg, %i.bef
  %i.bei = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.beh) ; 2 uses
  %i.bej = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bei, <4 x i32> %i.bei)
  %i.bek = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bej, <8 x i16> splat (i16 -127))
  %i.bel = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bek, <8 x i16> splat (i16 127))
  %i.bem = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bel, <8 x i16> poison)
  %i.ben = shufflevector <16 x i8> %i.bem, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.beo = add <4 x i8> %i.ben, splat (i8 127)
  store <4 x i8> %i.beo, ptr %.51611.i, align 1, !tbaa !17
  %i.bep = getelementptr inbounds nuw i8, ptr %.51611.i, i64 4 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.6729610.i, i64 %.idx782.i ; 2 uses
  %i.ber = add nuw nsw i32 %.0612.i, 4            ; 2 uses
  %i.bes = or disjoint i32 %i.ber, 3
  %i.bet = icmp slt i32 %i.bes, %5
  br i1 %i.bet, label %.lr.ph613.i, label %.preheader.i, !llvm.loop !382

.lr.ph620.i:                                      ; preds = %.lr.ph620.i.prol.loopexit, %.lr.ph620.i
  %.1619.i = phi i32 [ %i.bfg, %.lr.ph620.i ], [ %.1619.i.unr, %.lr.ph620.i.prol.loopexit ]
  %.52618.i = phi ptr [ %i.bfe, %.lr.ph620.i ], [ %.52618.i.unr, %.lr.ph620.i.prol.loopexit ] ; 3 uses
  %.7730617.i = phi ptr [ %i.bff, %.lr.ph620.i ], [ %.7730617.i.unr, %.lr.ph620.i.prol.loopexit ] ; 2 uses
  %i.beu = load float, ptr %.7730617.i, align 4, !tbaa !236
  %i.bev = fmul fast float %i.beu, %6
  %i.bew = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bev)
  %i.bex = fptosi float %i.bew to i32
  %spec.select.i385.i = tail call i32 @llvm.smax.i32(i32 %i.bex, i32 -127)
  %.0.i386.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i385.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i386.i to i8
  store i8 %.0.i.i, ptr %.52618.i, align 1, !tbaa !17
  %i.bey = getelementptr inbounds nuw i8, ptr %.52618.i, i64 1
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %.7730617.i, i64 %i.k ; 2 uses
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !236
  %i.bfb = fmul fast float %i.bfa, %6
  %i.bfc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bfb)
  %i.bfd = fptosi float %i.bfc to i32
  %spec.select.i385.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bfd, i32 -127)
  %.0.i386.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i385.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i386.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.bey, align 1, !tbaa !17
  %i.bfe = getelementptr inbounds nuw i8, ptr %.52618.i, i64 2 ; 2 uses
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %i.k
  %i.bfg = add nuw nsw i32 %.1619.i, 2            ; 2 uses
  %exitcond746.not.i.1 = icmp eq i32 %i.bfg, %5
  br i1 %exitcond746.not.i.1, label %.loopexit.i, label %.lr.ph620.i, !llvm.loop !383

.loopexit.i.loopexit255.unr-lcssa:                ; preds = %.lr.ph601.i
  br i1 %lcmp.mod319.not.not, label %.lr.ph601.i.epil.preheader, label %.loopexit.i

.lr.ph601.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit255.unr-lcssa, %.lr.ph601.i.preheader
  %.47600.i.epil.init = phi ptr [ %.44623.i, %.lr.ph601.i.preheader ], [ %i.bdd, %.loopexit.i.loopexit255.unr-lcssa ] ; 2 uses
  %.2725598.i.epil.init = phi ptr [ %i.bbo, %.lr.ph601.i.preheader ], [ %i.bde, %.loopexit.i.loopexit255.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %i.bfh = load <8 x float>, ptr %.2725598.i.epil.init, align 32, !tbaa !17
  %i.bfi = fmul fast <8 x float> %i.bfh, %i.auf   ; 2 uses
  %i.bfj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bfi)
  %i.bfk = fadd fast <8 x float> %i.bfj, %i.bfi
  %i.bfl = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bfk)
  %i.bfm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.bfl, <16 x i8> zeroinitializer, i8 -1)
  %i.bfn = shufflevector <16 x i8> %i.bfm, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfo = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %i.bfn, <8 x i8> splat (i8 -127))
  %i.bfp = add <8 x i8> %i.bfo, splat (i8 127)
  store <8 x i8> %i.bfp, ptr %.47600.i.epil.init, align 1, !tbaa !17
  %i.bfq = getelementptr inbounds nuw i8, ptr %.47600.i.epil.init, i64 8
  br label %.loopexit.i

.loopexit.i.loopexit256.unr-lcssa:                ; preds = %.lr.ph595.i
  br i1 %lcmp.mod315.not.not, label %.lr.ph595.i.epil.preheader, label %.loopexit.i

.lr.ph595.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit256.unr-lcssa, %.lr.ph595.i.preheader
  %.45594.i.epil.init = phi ptr [ %.44623.i, %.lr.ph595.i.preheader ], [ %i.bch, %.loopexit.i.loopexit256.unr-lcssa ] ; 2 uses
  %.0723592.i.epil.init = phi ptr [ %i.bbo, %.lr.ph595.i.preheader ], [ %i.bci, %.loopexit.i.loopexit256.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod317)
  %i.bfr = load <16 x float>, ptr %.0723592.i.epil.init, align 64, !tbaa !17
  %i.bfs = fmul fast <16 x float> %i.bfr, %i.aub  ; 2 uses
  %i.bft = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bfs)
  %i.bfu = fadd fast <16 x float> %i.bft, %i.bfs
  %i.bfv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bfu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bfw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bfv, <16 x i8> zeroinitializer, i16 -1)
  %i.bfx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bfw, <16 x i8> splat (i8 -127))
  %i.bfy = add <16 x i8> %i.bfx, splat (i8 127)
  store <16 x i8> %i.bfy, ptr %.45594.i.epil.init, align 16, !tbaa !17
  %i.bfz = getelementptr inbounds nuw i8, ptr %.45594.i.epil.init, i64 16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph595.i.epil.preheader, %.loopexit.i.loopexit256.unr-lcssa, %.lr.ph601.i.epil.preheader, %.loopexit.i.loopexit255.unr-lcssa, %.lr.ph607.i, %.lr.ph620.i.prol.loopexit, %.lr.ph620.i, %.preheader.i, %.loopexit391.i
  %.53.i = phi ptr [ %.44623.i, %.loopexit391.i ], [ %.51.lcssa.i, %.preheader.i ], [ %i.bfe, %.lr.ph620.i ], [ %i.bdq, %.lr.ph607.i ], [ %i.bfq, %.lr.ph601.i.epil.preheader ], [ %.lcssa261.unr, %.lr.ph620.i.prol.loopexit ], [ %i.bdd, %.loopexit.i.loopexit255.unr-lcssa ], [ %i.bch, %.loopexit.i.loopexit256.unr-lcssa ], [ %i.bfz, %.lr.ph595.i.epil.preheader ]
  %indvars.iv.next748.i = add nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond750.not.i = icmp eq i64 %indvars.iv.next748.i, %wide.trip.count.i
  br i1 %exitcond750.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.e, !llvm.loop !384

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i, %.preheader394.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn39gemm_transB_packed_tile_int8_avx512vnniERKNS_3MatES2_RS0_iiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %.val8 = load ptr, ptr %1, align 8, !tbaa !9    ; 10 uses
  %.val9 = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  %i.a = icmp sgt i32 %4, 15
  br i1 %i.a, label %.preheader1103.lr.ph.i, label %.preheader1093.i

.preheader1103.lr.ph.i:                           ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 15
  %i.c = icmp eq i32 %7, 0                        ; 5 uses
  %i.d = icmp sgt i32 %8, 3                       ; 6 uses
  %i.e = shl i32 %8, 4
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %spec.select.idx.i = select i1 %i.d, i64 64, i64 0 ; 2 uses
  %i.g = add i32 %8, -4                           ; 4 uses
  %i.h = and i32 %i.g, -4
  %i.i = add i32 %i.h, 4                          ; 5 uses
  %i.j = and i32 %6, -16
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = lshr i64 %i.k, 2                         ; 4 uses
  %i.m = shl nuw nsw i64 %i.l, 5
  %i.n = shl nuw nsw i64 %i.l, 4
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = and i64 %i.k, 4294967292
  %i.q = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 64                 ; 2 uses
  %scevgep892 = getelementptr i8, ptr %.val, i64 %i.q
  %i.s = add nsw i64 %spec.select.idx.i, %i.f     ; 2 uses
  %scevgep894 = getelementptr i8, ptr %.val, i64 %i.r
  %i.t = lshr i32 %i.g, 2
  %i.u = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %xtraiter = and i32 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %i.g, 12
  %unroll_iter = and i32 %i.u, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod3386 = icmp ne i32 %xtraiter, 0
  br label %.preheader1103.i

.preheader1103.i:                                 ; preds = %._crit_edge1573.i, %.preheader1103.lr.ph.i
  %indvars.iv895 = phi ptr [ %scevgep896, %._crit_edge1573.i ], [ %scevgep894, %.preheader1103.lr.ph.i ] ; 5 uses
  %indvars.iv = phi ptr [ %scevgep893, %._crit_edge1573.i ], [ %scevgep892, %.preheader1103.lr.ph.i ] ; 5 uses
  %.017851577.i = phi ptr [ %spec.select.i, %._crit_edge1573.i ], [ %.val, %.preheader1103.lr.ph.i ] ; 12 uses
  %.018241576.i = phi ptr [ %.51829.lcssa.i, %._crit_edge1573.i ], [ %.val9, %.preheader1103.lr.ph.i ] ; 2 uses
  %.018341575.i = phi i32 [ %i.aen, %._crit_edge1573.i ], [ 0, %.preheader1103.lr.ph.i ]
  br i1 %i.b, label %.lr.ph1407.i, label %.preheader1102.i

.preheader1093.loopexit.i:                        ; preds = %._crit_edge1573.i
  %i.w = and i32 %4, 2147483632
  br label %.preheader1093.i

.preheader1093.i:                                 ; preds = %.preheader1093.loopexit.i, %bb.a
  %.01834.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.w, %.preheader1093.loopexit.i ] ; 3 uses
  %.01824.lcssa.i = phi ptr [ %.val9, %bb.a ], [ %.51829.lcssa.i, %.preheader1093.loopexit.i ] ; 2 uses
  %.01785.lcssa.i = phi ptr [ %.val, %bb.a ], [ %spec.select.i, %.preheader1093.loopexit.i ] ; 4 uses
  %i.x = or disjoint i32 %.01834.lcssa.i, 7
  %i.y = icmp slt i32 %i.x, %4
  br i1 %i.y, label %.preheader1092.lr.ph.i, label %.preheader1082.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1093.i
  %i.z = icmp sgt i32 %6, 15
  %i.aa = icmp eq i32 %7, 0                       ; 5 uses
  %i.ab = icmp sgt i32 %8, 3                      ; 6 uses
  %i.ac = shl i32 %8, 3
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %spec.select2228.idx.i = select i1 %i.ab, i64 32, i64 0 ; 3 uses
  %i.ae = add i32 %8, -4                          ; 5 uses
  %i.af = and i32 %i.ae, -4
  %i.ag = add i32 %i.af, 4                        ; 5 uses
  %i.ah = and i32 %6, -16
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 2                       ; 4 uses
  %i.ak = shl nuw nsw i64 %i.aj, 5                ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 32               ; 2 uses
  %scevgep2937.i = getelementptr i8, ptr %.01785.lcssa.i, i64 %i.al
  %i.am = shl nuw nsw i64 %i.aj, 4
  %i.an = shl nuw nsw i64 %i.aj, 3
  %i.ao = and i64 %i.ai, 4294967292
  %i.ap = shl nuw nsw i64 %i.aj, 6
  %scevgep898 = getelementptr i8, ptr %.01785.lcssa.i, i64 %i.ak
  %i.aq = lshr i32 %i.ae, 2                       ; 3 uses
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 4 uses
  %i.as = icmp eq i32 %i.aq, 0
  %unroll_iter3402 = and i32 %i.ar, 2147483646
  %i.at = and i32 %i.ae, 4
  %lcmp.mod3397.not.not = icmp eq i32 %i.at, 0
  %lcmp.mod3401 = trunc i32 %i.ar to i1
  %i.au = icmp eq i32 %i.aq, 0
  %unroll_iter3417 = and i32 %i.ar, 2147483646
  %i.av = and i32 %i.ae, 4
  %lcmp.mod3413.not.not = icmp eq i32 %i.av, 0
  %lcmp.mod3416 = trunc i32 %i.ar to i1
  br label %.preheader1092.i

.preheader1102.i:                                 ; preds = %._crit_edge1386.i, %.preheader1103.i
  %.01859.lcssa.i = phi i32 [ 0, %.preheader1103.i ], [ %i.j, %._crit_edge1386.i ] ; 3 uses
  %.01839.lcssa.i = phi ptr [ %.val8, %.preheader1103.i ], [ %.31842.lcssa.i, %._crit_edge1386.i ] ; 2 uses
  %.11825.lcssa.i = phi ptr [ %.018241576.i, %.preheader1103.i ], [ %i.mh, %._crit_edge1386.i ] ; 2 uses
  %i.aw = or disjoint i32 %.01859.lcssa.i, 7
  %i.ax = icmp slt i32 %i.aw, %6
  br i1 %i.ax, label %.lr.ph1461.i.preheader, label %.preheader1101.i

.lr.ph1461.i.preheader:                           ; preds = %.preheader1102.i
  %i.ay = getelementptr inbounds nuw i8, ptr %indvars.iv, i64 128
  br label %.lr.ph1461.i

.lr.ph1407.i:                                     ; preds = %.preheader1103.i, %._crit_edge1386.i
  %.118251406.i = phi ptr [ %i.mh, %._crit_edge1386.i ], [ %.018241576.i, %.preheader1103.i ] ; 33 uses
  %.018391405.i = phi ptr [ %.31842.lcssa.i, %._crit_edge1386.i ], [ %.val8, %.preheader1103.i ] ; 3 uses
  %.018591404.i = phi i32 [ %i.mi, %._crit_edge1386.i ], [ 0, %.preheader1103.i ]
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph1407.i
  %i.az = load <16 x i32>, ptr %.118251406.i, align 64, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 64
  %i.bb = load <16 x i32>, ptr %i.ba, align 64, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 128
  %i.bd = load <16 x i32>, ptr %i.bc, align 64, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 192
  %i.bf = load <16 x i32>, ptr %i.be, align 64, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 256
  %i.bh = load <16 x i32>, ptr %i.bg, align 64, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 320
  %i.bj = load <16 x i32>, ptr %i.bi, align 64, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 384
  %i.bl = load <16 x i32>, ptr %i.bk, align 64, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 448
  %i.bn = load <16 x i32>, ptr %i.bm, align 64, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 512
  %i.bp = load <16 x i32>, ptr %i.bo, align 64, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 576
  %i.br = load <16 x i32>, ptr %i.bq, align 64, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 640
  %i.bt = load <16 x i32>, ptr %i.bs, align 64, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 704
  %i.bv = load <16 x i32>, ptr %i.bu, align 64, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 768
  %i.bx = load <16 x i32>, ptr %i.bw, align 64, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 832
  %i.bz = load <16 x i32>, ptr %i.by, align 64, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 896
  %i.cb = load <16 x i32>, ptr %i.ca, align 64, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.118251406.i, i64 960
  %i.cd = load <16 x i32>, ptr %i.cc, align 64, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph1407.i
  %i.ce = phi <16 x i32> [ %i.cb, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cf = phi <16 x i32> [ %i.bz, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cg = phi <16 x i32> [ %i.bx, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.ch = phi <16 x i32> [ %i.bv, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.ci = phi <16 x i32> [ %i.bt, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cj = phi <16 x i32> [ %i.br, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.ck = phi <16 x i32> [ %i.bp, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cl = phi <16 x i32> [ %i.bn, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cm = phi <16 x i32> [ %i.bl, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cn = phi <16 x i32> [ %i.bj, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.co = phi <16 x i32> [ %i.bh, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cp = phi <16 x i32> [ %i.bf, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cq = phi <16 x i32> [ %i.bd, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cr = phi <16 x i32> [ %i.bb, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.cs = phi <16 x i32> [ %i.az, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  %i.ct = phi <16 x i32> [ %i.cd, %bb.b ], [ zeroinitializer, %.lr.ph1407.i ] ; 2 uses
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.118401339.i = phi ptr [ %i.ep, %.lr.ph.i ], [ %.018391405.i, %bb.c ] ; 2 uses
  %.018641338.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %.017851577.i, %bb.c ] ; 3 uses
  %.018681337.i = phi i32 [ %i.eq, %.lr.ph.i ], [ 0, %bb.c ]
  %i.cu = phi <16 x i32> [ %i.dy, %.lr.ph.i ], [ %i.cs, %bb.c ]
  %i.cv = phi <16 x i32> [ %i.dz, %.lr.ph.i ], [ %i.cr, %bb.c ]
  %i.cw = phi <16 x i32> [ %i.ea, %.lr.ph.i ], [ %i.cq, %bb.c ]
  %i.cx = phi <16 x i32> [ %i.eb, %.lr.ph.i ], [ %i.cp, %bb.c ]
  %i.cy = phi <16 x i32> [ %i.ec, %.lr.ph.i ], [ %i.co, %bb.c ]
  %i.cz = phi <16 x i32> [ %i.ed, %.lr.ph.i ], [ %i.cn, %bb.c ]
  %i.da = phi <16 x i32> [ %i.ee, %.lr.ph.i ], [ %i.cm, %bb.c ]
  %i.db = phi <16 x i32> [ %i.ef, %.lr.ph.i ], [ %i.cl, %bb.c ]
  %i.dc = phi <16 x i32> [ %i.eg, %.lr.ph.i ], [ %i.ck, %bb.c ]
  %i.dd = phi <16 x i32> [ %i.eh, %.lr.ph.i ], [ %i.cj, %bb.c ]
  %i.de = phi <16 x i32> [ %i.ei, %.lr.ph.i ], [ %i.ci, %bb.c ]
  %i.df = phi <16 x i32> [ %i.ej, %.lr.ph.i ], [ %i.ch, %bb.c ]
  %i.dg = phi <16 x i32> [ %i.ek, %.lr.ph.i ], [ %i.cg, %bb.c ]
  %i.dh = phi <16 x i32> [ %i.el, %.lr.ph.i ], [ %i.cf, %bb.c ]
  %i.di = phi <16 x i32> [ %i.em, %.lr.ph.i ], [ %i.ce, %bb.c ]
  %i.dj = phi <16 x i32> [ %i.en, %.lr.ph.i ], [ %i.ct, %bb.c ]
  %i.dk = load <8 x i64>, ptr %.018641338.i, align 1, !tbaa !17 ; 2 uses
  %i.dl = load <8 x i64>, ptr %.118401339.i, align 1, !tbaa !17 ; 2 uses
  %i.dm = bitcast <8 x i64> %i.dk to <64 x i8>    ; 5 uses
  %i.dn = shufflevector <64 x i8> %i.dm, <64 x i8> poison, <64 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55> ; 4 uses
  %i.do = bitcast <8 x i64> %i.dk to <16 x i32>
  %i.dp = shufflevector <16 x i32> %i.do, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.dq = bitcast <16 x i32> %i.dp to <64 x i8>   ; 5 uses
end_hunk_9
