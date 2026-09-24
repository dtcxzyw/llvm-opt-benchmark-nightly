Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlnNdr?download=true
inline.NumInlined: 338
inline.NumDeleted: 97
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Wln_NtkToNdrTest:bb.a
  %i.qe = sext i32 %.016.i517.i.i to i64          ; 3 uses
  %i.qf = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !19  ; 2 uses
  %i.qh = icmp eq i8 %i.qg, 6
  br i1 %i.qh, label %Ndr_ObjReadBody.exit519.i.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i515.i.i
  %i.qi = icmp ugt i8 %i.qg, 3
  br i1 %i.qi, label %Ndr_DataSize.exit.i518.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qj = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.qe
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i518.i.i

Ndr_DataSize.exit.i518.i.i:                       ; preds = %bb.cb, %bb.ca
  %i.ql = phi i32 [ %i.qk, %bb.cb ], [ 1, %bb.ca ]
  %i.qm = add nsw i32 %i.ql, %.016.i517.i.i       ; 2 uses
  %i.qn = icmp slt i32 %i.qm, %i.pe
  br i1 %i.qn, label %.lr.ph.i515.i.i, label %.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit519.i.i:                      ; preds = %.lr.ph.i515.i.i
  %i.qo = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.qe
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !21 ; 5 uses
  %i.qq = icmp sgt i32 %i.qp, 255
  br i1 %i.qq, label %bb.cc, label %bb.cr

bb.cc:                                            ; preds = %Ndr_ObjReadBody.exit519.i.i
  %i.qr = add nsw i32 %i.qp, -256                 ; 2 uses
  %i.qs = add nsw i32 %i.qp, -255                 ; 2 uses
  %i.qt = zext nneg i32 %i.qr to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.val395887.i.i, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !21
  %i.qw = add i32 %i.qv, %i.qr                    ; 2 uses
  %i.qx = icmp slt i32 %i.qs, %i.qw
  br i1 %i.qx, label %.lr.ph.i522.i.i, label %Ndr_ObjReadEntry.exit526.i.i

.lr.ph.i522.i.i:                                  ; preds = %bb.cc, %Ndr_DataSize.exit.i525.i.i
  %.016.i524.i.i = phi i32 [ %i.rj, %Ndr_DataSize.exit.i525.i.i ], [ %i.qs, %bb.cc ] ; 2 uses
  %i.qy = sext i32 %.016.i524.i.i to i64          ; 3 uses
  %i.qz = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !19  ; 2 uses
  %i.rb = icmp eq i8 %i.ra, 7
  br i1 %i.rb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph.i522.i.i
  %i.rc = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.qy
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !21
  %i.re = sext i32 %i.rd to i64
  br label %Ndr_ObjReadEntry.exit526.i.i

bb.ce:                                            ; preds = %.lr.ph.i522.i.i
  %i.rf = icmp ugt i8 %i.ra, 3
  br i1 %i.rf, label %Ndr_DataSize.exit.i525.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rg = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.qy
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i525.i.i

Ndr_DataSize.exit.i525.i.i:                       ; preds = %bb.cf, %bb.ce
  %i.ri = phi i32 [ %i.rh, %bb.cf ], [ 1, %bb.ce ]
  %i.rj = add nsw i32 %i.ri, %.016.i524.i.i       ; 2 uses
  %i.rk = icmp slt i32 %i.rj, %i.qw
  br i1 %i.rk, label %.lr.ph.i522.i.i, label %Ndr_ObjReadEntry.exit526.i.i, !llvm.loop !51

Ndr_ObjReadEntry.exit526.i.i:                     ; preds = %Ndr_DataSize.exit.i525.i.i, %bb.cd, %bb.cc
  %.012.i521.i.i = phi i64 [ %i.re, %bb.cd ], [ -1, %bb.cc ], [ -1, %Ndr_DataSize.exit.i525.i.i ]
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i521.i.i
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !43
  %i.rn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.34, ptr noundef %i.rm) #20 ; 0 uses
  %i.ro = load i32, ptr %i.pc, align 4, !tbaa !21
  %i.rp = add i32 %i.ro, %.5924.i.i               ; 3 uses
  %i.rq = icmp slt i32 %i.pb, %i.rp
  br i1 %i.rq, label %.lr.ph.i529.i.i, label %Ndr_ObjReadBody.exit533.thread.i.i

.lr.ph.i529.i.i:                                  ; preds = %Ndr_ObjReadEntry.exit526.i.i, %Ndr_DataSize.exit.i532.i.i
  %.016.i531.i.i = phi i32 [ %i.rz, %Ndr_DataSize.exit.i532.i.i ], [ %i.pb, %Ndr_ObjReadEntry.exit526.i.i ] ; 2 uses
  %i.rr = sext i32 %.016.i531.i.i to i64          ; 3 uses
  %i.rs = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !19  ; 2 uses
  %i.ru = icmp eq i8 %i.rt, 7
  br i1 %i.ru, label %Ndr_ObjReadBody.exit533.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i529.i.i
  %i.rv = icmp ugt i8 %i.rt, 3
  br i1 %i.rv, label %Ndr_DataSize.exit.i532.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rw = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.rr
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i532.i.i

Ndr_DataSize.exit.i532.i.i:                       ; preds = %bb.ch, %bb.cg
  %i.ry = phi i32 [ %i.rx, %bb.ch ], [ 1, %bb.cg ]
  %i.rz = add nsw i32 %i.ry, %.016.i531.i.i       ; 2 uses
  %i.sa = icmp slt i32 %i.rz, %i.rp
  br i1 %i.sa, label %.lr.ph.i529.i.i, label %Ndr_ObjReadBody.exit533.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit533.i.i:                      ; preds = %.lr.ph.i529.i.i
  %i.sb = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.rr
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !21
  %i.sd = icmp sgt i32 %i.sc, 0
  br i1 %i.sd, label %.lr.ph.i536.i.i, label %Ndr_ObjReadBody.exit533.thread.i.i

.lr.ph.i536.i.i:                                  ; preds = %Ndr_ObjReadBody.exit533.i.i, %Ndr_DataSize.exit.i539.i.i
  %.016.i538.i.i = phi i32 [ %i.sp, %Ndr_DataSize.exit.i539.i.i ], [ %i.pb, %Ndr_ObjReadBody.exit533.i.i ] ; 2 uses
  %i.se = sext i32 %.016.i538.i.i to i64          ; 3 uses
  %i.sf = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !19  ; 2 uses
  %i.sh = icmp eq i8 %i.sg, 7
  br i1 %i.sh, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i536.i.i
  %i.si = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.se
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !21
  %i.sk = sext i32 %i.sj to i64
  br label %Ndr_ObjReadBody.exit540.i.i

