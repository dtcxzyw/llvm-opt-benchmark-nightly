Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/add-patch?download=true
inline.NumInlined: 162
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@run_add_p_common:bb.a

bb.ce:                                            ; preds = %bb.cd
  %i.mm = sub i64 %i.lo, %i.me
  %i.mn = trunc i64 %i.mm to i32
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.107, i32 noundef 716, ptr noundef nonnull @.str.118, i32 noundef %i.mn, ptr noundef %i.md) #19
  unreachable

.critedge344.i:                                   ; preds = %.preheader.i383.i.preheader, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %.critedge342.i, %.critedge341.9.i, %.critedge341.8.i, %.critedge341.7.i, %.critedge341.6.i, %.critedge341.5.i, %.critedge341.4.i, %.critedge341.3.i, %.critedge341.2.i, %.critedge341.1.i
  %.2400411.i = phi ptr [ %scevgep.i, %.critedge341.9.i ], [ %scevgep.i, %bb.bz ], [ %.1406.i, %.critedge342.i ], [ %.1406.i, %bb.by ], [ %.1406.i, %bb.bx ], [ %.1406.i, %bb.bw ], [ %.1406.i, %bb.bv ], [ %.1406.i, %bb.bu ], [ %.1406.i, %bb.bt ], [ %.1406.i, %bb.bs ], [ %.1406.i, %bb.br ], [ null, %.critedge341.1.i ], [ null, %.critedge341.2.i ], [ null, %.critedge341.3.i ], [ null, %.critedge341.4.i ], [ null, %.critedge341.5.i ], [ null, %.critedge341.6.i ], [ null, %.critedge341.7.i ], [ null, %.critedge341.8.i ], [ %scevgep.i, %.preheader.i383.i.preheader ] ; 2 uses
  %i.mo = call zeroext i1 @starts_with(ptr noundef nonnull %.0281533.i, ptr noundef nonnull @.str.119) #17
  br i1 %i.mo, label %bb.cf, label %.critedge345.i

bb.cf:                                            ; preds = %.critedge344.i
  %i.mp = load i8, ptr %i.fe, align 8
  %i.mq = or i8 %i.mp, 8
  store i8 %i.mq, ptr %i.fe, align 8
  br label %.critedge345.i

.critedge345.i:                                   ; preds = %bb.cf, %.critedge344.i, %bb.cd, %bb.bq, %bb.bp, %bb.bk, %bb.bj, %bb.bi, %bb.ay, %bb.aw, %bb.at, %bb.as
  %.0.i = phi ptr [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bb.bk ], [ %.2400411.i, %bb.cf ], [ %.2400411.i, %.critedge344.i ], [ null, %bb.ay ], [ %scevgep.i, %bb.cd ], [ null, %bb.aw ], [ %scevgep.i, %bb.bp ], [ %scevgep.i, %bb.bq ]
  %.1271.i = phi i8 [ 0, %bb.as ], [ 0, %bb.at ], [ %i.dw, %bb.bj ], [ %i.dw, %bb.bi ], [ %.0270535.i, %bb.bk ], [ %.0270535.i, %bb.cf ], [ %.0270535.i, %.critedge344.i ], [ %.0270535.i, %bb.ay ], [ %.0270535.i, %bb.cd ], [ %.0270535.i, %bb.aw ], [ %.0270535.i, %bb.bp ], [ %.0270535.i, %bb.bq ] ; 4 uses
  %.3269.i = phi i64 [ %.2268.i, %bb.as ], [ %.2268.i, %bb.at ], [ %.0266536.i, %bb.bj ], [ %.0266536.i, %bb.bi ], [ %.0266536.i, %bb.bk ], [ %.0266536.i, %bb.cf ], [ %.0266536.i, %.critedge344.i ], [ %.0266536.i, %bb.ay ], [ %.0266536.i, %bb.cd ], [ %.0266536.i, %bb.aw ], [ %.0266536.i, %bb.bp ], [ %.0266536.i, %bb.bq ]
  %.1263.i = phi ptr [ %i.eq, %bb.as ], [ %i.eq, %bb.at ], [ %.0262537.i, %bb.bj ], [ %.0262537.i, %bb.bi ], [ %.0262537.i, %bb.bk ], [ %.0262537.i, %bb.cf ], [ %.0262537.i, %.critedge344.i ], [ %.0262537.i, %bb.ay ], [ %.0262537.i, %bb.cd ], [ %.0262537.i, %bb.aw ], [ %.0262537.i, %bb.bp ], [ %.0262537.i, %bb.bq ] ; 5 uses
  %.1260.i = phi ptr [ %i.eq, %bb.as ], [ %i.eq, %bb.at ], [ %i.ho, %bb.bj ], [ %i.ho, %bb.bi ], [ %.0259538.i, %bb.bk ], [ %.0259538.i, %bb.cf ], [ %.0259538.i, %.critedge344.i ], [ %.0259538.i, %bb.ay ], [ %.0259538.i, %bb.cd ], [ %.0259538.i, %bb.aw ], [ %.0259538.i, %bb.bp ], [ %.0259538.i, %bb.bq ] ; 6 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.1263.i, i64 152
  %i.ms = load i8, ptr %i.mr, align 8             ; 3 uses
  %i.mt = and i8 %i.ms, 1
  %i.mu = lshr i8 %i.ms, 1
  %.lobit.i = and i8 %i.mu, 1
  %narrow.i = add nuw nsw i8 %.lobit.i, %i.mt
  %i.mv = lshr i8 %i.ms, 2
  %.lobit332.i = and i8 %i.mv, 1
  %narrow333.i = add nuw nsw i8 %narrow.i, %.lobit332.i
  %i.mw = icmp samesign ugt i8 %narrow333.i, 1
  br i1 %i.mw, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge345.i
  %i.mx = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.my = load i64, ptr %.1263.i, align 8, !tbaa !144
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.my ; 2 uses
  %i.na = ptrtoint ptr %spec.select.i to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = trunc i64 %i.nc to i32
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.107, i32 noundef 726, ptr noundef nonnull @.str.120, i32 noundef %i.nd, ptr noundef %i.mz) #19
  unreachable

