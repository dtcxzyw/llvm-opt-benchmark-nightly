Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/upack?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@unupack:bb.a
  br i1 %.not1220, label %.thread1181, label %bb.ct

bb.bi:                                            ; preds = %bb.a
  %i.pe = zext i32 %4 to i64                      ; 2 uses
  %i.pf = zext i32 %5 to i64                      ; 3 uses
  %i.pg = add nuw nsw i64 %i.pf, %i.pe            ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.pg ; 8 uses
  %i.pi = load i8, ptr %3, align 1, !tbaa !8
  %i.pj = icmp eq i8 %i.pi, -66
  br i1 %i.pj, label %bb.bj, label %.thread1190

bb.bj:                                            ; preds = %bb.bi
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !8
  %i.pm = icmp eq i8 %i.pl, -83
  br i1 %i.pm, label %bb.bk, label %.thread1190

bb.bk:                                            ; preds = %bb.bj
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !8
  %i.pp = icmp eq i8 %i.po, -117
  br i1 %i.pp, label %bb.bl, label %.thread1190

bb.bl:                                            ; preds = %bb.bk
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !8
  %i.ps = icmp eq i8 %i.pr, -8
  br i1 %i.ps, label %bb.bm, label %.thread1190

.thread1190:                                      ; preds = %bb.bj, %bb.bk, %bb.bi, %bb.bl
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.thread1190
  %.sink = phi i64 [ 449, %.thread1190 ], [ 388, %bb.bl ]
  %i.pt = phi i1 [ true, %.thread1190 ], [ false, %bb.bl ] ; 2 uses
  %i.pu = phi i1 [ false, %.thread1190 ], [ true, %bb.bl ] ; 2 uses
  %.0868 = phi i32 [ 535, %.thread1190 ], [ 420, %bb.bl ] ; 3 uses
  %.0867 = phi i64 [ 58, %.thread1190 ], [ 27, %bb.bl ]
  %.0866 = phi i64 [ 95, %.thread1190 ], [ 65, %bb.bl ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.sink ; 3 uses
  %i.pw = zext i32 %2 to i64                      ; 4 uses
  %.not1021 = icmp eq i32 %2, 0
  br i1 %.not1021, label %.thread1181, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.px = add nuw nsw i32 %.0868, 4               ; 2 uses
  %.not1022 = icmp ugt i32 %i.px, %2
  br i1 %.not1022, label %.thread1181, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = ptrtoint ptr %i.ph to i64               ; 2 uses
  %i.qa = ptrtoint ptr %1 to i64                  ; 12 uses
  %i.qb = add i64 %i.py, %i.pz                    ; 2 uses
  %i.qc = add i64 %i.pw, %i.qa                    ; 20 uses
  %.not1024 = icmp ule i64 %i.qb, %i.qc
  %i.qd = icmp ugt i64 %i.qb, %i.qa
  %or.cond1146 = and i1 %.not1024, %i.qd
  %i.qe = icmp ugt i64 %i.qc, %i.pz
  %or.cond1147 = and i1 %i.qe, %or.cond1146
  br i1 %or.cond1147, label %bb.bp, label %.thread1181

bb.bp:                                            ; preds = %bb.bo
  %i.qf = zext nneg i32 %.0868 to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 1, !tbaa !8
  %i.qi = add i32 %4, 4
  %i.qj = add i32 %i.qi, %5
  %i.qk = add i32 %i.qj, %.0868
  %i.ql = add i32 %i.qk, %i.qh                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %i.ql) #4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.0866
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !8   ; 2 uses
  %i.qo = zext i8 %i.qn to i32
  %i.qp = sub nsw i32 8, %i.qo                    ; 3 uses
  %i.qq = icmp ult i32 %i.qp, 2
  %i.qr = icmp ugt i8 %i.qn, 8
  %or.cond46 = or i1 %i.qr, %i.qq
  br i1 %or.cond46, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #4
  br label %.thread1181