bb.cj:                                            ; preds = %.lr.ph.i536.i.i
  %i.sl = icmp ugt i8 %i.sg, 3
  br i1 %i.sl, label %Ndr_DataSize.exit.i539.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sm = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.se
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i539.i.i

Ndr_DataSize.exit.i539.i.i:                       ; preds = %bb.ck, %bb.cj
  %i.so = phi i32 [ %i.sn, %bb.ck ], [ 1, %bb.cj ]
  %i.sp = add nsw i32 %i.so, %.016.i538.i.i       ; 2 uses
  %i.sq = icmp slt i32 %i.sp, %i.rp
  br i1 %i.sq, label %.lr.ph.i536.i.i, label %Ndr_ObjReadBody.exit540.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit540.i.i:                      ; preds = %Ndr_DataSize.exit.i539.i.i, %bb.ci
  %.012.i535.i.i = phi i64 [ %i.sk, %bb.ci ], [ -1, %Ndr_DataSize.exit.i539.i.i ]
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i535.i.i
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !43
  %i.st = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.35, ptr noundef %i.ss) #20 ; 0 uses
  br label %Ndr_ObjReadBody.exit533.thread.i.i

Ndr_ObjReadBody.exit533.thread.i.i:               ; preds = %Ndr_DataSize.exit.i532.i.i, %Ndr_ObjReadBody.exit540.i.i, %Ndr_ObjReadBody.exit533.i.i, %Ndr_ObjReadEntry.exit526.i.i
  %fwrite368.i.i = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr nonnull %i.r) ; 0 uses
  %i.su = load i32, ptr %i.pc, align 4, !tbaa !21
  %i.sv = add i32 %i.su, %.5924.i.i               ; 2 uses
  %i.sw = icmp slt i32 %i.pb, %i.sv
  br i1 %i.sw, label %.lr.ph.i542.i.i, label %._crit_edge922.i.i

.lr.ph.i542.i.i:                                  ; preds = %Ndr_ObjReadBody.exit533.thread.i.i, %Ndr_DataSize.exit.i546.i.i
  %.0748.i.i = phi ptr [ %.11248.i.i, %Ndr_DataSize.exit.i546.i.i ], [ null, %Ndr_ObjReadBody.exit533.thread.i.i ] ; 4 uses
  %i.sx = phi ptr [ %i.tk, %Ndr_DataSize.exit.i546.i.i ], [ null, %Ndr_ObjReadBody.exit533.thread.i.i ] ; 5 uses
  %i.sy = phi ptr [ %i.tj, %Ndr_DataSize.exit.i546.i.i ], [ null, %Ndr_ObjReadBody.exit533.thread.i.i ]
  %.024.i.i.i = phi i32 [ %.1.i5451249.i.i, %Ndr_DataSize.exit.i546.i.i ], [ 0, %Ndr_ObjReadBody.exit533.thread.i.i ] ; 4 uses
  %.01923.i.i.i = phi i32 [ %i.tm, %Ndr_DataSize.exit.i546.i.i ], [ %i.pb, %Ndr_ObjReadBody.exit533.thread.i.i ] ; 2 uses
  %i.sz = sext i32 %.01923.i.i.i to i64           ; 3 uses
  %i.ta = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !19  ; 2 uses
  %i.tc = icmp eq i8 %i.tb, 4
  br i1 %i.tc, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %.lr.ph.i542.i.i
  %i.td = add nsw i32 %.024.i.i.i, 1              ; 2 uses
  %i.te = icmp eq ptr %i.sx, null
  br i1 %i.te, label %bb.cm, label %Ndr_DataSize.exit.i546.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.tf = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.sz ; 3 uses
  br label %Ndr_DataSize.exit.i546.i.i

bb.cn:                                            ; preds = %.lr.ph.i542.i.i
  %.not.i544.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i544.i.i, label %bb.co, label %Ndr_ObjReadArray.exit.i.i

bb.co:                                            ; preds = %bb.cn
  %i.tg = icmp ugt i8 %i.tb, 3
  br i1 %i.tg, label %Ndr_DataSize.exit.i546.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.th = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.sz
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i546.i.i

Ndr_DataSize.exit.i546.i.i:                       ; preds = %bb.cp, %bb.co, %bb.cm, %bb.cl
  %.1.i5451249.i.i = phi i32 [ %.024.i.i.i, %bb.cp ], [ %.024.i.i.i, %bb.co ], [ %i.td, %bb.cm ], [ %i.td, %bb.cl ] ; 2 uses
  %i.tj = phi ptr [ null, %bb.cp ], [ null, %bb.co ], [ %i.tf, %bb.cm ], [ %i.sx, %bb.cl ]
  %i.tk = phi ptr [ %i.sx, %bb.cp ], [ %i.sx, %bb.co ], [ %i.tf, %bb.cm ], [ %i.sx, %bb.cl ]
  %.11248.i.i = phi ptr [ %.0748.i.i, %bb.cp ], [ %.0748.i.i, %bb.co ], [ %i.tf, %bb.cm ], [ %.0748.i.i, %bb.cl ] ; 2 uses
  %i.tl = phi i32 [ %i.ti, %bb.cp ], [ 1, %bb.co ], [ 1, %bb.cm ], [ 1, %bb.cl ]
  %i.tm = add nsw i32 %i.tl, %.01923.i.i.i        ; 2 uses
  %i.tn = icmp slt i32 %i.tm, %i.sv
  br i1 %i.tn, label %.lr.ph.i542.i.i, label %Ndr_ObjReadArray.exit.i.i, !llvm.loop !2

Ndr_ObjReadArray.exit.i.i:                        ; preds = %Ndr_DataSize.exit.i546.i.i, %bb.cn
  %.2749.i.i = phi ptr [ %.0748.i.i, %bb.cn ], [ %.11248.i.i, %Ndr_DataSize.exit.i546.i.i ] ; 2 uses
  %.0.lcssa.i541.i.i = phi i32 [ %.024.i.i.i, %bb.cn ], [ %.1.i5451249.i.i, %Ndr_DataSize.exit.i546.i.i ] ; 4 uses
  %i.to = icmp sgt i32 %.0.lcssa.i541.i.i, 0
  br i1 %i.to, label %.lr.ph921.i.i, label %._crit_edge922.i.i