bb.ch:                                            ; preds = %.critedge345.i
  %i.ne = icmp eq i8 %.1271.i, 45
  %i.nf = icmp eq i8 %.1271.i, 43
  %or.cond7.i = or i1 %i.ne, %i.nf
  %i.ng = icmp eq i32 %i.dv, 32
  %or.cond10.i = and i1 %i.ng, %or.cond7.i
  br i1 %or.cond10.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.nh = getelementptr inbounds nuw i8, ptr %.1260.i, i64 32 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !142
  %i.nj = add i64 %i.ni, 1
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !142
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.nk = icmp ne i8 %.1271.i, 0
  %i.nl = icmp ne i32 %i.dv, 92
  %or.cond13.i = and i1 %i.nl, %i.nk
  %spec.select346.i = select i1 %or.cond13.i, i8 %i.dw, i8 %.1271.i ; 2 uses
  %i.nm = icmp eq ptr %spec.select.i, %i.dh
  %i.nn = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.no = select i1 %i.nm, ptr %i.dh, ptr %i.nn   ; 4 uses
  %i.np = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = sub i64 %i.nq, %i.nr                    ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.1260.i, i64 8
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !74
  br i1 %.not329.i, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nu = ptrtoint ptr %.2278534.i to i64
  %i.nv = sub i64 %i.dm, %i.nu
  %i.nw = call ptr @memchr(ptr noundef %.2278534.i, i32 noundef 10, i64 noundef %i.nv) #18 ; 2 uses
  %.not335.i = icmp eq ptr %i.nw, null
  br i1 %.not335.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1 ; 2 uses
  %.pre620.i = ptrtoint ptr %i.nx to i64
  br label %.thread414.i

bb.cm:                                            ; preds = %bb.ck
  %.not336.i = icmp ne ptr %i.no, %i.dh
  %i.ny = icmp eq ptr %.2278534.i, %.1275.i
  %or.cond.i = select i1 %.not336.i, i1 true, i1 %i.ny
  br i1 %or.cond.i, label %.thread426.i, label %.thread414.i

.thread414.i:                                     ; preds = %bb.cm, %bb.cl
  %.pre-phi.i = phi i64 [ %.pre620.i, %bb.cl ], [ %i.dm, %bb.cm ]
  %.3279.i = phi ptr [ %i.nx, %bb.cl ], [ %.1275.i, %bb.cm ]
  %i.nz = load ptr, ptr %i.dj, align 8, !tbaa !57
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = sub i64 %.pre-phi.i, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %.1260.i, i64 24
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !75
  br label %bb.cn

bb.cn:                                            ; preds = %.thread414.i, %bb.cj
  %.5.i = phi ptr [ %.3279.i, %.thread414.i ], [ %.2278534.i, %bb.cj ] ; 3 uses
  %.not337.i = icmp eq ptr %.0.i, null
  br i1 %.not337.i, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.od = getelementptr inbounds nuw i8, ptr %.1263.i, i64 136
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !72 ; 2 uses
  %.not338.i = icmp eq i64 %i.oe, 1
  br i1 %.not338.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.of = trunc i64 %i.oe to i32
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.107, i32 noundef 756, ptr noundef nonnull @.str.121, i32 noundef %i.of) #19
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.og = getelementptr inbounds nuw i8, ptr %.1263.i, i64 128
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !73 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i64 %i.ns, ptr %i.oi, align 8, !tbaa !74
  br i1 %.not329.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oj = getelementptr inbounds nuw i8, ptr %.1260.i, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !75
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  store i64 %i.ok, ptr %i.ol, align 8, !tbaa !75
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cn
  %.not316.i = icmp eq ptr %i.no, %i.dh
  br i1 %.not316.i, label %._crit_edge541.i, label %bb.ai

._crit_edge541.i:                                 ; preds = %bb.cs
  switch i8 %spec.select346.i, label %complete_file.exit390.i [
    i8 45, label %bb.ct
    i8 43, label %bb.ct
  ]

bb.ct:                                            ; preds = %._crit_edge541.i, %._crit_edge541.i
  %i.om = getelementptr inbounds nuw i8, ptr %.1260.i, i64 32 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !142
  %i.oo = add i64 %i.on, 1
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !142
  br label %complete_file.exit390.i

complete_file.exit390.i:                          ; preds = %bb.ct, %._crit_edge541.i, %bb.ah
  %.2278.lcssa644.i = phi ptr [ %.5.i, %bb.ct ], [ %.5.i, %._crit_edge541.i ], [ %.1277.i, %bb.ah ]
  %.not317.i = icmp eq ptr %.2278.lcssa644.i, %.1275.i
  br i1 %.not317.i, label %parse_diff.exit, label %.thread426.i

.thread426.i:                                     ; preds = %bb.cm, %complete_file.exit390.i
  %i.op = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i391.i = icmp eq i32 %i.op, 0
  br i1 %.not4.i391.i, label %_.exit393.i, label %bb.cu

bb.cu:                                            ; preds = %.thread426.i
  %i.oq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.122, i32 noundef 5) #17
  br label %_.exit393.i

_.exit393.i:                                      ; preds = %bb.cu, %.thread426.i
  %.0.i392.i = phi ptr [ %i.oq, %bb.cu ], [ @.str.122, %.thread426.i ]
  %i.or = call i32 (ptr, ...) @error(ptr noundef %.0.i392.i) #17 ; 0 uses
  %i.os = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i394.i = icmp eq i32 %i.os, 0
  br i1 %.not4.i394.i, label %_.exit396.i, label %bb.cv

bb.cv:                                            ; preds = %_.exit393.i
  %i.ot = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.123, i32 noundef 5) #17
  br label %_.exit396.i

_.exit396.i:                                      ; preds = %bb.cv, %_.exit393.i
  %.0.i395.i = phi ptr [ %i.ot, %bb.cv ], [ @.str.123, %_.exit393.i ]
  call void (ptr, ...) @advise(ptr noundef %.0.i395.i) #17
  br label %parse_diff.exit.thread

.critedge.i:                                      ; preds = %bb.ad, %_.exit349.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %parse_diff.exit.thread

parse_diff.exit.thread:                           ; preds = %bb.bj, %_.exit.i, %_.exit396.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.nv

parse_diff.exit:                                  ; preds = %bb.q, %complete_file.exit390.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 9 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 7 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 40 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 21 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 22 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 9 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 6 uses
  %i.pd = and i32 %2, 1
  %.not344.i = icmp eq i32 %i.pd, 0
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 13 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 11 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 5 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 707 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 3 uses
  %.pre.pre = load i64, ptr %i.ou, align 8, !tbaa !66
  br label %.outer

.outer:                                           ; preds = %parse_diff.exit, %bb.cz
  %.pre = phi i64 [ %.pre.pre, %parse_diff.exit ], [ %.pre1442, %bb.cz ] ; 2 uses
  %.026.ph = phi i64 [ 0, %parse_diff.exit ], [ %i.pw, %bb.cz ] ; 2 uses
  %.0.ph = phi i64 [ 0, %parse_diff.exit ], [ %i.px, %bb.cz ]
  br label %bb.cw