bb.br:                                            ; preds = %bb.bp
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.0867
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !8   ; 3 uses
  %i.qu = zext i8 %i.qt to i32                    ; 2 uses
  %i.qv = shl nuw nsw i32 %i.qu, 8                ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.qp, i32 noundef %i.qv) #4
  br i1 %i.pt, label %bb.bs, label %bb.ck

bb.bs:                                            ; preds = %bb.br
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ph, i64 6 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 1, !tbaa !8  ; 2 uses
  store i32 0, ptr %i.qw, align 1, !tbaa !8
  %.not1028 = icmp eq i32 %i.qx, 0
  br i1 %.not1028, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #4
  br label %.thread1181

bb.bu:                                            ; preds = %bb.bs
  %i.qy = add i32 %i.qx, -2
  %i.qz = zext i32 %i.qy to i64                   ; 2 uses
  %i.ra = sub nsw i64 4, %i.qz                    ; 2 uses
  %i.rb = getelementptr inbounds i8, ptr %i.ph, i64 %i.ra ; 7 uses
  %i.rc = add nsw i64 %i.ra, %i.pg                ; 2 uses
  %.not1029 = icmp slt i64 %i.rc, 0
  br i1 %.not1029, label %.thread1181, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rd = ptrtoint ptr %i.rb to i64               ; 2 uses
  %i.re = add i64 %i.rd, 12                       ; 2 uses
  %.not1030 = icmp ule i64 %i.re, %i.qc
  %i.rf = icmp ugt i64 %i.re, %i.qa
  %or.cond1148 = and i1 %.not1030, %i.rf
  %i.rg = icmp ugt i64 %i.qc, %i.rd
  %or.cond1149 = and i1 %i.rg, %or.cond1148
  br i1 %or.cond1149, label %bb.bw, label %.thread1181

bb.bw:                                            ; preds = %bb.bv
  %i.rh = load i32, ptr %i.rb, align 1, !tbaa !8
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.rb, ptr noundef nonnull %1, i32 noundef %i.rh, i32 noundef %6) #4
  %i.ri = load i32, ptr %i.rb, align 1, !tbaa !8
  %i.rj = zext i32 %i.ri to i64
  %i.rk = zext i32 %6 to i64                      ; 5 uses
  %i.rl = sub nsw i64 0, %i.rk                    ; 2 uses
  %.neg = sub nsw i64 %i.rk, %i.rj
  %gepdiff = add nsw i64 %.neg, %i.rc             ; 2 uses
  %i.rm = trunc i64 %gepdiff to i32               ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef %i.rm) #4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.ro = load i32, ptr %i.rn, align 1, !tbaa !8  ; 3 uses
  %i.rp = sext i32 %i.ro to i64                   ; 3 uses
  %i.rq = sub nsw i64 %i.rp, %i.rk                ; 2 uses
  %i.rr = getelementptr inbounds i8, ptr %1, i64 %i.rq ; 10 uses
  %i.rs = sub i32 %i.ro, %6
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.ro, i32 noundef %i.rs) #4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.ru = load i32, ptr %i.rt, align 1, !tbaa !8  ; 10 uses
  %i.rv = icmp slt i32 %i.ru, 0
  br i1 %i.rv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #4
  br label %.thread1181

bb.by:                                            ; preds = %bb.bw
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rb, i64 12 ; 5 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ru) #4
  %narrow = add nuw i32 %i.ru, %i.qv              ; 2 uses
  %i.rx = icmp ugt i32 %narrow, 1073741823
  br i1 %i.rx, label %.thread1181, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ry = shl nuw nsw i32 %i.ru, 2                ; 2 uses
  %.not1031 = icmp eq i32 %i.ru, 0
  %.not1032 = icmp ugt i32 %i.ry, %2
  %or.cond1150 = select i1 %.not1031, i1 true, i1 %.not1032
  br i1 %or.cond1150, label %.thread1181, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = ptrtoint ptr %i.rw to i64               ; 2 uses
  %i.sb = add i64 %i.rz, %i.sa                    ; 2 uses
  %.not1034 = icmp ule i64 %i.sb, %i.qc
  %i.sc = icmp ugt i64 %i.sb, %i.qa
  %or.cond1151 = and i1 %.not1034, %i.sc
  %i.sd = icmp ugt i64 %i.qc, %i.sa
  %or.cond1152 = and i1 %i.sd, %or.cond1151
  br i1 %or.cond1152, label %bb.cb, label %.thread1181