.lr.ph921.i.i:                                    ; preds = %Ndr_ObjReadArray.exit.i.i
  %i.tp = add nsw i32 %.0.lcssa.i541.i.i, -1
  %i.tq = zext nneg i32 %i.tp to i64              ; 2 uses
  %.not347.i = icmp eq i32 %.0.lcssa.i541.i.i, 1
  br i1 %.not347.i, label %._crit_edge922.i.loopexit.peel.begin.i, label %.lr.ph921.i.split.i

.lr.ph921.i.split.i:                              ; preds = %.lr.ph921.i.i
  %wide.trip.count1020.i.i = zext nneg i32 %.0.lcssa.i541.i.i to i64
  %i.tr = add nsw i64 %wide.trip.count1020.i.i, -2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.lr.ph921.i.split.i
  %indvars.iv1017.i.i = phi i64 [ 0, %.lr.ph921.i.split.i ], [ %indvars.iv.next1018.i.i, %bb.cq ] ; 4 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.2749.i.i, i64 %indvars.iv1017.i.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !21
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tu
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !43
  %1 = icmp eq i64 %indvars.iv1017.i.i, %i.tq
  %2 = select i1 %1, ptr @.str.27, ptr @.str.38
  %i.tx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.37, ptr noundef %i.tw, ptr noundef nonnull %2) #20 ; 0 uses
  %indvars.iv.next1018.i.i = add nuw nsw i64 %indvars.iv1017.i.i, 1 ; 2 uses
  %exitcond1021.not.i.i = icmp eq i64 %indvars.iv1017.i.i, %i.tr
  br i1 %exitcond1021.not.i.i, label %._crit_edge922.i.loopexit.peel.begin.i, label %bb.cq, !llvm.loop !58

._crit_edge922.i.loopexit.peel.begin.i:           ; preds = %bb.cq, %.lr.ph921.i.i
  %i.ty = phi i64 [ 0, %.lr.ph921.i.i ], [ %indvars.iv.next1018.i.i, %bb.cq ] ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.2749.i.i, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !21
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ub
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !43
  %i.ue = icmp eq i64 %i.ty, %i.tq
  %i.uf = select i1 %i.ue, ptr @.str.27, ptr @.str.38
  %i.ug = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.37, ptr noundef %i.ud, ptr noundef nonnull %i.uf) #20 ; 0 uses
  br label %._crit_edge922.i.i

._crit_edge922.i.i:                               ; preds = %._crit_edge922.i.loopexit.peel.begin.i, %Ndr_ObjReadArray.exit.i.i, %Ndr_ObjReadBody.exit533.thread.i.i
  %fwrite369.i.i = tail call i64 @fwrite(ptr nonnull @.str.39, i64 3, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.cr:                                            ; preds = %Ndr_ObjReadBody.exit519.i.i
  switch i32 %i.qp, label %.thread.i.i [
    i32 88, label %bb.cs
    i32 89, label %bb.dh
    i32 80, label %bb.dw
    i32 81, label %bb.el
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.uh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.40) #20 ; 0 uses
  %i.ui = load i32, ptr %i.pc, align 4, !tbaa !21
  %i.uj = add i32 %i.ui, %.5924.i.i               ; 3 uses
  %i.uk = icmp slt i32 %i.pb, %i.uj
  br i1 %i.uk, label %.lr.ph.i549.i.i, label %Ndr_ObjReadBody.exit553.thread.i.i

.lr.ph.i549.i.i:                                  ; preds = %bb.cs, %Ndr_DataSize.exit.i552.i.i
  %.016.i551.i.i = phi i32 [ %i.ut, %Ndr_DataSize.exit.i552.i.i ], [ %i.pb, %bb.cs ] ; 2 uses
  %i.ul = sext i32 %.016.i551.i.i to i64          ; 3 uses
  %i.um = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !19  ; 2 uses
  %i.uo = icmp eq i8 %i.un, 7
  br i1 %i.uo, label %Ndr_ObjReadBody.exit553.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i549.i.i
  %i.up = icmp ugt i8 %i.un, 3
  br i1 %i.up, label %Ndr_DataSize.exit.i552.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uq = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.ul
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i552.i.i

Ndr_DataSize.exit.i552.i.i:                       ; preds = %bb.cu, %bb.ct
  %i.us = phi i32 [ %i.ur, %bb.cu ], [ 1, %bb.ct ]
  %i.ut = add nsw i32 %i.us, %.016.i551.i.i       ; 2 uses
  %i.uu = icmp slt i32 %i.ut, %i.uj
  br i1 %i.uu, label %.lr.ph.i549.i.i, label %Ndr_ObjReadBody.exit553.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit553.i.i:                      ; preds = %.lr.ph.i549.i.i
  %i.uv = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.ul
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !21
  %i.ux = icmp sgt i32 %i.uw, 0
  br i1 %i.ux, label %.lr.ph.i556.i.i, label %Ndr_ObjReadBody.exit553.thread.i.i

.lr.ph.i556.i.i:                                  ; preds = %Ndr_ObjReadBody.exit553.i.i, %Ndr_DataSize.exit.i559.i.i
  %.016.i558.i.i = phi i32 [ %i.vj, %Ndr_DataSize.exit.i559.i.i ], [ %i.pb, %Ndr_ObjReadBody.exit553.i.i ] ; 2 uses
  %i.uy = sext i32 %.016.i558.i.i to i64          ; 3 uses
  %i.uz = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !19  ; 2 uses
  %i.vb = icmp eq i8 %i.va, 7
  br i1 %i.vb, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i556.i.i
  %i.vc = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.uy
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !21
  %i.ve = sext i32 %i.vd to i64
  br label %Ndr_ObjReadBody.exit560.i.i

bb.cw:                                            ; preds = %.lr.ph.i556.i.i
  %i.vf = icmp ugt i8 %i.va, 3
  br i1 %i.vf, label %Ndr_DataSize.exit.i559.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vg = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.uy
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i559.i.i

Ndr_DataSize.exit.i559.i.i:                       ; preds = %bb.cx, %bb.cw
  %i.vi = phi i32 [ %i.vh, %bb.cx ], [ 1, %bb.cw ]
  %i.vj = add nsw i32 %i.vi, %.016.i558.i.i       ; 2 uses
  %i.vk = icmp slt i32 %i.vj, %i.uj
  br i1 %i.vk, label %.lr.ph.i556.i.i, label %Ndr_ObjReadBody.exit560.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit560.i.i:                      ; preds = %Ndr_DataSize.exit.i559.i.i, %bb.cv
  %.012.i555.i.i = phi i64 [ %i.ve, %bb.cv ], [ -1, %Ndr_DataSize.exit.i559.i.i ]
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i555.i.i
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !43
  %i.vn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.35, ptr noundef %i.vm) #20 ; 0 uses
  br label %Ndr_ObjReadBody.exit553.thread.i.i

