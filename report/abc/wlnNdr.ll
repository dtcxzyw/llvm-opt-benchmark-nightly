Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlnNdr?download=true
inline.NumInlined: 338
inline.NumDeleted: 97
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Wln_NtkToNdrTest:bb.a
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i518.i.i

Ndr_DataSize.exit.i518.i.i:                       ; preds = %bb.cf, %bb.ce
  %i.qz = phi i32 [ %i.qy, %bb.cf ], [ 1, %bb.ce ]
  %i.ra = add nsw i32 %i.qz, %.016.i517.i.i       ; 2 uses
  %i.rb = icmp slt i32 %i.ra, %i.ps
  br i1 %i.rb, label %.lr.ph.i515.i.i, label %.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit519.i.i:                      ; preds = %.lr.ph.i515.i.i
  %i.rc = getelementptr inbounds [4 x i8], ptr %.val390931.i.i, i64 %i.qs
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !21 ; 5 uses
  %i.re = icmp sgt i32 %i.rd, 255
  br i1 %i.re, label %bb.cg, label %bb.cx

bb.cg:                                            ; preds = %Ndr_ObjReadBody.exit519.i.i
  %i.rf = add nsw i32 %i.rd, -256                 ; 2 uses
  %i.rg = add nsw i32 %i.rd, -255                 ; 2 uses
  %i.rh = zext nneg i32 %i.rf to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.val390931.i.i, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !21
  %i.rk = add i32 %i.rj, %i.rf                    ; 2 uses
  %i.rl = icmp slt i32 %i.rg, %i.rk
  br i1 %i.rl, label %.lr.ph.i522.i.i, label %Ndr_ObjReadEntry.exit526.i.i

.lr.ph.i522.i.i:                                  ; preds = %bb.cg, %Ndr_DataSize.exit.i525.i.i
  %.016.i524.i.i = phi i32 [ %i.rx, %Ndr_DataSize.exit.i525.i.i ], [ %i.rg, %bb.cg ] ; 2 uses
  %i.rm = sext i32 %.016.i524.i.i to i64          ; 3 uses
  %i.rn = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !19  ; 2 uses
  %i.rp = icmp eq i8 %i.ro, 7
  br i1 %i.rp, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i522.i.i
  %i.rq = getelementptr inbounds [4 x i8], ptr %.val390931.i.i, i64 %i.rm
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !21
  %i.rs = sext i32 %i.rr to i64
  br label %Ndr_ObjReadEntry.exit526.i.i

bb.ci:                                            ; preds = %.lr.ph.i522.i.i
  %i.rt = icmp ugt i8 %i.ro, 3
  br i1 %i.rt, label %Ndr_DataSize.exit.i525.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ru = getelementptr inbounds [4 x i8], ptr %.val390931.i.i, i64 %i.rm
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i525.i.i

Ndr_DataSize.exit.i525.i.i:                       ; preds = %bb.cj, %bb.ci
  %i.rw = phi i32 [ %i.rv, %bb.cj ], [ 1, %bb.ci ]
  %i.rx = add nsw i32 %i.rw, %.016.i524.i.i       ; 2 uses
  %i.ry = icmp slt i32 %i.rx, %i.rk
  br i1 %i.ry, label %.lr.ph.i522.i.i, label %Ndr_ObjReadEntry.exit526.i.i, !llvm.loop !51

Ndr_ObjReadEntry.exit526.i.i:                     ; preds = %Ndr_DataSize.exit.i525.i.i, %bb.ch, %bb.cg
  %.012.i521.i.i = phi i64 [ %i.rs, %bb.ch ], [ -1, %bb.cg ], [ -1, %Ndr_DataSize.exit.i525.i.i ]
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i521.i.i
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !43
  %i.sb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.34, ptr noundef %i.sa) #20 ; 0 uses
  %.val14.i527.i.i = load ptr, ptr %i.t, align 8, !tbaa !18 ; 5 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %.val14.i527.i.i, i64 %i.pm
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !21
  %i.se = add i32 %i.sd, %.5924.i.i               ; 3 uses
  %i.sf = icmp slt i32 %i.pp, %i.se
  br i1 %i.sf, label %.lr.ph.i529.i.i, label %Ndr_ObjReadBody.exit533.thread.i.i

.lr.ph.i529.i.i:                                  ; preds = %Ndr_ObjReadEntry.exit526.i.i
  %.val13.i530.i.i = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %Ndr_DataSize.exit.i532.i.i, %.lr.ph.i529.i.i
  %.016.i531.i.i = phi i32 [ %i.pp, %.lr.ph.i529.i.i ], [ %i.so, %Ndr_DataSize.exit.i532.i.i ] ; 2 uses
  %i.sg = sext i32 %.016.i531.i.i to i64          ; 3 uses
  %i.sh = getelementptr inbounds i8, ptr %.val13.i530.i.i, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !19  ; 2 uses
  %i.sj = icmp eq i8 %i.si, 7
  br i1 %i.sj, label %Ndr_ObjReadBody.exit533.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sk = icmp ugt i8 %i.si, 3
  br i1 %i.sk, label %Ndr_DataSize.exit.i532.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sl = getelementptr inbounds [4 x i8], ptr %.val14.i527.i.i, i64 %i.sg
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i532.i.i

Ndr_DataSize.exit.i532.i.i:                       ; preds = %bb.cm, %bb.cl
  %i.sn = phi i32 [ %i.sm, %bb.cm ], [ 1, %bb.cl ]
  %i.so = add nsw i32 %i.sn, %.016.i531.i.i       ; 2 uses
  %i.sp = icmp slt i32 %i.so, %i.se
  br i1 %i.sp, label %bb.ck, label %Ndr_ObjReadBody.exit533.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit533.i.i:                      ; preds = %bb.ck
  %i.sq = getelementptr inbounds [4 x i8], ptr %.val14.i527.i.i, i64 %i.sg
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !21
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.lr.ph.i536.i.i, label %Ndr_ObjReadBody.exit533.thread.i.i

.lr.ph.i536.i.i:                                  ; preds = %Ndr_ObjReadBody.exit533.i.i, %Ndr_DataSize.exit.i539.i.i
  %.016.i538.i.i = phi i32 [ %i.te, %Ndr_DataSize.exit.i539.i.i ], [ %i.pp, %Ndr_ObjReadBody.exit533.i.i ] ; 2 uses
  %i.st = sext i32 %.016.i538.i.i to i64          ; 3 uses
  %i.su = getelementptr inbounds i8, ptr %.val13.i530.i.i, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !19  ; 2 uses
  %i.sw = icmp eq i8 %i.sv, 7
  br i1 %i.sw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i536.i.i
  %i.sx = getelementptr inbounds [4 x i8], ptr %.val14.i527.i.i, i64 %i.st
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !21
  %i.sz = sext i32 %i.sy to i64
  br label %Ndr_ObjReadBody.exit540.i.i

