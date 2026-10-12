Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filtering?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_add_acpatt:bb.a
  br label %.thread1363

.thread1363:                                      ; preds = %bb.bs, %bb.bs, %.thread1363.fold.split, %.lr.ph962.preheader
  %.1370.peel = phi i32 [ -255, %.lr.ph962.preheader ], [ %.5972, %.thread1363.fold.split ], [ %.5972, %bb.bs ], [ %.5972, %bb.bs ] ; 2 uses
  %.1368.peel = phi i32 [ %i.kh, %.lr.ph962.preheader ], [ 3, %.thread1363.fold.split ], [ 1, %bb.bs ], [ 1, %bb.bs ]
  %i.kw = tail call i32 @llvm.umin.i32(i32 %.1368.peel, i32 5) ; 2 uses
  %indvars.iv.next1247.peel = add nuw nsw i64 %i.kf, 1 ; 2 uses
  %lftr.wideiv.peel = trunc nuw i64 %indvars.iv.next1247.peel to i32
  %exitcond1251.peel.not = icmp eq i32 %indvars.iv1249.lcssa, %lftr.wideiv.peel
  br i1 %exitcond1251.peel.not, label %._crit_edge963, label %.lr.ph962

.lr.ph962:                                        ; preds = %.thread1363, %bb.bw
  %indvars.iv1246 = phi i64 [ %indvars.iv.next1247, %bb.bw ], [ %indvars.iv.next1247.peel, %.thread1363 ] ; 3 uses
  %.0369961 = phi i32 [ %.1370, %bb.bw ], [ %.1370.peel, %.thread1363 ] ; 4 uses
  %.0379958 = phi i32 [ %i.lc, %bb.bw ], [ %i.kw, %.thread1363 ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1246
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !39 ; 4 uses
  %i.kz = icmp ult i32 %i.ky, 4
  br i1 %i.kz, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.lr.ph962
  %i.la = trunc nuw i64 %indvars.iv1246 to i32    ; 2 uses
  switch i32 %i.ky, label %bb.bv [
    i32 0, label %._crit_edge963
    i32 1, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0367 = phi i32 [ %i.ky, %bb.bt ], [ 3, %bb.bu ]
  %i.lb = icmp eq i32 %.0369961, -255
  %spec.select496 = select i1 %i.lb, i32 %i.la, i32 %.0369961
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph962, %bb.bv
  %.1370 = phi i32 [ %.0369961, %.lr.ph962 ], [ %spec.select496, %bb.bv ] ; 2 uses
  %.1368 = phi i32 [ %i.ky, %.lr.ph962 ], [ %.0367, %bb.bv ]
  %i.lc = tail call i32 @llvm.umin.i32(i32 %.0379958, i32 %.1368) ; 2 uses
  %indvars.iv.next1247 = add nuw nsw i64 %indvars.iv1246, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1247 to i32
  %exitcond1251.not = icmp eq i32 %indvars.iv1249.lcssa, %lftr.wideiv
  br i1 %exitcond1251.not, label %._crit_edge963, label %.lr.ph962, !llvm.loop !13

._crit_edge963:                                   ; preds = %bb.bw, %bb.bt, %bb.bs, %.thread1363, %.critedge18
  %.0379.lcssa = phi i32 [ 5, %.critedge18 ], [ 5, %bb.bs ], [ %i.kw, %.thread1363 ], [ %i.lc, %bb.bw ], [ %.0379958, %bb.bt ] ; 5 uses
  %.0369.lcssa = phi i32 [ -255, %.critedge18 ], [ -255, %bb.bs ], [ %.1370.peel, %.thread1363 ], [ %.1370, %bb.bw ], [ %.0369961, %bb.bt ]
  %.3375 = phi i32 [ %indvars.iv1244.lcssa, %.critedge18 ], [ %.5972, %bb.bs ], [ %indvars.iv1244.lcssa, %.thread1363 ], [ %indvars.iv1244.lcssa, %bb.bw ], [ %i.la, %bb.bt ] ; 3 uses
  %i.ld = icmp ult i32 %.3375, 255
  br i1 %i.ld, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge963
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 391, ptr noundef nonnull @__PRETTY_FUNCTION__.add_choice) #10
  unreachable

bb.by:                                            ; preds = %._crit_edge963
  %.not.i518.not = icmp ugt i32 %.3375, %.5972
  br i1 %.not.i518.not, label %bb.bz, label %add_choice.exit

bb.bz:                                            ; preds = %bb.by
  %i.le = icmp samesign ugt i32 %.0379.lcssa, 1
  %i.lf = icmp samesign ugt i32 %.0549971, 3
  %or.cond.i = and i1 %i.lf, %i.le
  %wide.trip.count.i = zext i32 %.0549971 to i64  ; 3 uses
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.thread.i

.preheader.i.preheader:                           ; preds = %bb.bz
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.cg, %.preheader.i.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next.i.1, %bb.cg ] ; 4 uses
  %.02938.i = phi i32 [ -1, %.preheader.i.preheader ], [ %.1.i.1, %bb.cg ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader ], [ %niter.next.1, %bb.cg ]
  %i.lg = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.i
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !43 ; 2 uses
  %i.li = icmp ult i32 %i.lh, %.0379.lcssa
  br i1 %i.li, label %bb.ca, label %.preheader.i.1

