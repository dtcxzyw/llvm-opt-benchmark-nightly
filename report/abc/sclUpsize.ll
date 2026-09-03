Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclUpsize?download=true
inline.NumInlined: 487
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_SclUpsizePerformInt:bb.a

bb.bg:                                            ; preds = %Abc_Clock.exit295, %Vec_IntFree.exit293
  %i.nb = load i32, ptr %i.dg, align 4, !tbaa !187
  %i.nc = icmp sgt i32 %.1209, %i.nb
  br i1 %i.nc, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nd = load float, ptr %i.cc, align 4, !tbaa !105
  %i.ne = load i32, ptr %i.cd, align 4, !tbaa !175
  %i.nf = sitofp i32 %i.ne to float
  %i.ng = fcmp ugt float %i.nd, %i.nf
  br i1 %i.ng, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.nh = add nuw nsw i32 %.0214358, 1            ; 3 uses
  %i.ni = load i32, ptr %2, align 4, !tbaa !170
  %i.nj = icmp slt i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.l, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %bb.bh, %bb.bg, %Abc_Clock.exit295, %._crit_edge, %bb.bi, %.preheader, %bb.k
  %.1215 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %.0214358, %bb.bh ], [ %.0214358, %bb.bg ], [ %.0214358, %Abc_Clock.exit295 ], [ %.0214358, %._crit_edge ], [ %i.nh, %bb.bi ] ; 2 uses
  %.1205 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.ml, %bb.bh ], [ %i.ml, %bb.bg ], [ %i.ml, %Abc_Clock.exit295 ], [ %.0204362, %._crit_edge ], [ %i.ml, %bb.bi ]
  %.1203 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mm, %bb.bh ], [ %i.mm, %bb.bg ], [ %i.mm, %Abc_Clock.exit295 ], [ %.0202363, %._crit_edge ], [ %i.mm, %bb.bi ]
  %.1201 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mn, %bb.bh ], [ %i.mn, %bb.bg ], [ %i.mn, %Abc_Clock.exit295 ], [ %.0200364, %._crit_edge ], [ %i.mn, %bb.bi ]
  %.1199 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mo, %bb.bh ], [ %i.mo, %bb.bg ], [ %i.mo, %Abc_Clock.exit295 ], [ %.0198365, %._crit_edge ], [ %i.mo, %bb.bi ]
  %i.nk = load ptr, ptr %i.bz, align 8, !tbaa !179
  %i.nl = load ptr, ptr %i.bk, align 8, !tbaa !63 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 376 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !78
  store ptr %i.nn, ptr %i.bz, align 8, !tbaa !179
  store ptr %i.nk, ptr %i.nm, align 8, !tbaa !78
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !181
  %.not237 = icmp eq i32 %i.np, 0
  br i1 %.not237, label %Abc_SclUpsizeRemoveDangling.exit, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  %i.nq = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !94 ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 4
  %.val22.i296 = load i32, ptr %i.ns, align 4, !tbaa !25 ; 2 uses
  %i.nt = icmp sgt i32 %.val22.i296, 2
  br i1 %i.nt, label %.lr.ph.i297, label %Abc_SclUndoRecentChanges.exit.thread

.lr.ph.i297:                                      ; preds = %bb.bj
  %i.nu = getelementptr i8, ptr %i.nr, i64 8
  %i.nv = getelementptr i8, ptr %i.nl, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nl, i64 384
  %i.nx = udiv i32 %.val22.i296, 3
  %i.ny = zext nneg i32 %i.nx to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %.lr.ph.i297
  %indvars.iv.i298 = phi i64 [ %i.ny, %.lr.ph.i297 ], [ %indvars.iv.next.i299, %bb.bn ] ; 2 uses
  %indvars.iv.next.i299 = add nsw i64 %indvars.iv.i298, -1 ; 2 uses
  %.val21.i = load ptr, ptr %i.nu, align 8, !tbaa !27
  %.idx.i = mul nuw nsw i64 %indvars.iv.next.i299, 12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %.idx.i ; 3 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !46
  %.val25.i300 = load ptr, ptr %i.nv, align 8, !tbaa !42
  %i.ob = getelementptr i8, ptr %.val25.i300, i64 8
  %.val25.val.i = load ptr, ptr %i.ob, align 8, !tbaa !45 ; 3 uses
  %i.oc = sext i32 %i.oa to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !47 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !46
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.oh
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !47
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !46
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !47 ; 3 uses
  call void @Abc_ObjPatchFanin(ptr noundef %i.oe, ptr noundef %i.oj, ptr noundef %i.oo) #26
  call void @Abc_SclTimeIncUpdateLevel(ptr noundef %i.oe) #26
  %i.op = load ptr, ptr %i.nw, align 8, !tbaa !91
  %.not.i301 = icmp eq ptr %i.op, null
  br i1 %.not.i301, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oq = call i32 @Abc_SclIsInv(ptr noundef %i.oo) #26
  %.not19.i = icmp eq i32 %i.oq, 0
  br i1 %.not19.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @Abc_NodeInvUpdateObjFanoutPolarity(ptr noundef %i.oo, ptr noundef %i.oe) #26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.or = icmp samesign ugt i64 %indvars.iv.i298, 1
  br i1 %i.or, label %bb.bk, label %Abc_SclUndoRecentChanges.exit, !llvm.loop !6