bb.co:                                            ; preds = %.lr.ph.i536.i.i
  %i.ta = icmp ugt i8 %i.sv, 3
  br i1 %i.ta, label %Ndr_DataSize.exit.i539.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tb = getelementptr inbounds [4 x i8], ptr %.val14.i527.i.i, i64 %i.st
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i539.i.i

Ndr_DataSize.exit.i539.i.i:                       ; preds = %bb.cp, %bb.co
  %i.td = phi i32 [ %i.tc, %bb.cp ], [ 1, %bb.co ]
  %i.te = add nsw i32 %i.td, %.016.i538.i.i       ; 2 uses
  %i.tf = icmp slt i32 %i.te, %i.se
  br i1 %i.tf, label %.lr.ph.i536.i.i, label %Ndr_ObjReadBody.exit540.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit540.i.i:                      ; preds = %Ndr_DataSize.exit.i539.i.i, %bb.cn
  %.012.i535.i.i = phi i64 [ %i.sz, %bb.cn ], [ -1, %Ndr_DataSize.exit.i539.i.i ]
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i535.i.i
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !43
  %i.ti = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.35, ptr noundef %i.th) #20 ; 0 uses
  br label %Ndr_ObjReadBody.exit533.thread.i.i

Ndr_ObjReadBody.exit533.thread.i.i:               ; preds = %Ndr_DataSize.exit.i532.i.i, %Ndr_ObjReadBody.exit540.i.i, %Ndr_ObjReadBody.exit533.i.i, %Ndr_ObjReadEntry.exit526.i.i
  %fwrite368.i.i = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr nonnull %i.r) ; 0 uses
  %.val2122.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !18 ; 3 uses
  %i.tj = getelementptr inbounds [4 x i8], ptr %.val2122.i.i.i, i64 %i.pm
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !21
  %i.tl = add i32 %i.tk, %.5924.i.i               ; 2 uses
  %i.tm = icmp slt i32 %i.pp, %i.tl
  br i1 %i.tm, label %.lr.ph.i542.i.i, label %._crit_edge922.i.i

.lr.ph.i542.i.i:                                  ; preds = %Ndr_ObjReadBody.exit533.thread.i.i
  %.val.i543.i.i = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %bb.cq

bb.cq:                                            ; preds = %Ndr_DataSize.exit.i546.i.i, %.lr.ph.i542.i.i
  %.0748.i.i = phi ptr [ null, %.lr.ph.i542.i.i ], [ %.11248.i.i, %Ndr_DataSize.exit.i546.i.i ] ; 4 uses
  %i.tn = phi ptr [ null, %.lr.ph.i542.i.i ], [ %i.ua, %Ndr_DataSize.exit.i546.i.i ] ; 5 uses
  %i.to = phi ptr [ null, %.lr.ph.i542.i.i ], [ %i.tz, %Ndr_DataSize.exit.i546.i.i ]
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i542.i.i ], [ %.1.i5451249.i.i, %Ndr_DataSize.exit.i546.i.i ] ; 4 uses
  %.01923.i.i.i = phi i32 [ %i.pp, %.lr.ph.i542.i.i ], [ %i.uc, %Ndr_DataSize.exit.i546.i.i ] ; 2 uses
  %i.tp = sext i32 %.01923.i.i.i to i64           ; 3 uses
  %i.tq = getelementptr inbounds i8, ptr %.val.i543.i.i, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !19  ; 2 uses
  %i.ts = icmp eq i8 %i.tr, 4
  br i1 %i.ts, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.tt = add nsw i32 %.024.i.i.i, 1              ; 2 uses
  %i.tu = icmp eq ptr %i.tn, null
  br i1 %i.tu, label %bb.cs, label %Ndr_DataSize.exit.i546.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.tv = getelementptr inbounds [4 x i8], ptr %.val2122.i.i.i, i64 %i.tp ; 3 uses
  br label %Ndr_DataSize.exit.i546.i.i

bb.ct:                                            ; preds = %bb.cq
  %.not.i544.i.i = icmp eq ptr %i.to, null
  br i1 %.not.i544.i.i, label %bb.cu, label %Ndr_ObjReadArray.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.tw = icmp ugt i8 %i.tr, 3
  br i1 %i.tw, label %Ndr_DataSize.exit.i546.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tx = getelementptr inbounds [4 x i8], ptr %.val2122.i.i.i, i64 %i.tp
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i546.i.i

Ndr_DataSize.exit.i546.i.i:                       ; preds = %bb.cv, %bb.cu, %bb.cs, %bb.cr
  %.1.i5451249.i.i = phi i32 [ %.024.i.i.i, %bb.cv ], [ %.024.i.i.i, %bb.cu ], [ %i.tt, %bb.cs ], [ %i.tt, %bb.cr ] ; 2 uses
  %i.tz = phi ptr [ null, %bb.cv ], [ null, %bb.cu ], [ %i.tv, %bb.cs ], [ %i.tn, %bb.cr ]
  %i.ua = phi ptr [ %i.tn, %bb.cv ], [ %i.tn, %bb.cu ], [ %i.tv, %bb.cs ], [ %i.tn, %bb.cr ]
  %.11248.i.i = phi ptr [ %.0748.i.i, %bb.cv ], [ %.0748.i.i, %bb.cu ], [ %i.tv, %bb.cs ], [ %.0748.i.i, %bb.cr ] ; 2 uses
  %i.ub = phi i32 [ %i.ty, %bb.cv ], [ 1, %bb.cu ], [ 1, %bb.cs ], [ 1, %bb.cr ]
  %i.uc = add nsw i32 %i.ub, %.01923.i.i.i        ; 2 uses
  %i.ud = icmp slt i32 %i.uc, %i.tl
  br i1 %i.ud, label %bb.cq, label %Ndr_ObjReadArray.exit.i.i, !llvm.loop !2

Ndr_ObjReadArray.exit.i.i:                        ; preds = %Ndr_DataSize.exit.i546.i.i, %bb.ct
  %.2749.i.i = phi ptr [ %.0748.i.i, %bb.ct ], [ %.11248.i.i, %Ndr_DataSize.exit.i546.i.i ] ; 2 uses
  %.0.lcssa.i541.i.i = phi i32 [ %.024.i.i.i, %bb.ct ], [ %.1.i5451249.i.i, %Ndr_DataSize.exit.i546.i.i ] ; 4 uses
  %i.ue = icmp sgt i32 %.0.lcssa.i541.i.i, 0
  br i1 %i.ue, label %.lr.ph921.i.i, label %._crit_edge922.i.i