bb.cw:                                            ; preds = %.outer, %patch_update_file.exit
  %.pre1442 = phi i64 [ %.pre1441, %patch_update_file.exit ], [ %.pre, %.outer ] ; 2 uses
  %i.po = phi i64 [ %i.avj, %patch_update_file.exit ], [ %.pre, %.outer ] ; 3 uses
  %.0 = phi i64 [ %.0321.i, %patch_update_file.exit ], [ %.0.ph, %.outer ] ; 10 uses
  %i.pp = icmp ult i64 %.0, %i.po
  br i1 %i.pp, label %bb.cx, label %bb.nq

bb.cx:                                            ; preds = %bb.cw
  %i.pq = load ptr, ptr %i.ov, align 8, !tbaa !67
  %i.pr = getelementptr inbounds nuw [160 x i8], ptr %i.pq, i64 %.0 ; 14 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 152 ; 5 uses
  %i.pt = load i8, ptr %i.ps, align 8             ; 2 uses
  %i.pu = and i8 %i.pt, 8
  %.not = icmp eq i8 %i.pu, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.pr, i64 136
  %.pre1438 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !72
  %i.pv = icmp eq i64 %.pre1438, 0                ; 2 uses
  br i1 %.not, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.pv, label %bb.cz, label %.thread

bb.cz:                                            ; preds = %bb.cy
  %i.pw = add i64 %.026.ph, 1
  %i.px = add nuw i64 %.0, 1
  br label %.outer, !llvm.loop !106

bb.da:                                            ; preds = %bb.cx
  %i.py = and i8 %i.pt, 2
  %.not333.i = icmp eq i8 %i.py, 0
  %or.cond = and i1 %.not333.i, %i.pv
  br i1 %or.cond, label %bb.db, label %.thread

bb.db:                                            ; preds = %bb.da
  %i.pz = add nuw i64 %.0, 1
  br label %patch_update_file.exit

.thread:                                          ; preds = %bb.cy, %bb.da
  %.in = load i64, ptr %i.ow, align 8, !tbaa !76
  %i.qa = icmp ne i64 %.in, 0                     ; 2 uses
  %i.qb = zext i1 %i.qa to i32                    ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pr, i64 136 ; 19 uses
  store i64 0, ptr %i.oy, align 8, !tbaa !62
  %i.qd = load ptr, ptr %i.oz, align 8, !tbaa !57 ; 2 uses
  %.not9.i.i33 = icmp eq ptr %i.qd, @strbuf_slopbuf
  br i1 %.not9.i.i33, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.thread
  store i8 0, ptr %i.qd, align 1, !tbaa !17
  br label %strbuf_setlen.exit.i34

bb.dd:                                            ; preds = %.thread
  %i.qe = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !17
  %.not10.i.i54 = icmp eq i8 %i.qe, 0
  br i1 %.not10.i.i54, label %strbuf_setlen.exit.i34, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @__assert_fail(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit.i34:                           ; preds = %bb.dd, %bb.dc
  %i.qf = load i8, ptr %i.ps, align 8
  %i.qg = and i8 %i.qf, 4
  %.not.i.i = icmp eq i8 %i.qg, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.df

bb.df:                                            ; preds = %strbuf_setlen.exit.i34
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pr, i64 128
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !73 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !77
  %.not32.i.i = icmp eq i32 %i.qk, 2
  br i1 %.not32.i.i, label %.critedge.i.i, label %bb.dg

.critedge.i.i:                                    ; preds = %bb.df, %strbuf_setlen.exit.i34
  call fastcc void @render_hunk(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.pr, i64 noundef 0, i32 noundef range(i32 0, 2) %i.qb, ptr noundef nonnull %i.ox)
  br label %render_diff_header.exit.i

bb.dg:                                            ; preds = %bb.df
  br i1 %i.qa, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ql = load ptr, ptr %i.pb, align 8, !tbaa !78 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !69 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !69
  %i.qr = sub i64 %i.qq, %i.qn
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef %i.qo, i64 noundef %i.qr) #17
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !75 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !75
  %i.qx = sub i64 %i.qw, %i.qt
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef %i.qu, i64 noundef %i.qx) #17
  br label %render_diff_header.exit.i

bb.di:                                            ; preds = %bb.dg
  %i.qy = load ptr, ptr %i.pa, align 8, !tbaa !79 ; 2 uses
  %i.qz = load i64, ptr %i.pr, align 8, !tbaa !68 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz
  %i.rb = load i64, ptr %i.qi, align 8, !tbaa !68
  %i.rc = sub i64 %i.rb, %i.qz
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef %i.ra, i64 noundef %i.rc) #17
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !74 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !74
  %i.ri = sub i64 %i.rh, %i.re
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef %i.rf, i64 noundef %i.ri) #17
  br label %render_diff_header.exit.i

render_diff_header.exit.i:                        ; preds = %bb.di, %bb.dh, %.critedge.i.i
  %i.rj = load ptr, ptr %i.oz, align 8, !tbaa !80
  %i.rk = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.rl = call i32 @fputs(ptr noundef %i.rj, ptr noundef %i.rk) ; 0 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pr, i64 128 ; 10 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pr, i64 144 ; 2 uses
  br label %thread-pre-split933.i

thread-pre-split933.i:                            ; preds = %thread-pre-split933.i.backedge, %render_diff_header.exit.i
  %.0526.ph.i = phi i64 [ 0, %render_diff_header.exit.i ], [ %.0526.ph.i.be, %thread-pre-split933.i.backedge ]
  %.0305.ph.i = phi i64 [ -1, %render_diff_header.exit.i ], [ %.0305.ph.i.be, %thread-pre-split933.i.backedge ]
  %.0300.ph.i = phi i32 [ 0, %render_diff_header.exit.i ], [ %.0300.ph.i.be, %thread-pre-split933.i.backedge ]
  %.0296.ph.i = phi i32 [ 0, %render_diff_header.exit.i ], [ %.1297.i, %thread-pre-split933.i.backedge ]
  %.pr934.i = load i64, ptr %i.qc, align 8, !tbaa !72
  br label %bb.dj