Abc_SclUndoRecentChanges.exit:                    ; preds = %bb.bn
  %.pr.pre = load i32, ptr %i.no, align 4, !tbaa !181
  %i.os = icmp eq i32 %.pr.pre, 0
  br i1 %i.os, label %Abc_SclUpsizeRemoveDangling.exit, label %Abc_SclUndoRecentChanges.exit.thread

Abc_SclUndoRecentChanges.exit.thread:             ; preds = %bb.bj, %Abc_SclUndoRecentChanges.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !42 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 4
  %.val1423.i = load i32, ptr %i.ov, align 4, !tbaa !52
  %i.ow = icmp sgt i32 %.val1423.i, 0
  br i1 %i.ow, label %.lr.ph.i303, label %Abc_SclUpsizeRemoveDangling.exit

.lr.ph.i303:                                      ; preds = %Abc_SclUndoRecentChanges.exit.thread
  %i.ox = getelementptr inbounds nuw i8, ptr %i.az, i64 236 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bs, %.lr.ph.i303
  %i.oy = phi ptr [ %i.ou, %.lr.ph.i303 ], [ %i.qd, %bb.bs ] ; 5 uses
  %indvars.iv.i304 = phi i64 [ 0, %.lr.ph.i303 ], [ %indvars.iv.next.i306, %bb.bs ] ; 2 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 8
  %.val15.val.i = load ptr, ptr %i.oz, align 8, !tbaa !45
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i304
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !47 ; 8 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pd = getelementptr i8, ptr %i.pb, i64 20
  %.val16.i = load i32, ptr %i.pd, align 4
  %i.pe = and i32 %.val16.i, 15
  %.not.i305 = icmp eq i32 %i.pe, 7
  br i1 %.not.i305, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pf = load ptr, ptr %i.pb, align 8, !tbaa !22 ; 3 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 4
  %.val6.i.i = load i32, ptr %i.pg, align 4, !tbaa !110
  %.not.i.not.i = icmp eq i32 %.val6.i.i, 4
  br i1 %.not.i.not.i, label %bb.br, label %Abc_ObjIsBarBuf.exit.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.ph = getelementptr i8, ptr %i.pb, i64 28
  %.val.i.i308 = load i32, ptr %i.ph, align 4, !tbaa !25
  %i.pi = icmp eq i32 %.val.i.i308, 1
  br i1 %i.pi, label %Abc_ObjIsBarBuf.exit.i, label %Abc_ObjIsBarBuf.exit.thread.i

Abc_ObjIsBarBuf.exit.i:                           ; preds = %bb.br
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !96
  %.not22.i = icmp eq ptr %i.pk, null
  br i1 %.not22.i, label %bb.bs, label %Abc_ObjIsBarBuf.exit.thread.i

Abc_ObjIsBarBuf.exit.thread.i:                    ; preds = %Abc_ObjIsBarBuf.exit.i, %bb.br, %bb.bq
  %i.pl = getelementptr i8, ptr %i.pb, i64 44
  %.val.i307 = load i32, ptr %i.pl, align 4, !tbaa !24
  %i.pm = icmp eq i32 %.val.i307, 0
  br i1 %i.pm, label %Abc_SclObjCell.exit.i, label %bb.bs