bb.cb:                                            ; preds = %bb.ca
  %i.se = shl nuw i32 %narrow, 2                  ; 2 uses
  %i.sf = zext i32 %i.se to i64
  %.not1036 = icmp ugt i32 %i.se, %2
  br i1 %.not1036, label %.thread1181, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sg = ptrtoint ptr %i.rr to i64               ; 3 uses
  %.not1037 = icmp slt i64 %i.rq, 0
  br i1 %.not1037, label %.thread1181, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sh = add i64 %i.sf, %i.sg                    ; 2 uses
  %.not1038 = icmp ule i64 %i.sh, %i.qc
  %i.si = icmp ugt i64 %i.sh, %i.qa
  %or.cond1154 = and i1 %.not1038, %i.si
  %i.sj = icmp ugt i64 %i.qc, %i.sg
  %or.cond1155 = select i1 %or.cond1154, i1 %i.sj, i1 false
  br i1 %or.cond1155, label %.lr.ph1266.preheader, label %.thread1181

.lr.ph1266.preheader:                             ; preds = %bb.cd
  %i.sk = zext nneg i32 %i.ru to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ru, 20
  br i1 %min.iters.check, label %.lr.ph1266.preheader1407, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1266.preheader
  %i.sl = add nsw i64 %i.rp, %i.qz
  %i.sm = add nuw nsw i64 %i.rk, %i.pf
  %i.sn = add nuw nsw i64 %i.sm, %i.pe
  %i.so = sub nsw i64 %i.sl, %i.sn
  %i.sp = add nsw i64 %i.so, -17
  %diff.check = icmp ult i64 %i.sp, 31
  br i1 %diff.check, label %.lr.ph1266.preheader1407, label %vector.ph1377

vector.ph1377:                                    ; preds = %vector.memcheck
  %n.vec1378 = and i64 %i.sk, 1073741816          ; 4 uses
  %i.sq = shl nuw nsw i64 %n.vec1378, 2           ; 2 uses
  %i.sr = getelementptr i8, ptr %i.rr, i64 %i.sq  ; 2 uses
  %i.ss = getelementptr i8, ptr %i.rw, i64 %i.sq
  %i.st = trunc nuw nsw i64 %n.vec1378 to i32
  %i.su = sub nsw i32 %i.ru, %i.st
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1384, %vector.body1379 ] ; 2 uses
  %i.sv = shl i64 %index1380, 2                   ; 2 uses
  %next.gep1381 = getelementptr i8, ptr %i.rr, i64 %i.sv ; 2 uses
  %next.gep1382 = getelementptr i8, ptr %i.rw, i64 %i.sv ; 2 uses
  %i.sw = getelementptr i8, ptr %next.gep1382, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1382, align 1, !tbaa !8
  %wide.load1383 = load <4 x i32>, ptr %i.sw, align 1, !tbaa !8
  %i.sx = getelementptr i8, ptr %next.gep1381, i64 16
  store <4 x i32> %wide.load, ptr %next.gep1381, align 1, !tbaa !8
  store <4 x i32> %wide.load1383, ptr %i.sx, align 1, !tbaa !8
  %index.next1384 = add nuw i64 %index1380, 8     ; 2 uses
  %i.sy = icmp eq i64 %index.next1384, %n.vec1378
  br i1 %i.sy, label %middle.block1385, label %vector.body1379, !llvm.loop !11

middle.block1385:                                 ; preds = %vector.body1379
  %cmp.n1386 = icmp eq i64 %n.vec1378, %i.sk
  br i1 %cmp.n1386, label %._crit_edge1267, label %.lr.ph1266.preheader1407