bb.dj:                                            ; preds = %.split925.i, %thread-pre-split933.i
  %i.ro = phi i64 [ %.pr934.i, %thread-pre-split933.i ], [ %i.wd, %.split925.i ] ; 7 uses
  %.0526.i = phi i64 [ %.0526.ph.i, %thread-pre-split933.i ], [ %i.wd, %.split925.i ]
  %.0305.i = phi i64 [ %.0305.ph.i, %thread-pre-split933.i ], [ %.2307.i, %.split925.i ] ; 3 uses
  %.0300.i = phi i32 [ %.0300.ph.i, %thread-pre-split933.i ], [ %.2302.i, %.split925.i ] ; 3 uses
  %.0296.i = phi i32 [ %.0296.ph.i, %thread-pre-split933.i ], [ %.1297.i, %.split925.i ] ; 2 uses
  %.0526.fr.i = freeze i64 %.0526.i               ; 5 uses
  %.not334.i = icmp ult i64 %.0526.fr.i, %i.ro
  br i1 %.not334.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.not335.i35 = icmp eq i64 %i.ro, 0
  br i1 %.not335.i35, label %.thread542.i, label %.thread546.i

.thread546.i:                                     ; preds = %bb.dk
  %i.rp = load ptr, ptr %i.rm, align 8, !tbaa !73 ; 2 uses
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.rq = load ptr, ptr %i.rm, align 8, !tbaa !73 ; 2 uses
  %i.rr = getelementptr inbounds nuw [128 x i8], ptr %i.rq, i64 %.0526.fr.i
  %.not.i382.i53 = icmp eq i64 %.0526.fr.i, 0
  %spec.select580.i = select i1 %.not.i382.i53, i64 %i.ro, i64 %.0526.fr.i
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.thread546.i
  %i.rs = phi ptr [ %i.rq, %bb.dl ], [ %i.rp, %.thread546.i ] ; 2 uses
  %i.rt = phi ptr [ %i.rr, %bb.dl ], [ %i.rp, %.thread546.i ] ; 3 uses
  %.1527538550.i = phi i64 [ %.0526.fr.i, %bb.dl ], [ 0, %.thread546.i ] ; 9 uses
  %i.ru = phi i64 [ %spec.select580.i, %bb.dl ], [ %i.ro, %.thread546.i ]
  %.0314703.i = add i64 %i.ru, -1                 ; 2 uses
  %.not337704.i = icmp eq i64 %.0314703.i, %.1527538550.i
  br i1 %.not337704.i, label %._crit_edge.i38, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.dm, %bb.dn
  %.0314705.i = phi i64 [ %.0314.i, %bb.dn ], [ %.0314703.i, %bb.dm ] ; 4 uses
  %i.rv = getelementptr inbounds [128 x i8], ptr %i.rs, i64 %.0314705.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 48
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !77
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %._crit_edge.i38, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i36
  %.not.i383.i = icmp eq i64 %.0314705.i, 0
  %.v.i384.i = select i1 %.not.i383.i, i64 %i.ro, i64 %.0314705.i
end_hunk_0
begin_hunk_1_@run_add_p_common:bb.a
  %.0.i475.i = phi ptr [ %i.ajv, %bb.kk ], [ @.str.164, %bb.kj ]
  call void (ptr, ptr, ...) @err(ptr noundef nonnull %0, ptr noundef %.0.i475.i)
  br label %thread-pre-split933.i.backedge

bb.kl:                                            ; preds = %bb.ki
  %i.ajw = load i64, ptr %i.as, align 8, !tbaa !89 ; 3 uses
  %i.ajx = load i64, ptr %i.ow, align 8, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.sk, i64 64, i1 false), !tbaa.struct !90
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 64 ; 7 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 72
  %i.ajy = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !87 ; 3 uses
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 80 ; 7 uses
  %.sroa.612.0.copyload.i.i = load i64, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !tbaa !87 ; 3 uses
  %.sroa.7.0..sroa_idx.i477.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 88 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i477.i, i64 40, i1 false), !tbaa.struct !148
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.akb = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.akc = getelementptr inbounds nuw i8, ptr %i.sk, i64 32 ; 3 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.sk, i64 40 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.sk, i64 56
  %i.akf = getelementptr inbounds nuw i8, ptr %i.sk, i64 96
  %i.akg = extractelement <2 x i64> %i.ajy, i64 0
  br label %prompt_yesno.exit

prompt_yesno.exit:                                ; preds = %bb.mw, %bb.kl
  store i64 0, ptr %i.oy, align 8, !tbaa !62
  %i.akh = load ptr, ptr %i.oz, align 8, !tbaa !57 ; 2 uses
  %.not9.i.i.i478.i = icmp eq ptr %i.akh, @strbuf_slopbuf
  br i1 %.not9.i.i.i478.i, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %prompt_yesno.exit
  store i8 0, ptr %i.akh, align 1, !tbaa !17
  br label %strbuf_setlen.exit.i.i479.i

bb.kn:                                            ; preds = %prompt_yesno.exit
  %i.aki = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !17
  %.not10.i.i.i492.i = icmp eq i8 %i.aki, 0
  br i1 %.not10.i.i.i492.i, label %strbuf_setlen.exit.i.i479.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @__assert_fail(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit.i.i479.i:                      ; preds = %bb.kn, %bb.km
  %i.akj = load ptr, ptr @comment_line_str, align 8, !tbaa !15
  %i.akk = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i.i.i.i = icmp eq i32 %i.akk, 0
  br i1 %.not4.i.i.i.i, label %_.exit.i.i.i, label %bb.kp

bb.kp:                                            ; preds = %strbuf_setlen.exit.i.i479.i
  %i.akl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.182, i32 noundef 5) #17
  br label %_.exit.i.i.i

_.exit.i.i.i:                                     ; preds = %bb.kp, %strbuf_setlen.exit.i.i479.i
  %.0.i.i.i480.i = phi ptr [ %i.akl, %bb.kp ], [ @.str.182, %strbuf_setlen.exit.i.i479.i ]
  call void (ptr, ptr, ptr, ...) @strbuf_commented_addf(ptr noundef nonnull %i.ox, ptr noundef %i.akj, ptr noundef %.0.i.i.i480.i) #17
  %i.akm = load i64, ptr %i.ake, align 8, !tbaa !88 ; 2 uses
  %.not.i67 = icmp eq i64 %i.akm, 0
  %i.akn = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !85 ; 2 uses
  %.not68.i = icmp eq i64 %i.akn, 0
  %or.cond.i68 = select i1 %.not.i67, i1 %.not68.i, i1 false
  br i1 %or.cond.i68, label %render_hunk.exit, label %._crit_edge.i69