bb.ca:                                            ; preds = %.preheader.i
  %i.lj = icmp eq i32 %.02938.i, -1
  br i1 %i.lj, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lk = sext i32 %.02938.i to i64
  %i.ll = getelementptr inbounds [12 x i8], ptr %3, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !43
  %i.ln = icmp ult i32 %i.lh, %i.lm
  br i1 %i.ln, label %bb.cc, label %.preheader.i.1

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.lo = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.cc, %bb.cb, %.preheader.i
  %.1.i = phi i32 [ %i.lo, %bb.cc ], [ %.02938.i, %bb.cb ], [ %.02938.i, %.preheader.i ] ; 4 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !43 ; 2 uses
  %i.lr = icmp ult i32 %i.lq, %.0379.lcssa
  br i1 %i.lr, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %.preheader.i.1
  %i.ls = icmp eq i32 %.1.i, -1
  br i1 %i.ls, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lt = sext i32 %.1.i to i64
  %i.lu = getelementptr inbounds [12 x i8], ptr %3, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !43
  %i.lw = icmp ult i32 %i.lq, %i.lv
  br i1 %i.lw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.lx = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.preheader.i.1
  %.1.i.1 = phi i32 [ %i.lx, %bb.cf ], [ %.1.i, %bb.ce ], [ %.1.i, %.preheader.i.1 ] ; 6 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i

.unr-lcssa:                                       ; preds = %bb.cg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa
  %lcmp.mod1585 = trunc i32 %.0549971 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1585)
  %i.ly = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next.i.1
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !43 ; 2 uses
  %i.ma = icmp ult i32 %i.lz, %.0379.lcssa
  br i1 %i.ma, label %bb.ch, label %.epilog-lcssa

bb.ch:                                            ; preds = %.preheader.i.epil.preheader
  %i.mb = icmp eq i32 %.1.i.1, -1
  br i1 %i.mb, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mc = sext i32 %.1.i.1 to i64
  %i.md = getelementptr inbounds [12 x i8], ptr %3, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !43
  %i.mf = icmp ult i32 %i.lz, %i.me
  br i1 %i.mf, label %bb.cj, label %.epilog-lcssa

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.mg = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.i.epil.preheader, %bb.ci, %bb.cj, %.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %.unr-lcssa ], [ %i.mg, %bb.cj ], [ %.1.i.1, %bb.ci ], [ %.1.i.1, %.preheader.i.epil.preheader ] ; 2 uses
  %.not35.i = icmp eq i32 %.1.i.lcssa, -1
  br i1 %.not35.i, label %.thread.i, label %bb.ck

bb.ck:                                            ; preds = %.epilog-lcssa
  %i.mh = sext i32 %.1.i.lcssa to i64
  br label %bb.cl

.thread.i:                                        ; preds = %.epilog-lcssa, %bb.bz
  %i.mi = add nuw nsw i32 %.0549971, 1
  br label %bb.cl