.lr.ph921.i.i:                                    ; preds = %Ndr_ObjReadArray.exit.i.i
  %i.uf = add nsw i32 %.0.lcssa.i541.i.i, -1
  %i.ug = zext nneg i32 %i.uf to i64              ; 2 uses
  %.not347.i = icmp eq i32 %.0.lcssa.i541.i.i, 1
  br i1 %.not347.i, label %._crit_edge922.i.loopexit.peel.begin.i, label %.lr.ph921.i.split.i

.lr.ph921.i.split.i:                              ; preds = %.lr.ph921.i.i
  %wide.trip.count1020.i.i = zext nneg i32 %.0.lcssa.i541.i.i to i64
  %i.uh = add nsw i64 %wide.trip.count1020.i.i, -2
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.lr.ph921.i.split.i
  %indvars.iv1017.i.i = phi i64 [ 0, %.lr.ph921.i.split.i ], [ %indvars.iv.next1018.i.i, %bb.cw ] ; 4 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.2749.i.i, i64 %indvars.iv1017.i.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !21
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.uk
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !43
  %1 = icmp eq i64 %indvars.iv1017.i.i, %i.ug
  %2 = select i1 %1, ptr @.str.27, ptr @.str.38
  %i.un = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.37, ptr noundef %i.um, ptr noundef nonnull %2) #20 ; 0 uses
  %indvars.iv.next1018.i.i = add nuw nsw i64 %indvars.iv1017.i.i, 1 ; 2 uses
  %exitcond1021.not.i.i = icmp eq i64 %indvars.iv1017.i.i, %i.uh
  br i1 %exitcond1021.not.i.i, label %._crit_edge922.i.loopexit.peel.begin.i, label %bb.cw, !llvm.loop !58

._crit_edge922.i.loopexit.peel.begin.i:           ; preds = %bb.cw, %.lr.ph921.i.i
  %i.uo = phi i64 [ 0, %.lr.ph921.i.i ], [ %indvars.iv.next1018.i.i, %bb.cw ] ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.2749.i.i, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !21
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ur
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !43
  %i.uu = icmp eq i64 %i.uo, %i.ug
  %i.uv = select i1 %i.uu, ptr @.str.27, ptr @.str.38
  %i.uw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.37, ptr noundef %i.ut, ptr noundef nonnull %i.uv) #20 ; 0 uses
  br label %._crit_edge922.i.i

._crit_edge922.i.i:                               ; preds = %._crit_edge922.i.loopexit.peel.begin.i, %Ndr_ObjReadArray.exit.i.i, %Ndr_ObjReadBody.exit533.thread.i.i
  %fwrite369.i.i = tail call i64 @fwrite(ptr nonnull @.str.39, i64 3, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.cx:                                            ; preds = %Ndr_ObjReadBody.exit519.i.i
  switch i32 %i.rd, label %.thread.i.i [
    i32 88, label %bb.cy
    i32 89, label %bb.dp
    i32 80, label %bb.eg
    i32 81, label %bb.ex
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.ux = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.40) #20 ; 0 uses
  %.val14.i547.i.i = load ptr, ptr %i.t, align 8, !tbaa !18 ; 5 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %.val14.i547.i.i, i64 %i.pm
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !21
  %i.va = add i32 %i.uz, %.5924.i.i               ; 3 uses
  %i.vb = icmp slt i32 %i.pp, %i.va
  br i1 %i.vb, label %.lr.ph.i549.i.i, label %Ndr_ObjReadBody.exit553.thread.i.i

.lr.ph.i549.i.i:                                  ; preds = %bb.cy
  %.val13.i550.i.i = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  br label %bb.cz

bb.cz:                                            ; preds = %Ndr_DataSize.exit.i552.i.i, %.lr.ph.i549.i.i
  %.016.i551.i.i = phi i32 [ %i.pp, %.lr.ph.i549.i.i ], [ %i.vk, %Ndr_DataSize.exit.i552.i.i ] ; 2 uses
  %i.vc = sext i32 %.016.i551.i.i to i64          ; 3 uses
  %i.vd = getelementptr inbounds i8, ptr %.val13.i550.i.i, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !19  ; 2 uses
  %i.vf = icmp eq i8 %i.ve, 7
  br i1 %i.vf, label %Ndr_ObjReadBody.exit553.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vg = icmp ugt i8 %i.ve, 3
  br i1 %i.vg, label %Ndr_DataSize.exit.i552.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vh = getelementptr inbounds [4 x i8], ptr %.val14.i547.i.i, i64 %i.vc
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i552.i.i

Ndr_DataSize.exit.i552.i.i:                       ; preds = %bb.db, %bb.da
  %i.vj = phi i32 [ %i.vi, %bb.db ], [ 1, %bb.da ]
  %i.vk = add nsw i32 %i.vj, %.016.i551.i.i       ; 2 uses
  %i.vl = icmp slt i32 %i.vk, %i.va
  br i1 %i.vl, label %bb.cz, label %Ndr_ObjReadBody.exit553.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit553.i.i:                      ; preds = %bb.cz
  %i.vm = getelementptr inbounds [4 x i8], ptr %.val14.i547.i.i, i64 %i.vc
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !21
  %i.vo = icmp sgt i32 %i.vn, 0
  br i1 %i.vo, label %.lr.ph.i556.i.i, label %Ndr_ObjReadBody.exit553.thread.i.i

.lr.ph.i556.i.i:                                  ; preds = %Ndr_ObjReadBody.exit553.i.i, %Ndr_DataSize.exit.i559.i.i
  %.016.i558.i.i = phi i32 [ %i.wa, %Ndr_DataSize.exit.i559.i.i ], [ %i.pp, %Ndr_ObjReadBody.exit553.i.i ] ; 2 uses
  %i.vp = sext i32 %.016.i558.i.i to i64          ; 3 uses
  %i.vq = getelementptr inbounds i8, ptr %.val13.i550.i.i, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !19  ; 2 uses
  %i.vs = icmp eq i8 %i.vr, 7
  br i1 %i.vs, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.lr.ph.i556.i.i
  %i.vt = getelementptr inbounds [4 x i8], ptr %.val14.i547.i.i, i64 %i.vp
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !21
  %i.vv = sext i32 %i.vu to i64
  br label %Ndr_ObjReadBody.exit560.i.i

bb.dd:                                            ; preds = %.lr.ph.i556.i.i
  %i.vw = icmp ugt i8 %i.vr, 3
  br i1 %i.vw, label %Ndr_DataSize.exit.i559.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vx = getelementptr inbounds [4 x i8], ptr %.val14.i547.i.i, i64 %i.vp
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i559.i.i

Ndr_DataSize.exit.i559.i.i:                       ; preds = %bb.de, %bb.dd
  %i.vz = phi i32 [ %i.vy, %bb.de ], [ 1, %bb.dd ]
  %i.wa = add nsw i32 %i.vz, %.016.i558.i.i       ; 2 uses
  %i.wb = icmp slt i32 %i.wa, %i.va
  br i1 %i.wb, label %.lr.ph.i556.i.i, label %Ndr_ObjReadBody.exit560.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit560.i.i:                      ; preds = %Ndr_DataSize.exit.i559.i.i, %bb.dc
  %.012.i555.i.i = phi i64 [ %i.vv, %bb.dc ], [ -1, %Ndr_DataSize.exit.i559.i.i ]
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i555.i.i
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !43
  %i.we = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.35, ptr noundef %i.wd) #20 ; 0 uses
  br label %Ndr_ObjReadBody.exit553.thread.i.i