._crit_edge.i69:                                  ; preds = %_.exit.i.i.i
  %i.ako = load ptr, ptr %i.pa, align 8, !tbaa !15
  %i.akp = load i64, ptr %.sroa.7.0..sroa_idx.i477.i, align 8, !tbaa !87 ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ako, i64 %i.akp
  %i.akr = load i64, ptr %i.akf, align 8, !tbaa !87 ; 2 uses
  %i.aks = sub i64 %i.akr, %i.akp
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %i.ox, ptr noundef nonnull @.str.168, i64 noundef %i.akm) #17
  %i.akt = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !84 ; 2 uses
  %.not72.i = icmp eq i64 %i.akt, 1
  br i1 %.not72.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %._crit_edge.i69
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %i.ox, ptr noundef nonnull @.str.169, i64 noundef %i.akt) #17
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %._crit_edge.i69
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %i.ox, ptr noundef nonnull @.str.170, i64 noundef %i.akn) #17
  %i.aku = load i64, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !tbaa !86 ; 2 uses
  %.not73.i = icmp eq i64 %i.aku, 1
  br i1 %.not73.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %i.ox, ptr noundef nonnull @.str.169, i64 noundef %i.aku) #17
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef nonnull @.str.131, i64 noundef 3) #17
  %.not74.i = icmp eq i64 %i.akr, %i.akp
  br i1 %.not74.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef %i.akq, i64 noundef %i.aks) #17
  br label %render_hunk.exit

bb.kv:                                            ; preds = %bb.kt
  %i.akv = load i64, ptr %i.ox, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i71 = icmp eq i64 %i.akv, 0
  br i1 %.not.i.i.i71, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %bb.kv
  %i.akw = load i64, ptr %i.oy, align 8, !tbaa !62 ; 2 uses
  %.neg.i.i = add i64 %i.akw, 1                   ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.akv, %.neg.i.i
  br i1 %.not.i.i72, label %strbuf_avail.exit.thread.i.i, label %.thread.i73

strbuf_avail.exit.thread.i.i:                     ; preds = %strbuf_avail.exit.i.i, %bb.kv
  call void @strbuf_grow(ptr noundef nonnull %i.ox, i64 noundef 1) #17
  %.pre.i.i74 = load i64, ptr %i.oy, align 8, !tbaa !62 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i74, 1
  br label %.thread.i73

.thread.i73:                                      ; preds = %strbuf_avail.exit.thread.i.i, %strbuf_avail.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %strbuf_avail.exit.i.i ]
  %i.akx = phi i64 [ %.pre.i.i74, %strbuf_avail.exit.thread.i.i ], [ %i.akw, %strbuf_avail.exit.i.i ]
  %i.aky = load ptr, ptr %i.oz, align 8, !tbaa !57
  store i64 %.pre-phi.i.i, ptr %i.oy, align 8, !tbaa !62
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 %i.akx
  store i8 10, ptr %i.akz, align 1, !tbaa !17
  %i.ala = load ptr, ptr %i.oz, align 8, !tbaa !57
  %i.alb = load i64, ptr %i.oy, align 8, !tbaa !62
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.alb
  store i8 0, ptr %i.alc, align 1, !tbaa !17
  br label %render_hunk.exit

render_hunk.exit:                                 ; preds = %_.exit.i.i.i, %bb.ku, %.thread.i73
  %i.ald = load ptr, ptr %i.pa, align 8, !tbaa !79
  %i.ale = load i64, ptr %i.sk, align 8, !tbaa !68 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.ale
  %i.alg = load i64, ptr %i.ajz, align 8, !tbaa !87
  %i.alh = sub i64 %i.alg, %i.ale
  call void @strbuf_add(ptr noundef nonnull %i.ox, ptr noundef %i.alf, i64 noundef %i.alh) #17
  %i.ali = load ptr, ptr @comment_line_str, align 8, !tbaa !15 ; 2 uses
  %i.alj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i38.i.i.i = icmp eq i32 %i.alj, 0
  br i1 %.not4.i38.i.i.i, label %_.exit40.i.i.i, label %bb.kw

bb.kw:                                            ; preds = %render_hunk.exit
  %i.alk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.183, i32 noundef 5) #17
  %.pre.i.i.i45 = load ptr, ptr @comment_line_str, align 8, !tbaa !15
  br label %_.exit40.i.i.i

_.exit40.i.i.i:                                   ; preds = %bb.kw, %render_hunk.exit
  %i.all = phi ptr [ %.pre.i.i.i45, %bb.kw ], [ %i.ali, %render_hunk.exit ]
  %.0.i39.i.i.i = phi ptr [ %i.alk, %bb.kw ], [ @.str.183, %render_hunk.exit ]
  %i.alm = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 96
  %i.alo = load i8, ptr %i.aln, align 8
  %i.alp = and i8 %i.alo, 1
  %.not.i.i481.i = icmp eq i8 %i.alp, 0           ; 2 uses
  %i.alq = select i1 %.not.i.i481.i, i32 45, i32 43
  %i.alr = select i1 %.not.i.i481.i, i32 43, i32 45
  call void (ptr, ptr, ptr, ...) @strbuf_commented_addf(ptr noundef nonnull %i.ox, ptr noundef %i.ali, ptr noundef %.0.i39.i.i.i, i32 noundef %i.alq, i32 noundef %i.alr, ptr noundef %i.all) #17
  %i.als = load ptr, ptr @comment_line_str, align 8, !tbaa !15
  %i.alt = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 136
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !150 ; 3 uses
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !17
  %.not.i.i.i482.i = icmp eq i8 %i.alw, 0
  br i1 %.not.i.i.i482.i, label %_.exit43.i.i.i, label %bb.kx

bb.kx:                                            ; preds = %_.exit40.i.i.i
  %i.alx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i41.i.i.i = icmp eq i32 %i.alx, 0
  br i1 %.not4.i41.i.i.i, label %_.exit43.i.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aly = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %i.alv, i32 noundef 5) #17
  br label %_.exit43.i.i.i

_.exit43.i.i.i:                                   ; preds = %bb.ky, %bb.kx, %_.exit40.i.i.i
  %.0.i42.i.i.i = phi ptr [ %i.aly, %bb.ky ], [ @.str.9, %_.exit40.i.i.i ], [ %i.alv, %bb.kx ]
  call void (ptr, ptr, ptr, ...) @strbuf_commented_addf(ptr noundef nonnull %i.ox, ptr noundef %i.als, ptr noundef nonnull @.str.152, ptr noundef %.0.i42.i.i.i) #17
  %i.alz = load ptr, ptr @comment_line_str, align 8, !tbaa !15
  %i.ama = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i44.i.i.i = icmp eq i32 %i.ama, 0
  br i1 %.not4.i44.i.i.i, label %_.exit46.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %_.exit43.i.i.i
  %i.amb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.184, i32 noundef 5) #17
  br label %_.exit46.i.i.i