Ndr_ObjReadBody.exit553.thread.i.i:               ; preds = %Ndr_DataSize.exit.i552.i.i, %Ndr_ObjReadBody.exit560.i.i, %Ndr_ObjReadBody.exit553.i.i, %bb.cs
  %fwrite366.i.i = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr nonnull %i.r) ; 0 uses
  %i.vo = load i32, ptr %i.pc, align 4, !tbaa !21
  %i.vp = add i32 %i.vo, %.5924.i.i               ; 3 uses
  %i.vq = icmp slt i32 %i.pb, %i.vp
  br i1 %i.vq, label %.lr.ph.i563.i.i, label %Ndr_ObjReadOutName.exit581.i.i

.lr.ph.i563.i.i:                                  ; preds = %Ndr_ObjReadBody.exit553.thread.i.i, %Ndr_DataSize.exit.i571.i.i
  %.3750.i.i = phi ptr [ %.47511257.i.i, %Ndr_DataSize.exit.i571.i.i ], [ null, %Ndr_ObjReadBody.exit553.thread.i.i ] ; 4 uses
  %i.vr = phi ptr [ %i.wd, %Ndr_DataSize.exit.i571.i.i ], [ null, %Ndr_ObjReadBody.exit553.thread.i.i ] ; 5 uses
  %i.vs = phi ptr [ %i.wc, %Ndr_DataSize.exit.i571.i.i ], [ null, %Ndr_ObjReadBody.exit553.thread.i.i ]
  %.01923.i567.i.i = phi i32 [ %i.wf, %Ndr_DataSize.exit.i571.i.i ], [ %i.pb, %Ndr_ObjReadBody.exit553.thread.i.i ] ; 2 uses
  %i.vt = sext i32 %.01923.i567.i.i to i64        ; 3 uses
  %i.vu = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !19  ; 2 uses
  %i.vw = icmp eq i8 %i.vv, 4
  br i1 %i.vw, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %.lr.ph.i563.i.i
  %i.vx = icmp eq ptr %i.vr, null
  br i1 %i.vx, label %bb.cz, label %Ndr_DataSize.exit.i571.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.vy = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.vt ; 3 uses
  br label %Ndr_DataSize.exit.i571.i.i

bb.da:                                            ; preds = %.lr.ph.i563.i.i
  %.not.i568.i.i = icmp eq ptr %i.vs, null
  br i1 %.not.i568.i.i, label %bb.db, label %.lr.ph.i.i577.i.i

bb.db:                                            ; preds = %bb.da
  %i.vz = icmp ugt i8 %i.vv, 3
  br i1 %i.vz, label %Ndr_DataSize.exit.i571.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wa = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.vt
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i571.i.i

Ndr_DataSize.exit.i571.i.i:                       ; preds = %bb.dc, %bb.db, %bb.cz, %bb.cy
  %i.wc = phi ptr [ null, %bb.dc ], [ null, %bb.db ], [ %i.vr, %bb.cy ], [ %i.vy, %bb.cz ]
  %i.wd = phi ptr [ %i.vr, %bb.dc ], [ %i.vr, %bb.db ], [ %i.vr, %bb.cy ], [ %i.vy, %bb.cz ]
  %.47511257.i.i = phi ptr [ %.3750.i.i, %bb.dc ], [ %.3750.i.i, %bb.db ], [ %.3750.i.i, %bb.cy ], [ %i.vy, %bb.cz ] ; 2 uses
  %i.we = phi i32 [ %i.wb, %bb.dc ], [ 1, %bb.db ], [ 1, %bb.cy ], [ 1, %bb.cz ]
  %i.wf = add nsw i32 %i.we, %.01923.i567.i.i     ; 2 uses
  %i.wg = icmp slt i32 %i.wf, %i.vp
  br i1 %i.wg, label %.lr.ph.i563.i.i, label %.lr.ph.i.i577.i.i, !llvm.loop !2

.lr.ph.i.i577.i.i:                                ; preds = %Ndr_DataSize.exit.i571.i.i, %bb.da
  %.5752.i.i = phi ptr [ %.47511257.i.i, %Ndr_DataSize.exit.i571.i.i ], [ %.3750.i.i, %bb.da ] ; 2 uses
  br label %bb.dd

bb.dd:                                            ; preds = %Ndr_DataSize.exit.i.i580.i.i, %.lr.ph.i.i577.i.i
  %.016.i.i579.i.i = phi i32 [ %i.pb, %.lr.ph.i.i577.i.i ], [ %i.ws, %Ndr_DataSize.exit.i.i580.i.i ] ; 2 uses
  %i.wh = sext i32 %.016.i.i579.i.i to i64        ; 3 uses
  %i.wi = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !19  ; 2 uses
  %i.wk = icmp eq i8 %i.wj, 5
  br i1 %i.wk, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.wl = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.wh
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !21
  %i.wn = sext i32 %i.wm to i64
  br label %Ndr_ObjReadOutName.exit581.i.i

bb.df:                                            ; preds = %bb.dd
  %i.wo = icmp ugt i8 %i.wj, 3
  br i1 %i.wo, label %Ndr_DataSize.exit.i.i580.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wp = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.wh
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i.i580.i.i

Ndr_DataSize.exit.i.i580.i.i:                     ; preds = %bb.dg, %bb.df
  %i.wr = phi i32 [ %i.wq, %bb.dg ], [ 1, %bb.df ]
  %i.ws = add nsw i32 %i.wr, %.016.i.i579.i.i     ; 2 uses
  %i.wt = icmp slt i32 %i.ws, %i.vp
  br i1 %i.wt, label %bb.dd, label %Ndr_ObjReadOutName.exit581.i.i, !llvm.loop !1