Ndr_ObjReadBody.exit553.thread.i.i:               ; preds = %Ndr_DataSize.exit.i552.i.i, %Ndr_ObjReadBody.exit560.i.i, %Ndr_ObjReadBody.exit553.i.i, %bb.cy
  %fwrite366.i.i = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr nonnull %i.r) ; 0 uses
  %.val2122.i561.i.i = load ptr, ptr %i.t, align 8, !tbaa !18 ; 5 uses
  %i.wf = getelementptr inbounds [4 x i8], ptr %.val2122.i561.i.i, i64 %i.pm
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !21
  %i.wh = add i32 %i.wg, %.5924.i.i               ; 3 uses
  %i.wi = icmp slt i32 %i.pp, %i.wh
  br i1 %i.wi, label %.lr.ph.i563.i.i, label %Ndr_ObjReadOutName.exit581.i.i

.lr.ph.i563.i.i:                                  ; preds = %Ndr_ObjReadBody.exit553.thread.i.i
  %.val.i564.i.i = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %Ndr_DataSize.exit.i571.i.i, %.lr.ph.i563.i.i
  %.3750.i.i = phi ptr [ null, %.lr.ph.i563.i.i ], [ %.47511257.i.i, %Ndr_DataSize.exit.i571.i.i ] ; 4 uses
  %i.wj = phi ptr [ null, %.lr.ph.i563.i.i ], [ %i.wv, %Ndr_DataSize.exit.i571.i.i ] ; 5 uses
  %i.wk = phi ptr [ null, %.lr.ph.i563.i.i ], [ %i.wu, %Ndr_DataSize.exit.i571.i.i ]
  %.01923.i567.i.i = phi i32 [ %i.pp, %.lr.ph.i563.i.i ], [ %i.wx, %Ndr_DataSize.exit.i571.i.i ] ; 2 uses
  %i.wl = sext i32 %.01923.i567.i.i to i64        ; 3 uses
  %i.wm = getelementptr inbounds i8, ptr %.val.i564.i.i, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !19  ; 2 uses
  %i.wo = icmp eq i8 %i.wn, 4
  br i1 %i.wo, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.wp = icmp eq ptr %i.wj, null
  br i1 %i.wp, label %bb.dh, label %Ndr_DataSize.exit.i571.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.wq = getelementptr inbounds [4 x i8], ptr %.val2122.i561.i.i, i64 %i.wl ; 3 uses
  br label %Ndr_DataSize.exit.i571.i.i

bb.di:                                            ; preds = %bb.df
  %.not.i568.i.i = icmp eq ptr %i.wk, null
  br i1 %.not.i568.i.i, label %bb.dj, label %.lr.ph.i.i577.i.i

bb.dj:                                            ; preds = %bb.di
  %i.wr = icmp ugt i8 %i.wn, 3
  br i1 %i.wr, label %Ndr_DataSize.exit.i571.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ws = getelementptr inbounds [4 x i8], ptr %.val2122.i561.i.i, i64 %i.wl
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i571.i.i

Ndr_DataSize.exit.i571.i.i:                       ; preds = %bb.dk, %bb.dj, %bb.dh, %bb.dg
  %i.wu = phi ptr [ null, %bb.dk ], [ null, %bb.dj ], [ %i.wj, %bb.dg ], [ %i.wq, %bb.dh ]
  %i.wv = phi ptr [ %i.wj, %bb.dk ], [ %i.wj, %bb.dj ], [ %i.wj, %bb.dg ], [ %i.wq, %bb.dh ]
  %.47511257.i.i = phi ptr [ %.3750.i.i, %bb.dk ], [ %.3750.i.i, %bb.dj ], [ %.3750.i.i, %bb.dg ], [ %i.wq, %bb.dh ] ; 2 uses
  %i.ww = phi i32 [ %i.wt, %bb.dk ], [ 1, %bb.dj ], [ 1, %bb.dg ], [ 1, %bb.dh ]
  %i.wx = add nsw i32 %i.ww, %.01923.i567.i.i     ; 2 uses
  %i.wy = icmp slt i32 %i.wx, %i.wh
  br i1 %i.wy, label %bb.df, label %.lr.ph.i.i577.i.i, !llvm.loop !2

.lr.ph.i.i577.i.i:                                ; preds = %Ndr_DataSize.exit.i571.i.i, %bb.di
  %.5752.i.i = phi ptr [ %.47511257.i.i, %Ndr_DataSize.exit.i571.i.i ], [ %.3750.i.i, %bb.di ] ; 2 uses
  br label %bb.dl

bb.dl:                                            ; preds = %Ndr_DataSize.exit.i.i580.i.i, %.lr.ph.i.i577.i.i
  %.016.i.i579.i.i = phi i32 [ %i.pp, %.lr.ph.i.i577.i.i ], [ %i.xk, %Ndr_DataSize.exit.i.i580.i.i ] ; 2 uses
  %i.wz = sext i32 %.016.i.i579.i.i to i64        ; 3 uses
  %i.xa = getelementptr inbounds i8, ptr %.val.i564.i.i, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !19  ; 2 uses
  %i.xc = icmp eq i8 %i.xb, 5
  br i1 %i.xc, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.xd = getelementptr inbounds [4 x i8], ptr %.val2122.i561.i.i, i64 %i.wz
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !21
  %i.xf = sext i32 %i.xe to i64
  br label %Ndr_ObjReadOutName.exit581.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.xg = icmp ugt i8 %i.xb, 3
  br i1 %i.xg, label %Ndr_DataSize.exit.i.i580.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xh = getelementptr inbounds [4 x i8], ptr %.val2122.i561.i.i, i64 %i.wz
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i.i580.i.i

Ndr_DataSize.exit.i.i580.i.i:                     ; preds = %bb.do, %bb.dn
  %i.xj = phi i32 [ %i.xi, %bb.do ], [ 1, %bb.dn ]
  %i.xk = add nsw i32 %i.xj, %.016.i.i579.i.i     ; 2 uses
  %i.xl = icmp slt i32 %i.xk, %i.wh
  br i1 %i.xl, label %bb.dl, label %Ndr_ObjReadOutName.exit581.i.i, !llvm.loop !1