_.exit46.i.i.i:                                   ; preds = %bb.kz, %_.exit43.i.i.i
  %.0.i45.i.i.i = phi ptr [ %i.amb, %bb.kz ], [ @.str.184, %_.exit43.i.i.i ]
  call void (ptr, ptr, ptr, ...) @strbuf_commented_addf(ptr noundef nonnull %i.ox, ptr noundef %i.alz, ptr noundef %.0.i45.i.i.i) #17
  %i.amc = load ptr, ptr %0, align 8, !tbaa !31
  %i.amd = call i32 @strbuf_edit_interactively(ptr noundef %i.amc, ptr noundef nonnull %i.ox, ptr noundef nonnull @.str.185, ptr noundef null) #17
  %i.ame = icmp slt i32 %i.amd, 0
  br i1 %i.ame, label %bb.mc, label %bb.la

bb.la:                                            ; preds = %_.exit46.i.i.i
  %i.amf = load i64, ptr %i.as, align 8, !tbaa !89
  store i64 %i.amf, ptr %i.sk, align 8, !tbaa !68
  %i.amg = load i64, ptr %i.oy, align 8, !tbaa !91 ; 2 uses
  %.not57.i.i.i = icmp eq i64 %i.amg, 0
  br i1 %.not57.i.i.i, label %edit_hunk_manually.exit.i.i, label %find_next_line.exit.i.i484.i

find_next_line.exit.i.i484.i:                     ; preds = %bb.la, %bb.lc
  %10 = phi i64 [ %i.amt, %bb.lc ], [ %i.amg, %bb.la ] ; 2 uses
  %.056.i.i.i = phi i64 [ %.0.i48.i.i.i, %bb.lc ], [ 0, %bb.la ] ; 4 uses
  %i.amh = load ptr, ptr %i.oz, align 8, !tbaa !57 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 %.056.i.i.i ; 2 uses
  %i.amj = sub nuw i64 %10, %.056.i.i.i
  %i.amk = call ptr @memchr(ptr noundef %i.ami, i32 noundef 10, i64 noundef %i.amj) #18 ; 2 uses
  %.not17.i.i.i485.i = icmp eq ptr %i.amk, null
  %i.aml = ptrtoint ptr %i.amk to i64
  %i.amm = ptrtoint ptr %i.amh to i64
  %reass.sub = sub i64 %i.aml, %i.amm
  %i.amn = add i64 %reass.sub, 1
  %.0.i48.i.i.i = select i1 %.not17.i.i.i485.i, i64 %10, i64 %i.amn ; 3 uses
  %i.amo = load ptr, ptr @comment_line_str, align 8, !tbaa !15
  %i.amp = call zeroext i1 @starts_with(ptr noundef %i.ami, ptr noundef %i.amo) #17
  br i1 %i.amp, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %find_next_line.exit.i.i484.i
  %i.amq = load ptr, ptr %i.oz, align 8, !tbaa !80
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 %.056.i.i.i
  %i.ams = sub i64 %.0.i48.i.i.i, %.056.i.i.i
  call void @strbuf_add(ptr noundef nonnull %i.d, ptr noundef %i.amr, i64 noundef %i.ams) #17
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %find_next_line.exit.i.i484.i
  %i.amt = load i64, ptr %i.oy, align 8, !tbaa !91 ; 2 uses
  %i.amu = icmp ult i64 %.0.i48.i.i.i, %i.amt
  br i1 %i.amu, label %find_next_line.exit.i.i484.i, label %._crit_edge.i.i.i, !llvm.loop !116

._crit_edge.i.i.i:                                ; preds = %bb.lc
  %.pre61.i.i.i = load i64, ptr %i.as, align 8, !tbaa !89 ; 6 uses
  %.pre62.i.i.i = load i64, ptr %i.sk, align 8, !tbaa !68 ; 5 uses
  store i64 %.pre61.i.i.i, ptr %i.ajz, align 8, !tbaa !74
  %i.amv = icmp eq i64 %.pre61.i.i.i, %.pre62.i.i.i
  br i1 %i.amv, label %edit_hunk_manually.exit.i.i, label %bb.ld

bb.ld:                                            ; preds = %._crit_edge.i.i.i
  %i.amw = load ptr, ptr %i.pa, align 8, !tbaa !79 ; 6 uses
  %i.amx = load i64, ptr %i.ow, align 8, !tbaa !76 ; 3 uses
  %.not.i49.i.i.i = icmp eq i64 %i.amx, 0
  br i1 %.not.i49.i.i.i, label %recolor_hunk.exit.i.i.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  store i64 %i.amx, ptr %i.aka, align 8, !tbaa !69
  %i.amy = icmp ult i64 %.pre62.i.i.i, %.pre61.i.i.i
  br i1 %i.amy, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.le, %bb.ll
  %i.amz = phi i64 [ %i.anx, %bb.ll ], [ %.pre61.i.i.i, %bb.le ] ; 2 uses
  %.04551.i.i.i.i = phi i64 [ %i.anf, %bb.ll ], [ %.pre62.i.i.i, %bb.le ] ; 4 uses
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lg, %.preheader.i.i.i.i
  %.050.i.i.i.i = phi i64 [ %.04551.i.i.i.i, %.preheader.i.i.i.i ], [ %i.and, %bb.lg ] ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amw, i64 %.050.i.i.i.i
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !17
  %i.anc = icmp eq i8 %i.anb, 10                  ; 2 uses
  br i1 %i.anc, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.and = add i64 %.050.i.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.and, %i.amz
  br i1 %exitcond.not.i.i.i.i, label %bb.lh, label %bb.lf, !llvm.loop !117

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.0.lcssa.i.i.i.i = phi i64 [ %i.amz, %bb.lg ], [ %.050.i.i.i.i, %bb.lf ] ; 5 uses
  %i.ane = zext i1 %i.anc to i64
  %i.anf = add i64 %.0.lcssa.i.i.i.i, %i.ane      ; 4 uses
  %i.ang = icmp ugt i64 %.0.lcssa.i.i.i.i, %.04551.i.i.i.i
  br i1 %i.ang, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.anh = getelementptr i8, ptr %i.amw, i64 %.0.lcssa.i.i.i.i
  %i.ani = getelementptr i8, ptr %i.anh, i64 -1
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !17
  %i.ank = icmp eq i8 %i.anj, 13
  %i.anl = sext i1 %i.ank to i64
  %spec.select.i50.i.i.i = add i64 %.0.lcssa.i.i.i.i, %i.anl
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.1.i.i.i.i = phi i64 [ %.0.lcssa.i.i.i.i, %bb.lh ], [ %spec.select.i50.i.i.i, %bb.li ] ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amw, i64 %.04551.i.i.i.i ; 2 uses
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !17 ; 2 uses
  %i.ano = icmp eq i8 %i.ann, 45
  %i.anp = icmp eq i8 %i.ann, 43
  %.v.i.i.i.i = select i1 %i.anp, i64 632, i64 482
  %.v49.i.i.i.i = select i1 %i.ano, i64 557, i64 %.v.i.i.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 %.v49.i.i.i.i ; 2 uses
  %i.anr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.anq) #18
  call void @strbuf_add(ptr noundef nonnull %i.pk, ptr noundef nonnull %i.anq, i64 noundef %i.anr) #17
  %i.ans = sub i64 %.1.i.i.i.i, %.04551.i.i.i.i
  call void @strbuf_add(ptr noundef nonnull %i.pk, ptr noundef nonnull %i.anm, i64 noundef %i.ans) #17
  %i.ant = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pl) #18
  call void @strbuf_add(ptr noundef nonnull %i.pk, ptr noundef nonnull %i.pl, i64 noundef %i.ant) #17
  %i.anu = icmp ugt i64 %i.anf, %.1.i.i.i.i
  br i1 %i.anu, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.anv = getelementptr inbounds nuw i8, ptr %i.amw, i64 %.1.i.i.i.i
  %i.anw = sub nuw i64 %i.anf, %.1.i.i.i.i
  call void @strbuf_add(ptr noundef nonnull %i.pk, ptr noundef %i.anv, i64 noundef %i.anw) #17
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.anx = load i64, ptr %i.ajz, align 8, !tbaa !74 ; 3 uses
  %i.any = icmp ult i64 %i.anf, %i.anx
  br i1 %i.any, label %.preheader.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !118

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.ll
  %.pre.i.i.i.i46 = load i64, ptr %i.ow, align 8, !tbaa !76
  %.pre63.pre.i.i.i = load ptr, ptr %i.pa, align 8, !tbaa !79
  %.pre64.pre.i.i.i = load i64, ptr %i.sk, align 8, !tbaa !68
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.le
  %i.anz = phi i64 [ %i.anx, %._crit_edge.loopexit.i.i.i.i ], [ %.pre61.i.i.i, %bb.le ]
  %.pre64.i.i.i = phi i64 [ %.pre64.pre.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.pre62.i.i.i, %bb.le ]
  %.pre63.i.i.i = phi ptr [ %.pre63.pre.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.amw, %bb.le ]
  %i.aoa = phi i64 [ %.pre.i.i.i.i46, %._crit_edge.loopexit.i.i.i.i ], [ %i.amx, %bb.le ]
  store i64 %i.aoa, ptr %i.akb, align 8, !tbaa !75
  br label %recolor_hunk.exit.i.i.i