bb.cl:                                            ; preds = %.thread.i, %bb.ck
  %.2551 = phi i32 [ %i.mi, %.thread.i ], [ %.0549971, %bb.ck ]
  %.pn.i = phi i64 [ %wide.trip.count.i, %.thread.i ], [ %i.mh, %bb.ck ]
  %.030.i = getelementptr inbounds [12 x i8], ptr %3, i64 %.pn.i ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %.5972, ptr %i.mj, align 4, !tbaa !44
  %reass.sub = sub nsw i32 %.3375, %.5972
  %i.mk = add nsw i32 %reass.sub, 1
  %i.ml = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !45
  store i32 %.0379.lcssa, ptr %.030.i, align 4, !tbaa !43
  br label %add_choice.exit

add_choice.exit:                                  ; preds = %bb.by, %bb.cl
  %.3552 = phi i32 [ %.0549971, %bb.by ], [ %.2551, %bb.cl ]
  %spec.select497 = tail call i32 @llvm.smax.i32(i32 %.0369.lcssa, i32 %.5972)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %add_choice.exit
  %.1550 = phi i32 [ %.0549971, %bb.bo ], [ %.3552, %add_choice.exit ], [ %.0549971, %bb.bn ], [ %.0549971, %bb.bp ] ; 4 uses
  %.7 = phi i32 [ %.5972, %bb.bo ], [ %spec.select497, %add_choice.exit ], [ %.5972, %bb.bn ], [ %.5972, %bb.bp ]
  %i.mm = add i32 %.7, 1                          ; 2 uses
  %i.mn = icmp ult i32 %i.mm, %i.dg
  %i.mo = icmp ult i32 %.1550, 8
  %i.mp = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %i.mp, label %.lr.ph973, label %.preheader578

bb.cn:                                            ; preds = %.lr.ph992, %._crit_edge984
  %indvars.iv1262 = phi i64 [ 0, %.lr.ph992 ], [ %indvars.iv.next1263, %._crit_edge984 ] ; 2 uses
  %.0400991 = phi i32 [ 0, %.lr.ph992 ], [ %.1401.lcssa, %._crit_edge984 ] ; 2 uses
  %.0403990 = phi i32 [ 0, %.lr.ph992 ], [ %.1404.lcssa, %._crit_edge984 ] ; 2 uses
  %.0406989 = phi i32 [ -2147483647, %.lr.ph992 ], [ %.1407.lcssa, %._crit_edge984 ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv1262 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !44 ; 6 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !45 ; 2 uses
  %i.mv = add i32 %i.ms, -1
  %i.mw = add i32 %i.mv, %i.mu
  %i.mx = icmp ult i32 %i.ms, %i.mw
  br i1 %i.mx, label %.lr.ph983.preheader, label %._crit_edge984

.lr.ph983.preheader:                              ; preds = %bb.cn
  %i.my = zext i32 %i.ms to i64                   ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ms, i32 %spec.select493)
  %wide.trip.count1258 = zext i32 %umax to i64
  %4 = add i32 %i.mu, -1
  %5 = add i32 %4, %i.ms
  %wide.trip.count1260 = zext i32 %5 to i64
  br label %.lr.ph983

.lr.ph983:                                        ; preds = %.lr.ph983.preheader, %bb.dl
  %indvars.iv1255 = phi i64 [ %i.my, %.lr.ph983.preheader ], [ %indvars.iv.next1256, %bb.dl ] ; 9 uses
  %.0366978 = phi i32 [ 0, %.lr.ph983.preheader ], [ %i.rk, %bb.dl ]
  %.1401977 = phi i32 [ %.0400991, %.lr.ph983.preheader ], [ %.2402, %bb.dl ]
  %.1404976 = phi i32 [ %.0403990, %.lr.ph983.preheader ], [ %.2405, %bb.dl ]
  %.1407975 = phi i32 [ %.0406989, %.lr.ph983.preheader ], [ %.2408, %bb.dl ] ; 2 uses
  %i.mz = sub nuw nsw i64 %indvars.iv1255, %i.my  ; 5 uses
  %exitcond1259.not = icmp eq i64 %indvars.iv1255, %wide.trip.count1258
  br i1 %exitcond1259.not, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph983
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 643, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.cp:                                            ; preds = %.lr.ph983
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1255
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !39 ; 2 uses
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1255 ; 5 uses
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 1 ; 3 uses
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next1256 ; 5 uses
  switch i32 %i.nb, label %.thread.i519 [
    i32 0, label %bb.cq
    i32 1, label %bb.ct
    i32 2, label %.thread92.i
    i32 5, label %bb.cs
    i32 4, label %bb.cr
  ]