Ndr_ObjReadOutName.exit581.i.i:                   ; preds = %Ndr_DataSize.exit.i.i580.i.i, %bb.dm, %Ndr_ObjReadBody.exit553.thread.i.i
  %.5752776.i.i = phi ptr [ %.5752.i.i, %bb.dm ], [ null, %Ndr_ObjReadBody.exit553.thread.i.i ], [ %.5752.i.i, %Ndr_DataSize.exit.i.i580.i.i ] ; 2 uses
  %.012.i.i576.i.i = phi i64 [ %i.xf, %bb.dm ], [ -1, %Ndr_ObjReadBody.exit553.thread.i.i ], [ -1, %Ndr_DataSize.exit.i.i580.i.i ]
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.012.i.i576.i.i
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !43
  %i.xo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.41, ptr noundef %i.xn) #20 ; 0 uses
  %i.xp = load i32, ptr %.5752776.i.i, align 4, !tbaa !21
end_hunk_0
begin_hunk_1_@Wln_NtkToNdrTest:bb.a
bb.fv:                                            ; preds = %bb.fu
  %i.akc = icmp ugt i8 %i.ajx, 3
  br i1 %i.akc, label %Ndr_DataSize.exit.i704.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.akd = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.ajv
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i704.i.i

Ndr_DataSize.exit.i704.i.i:                       ; preds = %bb.fw, %bb.fv, %bb.ft, %bb.fs
  %.1.i7031283.i.i = phi i32 [ %.024.i699.i.i, %bb.fw ], [ %.024.i699.i.i, %bb.fv ], [ %i.ajz, %bb.ft ], [ %i.ajz, %bb.fs ] ; 2 uses
  %i.akf = phi ptr [ null, %bb.fw ], [ null, %bb.fv ], [ %i.akb, %bb.ft ], [ %i.ajt, %bb.fs ]
  %i.akg = phi ptr [ %i.ajt, %bb.fw ], [ %i.ajt, %bb.fv ], [ %i.akb, %bb.ft ], [ %i.ajt, %bb.fs ]
  %.161282.i.i = phi ptr [ %.15.i.i, %bb.fw ], [ %.15.i.i, %bb.fv ], [ %i.akb, %bb.ft ], [ %.15.i.i, %bb.fs ] ; 2 uses
  %i.akh = phi i32 [ %i.ake, %bb.fw ], [ 1, %bb.fv ], [ 1, %bb.ft ], [ 1, %bb.fs ]
  %i.aki = add nsw i32 %i.akh, %.01923.i700.i.i   ; 2 uses
  %i.akj = icmp slt i32 %i.aki, %i.ajr
  br i1 %i.akj, label %bb.fr, label %Ndr_ObjReadArray.exit707.i.i, !llvm.loop !2

Ndr_ObjReadArray.exit707.i.i:                     ; preds = %Ndr_DataSize.exit.i704.i.i, %bb.fu
  %.17.i.i = phi ptr [ %.161282.i.i, %Ndr_DataSize.exit.i704.i.i ], [ %.15.i.i, %bb.fu ] ; 13 uses
  %.0.lcssa.i695.i.i = phi i32 [ %.1.i7031283.i.i, %Ndr_DataSize.exit.i704.i.i ], [ %.024.i699.i.i, %bb.fu ] ; 7 uses
  %i.akk = icmp eq i32 %.0.lcssa.i695.i.i, 0
  br i1 %i.akk, label %.lr.ph.i710.i.i, label %bb.ga

.lr.ph.i710.i.i:                                  ; preds = %Ndr_ObjReadArray.exit707.i.i, %Ndr_DataSize.exit.i713.i.i
  %.016.i712.i.i = phi i32 [ %i.aku, %Ndr_DataSize.exit.i713.i.i ], [ %i.pp, %Ndr_ObjReadArray.exit707.i.i ] ; 2 uses
  %i.akl = sext i32 %.016.i712.i.i to i64         ; 3 uses
  %i.akm = getelementptr inbounds i8, ptr %.val.i697.i.i, i64 %i.akl
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !19 ; 2 uses
  %i.ako = icmp eq i8 %i.akn, 9
  br i1 %i.ako, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.lr.ph.i710.i.i
  %i.akp = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.akl
  br label %Ndr_ObjReadBodyP.exit.i.i

bb.fy:                                            ; preds = %.lr.ph.i710.i.i
  %i.akq = icmp ugt i8 %i.akn, 3
  br i1 %i.akq, label %Ndr_DataSize.exit.i713.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.akr = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.akl
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i713.i.i

Ndr_DataSize.exit.i713.i.i:                       ; preds = %bb.fz, %bb.fy
  %i.akt = phi i32 [ %i.aks, %bb.fz ], [ 1, %bb.fy ]
  %i.aku = add nsw i32 %i.akt, %.016.i712.i.i     ; 2 uses
  %i.akv = icmp slt i32 %i.aku, %i.ajr
  br i1 %i.akv, label %.lr.ph.i710.i.i, label %Ndr_ObjReadBodyP.exit.i.i, !llvm.loop !3

Ndr_ObjReadBodyP.exit.i.i:                        ; preds = %Ndr_DataSize.exit.i713.i.i, %bb.fx, %Ndr_ObjReadOutName.exit693.i.i
  %.012.i709.i.i = phi ptr [ %i.akp, %bb.fx ], [ null, %Ndr_ObjReadOutName.exit693.i.i ], [ null, %Ndr_DataSize.exit.i713.i.i ]
  %i.akw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.64, ptr noundef %.012.i709.i.i) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.ga:                                            ; preds = %Ndr_ObjReadArray.exit707.i.i
  %.not803.i.i = icmp eq i32 %.0.lcssa.i695.i.i, 1 ; 3 uses
  br i1 %.not803.i.i, label %.lr.ph.i716.i.i, label %Ndr_ObjReadBody.exit720.thread.i.i

.lr.ph.i716.i.i:                                  ; preds = %bb.ga, %Ndr_DataSize.exit.i719.i.i
  %.016.i718.i.i = phi i32 [ %i.alf, %Ndr_DataSize.exit.i719.i.i ], [ %i.pp, %bb.ga ] ; 2 uses
  %i.akx = sext i32 %.016.i718.i.i to i64         ; 3 uses
  %i.aky = getelementptr inbounds i8, ptr %.val.i697.i.i, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !19 ; 2 uses
  %i.ala = icmp eq i8 %i.akz, 6
  br i1 %i.ala, label %Ndr_ObjReadBody.exit720.i.i, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph.i716.i.i
  %i.alb = icmp ugt i8 %i.akz, 3
  br i1 %i.alb, label %Ndr_DataSize.exit.i719.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.alc = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.akx
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i719.i.i

Ndr_DataSize.exit.i719.i.i:                       ; preds = %bb.gc, %bb.gb
  %i.ale = phi i32 [ %i.ald, %bb.gc ], [ 1, %bb.gb ]
  %i.alf = add nsw i32 %i.ale, %.016.i718.i.i     ; 2 uses
  %i.alg = icmp slt i32 %i.alf, %i.ajr
  br i1 %i.alg, label %.lr.ph.i716.i.i, label %Ndr_ObjReadBody.exit720.thread.i.i, !llvm.loop !1