recolor_hunk.exit.i.i.i:                          ; preds = %._crit_edge.i.i.i.i, %bb.ld
  %i.aob = phi i64 [ %.pre61.i.i.i, %bb.ld ], [ %i.anz, %._crit_edge.i.i.i.i ]
  %i.aoc = phi i64 [ %.pre62.i.i.i, %bb.ld ], [ %.pre64.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.aod = phi ptr [ %i.amw, %bb.ld ], [ %.pre63.i.i.i, %._crit_edge.i.i.i.i ]
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.aoc
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !17
  %i.aog = icmp eq i8 %i.aof, 64
  br i1 %i.aog, label %bb.lm, label %bb.lp

bb.lm:                                            ; preds = %recolor_hunk.exit.i.i.i
  %i.aoh = call fastcc i32 @parse_hunk_header(ptr noundef nonnull %0, ptr noundef nonnull %i.sk)
  %i.aoi = icmp slt i32 %i.aoh, 0
  br i1 %i.aoi, label %bb.ln, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.lm
  %.pre.i491.i = load i64, ptr %i.sk, align 8, !tbaa !68
  %.pre115.i.i = load i64, ptr %i.ajz, align 8, !tbaa !74
  br label %bb.lp

bb.ln:                                            ; preds = %bb.lm
  %i.aoj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !23
  %.not4.i51.i.i.i = icmp eq i32 %i.aoj, 0
  br i1 %.not4.i51.i.i.i, label %_.exit53.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.aok = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.186, i32 noundef 5) #17
  br label %_.exit53.i.i.i

_.exit53.i.i.i:                                   ; preds = %bb.lo, %bb.ln
  %.0.i52.i.i.i = phi ptr [ %i.aok, %bb.lo ], [ @.str.186, %bb.ln ]
  %i.aol = call i32 (ptr, ...) @error(ptr noundef %.0.i52.i.i.i) #17 ; 0 uses
  br label %bb.mc

edit_hunk_manually.exit.i.i:                      ; preds = %._crit_edge.i.i.i, %bb.la
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.sk, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i, i64 64, i1 false), !tbaa.struct !90
  store <2 x i64> %i.ajy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !87
  store i64 %.sroa.612.0.copyload.i.i, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i477.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, i64 40, i1 false), !tbaa.struct !148
  br label %edit_hunk_loop.exit.thread.i

bb.lp:                                            ; preds = %._crit_edge.i.i, %recolor_hunk.exit.i.i.i
  %i.aom = phi i64 [ %.pre115.i.i, %._crit_edge.i.i ], [ %i.aob, %recolor_hunk.exit.i.i.i ] ; 2 uses
  %i.aon = phi i64 [ %.pre.i491.i, %._crit_edge.i.i ], [ %i.aoc, %recolor_hunk.exit.i.i.i ] ; 2 uses
  store i64 0, ptr %i.akc, align 8, !tbaa !142
  store i64 0, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !tbaa !86
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !84
  %i.aoo = icmp ult i64 %i.aon, %i.aom
  br i1 %i.aoo, label %.lr.ph.i39.i.i, label %recount_edited_hunk.exit.i.i

.lr.ph.i39.i.i:                                   ; preds = %bb.lp
  %i.aop = load ptr, ptr %i.pa, align 8, !tbaa !79 ; 3 uses
  %i.aoq = load i64, ptr %i.as, align 8, !tbaa !62 ; 4 uses
  %i.aor = ptrtoint ptr %i.aop to i64
  %invariant.op = sub i64 1, %i.aor
  br label %bb.lq