Ndr_ObjReadOutName.exit581.i.i:                   ; preds = %Ndr_DataSize.exit.i.i580.i.i, %bb.de, %Ndr_ObjReadBody.exit553.thread.i.i
  %.5752776.i.i = phi ptr [ %.5752.i.i, %bb.de ], [ null, %Ndr_ObjReadBody.exit553.thread.i.i ], [ %.5752.i.i, %Ndr_DataSize.exit.i.i580.i.i ] ; 2 uses
  %.012.i.i576.i.i = phi i64 [ %i.wn, %bb.de ], [ -1, %Ndr_ObjReadBody.exit553.thread.i.i ], [ -1, %Ndr_DataSize.exit.i.i580.i.i ]
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i.i576.i.i
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !43
  %i.ww = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.41, ptr noundef %i.wv) #20 ; 0 uses
  %i.wx = load i32, ptr %.5752776.i.i, align 4, !tbaa !21
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.wy
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !43
  %i.xb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.42, ptr noundef %i.xa) #20 ; 0 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.5752776.i.i, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !21
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.xe
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !43
  %i.xh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.43, ptr noundef %i.xg) #20 ; 0 uses
  %fwrite367.i.i = tail call i64 @fwrite(ptr nonnull @.str.39, i64 3, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split
end_hunk_0
begin_hunk_1_@Wln_NtkToNdrTest:bb.a
  br label %Ndr_DataSize.exit.i704.i.i

bb.ff:                                            ; preds = %.lr.ph.i696.i.i
  %.not.i701.i.i = icmp eq ptr %i.aiv, null
  br i1 %.not.i701.i.i, label %bb.fg, label %Ndr_ObjReadArray.exit707.i.i

bb.fg:                                            ; preds = %bb.ff
  %i.ajd = icmp ugt i8 %i.aiy, 3
  br i1 %i.ajd, label %Ndr_DataSize.exit.i704.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aje = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.aiw
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i704.i.i

Ndr_DataSize.exit.i704.i.i:                       ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fd
  %.1.i7031283.i.i = phi i32 [ %.024.i699.i.i, %bb.fh ], [ %.024.i699.i.i, %bb.fg ], [ %i.aja, %bb.fe ], [ %i.aja, %bb.fd ] ; 2 uses
  %i.ajg = phi ptr [ null, %bb.fh ], [ null, %bb.fg ], [ %i.ajc, %bb.fe ], [ %i.aiu, %bb.fd ]
  %i.ajh = phi ptr [ %i.aiu, %bb.fh ], [ %i.aiu, %bb.fg ], [ %i.ajc, %bb.fe ], [ %i.aiu, %bb.fd ]
  %.161282.i.i = phi ptr [ %.15.i.i, %bb.fh ], [ %.15.i.i, %bb.fg ], [ %i.ajc, %bb.fe ], [ %.15.i.i, %bb.fd ] ; 2 uses
  %i.aji = phi i32 [ %i.ajf, %bb.fh ], [ 1, %bb.fg ], [ 1, %bb.fe ], [ 1, %bb.fd ]
  %i.ajj = add nsw i32 %i.aji, %.01923.i700.i.i   ; 2 uses
  %i.ajk = icmp slt i32 %i.ajj, %i.ais
  br i1 %i.ajk, label %.lr.ph.i696.i.i, label %Ndr_ObjReadArray.exit707.i.i, !llvm.loop !2

Ndr_ObjReadArray.exit707.i.i:                     ; preds = %Ndr_DataSize.exit.i704.i.i, %bb.ff
  %.17.i.i = phi ptr [ %.161282.i.i, %Ndr_DataSize.exit.i704.i.i ], [ %.15.i.i, %bb.ff ] ; 13 uses
  %.0.lcssa.i695.i.i = phi i32 [ %.1.i7031283.i.i, %Ndr_DataSize.exit.i704.i.i ], [ %.024.i699.i.i, %bb.ff ] ; 7 uses
  %i.ajl = icmp eq i32 %.0.lcssa.i695.i.i, 0
  br i1 %i.ajl, label %.lr.ph.i710.i.i, label %bb.fl

.lr.ph.i710.i.i:                                  ; preds = %Ndr_ObjReadArray.exit707.i.i, %Ndr_DataSize.exit.i713.i.i
  %.016.i712.i.i = phi i32 [ %i.ajv, %Ndr_DataSize.exit.i713.i.i ], [ %i.pb, %Ndr_ObjReadArray.exit707.i.i ] ; 2 uses
  %i.ajm = sext i32 %.016.i712.i.i to i64         ; 3 uses
  %i.ajn = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.ajm
  %i.ajo = load i8, ptr %i.ajn, align 1, !tbaa !19 ; 2 uses
  %i.ajp = icmp eq i8 %i.ajo, 9
  br i1 %i.ajp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.lr.ph.i710.i.i
  %i.ajq = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.ajm
  br label %Ndr_ObjReadBodyP.exit.i.i

bb.fj:                                            ; preds = %.lr.ph.i710.i.i
  %i.ajr = icmp ugt i8 %i.ajo, 3
  br i1 %i.ajr, label %Ndr_DataSize.exit.i713.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ajs = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.ajm
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i713.i.i

Ndr_DataSize.exit.i713.i.i:                       ; preds = %bb.fk, %bb.fj
  %i.aju = phi i32 [ %i.ajt, %bb.fk ], [ 1, %bb.fj ]
  %i.ajv = add nsw i32 %i.aju, %.016.i712.i.i     ; 2 uses
  %i.ajw = icmp slt i32 %i.ajv, %i.ais
  br i1 %i.ajw, label %.lr.ph.i710.i.i, label %Ndr_ObjReadBodyP.exit.i.i, !llvm.loop !3

Ndr_ObjReadBodyP.exit.i.i:                        ; preds = %Ndr_DataSize.exit.i713.i.i, %bb.fi, %Ndr_ObjReadOutName.exit693.i.i
  %.012.i709.i.i = phi ptr [ %i.ajq, %bb.fi ], [ null, %Ndr_ObjReadOutName.exit693.i.i ], [ null, %Ndr_DataSize.exit.i713.i.i ]
  %i.ajx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.64, ptr noundef %.012.i709.i.i) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.fl:                                            ; preds = %Ndr_ObjReadArray.exit707.i.i
  %.not803.i.i = icmp eq i32 %.0.lcssa.i695.i.i, 1 ; 3 uses
  br i1 %.not803.i.i, label %.lr.ph.i716.i.i, label %Ndr_ObjReadBody.exit720.thread.i.i

.lr.ph.i716.i.i:                                  ; preds = %bb.fl, %Ndr_DataSize.exit.i719.i.i
  %.016.i718.i.i = phi i32 [ %i.akg, %Ndr_DataSize.exit.i719.i.i ], [ %i.pb, %bb.fl ] ; 2 uses
  %i.ajy = sext i32 %.016.i718.i.i to i64         ; 3 uses
  %i.ajz = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !19 ; 2 uses
  %i.akb = icmp eq i8 %i.aka, 6
  br i1 %i.akb, label %Ndr_ObjReadBody.exit720.i.i, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph.i716.i.i
  %i.akc = icmp ugt i8 %i.aka, 3
  br i1 %i.akc, label %Ndr_DataSize.exit.i719.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.akd = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.ajy
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i719.i.i