Ndr_ObjReadBody.exit720.i.i:                      ; preds = %.lr.ph.i716.i.i
  %i.alh = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.akx
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !21
  %i.alj = icmp eq i32 %i.ali, 11
  br i1 %i.alj, label %bb.gd, label %Ndr_ObjReadBody.exit720.thread.i.i

bb.gd:                                            ; preds = %Ndr_ObjReadBody.exit720.i.i
  %i.alk = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.all = sext i32 %i.alk to i64
  %i.alm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.all
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !43
  %i.alo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.64, ptr noundef %i.aln) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

Ndr_ObjReadBody.exit720.thread.i.i:               ; preds = %Ndr_DataSize.exit.i719.i.i, %Ndr_ObjReadBody.exit720.i.i, %bb.ga
  switch i32 %.012.i514770773.i.i, label %bb.gp [
    i32 91, label %bb.ge
    i32 92, label %bb.gn
  ]

bb.ge:                                            ; preds = %Ndr_ObjReadBody.exit720.thread.i.i
  %i.alp = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.alq = sext i32 %i.alp to i64
  %i.alr = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.alq
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !43
  %fputs.i.i = tail call i32 @fputs(ptr %i.als, ptr nonnull %i.r) ; 0 uses
  %.val2122.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !18 ; 3 uses
  %i.alt = getelementptr inbounds [4 x i8], ptr %.val2122.i.i.i.i, i64 %i.pm
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !21
  %i.alv = add i32 %i.alu, %.5924.i.i             ; 2 uses
  %i.alw = icmp slt i32 %i.pp, %i.alv
  br i1 %i.alw, label %.lr.ph.i.i721.i.i, label %Ndr_ObjReadArray.exit.i.thread.i.i

.lr.ph.i.i721.i.i:                                ; preds = %bb.ge
  %.val.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %bb.gf

bb.gf:                                            ; preds = %Ndr_DataSize.exit.i.i722.i.i, %.lr.ph.i.i721.i.i
  %.0.i.i.i = phi ptr [ null, %.lr.ph.i.i721.i.i ], [ %.130.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ] ; 4 uses
  %i.alx = phi ptr [ null, %.lr.ph.i.i721.i.i ], [ %i.amk, %Ndr_DataSize.exit.i.i722.i.i ] ; 5 uses
  %i.aly = phi ptr [ null, %.lr.ph.i.i721.i.i ], [ %i.amj, %Ndr_DataSize.exit.i.i722.i.i ]
  %.024.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i721.i.i ], [ %.1.i31.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ] ; 4 uses
  %.01923.i.i.i.i = phi i32 [ %i.pp, %.lr.ph.i.i721.i.i ], [ %i.amm, %Ndr_DataSize.exit.i.i722.i.i ] ; 2 uses
  %i.alz = sext i32 %.01923.i.i.i.i to i64        ; 3 uses
  %i.ama = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !19 ; 2 uses
  %i.amc = icmp eq i8 %i.amb, 8
  br i1 %i.amc, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.amd = add nsw i32 %.024.i.i.i.i, 1           ; 2 uses
  %i.ame = icmp eq ptr %i.alx, null
  br i1 %i.ame, label %bb.gh, label %Ndr_DataSize.exit.i.i722.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.amf = getelementptr inbounds [4 x i8], ptr %.val2122.i.i.i.i, i64 %i.alz ; 3 uses
  br label %Ndr_DataSize.exit.i.i722.i.i

bb.gi:                                            ; preds = %bb.gf
  %.not.i.i.i.i = icmp eq ptr %i.aly, null
  br i1 %.not.i.i.i.i, label %bb.gj, label %Ndr_ObjReadArray.exit.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.amg = icmp ugt i8 %i.amb, 3
  br i1 %i.amg, label %Ndr_DataSize.exit.i.i722.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.amh = getelementptr inbounds [4 x i8], ptr %.val2122.i.i.i.i, i64 %i.alz
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i.i722.i.i

Ndr_DataSize.exit.i.i722.i.i:                     ; preds = %bb.gk, %bb.gj, %bb.gh, %bb.gg
  %.1.i31.i.i.i = phi i32 [ %.024.i.i.i.i, %bb.gk ], [ %.024.i.i.i.i, %bb.gj ], [ %i.amd, %bb.gh ], [ %i.amd, %bb.gg ] ; 2 uses
  %i.amj = phi ptr [ null, %bb.gk ], [ null, %bb.gj ], [ %i.amf, %bb.gh ], [ %i.alx, %bb.gg ]
  %i.amk = phi ptr [ %i.alx, %bb.gk ], [ %i.alx, %bb.gj ], [ %i.amf, %bb.gh ], [ %i.alx, %bb.gg ]
  %.130.i.i.i = phi ptr [ %.0.i.i.i, %bb.gk ], [ %.0.i.i.i, %bb.gj ], [ %i.amf, %bb.gh ], [ %.0.i.i.i, %bb.gg ] ; 2 uses
  %i.aml = phi i32 [ %i.ami, %bb.gk ], [ 1, %bb.gj ], [ 1, %bb.gh ], [ 1, %bb.gg ]
  %i.amm = add nsw i32 %i.aml, %.01923.i.i.i.i    ; 2 uses
  %i.amn = icmp slt i32 %i.amm, %i.alv
  br i1 %i.amn, label %bb.gf, label %Ndr_ObjReadArray.exit.i.i.i, !llvm.loop !2

Ndr_ObjReadArray.exit.i.i.i:                      ; preds = %Ndr_DataSize.exit.i.i722.i.i, %bb.gi
  %.2.i.i.i = phi ptr [ %.130.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ], [ %.0.i.i.i, %bb.gi ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ %.1.i31.i.i.i, %Ndr_DataSize.exit.i.i722.i.i ], [ %.024.i.i.i.i, %bb.gi ]
  switch i32 %.0.lcssa.i.i.i.i, label %bb.gm [
    i32 1, label %bb.gl
    i32 0, label %Ndr_ObjReadArray.exit.i.thread.i.i
  ]

bb.gl:                                            ; preds = %Ndr_ObjReadArray.exit.i.i.i
  %i.amo = load i32, ptr %.2.i.i.i, align 4, !tbaa !21
  %i.amp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.77, i32 noundef %i.amo) #20 ; 0 uses
  br label %Ndr_ObjWriteRange.exit.i.i

Ndr_ObjReadArray.exit.i.thread.i.i:               ; preds = %Ndr_ObjReadArray.exit.i.i.i, %bb.ge
  %i.amq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.77, i32 noundef 0) #20 ; 0 uses
  br label %Ndr_ObjWriteRange.exit.i.i