bb.cq:                                            ; preds = %bb.cp
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @__PRETTY_FUNCTION__.get_score) #10
  unreachable

.thread92.i:                                      ; preds = %bb.cp
  %.not.i524 = icmp eq i64 %indvars.iv1255, %i.my
  %.83.i = select i1 %.not.i524, i32 -7471104, i32 -4096 ; 2 uses
  br label %get_score.exit

bb.cr:                                            ; preds = %bb.cp
  br label %.thread.i519

bb.cs:                                            ; preds = %bb.cp
  br label %.thread.i519

bb.ct:                                            ; preds = %bb.cp
  %.not72.i = icmp eq i64 %indvars.iv1255, %i.my
  br i1 %.not72.i, label %get_score.exit.thread, label %.thread.i519

.thread.i519:                                     ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  %.07191.i = phi i32 [ 0, %bb.ct ], [ 512, %bb.cr ], [ 513, %bb.cs ], [ 0, %bb.cp ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nf = load i8, ptr %i.ne, align 8, !tbaa !34  ; 2 uses
  %i.ng = zext i8 %i.nf to i32                    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 9
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !33  ; 2 uses
  %i.nj = zext i8 %i.ni to i32                    ; 2 uses
  %.not73158.i = icmp ugt i8 %i.nf, %i.ni
  br i1 %.not73158.i, label %._crit_edge163.i, label %.lr.ph162.i

.lr.ph162.i:                                      ; preds = %.thread.i519
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nl = load i8, ptr %i.nk, align 8, !tbaa !34  ; 2 uses
  %i.nm = zext i8 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 9
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !33  ; 2 uses
  %i.np = zext i8 %i.no to i32
  %.not75150.i = icmp ugt i8 %i.nl, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nc, i64 11
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nd, i64 11
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nd, i64 10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nc, i64 10 ; 2 uses
  br i1 %.not75150.i, label %.lr.ph162.split.us.i, label %.lr.ph162.split.i

.lr.ph162.split.us.i:                             ; preds = %.lr.ph162.i
  %i.nu = load i8, ptr %i.nt, align 2, !tbaa !35
  %i.nv = zext i8 %i.nu to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.lr.ph162.split.us.i
  %.070159.us.i = phi i32 [ %i.ng, %.lr.ph162.split.us.i ], [ %i.nw, %bb.cu ]
  %i.nw = add nuw nsw i32 %.070159.us.i, %i.nv    ; 2 uses
  %.not73.us.i = icmp samesign ugt i32 %i.nw, %i.nj
  br i1 %.not73.us.i, label %._crit_edge163.i, label %bb.cu

.lr.ph162.split.i:                                ; preds = %.lr.ph162.i
  %.val86.i = load ptr, ptr %i.nc, align 16, !tbaa !31 ; 4 uses
  %.not.i.i = icmp eq ptr %.val86.i, null
  %i.nx = getelementptr inbounds nuw i8, ptr %.val86.i, i64 14
  %i.ny = getelementptr inbounds nuw i8, ptr %.val86.i, i64 12
  %i.nz = trunc nuw i64 %i.mz to i32              ; 2 uses
  %i.oa = trunc nuw i64 %i.mz to i32              ; 2 uses
  br label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %._crit_edge156.i, %.lr.ph162.split.i
  %.062161.i = phi i32 [ 0, %.lr.ph162.split.i ], [ %.2.lcssa.i, %._crit_edge156.i ]
  %.064160.i = phi i32 [ 0, %.lr.ph162.split.i ], [ %.266.lcssa.i, %._crit_edge156.i ]
  %.070159.i = phi i32 [ %i.ng, %.lr.ph162.split.i ], [ %i.qz, %._crit_edge156.i ] ; 4 uses
  %i.ob = zext nneg i32 %.070159.i to i64
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge138.i, %.lr.ph155.i
  %.163153.i = phi i32 [ %.062161.i, %.lr.ph155.i ], [ %.2.lcssa.i, %._crit_edge138.i ] ; 3 uses
  %.165152.i = phi i32 [ %.064160.i, %.lr.ph155.i ], [ %.266.lcssa.i, %._crit_edge138.i ] ; 3 uses
  %.069151.i = phi i32 [ %i.nm, %.lr.ph155.i ], [ %i.qw, %._crit_edge138.i ] ; 4 uses
  br i1 %.not.i.i, label %spec_ith_char.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oc = load i16, ptr %i.nx, align 2, !tbaa !29
  %i.od = icmp eq i16 %i.oc, 1
  br i1 %i.od, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.oe = load i16, ptr %i.ny, align 4, !tbaa !37
  %i.of = zext i16 %i.oe to i32
  %i.og = icmp samesign ult i32 %.070159.i, %i.of
  br i1 %i.og, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.oh = load ptr, ptr %.val86.i, align 8, !tbaa !8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ob
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !8
  %i.ok = zext i8 %i.oj to i32
  br label %spec_ith_char.exit.i

spec_ith_char.exit.i:                             ; preds = %bb.da, %bb.cv
  %.0.i.i = phi i32 [ %i.ok, %bb.da ], [ %.070159.i, %bb.cv ] ; 4 uses
  %.val.i = load ptr, ptr %i.nd, align 16, !tbaa !31 ; 4 uses
  %.not.i87.i = icmp eq ptr %.val.i, null
  br i1 %.not.i87.i, label %spec_ith_char.exit89.i, label %bb.db

bb.db:                                            ; preds = %spec_ith_char.exit.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.val.i, i64 14
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !29
  %i.on = icmp eq i16 %i.om, 1
  br i1 %i.on, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.oo = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.op = load i16, ptr %i.oo, align 4, !tbaa !37
  %i.oq = zext i16 %i.op to i32
  %i.or = icmp samesign ult i32 %.069151.i, %i.oq
  br i1 %i.or, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.os = load ptr, ptr %.val.i, align 8, !tbaa !8
  %i.ot = zext nneg i32 %.069151.i to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !8
  %i.ow = zext i8 %i.ov to i32
  br label %spec_ith_char.exit89.i

spec_ith_char.exit89.i:                           ; preds = %bb.df, %spec_ith_char.exit.i
  %.0.i88.i = phi i32 [ %i.ow, %bb.df ], [ %.069151.i, %spec_ith_char.exit.i ] ; 4 uses
  %i.ox = load i8, ptr %i.nq, align 1, !tbaa !32
  %.not76.i = icmp ne i8 %i.ox, 0                 ; 4 uses
  %i.oy = select i1 %.not76.i, i32 255, i32 %.0.i.i ; 3 uses
  %i.oz = load i8, ptr %i.nr, align 1, !tbaa !32
  %.fr.i = freeze i8 %i.oz
  %.not77.i = icmp eq i8 %.fr.i, 0                ; 2 uses
  %i.pa = select i1 %.not77.i, i32 %.0.i88.i, i32 255 ; 4 uses
  %i.pb = select i1 %.not76.i, i32 0, i32 %.0.i.i ; 3 uses
  %.not78131.i = icmp ugt i32 %i.pb, %i.oy
  br i1 %.not78131.i, label %._crit_edge138.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %spec_ith_char.exit89.i
  br i1 %.not77.i, label %.preheader.preheader.i, label %.preheader.us.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.pc = add nuw nsw i32 %.0.i88.i, 1            ; 2 uses
  br label %.preheader.i523

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %.0137.us.i = phi i32 [ %.1.lcssa.us.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ] ; 3 uses
  %.061134.us.i = phi i32 [ %i.py, %._crit_edge.us.i ], [ %i.pb, %.preheader.lr.ph.i ] ; 4 uses
  %.2133.us.i = phi i32 [ %.3.lcssa.us.i, %._crit_edge.us.i ], [ %.163153.i, %.preheader.lr.ph.i ] ; 3 uses
  %.266132.us.i = phi i32 [ %.367.lcssa.us.i, %._crit_edge.us.i ], [ %.165152.i, %.preheader.lr.ph.i ] ; 3 uses
  %.not79111.us.i = icmp ugt i32 %.0137.us.i, %i.pa
  br i1 %.not79111.us.i, label %._crit_edge.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.preheader.us.i
  %i.pd = icmp eq i32 %.061134.us.i, %.0.i.i
  %or.cond84.us.i = select i1 %.not76.i, i1 %i.pd, i1 false
  br i1 %or.cond84.us.i, label %._crit_edge.us.i, label %.lr.ph.split.us141.i
end_hunk_0