bb.lq:                                            ; preds = %find_next_line.exit.i41.i.i, %.lr.ph.i39.i.i
  %i.aos = phi i64 [ 0, %.lr.ph.i39.i.i ], [ %i.api, %find_next_line.exit.i41.i.i ] ; 6 uses
  %i.aot = phi i64 [ 0, %.lr.ph.i39.i.i ], [ %i.apj, %find_next_line.exit.i41.i.i ] ; 7 uses
  %i.aou = phi i64 [ 0, %.lr.ph.i39.i.i ], [ %i.apk, %find_next_line.exit.i41.i.i ] ; 6 uses
  %.033.i.i.i = phi i8 [ 32, %.lr.ph.i39.i.i ], [ %.1.i.i.i, %find_next_line.exit.i41.i.i ] ; 4 uses
  %.02632.i.i.i = phi i64 [ %i.aon, %.lr.ph.i39.i.i ], [ %.0.i.i44.i.i, %find_next_line.exit.i41.i.i ] ; 4 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.02632.i.i.i ; 3 uses
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !17
  switch i8 %i.aow, label %normalize_marker.exit.thread27.i.i.i [
    i8 10, label %normalize_marker.exit.thread.i.i.i
    i8 13, label %bb.lr
    i8 45, label %bb.ls
    i8 43, label %bb.lu
    i8 32, label %normalize_marker.exit.thread.i.i.i
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 1
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !17
  %i.aoz = icmp eq i8 %i.aoy, 10
  br i1 %i.aoz, label %normalize_marker.exit.thread.i.i.i, label %normalize_marker.exit.thread27.i.i.i

bb.ls:                                            ; preds = %bb.lq
  %i.apa = add i64 %i.aos, 1                      ; 3 uses
  store i64 %i.apa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !84
  %i.apb = icmp eq i8 %.033.i.i.i, 32
  br i1 %i.apb, label %bb.lt, label %normalize_marker.exit.thread27.i.i.i

bb.lt:                                            ; preds = %bb.ls
  %i.apc = add i64 %i.aot, 1                      ; 2 uses
  store i64 %i.apc, ptr %i.akc, align 8, !tbaa !142
  br label %normalize_marker.exit.thread27.i.i.i

bb.lu:                                            ; preds = %bb.lq
  %i.apd = add i64 %i.aou, 1                      ; 3 uses
  store i64 %i.apd, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !tbaa !86
  %i.ape = icmp eq i8 %.033.i.i.i, 32
  br i1 %i.ape, label %bb.lv, label %normalize_marker.exit.thread27.i.i.i

bb.lv:                                            ; preds = %bb.lu
  %i.apf = add i64 %i.aot, 1                      ; 2 uses
  store i64 %i.apf, ptr %i.akc, align 8, !tbaa !142
  br label %normalize_marker.exit.thread27.i.i.i

normalize_marker.exit.thread.i.i.i:               ; preds = %bb.lr, %bb.lq, %bb.lq
  %i.apg = add i64 %i.aos, 1                      ; 2 uses
  store i64 %i.apg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !84
  %i.aph = add i64 %i.aou, 1                      ; 2 uses
  store i64 %i.aph, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !tbaa !86
  br label %normalize_marker.exit.thread27.i.i.i

normalize_marker.exit.thread27.i.i.i:             ; preds = %normalize_marker.exit.thread.i.i.i, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq
  %i.api = phi i64 [ %i.aos, %bb.lq ], [ %i.apg, %normalize_marker.exit.thread.i.i.i ], [ %i.apa, %bb.ls ], [ %i.apa, %bb.lt ], [ %i.aos, %bb.lv ], [ %i.aos, %bb.lu ], [ %i.aos, %bb.lr ] ; 2 uses
  %i.apj = phi i64 [ %i.aot, %bb.lq ], [ %i.aot, %normalize_marker.exit.thread.i.i.i ], [ %i.aot, %bb.ls ], [ %i.apc, %bb.lt ], [ %i.apf, %bb.lv ], [ %i.aot, %bb.lu ], [ %i.aot, %bb.lr ]
  %i.apk = phi i64 [ %i.aou, %bb.lq ], [ %i.aph, %normalize_marker.exit.thread.i.i.i ], [ %i.aou, %bb.ls ], [ %i.aou, %bb.lt ], [ %i.apd, %bb.lv ], [ %i.apd, %bb.lu ], [ %i.aou, %bb.lr ] ; 2 uses
  %.1.i.i.i = phi i8 [ %.033.i.i.i, %bb.lq ], [ 32, %normalize_marker.exit.thread.i.i.i ], [ 45, %bb.ls ], [ 45, %bb.lt ], [ 43, %bb.lv ], [ 43, %bb.lu ], [ %.033.i.i.i, %bb.lr ]
  %.not.i.i40.i.i = icmp ult i64 %.02632.i.i.i, %i.aoq
  br i1 %.not.i.i40.i.i, label %find_next_line.exit.i41.i.i, label %bb.lw

bb.lw:                                            ; preds = %normalize_marker.exit.thread27.i.i.i
  %i.apl = trunc i64 %.02632.i.i.i to i32
  %i.apm = trunc i64 %i.aoq to i32
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.107, i32 noundef 783, ptr noundef nonnull @.str.174, i32 noundef %i.apl, i32 noundef %i.apm, ptr noundef nonnull %i.aop) #19
  unreachable

find_next_line.exit.i41.i.i:                      ; preds = %normalize_marker.exit.thread27.i.i.i
  %i.apn = sub nuw i64 %i.aoq, %.02632.i.i.i
  %i.apo = call ptr @memchr(ptr noundef nonnull %i.aov, i32 noundef 10, i64 noundef %i.apn) #18 ; 2 uses
  %.not17.i.i42.i.i = icmp eq ptr %i.apo, null
  %i.app = ptrtoint ptr %i.apo to i64
  %.reass.i.reass.i490.reass.i.reass.reass = add i64 %i.app, %invariant.op
  %.0.i.i44.i.i = select i1 %.not17.i.i42.i.i, i64 %i.aoq, i64 %.reass.i.reass.i490.reass.i.reass.reass ; 2 uses
  %i.apq = icmp ult i64 %.0.i.i44.i.i, %i.aom
  br i1 %i.apq, label %bb.lq, label %recount_edited_hunk.exit.i.i, !llvm.loop !119

recount_edited_hunk.exit.i.i:                     ; preds = %find_next_line.exit.i41.i.i, %bb.lp
  %i.apr = phi i64 [ 0, %bb.lp ], [ %i.apk, %find_next_line.exit.i41.i.i ]
  %i.aps = phi i64 [ 0, %bb.lp ], [ %i.api, %find_next_line.exit.i41.i.i ]
  %i.apt = load i64, ptr %i.akd, align 8, !tbaa !92
  %i.apu = add i64 %i.akg, %i.apr
  %i.apv = add i64 %.sroa.612.0.copyload.i.i, %i.aps
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = add nsw i64 %i.apw, %i.apt
  store i64 %i.apx, ptr %i.akd, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.apply_for_checkout.apply_worktree, i64 136, i1 false)
  store i64 0, ptr %i.oy, align 8, !tbaa !62
end_hunk_1