.lr.ph1266.preheader1407:                         ; preds = %vector.memcheck, %.lr.ph1266.preheader, %middle.block1385
  %.91265.ph = phi ptr [ %i.rr, %vector.memcheck ], [ %i.rr, %.lr.ph1266.preheader ], [ %i.sr, %middle.block1385 ] ; 2 uses
  %.59241264.ph = phi ptr [ %i.rw, %vector.memcheck ], [ %i.rw, %.lr.ph1266.preheader ], [ %i.ss, %middle.block1385 ] ; 2 uses
  %.49311263.ph = phi i32 [ %i.ru, %vector.memcheck ], [ %i.ru, %.lr.ph1266.preheader ], [ %i.su, %middle.block1385 ] ; 4 uses
  %i.sz = add nsw i32 %.49311263.ph, -1
  %xtraiter = and i32 %.49311263.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1266.prol.loopexit, label %.lr.ph1266.prol

.lr.ph1266.prol:                                  ; preds = %.lr.ph1266.preheader1407, %.lr.ph1266.prol
  %.91265.prol = phi ptr [ %i.tc, %.lr.ph1266.prol ], [ %.91265.ph, %.lr.ph1266.preheader1407 ] ; 2 uses
  %.59241264.prol = phi ptr [ %i.td, %.lr.ph1266.prol ], [ %.59241264.ph, %.lr.ph1266.preheader1407 ] ; 2 uses
  %.49311263.prol = phi i32 [ %i.ta, %.lr.ph1266.prol ], [ %.49311263.ph, %.lr.ph1266.preheader1407 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1266.prol ], [ 0, %.lr.ph1266.preheader1407 ]
  %i.ta = add nsw i32 %.49311263.prol, -1         ; 2 uses
  %i.tb = load i32, ptr %.59241264.prol, align 1, !tbaa !8
  store i32 %i.tb, ptr %.91265.prol, align 1, !tbaa !8
  %i.tc = getelementptr inbounds nuw i8, ptr %.91265.prol, i64 4 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.59241264.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1266.prol.loopexit, label %.lr.ph1266.prol, !llvm.loop !12

.lr.ph1266.prol.loopexit:                         ; preds = %.lr.ph1266.prol, %.lr.ph1266.preheader1407
  %.lcssa1408.unr = phi ptr [ poison, %.lr.ph1266.preheader1407 ], [ %i.tc, %.lr.ph1266.prol ]
  %.91265.unr = phi ptr [ %.91265.ph, %.lr.ph1266.preheader1407 ], [ %i.tc, %.lr.ph1266.prol ]
  %.59241264.unr = phi ptr [ %.59241264.ph, %.lr.ph1266.preheader1407 ], [ %i.td, %.lr.ph1266.prol ]
  %.49311263.unr = phi i32 [ %.49311263.ph, %.lr.ph1266.preheader1407 ], [ %i.ta, %.lr.ph1266.prol ]
  %i.te = icmp ult i32 %i.sz, 7
  br i1 %i.te, label %._crit_edge1267, label %.lr.ph1266