Ndr_DataSize.exit.i719.i.i:                       ; preds = %bb.fn, %bb.fm
  %i.akf = phi i32 [ %i.ake, %bb.fn ], [ 1, %bb.fm ]
  %i.akg = add nsw i32 %i.akf, %.016.i718.i.i     ; 2 uses
  %i.akh = icmp slt i32 %i.akg, %i.ais
  br i1 %i.akh, label %.lr.ph.i716.i.i, label %Ndr_ObjReadBody.exit720.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit720.i.i:                      ; preds = %.lr.ph.i716.i.i
  %i.aki = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.ajy
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !21
  %i.akk = icmp eq i32 %i.akj, 11
  br i1 %i.akk, label %bb.fo, label %Ndr_ObjReadBody.exit720.thread.i.i

bb.fo:                                            ; preds = %Ndr_ObjReadBody.exit720.i.i
  %i.akl = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.akm
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !43
  %i.akp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.64, ptr noundef %i.ako) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

Ndr_ObjReadBody.exit720.thread.i.i:               ; preds = %Ndr_DataSize.exit.i719.i.i, %Ndr_ObjReadBody.exit720.i.i, %bb.fl
  switch i32 %.012.i514770773.i.i, label %bb.fz [
    i32 91, label %bb.fp
    i32 92, label %bb.fx
  ]

bb.fp:                                            ; preds = %Ndr_ObjReadBody.exit720.thread.i.i
  %i.akq = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.akr = sext i32 %i.akq to i64
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.akr
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !43
  %fputs.i.i = tail call i32 @fputs(ptr %i.akt, ptr nonnull %i.r) ; 0 uses
  %i.aku = load i32, ptr %i.pc, align 4, !tbaa !21
  %i.akv = add i32 %i.aku, %.5924.i.i             ; 2 uses
  %i.akw = icmp slt i32 %i.pb, %i.akv
  br i1 %i.akw, label %.lr.ph.i.i721.i.i, label %Ndr_ObjReadArray.exit.i.thread.i.i

.lr.ph.i.i721.i.i:                                ; preds = %bb.fp, %Ndr_DataSize.exit.i.i722.i.i
  %.0.i.i.i = phi ptr [ %.130.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ], [ null, %bb.fp ] ; 4 uses
  %i.akx = phi ptr [ %i.alk, %Ndr_DataSize.exit.i.i722.i.i ], [ null, %bb.fp ] ; 5 uses
  %i.aky = phi ptr [ %i.alj, %Ndr_DataSize.exit.i.i722.i.i ], [ null, %bb.fp ]
  %.024.i.i.i.i = phi i32 [ %.1.i31.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ], [ 0, %bb.fp ] ; 4 uses
  %.01923.i.i.i.i = phi i32 [ %i.alm, %Ndr_DataSize.exit.i.i722.i.i ], [ %i.pb, %bb.fp ] ; 2 uses
  %i.akz = sext i32 %.01923.i.i.i.i to i64        ; 3 uses
  %i.ala = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.akz
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !19 ; 2 uses
  %i.alc = icmp eq i8 %i.alb, 8
  br i1 %i.alc, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %.lr.ph.i.i721.i.i
  %i.ald = add nsw i32 %.024.i.i.i.i, 1           ; 2 uses
  %i.ale = icmp eq ptr %i.akx, null
  br i1 %i.ale, label %bb.fr, label %Ndr_DataSize.exit.i.i722.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.alf = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.akz ; 3 uses
  br label %Ndr_DataSize.exit.i.i722.i.i

bb.fs:                                            ; preds = %.lr.ph.i.i721.i.i
  %.not.i.i.i.i = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i.i, label %bb.ft, label %Ndr_ObjReadArray.exit.i.i.i

bb.ft:                                            ; preds = %bb.fs
  %i.alg = icmp ugt i8 %i.alb, 3
  br i1 %i.alg, label %Ndr_DataSize.exit.i.i722.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.alh = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.akz
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i.i722.i.i

Ndr_DataSize.exit.i.i722.i.i:                     ; preds = %bb.fu, %bb.ft, %bb.fr, %bb.fq
  %.1.i31.i.i.i = phi i32 [ %.024.i.i.i.i, %bb.fu ], [ %.024.i.i.i.i, %bb.ft ], [ %i.ald, %bb.fr ], [ %i.ald, %bb.fq ] ; 2 uses
  %i.alj = phi ptr [ null, %bb.fu ], [ null, %bb.ft ], [ %i.alf, %bb.fr ], [ %i.akx, %bb.fq ]
  %i.alk = phi ptr [ %i.akx, %bb.fu ], [ %i.akx, %bb.ft ], [ %i.alf, %bb.fr ], [ %i.akx, %bb.fq ]
  %.130.i.i.i = phi ptr [ %.0.i.i.i, %bb.fu ], [ %.0.i.i.i, %bb.ft ], [ %i.alf, %bb.fr ], [ %.0.i.i.i, %bb.fq ] ; 2 uses
  %i.all = phi i32 [ %i.ali, %bb.fu ], [ 1, %bb.ft ], [ 1, %bb.fr ], [ 1, %bb.fq ]
  %i.alm = add nsw i32 %i.all, %.01923.i.i.i.i    ; 2 uses
  %i.aln = icmp slt i32 %i.alm, %i.akv
  br i1 %i.aln, label %.lr.ph.i.i721.i.i, label %Ndr_ObjReadArray.exit.i.i.i, !llvm.loop !2

Ndr_ObjReadArray.exit.i.i.i:                      ; preds = %Ndr_DataSize.exit.i.i722.i.i, %bb.fs
  %.2.i.i.i = phi ptr [ %.130.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ], [ %.0.i.i.i, %bb.fs ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ %.1.i31.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ], [ %.024.i.i.i.i, %bb.fs ]
  switch i32 %.0.lcssa.i.i.i.i, label %bb.fw [
    i32 1, label %bb.fv
    i32 0, label %Ndr_ObjReadArray.exit.i.thread.i.i
  ]

bb.fv:                                            ; preds = %Ndr_ObjReadArray.exit.i.i.i
  %i.alo = load i32, ptr %.2.i.i.i, align 4, !tbaa !21
  %i.alp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.77, i32 noundef %i.alo) #20 ; 0 uses
  br label %Ndr_ObjWriteRange.exit.i.i

Ndr_ObjReadArray.exit.i.thread.i.i:               ; preds = %Ndr_ObjReadArray.exit.i.i.i, %bb.fp
  %i.alq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.77, i32 noundef 0) #20 ; 0 uses
  br label %Ndr_ObjWriteRange.exit.i.i