Abc_SclObjCell.exit.i:                            ; preds = %Abc_ObjIsBarBuf.exit.thread.i
  %i.pn = getelementptr i8, ptr %i.pb, i64 16
  %.val18.i = load i32, ptr %i.pn, align 8, !tbaa !23
  %i.po = getelementptr i8, ptr %i.pf, i64 376
  %.val.val.i.i = load ptr, ptr %i.po, align 8, !tbaa !78
  %i.pp = getelementptr i8, ptr %.val.val.i.i, i64 8
  %.val.val.val.i.i = load ptr, ptr %i.pp, align 8, !tbaa !27
  %i.pq = sext i32 %.val18.i to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %.val.val.val.i.i, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !46 ; 2 uses
  %i.pt = icmp ne i32 %i.ps, -1
  call void @llvm.assume(i1 %i.pt)
  %i.pu = getelementptr i8, ptr %i.pf, i64 368
  %.val4.val.i.i = load ptr, ptr %i.pu, align 8, !tbaa !79
  %i.pv = getelementptr i8, ptr %.val4.val.i.i, i64 112
  %.val5.i19.i = load ptr, ptr %i.pv, align 8, !tbaa !45
  %i.pw = sext i32 %i.ps to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %.val5.i19.i, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !47
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qa = load float, ptr %i.pz, align 8, !tbaa !97
  %i.qb = load float, ptr %i.ox, align 4, !tbaa !98
  %i.qc = fsub float %i.qb, %i.qa
  store float %i.qc, ptr %i.ox, align 4, !tbaa !98
  call void @Abc_NtkDeleteObj_rec(ptr noundef nonnull %i.pb, i32 noundef 1) #26
  %.pre.i = load ptr, ptr %i.ot, align 8, !tbaa !42
  br label %bb.bs

bb.bs:                                            ; preds = %Abc_SclObjCell.exit.i, %Abc_ObjIsBarBuf.exit.thread.i, %Abc_ObjIsBarBuf.exit.i, %bb.bp, %bb.bo
  %i.qd = phi ptr [ %i.oy, %Abc_ObjIsBarBuf.exit.i ], [ %i.oy, %bb.bp ], [ %i.oy, %bb.bo ], [ %.pre.i, %Abc_SclObjCell.exit.i ], [ %i.oy, %Abc_ObjIsBarBuf.exit.thread.i ] ; 2 uses
  %indvars.iv.next.i306 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 4
  %.val14.i = load i32, ptr %i.qe, align 4, !tbaa !52
  %i.qf = sext i32 %.val14.i to i64
  %i.qg = icmp slt i64 %indvars.iv.next.i306, %i.qf
  br i1 %i.qg, label %bb.bo, label %Abc_SclUpsizeRemoveDangling.exit, !llvm.loop !7

Abc_SclUpsizeRemoveDangling.exit:                 ; preds = %bb.bs, %.loopexit, %Abc_SclUndoRecentChanges.exit.thread, %Abc_SclUndoRecentChanges.exit
  %i.qh = getelementptr inbounds nuw i8, ptr %i.az, i64 236 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  call void @Abc_SclTimeNtkRecompute(ptr noundef %i.az, ptr noundef nonnull %i.qh, ptr noundef nonnull %i.qi, i32 noundef 0, float noundef 0.000000e+00) #26
  %i.qj = load i32, ptr %i.o, align 4, !tbaa !169
  %.not239 = icmp eq i32 %i.qj, 0
  br i1 %.not239, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %Abc_SclUpsizeRemoveDangling.exit
  %i.qk = load i32, ptr %i.an, align 4, !tbaa !171
  %i.ql = call i32 @llvm.umax.i32(i32 %.1215, i32 1) ; 4 uses
  %19 = sdiv i32 %.1205, %i.ql
  %20 = sdiv i32 %.1203, %i.ql
  %21 = sdiv i32 %.1199, %i.ql
  %22 = sdiv i32 %.1201, %i.ql
  call void @Abc_SclUpsizePrint(ptr noundef nonnull %i.az, i32 noundef %.1215, i32 noundef %i.qk, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef 1)
  br label %bb.bv

bb.bu:                                            ; preds = %Abc_SclUpsizeRemoveDangling.exit
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.qn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #26
  %i.qo = icmp slt i32 %i.qn, 0
  br i1 %i.qo, label %Abc_Clock.exit310, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qp = load i64, ptr %7, align 8, !tbaa !107
  %i.qq = mul nsw i64 %i.qp, 1000000
  %i.qr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !108
  %i.qt = sdiv i64 %i.qs, 1000
  %i.qu = add nsw i64 %i.qt, %i.qq
  br label %Abc_Clock.exit310