.lr.ph1266:                                       ; preds = %.lr.ph1266.prol.loopexit, %.lr.ph1266
  %.91265 = phi ptr [ %i.uc, %.lr.ph1266 ], [ %.91265.unr, %.lr.ph1266.prol.loopexit ] ; 9 uses
  %.59241264 = phi ptr [ %i.ud, %.lr.ph1266 ], [ %.59241264.unr, %.lr.ph1266.prol.loopexit ] ; 9 uses
  %.49311263 = phi i32 [ %i.ua, %.lr.ph1266 ], [ %.49311263.unr, %.lr.ph1266.prol.loopexit ]
  %i.tf = load i32, ptr %.59241264, align 1, !tbaa !8
  store i32 %i.tf, ptr %.91265, align 1, !tbaa !8
  %i.tg = getelementptr inbounds nuw i8, ptr %.91265, i64 4
  %i.th = getelementptr inbounds nuw i8, ptr %.59241264, i64 4
  %i.ti = load i32, ptr %i.th, align 1, !tbaa !8
  store i32 %i.ti, ptr %i.tg, align 1, !tbaa !8
  %i.tj = getelementptr inbounds nuw i8, ptr %.91265, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %.59241264, i64 8
  %i.tl = load i32, ptr %i.tk, align 1, !tbaa !8
  store i32 %i.tl, ptr %i.tj, align 1, !tbaa !8
  %i.tm = getelementptr inbounds nuw i8, ptr %.91265, i64 12
  %i.tn = getelementptr inbounds nuw i8, ptr %.59241264, i64 12
  %i.to = load i32, ptr %i.tn, align 1, !tbaa !8
  store i32 %i.to, ptr %i.tm, align 1, !tbaa !8
  %i.tp = getelementptr inbounds nuw i8, ptr %.91265, i64 16
  %i.tq = getelementptr inbounds nuw i8, ptr %.59241264, i64 16
  %i.tr = load i32, ptr %i.tq, align 1, !tbaa !8
  store i32 %i.tr, ptr %i.tp, align 1, !tbaa !8
  %i.ts = getelementptr inbounds nuw i8, ptr %.91265, i64 20
  %i.tt = getelementptr inbounds nuw i8, ptr %.59241264, i64 20
  %i.tu = load i32, ptr %i.tt, align 1, !tbaa !8
  store i32 %i.tu, ptr %i.ts, align 1, !tbaa !8
  %i.tv = getelementptr inbounds nuw i8, ptr %.91265, i64 24
  %i.tw = getelementptr inbounds nuw i8, ptr %.59241264, i64 24
  %i.tx = load i32, ptr %i.tw, align 1, !tbaa !8
  store i32 %i.tx, ptr %i.tv, align 1, !tbaa !8
  %i.ty = getelementptr inbounds nuw i8, ptr %.91265, i64 28
  %i.tz = getelementptr inbounds nuw i8, ptr %.59241264, i64 28
  %i.ua = add nsw i32 %.49311263, -8              ; 2 uses
  %i.ub = load i32, ptr %i.tz, align 1, !tbaa !8
  store i32 %i.ub, ptr %i.ty, align 1, !tbaa !8
  %i.uc = getelementptr inbounds nuw i8, ptr %.91265, i64 32 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.59241264, i64 32
  %.not1039.7 = icmp eq i32 %i.ua, 0
  br i1 %.not1039.7, label %._crit_edge1267, label %.lr.ph1266, !llvm.loop !13

._crit_edge1267:                                  ; preds = %.lr.ph1266.prol.loopexit, %.lr.ph1266, %middle.block1385
  %.lcssa1366 = phi ptr [ %i.sr, %middle.block1385 ], [ %.lcssa1408.unr, %.lr.ph1266.prol.loopexit ], [ %i.uc, %.lr.ph1266 ]
  %i.ue = add i64 %i.sg, 8                        ; 2 uses
  %.not1040 = icmp ule i64 %i.ue, %i.qc
  %i.uf = icmp ugt i64 %i.ue, %i.qa
  %or.cond1156 = and i1 %.not1040, %i.uf
  br i1 %or.cond1156, label %bb.ce, label %.thread1181

bb.ce:                                            ; preds = %._crit_edge1267
  %i.ug = load i32, ptr %i.rr, align 1, !tbaa !8
  %i.uh = and i64 %gepdiff, 4294967295            ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.uj = add nuw nsw i64 %i.uh, 4
  %i.uk = add i32 %i.ug, -1
  %i.ul = zext i32 %i.uk to i64
  %i.um = mul i64 %i.uj, %i.ul
  %i.un = add i64 %i.um, %i.rp
  %i.uo = add i64 %i.un, %i.uh
  %i.up = add i64 %i.uo, 4
  %i.uq = sub i64 %i.up, %i.rk
  %scevgep = getelementptr i8, ptr %1, i64 %i.uq  ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %scevgep, i64 4 ; 3 uses
  %.not1042 = icmp ult ptr %i.ur, %1
  br i1 %.not1042, label %.thread1181, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.us = ptrtoint ptr %i.ur to i64               ; 2 uses
  %i.ut = add i64 %i.us, 4                        ; 2 uses
  %.not1043 = icmp ule i64 %i.ut, %i.qc
  %i.uu = icmp ugt i64 %i.ut, %i.qa
  %or.cond1157 = and i1 %.not1043, %i.uu
  %i.uv = icmp ugt i64 %i.qc, %i.us
  %or.cond1158 = and i1 %i.uv, %or.cond1157
  br i1 %or.cond1158, label %bb.cg, label %.thread1181