bb.fw:                                            ; preds = %Ndr_ObjReadArray.exit.i.i.i
  %i.alr = load i32, ptr %.2.i.i.i, align 4, !tbaa !21
  %i.als = getelementptr inbounds nuw i8, ptr %.2.i.i.i, i64 4
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !21
  %i.alu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.76, i32 noundef %i.alr, i32 noundef %i.alt) #20 ; 0 uses
  br label %Ndr_ObjWriteRange.exit.i.i

Ndr_ObjWriteRange.exit.i.i:                       ; preds = %bb.fw, %Ndr_ObjReadArray.exit.i.thread.i.i, %bb.fv
  %fwrite359.i.i = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.fx:                                            ; preds = %Ndr_ObjReadBody.exit720.thread.i.i
  %fputc357.i.i = tail call i32 @fputc(i32 123, ptr nonnull %i.r) ; 0 uses
  %i.alv = icmp sgt i32 %.0.lcssa.i695.i.i, 0
  br i1 %i.alv, label %.lr.ph918.i.i, label %._crit_edge919.i.i

.lr.ph918.i.i:                                    ; preds = %bb.fx
  %i.alw = add nsw i32 %.0.lcssa.i695.i.i, -1
  %i.alx = zext nneg i32 %i.alw to i64            ; 2 uses
  br i1 %.not803.i.i, label %._crit_edge919.i.loopexit.peel.begin.i, label %.lr.ph918.i.split.i

.lr.ph918.i.split.i:                              ; preds = %.lr.ph918.i.i
  %wide.trip.count1015.i.i = zext nneg i32 %.0.lcssa.i695.i.i to i64
  %i.aly = add nsw i64 %wide.trip.count1015.i.i, -2
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fy, %.lr.ph918.i.split.i
  %indvars.iv1012.i.i = phi i64 [ 0, %.lr.ph918.i.split.i ], [ %indvars.iv.next1013.i.i, %bb.fy ] ; 4 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %.17.i.i, i64 %indvars.iv1012.i.i
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !21
  %i.amb = sext i32 %i.ama to i64
  %i.amc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.amb
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !43
  %3 = icmp eq i64 %indvars.iv1012.i.i, %i.alx
  %4 = select i1 %3, ptr @.str.27, ptr @.str.28
  %i.ame = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.26, ptr noundef %i.amd, ptr noundef nonnull %4) #20 ; 0 uses
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv1012.i.i, %i.aly
  br i1 %exitcond1016.not.i.i, label %._crit_edge919.i.loopexit.peel.begin.i, label %bb.fy, !llvm.loop !59

._crit_edge919.i.loopexit.peel.begin.i:           ; preds = %bb.fy, %.lr.ph918.i.i
  %i.amf = phi i64 [ 0, %.lr.ph918.i.i ], [ %indvars.iv.next1013.i.i, %bb.fy ] ; 2 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %.17.i.i, i64 %i.amf
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !21
  %i.ami = sext i32 %i.amh to i64
  %i.amj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ami
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !43
  %i.aml = icmp eq i64 %i.amf, %i.alx
  %i.amm = select i1 %i.aml, ptr @.str.27, ptr @.str.28
  %i.amn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.26, ptr noundef %i.amk, ptr noundef nonnull %i.amm) #20 ; 0 uses
  br label %._crit_edge919.i.i

._crit_edge919.i.i:                               ; preds = %._crit_edge919.i.loopexit.peel.begin.i, %bb.fx
  %fwrite358.i.i = tail call i64 @fwrite(ptr nonnull @.str.68, i64 3, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.fz:                                            ; preds = %Ndr_ObjReadBody.exit720.thread.i.i
  br i1 %.not803.i.i, label %.lr.ph.i27.i, label %bb.gd

.lr.ph.i27.i:                                     ; preds = %bb.fz, %Ndr_DataSize.exit.i30.i
  %.016.i29.i = phi i32 [ %i.amy, %Ndr_DataSize.exit.i30.i ], [ %i.pb, %bb.fz ] ; 2 uses
  %i.amo = sext i32 %.016.i29.i to i64            ; 3 uses
  %i.amp = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.amo
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !19 ; 2 uses
  %i.amr = icmp eq i8 %i.amq, 6
  br i1 %i.amr, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %.lr.ph.i27.i
  %i.ams = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.amo
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !21
  br label %Ndr_ObjReadBody.exit31.i

bb.gb:                                            ; preds = %.lr.ph.i27.i
  %i.amu = icmp ugt i8 %i.amq, 3
  br i1 %i.amu, label %Ndr_DataSize.exit.i30.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.amv = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.amo
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i30.i

Ndr_DataSize.exit.i30.i:                          ; preds = %bb.gc, %bb.gb
  %i.amx = phi i32 [ %i.amw, %bb.gc ], [ 1, %bb.gb ]
  %i.amy = add nsw i32 %i.amx, %.016.i29.i        ; 2 uses
  %i.amz = icmp slt i32 %i.amy, %i.ais
  br i1 %i.amz, label %.lr.ph.i27.i, label %Ndr_ObjReadBody.exit31.i, !llvm.loop !1

Ndr_ObjReadBody.exit31.i:                         ; preds = %Ndr_DataSize.exit.i30.i, %bb.ga
  %.012.i26.i = phi i32 [ %i.amt, %bb.ga ], [ -1, %Ndr_DataSize.exit.i30.i ]
  %i.ana = tail call fastcc ptr @Abc_OperName(i32 noundef %.012.i26.i)
  %i.anb = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.anc = sext i32 %i.anb to i64
  %i.and = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.anc
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !43
  %i.anf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.69, ptr noundef %i.ana, ptr noundef %i.ane) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.gd:                                            ; preds = %bb.fz
  %i.ang = icmp eq i32 %.0.lcssa.i695.i.i, 2
  br i1 %i.ang, label %.lr.ph.i23.i, label %bb.gi

.lr.ph.i23.i:                                     ; preds = %bb.gd
  %i.anh = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.ani = sext i32 %i.anh to i64
  %i.anj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ani
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !43
  br label %bb.ge

bb.ge:                                            ; preds = %Ndr_DataSize.exit.i24.i, %.lr.ph.i23.i
  %.016.i.i = phi i32 [ %i.pb, %.lr.ph.i23.i ], [ %i.anv, %Ndr_DataSize.exit.i24.i ] ; 2 uses
  %i.anl = sext i32 %.016.i.i to i64              ; 3 uses
  %i.anm = getelementptr inbounds i8, ptr %.val.pre.i.i, i64 %i.anl
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !19 ; 2 uses
  %i.ano = icmp eq i8 %i.ann, 6
  br i1 %i.ano, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.anp = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.anl
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !21
  br label %Ndr_ObjReadBody.exit.i