bb.gm:                                            ; preds = %Ndr_ObjReadArray.exit.i.i.i
  %i.amr = load i32, ptr %.2.i.i.i, align 4, !tbaa !21
  %i.ams = getelementptr inbounds nuw i8, ptr %.2.i.i.i, i64 4
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !21
  %i.amu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.76, i32 noundef %i.amr, i32 noundef %i.amt) #20 ; 0 uses
  br label %Ndr_ObjWriteRange.exit.i.i

Ndr_ObjWriteRange.exit.i.i:                       ; preds = %bb.gm, %Ndr_ObjReadArray.exit.i.thread.i.i, %bb.gl
  %fwrite359.i.i = tail call i64 @fwrite(ptr nonnull @.str.66, i64 2, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.gn:                                            ; preds = %Ndr_ObjReadBody.exit720.thread.i.i
  %fputc357.i.i = tail call i32 @fputc(i32 123, ptr nonnull %i.r) ; 0 uses
  %i.amv = icmp sgt i32 %.0.lcssa.i695.i.i, 0
  br i1 %i.amv, label %.lr.ph918.i.i, label %._crit_edge919.i.i

.lr.ph918.i.i:                                    ; preds = %bb.gn
  %i.amw = add nsw i32 %.0.lcssa.i695.i.i, -1
  %i.amx = zext nneg i32 %i.amw to i64            ; 2 uses
  br i1 %.not803.i.i, label %._crit_edge919.i.loopexit.peel.begin.i, label %.lr.ph918.i.split.i

.lr.ph918.i.split.i:                              ; preds = %.lr.ph918.i.i
  %wide.trip.count1015.i.i = zext nneg i32 %.0.lcssa.i695.i.i to i64
  %i.amy = add nsw i64 %wide.trip.count1015.i.i, -2
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph918.i.split.i
  %indvars.iv1012.i.i = phi i64 [ 0, %.lr.ph918.i.split.i ], [ %indvars.iv.next1013.i.i, %bb.go ] ; 4 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %.17.i.i, i64 %indvars.iv1012.i.i
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !21
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.anb
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !43
  %3 = icmp eq i64 %indvars.iv1012.i.i, %i.amx
  %4 = select i1 %3, ptr @.str.27, ptr @.str.28
  %i.ane = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.26, ptr noundef %i.and, ptr noundef nonnull %4) #20 ; 0 uses
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv1012.i.i, %i.amy
  br i1 %exitcond1016.not.i.i, label %._crit_edge919.i.loopexit.peel.begin.i, label %bb.go, !llvm.loop !59

._crit_edge919.i.loopexit.peel.begin.i:           ; preds = %bb.go, %.lr.ph918.i.i
  %i.anf = phi i64 [ 0, %.lr.ph918.i.i ], [ %indvars.iv.next1013.i.i, %bb.go ] ; 2 uses
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %.17.i.i, i64 %i.anf
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !21
  %i.ani = sext i32 %i.anh to i64
  %i.anj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ani
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !43
  %i.anl = icmp eq i64 %i.anf, %i.amx
  %i.anm = select i1 %i.anl, ptr @.str.27, ptr @.str.28
  %i.ann = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.26, ptr noundef %i.ank, ptr noundef nonnull %i.anm) #20 ; 0 uses
  br label %._crit_edge919.i.i

._crit_edge919.i.i:                               ; preds = %._crit_edge919.i.loopexit.peel.begin.i, %bb.gn
  %fwrite358.i.i = tail call i64 @fwrite(ptr nonnull @.str.68, i64 3, i64 1, ptr nonnull %i.r) ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.gp:                                            ; preds = %Ndr_ObjReadBody.exit720.thread.i.i
  br i1 %.not803.i.i, label %.lr.ph.i27.i, label %bb.gt

.lr.ph.i27.i:                                     ; preds = %bb.gp, %Ndr_DataSize.exit.i30.i
  %.016.i29.i = phi i32 [ %i.any, %Ndr_DataSize.exit.i30.i ], [ %i.pp, %bb.gp ] ; 2 uses
  %i.ano = sext i32 %.016.i29.i to i64            ; 3 uses
  %i.anp = getelementptr inbounds i8, ptr %.val.i697.i.i, i64 %i.ano
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !19 ; 2 uses
  %i.anr = icmp eq i8 %i.anq, 6
  br i1 %i.anr, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.lr.ph.i27.i
  %i.ans = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.ano
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !21
  br label %Ndr_ObjReadBody.exit31.i

bb.gr:                                            ; preds = %.lr.ph.i27.i
  %i.anu = icmp ugt i8 %i.anq, 3
  br i1 %i.anu, label %Ndr_DataSize.exit.i30.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.anv = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.ano
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i30.i

Ndr_DataSize.exit.i30.i:                          ; preds = %bb.gs, %bb.gr
  %i.anx = phi i32 [ %i.anw, %bb.gs ], [ 1, %bb.gr ]
  %i.any = add nsw i32 %i.anx, %.016.i29.i        ; 2 uses
  %i.anz = icmp slt i32 %i.any, %i.ajr
  br i1 %i.anz, label %.lr.ph.i27.i, label %Ndr_ObjReadBody.exit31.i, !llvm.loop !1

Ndr_ObjReadBody.exit31.i:                         ; preds = %Ndr_DataSize.exit.i30.i, %bb.gq
  %.012.i26.i = phi i32 [ %i.ant, %bb.gq ], [ -1, %Ndr_DataSize.exit.i30.i ]
  %i.aoa = tail call fastcc ptr @Abc_OperName(i32 noundef %.012.i26.i)
  %i.aob = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.aoc = sext i32 %i.aob to i64
  %i.aod = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aoc
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !43
  %i.aof = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.69, ptr noundef %i.aoa, ptr noundef %i.aoe) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.gt:                                            ; preds = %bb.gp
  %i.aog = icmp eq i32 %.0.lcssa.i695.i.i, 2
  br i1 %i.aog, label %.lr.ph.i23.i, label %bb.gy

.lr.ph.i23.i:                                     ; preds = %bb.gt
  %i.aoh = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aoi
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !43
  br label %bb.gu

bb.gu:                                            ; preds = %Ndr_DataSize.exit.i24.i, %.lr.ph.i23.i
  %.016.i.i = phi i32 [ %i.pp, %.lr.ph.i23.i ], [ %i.aov, %Ndr_DataSize.exit.i24.i ] ; 2 uses
  %i.aol = sext i32 %.016.i.i to i64              ; 3 uses
  %i.aom = getelementptr inbounds i8, ptr %.val.i697.i.i, i64 %i.aol
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !19 ; 2 uses
  %i.aoo = icmp eq i8 %i.aon, 6
  br i1 %i.aoo, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.aop = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.aol
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !21
  br label %Ndr_ObjReadBody.exit.i