Abc_Clock.exit310:                                ; preds = %bb.bv, %bb.bw
  %.0.i309 = phi i64 [ %i.qu, %bb.bw ], [ -1, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.qv = load i64, ptr %i.bj, align 8, !tbaa !109
  %i.qw = sub nsw i64 %.0.i309, %i.qv             ; 2 uses
  store i64 %i.qw, ptr %i.bj, align 8, !tbaa !109
  %i.qx = load i32, ptr %i.o, align 4, !tbaa !169
  %.not241 = icmp eq i32 %i.qx, 0
  br i1 %.not241, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %Abc_Clock.exit310
  %i.qy = getelementptr inbounds nuw i8, ptr %i.az, i64 272 ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !180
  %i.ra = getelementptr inbounds nuw i8, ptr %i.az, i64 280 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !184
  %i.rc = getelementptr inbounds nuw i8, ptr %i.az, i64 288 ; 2 uses
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !186
  %i.re = add i64 %i.qz, %i.rb
  %i.rf = add i64 %i.re, %i.rd
  %i.rg = sub i64 %i.qw, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.az, i64 296 ; 2 uses
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !188
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
  %i.ri = load i64, ptr %i.qy, align 8, !tbaa !180
  %i.rj = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not242 = icmp eq i64 %i.rj, 0
  %i.rk = sitofp i64 %i.rj to double
  %i.rl = sitofp i64 %i.ri to double
  %i.rm = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = fmul nnan <2 x double> %i.rn, <double 1.000000e+00, double 1.000000e+02>
  %i.rp = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.rk, i64 1
  %i.rq = fdiv <2 x double> %i.ro, %i.rp          ; 2 uses
  %i.rr = extractelement <2 x double> %i.rq, i64 1
  %i.rs = select i1 %.not242, double 0.000000e+00, double %i.rr
  %i.rt = extractelement <2 x double> %i.rq, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.rt, double noundef %i.rs)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38)
  %i.ru = load i64, ptr %i.ra, align 8, !tbaa !184
  %i.rv = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not243 = icmp eq i64 %i.rv, 0
  %i.rw = sitofp i64 %i.rv to double
  %i.rx = sitofp i64 %i.ru to double
  %i.ry = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sa = fmul nnan <2 x double> %i.rz, <double 1.000000e+00, double 1.000000e+02>
  %i.sb = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.rw, i64 1
  %i.sc = fdiv <2 x double> %i.sa, %i.sb          ; 2 uses
  %i.sd = extractelement <2 x double> %i.sc, i64 1
  %i.se = select i1 %.not243, double 0.000000e+00, double %i.sd
  %i.sf = extractelement <2 x double> %i.sc, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.sf, double noundef %i.se)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39)
  %i.sg = load i64, ptr %i.rc, align 8, !tbaa !186
  %i.sh = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not244 = icmp eq i64 %i.sh, 0
  %i.si = sitofp i64 %i.sh to double
  %i.sj = sitofp i64 %i.sg to double
  %i.sk = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sl = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sm = fmul nnan <2 x double> %i.sl, <double 1.000000e+00, double 1.000000e+02>
  %i.sn = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.si, i64 1
  %i.so = fdiv <2 x double> %i.sm, %i.sn          ; 2 uses
  %i.sp = extractelement <2 x double> %i.so, i64 1
  %i.sq = select i1 %.not244, double 0.000000e+00, double %i.sp
  %i.sr = extractelement <2 x double> %i.so, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.sr, double noundef %i.sq)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40)
  %i.ss = load i64, ptr %i.rh, align 8, !tbaa !188
  %i.st = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not245 = icmp eq i64 %i.st, 0
  %i.su = sitofp i64 %i.st to double
  %i.sv = sitofp i64 %i.ss to double
  %i.sw = insertelement <2 x double> poison, double %i.sv, i64 0
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fmul nnan <2 x double> %i.sx, <double 1.000000e+00, double 1.000000e+02>
  %i.sz = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.su, i64 1
  %i.ta = fdiv <2 x double> %i.sy, %i.sz          ; 2 uses
  %i.tb = extractelement <2 x double> %i.ta, i64 1
  %i.tc = select i1 %.not245, double 0.000000e+00, double %i.tb
  %i.td = extractelement <2 x double> %i.ta, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.td, double noundef %i.tc)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.41)
  %i.te = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not246 = icmp eq i64 %i.te, 0
  %i.tf = sitofp i64 %i.te to double              ; 2 uses
  %i.tg = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ti = fmul nnan <2 x double> %i.th, <double 1.000000e+00, double 1.000000e+02>
  %i.tj = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.tf, i64 1
  %i.tk = fdiv <2 x double> %i.ti, %i.tj          ; 2 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 1
  %i.tm = select i1 %.not246, double 0.000000e+00, double %i.tl
  %i.tn = extractelement <2 x double> %i.tk, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.tn, double noundef %i.tm)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %Abc_Clock.exit310
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !189
  %.not247 = icmp eq i32 %i.tp, 0
  br i1 %.not247, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.tq = call noalias ptr @fopen(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.46) ; 13 uses
  %i.tr = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !190 ; 2 uses
  %i.tu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @Abc_SclDumpStats.FileNameOld, ptr noundef nonnull dereferenceable(1) %i.tt) #27
  %.not.i311 = icmp eq i32 %i.tu, 0
  br i1 %.not.i311, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %strcpy.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @Abc_SclDumpStats.FileNameOld, ptr noundef nonnull dereferenceable(1) %i.tt) ; 0 uses
  %fputc25.i = call i32 @fputc(i32 10, ptr %i.tq) ; 0 uses
  %i.tv = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !190
  %i.ty = call ptr @Extra_FileNameWithoutPath(ptr noundef %i.tx) #26
  %i.tz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.48, ptr noundef %i.ty) #26 ; 0 uses
  %i.ua = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.ub = getelementptr i8, ptr %i.ua, i64 40
  %.val27.i = load ptr, ptr %i.ub, align 8, !tbaa !191
  %i.uc = getelementptr i8, ptr %.val27.i, i64 4
  %.val27.val.i = load i32, ptr %i.uc, align 4, !tbaa !52
  %i.ud = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %.val27.val.i) #26 ; 0 uses
  %i.ue = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.uf = getelementptr i8, ptr %i.ue, i64 48
  %.val28.i = load ptr, ptr %i.uf, align 8, !tbaa !192
  %i.ug = getelementptr i8, ptr %.val28.i, i64 4
  %.val28.val.i = load i32, ptr %i.ug, align 4, !tbaa !52
  %i.uh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %.val28.val.i) #26 ; 0 uses
  %i.ui = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.uj = getelementptr i8, ptr %i.ui, i64 124
  %.val26.i = load i32, ptr %i.uj, align 4, !tbaa !46 ; 2 uses
  store i32 %.val26.i, ptr @Abc_SclDumpStats.nNodesOld, align 4, !tbaa !46
  %i.uk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %.val26.i) #26 ; 0 uses
  %i.ul = load float, ptr %i.qh, align 4, !tbaa !98
  %i.um = fptosi float %i.ul to i32               ; 2 uses
  store i32 %i.um, ptr @Abc_SclDumpStats.nAreaOld, align 4, !tbaa !46
  %i.un = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %i.um) #26 ; 0 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.az, i64 256
  %i.up = load float, ptr %i.uo, align 8, !tbaa !193
  %i.uq = fptosi float %i.up to i32               ; 2 uses
  store i32 %i.uq, ptr @Abc_SclDumpStats.nDelayOld, align 4, !tbaa !46
  %i.ur = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %i.uq) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.us = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #26
  %i.ut = icmp slt i32 %i.us, 0
  br i1 %i.ut, label %Abc_Clock.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.uu = load i64, ptr %6, align 8, !tbaa !107
  %i.uv = mul nsw i64 %i.uu, 1000000
  %i.uw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !108
  %i.uy = sdiv i64 %i.ux, 1000
  %i.uz = add nsw i64 %i.uy, %i.uv
  br label %Abc_Clock.exit.i

Abc_Clock.exit.i:                                 ; preds = %bb.cb, %bb.ca
  %.0.i.i = phi i64 [ %i.uz, %bb.cb ], [ -1, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store i64 %.0.i.i, ptr @Abc_SclDumpStats.clk, align 8, !tbaa !194
  br label %Abc_SclDumpStats.exit

bb.cc:                                            ; preds = %bb.bz
  %fputc.i = call i32 @fputc(i32 32, ptr %i.tq)   ; 0 uses
  %i.va = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.vb = getelementptr i8, ptr %i.va, i64 124
  %.val.i312 = load i32, ptr %i.vb, align 4, !tbaa !46
  %i.vc = sitofp i32 %.val.i312 to double
  %i.vd = fmul nnan double %i.vc, 1.000000e+02
  %i.ve = load i32, ptr @Abc_SclDumpStats.nNodesOld, align 4, !tbaa !46
  %i.vf = sitofp i32 %i.ve to double
  %i.vg = fdiv double %i.vd, %i.vf
  %i.vh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.51, double noundef %i.vg) #26 ; 0 uses
  %i.vi = load float, ptr %i.qh, align 4, !tbaa !98
  %i.vj = fptosi float %i.vi to i32
end_hunk_0