bb.gg:                                            ; preds = %bb.ge
  %i.anr = icmp ugt i8 %i.ann, 3
  br i1 %i.anr, label %Ndr_DataSize.exit.i24.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ans = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.anl
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i24.i

Ndr_DataSize.exit.i24.i:                          ; preds = %bb.gh, %bb.gg
  %i.anu = phi i32 [ %i.ant, %bb.gh ], [ 1, %bb.gg ]
  %i.anv = add nsw i32 %i.anu, %.016.i.i          ; 2 uses
  %i.anw = icmp slt i32 %i.anv, %i.ais
  br i1 %i.anw, label %bb.ge, label %Ndr_ObjReadBody.exit.i, !llvm.loop !1

Ndr_ObjReadBody.exit.i:                           ; preds = %Ndr_DataSize.exit.i24.i, %bb.gf
  %.012.i.i = phi i32 [ %i.anq, %bb.gf ], [ -1, %Ndr_DataSize.exit.i24.i ]
  %i.anx = tail call fastcc ptr @Abc_OperName(i32 noundef %.012.i.i)
  %i.any = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 4
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !21
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aoa
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !43
  %i.aod = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.70, ptr noundef %i.ank, ptr noundef %i.anx, ptr noundef %i.aoc) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.gi:                                            ; preds = %bb.gd
  %i.aoe = icmp eq i32 %.0.lcssa.i695.i.i, 3
  %i.aof = icmp eq i32 %.012.i514770773.i.i, 50
  %or.cond.i.i = and i1 %i.aof, %i.aoe
  br i1 %or.cond.i.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.aog = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aoh
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !43
  %i.aok = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 4
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !21
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aom
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !43
  %i.aop = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 8
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !21
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aor
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !43
  %i.aou = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.71, ptr noundef %i.aoj, ptr noundef %i.aoo, ptr noundef %i.aot) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.gk:                                            ; preds = %bb.gi
  %i.aov = icmp eq i32 %.012.i514770773.i.i, 21
  br i1 %i.aov, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aow = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aox
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !43
  %i.apa = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 8
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !21
  %i.apc = sext i32 %i.apb to i64
  %i.apd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.apc
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !43
  %i.apf = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 4
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !21
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aph
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !43
  %i.apk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.72, ptr noundef %i.aoz, ptr noundef %i.ape, ptr noundef %i.apj) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

bb.gm:                                            ; preds = %bb.gk
  %i.apl = tail call fastcc i32 @Ndr_ObjReadBody(ptr noundef readonly %i.a, i32 noundef %.5924.i.i, i32 noundef 6)
  %i.apm = tail call fastcc ptr @Abc_OperName(i32 noundef %i.apl)
  %i.apn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.73, ptr noundef %i.apm) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split

Ndr_ObjIsType.exit505.thread.i.ithread-pre-split: ; preds = %Ndr_DataSize.exit.i504.i.i, %Ndr_DataSize.exit.i511.i.i, %bb.bv, %Ndr_ObjIsType.exit505.i.i, %Ndr_ObjIsType.exit512.i.i, %._crit_edge922.i.i, %Ndr_ObjReadOutName.exit581.i.i, %Ndr_ObjReadOutName.exit616.i.i, %Ndr_ObjReadOutName.exit651.i.i, %Ndr_ObjReadOutName.exit686.i.i, %Ndr_ObjReadBodyP.exit.i.i, %bb.fo, %Ndr_ObjWriteRange.exit.i.i, %._crit_edge919.i.i, %Ndr_ObjReadBody.exit31.i, %Ndr_ObjReadBody.exit.i, %bb.gj, %bb.gl, %bb.gm
  %.pr = load i8, ptr %i.oz, align 1, !tbaa !19
  br label %Ndr_ObjIsType.exit505.thread.i.i

Ndr_ObjIsType.exit505.thread.i.i:                 ; preds = %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split, %bb.bu
  %i.apo = phi i8 [ %.pr, %Ndr_ObjIsType.exit505.thread.i.ithread-pre-split ], [ %i.pa, %bb.bu ]
  %i.app = icmp ugt i8 %i.apo, 3
  br i1 %i.app, label %Ndr_DataSize.exit724.i.i, label %bb.gn

bb.gn:                                            ; preds = %Ndr_ObjIsType.exit505.thread.i.i
  %i.apq = getelementptr inbounds [4 x i8], ptr %.val395887.i.i, i64 %i.oy
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !21
  br label %Ndr_DataSize.exit724.i.i

Ndr_DataSize.exit724.i.i:                         ; preds = %bb.gn, %Ndr_ObjIsType.exit505.thread.i.i
  %i.aps = phi i32 [ %i.apr, %bb.gn ], [ 1, %Ndr_ObjIsType.exit505.thread.i.i ]
  %i.apt = add nsw i32 %i.aps, %.5924.i.i         ; 2 uses
  %i.apu = load i32, ptr %i.ce, align 4, !tbaa !21
  %i.apv = add i32 %i.apu, %.086.i
  %i.apw = icmp slt i32 %i.apt, %i.apv
  br i1 %i.apw, label %bb.bu, label %Ndr_WriteVerilogModule.exit.i, !llvm.loop !60

Ndr_WriteVerilogModule.exit.i:                    ; preds = %Ndr_DataSize.exit724.i.i, %._crit_edge915.i.i
  %fwrite353.i.i = tail call i64 @fwrite(ptr nonnull @.str.74, i64 12, i64 1, ptr nonnull %i.r) ; 0 uses
  %.pre184.i = load i8, ptr %i.z, align 1, !tbaa !19
  br label %bb.go

bb.go:                                            ; preds = %Ndr_WriteVerilogModule.exit.i, %bb.d
  %.val.pre.i = phi ptr [ %.val395887.i.i, %Ndr_WriteVerilogModule.exit.i ], [ %.val.pre185.i, %bb.d ] ; 3 uses
  %i.apx = phi i8 [ %.pre184.i, %Ndr_WriteVerilogModule.exit.i ], [ %i.aa, %bb.d ]
  %i.apy = icmp ugt i8 %i.apx, 3
  br i1 %i.apy, label %Ndr_DataSize.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.apz = getelementptr inbounds [4 x i8], ptr %.val.pre.i, i64 %i.y
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i
end_hunk_1