bb.cg:                                            ; preds = %bb.cf
  %.not1295 = icmp eq i8 %i.qt, 0
  br i1 %.not1295, label %._crit_edge1273, label %vector.ph1390

vector.ph1390:                                    ; preds = %bb.cg
  %i.uw = load i32, ptr %i.ur, align 1, !tbaa !8
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.uw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ux = add nsw i32 %i.qv, -8
  %i.uy = zext i32 %i.ux to i64
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1395, %vector.body1392 ] ; 3 uses
  %i.uz = shl i64 %index1393, 2
  %next.gep1394 = getelementptr i8, ptr %.lcssa1366, i64 %i.uz ; 2 uses
  %i.va = getelementptr i8, ptr %next.gep1394, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep1394, align 1, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.va, align 1, !tbaa !8
  %index.next1395 = add nuw i64 %index1393, 8
  %i.vb = icmp eq i64 %index1393, %i.uy
  br i1 %i.vb, label %._crit_edge1273, label %vector.body1392, !llvm.loop !14

._crit_edge1273:                                  ; preds = %vector.body1392, %bb.cg
  %i.vc = getelementptr inbounds nuw i8, ptr %scevgep, i64 24 ; 4 uses
  %i.vd = ptrtoint ptr %i.vc to i64               ; 3 uses
  %i.ve = add i64 %i.vd, 4                        ; 2 uses
  %.not1045 = icmp ule i64 %i.ve, %i.qc
  %i.vf = icmp ugt i64 %i.ve, %i.qa
  %or.cond1159 = and i1 %.not1045, %i.vf
  %i.vg = icmp ugt i64 %i.qc, %i.vd
  %or.cond1160 = and i1 %i.vg, %or.cond1159
  br i1 %or.cond1160, label %bb.ch, label %.thread1181

bb.ch:                                            ; preds = %._crit_edge1273
  %i.vh = load i32, ptr %i.vc, align 1, !tbaa !8
  %i.vi = add i32 %i.vh, %i.rm
  store i32 %i.vi, ptr %i.vc, align 1, !tbaa !8
  %i.vj = getelementptr inbounds nuw i8, ptr %scevgep, i64 28 ; 3 uses
  %i.vk = load i32, ptr %i.ui, align 1, !tbaa !8
  %i.vl = sub i32 %i.vk, %6
  %i.vm = zext i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #4
  %i.vp = add i64 %i.vd, 28                       ; 2 uses
  %.not1047 = icmp ule i64 %i.vp, %i.qc
  %i.vq = icmp ugt i64 %i.vp, %i.qa
  %or.cond1161 = and i1 %.not1047, %i.vq
  br i1 %or.cond1161, label %bb.ci, label %.thread1181

bb.ci:                                            ; preds = %bb.ch
  %i.vr = getelementptr inbounds nuw i8, ptr %i.rr, i64 44 ; 2 uses
  %i.vs = ptrtoint ptr %i.vr to i64               ; 2 uses
  %i.vt = add i64 %i.vs, 4                        ; 2 uses
  %.not1049 = icmp ule i64 %i.vt, %i.qc
  %i.vu = icmp ugt i64 %i.vt, %i.qa
  %or.cond1163 = and i1 %.not1049, %i.vu
  %i.vv = icmp ugt i64 %i.qc, %i.vs
  %or.cond1164 = and i1 %i.vv, %or.cond1163
  br i1 %or.cond1164, label %bb.cj, label %.thread1181

end_hunk_0