bb.gw:                                            ; preds = %bb.gu
  %i.aor = icmp ugt i8 %i.aon, 3
  br i1 %i.aor, label %Ndr_DataSize.exit.i24.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aos = getelementptr inbounds [4 x i8], ptr %.val2122.i694.i.i, i64 %i.aol
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !21
  br label %Ndr_DataSize.exit.i24.i

Ndr_DataSize.exit.i24.i:                          ; preds = %bb.gx, %bb.gw
  %i.aou = phi i32 [ %i.aot, %bb.gx ], [ 1, %bb.gw ]
  %i.aov = add nsw i32 %i.aou, %.016.i.i          ; 2 uses
  %i.aow = icmp slt i32 %i.aov, %i.ajr
  br i1 %i.aow, label %bb.gu, label %Ndr_ObjReadBody.exit.i, !llvm.loop !1

Ndr_ObjReadBody.exit.i:                           ; preds = %Ndr_DataSize.exit.i24.i, %bb.gv
  %.012.i.i = phi i32 [ %i.aoq, %bb.gv ], [ -1, %Ndr_DataSize.exit.i24.i ]
  %i.aox = tail call fastcc ptr @Abc_OperName(i32 noundef %.012.i.i)
  %i.aoy = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 4
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !21
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.apa
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !43
  %i.apd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.70, ptr noundef %i.aok, ptr noundef %i.aox, ptr noundef %i.apc) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.gy:                                            ; preds = %bb.gt
  %i.ape = icmp eq i32 %.0.lcssa.i695.i.i, 3
  %i.apf = icmp eq i32 %.012.i514770773.i.i, 50
  %or.cond.i.i = and i1 %i.apf, %i.ape
  br i1 %or.cond.i.i, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.apg = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aph
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !43
  %i.apk = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 4
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !21
  %i.apm = sext i32 %i.apl to i64
  %i.apn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.apm
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !43
  %i.app = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 8
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !21
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.apr
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !43
  %i.apu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.71, ptr noundef %i.apj, ptr noundef %i.apo, ptr noundef %i.apt) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.ha:                                            ; preds = %bb.gy
  %i.apv = icmp eq i32 %.012.i514770773.i.i, 21
  br i1 %i.apv, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.apw = load i32, ptr %.17.i.i, align 4, !tbaa !21
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.apx
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !43
  %i.aqa = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 8
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !21
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aqc
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !43
  %i.aqf = getelementptr inbounds nuw i8, ptr %.17.i.i, i64 4
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !21
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aqh
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !43
  %i.aqk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.72, ptr noundef %i.apz, ptr noundef %i.aqe, ptr noundef %i.aqj) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.aql = tail call fastcc i32 @Ndr_ObjReadBody(ptr noundef readonly %i.a, i32 noundef %.5924.i.i, i32 noundef 6)
  %i.aqm = tail call fastcc ptr @Abc_OperName(i32 noundef %i.aql)
  %i.aqn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.73, ptr noundef %i.aqm) #20 ; 0 uses
  br label %Ndr_ObjIsType.exit505.thread.i.i

Ndr_ObjIsType.exit505.thread.i.i:                 ; preds = %Ndr_DataSize.exit.i504.i.i, %Ndr_DataSize.exit.i511.i.i, %bb.hc, %bb.hb, %bb.gz, %Ndr_ObjReadBody.exit.i, %Ndr_ObjReadBody.exit31.i, %._crit_edge919.i.i, %Ndr_ObjWriteRange.exit.i.i, %bb.gd, %Ndr_ObjReadBodyP.exit.i.i, %Ndr_ObjReadOutName.exit686.i.i, %Ndr_ObjReadOutName.exit651.i.i, %Ndr_ObjReadOutName.exit616.i.i, %Ndr_ObjReadOutName.exit581.i.i, %._crit_edge922.i.i, %Ndr_ObjIsType.exit512.i.i, %Ndr_ObjIsType.exit505.i.i, %bb.bz, %bb.by
  %.val.i723.i.i = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  %i.aqo = getelementptr inbounds i8, ptr %.val.i723.i.i, i64 %i.pm
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !19
  %i.aqq = icmp ugt i8 %i.aqp, 3
  %.val390.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !18 ; 3 uses
  br i1 %i.aqq, label %Ndr_DataSize.exit724.i.i, label %bb.hd

bb.hd:                                            ; preds = %Ndr_ObjIsType.exit505.thread.i.i
  %i.aqr = getelementptr inbounds [4 x i8], ptr %.val390.pre.i.i, i64 %i.pm
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !21
  br label %Ndr_DataSize.exit724.i.i

Ndr_DataSize.exit724.i.i:                         ; preds = %bb.hd, %Ndr_ObjIsType.exit505.thread.i.i
  %i.aqt = phi i32 [ %i.aqs, %bb.hd ], [ 1, %Ndr_ObjIsType.exit505.thread.i.i ]
  %i.aqu = add nsw i32 %i.aqt, %.5924.i.i         ; 2 uses
  %i.aqv = getelementptr inbounds [4 x i8], ptr %.val390.pre.i.i, i64 %i.y
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !21
  %i.aqx = add i32 %i.aqw, %.086.i
  %i.aqy = icmp slt i32 %i.aqu, %i.aqx
  br i1 %i.aqy, label %bb.by, label %Ndr_WriteVerilogModule.exit.i, !llvm.loop !60

Ndr_WriteVerilogModule.exit.i:                    ; preds = %Ndr_DataSize.exit724.i.i, %._crit_edge915.i.i
  %fwrite353.i.i = tail call i64 @fwrite(ptr nonnull @.str.74, i64 12, i64 1, ptr nonnull %i.r) ; 0 uses
  %.val.i22.pre.i = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert183.i = getelementptr inbounds i8, ptr %.val.i22.pre.i, i64 %i.y
  %.pre184.i = load i8, ptr %.phi.trans.insert183.i, align 1, !tbaa !19
  %.val.pre.pre.i = load ptr, ptr %i.t, align 8, !tbaa !18
  br label %bb.he

bb.he:                                            ; preds = %Ndr_WriteVerilogModule.exit.i, %bb.d
  %.val.pre.i = phi ptr [ %.val.pre.pre.i, %Ndr_WriteVerilogModule.exit.i ], [ %.val.pre185.i, %bb.d ] ; 3 uses
  %i.aqz = phi i8 [ %.pre184.i, %Ndr_WriteVerilogModule.exit.i ], [ %i.aa, %bb.d ]
  %.val.i22.i = phi ptr [ %.val.i22.pre.i, %Ndr_WriteVerilogModule.exit.i ], [ %.val.i22181.i, %bb.d ]
  %i.ara = icmp ugt i8 %i.aqz, 3
  br i1 %i.ara, label %Ndr_DataSize.exit.i, label %bb.hf

end_hunk_1
