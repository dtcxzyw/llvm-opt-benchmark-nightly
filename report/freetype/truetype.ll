Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_RunIns:bb.a
  store i16 %i.nc, ptr %i.ap, align 4, !tbaa !619
  %i.nd = load i64, ptr %i.do, align 8, !tbaa !257
  %i.ne = sdiv i64 %i.nd, 4
  %i.nf = trunc i64 %i.ne to i16                  ; 2 uses
  store i16 %i.nf, ptr %i.aq, align 2, !tbaa !620
  br label %Normalize.exit.i365

Normalize.exit.i365:                              ; preds = %bb.ay, %.Normalize.exit_crit_edge.i
  %i.ng = phi i16 [ %.pre1.i, %.Normalize.exit_crit_edge.i ], [ %i.nf, %bb.ay ] ; 3 uses
  %i.nh = phi i16 [ %.pre.i370, %.Normalize.exit_crit_edge.i ], [ %i.nc, %bb.ay ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ni = load i16, ptr %i.am, align 8, !tbaa !242 ; 2 uses
  %i.nj = sext i16 %i.ni to i64
  %i.nk = sext i16 %i.nh to i64                   ; 2 uses
  %i.nl = mul nsw i64 %i.nj, %i.nk
  %i.nm = load i16, ptr %i.ao, align 2, !tbaa !243 ; 2 uses
  %i.nn = sext i16 %i.nm to i64
  %i.no = sext i16 %i.ng to i64                   ; 2 uses
  %i.np = mul nsw i64 %i.nn, %i.no
  %i.nq = add nsw i64 %i.nl, 8192
  %i.nr = add nsw i64 %i.nq, %i.np
  %i.ns = ashr i64 %i.nr, 14                      ; 4 uses
  %i.nt = icmp sgt i64 %i.ns, 16381
  br i1 %i.nt, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %Normalize.exit.i365
  %i.nu = add nsw i64 %i.ns, 1023
  %or.cond.i6.i = icmp ult i64 %i.nu, 2047
  br i1 %or.cond.i6.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i366

bb.bb:                                            ; preds = %bb.az
  %i.nv = shl nsw i64 %i.nk, 16
  %i.nw = sdiv i64 %i.nv, %i.ns
  store i64 %i.nw, ptr %i.ar, align 8, !tbaa !248
  %i.nx = shl nsw i64 %i.no, 16
  %i.ny = sdiv i64 %i.nx, %i.ns
  store i64 %i.ny, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i366

bb.bc:                                            ; preds = %Normalize.exit.i365
  %i.nz = sext i16 %i.nh to i32
  %i.oa = shl nsw i32 %i.nz, 2
  %i.ob = sext i32 %i.oa to i64
  store i64 %i.ob, ptr %i.ar, align 8, !tbaa !248
  %i.oc = sext i16 %i.ng to i32
  %i.od = shl nsw i32 %i.oc, 2
  %i.oe = sext i32 %i.od to i64
  store i64 %i.oe, ptr %i.as, align 8, !tbaa !249
  %i.of = icmp eq i16 %i.nh, 16384
  br i1 %i.of, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.og = icmp eq i16 %i.ng, 16384
  br i1 %i.og, label %bb.be, label %.critedge.i.i366

.critedge.i.i366:                                 ; preds = %bb.bd, %bb.bb, %bb.ba
  br label %bb.be

bb.be:                                            ; preds = %.critedge.i.i366, %bb.bd, %bb.bc
  %Direct_Move_Y.sink.i.i367 = phi ptr [ @Direct_Move_X, %bb.bc ], [ @Direct_Move, %.critedge.i.i366 ], [ @Direct_Move_Y, %bb.bd ]
  %Direct_Move_Orig_Y.sink.i.i368 = phi ptr [ @Direct_Move_Orig_X, %bb.bc ], [ @Direct_Move_Orig, %.critedge.i.i366 ], [ @Direct_Move_Orig_Y, %bb.bd ]
  store ptr %Direct_Move_Y.sink.i.i367, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i368, ptr %i.au, align 8, !tbaa !251
  %i.oh = icmp eq i16 %i.ni, 16384
  %i.oi = icmp eq i16 %i.nm, 16384
  %Project_y.Project1250 = select i1 %i.oi, ptr @Project_y, ptr @Project
  %Project.sink1238 = select i1 %i.oh, ptr @Project_x, ptr %Project_y.Project1250
  store ptr %Project.sink1238, ptr %i.av, align 8, !tbaa !252
  %i.oj = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.ok = icmp eq i16 %i.oj, 16384
  br i1 %i.ok, label %Ins_SFVFS.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ol = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.om = icmp eq i16 %i.ol, 16384
  %Project_y.Dual_Project1251 = select i1 %i.om, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SFVFS.exit

Ins_SFVFS.exit:                                   ; preds = %bb.bf, %bb.be
  %Project_x.sink1239 = phi ptr [ @Project_x, %bb.be ], [ %Project_y.Dual_Project1251, %bb.bf ]
  store ptr %Project_x.sink1239, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.bg:                                            ; preds = %bb.f
  %i.on = load <2 x i16>, ptr %i.am, align 8, !tbaa !128
  %i.oo = sext <2 x i16> %i.on to <2 x i64>
  store <2 x i64> %i.oo, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.bh:                                            ; preds = %bb.f
  %i.op = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128
  %i.oq = sext <2 x i16> %i.op to <2 x i64>
  store <2 x i64> %i.oq, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.bi:                                            ; preds = %bb.f
  %i.or = load i32, ptr %i.am, align 8            ; 5 uses
  store i32 %i.or, ptr %i.ap, align 4
  %i.os = trunc i32 %i.or to i16                  ; 3 uses
  %i.ot = sext i16 %i.os to i64                   ; 3 uses
  %i.ou = mul nsw i64 %i.ot, %i.ot
  %i.ov = lshr i32 %i.or, 16                      ; 3 uses
  %i.ow = zext nneg i32 %i.ov to i64
  %sext4.i = shl nuw i64 %i.ow, 48                ; 2 uses
  %i.ox = ashr exact i64 %sext4.i, 48             ; 2 uses
  %i.oy = mul nsw i64 %i.ox, %i.ox
  %i.oz = add nuw nsw i64 %i.ou, 8192
  %i.pa = add nuw nsw i64 %i.oz, %i.oy            ; 3 uses
  %i.pb = lshr i64 %i.pa, 14                      ; 2 uses
  %i.pc = icmp samesign ugt i64 %i.pa, 268402687
  br i1 %i.pc, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %or.cond.i.i372 = icmp samesign ult i64 %i.pa, 16777216
  br i1 %or.cond.i.i372, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.pd = shl nsw i64 %i.ot, 16
  %i.pe = sdiv i64 %i.pd, %i.pb
  store i64 %i.pe, ptr %i.ar, align 8, !tbaa !248
  %i.pf = ashr exact i64 %sext4.i, 32
  %i.pg = sdiv i64 %i.pf, %i.pb
  store i64 %i.pg, ptr %i.as, align 8, !tbaa !249
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bi
  %sext.i374 = shl i32 %i.or, 16
  %i.ph = insertelement <2 x i32> poison, i32 %sext.i374, i64 0
  %i.pi = insertelement <2 x i32> %i.ph, i32 %i.or, i64 1
  %i.pj = ashr <2 x i32> %i.pi, splat (i32 14)
  %i.pk = and <2 x i32> %i.pj, <i32 -1, i32 -4>
  %i.pl = sext <2 x i32> %i.pk to <2 x i64>
  store <2 x i64> %i.pl, ptr %i.ar, align 8, !tbaa !185
  %i.pm = icmp eq i16 %i.os, 16384
  br i1 %i.pm, label %.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pn = icmp eq i32 %i.ov, 16384
  br i1 %i.pn, label %.sink.split, label %.thread10.i

.thread10.i:                                      ; preds = %bb.bn
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.at, align 8, !tbaa !154
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.at, align 8, !tbaa !154
  %i.po = icmp eq i16 %i.os, 16384
  br i1 %i.po, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.thread10.i
  %i.pp = icmp eq i32 %i.ov, 16384
  %spec.select = select i1 %i.pp, ptr @Project_y, ptr @Project
  br label %bb.bq

.sink.split:                                      ; preds = %bb.bn, %bb.bm
  %Direct_Move_Y.sink = phi ptr [ @Direct_Move_X, %bb.bm ], [ @Direct_Move_Y, %bb.bn ]
  %Direct_Move_Orig_Y.sink = phi ptr [ @Direct_Move_Orig_X, %bb.bm ], [ @Direct_Move_Orig_Y, %bb.bn ]
  %Project.sink1240.ph = phi ptr [ @Project_x, %bb.bm ], [ @Project_y, %bb.bn ]
  store ptr %Direct_Move_Y.sink, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink, ptr %i.au, align 8, !tbaa !251
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.sink.split, %bb.bo
  %Project.sink1240 = phi ptr [ %Project.sink1240.ph, %.sink.split ], [ %spec.select, %bb.bp ], [ @Project_x, %bb.bo ]
  store ptr %Project.sink1240, ptr %i.av, align 8, !tbaa !252
  %i.pq = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.pr = icmp eq i16 %i.pq, 16384
  br i1 %i.pr, label %Ins_SFVTPV.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ps = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.pt = icmp eq i16 %i.ps, 16384
  %Project_y.Dual_Project1252 = select i1 %i.pt, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SFVTPV.exit

Ins_SFVTPV.exit:                                  ; preds = %bb.br, %bb.bq
  %Project_x.sink1241 = phi ptr [ @Project_x, %bb.bq ], [ %Project_y.Dual_Project1252, %bb.br ]
  store ptr %Project_x.sink1241, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.bs:                                            ; preds = %bb.f
  %i.pu = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !185 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !185 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !185 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !185 ; 2 uses
  %i.qd = load i16, ptr %i.bu, align 8, !tbaa !258 ; 2 uses
  %8 = trunc i64 %i.qa to i16
  %.not.i = icmp ugt i16 %i.qd, %8
  %9 = trunc i64 %i.qc to i16
  %.not95.i = icmp ugt i16 %i.qd, %9
  %or.cond.i = select i1 %.not.i, i1 %.not95.i, i1 false
  br i1 %or.cond.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.qe = load i16, ptr %i.ad, align 8, !tbaa !255 ; 2 uses
  %10 = trunc i64 %i.pw to i16
  %.not96.i = icmp ugt i16 %i.qe, %10
  %11 = trunc i64 %i.py to i16
  %.not97.i = icmp ugt i16 %i.qe, %11
  %or.cond102.i = select i1 %.not96.i, i1 %.not97.i, i1 false
  br i1 %or.cond102.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.qf = load i16, ptr %i.ae, align 8, !tbaa !617
  %12 = trunc i64 %i.pu to i16
  %.not98.i = icmp ugt i16 %i.qf, %12
  br i1 %.not98.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.qg = load i8, ptr %i.i, align 2, !tbaa !163
  %.not99.i = icmp eq i8 %i.qg, 0
  br i1 %.not99.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.bw:                                            ; preds = %bb.bu
  %i.qh = load ptr, ptr %i.bv, align 8, !tbaa !259 ; 2 uses
  %i.qi = and i64 %i.qc, 65535                    ; 2 uses
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qh, i64 %i.qi ; 2 uses
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !230
  %i.ql = and i64 %i.qa, 65535                    ; 2 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %i.qh, i64 %i.ql ; 2 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !230 ; 2 uses
  %i.qo = sub i64 %i.qk, %i.qn                    ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !257
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !257 ; 2 uses
  %i.qt = sub i64 %i.qq, %i.qs                    ; 2 uses
  %i.qu = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %i.qv = and i64 %i.py, 65535                    ; 2 uses
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %i.qv ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !230
  %i.qy = and i64 %i.pw, 65535                    ; 3 uses
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %i.qy ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !230 ; 2 uses
  %i.rb = sub i64 %i.qx, %i.ra                    ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !257
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !257 ; 2 uses
  %i.rg = sub i64 %i.rd, %i.rf                    ; 3 uses
  %i.rh = sub i64 0, %i.qt                        ; 2 uses
  %i.ri = call i64 @FT_MulDiv(i64 noundef %i.rb, i64 noundef %i.rh, i64 noundef 64) #21
  %i.rj = call i64 @FT_MulDiv(i64 noundef %i.rg, i64 noundef %i.qo, i64 noundef 64) #21
  %i.rk = add i64 %i.rj, %i.ri                    ; 3 uses
  %i.rl = call i64 @FT_MulDiv(i64 noundef %i.rb, i64 noundef %i.qo, i64 noundef 64) #21
  %i.rm = call i64 @FT_MulDiv(i64 noundef %i.rg, i64 noundef %i.qt, i64 noundef 64) #21
  %i.rn = add i64 %i.rm, %i.rl
  %i.ro = call i64 @llvm.abs.i64(i64 %i.rk, i1 true)
  %i.rp = mul i64 %i.ro, 19
  %i.rq = call i64 @llvm.abs.i64(i64 %i.rn, i1 true)
  %i.rr = icmp sgt i64 %i.rp, %i.rq
  br i1 %i.rr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rs = sub i64 %i.qs, %i.rf
  %i.rt = sub i64 %i.qn, %i.ra
  %i.ru = call i64 @FT_MulDiv(i64 noundef %i.rt, i64 noundef %i.rh, i64 noundef 64) #21
  %i.rv = call i64 @FT_MulDiv(i64 noundef %i.rs, i64 noundef %i.qo, i64 noundef 64) #21
  %i.rw = add i64 %i.rv, %i.ru                    ; 2 uses
  %i.rx = call i64 @FT_MulDiv(i64 noundef %i.rw, i64 noundef %i.rb, i64 noundef %i.rk) #21
  %i.ry = call i64 @FT_MulDiv(i64 noundef %i.rw, i64 noundef %i.rg, i64 noundef %i.rk) #21
  %i.rz = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %i.rz, i64 %i.qy ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !230
  %i.sc = add i64 %i.sb, %i.rx
  %i.sd = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.se = and i64 %i.pu, 65535                    ; 2 uses
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %i.se ; 2 uses
  store i64 %i.sc, ptr %i.sf, align 8, !tbaa !230
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !257
  %i.si = add i64 %i.sh, %i.ry
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.sj = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %i.qy
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %i.qv
  %i.sm = load ptr, ptr %i.bv, align 8, !tbaa !259 ; 2 uses
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.ql
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.qi
  %i.sp = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.sq = and i64 %i.pu, 65535                    ; 2 uses
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.sp, i64 %i.sq ; 2 uses
  %i.ss = load <2 x i64>, ptr %i.sk, align 8, !tbaa !185
  %i.st = load <2 x i64>, ptr %i.sl, align 8, !tbaa !185
  %i.su = load <2 x i64>, ptr %i.sn, align 8, !tbaa !185
  %i.sv = load <2 x i64>, ptr %i.so, align 8, !tbaa !185
  %i.sw = add <2 x i64> %i.st, %i.ss
  %i.sx = add <2 x i64> %i.sw, %i.su
  %i.sy = add <2 x i64> %i.sx, %i.sv
  %i.sz = sdiv <2 x i64> %i.sy, splat (i64 4)     ; 2 uses
  %i.ta = extractelement <2 x i64> %i.sz, i64 0
  store i64 %i.ta, ptr %i.sr, align 8, !tbaa !230
  %i.tb = extractelement <2 x i64> %i.sz, i64 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink104.i = phi ptr [ %i.sr, %bb.by ], [ %i.sf, %bb.bx ]
  %.sink.i = phi i64 [ %i.tb, %bb.by ], [ %i.si, %bb.bx ]
  %.pre-phi.i = phi i64 [ %i.sq, %bb.by ], [ %i.se, %bb.bx ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.sink104.i, i64 8
  store i64 %.sink.i, ptr %i.tc, align 8, !tbaa !257
  %i.td = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 %.pre-phi.i ; 2 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !186
  %i.tg = or i8 %i.tf, 24
  store i8 %i.tg, ptr %i.te, align 1, !tbaa !186
  br label %Ins_SPVTL.exitthread-pre-split

bb.ca:                                            ; preds = %bb.f
  %.val306 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.th = trunc i64 %.val306 to i16
  store i16 %i.th, ptr %i.cm, align 8, !tbaa !260
  br label %Ins_SPVTL.exitthread-pre-split

bb.cb:                                            ; preds = %bb.f
  %.val307 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.ti = trunc i64 %.val307 to i16
  store i16 %i.ti, ptr %i.cn, align 2, !tbaa !261
  br label %Ins_SPVTL.exitthread-pre-split

bb.cc:                                            ; preds = %bb.f
  %.val308 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tj = trunc i64 %.val308 to i16
  store i16 %i.tj, ptr %i.co, align 4, !tbaa !262
  br label %Ins_SPVTL.exitthread-pre-split

bb.cd:                                            ; preds = %bb.f
  %i.tk = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tl = trunc i64 %i.tk to i32
  switch i32 %i.tl, label %bb.cf [
    i32 0, label %bb.cg
    i32 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.tm = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i375 = icmp eq i8 %i.tm, 0
  br i1 %.not.i375, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %.sink10.i = phi i64 [ 248, %bb.ce ], [ 304, %bb.cd ]
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.tn, i64 56, i1 false)
  %i.to = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tp = trunc i64 %i.to to i16
  store i16 %i.tp, ptr %i.bw, align 2, !tbaa !263
  br label %Ins_SPVTL.exitthread-pre-split

bb.ch:                                            ; preds = %bb.f
  %i.tq = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tr = trunc i64 %i.tq to i32
  switch i32 %i.tr, label %bb.cj [
    i32 0, label %bb.ck
    i32 1, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.ts = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i377 = icmp eq i8 %i.ts, 0
  br i1 %.not.i377, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %.sink10.i376 = phi i64 [ 248, %bb.ci ], [ 304, %bb.ch ]
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.tt, i64 56, i1 false)
  %i.tu = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tv = trunc i64 %i.tu to i16
  store i16 %i.tv, ptr %i.bx, align 8, !tbaa !264
  br label %Ins_SPVTL.exitthread-pre-split

bb.cl:                                            ; preds = %bb.f
  %i.tw = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tx = trunc i64 %i.tw to i32
  switch i32 %i.tx, label %bb.cn [
    i32 0, label %bb.co
    i32 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ty = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i379 = icmp eq i8 %i.ty, 0
  br i1 %.not.i379, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %.sink10.i378 = phi i64 [ 248, %bb.cm ], [ 304, %bb.cl ]
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.tz, i64 56, i1 false)
  %i.ua = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.ub = trunc i64 %i.ua to i16
  store i16 %i.ub, ptr %i.cd, align 2, !tbaa !622
  br label %Ins_SPVTL.exitthread-pre-split

bb.cp:                                            ; preds = %bb.f
  %i.uc = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.ud = trunc i64 %i.uc to i32
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a

bb.cz:                                            ; preds = %bb.dg, %bb.cy
  %i.uk = phi i64 [ %.promoted7.i, %bb.cy ], [ %i.un, %bb.dg ]
  %i.ul = phi i32 [ 1, %bb.cy ], [ %i.vd, %bb.dg ]
  %.0.i = phi i32 [ 1, %bb.cy ], [ %.1.i, %bb.dg ] ; 3 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = add nsw i64 %i.uk, %i.um                ; 5 uses
  store i64 %i.un, ptr %i.d, align 8, !tbaa !206
  %i.uo = icmp slt i64 %i.un, %i.uj
  br i1 %i.uo, label %bb.da, label %.loopexit.sink.split

bb.da:                                            ; preds = %bb.cz
  %i.up = getelementptr inbounds i8, ptr %i.dv, i64 %i.un
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !186 ; 4 uses
  store i8 %i.uq, ptr %i.e, align 8, !tbaa !238
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr @opcode_length, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !186
  %i.uu = sext i8 %i.ut to i32                    ; 3 uses
  store i32 %i.uu, ptr %i.f, align 4, !tbaa !239
  %i.uv = and i8 %i.uq, -2
  %i.uw = icmp eq i8 %i.uv, 64
  br i1 %i.uw, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.ux = add nsw i64 %i.un, 1                    ; 2 uses
  %.not.i.i381 = icmp slt i64 %i.ux, %i.uj
  br i1 %.not.i.i381, label %bb.dc, label %.loopexit.sink.split

bb.dc:                                            ; preds = %bb.db
  %i.uy = getelementptr inbounds i8, ptr %i.dv, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !186
  %i.va = zext i8 %i.uz to i32
  %i.vb = mul nsw i32 %i.va, %i.uu
  %i.vc = sub nsw i32 2, %i.vb                    ; 2 uses
  store i32 %i.vc, ptr %i.f, align 4, !tbaa !239
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.vd = phi i32 [ %i.vc, %bb.dc ], [ %i.uu, %bb.da ]
  switch i8 %i.uq, label %bb.dg [
    i8 88, label %bb.de
    i8 89, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  %i.ve = add nsw i32 %.0.i, 1
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.vf = add nsw i32 %.0.i, -1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.1.i = phi i32 [ %.0.i, %bb.dd ], [ %i.ve, %bb.de ], [ %i.vf, %bb.df ] ; 2 uses
  %.not4.i = icmp eq i32 %.1.i, 0
  br i1 %.not4.i, label %Ins_SPVTL.exitthread-pre-split, label %bb.cz, !llvm.loop !559

bb.dh:                                            ; preds = %bb.f
  %i.vg = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.vh = or i64 %i.vg, %i.eo
  %or.cond = icmp eq i64 %i.vh, 0
  br i1 %or.cond, label %.sink.split.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vi = load i64, ptr %i.d, align 8, !tbaa !206
  %i.vj = add i64 %i.vi, %i.vg                    ; 3 uses
  store i64 %i.vj, ptr %i.d, align 8, !tbaa !206
  %i.vk = icmp slt i64 %i.vj, 0
  br i1 %i.vk, label %.sink.split.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vl = load i32, ptr %i.o, align 8, !tbaa !267 ; 2 uses
  %i.vm = icmp sgt i32 %i.vl, 0
  br i1 %i.vm, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.vn = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.vo = zext nneg i32 %i.vl to i64
  %i.vp = getelementptr [32 x i8], ptr %i.vn, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 -8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !269
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !625
  %i.vu = icmp sgt i64 %i.vj, %i.vt
  br i1 %i.vu, label %.sink.split.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  store i32 0, ptr %i.f, align 4, !tbaa !239
  %i.vv = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.vw = icmp slt i64 %i.vv, 0
  br i1 %i.vw, label %bb.dm, label %Ins_SPVTL.exitthread-pre-split

bb.dm:                                            ; preds = %bb.dl
  %i.vx = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.vy = add i64 %i.vx, 1                        ; 2 uses
  store i64 %i.vy, ptr %i.bf, align 8, !tbaa !271
  %i.vz = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.wa = icmp ugt i64 %i.vy, %i.vz
  br i1 %i.wa, label %.sink.split.i, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i:                                    ; preds = %bb.dh, %bb.dm, %bb.dk, %bb.di
  %.sink.i382 = phi i32 [ 132, %bb.di ], [ 132, %bb.dh ], [ 132, %bb.dk ], [ 139, %bb.dm ] ; 2 uses
  store i32 %.sink.i382, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.dn:                                            ; preds = %bb.f
  %.val311 = load i64, ptr %i.ew, align 8, !tbaa !185
  store i64 %.val311, ptr %i.cl, align 8, !tbaa !273
  br label %Ins_SPVTL.exitthread-pre-split

bb.do:                                            ; preds = %bb.f
  %.val312 = load i64, ptr %i.ew, align 8, !tbaa !185
  store i64 %.val312, ptr %i.dm, align 8, !tbaa !274
  br label %Ins_SPVTL.exitthread-pre-split

bb.dp:                                            ; preds = %bb.f
  %.val313 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.wb = load i64, ptr %i.bp, align 8, !tbaa !626
  %i.wc = mul i64 %i.wb, %.val313                 ; 2 uses
  %i.wd = ashr i64 %i.wc, 63
  %i.we = add i64 %i.wc, 32768
  %i.wf = add i64 %i.we, %i.wd
  %i.wg = ashr i64 %i.wf, 16
  store i64 %i.wg, ptr %i.dl, align 8, !tbaa !275
  br label %Ins_SPVTL.exitthread-pre-split

bb.dq:                                            ; preds = %bb.f
  %i.wh = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.wh, ptr %i.wi, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.dr:                                            ; preds = %bb.f
  store i64 0, ptr %i.k, align 8, !tbaa !241
  br label %Ins_SPVTL.exitthread-pre-split

bb.ds:                                            ; preds = %bb.f
  %i.wj = load <2 x i64>, ptr %i.ew, align 8, !tbaa !185
  %i.wk = shufflevector <2 x i64> %i.wj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.wk, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.dt:                                            ; preds = %bb.f
  %.val314 = load i64, ptr %i.g, align 8, !tbaa !240
  store i64 %.val314, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.du:                                            ; preds = %bb.f
  %i.wl = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.wm = icmp slt i64 %i.wl, 1
  %i.wn = icmp samesign ugt i64 %i.wl, %i.eo
  %or.cond786 = select i1 %i.wm, i1 true, i1 %i.wn
  br i1 %or.cond786, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.wo = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i383 = icmp eq i8 %i.wo, 0
  br i1 %.not.i383, label %Ins_CINDEX.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_CINDEX.exit

bb.dx:                                            ; preds = %bb.du
  %i.wp = sub nsw i64 0, %i.wl
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.wp
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !185
  br label %Ins_CINDEX.exit

Ins_CINDEX.exit:                                  ; preds = %bb.dv, %bb.dw, %bb.dx
  %storemerge.i = phi i64 [ %i.wr, %bb.dx ], [ 0, %bb.dw ], [ 0, %bb.dv ]
  store i64 %storemerge.i, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.dy:                                            ; preds = %bb.f
  %i.ws = load i64, ptr %i.ew, align 8, !tbaa !185 ; 4 uses
  %i.wt = icmp slt i64 %i.ws, 1
  %i.wu = icmp samesign ugt i64 %i.ws, %i.eo
  %or.cond787 = select i1 %i.wt, i1 true, i1 %i.wu
  br i1 %or.cond787, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.wv = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i384 = icmp eq i8 %i.wv, 0
  br i1 %.not.i384, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ea:                                            ; preds = %bb.dy
  %i.ww = sub nsw i64 0, %i.ws
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ww ; 3 uses
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !185
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xa = shl i64 %i.ws, 3
  %i.xb = add i64 %i.xa, -8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wx, ptr nonnull align 8 %i.wz, i64 %i.xb, i1 false)
  %i.xc = getelementptr inbounds i8, ptr %i.ew, i64 -8
  store i64 %i.wy, ptr %i.xc, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.eb:                                            ; preds = %bb.f
  %.val315 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.xd = getelementptr i8, ptr %i.ew, i64 8
  %.val316 = load i64, ptr %i.xd, align 8, !tbaa !185 ; 2 uses
  %i.xe = trunc i64 %.val315 to i16               ; 2 uses
  %i.xf = trunc i64 %.val316 to i16               ; 2 uses
  %i.xg = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not.i385 = icmp ugt i16 %i.xg, %i.xe
  br i1 %.not.i385, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.xh = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not28.i = icmp ugt i16 %i.xh, %i.xf
  br i1 %.not28.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.xi = load i8, ptr %i.i, align 2, !tbaa !163
  %.not29.i = icmp eq i8 %i.xi, 0
  br i1 %.not29.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ee:                                            ; preds = %bb.ec
  %i.xj = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.xk = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.xl = and i64 %.val316, 65535
  %i.xm = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.xl ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !230
  %i.xo = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.xp = and i64 %.val315, 65535
  %i.xq = getelementptr inbounds nuw [16 x i8], ptr %i.xo, i64 %i.xp ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !230
  %i.xs = sub i64 %i.xn, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !257
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !257
  %i.xx = sub i64 %i.xu, %i.xw
  %i.xy = call i64 %i.xj(ptr noundef nonnull %0, i64 noundef %i.xs, i64 noundef %i.xx) #21, !inline_history !560
  %i.xz = sdiv i64 %i.xy, 2                       ; 2 uses
  %i.ya = load ptr, ptr %i.at, align 8, !tbaa !250
  call void %i.ya(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.xe, i64 noundef %i.xz) #21, !inline_history !560
  %i.yb = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.yc = sub nsw i64 0, %i.xz
  call void %i.yb(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.xf, i64 noundef %i.yc) #21, !inline_history !560
  br label %Ins_SPVTL.exitthread-pre-split

bb.ef:                                            ; preds = %bb.f
  %i.yd = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i386 = icmp eq ptr %i.yd, null
  br i1 %.not.i386, label %._crit_edge.i387, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ye = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.yf = zext i32 %i.ye to i64
  %.idx.i = shl nuw nsw i64 %i.yf, 5
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 %.idx.i
  %.not40.i = icmp eq i32 %i.ye, 0
  br i1 %.not40.i, label %._crit_edge.i387, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.eg, %bb.en
  %.031.i = phi ptr [ %i.zk, %bb.en ], [ %i.yd, %bb.eg ] ; 6 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.031.i, i64 24
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !276
  %i.yj = and i32 %i.yi, 255
  %i.yk = icmp eq i32 %i.yj, 40
  br i1 %i.yk, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %.lr.ph.i
  %i.yl = getelementptr inbounds nuw i8, ptr %.031.i, i64 28
  %i.ym = load i8, ptr %i.yl, align 4, !tbaa !277
  %.not28.i388 = icmp eq i8 %i.ym, 0
  br i1 %.not28.i388, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yn = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.yo = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i389 = icmp slt i32 %i.yn, %i.yo
  br i1 %.not29.i389, label %bb.ej, label %.loopexit.sink.split

bb.ej:                                            ; preds = %bb.ei
  %i.yp = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.yq = add nsw i32 %i.yn, 1
  store i32 %i.yq, ptr %i.o, align 8, !tbaa !267
  %i.yr = sext i32 %i.yn to i64
  %i.ys = getelementptr inbounds [32 x i8], ptr %i.yp, i64 %i.yr ; 4 uses
  %i.yt = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.yt, ptr %i.ys, align 8, !tbaa !278
  %i.yu = load i64, ptr %i.d, align 8, !tbaa !206
  %i.yv = add nsw i64 %i.yu, 1
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store i64 %i.yv, ptr %i.yw, align 8, !tbaa !279
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store i64 1, ptr %i.yx, align 8, !tbaa !280
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  store ptr %.031.i, ptr %i.yy, align 8, !tbaa !269
  %i.yz = load i32, ptr %.031.i, align 8, !tbaa !281 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !282 ; 2 uses
  %i.zc = add i32 %i.yz, -4
  %or.cond.i.i390 = icmp ult i32 %i.zc, -3
  br i1 %or.cond.i.i390, label %.loopexit.sink.split, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.zd = zext nneg i32 %i.yz to i64
  %i.ze = getelementptr [16 x i8], ptr %0, i64 %i.zd ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 720
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !202 ; 2 uses
  %.not.i.i391 = icmp eq ptr %i.zg, null
  br i1 %.not.i.i391, label %.loopexit.sink.split, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zh = getelementptr i8, ptr %i.ze, i64 728
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !203 ; 2 uses
  %i.zj = icmp sgt i64 %i.zb, %i.zi
  br i1 %i.zj, label %.loopexit.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el
  store ptr %i.zg, ptr %i.c, align 8, !tbaa !204
  store i64 %i.zi, ptr %i.s, align 8, !tbaa !205
  store i64 %i.zb, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.yz, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.en:                                            ; preds = %bb.eh, %.lr.ph.i
  %i.zk = getelementptr inbounds nuw i8, ptr %.031.i, i64 32 ; 2 uses
  %i.zl = icmp ult ptr %i.zk, %i.yg
  br i1 %i.zl, label %.lr.ph.i, label %._crit_edge.i387, !llvm.loop !0

._crit_edge.i387:                                 ; preds = %bb.en, %bb.eg, %bb.ef
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.eo:                                            ; preds = %bb.f
  %.val317 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.zm = load i16, ptr %i.bu, align 8, !tbaa !258
  %13 = trunc i64 %.val317 to i16
  %.not.i392 = icmp ugt i16 %i.zm, %13
  br i1 %.not.i392, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.zn = load i8, ptr %i.i, align 2, !tbaa !163
  %.not13.i = icmp eq i8 %i.zn, 0
  br i1 %.not13.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.eq:                                            ; preds = %bb.eo
  %i.zo = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not11.i = icmp eq i16 %i.zo, 0
  %spec.select.i393 = select i1 %.not11.i, i8 -1, i8 -9 ; 2 uses
  %i.zp = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not12.i = icmp eq i16 %i.zp, 0
  %i.zq = and i8 %spec.select.i393, -17
  %.1.i394 = select i1 %.not12.i, i8 %spec.select.i393, i8 %i.zq
  %i.zr = load ptr, ptr %i.dk, align 8, !tbaa !283
  %i.zs = and i64 %.val317, 65535
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zs ; 2 uses
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !186
  %i.zv = and i8 %.1.i394, %i.zu
  store i8 %i.zv, ptr %i.zt, align 1, !tbaa !186
  br label %Ins_SPVTL.exitthread-pre-split

bb.er:                                            ; preds = %bb.f
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !185 ; 4 uses
  %i.zy = load i32, ptr %i.dh, align 8, !tbaa !170
  %i.zz = add i32 %i.zy, 1                        ; 2 uses
  %i.aaa = zext i32 %i.zz to i64
  %.not.i395 = icmp ult i64 %i.zx, %i.aaa
  br i1 %.not.i395, label %bb.es, label %.sink.split.i396

bb.es:                                            ; preds = %bb.er
  %i.aab = load ptr, ptr %i.de, align 8, !tbaa !166 ; 6 uses
  %.not51.i = icmp eq ptr %i.aab, null
  %i.aac = load i32, ptr %i.df, align 8, !tbaa !168 ; 2 uses
  %.not52.i = icmp eq i32 %i.zz, %i.aac
  br i1 %.not52.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aad = getelementptr inbounds nuw [32 x i8], ptr %i.aab, i64 %i.zx ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !276
  %i.aag = zext i32 %i.aaf to i64
  %.not53.i = icmp eq i64 %i.zx, %i.aag
  br i1 %.not53.i, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.aah = zext i32 %i.aac to i64
  %i.aai = getelementptr inbounds nuw [32 x i8], ptr %i.aab, i64 %i.aah
  %i.aaj = select i1 %.not51.i, ptr null, ptr %i.aai ; 3 uses
  %i.aak = icmp ult ptr %i.aab, %i.aaj
  br i1 %i.aak, label %.lr.ph.i402, label %.critedge.i

.lr.ph.i402:                                      ; preds = %bb.eu, %bb.ev
  %.04658.i = phi ptr [ %i.aao, %bb.ev ], [ %i.aab, %bb.eu ] ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.04658.i, i64 24
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !276
  %i.aan = zext i32 %i.aam to i64
  %.not55.i = icmp eq i64 %i.zx, %i.aan
  br i1 %.not55.i, label %.critedge.i, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i402
  %i.aao = getelementptr inbounds nuw i8, ptr %.04658.i, i64 32 ; 3 uses
  %i.aap = icmp ult ptr %i.aao, %i.aaj
  br i1 %i.aap, label %.lr.ph.i402, label %.critedge.i, !llvm.loop !561

.critedge.i:                                      ; preds = %bb.ev, %.lr.ph.i402, %bb.eu
  %.046.lcssa.i = phi ptr [ %i.aab, %bb.eu ], [ %.04658.i, %.lr.ph.i402 ], [ %i.aao, %bb.ev ] ; 2 uses
  %i.aaq = icmp eq ptr %.046.lcssa.i, %i.aaj
  br i1 %i.aaq, label %.sink.split.i396, label %bb.ew

bb.ew:                                            ; preds = %.critedge.i, %bb.et
  %.1.i398 = phi ptr [ %.046.lcssa.i, %.critedge.i ], [ %i.aad, %bb.et ] ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.1.i398, i64 28
  %i.aas = load i8, ptr %i.aar, align 4, !tbaa !277
  %.not56.i = icmp eq i8 %i.aas, 0
  br i1 %.not56.i, label %.sink.split.i396, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aat = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.aau = load i32, ptr %i.p, align 4, !tbaa !160
  %.not57.i = icmp slt i32 %i.aat, %i.aau
  br i1 %.not57.i, label %bb.ey, label %.sink.split.i396

bb.ey:                                            ; preds = %bb.ex
  %i.aav = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.aaw = icmp sgt i64 %i.aav, 0
  br i1 %i.aaw, label %bb.ez, label %Ins_SPVTL.exitthread-pre-split

bb.ez:                                            ; preds = %bb.ey
  %i.aax = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.aay = sext i32 %i.aat to i64
  %i.aaz = getelementptr inbounds [32 x i8], ptr %i.aax, i64 %i.aay ; 4 uses
  %i.aba = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.aba, ptr %i.aaz, align 8, !tbaa !278
  %i.abb = load i64, ptr %i.d, align 8, !tbaa !206
  %i.abc = add nsw i64 %i.abb, 1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store i64 %i.abc, ptr %i.abd, align 8, !tbaa !279
  %i.abe = load i64, ptr %i.ew, align 8, !tbaa !185
  %sext.i399 = shl i64 %i.abe, 32
  %i.abf = ashr exact i64 %sext.i399, 32
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  store i64 %i.abf, ptr %i.abg, align 8, !tbaa !280
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  store ptr %.1.i398, ptr %i.abh, align 8, !tbaa !269
  %i.abi = add nsw i32 %i.aat, 1
  store i32 %i.abi, ptr %i.o, align 8, !tbaa !267
  %i.abj = load i32, ptr %.1.i398, align 8, !tbaa !281 ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.1.i398, i64 8
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !282 ; 2 uses
  %i.abm = add i32 %i.abj, -4
  %or.cond.i.i400 = icmp ult i32 %i.abm, -3
  br i1 %or.cond.i.i400, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i32 132, ptr %i.b, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit.i

bb.fb:                                            ; preds = %bb.ez
  %i.abn = zext nneg i32 %i.abj to i64
  %i.abo = getelementptr [16 x i8], ptr %0, i64 %i.abn ; 2 uses
  %i.abp = getelementptr i8, ptr %i.abo, i64 720
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !202 ; 2 uses
  %.not.i.i401 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i401, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 138, ptr %i.b, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit.i

bb.fd:                                            ; preds = %bb.fb
  %i.abr = getelementptr i8, ptr %i.abo, i64 728
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !203 ; 2 uses
  %i.abt = icmp sgt i64 %i.abl, %i.abs
  br i1 %i.abt, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 131, ptr %i.b, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit.i

bb.ff:                                            ; preds = %bb.fd
  store ptr %i.abq, ptr %i.c, align 8, !tbaa !204
  store i64 %i.abs, ptr %i.s, align 8, !tbaa !205
  store i64 %i.abl, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.abj, ptr %i.r, align 4, !tbaa !207
  br label %Ins_Goto_CodeRange.exit.i

Ins_Goto_CodeRange.exit.i:                        ; preds = %bb.ff, %bb.fe, %bb.fc, %bb.fa
  %i.abu = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.abv = load i64, ptr %i.di, align 8, !tbaa !284
  %i.abw = add i64 %i.abv, %i.abu                 ; 2 uses
  store i64 %i.abw, ptr %i.di, align 8, !tbaa !284
  %i.abx = load i64, ptr %i.dj, align 8, !tbaa !285
  %i.aby = icmp ugt i64 %i.abw, %i.abx
  br i1 %i.aby, label %.sink.split.i396, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i396:                                 ; preds = %Ins_Goto_CodeRange.exit.i, %bb.ex, %bb.ew, %.critedge.i, %bb.er
  %.sink.i397 = phi i32 [ 130, %bb.ex ], [ 139, %Ins_Goto_CodeRange.exit.i ], [ 134, %.critedge.i ], [ 134, %bb.ew ], [ 134, %bb.er ] ; 2 uses
  store i32 %.sink.i397, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.fg:                                            ; preds = %bb.f
  %.val318 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 4 uses
  %i.abz = load i32, ptr %i.dh, align 8, !tbaa !170
  %i.aca = add i32 %i.abz, 1                      ; 2 uses
  %i.acb = zext i32 %i.aca to i64
  %.not.i403 = icmp ult i64 %.val318, %i.acb
  br i1 %.not.i403, label %bb.fh, label %.loopexit.sink.split

bb.fh:                                            ; preds = %bb.fg
  %i.acc = load ptr, ptr %i.de, align 8, !tbaa !166 ; 5 uses
  %.not42.i = icmp eq ptr %i.acc, null
  br i1 %.not42.i, label %.loopexit.sink.split, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.acd = load i32, ptr %i.df, align 8, !tbaa !168 ; 3 uses
  %.not43.i = icmp eq i32 %i.aca, %i.acd
  br i1 %.not43.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ace = getelementptr inbounds nuw [32 x i8], ptr %i.acc, i64 %.val318 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 24
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !276
  %i.ach = zext i32 %i.acg to i64
  %.not44.i = icmp eq i64 %.val318, %i.ach
  br i1 %.not44.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aci = zext i32 %i.acd to i64
  %.idx.i405 = shl nuw nsw i64 %i.aci, 5
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acc, i64 %.idx.i405 ; 2 uses
  %.not4.i406 = icmp eq i32 %i.acd, 0
  br i1 %.not4.i406, label %.critedge.i408, label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %bb.fk, %bb.fl
  %.0381.i = phi ptr [ %i.acn, %bb.fl ], [ %i.acc, %bb.fk ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.0381.i, i64 24
end_hunk_1
begin_hunk_2_@TT_RunIns:bb.a
  store i64 %i.adn, ptr %i.s, align 8, !tbaa !205
  store i64 %i.adg, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.ade, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.fs:                                            ; preds = %bb.f
  %i.adp = load i32, ptr %i.t, align 8, !tbaa !208
  %i.adq = icmp eq i32 %i.adp, 3
  br i1 %i.adq, label %.loopexit.sink.split, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adr = load ptr, ptr %i.de, align 8, !tbaa !166 ; 4 uses
  %.not.i412 = icmp eq ptr %i.adr, null
  br i1 %.not.i412, label %._crit_edge.thread.i, label %bb.fu

._crit_edge.thread.i:                             ; preds = %bb.ft
  %i.ads = load i64, ptr %i.ew, align 8, !tbaa !185
  %.pre1010 = load i32, ptr %i.df, align 8, !tbaa !168
  br label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.adt = load i32, ptr %i.df, align 8, !tbaa !168 ; 3 uses
  %i.adu = zext i32 %i.adt to i64
  %.idx.i413 = shl nuw nsw i64 %i.adu, 5
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 %.idx.i413 ; 3 uses
  %i.adw = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %.not61.i = icmp eq i32 %i.adt, 0
  br i1 %.not61.i, label %._crit_edge.i415, label %.lr.ph.i414

.lr.ph.i414:                                      ; preds = %bb.fu, %bb.fv
  %.042.i = phi ptr [ %i.aeb, %bb.fv ], [ %i.adr, %bb.fu ] ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !276
  %i.adz = zext i32 %i.ady to i64
  %i.aea = icmp eq i64 %i.adw, %i.adz
  br i1 %i.aea, label %._crit_edge.i415, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i414
  %i.aeb = getelementptr inbounds nuw i8, ptr %.042.i, i64 32 ; 3 uses
  %i.aec = icmp ult ptr %i.aeb, %i.adv
  br i1 %i.aec, label %.lr.ph.i414, label %._crit_edge.i415, !llvm.loop !563

._crit_edge.i415:                                 ; preds = %bb.fv, %.lr.ph.i414, %bb.fu
  %.0.lcssa.i = phi ptr [ %i.adr, %bb.fu ], [ %.042.i, %.lr.ph.i414 ], [ %i.aeb, %bb.fv ] ; 2 uses
  %i.aed = icmp eq ptr %.0.lcssa.i, %i.adv
  br i1 %i.aed, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %._crit_edge.i415, %._crit_edge.thread.i
  %i.aee = phi i32 [ %.pre1010, %._crit_edge.thread.i ], [ %i.adt, %._crit_edge.i415 ] ; 2 uses
  %.0.lcssa58.i = phi ptr [ null, %._crit_edge.thread.i ], [ %i.adv, %._crit_edge.i415 ]
  %i.aef = phi i64 [ %i.ads, %._crit_edge.thread.i ], [ %i.adw, %._crit_edge.i415 ]
  %i.aeg = load i32, ptr %i.dg, align 4, !tbaa !164
  %.not38.i = icmp ult i32 %i.aee, %i.aeg
  br i1 %.not38.i, label %bb.fx, label %.loopexit.sink.split

bb.fx:                                            ; preds = %bb.fw
  %i.aeh = add nuw i32 %i.aee, 1
  store i32 %i.aeh, ptr %i.df, align 8, !tbaa !168
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %._crit_edge.i415
  %.0.lcssa57.i = phi ptr [ %.0.lcssa58.i, %bb.fx ], [ %.0.lcssa.i, %._crit_edge.i415 ] ; 5 uses
  %i.aei = phi i64 [ %i.aef, %bb.fx ], [ %i.adw, %._crit_edge.i415 ] ; 3 uses
  %i.aej = icmp ugt i64 %i.aei, 65535
  br i1 %i.aej, label %.loopexit.sink.split, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aek = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.aek, ptr %.0.lcssa57.i, align 8, !tbaa !281
  %i.ael = trunc nuw nsw i64 %i.aei to i32        ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 24
  store i32 %i.ael, ptr %i.aem, align 8, !tbaa !276
  %i.aen = load i64, ptr %i.d, align 8, !tbaa !206 ; 2 uses
  %i.aeo = add nsw i64 %i.aen, 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 8
  store i64 %i.aeo, ptr %i.aep, align 8, !tbaa !282
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 28
  store i8 1, ptr %i.aeq, align 4, !tbaa !277
  %i.aer = load i32, ptr %i.dh, align 8, !tbaa !170
  %i.aes = zext i32 %i.aer to i64
  %i.aet = icmp samesign ugt i64 %i.aei, %i.aes
  br i1 %i.aet, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 %i.ael, ptr %i.dh, align 8, !tbaa !170
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aeu = load i64, ptr %i.s, align 8, !tbaa !205 ; 2 uses
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gg, %bb.gb
  %i.aev = phi i64 [ %i.aey, %bb.gg ], [ %i.aen, %bb.gb ]
  %i.aew = phi i32 [ %i.afo, %bb.gg ], [ 1, %bb.gb ]
  %i.aex = sext i32 %i.aew to i64
  %i.aey = add nsw i64 %i.aev, %i.aex             ; 6 uses
  store i64 %i.aey, ptr %i.d, align 8, !tbaa !206
  %i.aez = icmp slt i64 %i.aey, %i.aeu
  br i1 %i.aez, label %bb.gd, label %.loopexit.sink.split

bb.gd:                                            ; preds = %bb.gc
  %i.afa = getelementptr inbounds i8, ptr %i.dv, i64 %i.aey
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !186 ; 4 uses
  store i8 %i.afb, ptr %i.e, align 8, !tbaa !238
  %i.afc = zext i8 %i.afb to i64
  %i.afd = getelementptr inbounds nuw i8, ptr @opcode_length, i64 %i.afc
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !186
  %i.aff = sext i8 %i.afe to i32                  ; 3 uses
  store i32 %i.aff, ptr %i.f, align 4, !tbaa !239
  %i.afg = and i8 %i.afb, -2
  %i.afh = icmp eq i8 %i.afg, 64
  br i1 %i.afh, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  %i.afi = add nsw i64 %i.aey, 1                  ; 2 uses
  %.not.i.i418 = icmp slt i64 %i.afi, %i.aeu
  br i1 %.not.i.i418, label %bb.gf, label %.loopexit.sink.split

bb.gf:                                            ; preds = %bb.ge
  %i.afj = getelementptr inbounds i8, ptr %i.dv, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !186
  %i.afl = zext i8 %i.afk to i32
  %i.afm = mul nsw i32 %i.afl, %i.aff
  %i.afn = sub nsw i32 2, %i.afm                  ; 2 uses
  store i32 %i.afn, ptr %i.f, align 4, !tbaa !239
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %i.afo = phi i32 [ %i.afn, %bb.gf ], [ %i.aff, %bb.gd ]
  switch i8 %i.afb, label %bb.gc [
    i8 -119, label %.loopexit.sink.split
    i8 44, label %.loopexit.sink.split
    i8 45, label %bb.gh
  ], !llvm.loop !564

bb.gh:                                            ; preds = %bb.gg
  %i.afp = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 16
  store i64 %i.aey, ptr %i.afp, align 8, !tbaa !625
  br label %Ins_SPVTL.exitthread-pre-split

bb.gi:                                            ; preds = %bb.f
  %i.afq = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.afr = icmp slt i32 %i.afq, 1
  br i1 %i.afr, label %.loopexit.sink.split, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.afs = add nsw i32 %i.afq, -1                 ; 2 uses
  store i32 %i.afs, ptr %i.o, align 8, !tbaa !267
  %i.aft = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.afu = zext nneg i32 %i.afs to i64
  %i.afv = getelementptr inbounds nuw [32 x i8], ptr %i.aft, i64 %i.afu ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16 ; 2 uses
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !280 ; 2 uses
  %i.afy = add nsw i64 %i.afx, -1
  store i64 %i.afy, ptr %i.afw, align 8, !tbaa !280
  %i.afz = icmp sgt i64 %i.afx, 1
  br i1 %i.afz, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 %i.afq, ptr %i.o, align 8, !tbaa !267
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afv, i64 24
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !269
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !282
  store i64 %i.agd, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  br label %Ins_SPVTL.exitthread-pre-split

bb.gl:                                            ; preds = %bb.gj
  %i.age = load i32, ptr %i.afv, align 8, !tbaa !278 ; 3 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !279 ; 2 uses
  %i.agh = add i32 %i.age, -4
  %or.cond.i.i419 = icmp ult i32 %i.agh, -3
  br i1 %or.cond.i.i419, label %.loopexit.sink.split, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.agi = zext nneg i32 %i.age to i64
  %i.agj = getelementptr [16 x i8], ptr %0, i64 %i.agi ; 2 uses
  %i.agk = getelementptr i8, ptr %i.agj, i64 720
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !202 ; 2 uses
  %.not.i.i420 = icmp eq ptr %i.agl, null
  br i1 %.not.i.i420, label %.loopexit.sink.split, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agm = getelementptr i8, ptr %i.agj, i64 728
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !203 ; 2 uses
  %i.ago = icmp sgt i64 %i.agg, %i.agn
  br i1 %i.ago, label %.loopexit.sink.split, label %bb.go

bb.go:                                            ; preds = %bb.gn
  store ptr %i.agl, ptr %i.c, align 8, !tbaa !204
  store i64 %i.agn, ptr %i.s, align 8, !tbaa !205
  store i64 %i.agg, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.age, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.gp:                                            ; preds = %bb.f, %bb.f
  %.val319 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.agp = trunc i64 %.val319 to i16              ; 4 uses
  %i.agq = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i422 = icmp ugt i16 %i.agq, %i.agp
  br i1 %.not.i422, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agr = load i8, ptr %i.i, align 2, !tbaa !163
  %.not25.i = icmp eq i8 %i.agr, 0
  br i1 %.not25.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.gr:                                            ; preds = %bb.gp
  %i.ags = and i8 %i.dy, 1
  %.not24.i = icmp eq i8 %i.ags, 0
  br i1 %.not24.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.agt = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.agu = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.agv = and i64 %.val319, 65535
  %i.agw = getelementptr inbounds nuw [16 x i8], ptr %i.agu, i64 %i.agv ; 2 uses
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !230
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !257
  %i.aha = call i64 %i.agt(ptr noundef nonnull %0, i64 noundef %i.agx, i64 noundef %i.agz) #21, !inline_history !565 ; 2 uses
  %i.ahb = load ptr, ptr %i.be, align 8, !tbaa !265
  %i.ahc = call i64 %i.ahb(ptr noundef nonnull %0, i64 noundef %i.aha, i64 noundef 0) #21, !inline_history !565
  %i.ahd = sub i64 %i.ahc, %i.aha
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.0.i423 = phi i64 [ %i.ahd, %bb.gs ], [ 0, %bb.gr ]
  %i.ahe = load ptr, ptr %i.at, align 8, !tbaa !250
  call void %i.ahe(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.agp, i64 noundef %.0.i423) #21, !inline_history !565
  store i16 %i.agp, ptr %i.cm, align 8, !tbaa !260
  store i16 %i.agp, ptr %i.cn, align 2, !tbaa !261
  br label %Ins_SPVTL.exitthread-pre-split

bb.gu:                                            ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ahf = load i32, ptr %i.u, align 4, !tbaa !215 ; 2 uses
  switch i32 %i.ahf, label %bb.gv [
    i32 7, label %Ins_IUP.exit
    i32 0, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  %i.ahg = and i8 %i.dy, 1
  %i.ahh = zext nneg i8 %i.ahg to i32
  %i.ahi = shl nuw nsw i32 1, %i.ahh
  %i.ahj = or i32 %i.ahf, %i.ahi
  store i32 %i.ahj, ptr %i.u, align 4, !tbaa !215
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.ahk = load i16, ptr %i.cv, align 2, !tbaa !210
  %i.ahl = icmp eq i16 %i.ahk, 0
  br i1 %i.ahl, label %Ins_IUP.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ahm = and i8 %i.dy, 1
  %.not66.i = icmp eq i8 %i.ahm, 0
  %i.ahn = load ptr, ptr %i.cw, align 8, !tbaa !627 ; 2 uses
  br i1 %.not66.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aho = load ptr, ptr %i.cx, align 8, !tbaa !628
  %i.ahp = load ptr, ptr %i.cy, align 8, !tbaa !629
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahr = load ptr, ptr %i.cx, align 8, !tbaa !628
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load ptr, ptr %i.cy, align 8, !tbaa !629
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sink95.i = phi ptr [ %i.ahq, %bb.gz ], [ %i.ahn, %bb.gy ] ; 6 uses
  %.sink94.i = phi ptr [ %i.ahs, %bb.gz ], [ %i.aho, %bb.gy ] ; 16 uses
  %.sink.i424 = phi ptr [ %i.ahu, %bb.gz ], [ %i.ahp, %bb.gy ] ; 4 uses
  %.062.i = phi i32 [ 16, %bb.gz ], [ 8, %bb.gy ] ; 2 uses
  store ptr %.sink95.i, ptr %3, align 8, !tbaa !287
  store ptr %.sink94.i, ptr %i.cz, align 8, !tbaa !288
  store ptr %.sink.i424, ptr %i.da, align 8, !tbaa !289
  %i.ahv = load i16, ptr %i.ba, align 8, !tbaa !209
  %i.ahw = zext i16 %i.ahv to i32                 ; 3 uses
  store i32 %i.ahw, ptr %i.db, align 8, !tbaa !290
  br label %bb.hb

bb.hb:                                            ; preds = %.critedge72.i, %bb.ha
  %.058.i = phi i32 [ 0, %bb.ha ], [ %.3.i, %.critedge72.i ] ; 8 uses
  %.0.i425 = phi i16 [ 0, %bb.ha ], [ %i.amv, %.critedge72.i ] ; 2 uses
  %i.ahx = load ptr, ptr %i.dc, align 8, !tbaa !630
  %i.ahy = sext i16 %.0.i425 to i64
  %i.ahz = getelementptr inbounds [2 x i8], ptr %i.ahx, i64 %i.ahy
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !128
  %i.aib = zext i16 %i.aia to i32
  %i.aic = load i16, ptr %i.dd, align 8, !tbaa !631
  %i.aid = zext i16 %i.aic to i32
  %i.aie = sub nsw i32 %i.aib, %i.aid             ; 2 uses
  %i.aif = load i16, ptr %i.ba, align 8, !tbaa !209
  %i.aig = zext i16 %i.aif to i32                 ; 2 uses
  %.not67.i = icmp ult i32 %i.aie, %i.aig
  %i.aih = add nsw i32 %i.aig, -1
  %spec.select.i426 = select i1 %.not67.i, i32 %i.aie, i32 %i.aih ; 7 uses
  %.not6879.i = icmp ugt i32 %.058.i, %spec.select.i426
  br i1 %.not6879.i, label %.critedge72.i, label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %bb.hb
  %i.aii = load ptr, ptr %i.bb, align 8, !tbaa !632
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hd, %.lr.ph.i427
  %indvar = phi i32 [ %indvar.next, %bb.hd ], [ 0, %.lr.ph.i427 ] ; 3 uses
  %.180.i = phi i32 [ %i.aip, %bb.hd ], [ %.058.i, %.lr.ph.i427 ] ; 10 uses
  %i.aij = zext i32 %.180.i to i64                ; 6 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aij
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !186
  %i.aim = zext i8 %i.ail to i32
  %i.ain = and i32 %.062.i, %i.aim
  %i.aio = icmp eq i32 %i.ain, 0
  %i.aip = add i32 %.180.i, 1                     ; 6 uses
  %.not68.i = icmp ugt i32 %i.aip, %spec.select.i426 ; 3 uses
  br i1 %i.aio, label %bb.hd, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.hc
  br i1 %.not68.i, label %.critedge._crit_edge.thread.i, label %.lr.ph86.i

bb.hd:                                            ; preds = %bb.hc
  %indvar.next = add i32 %indvar, 1
  br i1 %.not68.i, label %.critedge72.i, label %bb.hc, !llvm.loop !566

.lr.ph86.i:                                       ; preds = %.critedge.preheader.i, %iup_worker_interpolate_.exit.i
  %.285.i = phi i32 [ %.2.i, %iup_worker_interpolate_.exit.i ], [ %i.aip, %.critedge.preheader.i ] ; 8 uses
  %.2.in84.i = phi i32 [ %.285.i, %iup_worker_interpolate_.exit.i ], [ %.180.i, %.critedge.preheader.i ] ; 3 uses
  %.05983.i = phi i32 [ %.160.i, %iup_worker_interpolate_.exit.i ], [ %.180.i, %.critedge.preheader.i ] ; 4 uses
  %i.aiq = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.air = zext i32 %.285.i to i64                ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !186
  %i.aiu = zext i8 %i.ait to i32
  %i.aiv = and i32 %.062.i, %i.aiu
  %.not71.i = icmp eq i32 %i.aiv, 0
  br i1 %.not71.i, label %iup_worker_interpolate_.exit.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph86.i
  %i.aiw = add i32 %.05983.i, 1                   ; 3 uses
  %i.aix = icmp ugt i32 %i.aiw, %.2.in84.i
  br i1 %i.aix, label %iup_worker_interpolate_.exit.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i428 = icmp ult i32 %.05983.i, %i.ahw
  %.not104.i.i = icmp ult i32 %.285.i, %i.ahw
  %or.cond.i.i429 = and i1 %.not104.i.i, %.not.i.i428
  br i1 %or.cond.i.i429, label %bb.hg, label %iup_worker_interpolate_.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.aiy = zext nneg i32 %.05983.i to i64         ; 3 uses
  %i.aiz = getelementptr inbounds nuw [16 x i8], ptr %.sink.i424, i64 %i.aiy
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !230 ; 4 uses
  %i.ajb = getelementptr inbounds nuw [16 x i8], ptr %.sink.i424, i64 %i.air
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !230 ; 4 uses
  %i.ajd = icmp sgt i64 %i.aja, %i.ajc
  br i1 %i.ajd, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.pre-phi123.i.i = phi i64 [ %i.aiy, %bb.hh ], [ %i.air, %bb.hg ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %i.air, %bb.hh ], [ %i.aiy, %bb.hg ] ; 2 uses
  %.086.i.i = phi i64 [ %i.ajc, %bb.hh ], [ %i.aja, %bb.hg ] ; 2 uses
  %.085.i.i = phi i64 [ %i.aja, %bb.hh ], [ %i.ajc, %bb.hg ]
  %i.aje = getelementptr inbounds nuw [16 x i8], ptr %.sink95.i, i64 %.pre-phi.i.i
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !230 ; 3 uses
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %.sink95.i, i64 %.pre-phi123.i.i
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !230 ; 3 uses
  %i.aji = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %.pre-phi.i.i
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !230 ; 5 uses
  %i.ajk = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %.pre-phi123.i.i
  %i.ajl = load i64, ptr %i.ajk, align 8, !tbaa !230 ; 3 uses
  %i.ajm = sub i64 %i.ajj, %i.ajf                 ; 2 uses
  %i.ajn = sub i64 %i.ajl, %i.ajh                 ; 2 uses
  %i.ajo = icmp eq i64 %i.ajj, %i.ajl
  %i.ajp = icmp eq i64 %i.ajc, %i.aja
  %or.cond112.i.i = or i1 %i.ajp, %i.ajo
  br i1 %or.cond112.i.i, label %.lr.ph121.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hi
  %i.ajq = sub i64 %i.ajl, %i.ajj
  %i.ajr = sub i64 %.085.i.i, %.086.i.i
  br label %bb.hj

.lr.ph121.i.i:                                    ; preds = %bb.hi, %.lr.ph121.i.i
  %.087120.i.i = phi i32 [ %i.ajy, %.lr.ph121.i.i ], [ %i.aiw, %bb.hi ] ; 2 uses
  %i.ajs = zext i32 %.087120.i.i to i64           ; 2 uses
  %i.ajt = getelementptr inbounds nuw [16 x i8], ptr %.sink95.i, i64 %i.ajs
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !230 ; 4 uses
  %.not110.i.i = icmp sgt i64 %i.aju, %i.ajf
  %i.ajv = add i64 %i.aju, %i.ajm
  %.not111.i.i = icmp slt i64 %i.aju, %i.ajh
  %i.ajw = add i64 %i.aju, %i.ajn
end_hunk_2
begin_hunk_3_@TT_RunIns:bb.a

.lr.ph.i75.i.prol:                                ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i75.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i75.i.prol ], [ %i.akx, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter1422 = phi i64 [ %prol.iter1422.next, %.lr.ph.i75.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.akz = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !230
  %i.alb = add i64 %i.ala, %i.akv
  store i64 %i.alb, ptr %i.akz, align 8, !tbaa !230
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter1422.next = add i64 %prol.iter1422, 1 ; 2 uses
  %prol.iter1422.cmp.not = icmp eq i64 %prol.iter1422.next, %xtraiter1420
  br i1 %prol.iter1422.cmp.not, label %.lr.ph.i75.i.prol.loopexit, label %.lr.ph.i75.i.prol, !llvm.loop !568

.lr.ph.i75.i.prol.loopexit:                       ; preds = %.lr.ph.i75.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.akx, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i75.i.prol ]
  %i.alc = sub nsw i64 %i.akx, %i.aij
  %i.ald = icmp ugt i64 %i.alc, -4
  br i1 %i.ald, label %.preheader.i.i, label %.lr.ph.i75.i

.preheader.i.i:                                   ; preds = %.lr.ph.i75.i.prol.loopexit, %.lr.ph.i75.i, %.preheader1.i.i
  br i1 %.not68.i, label %.critedge72.i, label %.lr.ph6.i.preheader.i

.lr.ph6.i.preheader.i:                            ; preds = %.preheader.i.i
  %i.ale = zext i32 %i.aip to i64                 ; 2 uses
  %i.alf = add nuw nsw i32 %spec.select.i426, 1
  %i.alg = add i32 %.058.i, %indvar
  %i.alh = sub i32 %spec.select.i426, %i.alg
  %xtraiter1424 = and i32 %i.alh, 3               ; 2 uses
  %lcmp.mod1425.not = icmp eq i32 %xtraiter1424, 0
  br i1 %lcmp.mod1425.not, label %.lr.ph6.i.i.prol.loopexit, label %.lr.ph6.i.i.prol

.lr.ph6.i.i.prol:                                 ; preds = %.lr.ph6.i.preheader.i, %.lr.ph6.i.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph6.i.i.prol ], [ %i.ale, %.lr.ph6.i.preheader.i ] ; 2 uses
  %prol.iter1426 = phi i32 [ %prol.iter1426.next, %.lr.ph6.i.i.prol ], [ 0, %.lr.ph6.i.preheader.i ]
  %i.ali = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !230
  %i.alk = add i64 %i.alj, %i.akv
  store i64 %i.alk, ptr %i.ali, align 8, !tbaa !230
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1426.next = add i32 %prol.iter1426, 1 ; 2 uses
  %prol.iter1426.cmp.not = icmp eq i32 %prol.iter1426.next, %xtraiter1424
  br i1 %prol.iter1426.cmp.not, label %.lr.ph6.i.i.prol.loopexit, label %.lr.ph6.i.i.prol, !llvm.loop !569

.lr.ph6.i.i.prol.loopexit:                        ; preds = %.lr.ph6.i.i.prol, %.lr.ph6.i.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.ale, %.lr.ph6.i.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph6.i.i.prol ]
  %i.all = sub i32 %.058.i, %spec.select.i426
  %i.alm = add i32 %i.all, %indvar
  %i.aln = icmp ugt i32 %i.alm, -4
  br i1 %i.aln, label %.critedge72.i, label %.lr.ph6.i.i

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.prol.loopexit, %.lr.ph.i75.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i75.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i75.i.prol.loopexit ] ; 5 uses
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i ; 2 uses
  %i.alp = load i64, ptr %i.alo, align 8, !tbaa !230
  %i.alq = add i64 %i.alp, %i.akv
  store i64 %i.alq, ptr %i.alo, align 8, !tbaa !230
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 16 ; 2 uses
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !230
  %i.alu = add i64 %i.alt, %i.akv
  store i64 %i.alu, ptr %i.als, align 8, !tbaa !230
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 32 ; 2 uses
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !230
  %i.aly = add i64 %i.alx, %i.akv
  store i64 %i.aly, ptr %i.alw, align 8, !tbaa !230
  %i.alz = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 48 ; 2 uses
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !230
  %i.amc = add i64 %i.amb, %i.akv
  store i64 %i.amc, ptr %i.ama, align 8, !tbaa !230
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.aij
  br i1 %exitcond.not.i.i.3, label %.preheader.i.i, label %.lr.ph.i75.i, !llvm.loop !570

.lr.ph6.i.i:                                      ; preds = %.lr.ph6.i.i.prol.loopexit, %.lr.ph6.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph6.i.i ], [ %indvars.iv.i.unr, %.lr.ph6.i.i.prol.loopexit ] ; 5 uses
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i ; 2 uses
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !230
  %i.amf = add i64 %i.ame, %i.akv
  store i64 %i.amf, ptr %i.amd, align 8, !tbaa !230
  %i.amg = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 16 ; 2 uses
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !230
  %i.amj = add i64 %i.ami, %i.akv
  store i64 %i.amj, ptr %i.amh, align 8, !tbaa !230
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 32 ; 2 uses
  %i.amm = load i64, ptr %i.aml, align 8, !tbaa !230
  %i.amn = add i64 %i.amm, %i.akv
  store i64 %i.amn, ptr %i.aml, align 8, !tbaa !230
  %i.amo = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 48 ; 2 uses
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !230
  %i.amr = add i64 %i.amq, %i.akv
  store i64 %i.amr, ptr %i.amp, align 8, !tbaa !230
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %i.alf, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %.critedge72.i, label %.lr.ph6.i.i, !llvm.loop !571

bb.hr:                                            ; preds = %.critedge._crit_edge.i
  %i.ams = add i32 %.160.i, 1
  %i.amt = and i32 %i.ams, 65535
  call fastcc void @iup_worker_interpolate_(ptr noundef %3, i32 noundef %i.amt, i32 noundef %spec.select.i426, i32 noundef %.160.i, i32 noundef %.180.i)
  %.not70.i = icmp eq i32 %.180.i, 0
  br i1 %.not70.i, label %.critedge72.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.amu = add i32 %.180.i, -1
  call fastcc void @iup_worker_interpolate_(ptr noundef %3, i32 noundef %.058.i, i32 noundef %i.amu, i32 noundef %.160.i, i32 noundef %.180.i)
  br label %.critedge72.i

.critedge72.i:                                    ; preds = %bb.hd, %.lr.ph6.i.i.prol.loopexit, %.lr.ph6.i.i, %bb.hs, %bb.hr, %.preheader.i.i, %.critedge._crit_edge.thread.i, %bb.hb
  %.3.i = phi i32 [ %.2.lcssa109.i, %.lr.ph6.i.i.prol.loopexit ], [ %.2.i, %bb.hs ], [ %.2.i, %bb.hr ], [ %.2.lcssa109.i, %.critedge._crit_edge.thread.i ], [ %.2.lcssa109.i, %.preheader.i.i ], [ %.058.i, %bb.hb ], [ %.2.lcssa109.i, %.lr.ph6.i.i ], [ %i.aip, %bb.hd ]
  %i.amv = add i16 %.0.i425, 1                    ; 2 uses
  %i.amw = sext i16 %i.amv to i32
  %i.amx = load i16, ptr %i.cv, align 2, !tbaa !210
  %i.amy = zext i16 %i.amx to i32
  %i.amz = icmp slt i32 %i.amw, %i.amy
  br i1 %i.amz, label %bb.hb, label %Ins_IUP.exit, !llvm.loop !572

Ins_IUP.exit:                                     ; preds = %.critedge72.i, %bb.gu, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %Ins_SPVTL.exitthread-pre-split

bb.ht:                                            ; preds = %bb.f, %bb.f
  %i.ana = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.anb = icmp slt i64 %i.er, %i.ana
  br i1 %i.anb, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.anc = load i8, ptr %i.i, align 2, !tbaa !163
  %.not22.i = icmp eq i8 %i.anc, 0
  br i1 %.not22.i, label %.loopexit.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i

bb.hw:                                            ; preds = %bb.ht
  %i.and = sub nsw i64 %i.er, %i.ana
  store i64 %i.and, ptr %i.k, align 8, !tbaa !241
  %i.ane = and i8 %i.dy, 1
  %.not.i.i431 = icmp eq i8 %i.ane, 0             ; 4 uses
  %..i.i = select i1 %.not.i.i431, i64 136, i64 80
  %.55.i.i = select i1 %.not.i.i431, i64 468, i64 466
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i
  %.sroa.0.0.copyload8.i.i = load i16, ptr %i.anf, align 8, !tbaa !128
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 %.55.i.i
  %.0.i.i432 = load i16, ptr %i.ang, align 2, !tbaa !128 ; 2 uses
  %.not43.i.i = icmp ult i16 %.0.i.i432, %.sroa.0.0.copyload8.i.i
  br i1 %.not43.i.i, label %Compute_Point_Displacement.exit.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.anh = load i8, ptr %i.i, align 2, !tbaa !163
  %.not44.i.i = icmp eq i8 %i.anh, 0
  br i1 %.not44.i.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

Compute_Point_Displacement.exit.i:                ; preds = %bb.hw
  %.53.i.i = select i1 %.not.i.i431, i64 152, i64 96
  %.sroa.8.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.53.i.i
  %.sroa.8.0.copyload19.i.i = load ptr, ptr %.sroa.8.0..sroa_idx18.i.i, align 8, !tbaa !197
  %.52.i.i = select i1 %.not.i.i431, i64 144, i64 88
  %.sroa.612.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.52.i.i
  %.sroa.612.0.copyload14.i.i = load ptr, ptr %.sroa.612.0..sroa_idx13.i.i, align 8, !tbaa !197
  %i.ani = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.anj = zext i16 %.0.i.i432 to i64             ; 2 uses
  %i.ank = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload19.i.i, i64 %i.anj ; 2 uses
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !230
  %i.anm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.612.0.copyload14.i.i, i64 %i.anj ; 2 uses
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !230
  %i.ano = sub i64 %i.anl, %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !257
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !257
  %i.ant = sub i64 %i.anq, %i.ans
  %i.anu = call i64 %i.ani(ptr noundef nonnull %0, i64 noundef %i.ano, i64 noundef %i.ant) #21, !inline_history !573 ; 2 uses
  %i.anv = load i64, ptr %i.ar, align 8, !tbaa !248
  %i.anw = mul i64 %i.anv, %i.anu                 ; 2 uses
  %i.anx = ashr i64 %i.anw, 63
  %i.any = add i64 %i.anw, 32768
  %i.anz = add i64 %i.any, %i.anx
  %i.aoa = ashr i64 %i.anz, 16
  %i.aob = load i64, ptr %i.as, align 8, !tbaa !249
  %i.aoc = mul i64 %i.aob, %i.anu                 ; 2 uses
  %i.aod = ashr i64 %i.aoc, 63
  %i.aoe = add i64 %i.aoc, 32768
  %i.aof = add i64 %i.aoe, %i.aod
  %i.aog = ashr i64 %i.aof, 16
  %.not1931.i = icmp eq i64 %i.ana, 0
  br i1 %.not1931.i, label %.loopexit.i, label %.lr.ph.i433

.lr.ph.i433:                                      ; preds = %Compute_Point_Displacement.exit.i, %Move_Zp2_Point.exit.i
  %.in.i = phi i64 [ %i.aoh, %Move_Zp2_Point.exit.i ], [ %i.ana, %Compute_Point_Displacement.exit.i ]
  %.01632.i = phi ptr [ %i.aoi, %Move_Zp2_Point.exit.i ], [ %i.ew, %Compute_Point_Displacement.exit.i ]
  %i.aoh = add nsw i64 %.in.i, -1                 ; 2 uses
  %i.aoi = getelementptr inbounds i8, ptr %.01632.i, i64 -8 ; 2 uses
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !185 ; 5 uses
  %i.aok = load i16, ptr %i.ae, align 8, !tbaa !617
  %14 = trunc i64 %i.aoj to i16
  %.not20.i = icmp ugt i16 %i.aok, %14
  br i1 %.not20.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i433
  %i.aol = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i = icmp eq i8 %i.aol, 0
  br i1 %.not21.i, label %Move_Zp2_Point.exit.i, label %.loopexit.sink.split

bb.hz:                                            ; preds = %.lr.ph.i433
  %i.aom = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i23.i = icmp eq i16 %i.aom, 0
  br i1 %.not.i23.i, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aon = load i32, ptr %i.u, align 4, !tbaa !215
  %.not19.i.i = icmp eq i32 %i.aon, 0
  br i1 %.not19.i.i, label %bb.ib, label %._crit_edge.i434

._crit_edge.i434:                                 ; preds = %bb.ia
  %.pre34.i = and i64 %i.aoj, 65535
  br label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.aoo = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.aop = and i64 %i.aoj, 65535                  ; 2 uses
  %i.aoq = getelementptr inbounds nuw [16 x i8], ptr %i.aoo, i64 %i.aop ; 2 uses
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !230
  %i.aos = add i64 %i.aor, %i.aoa
  store i64 %i.aos, ptr %i.aoq, align 8, !tbaa !230
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %._crit_edge.i434
  %.pre-phi35.i = phi i64 [ %.pre34.i, %._crit_edge.i434 ], [ %i.aop, %bb.ib ]
  %i.aot = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 %.pre-phi35.i ; 2 uses
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !186
  %i.aow = or i8 %i.aov, 8
  store i8 %i.aow, ptr %i.aou, align 1, !tbaa !186
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hz
  %i.aox = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i = icmp eq i16 %i.aox, 0
  br i1 %.not21.i.i, label %Move_Zp2_Point.exit.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aoy = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i = icmp eq i32 %i.aoy, 7
  br i1 %.not22.i.i, label %._crit_edge33.i, label %bb.if

._crit_edge33.i:                                  ; preds = %bb.ie
  %.pre.i436 = and i64 %i.aoj, 65535
  br label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.aoz = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.apa = and i64 %i.aoj, 65535                  ; 2 uses
  %i.apb = getelementptr inbounds nuw [16 x i8], ptr %i.aoz, i64 %i.apa
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8 ; 2 uses
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !257
  %i.ape = add i64 %i.apd, %i.aog
  store i64 %i.ape, ptr %i.apc, align 8, !tbaa !257
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %._crit_edge33.i
  %.pre-phi.i435 = phi i64 [ %.pre.i436, %._crit_edge33.i ], [ %i.apa, %bb.if ]
  %i.apf = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 %.pre-phi.i435 ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !186
  %i.api = or i8 %i.aph, 16
  store i8 %i.api, ptr %i.apg, align 1, !tbaa !186
  br label %Move_Zp2_Point.exit.i

Move_Zp2_Point.exit.i:                            ; preds = %bb.ig, %bb.id, %bb.hy
  %.not19.i = icmp eq i64 %i.aoh, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph.i433, !llvm.loop !574

.loopexit.i:                                      ; preds = %Move_Zp2_Point.exit.i, %Compute_Point_Displacement.exit.i, %bb.hv, %bb.hu
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.ih:                                            ; preds = %bb.f, %bb.f
  %.val320 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.apj = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.apk = icmp eq i16 %i.apj, 0
  br i1 %i.apk, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.apl = load i16, ptr %i.cs, align 2, !tbaa !633
  %i.apm = zext i16 %i.apl to i32
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.apn = phi i32 [ %i.apm, %bb.ii ], [ 1, %bb.ih ]
  %i.apo = trunc i64 %.val320 to i32
  %i.app = and i32 %i.apo, 65535                  ; 2 uses
  %.not.i437 = icmp samesign ult i32 %i.app, %i.apn
  br i1 %.not.i437, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apq = load i8, ptr %i.i, align 2, !tbaa !163
  %.not31.i = icmp eq i8 %i.apq, 0
  br i1 %.not31.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.il:                                            ; preds = %bb.ij
  %i.apr = and i8 %i.dy, 1
  %.not.i.i438 = icmp eq i8 %i.apr, 0             ; 4 uses
  %..i.i439 = select i1 %.not.i.i438, i64 136, i64 80
  %.53.i.i440 = select i1 %.not.i.i438, i64 152, i64 96
  %.55.i.i441 = select i1 %.not.i.i438, i64 468, i64 466
  %i.aps = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i439
  %.sroa.0.0.copyload8.i.i442 = load i16, ptr %i.aps, align 8, !tbaa !128
  %.sroa.8.0..sroa_idx18.i.i443 = getelementptr inbounds nuw i8, ptr %0, i64 %.53.i.i440
  %.sroa.8.0.copyload19.i.i444 = load ptr, ptr %.sroa.8.0..sroa_idx18.i.i443, align 8, !tbaa !197 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %0, i64 %.55.i.i441
  %.0.i.i445 = load i16, ptr %i.apt, align 2, !tbaa !128 ; 2 uses
  %.not43.i.i446 = icmp ult i16 %.0.i.i445, %.sroa.0.0.copyload8.i.i442
  br i1 %.not43.i.i446, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.apu = load i8, ptr %i.i, align 2, !tbaa !163
  %.not44.i.i447 = icmp eq i8 %i.apu, 0
  br i1 %.not44.i.i447, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.in:                                            ; preds = %bb.il
  %.52.i.i448 = select i1 %.not.i.i438, i64 144, i64 88
  %.sroa.612.0..sroa_idx13.i.i449 = getelementptr inbounds nuw i8, ptr %0, i64 %.52.i.i448
  %.sroa.612.0.copyload14.i.i450 = load ptr, ptr %.sroa.612.0..sroa_idx13.i.i449, align 8, !tbaa !197
  %i.apv = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.apw = zext i16 %.0.i.i445 to i64             ; 3 uses
  %i.apx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload19.i.i444, i64 %i.apw ; 2 uses
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !230
  %i.apz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.612.0.copyload14.i.i450, i64 %i.apw ; 2 uses
  %i.aqa = load i64, ptr %i.apz, align 8, !tbaa !230
  %i.aqb = sub i64 %i.apy, %i.aqa
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  %i.aqd = load i64, ptr %i.aqc, align 8, !tbaa !257
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !257
  %i.aqg = sub i64 %i.aqd, %i.aqf
  %i.aqh = call i64 %i.apv(ptr noundef nonnull %0, i64 noundef %i.aqb, i64 noundef %i.aqg) #21, !inline_history !575 ; 2 uses
  %i.aqi = load i64, ptr %i.ar, align 8, !tbaa !248
  %i.aqj = mul i64 %i.aqi, %i.aqh                 ; 2 uses
  %i.aqk = ashr i64 %i.aqj, 63
  %i.aql = add i64 %i.aqj, 32768
  %i.aqm = add i64 %i.aql, %i.aqk
  %i.aqn = ashr i64 %i.aqm, 16
  %i.aqo = load i64, ptr %i.as, align 8, !tbaa !249
  %i.aqp = mul i64 %i.aqo, %i.aqh                 ; 2 uses
  %i.aqq = ashr i64 %i.aqp, 63
  %i.aqr = add i64 %i.aqp, 32768
  %i.aqs = add i64 %i.aqr, %i.aqq
  %i.aqt = ashr i64 %i.aqs, 16
  %i.aqu = icmp eq i32 %i.app, 0
  br i1 %i.aqu, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aqv = load ptr, ptr %i.ct, align 8, !tbaa !634
  %i.aqw = and i64 %.val320, 65535
  %i.aqx = getelementptr [2 x i8], ptr %i.aqv, i64 %i.aqw
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 -2
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !128
  %i.ara = add i16 %i.aqz, 1
  %i.arb = load i16, ptr %i.cu, align 8, !tbaa !635
  %i.arc = sub i16 %i.ara, %i.arb
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.025.i = phi i16 [ %i.arc, %bb.io ], [ 0, %bb.in ] ; 2 uses
  %i.ard = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.are = icmp eq i16 %i.ard, 0
  br i1 %i.are, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.arf = load i16, ptr %i.ae, align 8, !tbaa !617
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %i.arg = load ptr, ptr %i.ct, align 8, !tbaa !634
  %i.arh = and i64 %.val320, 65535
  %i.ari = getelementptr inbounds nuw [2 x i8], ptr %i.arg, i64 %i.arh
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !128
  %i.ark = add i16 %i.arj, 1
  %i.arl = load i16, ptr %i.cu, align 8, !tbaa !635
  %i.arm = sub i16 %i.ark, %i.arl
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.024.i = phi i16 [ %i.arf, %bb.iq ], [ %i.arm, %bb.ir ] ; 2 uses
  %i.arn = icmp ult i16 %.025.i, %.024.i
  br i1 %i.arn, label %.lr.ph.i451, label %Ins_SPVTL.exitthread-pre-split

.lr.ph.i451:                                      ; preds = %bb.is
  %i.aro = zext i16 %.025.i to i64
  %wide.trip.count.i = zext i16 %.024.i to i64
  br label %bb.it

bb.it:                                            ; preds = %Move_Zp2_Point.exit.i458, %.lr.ph.i451
  %indvars.iv.i452 = phi i64 [ %i.aro, %.lr.ph.i451 ], [ %indvars.iv.next.i459, %Move_Zp2_Point.exit.i458 ] ; 6 uses
  %i.arp = load ptr, ptr %i.al, align 8, !tbaa !618 ; 2 uses
  %.not29.i453 = icmp eq ptr %.sroa.8.0.copyload19.i.i444, %i.arp
end_hunk_3
begin_hunk_4_@TT_RunIns:bb.a
  %i.avg = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv35.i
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 48 ; 2 uses
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !230
  %i.avj = add i64 %i.avi, %i.aut
  store i64 %i.avj, ptr %i.avh, align 8, !tbaa !230
  %indvars.iv.next36.i.3 = add nuw nsw i64 %indvars.iv35.i, 4 ; 2 uses
  %niter1413.next.3 = add i64 %niter1413, 4       ; 2 uses
  %niter1413.ncmp.3 = icmp eq i64 %niter1413.next.3, %unroll_iter1412
  br i1 %niter1413.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1343.unr-lcssa, label %Move_Zp2_Point.exit.us.us14.i, !llvm.loop !578

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.i
  br i1 %.not19.i.us.i, label %Move_Zp2_Point.exit.us.us16.preheader.i, label %.lr.ph.split.us.split.split.split.i

Move_Zp2_Point.exit.us.us16.preheader.i:          ; preds = %.lr.ph.split.us.split.split.i
  %wide.trip.count28.i = zext i16 %.016.i to i64  ; 3 uses
  %min.iters.check = icmp ult i16 %.016.i, 4
  br i1 %min.iters.check, label %Move_Zp2_Point.exit.us.us16.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %Move_Zp2_Point.exit.us.us16.preheader.i
  %n.vec = and i64 %wide.trip.count28.i, 65534    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.avk = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %index ; 2 uses
  %i.avl = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %index
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.avk, align 8
  %wide.load1314 = load <2 x i64>, ptr %i.avm, align 8
  %i.avn = add <2 x i64> %wide.load, %i.atk
  %i.avo = add <2 x i64> %wide.load1314, %i.atk
  store <2 x i64> %i.avn, ptr %i.avk, align 8
  store <2 x i64> %i.avo, ptr %i.avm, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.avp = icmp eq i64 %index.next, %n.vec
  br i1 %i.avp, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  br i1 %cmp.n, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i.preheader

Move_Zp2_Point.exit.us.us16.i.preheader:          ; preds = %Move_Zp2_Point.exit.us.us16.preheader.i, %middle.block
  %indvars.iv25.i.ph = phi i64 [ 0, %Move_Zp2_Point.exit.us.us16.preheader.i ], [ %n.vec, %middle.block ]
  br label %Move_Zp2_Point.exit.us.us16.i

Move_Zp2_Point.exit.us.us16.i:                    ; preds = %Move_Zp2_Point.exit.us.us16.i.preheader, %Move_Zp2_Point.exit.us.us16.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %Move_Zp2_Point.exit.us.us16.i ], [ %indvars.iv25.i.ph, %Move_Zp2_Point.exit.us.us16.i.preheader ] ; 2 uses
  %i.avq = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv25.i ; 2 uses
  %i.avr = load <2 x i64>, ptr %i.avq, align 8, !tbaa !185
  %i.avs = add <2 x i64> %i.avr, %i.atk
  store <2 x i64> %i.avs, ptr %i.avq, align 8, !tbaa !185
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i, !llvm.loop !580

.lr.ph.split.us.split.split.split.i:              ; preds = %.lr.ph.split.us.split.split.i
  %.not22.i.us.i = icmp eq i32 %i.aus, 7
  br i1 %.not22.i.us.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.preheader.i

Move_Zp2_Point.exit.us.preheader.i:               ; preds = %.lr.ph.split.us.split.split.split.i
  %wide.trip.count.i480 = zext i16 %.016.i to i64 ; 2 uses
  %i.avt = extractelement <2 x i64> %i.atk, i64 1 ; 5 uses
  %xtraiter1402 = and i64 %wide.trip.count.i480, 3 ; 3 uses
  %i.avu = icmp ult i16 %.016.i, 4
  br i1 %i.avu, label %Move_Zp2_Point.exit.us.i.epil.preheader, label %Move_Zp2_Point.exit.us.preheader.i.new

Move_Zp2_Point.exit.us.preheader.i.new:           ; preds = %Move_Zp2_Point.exit.us.preheader.i
  %unroll_iter1406 = and i64 %wide.trip.count.i480, 65532
  br label %Move_Zp2_Point.exit.us.i

Move_Zp2_Point.exit.us.i:                         ; preds = %Move_Zp2_Point.exit.us.i, %Move_Zp2_Point.exit.us.preheader.i.new
  %indvars.iv.i481 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %indvars.iv.next.i482.3, %Move_Zp2_Point.exit.us.i ] ; 5 uses
  %niter1407 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %niter1407.next.3, %Move_Zp2_Point.exit.us.i ]
  %i.avv = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv.i481
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 8 ; 2 uses
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !257
  %i.avy = add i64 %i.avx, %i.avt
  store i64 %i.avy, ptr %i.avw, align 8, !tbaa !257
  %i.avz = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv.i481
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 24 ; 2 uses
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !257
  %i.awc = add i64 %i.awb, %i.avt
  store i64 %i.awc, ptr %i.awa, align 8, !tbaa !257
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv.i481
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 40 ; 2 uses
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !257
  %i.awg = add i64 %i.awf, %i.avt
  store i64 %i.awg, ptr %i.awe, align 8, !tbaa !257
  %i.awh = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv.i481
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 56 ; 2 uses
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !257
  %i.awk = add i64 %i.awj, %i.avt
  store i64 %i.awk, ptr %i.awi, align 8, !tbaa !257
  %indvars.iv.next.i482.3 = add nuw nsw i64 %indvars.iv.i481, 4 ; 2 uses
  %niter1407.next.3 = add i64 %niter1407, 4       ; 2 uses
  %niter1407.ncmp.3 = icmp eq i64 %niter1407.next.3, %unroll_iter1406
  br i1 %niter1407.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1345.unr-lcssa, label %Move_Zp2_Point.exit.us.i, !llvm.loop !578

.lr.ph.split.i:                                   ; preds = %Move_Zp2_Point.exit.i487, %.lr.ph.split.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next46.i, %Move_Zp2_Point.exit.i487 ] ; 4 uses
  %.not23.i = icmp eq i64 %indvars.iv45.i, %i.asr
  br i1 %.not23.i, label %Move_Zp2_Point.exit.i487, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph.split.i
  %i.awl = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i25.i = icmp eq i16 %i.awl, 0
  br i1 %.not.i25.i, label %bb.jo, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.awm = load i32, ptr %i.u, align 4, !tbaa !215
  %.not19.i.i484 = icmp eq i32 %i.awm, 0
  br i1 %.not19.i.i484, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.awn = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv45.i ; 2 uses
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !230
  %i.awp = add i64 %i.awo, %i.atv
  store i64 %i.awp, ptr %i.awn, align 8, !tbaa !230
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jl
  %i.awq = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i485 = icmp eq i16 %i.awq, 0
  br i1 %.not21.i.i485, label %Move_Zp2_Point.exit.i487, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awr = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i486 = icmp eq i32 %i.awr, 7
  br i1 %.not22.i.i486, label %Move_Zp2_Point.exit.i487, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aws = getelementptr inbounds nuw [16 x i8], ptr %i.atu, i64 %indvars.iv45.i
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 8 ; 2 uses
  %i.awu = load i64, ptr %i.awt, align 8, !tbaa !257
  %i.awv = add i64 %i.awu, %i.atw
  store i64 %i.awv, ptr %i.awt, align 8, !tbaa !257
  br label %Move_Zp2_Point.exit.i487

Move_Zp2_Point.exit.i487:                         ; preds = %bb.jq, %bb.jp, %bb.jo, %.lr.ph.split.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count48.i
  br i1 %exitcond49.not.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.split.i, !llvm.loop !578

bb.jr:                                            ; preds = %bb.f
  %i.aww = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.awx = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.awy = icmp eq i16 %i.awx, 0
  br i1 %i.awy, label %bb.ju, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.awz = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.axa = icmp eq i16 %i.awz, 0
  br i1 %i.axa, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.axb = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.axc = icmp ne i16 %i.axb, 0
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jr
  %.not40.i488 = phi i1 [ false, %bb.js ], [ false, %bb.jr ], [ %i.axc, %bb.jt ]
  %i.axd = icmp slt i64 %i.er, %i.aww
  br i1 %i.axd, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.axe = load i8, ptr %i.i, align 2, !tbaa !163
  %.not46.i505 = icmp eq i8 %i.axe, 0
  br i1 %.not46.i505, label %.loopexit.i496, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i496

bb.jx:                                            ; preds = %bb.ju
  %i.axf = sub nsw i64 %i.er, %i.aww
  store i64 %i.axf, ptr %i.k, align 8, !tbaa !241
  %i.axg = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.axh = load i16, ptr %i.ap, align 4, !tbaa !246
  %i.axi = sext i16 %i.axh to i64
  %i.axj = mul i64 %i.axg, %i.axi                 ; 2 uses
  %i.axk = ashr i64 %i.axj, 63
  %i.axl = add i64 %i.axj, 8192
  %i.axm = add i64 %i.axl, %i.axk
  %i.axn = ashr i64 %i.axm, 14
  %i.axo = load i16, ptr %i.aq, align 2, !tbaa !247
  %i.axp = sext i16 %i.axo to i64
  %i.axq = mul i64 %i.axg, %i.axp                 ; 2 uses
  %i.axr = ashr i64 %i.axq, 63
  %i.axs = add i64 %i.axq, 8192
  %i.axt = add i64 %i.axs, %i.axr
  %i.axu = ashr i64 %i.axt, 14                    ; 2 uses
  %.not52.i489 = icmp eq i64 %i.aww, 0
  br i1 %.not52.i489, label %.loopexit.i496, label %.lr.ph.i490

.lr.ph.i490:                                      ; preds = %bb.jx, %Move_Zp2_Point.exit.i494
  %.in.i491 = phi i64 [ %i.axv, %Move_Zp2_Point.exit.i494 ], [ %i.aww, %bb.jx ]
  %.03453.i = phi ptr [ %i.axw, %Move_Zp2_Point.exit.i494 ], [ %i.ew, %bb.jx ]
  %i.axv = add nsw i64 %.in.i491, -1              ; 2 uses
  %i.axw = getelementptr inbounds i8, ptr %.03453.i, i64 -8 ; 2 uses
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !185 ; 8 uses
  %15 = trunc i64 %i.axx to i16
  %i.axy = load i16, ptr %i.ae, align 8, !tbaa !617
  %.not38.i492 = icmp ugt i16 %i.axy, %15
  br i1 %.not38.i492, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %.lr.ph.i490
  %i.axz = load i8, ptr %i.i, align 2, !tbaa !163
  %.not45.i493 = icmp eq i8 %i.axz, 0
  br i1 %.not45.i493, label %Move_Zp2_Point.exit.i494, label %.loopexit.sink.split

bb.jz:                                            ; preds = %.lr.ph.i490
  %i.aya = load i32, ptr %i.u, align 4, !tbaa !215 ; 2 uses
  %.not39.i = icmp eq i32 %i.aya, 0
  br i1 %.not39.i, label %bb.kk, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %.not40.i488, label %bb.kb, label %bb.kf

bb.kb:                                            ; preds = %bb.ka
  %.not41.i = icmp eq i32 %i.aya, 7
  br i1 %.not41.i, label %Move_Zp2_Point.exit.i494, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.ayb = load i8, ptr %i.cq, align 1, !tbaa !292
  %.not42.i501 = icmp eq i8 %i.ayb, 0
  br i1 %.not42.i501, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ayc = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not43.i502 = icmp eq i16 %i.ayc, 0
  br i1 %.not43.i502, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.ayd = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.aye = and i64 %i.axx, 65535
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ayd, i64 %i.aye
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !186
  %i.ayh = and i8 %i.ayg, 16
  %.not44.i503 = icmp eq i8 %i.ayh, 0
  br i1 %.not44.i503, label %Move_Zp2_Point.exit.i494, label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.ka
  %i.ayi = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i.i497 = icmp eq i16 %i.ayi, 0
  br i1 %.not.i.i497, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ayj = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.ayk = and i64 %i.axx, 65535
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %i.ayk ; 2 uses
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !186
  %i.ayn = or i8 %i.aym, 8
  store i8 %i.ayn, ptr %i.ayl, align 1, !tbaa !186
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.ayo = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i498 = icmp eq i16 %i.ayo, 0
  br i1 %.not21.i.i498, label %Move_Zp2_Point.exit.i494, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ayp = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i499 = icmp eq i32 %i.ayp, 7
  br i1 %.not22.i.i499, label %._crit_edge.i500, label %bb.kj

._crit_edge.i500:                                 ; preds = %bb.ki
  %.pre55.i = and i64 %i.axx, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.kj:                                            ; preds = %bb.ki
  %i.ayq = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.ayr = and i64 %i.axx, 65535                  ; 2 uses
  %i.ays = getelementptr inbounds nuw [16 x i8], ptr %i.ayq, i64 %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 8 ; 2 uses
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !257
  %i.ayv = add i64 %i.ayu, %i.axu
  store i64 %i.ayv, ptr %i.ayt, align 8, !tbaa !257
  br label %Move_Zp2_Point.exit.sink.split.i

bb.kk:                                            ; preds = %bb.jz
  %i.ayw = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i47.i = icmp eq i16 %i.ayw, 0
  br i1 %.not.i47.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ayx = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.ayy = and i64 %i.axx, 65535                  ; 2 uses
  %i.ayz = getelementptr inbounds nuw [16 x i8], ptr %i.ayx, i64 %i.ayy ; 2 uses
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !230
  %i.azb = add i64 %i.aza, %i.axn
  store i64 %i.azb, ptr %i.ayz, align 8, !tbaa !230
  %i.azc = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 %i.ayy ; 2 uses
  %i.aze = load i8, ptr %i.azd, align 1, !tbaa !186
  %i.azf = or i8 %i.aze, 8
  store i8 %i.azf, ptr %i.azd, align 1, !tbaa !186
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.azg = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i49.i = icmp eq i16 %i.azg, 0
  br i1 %.not21.i49.i, label %Move_Zp2_Point.exit.i494, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.azh = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i50.i = icmp eq i32 %i.azh, 7
  br i1 %.not22.i50.i, label %._crit_edge54.i, label %bb.ko

._crit_edge54.i:                                  ; preds = %bb.kn
  %.pre.i504 = and i64 %i.axx, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.ko:                                            ; preds = %bb.kn
  %i.azi = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.azj = and i64 %i.axx, 65535                  ; 2 uses
  %i.azk = getelementptr inbounds nuw [16 x i8], ptr %i.azi, i64 %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8 ; 2 uses
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !257
  %i.azn = add i64 %i.azm, %i.axu
  store i64 %i.azn, ptr %i.azl, align 8, !tbaa !257
  br label %Move_Zp2_Point.exit.sink.split.i

Move_Zp2_Point.exit.sink.split.i:                 ; preds = %bb.ko, %._crit_edge54.i, %bb.kj, %._crit_edge.i500
  %.pre-phi.sink.i = phi i64 [ %i.ayr, %bb.kj ], [ %.pre55.i, %._crit_edge.i500 ], [ %.pre.i504, %._crit_edge54.i ], [ %i.azj, %bb.ko ]
  %i.azo = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 %.pre-phi.sink.i ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !186
  %i.azr = or i8 %i.azq, 16
  store i8 %i.azr, ptr %i.azp, align 1, !tbaa !186
  br label %Move_Zp2_Point.exit.i494

Move_Zp2_Point.exit.i494:                         ; preds = %Move_Zp2_Point.exit.sink.split.i, %bb.km, %bb.kh, %bb.ke, %bb.kb, %bb.jy
  %.not.i495 = icmp eq i64 %i.axv, 0
  br i1 %.not.i495, label %.loopexit.i496, label %.lr.ph.i490, !llvm.loop !581

.loopexit.i496:                                   ; preds = %Move_Zp2_Point.exit.i494, %bb.jx, %bb.jw, %bb.jv
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.kp:                                            ; preds = %bb.f
  %i.azs = load i64, ptr %i.bc, align 8, !tbaa !623 ; 8 uses
  %i.azt = icmp slt i64 %i.er, %i.azs
  br i1 %i.azt, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azu = load i8, ptr %i.i, align 2, !tbaa !163
  %.not137.i = icmp eq i8 %i.azu, 0
  br i1 %.not137.i, label %.loopexit.i508, label %.loopexit.sink.split.i

bb.kr:                                            ; preds = %bb.kp
  %i.azv = sub nsw i64 %i.er, %i.azs
  store i64 %i.azv, ptr %i.k, align 8, !tbaa !241
  %i.azw = load i16, ptr %i.cn, align 2, !tbaa !261 ; 3 uses
  %i.azx = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i506 = icmp ult i16 %i.azw, %i.azx
  br i1 %.not.i506, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.azy = load i8, ptr %i.i, align 2, !tbaa !163
  %.not136.i = icmp eq i8 %i.azy, 0
  br i1 %.not136.i, label %.loopexit.i508, label %.loopexit.sink.split.i

bb.kt:                                            ; preds = %bb.kr
  %i.azz = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.baa = icmp eq i16 %i.azz, 0
  br i1 %i.baa, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bab = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.bac = icmp eq i16 %i.bab, 0
  br i1 %i.bac, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bad = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.bae = icmp eq i16 %i.bad, 0
  br i1 %i.bae, label %bb.kw, label %.thread155.i

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %bb.kt
  %i.baf = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bag = zext i16 %i.azw to i64                 ; 2 uses
  %i.bah = getelementptr inbounds nuw [16 x i8], ptr %i.baf, i64 %i.bag ; 5 uses
  %i.bai = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %i.bag ; 3 uses
  %i.bak = load i16, ptr %i.co, align 4, !tbaa !262 ; 2 uses
  %i.bal = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not130.i = icmp ult i16 %i.bak, %i.bal
  br i1 %.not130.i, label %bb.kx, label %.thread750

.thread155.i:                                     ; preds = %bb.kv
  %i.bam = load ptr, ptr %i.by, align 8, !tbaa !294
  %i.ban = zext i16 %i.azw to i64                 ; 2 uses
  %i.bao = getelementptr inbounds nuw [16 x i8], ptr %i.bam, i64 %i.ban ; 8 uses
  %i.bap = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.baq = getelementptr inbounds nuw [16 x i8], ptr %i.bap, i64 %i.ban ; 4 uses
  %i.bar = load i16, ptr %i.co, align 4, !tbaa !262 ; 3 uses
  %i.bas = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not130158.i = icmp ult i16 %i.bar, %i.bas
  br i1 %.not130158.i, label %bb.ky, label %.thread165.i

bb.kx:                                            ; preds = %bb.kw
  %i.bat = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bau = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bav = zext i16 %i.bak to i64
end_hunk_4
begin_hunk_5_@TT_RunIns:bb.a
  %i.bee = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.bef = and i64 %i.bdy, 4294967295             ; 2 uses
  %i.beg = getelementptr inbounds nuw [16 x i8], ptr %i.bee, i64 %i.bef ; 2 uses
  %i.beh = load i64, ptr %i.beg, align 8, !tbaa !230
  %i.bei = load i64, ptr %.0124159.i755764777.ph, align 8, !tbaa !230
  %i.bej = sub i64 %i.beh, %i.bei
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beg, i64 8
  %i.bel = load i64, ptr %i.bek, align 8, !tbaa !257
  %i.bem = load i64, ptr %.ph807, align 8, !tbaa !257
  %i.ben = sub i64 %i.bel, %i.bem
  %i.beo = call i64 %i.bed(ptr noundef nonnull %0, i64 noundef %i.bej, i64 noundef %i.ben) #21, !inline_history !582
  %i.bep = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.beq = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.ber = getelementptr inbounds nuw [16 x i8], ptr %i.beq, i64 %i.bef ; 2 uses
  %i.bes = load i64, ptr %i.ber, align 8, !tbaa !230
  %i.bet = load i64, ptr %.ph, align 8, !tbaa !230
  %i.beu = sub i64 %i.bes, %i.bet
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ber, i64 8
  %i.bew = load i64, ptr %i.bev, align 8, !tbaa !257
  %i.bex = load i64, ptr %.ph812, align 8, !tbaa !257
  %i.bey = sub i64 %i.bew, %i.bex
  %i.bez = call i64 %i.bep(ptr noundef nonnull %0, i64 noundef %i.beu, i64 noundef %i.bey) #21, !inline_history !582
  %i.bfa = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bfb = trunc i64 %i.bdy to i16
  %i.bfc = sub i64 %i.beo, %i.bez
  call void %i.bfa(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %i.bfb, i64 noundef %i.bfc) #21, !inline_history !582
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %i.bfd = add nsw i64 %i.bdw, -1
  %.not131.us.us.i = icmp eq i64 %i.bdw, 0
  br i1 %.not131.us.us.i, label %.loopexit.i508, label %.lr.ph.split.us.split.us.i515

.lr.ph.split.us.split.i514:                       ; preds = %.lr.ph.split.us.i513, %bb.lj
  %i.bfe = phi i64 [ %i.bgm, %bb.lj ], [ %i.bdk, %.lr.ph.split.us.i513 ] ; 2 uses
  %.0141.us.i = phi ptr [ %i.bff, %bb.lj ], [ %i.ew, %.lr.ph.split.us.i513 ]
  %i.bff = getelementptr inbounds i8, ptr %.0141.us.i, i64 -8 ; 2 uses
  %i.bfg = load i64, ptr %i.bff, align 8, !tbaa !185 ; 3 uses
  %i.bfh = trunc i64 %i.bfg to i32
  %i.bfi = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.bfj = zext i16 %i.bfi to i32
  %.not132.us.i = icmp ult i32 %i.bfh, %i.bfj
  br i1 %.not132.us.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph.split.us.split.i514
  %i.bfk = load i8, ptr %i.i, align 2, !tbaa !163
  %.not135.us.i = icmp eq i8 %i.bfk, 0
  br i1 %.not135.us.i, label %bb.lj, label %.loopexit.sink.split, !llvm.loop !583

bb.lg:                                            ; preds = %.lr.ph.split.us.split.i514
  %i.bfl = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bfm = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.bfn = and i64 %i.bfg, 4294967295             ; 2 uses
  %i.bfo = getelementptr inbounds nuw [16 x i8], ptr %i.bfm, i64 %i.bfn ; 2 uses
  %i.bfp = load i64, ptr %i.bfo, align 8, !tbaa !230
  %i.bfq = load i64, ptr %.0124160163.i, align 8, !tbaa !230
  %i.bfr = sub i64 %i.bfp, %i.bfq
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8
  %i.bft = load i64, ptr %i.bfs, align 8, !tbaa !257
  %i.bfu = load i64, ptr %i.bdr, align 8, !tbaa !257
  %i.bfv = sub i64 %i.bft, %i.bfu
  %i.bfw = call i64 %i.bfl(ptr noundef nonnull %0, i64 noundef %i.bfr, i64 noundef %i.bfv) #21, !inline_history !582 ; 2 uses
  %i.bfx = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bfy = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bfz = getelementptr inbounds nuw [16 x i8], ptr %i.bfy, i64 %i.bfn ; 2 uses
  %i.bga = load i64, ptr %i.bfz, align 8, !tbaa !230
  %i.bgb = load i64, ptr %i.bcu, align 8, !tbaa !230
  %i.bgc = sub i64 %i.bga, %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8
  %i.bge = load i64, ptr %i.bgd, align 8, !tbaa !257
  %i.bgf = load i64, ptr %i.bdf, align 8, !tbaa !257
  %i.bgg = sub i64 %i.bge, %i.bgf
  %i.bgh = call i64 %i.bfx(ptr noundef nonnull %0, i64 noundef %i.bgc, i64 noundef %i.bgg) #21, !inline_history !582
  %.not133.us.i = icmp eq i64 %i.bfw, 0
  br i1 %.not133.us.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bgi = call i64 @FT_MulDiv(i64 noundef %i.bfw, i64 noundef %i.bdi, i64 noundef %i.bdj) #21
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %.0120.us.i = phi i64 [ %i.bgi, %bb.lh ], [ 0, %bb.lg ]
  %i.bgj = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bgk = trunc i64 %i.bfg to i16
  %i.bgl = sub i64 %.0120.us.i, %i.bgh
  call void %i.bgj(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %i.bgk, i64 noundef %i.bgl) #21, !inline_history !582
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lf
  %i.bgm = add nsw i64 %i.bfe, -1
  %.not131.us.i = icmp eq i64 %i.bfe, 0
  br i1 %.not131.us.i, label %.loopexit.i508, label %.lr.ph.split.us.split.i514

.lr.ph.split.i510:                                ; preds = %bb.lr, %.lr.ph.split.preheader.i509
  %i.bgn = phi i64 [ %i.biu, %bb.lr ], [ %i.bdv, %.lr.ph.split.preheader.i509 ] ; 2 uses
  %.0141.i = phi ptr [ %i.bgo, %bb.lr ], [ %i.ew, %.lr.ph.split.preheader.i509 ]
  %i.bgo = getelementptr inbounds i8, ptr %.0141.i, i64 -8 ; 2 uses
  %i.bgp = load i64, ptr %i.bgo, align 8, !tbaa !185 ; 4 uses
  %i.bgq = trunc i64 %i.bgp to i32
  %i.bgr = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.bgs = zext i16 %i.bgr to i32
  %.not132.i = icmp ult i32 %i.bgq, %i.bgs
  br i1 %.not132.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %.lr.ph.split.i510
  %i.bgt = load i8, ptr %i.i, align 2, !tbaa !163
  %.not135.i = icmp eq i8 %i.bgt, 0
  br i1 %.not135.i, label %bb.lr, label %.loopexit.sink.split, !llvm.loop !583

bb.ll:                                            ; preds = %.lr.ph.split.i510
  %i.bgu = load i64, ptr %i.ca, align 8, !tbaa !296 ; 2 uses
  %i.bgv = load i64, ptr %i.cb, align 8, !tbaa !297 ; 2 uses
  %i.bgw = icmp eq i64 %i.bgu, %i.bgv
  br i1 %i.bgw, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bgx = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bgy = load ptr, ptr %i.cp, align 8, !tbaa !637
  %i.bgz = and i64 %i.bgp, 4294967295             ; 2 uses
  %i.bha = getelementptr inbounds nuw [16 x i8], ptr %i.bgy, i64 %i.bgz ; 2 uses
  %i.bhb = load i64, ptr %i.bha, align 8, !tbaa !230
  %i.bhc = load i64, ptr %.0124159170179.i, align 8, !tbaa !230
  %i.bhd = sub i64 %i.bhb, %i.bhc
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !257
  %i.bhg = load i64, ptr %i.bdt, align 8, !tbaa !257
  %i.bhh = sub i64 %i.bhf, %i.bhg
  %i.bhi = call i64 %i.bgx(ptr noundef nonnull %0, i64 noundef %i.bhd, i64 noundef %i.bhh) #21, !inline_history !582
  br label %bb.lo

bb.ln:                                            ; preds = %bb.ll
  %i.bhj = load ptr, ptr %i.cp, align 8, !tbaa !637
  %i.bhk = and i64 %i.bgp, 4294967295             ; 2 uses
  %i.bhl = getelementptr inbounds nuw [16 x i8], ptr %i.bhj, i64 %i.bhk ; 2 uses
  %i.bhm = load i64, ptr %i.bhl, align 8, !tbaa !230
  %i.bhn = load i64, ptr %.0124159170179.i, align 8, !tbaa !230
  %i.bho = sub i64 %i.bhm, %i.bhn
  %i.bhp = mul i64 %i.bho, %i.bgu                 ; 2 uses
  %i.bhq = ashr i64 %i.bhp, 63
  %i.bhr = add i64 %i.bhp, 32768
  %i.bhs = add i64 %i.bhr, %i.bhq
  %i.bht = ashr i64 %i.bhs, 16
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bhv = load i64, ptr %i.bhu, align 8, !tbaa !257
  %i.bhw = load i64, ptr %i.bdt, align 8, !tbaa !257
  %i.bhx = sub i64 %i.bhv, %i.bhw
  %i.bhy = mul i64 %i.bhx, %i.bgv                 ; 2 uses
  %i.bhz = ashr i64 %i.bhy, 63
  %i.bia = add i64 %i.bhy, 32768
  %i.bib = add i64 %i.bia, %i.bhz
  %i.bic = ashr i64 %i.bib, 16
  %i.bid = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bie = call i64 %i.bid(ptr noundef nonnull %0, i64 noundef %i.bht, i64 noundef %i.bic) #21, !inline_history !582
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %.pre-phi146.i = phi i64 [ %i.bgz, %bb.lm ], [ %i.bhk, %bb.ln ]
  %.0121.i = phi i64 [ %i.bhi, %bb.lm ], [ %i.bie, %bb.ln ] ; 3 uses
  %i.bif = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.big = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bih = getelementptr inbounds nuw [16 x i8], ptr %i.big, i64 %.pre-phi146.i ; 2 uses
  %i.bii = load i64, ptr %i.bih, align 8, !tbaa !230
  %i.bij = load i64, ptr %i.bdu, align 8, !tbaa !230
  %i.bik = sub i64 %i.bii, %i.bij
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bih, i64 8
  %i.bim = load i64, ptr %i.bil, align 8, !tbaa !257
  %i.bin = load i64, ptr %i.bds, align 8, !tbaa !257
  %i.bio = sub i64 %i.bim, %i.bin
  %i.bip = call i64 %i.bif(ptr noundef nonnull %0, i64 noundef %i.bik, i64 noundef %i.bio) #21, !inline_history !582
  %.not133.i = icmp eq i64 %.0121.i, 0
  %brmerge.i = or i1 %.not134180.i, %.not133.i
  br i1 %brmerge.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.biq = call i64 @FT_MulDiv(i64 noundef %.0121.i, i64 noundef %.0123171178.i, i64 noundef %.1172177.i) #21
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %.0120.i = phi i64 [ %i.biq, %bb.lp ], [ %.0121.i, %bb.lo ]
  %i.bir = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bis = trunc i64 %i.bgp to i16
  %i.bit = sub i64 %.0120.i, %i.bip
  call void %i.bir(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %i.bis, i64 noundef %i.bit) #21, !inline_history !582
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lk
  %i.biu = add nsw i64 %i.bgn, -1
  %.not131.i = icmp eq i64 %i.bgn, 0
  br i1 %.not131.i, label %.loopexit.i508, label %.lr.ph.split.i510

.loopexit.sink.split.i:                           ; preds = %bb.ks, %bb.kq
  %.sink.i507 = phi i32 [ 129, %bb.kq ], [ 134, %bb.ks ]
  store i32 %.sink.i507, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i508

.loopexit.i508:                                   ; preds = %bb.lr, %bb.lj, %bb.le, %.thread750, %.loopexit.sink.split.i, %.thread165.i, %bb.lb, %bb.ks, %bb.kq
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.ls:                                            ; preds = %bb.f, %bb.f
  %i.biv = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.biw = trunc i64 %i.biv to i16                ; 5 uses
  %i.bix = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not.i516 = icmp ugt i16 %i.bix, %i.biw
  br i1 %.not.i516, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.biy = load i16, ptr %i.cm, align 8, !tbaa !260 ; 3 uses
  %i.biz = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not43.i518 = icmp ult i16 %i.biy, %i.biz
  br i1 %.not43.i518, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bja = load i8, ptr %i.i, align 2, !tbaa !163
  %.not45.i517 = icmp eq i8 %i.bja, 0
  br i1 %.not45.i517, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.lv:                                            ; preds = %bb.lt
  %i.bjb = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.bjc = icmp eq i16 %i.bjb, 0
  br i1 %i.bjc, label %bb.lw, label %._crit_edge.i519

._crit_edge.i519:                                 ; preds = %bb.lv
  %.pre46.i = and i64 %i.biv, 65535
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.bjd = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bje = and i64 %i.biv, 65535                  ; 4 uses
  %i.bjf = getelementptr inbounds nuw [16 x i8], ptr %i.bjd, i64 %i.bje
  %i.bjg = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bjh = zext i16 %i.biy to i64
  %i.bji = getelementptr inbounds nuw [16 x i8], ptr %i.bjg, i64 %i.bjh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf, ptr noundef nonnull align 8 dereferenceable(16) %i.bji, i64 16, i1 false), !tbaa.struct !299
  %i.bjj = load ptr, ptr %i.au, align 8, !tbaa !251
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bjl = load i64, ptr %i.bjk, align 8, !tbaa !185
  call void %i.bjj(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.biw, i64 noundef %i.bjl) #21, !inline_history !584
  %i.bjm = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.bjn = getelementptr inbounds nuw [16 x i8], ptr %i.bjm, i64 %i.bje
  %i.bjo = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bjp = getelementptr inbounds nuw [16 x i8], ptr %i.bjo, i64 %i.bje
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjn, ptr noundef nonnull align 8 dereferenceable(16) %i.bjp, i64 16, i1 false), !tbaa.struct !299
  %.pre.i522 = load i16, ptr %i.cm, align 8, !tbaa !260
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %._crit_edge.i519
  %.pre-phi.i520 = phi i64 [ %.pre46.i, %._crit_edge.i519 ], [ %i.bje, %bb.lw ]
  %i.bjq = phi i16 [ %i.biy, %._crit_edge.i519 ], [ %.pre.i522, %bb.lw ]
  %i.bjr = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bjs = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.bjt = getelementptr inbounds nuw [16 x i8], ptr %i.bjs, i64 %.pre-phi.i520 ; 2 uses
  %i.bju = load i64, ptr %i.bjt, align 8, !tbaa !230
  %i.bjv = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bjw = zext i16 %i.bjq to i64
  %i.bjx = getelementptr inbounds nuw [16 x i8], ptr %i.bjv, i64 %i.bjw ; 2 uses
  %i.bjy = load i64, ptr %i.bjx, align 8, !tbaa !230
  %i.bjz = sub i64 %i.bju, %i.bjy
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8
  %i.bkb = load i64, ptr %i.bka, align 8, !tbaa !257
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjx, i64 8
  %i.bkd = load i64, ptr %i.bkc, align 8, !tbaa !257
  %i.bke = sub i64 %i.bkb, %i.bkd
  %i.bkf = call i64 %i.bjr(ptr noundef nonnull %0, i64 noundef %i.bjz, i64 noundef %i.bke) #21, !inline_history !584
  %i.bkg = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bki = load i64, ptr %i.bkh, align 8, !tbaa !185
  %i.bkj = sub i64 %i.bki, %i.bkf
  call void %i.bkg(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.biw, i64 noundef %i.bkj) #21, !inline_history !584
  %i.bkk = load i16, ptr %i.cm, align 8, !tbaa !260
  store i16 %i.bkk, ptr %i.cn, align 2, !tbaa !261
  store i16 %i.biw, ptr %i.co, align 4, !tbaa !262
  %i.bkl = load i8, ptr %i.e, align 8, !tbaa !238
  %i.bkm = and i8 %i.bkl, 1
  %.not44.i521 = icmp eq i8 %i.bkm, 0
  br i1 %.not44.i521, label %Ins_SPVTL.exitthread-pre-split, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  store i16 %i.biw, ptr %i.cm, align 8, !tbaa !260
  br label %Ins_SPVTL.exitthread-pre-split

bb.lz:                                            ; preds = %bb.f
  %i.bkn = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.bko = icmp slt i64 %i.er, %i.bkn
  br i1 %i.bko, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.bkp = load i8, ptr %i.i, align 2, !tbaa !163
  %.not40.i531 = icmp eq i8 %i.bkp, 0
  br i1 %.not40.i531, label %.loopexit.i527, label %.loopexit.sink.split.i525

bb.mb:                                            ; preds = %bb.lz
  %i.bkq = sub nsw i64 %i.er, %i.bkn
  store i64 %i.bkq, ptr %i.k, align 8, !tbaa !241
  %i.bkr = load i16, ptr %i.cm, align 8, !tbaa !260
  %i.bks = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i523 = icmp ult i16 %i.bkr, %i.bks
  br i1 %.not.i523, label %.preheader.i, label %bb.mc

.preheader.i:                                     ; preds = %bb.mb
  %.not3641.i = icmp eq i64 %i.bkn, 0
  br i1 %.not3641.i, label %.loopexit.i527, label %.lr.ph.i528

bb.mc:                                            ; preds = %bb.mb
  %i.bkt = load i8, ptr %i.i, align 2, !tbaa !163
  %.not39.i524 = icmp eq i8 %i.bkt, 0
  br i1 %.not39.i524, label %.loopexit.i527, label %.loopexit.sink.split.i525

.lr.ph.i528:                                      ; preds = %.preheader.i, %bb.mf
  %.in.i529 = phi i64 [ %i.bku, %bb.mf ], [ %i.bkn, %.preheader.i ]
  %.03242.i = phi ptr [ %i.bkv, %bb.mf ], [ %i.ew, %.preheader.i ]
  %i.bku = add nsw i64 %.in.i529, -1              ; 2 uses
  %i.bkv = getelementptr inbounds i8, ptr %.03242.i, i64 -8 ; 2 uses
  %i.bkw = load i64, ptr %i.bkv, align 8, !tbaa !185 ; 2 uses
  %i.bkx = load i16, ptr %i.ad, align 8, !tbaa !255
  %16 = trunc i64 %i.bkw to i16                   ; 2 uses
  %.not37.i = icmp ugt i16 %i.bkx, %16
  br i1 %.not37.i, label %bb.me, label %bb.md

bb.md:                                            ; preds = %.lr.ph.i528
  %i.bky = load i8, ptr %i.i, align 2, !tbaa !163
  %.not38.i530 = icmp eq i8 %i.bky, 0
  br i1 %.not38.i530, label %bb.mf, label %.loopexit.sink.split

bb.me:                                            ; preds = %.lr.ph.i528
  %i.bkz = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bla = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.blb = and i64 %i.bkw, 65535
  %i.blc = getelementptr inbounds nuw [16 x i8], ptr %i.bla, i64 %i.blb ; 2 uses
  %i.bld = load i64, ptr %i.blc, align 8, !tbaa !230
  %i.ble = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.blf = load i16, ptr %i.cm, align 8, !tbaa !260
  %i.blg = zext i16 %i.blf to i64
  %i.blh = getelementptr inbounds nuw [16 x i8], ptr %i.ble, i64 %i.blg ; 2 uses
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !230
  %i.blj = sub i64 %i.bld, %i.bli
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blc, i64 8
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !257
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  %i.bln = load i64, ptr %i.blm, align 8, !tbaa !257
  %i.blo = sub i64 %i.bll, %i.bln
  %i.blp = call i64 %i.bkz(ptr noundef nonnull %0, i64 noundef %i.blj, i64 noundef %i.blo) #21, !inline_history !585
  %i.blq = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.blr = sub i64 0, %i.blp
  call void %i.blq(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %16, i64 noundef %i.blr) #21, !inline_history !585
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.not36.i = icmp eq i64 %i.bku, 0
  br i1 %.not36.i, label %.loopexit.i527, label %.lr.ph.i528, !llvm.loop !586

.loopexit.sink.split.i525:                        ; preds = %bb.mc, %bb.ma
  %.sink.i526 = phi i32 [ 129, %bb.ma ], [ 134, %bb.mc ]
  store i32 %.sink.i526, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i527

.loopexit.i527:                                   ; preds = %bb.mf, %.loopexit.sink.split.i525, %bb.mc, %.preheader.i, %bb.ma
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.mg:                                            ; preds = %bb.f
  store i32 2, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_To_Double_Grid, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.mh:                                            ; preds = %bb.f, %bb.f
  %.val322 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.bls = getelementptr i8, ptr %i.ew, i64 8
  %.val323 = load i64, ptr %i.bls, align 8, !tbaa !185 ; 2 uses
  %i.blt = trunc i64 %.val322 to i16              ; 4 uses
  %i.blu = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i532 = icmp ugt i16 %i.blu, %i.blt
  br i1 %.not.i532, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.blv = load i64, ptr %i.bn, align 8, !tbaa !175
  %.not55.i534 = icmp ult i64 %.val323, %i.blv
  br i1 %.not55.i534, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %i.blw = load i8, ptr %i.i, align 2, !tbaa !163
  %.not57.i533 = icmp eq i8 %i.blw, 0
  br i1 %.not57.i533, label %Ins_MIAP.exit, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_MIAP.exit

bb.ml:                                            ; preds = %bb.mi
  %i.blx = load ptr, ptr %i.ce, align 8, !tbaa !300
  %i.bly = call i64 %i.blx(ptr noundef nonnull %0, i64 noundef %.val323) #21, !inline_history !587 ; 5 uses
  %i.blz = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.bma = icmp eq i16 %i.blz, 0
  br i1 %i.bma, label %bb.mm, label %._crit_edge.i535

._crit_edge.i535:                                 ; preds = %bb.ml
  %.pre.i536 = and i64 %.val322, 65535
  br label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bmb = load i16, ptr %i.ap, align 4, !tbaa !246
  %i.bmc = sext i16 %i.bmb to i64
  %i.bmd = mul i64 %i.bly, %i.bmc                 ; 2 uses
  %i.bme = ashr i64 %i.bmd, 63
  %i.bmf = add i64 %i.bmd, 8192
  %i.bmg = add i64 %i.bmf, %i.bme
  %i.bmh = ashr i64 %i.bmg, 14
  %i.bmi = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bmj = and i64 %.val322, 65535                ; 3 uses
  %i.bmk = getelementptr inbounds nuw [16 x i8], ptr %i.bmi, i64 %i.bmj ; 3 uses
  store i64 %i.bmh, ptr %i.bmk, align 8, !tbaa !230
  %i.bml = load i16, ptr %i.aq, align 2, !tbaa !247
  %i.bmm = sext i16 %i.bml to i64
  %i.bmn = mul i64 %i.bly, %i.bmm                 ; 2 uses
  %i.bmo = ashr i64 %i.bmn, 63
  %i.bmp = add i64 %i.bmn, 8192
  %i.bmq = add i64 %i.bmp, %i.bmo
  %i.bmr = ashr i64 %i.bmq, 14
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  store i64 %i.bmr, ptr %i.bms, align 8, !tbaa !257
  %i.bmt = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bmu = getelementptr inbounds nuw [16 x i8], ptr %i.bmt, i64 %i.bmj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmu, ptr noundef nonnull align 8 dereferenceable(16) %i.bmk, i64 16, i1 false), !tbaa.struct !299
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %._crit_edge.i535
  %.pre-phi.i537 = phi i64 [ %.pre.i536, %._crit_edge.i535 ], [ %i.bmj, %bb.mm ]
  %i.bmv = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bmw = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bmx = getelementptr inbounds nuw [16 x i8], ptr %i.bmw, i64 %.pre-phi.i537 ; 2 uses
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !230
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmx, i64 8
  %i.bna = load i64, ptr %i.bmz, align 8, !tbaa !257
  %i.bnb = call i64 %i.bmv(ptr noundef nonnull %0, i64 noundef %i.bmy, i64 noundef %i.bna) #21, !inline_history !587 ; 3 uses
  %i.bnc = load i8, ptr %i.e, align 8, !tbaa !238
  %i.bnd = and i8 %i.bnc, 1
  %.not56.i538 = icmp eq i8 %i.bnd, 0
  br i1 %.not56.i538, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bne = load i64, ptr %i.cl, align 8, !tbaa !273
  %i.bnf = sub i64 %i.bly, %i.bnb
  %spec.select.i539 = call i64 @llvm.abs.i64(i64 %i.bnf, i1 false)
  %i.bng = icmp sgt i64 %spec.select.i539, %i.bne
  %.051.i = select i1 %i.bng, i64 %i.bnb, i64 %i.bly
  %i.bnh = load ptr, ptr %i.be, align 8, !tbaa !265
  %i.bni = call i64 %i.bnh(ptr noundef nonnull %0, i64 noundef %.051.i, i64 noundef 0) #21, !inline_history !587
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn
  %.1.i540 = phi i64 [ %i.bni, %bb.mo ], [ %i.bly, %bb.mn ]
  %i.bnj = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bnk = sub i64 %.1.i540, %i.bnb
  call void %i.bnj(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.blt, i64 noundef %i.bnk) #21, !inline_history !587
  br label %Ins_MIAP.exit

Ins_MIAP.exit:                                    ; preds = %bb.mj, %bb.mk, %bb.mp
  store i16 %i.blt, ptr %i.cm, align 8, !tbaa !260
  store i16 %i.blt, ptr %i.cn, align 2, !tbaa !261
  br label %Ins_SPVTL.exitthread-pre-split

bb.mq:                                            ; preds = %bb.f
  %i.bnl = load i64, ptr %i.d, align 8, !tbaa !206
  %i.bnm = add nsw i64 %i.bnl, 1                  ; 6 uses
  %i.bnn = load i64, ptr %i.s, align 8, !tbaa !205 ; 2 uses
  %.not.i541 = icmp slt i64 %i.bnm, %i.bnn
  br i1 %.not.i541, label %bb.mr, label %.loopexit.sink.split

bb.mr:                                            ; preds = %bb.mq
  %i.bno = getelementptr inbounds i8, ptr %i.dv, i64 %i.bnm
  %i.bnp = load i8, ptr %i.bno, align 1, !tbaa !186 ; 4 uses
  %i.bnq = zext i8 %i.bnp to i64                  ; 4 uses
  %i.bnr = add nsw i64 %i.bnm, %i.bnq
  %.not28.i542 = icmp slt i64 %i.bnr, %i.bnn
  br i1 %.not28.i542, label %bb.ms, label %.loopexit.sink.split

bb.ms:                                            ; preds = %bb.mr
  %i.bns = zext i8 %i.bnp to i32
  %i.bnt = add nuw nsw i64 %i.es, 1
  %i.bnu = load i64, ptr %i.g, align 8, !tbaa !240
  %i.bnv = sub i64 %i.bnt, %i.bnu
  %i.bnw = trunc i64 %i.bnv to i32
  %.not29.i543 = icmp ult i32 %i.bns, %i.bnw
  br i1 %.not29.i543, label %.preheader.i544, label %.loopexit.sink.split

.preheader.i544:                                  ; preds = %bb.ms
  %.not32.i = icmp eq i8 %i.bnp, 0
  br i1 %.not32.i, label %._crit_edge.i550, label %.lr.ph.i546.preheader

.lr.ph.i546.preheader:                            ; preds = %.preheader.i544
  %xtraiter1396 = and i64 %i.bnq, 3               ; 3 uses
  %i.bnx = icmp ult i8 %i.bnp, 4
  br i1 %i.bnx, label %.lr.ph.i546.epil.preheader, label %.lr.ph.i546.preheader.new

.lr.ph.i546.preheader.new:                        ; preds = %.lr.ph.i546.preheader
  %unroll_iter1400 = and i64 %i.bnq, 252
  br label %.lr.ph.i546

.lr.ph.i546:                                      ; preds = %.lr.ph.i546, %.lr.ph.i546.preheader.new
  %indvars.iv.i547 = phi i64 [ 0, %.lr.ph.i546.preheader.new ], [ %indvars.iv.next.i548.3, %.lr.ph.i546 ] ; 5 uses
  %.02430.i = phi i64 [ %i.bnm, %.lr.ph.i546.preheader.new ], [ %i.bop, %.lr.ph.i546 ] ; 4 uses
  %niter1401 = phi i64 [ 0, %.lr.ph.i546.preheader.new ], [ %niter1401.next.3, %.lr.ph.i546 ]
  %i.bny = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.bnz = getelementptr i8, ptr %i.bny, i64 1
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !186
  %i.bob = zext i8 %i.boa to i64
  %i.boc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i547
  store i64 %i.bob, ptr %i.boc, align 8, !tbaa !185
  %i.bod = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.boe = getelementptr i8, ptr %i.bod, i64 2
  %i.bof = load i8, ptr %i.boe, align 1, !tbaa !186
  %i.bog = zext i8 %i.bof to i64
  %i.boh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i547
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 8
  store i64 %i.bog, ptr %i.boi, align 8, !tbaa !185
  %i.boj = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.bok = getelementptr i8, ptr %i.boj, i64 3
  %i.bol = load i8, ptr %i.bok, align 1, !tbaa !186
  %i.bom = zext i8 %i.bol to i64
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i547
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 16
  store i64 %i.bom, ptr %i.boo, align 8, !tbaa !185
  %i.bop = add nsw i64 %.02430.i, 4               ; 4 uses
  %i.boq = getelementptr inbounds i8, ptr %i.dv, i64 %i.bop
  %i.bor = load i8, ptr %i.boq, align 1, !tbaa !186
  %i.bos = zext i8 %i.bor to i64
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i547
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 24
  store i64 %i.bos, ptr %i.bou, align 8, !tbaa !185
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i547, 4 ; 2 uses
  %niter1401.next.3 = add i64 %niter1401, 4       ; 2 uses
  %niter1401.ncmp.3 = icmp eq i64 %niter1401.next.3, %unroll_iter1400
  br i1 %niter1401.ncmp.3, label %._crit_edge.i550.loopexit.unr-lcssa, label %.lr.ph.i546, !llvm.loop !588

._crit_edge.i550.loopexit.unr-lcssa:              ; preds = %.lr.ph.i546
  %lcmp.mod1397.not = icmp eq i64 %xtraiter1396, 0
  br i1 %lcmp.mod1397.not, label %._crit_edge.i550.loopexit, label %.lr.ph.i546.epil.preheader

.lr.ph.i546.epil.preheader:                       ; preds = %._crit_edge.i550.loopexit.unr-lcssa, %.lr.ph.i546.preheader
  %indvars.iv.i547.epil.init = phi i64 [ 0, %.lr.ph.i546.preheader ], [ %indvars.iv.next.i548.3, %._crit_edge.i550.loopexit.unr-lcssa ]
  %.02430.i.epil.init = phi i64 [ %i.bnm, %.lr.ph.i546.preheader ], [ %i.bop, %._crit_edge.i550.loopexit.unr-lcssa ]
  %lcmp.mod1399 = icmp ne i64 %xtraiter1396, 0
  call void @llvm.assume(i1 %lcmp.mod1399)
  br label %.lr.ph.i546.epil

.lr.ph.i546.epil:                                 ; preds = %.lr.ph.i546.epil, %.lr.ph.i546.epil.preheader
  %indvars.iv.i547.epil = phi i64 [ %indvars.iv.next.i548.epil, %.lr.ph.i546.epil ], [ %indvars.iv.i547.epil.init, %.lr.ph.i546.epil.preheader ] ; 2 uses
  %.02430.i.epil = phi i64 [ %i.bov, %.lr.ph.i546.epil ], [ %.02430.i.epil.init, %.lr.ph.i546.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i546.epil ], [ 0, %.lr.ph.i546.epil.preheader ]
  %i.bov = add nsw i64 %.02430.i.epil, 1          ; 3 uses
  %i.bow = getelementptr inbounds i8, ptr %i.dv, i64 %i.bov
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !186
  %i.boy = zext i8 %i.box to i64
  %i.boz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i547.epil
  store i64 %i.boy, ptr %i.boz, align 8, !tbaa !185
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i547.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1396
  br i1 %epil.iter.cmp.not, label %._crit_edge.i550.loopexit, label %.lr.ph.i546.epil, !llvm.loop !589

._crit_edge.i550.loopexit:                        ; preds = %.lr.ph.i546.epil, %._crit_edge.i550.loopexit.unr-lcssa
  %.lcssa1381 = phi i64 [ %i.bop, %._crit_edge.i550.loopexit.unr-lcssa ], [ %i.bov, %.lr.ph.i546.epil ]
  %.pre1009 = load i64, ptr %i.k, align 8, !tbaa !241
  br label %._crit_edge.i550

._crit_edge.i550:                                 ; preds = %._crit_edge.i550.loopexit, %.preheader.i544
  %i.bpa = phi i64 [ %i.er, %.preheader.i544 ], [ %.pre1009, %._crit_edge.i550.loopexit ]
  %.024.lcssa.i = phi i64 [ %i.bnm, %.preheader.i544 ], [ %.lcssa1381, %._crit_edge.i550.loopexit ]
  %i.bpb = add nsw i64 %i.bpa, %i.bnq
  store i64 %i.bpb, ptr %i.k, align 8, !tbaa !241
  store i64 %.024.lcssa.i, ptr %i.d, align 8, !tbaa !206
  br label %Ins_SPVTL.exitthread-pre-split
end_hunk_5
begin_hunk_6_@TT_RunIns:bb.a
  %.02733.i.epil.init = phi i64 [ %i.bpd, %.lr.ph.preheader.i555 ], [ %i.bqi, %._crit_edge.i561.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1395 = trunc i8 %i.bpg to i1
  call void @llvm.assume(i1 %lcmp.mod1395)
  %i.bqp = getelementptr i8, ptr %i.dv, i64 %.02733.i.epil.init
  %i.bqq = getelementptr i8, ptr %i.bqp, i64 1
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !186
  %i.bqs = zext i8 %i.bqr to i16
  %i.bqt = shl nuw i16 %i.bqs, 8
  %i.bqu = sext i16 %i.bqt to i64
  %i.bqv = add nsw i64 %.02733.i.epil.init, 2     ; 2 uses
  %i.bqw = getelementptr inbounds i8, ptr %i.dv, i64 %i.bqv
  %i.bqx = load i8, ptr %i.bqw, align 1, !tbaa !186
  %i.bqy = zext i8 %i.bqx to i64
  %i.bqz = or disjoint i64 %i.bqu, %i.bqy
  %i.bra = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i558.epil.init
  store i64 %i.bqz, ptr %i.bra, align 8, !tbaa !185
  br label %._crit_edge.i561.loopexit

._crit_edge.i561.loopexit:                        ; preds = %._crit_edge.i561.loopexit.unr-lcssa, %.lr.ph.i557.epil.preheader
  %.lcssa1380 = phi i64 [ %i.bqi, %._crit_edge.i561.loopexit.unr-lcssa ], [ %i.bqv, %.lr.ph.i557.epil.preheader ]
  %.pre1008 = load i64, ptr %i.k, align 8, !tbaa !241
  br label %._crit_edge.i561

._crit_edge.i561:                                 ; preds = %.preheader.i554, %._crit_edge.i561.loopexit
  %.pre-phi = phi i64 [ %wide.trip.count.i556, %._crit_edge.i561.loopexit ], [ 0, %.preheader.i554 ]
  %i.brb = phi i64 [ %.pre1008, %._crit_edge.i561.loopexit ], [ %i.er, %.preheader.i554 ]
  %.027.lcssa.i = phi i64 [ %.lcssa1380, %._crit_edge.i561.loopexit ], [ %i.bpd, %.preheader.i554 ]
  %i.brc = add nsw i64 %i.brb, %.pre-phi
  store i64 %i.brc, ptr %i.k, align 8, !tbaa !241
  store i64 %.027.lcssa.i, ptr %i.d, align 8, !tbaa !206
  br label %Ins_SPVTL.exitthread-pre-split

bb.mw:                                            ; preds = %bb.f
  %i.brd = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bre = load i16, ptr %i.cg, align 8, !tbaa !173
  %i.brf = zext i16 %i.bre to i64                 ; 2 uses
  %.not.i562 = icmp ult i64 %i.brd, %i.brf
  br i1 %.not.i562, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.brg = load i8, ptr %i.i, align 2, !tbaa !163
  %.not28.i563 = icmp eq i8 %i.brg, 0
  br i1 %.not28.i563, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.my:                                            ; preds = %bb.mw
  %i.brh = load i32, ptr %i.t, align 8, !tbaa !208
  %i.bri = icmp eq i32 %i.brh, 3
  %i.brj = load ptr, ptr %i.ch, align 8, !tbaa !190 ; 3 uses
  br i1 %i.bri, label %bb.mz, label %._crit_edge.i564

bb.mz:                                            ; preds = %bb.my
  %i.brk = load ptr, ptr %i.ci, align 8, !tbaa !301 ; 2 uses
  %.not26.i = icmp eq ptr %i.brj, %i.brk
  br i1 %.not26.i, label %._crit_edge.i564, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.brl = load ptr, ptr %i.cj, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.brm = load i16, ptr %i.ck, align 8, !tbaa !302
  %i.brn = zext i16 %i.brm to i64
  %i.bro = call ptr @ft_mem_qrealloc(ptr noundef %i.brl, i64 noundef 8, i64 noundef %i.brn, i64 noundef %i.brf, ptr noundef %i.brk, ptr noundef nonnull %i.a) #21 ; 2 uses
  store ptr %i.bro, ptr %i.ci, align 8, !tbaa !301
  %i.brp = load i32, ptr %i.a, align 4, !tbaa !152 ; 3 uses
  store i32 %i.brp, ptr %i.b, align 8, !tbaa !237
  %.not27.i = icmp eq i32 %i.brp, 0
  br i1 %.not27.i, label %bb.nb, label %.critedge.i565

bb.nb:                                            ; preds = %bb.na
  %i.brq = load i16, ptr %i.cg, align 8, !tbaa !173 ; 2 uses
  store i16 %i.brq, ptr %i.ck, align 8, !tbaa !302
  %i.brr = load ptr, ptr %i.ch, align 8, !tbaa !190
  %i.brs = zext i16 %i.brq to i64
  %i.brt = shl nuw nsw i64 %i.brs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bro, ptr align 8 %i.brr, i64 %i.brt, i1 false)
  %i.bru = load ptr, ptr %i.ci, align 8, !tbaa !301 ; 2 uses
  store ptr %i.bru, ptr %i.ch, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %._crit_edge.i564

._crit_edge.i564:                                 ; preds = %bb.nb, %bb.mz, %bb.my
  %i.brv = phi ptr [ %i.brj, %bb.mz ], [ %i.bru, %bb.nb ], [ %i.brj, %bb.my ]
  %i.brw = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !185
  %i.bry = getelementptr inbounds nuw [8 x i8], ptr %i.brv, i64 %i.brd
  store i64 %i.brx, ptr %i.bry, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

.critedge.i565:                                   ; preds = %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %Ins_SPVTL.exit

bb.nc:                                            ; preds = %bb.f
  %i.brz = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bsa = load i16, ptr %i.cg, align 8, !tbaa !173
  %i.bsb = zext i16 %i.bsa to i64
  %.not.i566 = icmp ult i64 %i.brz, %i.bsb
  br i1 %.not.i566, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.bsc = load i8, ptr %i.i, align 2, !tbaa !163
  %.not8.i = icmp eq i8 %i.bsc, 0
  br i1 %.not8.i, label %bb.nf, label %.loopexit.sink.split

bb.ne:                                            ; preds = %bb.nc
  %i.bsd = load ptr, ptr %i.ch, align 8, !tbaa !190
  %i.bse = getelementptr inbounds nuw [8 x i8], ptr %i.bsd, i64 %i.brz
  %i.bsf = load i64, ptr %i.bse, align 8, !tbaa !185
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %storemerge.i567 = phi i64 [ %i.bsf, %bb.ne ], [ 0, %bb.nd ]
  store i64 %storemerge.i567, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.ng:                                            ; preds = %bb.f
  %i.bsg = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bsh = load i64, ptr %i.bn, align 8, !tbaa !175
  %.not.i568 = icmp ult i64 %i.bsg, %i.bsh
  br i1 %.not.i568, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bsi = load i8, ptr %i.i, align 2, !tbaa !163
  %.not8.i569 = icmp eq i8 %i.bsi, 0
  br i1 %.not8.i569, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ni:                                            ; preds = %bb.ng
  %i.bsj = load ptr, ptr %i.cf, align 8, !tbaa !303
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bsl = load i64, ptr %i.bsk, align 8, !tbaa !185
  call void %i.bsj(ptr noundef nonnull %0, i64 noundef %i.bsg, i64 noundef %i.bsl) #21, !inline_history !591
  br label %Ins_SPVTL.exitthread-pre-split

bb.nj:                                            ; preds = %bb.f
  %i.bsm = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bsn = load i64, ptr %i.bn, align 8, !tbaa !175
  %.not.i570 = icmp ult i64 %i.bsm, %i.bsn
  br i1 %.not.i570, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.bso = load i8, ptr %i.i, align 2, !tbaa !163
  %.not9.i = icmp eq i8 %i.bso, 0
  br i1 %.not9.i, label %bb.nm, label %.loopexit.sink.split

bb.nl:                                            ; preds = %bb.nj
  %i.bsp = load ptr, ptr %i.ce, align 8, !tbaa !300
  %i.bsq = call i64 %i.bsp(ptr noundef nonnull %0, i64 noundef %i.bsm) #21, !inline_history !592
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %storemerge.i571 = phi i64 [ %i.bsq, %bb.nl ], [ 0, %bb.nk ]
  store i64 %storemerge.i571, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.nn:                                            ; preds = %bb.f, %bb.f
  %i.bsr = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.bss = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.bst = zext i16 %i.bss to i64
  %.not.i572 = icmp ult i64 %i.bsr, %i.bst
  br i1 %.not.i572, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bsu = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i573 = icmp eq i8 %i.bsu, 0
  br i1 %.not21.i573, label %Ins_GC.exit, label %bb.np

bb.np:                                            ; preds = %bb.no
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_GC.exit

bb.nq:                                            ; preds = %bb.nn
  %i.bsv = and i8 %i.dy, 1
  %.not20.i575 = icmp eq i8 %i.bsv, 0
  br i1 %.not20.i575, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bsw = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bsx = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.bsy = getelementptr inbounds nuw [16 x i8], ptr %i.bsx, i64 %i.bsr ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !230
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsy, i64 8
  %i.btb = load i64, ptr %i.bta, align 8, !tbaa !257
  %i.btc = call i64 %i.bsw(ptr noundef nonnull %0, i64 noundef %i.bsz, i64 noundef %i.btb) #21, !inline_history !593
  br label %Ins_GC.exit

bb.ns:                                            ; preds = %bb.nq
  %i.btd = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bte = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.btf = getelementptr inbounds nuw [16 x i8], ptr %i.bte, i64 %i.bsr ; 2 uses
  %i.btg = load i64, ptr %i.btf, align 8, !tbaa !230
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btf, i64 8
  %i.bti = load i64, ptr %i.bth, align 8, !tbaa !257
  %i.btj = call i64 %i.btd(ptr noundef nonnull %0, i64 noundef %i.btg, i64 noundef %i.bti) #21, !inline_history !593
  br label %Ins_GC.exit

Ins_GC.exit:                                      ; preds = %bb.no, %bb.np, %bb.nr, %bb.ns
  %.0.i574 = phi i64 [ %i.btj, %bb.ns ], [ %i.btc, %bb.nr ], [ 0, %bb.np ], [ 0, %bb.no ]
  store i64 %.0.i574, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.nt:                                            ; preds = %bb.f
  %i.btk = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.btl = load i16, ptr %i.ae, align 8, !tbaa !617
  %17 = trunc i64 %i.btk to i16                   ; 2 uses
  %.not.i576 = icmp ugt i16 %i.btl, %17
  br i1 %.not.i576, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.btm = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i577 = icmp eq i8 %i.btm, 0
  br i1 %.not21.i577, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.nv:                                            ; preds = %bb.nt
  %i.btn = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bto = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.btp = and i64 %i.btk, 65535                  ; 3 uses
  %i.btq = getelementptr inbounds nuw [16 x i8], ptr %i.bto, i64 %i.btp ; 2 uses
  %i.btr = load i64, ptr %i.btq, align 8, !tbaa !230
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btq, i64 8
  %i.btt = load i64, ptr %i.bts, align 8, !tbaa !257
  %i.btu = call i64 %i.btn(ptr noundef nonnull %0, i64 noundef %i.btr, i64 noundef %i.btt) #21, !inline_history !594
  %i.btv = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.btw = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !185
  %i.bty = sub i64 %i.btx, %i.btu
  call void %i.btv(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %17, i64 noundef %i.bty) #21, !inline_history !594
  %i.btz = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.bua = icmp eq i16 %i.btz, 0
  br i1 %i.bua, label %bb.nw, label %Ins_SPVTL.exitthread-pre-split

bb.nw:                                            ; preds = %bb.nv
  %i.bub = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.buc = getelementptr inbounds nuw [16 x i8], ptr %i.bub, i64 %i.btp
  %i.bud = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bue = getelementptr inbounds nuw [16 x i8], ptr %i.bud, i64 %i.btp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buc, ptr noundef nonnull align 8 dereferenceable(16) %i.bue, i64 16, i1 false), !tbaa.struct !299
  br label %Ins_SPVTL.exitthread-pre-split

bb.nx:                                            ; preds = %bb.f, %bb.f
  %i.buf = load i64, ptr %i.ew, align 8, !tbaa !185 ; 4 uses
  %i.bug = load i16, ptr %i.bu, align 8, !tbaa !258
  %18 = trunc i64 %i.buf to i16
  %.not.i578 = icmp ugt i16 %i.bug, %18
  br i1 %.not.i578, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.buh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bui = load i64, ptr %i.buh, align 8, !tbaa !185 ; 4 uses
  %i.buj = load i16, ptr %i.ad, align 8, !tbaa !255
  %19 = trunc i64 %i.bui to i16
  %.not57.i580 = icmp ugt i16 %i.buj, %19
  br i1 %.not57.i580, label %bb.ob, label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.buk = load i8, ptr %i.i, align 2, !tbaa !163
  %.not59.i = icmp eq i8 %i.buk, 0
  br i1 %.not59.i, label %Ins_MD.exit, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_MD.exit

bb.ob:                                            ; preds = %bb.ny
  %i.bul = and i8 %i.dy, 1
  %.not58.i = icmp eq i8 %i.bul, 0
  br i1 %.not58.i, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bum = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bun = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.buo = and i64 %i.buf, 65535
  %i.bup = getelementptr inbounds nuw [16 x i8], ptr %i.bun, i64 %i.buo ; 2 uses
  %i.buq = load i64, ptr %i.bup, align 8, !tbaa !230
  %i.bur = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.bus = and i64 %i.bui, 65535
  %i.but = getelementptr inbounds nuw [16 x i8], ptr %i.bur, i64 %i.bus ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !230
  %i.buv = sub i64 %i.buq, %i.buu
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bup, i64 8
  %i.bux = load i64, ptr %i.buw, align 8, !tbaa !257
  %i.buy = getelementptr inbounds nuw i8, ptr %i.but, i64 8
  %i.buz = load i64, ptr %i.buy, align 8, !tbaa !257
  %i.bva = sub i64 %i.bux, %i.buz
  %i.bvb = call i64 %i.bum(ptr noundef nonnull %0, i64 noundef %i.buv, i64 noundef %i.bva) #21, !inline_history !595
  br label %Ins_MD.exit

bb.od:                                            ; preds = %bb.ob
  %i.bvc = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.bvd = icmp eq i16 %i.bvc, 0
  br i1 %i.bvd, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.bve = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.bvf = icmp eq i16 %i.bve, 0
  br i1 %i.bvf, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe, %bb.od
  %i.bvg = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bvh = and i64 %i.buf, 65535
  %i.bvi = getelementptr inbounds nuw [16 x i8], ptr %i.bvg, i64 %i.bvh ; 2 uses
  %i.bvj = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bvk = and i64 %i.bui, 65535
  %i.bvl = getelementptr inbounds nuw [16 x i8], ptr %i.bvj, i64 %i.bvk ; 2 uses
  %i.bvm = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bvn = load i64, ptr %i.bvi, align 8, !tbaa !230
  %i.bvo = load i64, ptr %i.bvl, align 8, !tbaa !230
  %i.bvp = sub i64 %i.bvn, %i.bvo
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvi, i64 8
  %i.bvr = load i64, ptr %i.bvq, align 8, !tbaa !257
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8
  %i.bvt = load i64, ptr %i.bvs, align 8, !tbaa !257
  %i.bvu = sub i64 %i.bvr, %i.bvt
  %i.bvv = call i64 %i.bvm(ptr noundef nonnull %0, i64 noundef %i.bvp, i64 noundef %i.bvu) #21, !inline_history !595
  br label %Ins_MD.exit

bb.og:                                            ; preds = %bb.oe
  %i.bvw = load ptr, ptr %i.by, align 8, !tbaa !294
  %i.bvx = and i64 %i.buf, 65535
  %i.bvy = getelementptr inbounds nuw [16 x i8], ptr %i.bvw, i64 %i.bvx ; 4 uses
  %i.bvz = load ptr, ptr %i.bz, align 8, !tbaa !298
  %i.bwa = and i64 %i.bui, 65535
  %i.bwb = getelementptr inbounds nuw [16 x i8], ptr %i.bvz, i64 %i.bwa ; 4 uses
  %i.bwc = load i64, ptr %i.ca, align 8, !tbaa !296 ; 2 uses
  %i.bwd = load i64, ptr %i.cb, align 8, !tbaa !297 ; 2 uses
  %i.bwe = icmp eq i64 %i.bwc, %i.bwd
  br i1 %i.bwe, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.bwf = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bwg = load i64, ptr %i.bvy, align 8, !tbaa !230
  %i.bwh = load i64, ptr %i.bwb, align 8, !tbaa !230
  %i.bwi = sub i64 %i.bwg, %i.bwh
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bvy, i64 8
  %i.bwk = load i64, ptr %i.bwj, align 8, !tbaa !257
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwb, i64 8
  %i.bwm = load i64, ptr %i.bwl, align 8, !tbaa !257
  %i.bwn = sub i64 %i.bwk, %i.bwm
  %i.bwo = call i64 %i.bwf(ptr noundef nonnull %0, i64 noundef %i.bwi, i64 noundef %i.bwn) #21, !inline_history !595
  %i.bwp = load i64, ptr %i.ca, align 8, !tbaa !296
  %i.bwq = mul i64 %i.bwp, %i.bwo                 ; 2 uses
  %i.bwr = ashr i64 %i.bwq, 63
  %i.bws = add i64 %i.bwq, 32768
  %i.bwt = add i64 %i.bws, %i.bwr
  %i.bwu = ashr i64 %i.bwt, 16
  br label %Ins_MD.exit

bb.oi:                                            ; preds = %bb.og
  %i.bwv = load i64, ptr %i.bvy, align 8, !tbaa !230
  %i.bww = load i64, ptr %i.bwb, align 8, !tbaa !230
  %i.bwx = sub nsw i64 %i.bwv, %i.bww
  %i.bwy = mul i64 %i.bwx, %i.bwc                 ; 2 uses
  %i.bwz = ashr i64 %i.bwy, 63
  %i.bxa = add i64 %i.bwy, 32768
  %i.bxb = add i64 %i.bxa, %i.bwz
  %i.bxc = ashr i64 %i.bxb, 16
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bvy, i64 8
  %i.bxe = load i64, ptr %i.bxd, align 8, !tbaa !257
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwb, i64 8
  %i.bxg = load i64, ptr %i.bxf, align 8, !tbaa !257
  %i.bxh = sub nsw i64 %i.bxe, %i.bxg
  %i.bxi = mul i64 %i.bxh, %i.bwd                 ; 2 uses
  %i.bxj = ashr i64 %i.bxi, 63
  %i.bxk = add i64 %i.bxi, 32768
  %i.bxl = add i64 %i.bxk, %i.bxj
  %i.bxm = ashr i64 %i.bxl, 16
  %i.bxn = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bxo = call i64 %i.bxn(ptr noundef nonnull %0, i64 noundef %i.bxc, i64 noundef %i.bxm) #21, !inline_history !595
  br label %Ins_MD.exit

Ins_MD.exit:                                      ; preds = %bb.nz, %bb.oa, %bb.oc, %bb.of, %bb.oh, %bb.oi
  %.1.i579 = phi i64 [ 0, %bb.nz ], [ %i.bvb, %bb.oc ], [ %i.bvv, %bb.of ], [ 0, %bb.oa ], [ %i.bwu, %bb.oh ], [ %i.bxo, %bb.oi ]
  store i64 %.1.i579, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.oj:                                            ; preds = %bb.f
  %i.bxp = load ptr, ptr %i.bk, align 8, !tbaa !304
  %i.bxq = call i64 %i.bxp(ptr noundef nonnull %0) #21, !inline_history !596
  store i64 %i.bxq, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.ok:                                            ; preds = %bb.f
  %i.bxr = load ptr, ptr %0, align 8, !tbaa !189
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxr, i64 176
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !43
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 112
  %i.bxv = load i32, ptr %i.bxu, align 8, !tbaa !28
  %i.bxw = icmp eq i32 %i.bxv, 35
  br i1 %i.bxw, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %i.bxx = load ptr, ptr %i.bk, align 8, !tbaa !304
  %i.bxy = call i64 %i.bxx(ptr noundef nonnull %0) #21, !inline_history !597
  br label %Ins_MPS.exit

bb.om:                                            ; preds = %bb.ok
  %i.bxz = load i64, ptr %i.bt, align 8, !tbaa !195
  br label %Ins_MPS.exit

Ins_MPS.exit:                                     ; preds = %bb.ol, %bb.om
  %storemerge.i581 = phi i64 [ %i.bxz, %bb.om ], [ %i.bxy, %bb.ol ]
  store i64 %storemerge.i581, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.on:                                            ; preds = %bb.f
  store i8 1, ptr %i.bs, align 4, !tbaa !211
  br label %Ins_SPVTL.exitthread-pre-split

bb.oo:                                            ; preds = %bb.f
  store i8 0, ptr %i.bs, align 4, !tbaa !211
  br label %Ins_SPVTL.exitthread-pre-split

bb.op:                                            ; preds = %bb.f
  %i.bya = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byc = load i64, ptr %i.byb, align 8, !tbaa !185
  %i.byd = icmp slt i64 %i.bya, %i.byc
  %i.bye = zext i1 %i.byd to i64
  store i64 %i.bye, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.oq:                                            ; preds = %bb.f
  %i.byf = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byh = load i64, ptr %i.byg, align 8, !tbaa !185
  %i.byi = icmp sle i64 %i.byf, %i.byh
  %i.byj = zext i1 %i.byi to i64
  store i64 %i.byj, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.or:                                            ; preds = %bb.f
  %i.byk = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byl = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bym = load i64, ptr %i.byl, align 8, !tbaa !185
  %i.byn = icmp sgt i64 %i.byk, %i.bym
  %i.byo = zext i1 %i.byn to i64
  store i64 %i.byo, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.os:                                            ; preds = %bb.f
  %i.byp = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byq = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byr = load i64, ptr %i.byq, align 8, !tbaa !185
  %i.bys = icmp sge i64 %i.byp, %i.byr
  %i.byt = zext i1 %i.bys to i64
  store i64 %i.byt, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.ot:                                            ; preds = %bb.f
  %i.byu = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byv = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byw = load i64, ptr %i.byv, align 8, !tbaa !185
end_hunk_6
begin_hunk_7_@TT_RunIns:bb.a
  br i1 %i.cht, label %bb.rj, label %Ins_SPVTL.exitthread-pre-split

bb.rj:                                            ; preds = %bb.ri
  %i.chu = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.chv = add i64 %i.chu, 1                      ; 2 uses
  store i64 %i.chv, ptr %i.bf, align 8, !tbaa !271
  %i.chw = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.chx = icmp ugt i64 %i.chv, %i.chw
  br i1 %i.chx, label %.sink.split.i.i, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i:                                  ; preds = %bb.re, %bb.rj, %bb.rh, %bb.rf
  %.sink.i.i610 = phi i32 [ 132, %bb.rf ], [ 132, %bb.re ], [ 132, %bb.rh ], [ 139, %bb.rj ] ; 2 uses
  store i32 %.sink.i.i610, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.rk:                                            ; preds = %bb.f
  %i.chy = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.chz = load i64, ptr %i.chy, align 8, !tbaa !185
  %i.cia = icmp eq i64 %i.chz, 0
  br i1 %i.cia, label %bb.rl, label %Ins_SPVTL.exitthread-pre-split

bb.rl:                                            ; preds = %bb.rk
  %i.cib = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.cic = or i64 %i.cib, %i.eo
  %or.cond791 = icmp eq i64 %i.cic, 0
  br i1 %or.cond791, label %.sink.split.i.i611, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.cid = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cie = add i64 %i.cid, %i.cib                 ; 3 uses
  store i64 %i.cie, ptr %i.d, align 8, !tbaa !206
  %i.cif = icmp slt i64 %i.cie, 0
  br i1 %i.cif, label %.sink.split.i.i611, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.cig = load i32, ptr %i.o, align 8, !tbaa !267 ; 2 uses
  %i.cih = icmp sgt i32 %i.cig, 0
  br i1 %i.cih, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.cii = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cij = zext nneg i32 %i.cig to i64
  %i.cik = getelementptr [32 x i8], ptr %i.cii, i64 %i.cij
  %i.cil = getelementptr i8, ptr %i.cik, i64 -8
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !269
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 16
  %i.cio = load i64, ptr %i.cin, align 8, !tbaa !625
  %i.cip = icmp sgt i64 %i.cie, %i.cio
  br i1 %i.cip, label %.sink.split.i.i611, label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  store i32 0, ptr %i.f, align 4, !tbaa !239
  %i.ciq = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.cir = icmp slt i64 %i.ciq, 0
  br i1 %i.cir, label %bb.rq, label %Ins_SPVTL.exitthread-pre-split

bb.rq:                                            ; preds = %bb.rp
  %i.cis = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.cit = add i64 %i.cis, 1                      ; 2 uses
  store i64 %i.cit, ptr %i.bf, align 8, !tbaa !271
  %i.ciu = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.civ = icmp ugt i64 %i.cit, %i.ciu
  br i1 %i.civ, label %.sink.split.i.i611, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i611:                               ; preds = %bb.rl, %bb.rq, %bb.ro, %bb.rm
  %.sink.i.i612 = phi i32 [ 132, %bb.rm ], [ 132, %bb.rl ], [ 132, %bb.ro ], [ 139, %bb.rq ] ; 2 uses
  store i32 %.sink.i.i612, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.rr:                                            ; preds = %bb.f
  store i32 5, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_None, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.rs:                                            ; preds = %bb.f
  %i.ciw = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i613 = icmp eq ptr %i.ciw, null
  br i1 %.not.i613, label %._crit_edge.i618, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.cix = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.ciy = zext i32 %i.cix to i64
  %.idx.i614 = shl nuw nsw i64 %i.ciy, 5
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciw, i64 %.idx.i614
  %.not40.i615 = icmp eq i32 %i.cix, 0
  br i1 %.not40.i615, label %._crit_edge.i618, label %.lr.ph.i616

.lr.ph.i616:                                      ; preds = %bb.rt, %bb.sa
  %.031.i617 = phi ptr [ %i.ckd, %bb.sa ], [ %i.ciw, %bb.rt ] ; 6 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %.031.i617, i64 24
  %i.cjb = load i32, ptr %i.cja, align 8, !tbaa !276
  %i.cjc = and i32 %i.cjb, 255
  %i.cjd = icmp eq i32 %i.cjc, 123
  br i1 %i.cjd, label %bb.ru, label %bb.sa

bb.ru:                                            ; preds = %.lr.ph.i616
  %i.cje = getelementptr inbounds nuw i8, ptr %.031.i617, i64 28
  %i.cjf = load i8, ptr %i.cje, align 4, !tbaa !277
  %.not28.i620 = icmp eq i8 %i.cjf, 0
  br i1 %.not28.i620, label %bb.sa, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.cjg = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.cjh = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i621 = icmp slt i32 %i.cjg, %i.cjh
  br i1 %.not29.i621, label %bb.rw, label %.loopexit.sink.split

bb.rw:                                            ; preds = %bb.rv
  %i.cji = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cjj = add nsw i32 %i.cjg, 1
  store i32 %i.cjj, ptr %i.o, align 8, !tbaa !267
  %i.cjk = sext i32 %i.cjg to i64
  %i.cjl = getelementptr inbounds [32 x i8], ptr %i.cji, i64 %i.cjk ; 4 uses
  %i.cjm = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.cjm, ptr %i.cjl, align 8, !tbaa !278
  %i.cjn = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cjo = add nsw i64 %i.cjn, 1
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjl, i64 8
  store i64 %i.cjo, ptr %i.cjp, align 8, !tbaa !279
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjl, i64 16
  store i64 1, ptr %i.cjq, align 8, !tbaa !280
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjl, i64 24
  store ptr %.031.i617, ptr %i.cjr, align 8, !tbaa !269
  %i.cjs = load i32, ptr %.031.i617, align 8, !tbaa !281 ; 3 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %.031.i617, i64 8
  %i.cju = load i64, ptr %i.cjt, align 8, !tbaa !282 ; 2 uses
  %i.cjv = add i32 %i.cjs, -4
  %or.cond.i.i622 = icmp ult i32 %i.cjv, -3
  br i1 %or.cond.i.i622, label %.loopexit.sink.split, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.cjw = zext nneg i32 %i.cjs to i64
  %i.cjx = getelementptr [16 x i8], ptr %0, i64 %i.cjw ; 2 uses
  %i.cjy = getelementptr i8, ptr %i.cjx, i64 720
  %i.cjz = load ptr, ptr %i.cjy, align 8, !tbaa !202 ; 2 uses
  %.not.i.i623 = icmp eq ptr %i.cjz, null
  br i1 %.not.i.i623, label %.loopexit.sink.split, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.cka = getelementptr i8, ptr %i.cjx, i64 728
  %i.ckb = load i64, ptr %i.cka, align 8, !tbaa !203 ; 2 uses
  %i.ckc = icmp sgt i64 %i.cju, %i.ckb
  br i1 %i.ckc, label %.loopexit.sink.split, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  store ptr %i.cjz, ptr %i.c, align 8, !tbaa !204
  store i64 %i.ckb, ptr %i.s, align 8, !tbaa !205
  store i64 %i.cju, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.cjs, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.sa:                                            ; preds = %bb.ru, %.lr.ph.i616
  %i.ckd = getelementptr inbounds nuw i8, ptr %.031.i617, i64 32 ; 2 uses
  %i.cke = icmp ult ptr %i.ckd, %i.ciz
  br i1 %i.cke, label %.lr.ph.i616, label %._crit_edge.i618, !llvm.loop !0

._crit_edge.i618:                                 ; preds = %bb.sa, %bb.rt, %bb.rs
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.sb:                                            ; preds = %bb.f
  store i32 4, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_Up_To_Grid, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.sc:                                            ; preds = %bb.f
  store i32 3, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_Down_To_Grid, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.sd:                                            ; preds = %bb.f
  %i.ckf = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.ckg = icmp slt i64 %i.er, %i.ckf
  br i1 %i.ckg, label %bb.se, label %bb.sg

bb.se:                                            ; preds = %bb.sd
  %i.ckh = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i633 = icmp eq i8 %i.ckh, 0
  br i1 %.not21.i633, label %.loopexit.i632, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i632

bb.sg:                                            ; preds = %bb.sd
  %i.cki = sub nsw i64 %i.er, %i.ckf
  store i64 %i.cki, ptr %i.k, align 8, !tbaa !241
  %i.ckj = load i32, ptr %i.u, align 4, !tbaa !215
  %i.ckk = icmp eq i32 %i.ckj, 7
  %.not22.i625 = icmp eq i64 %i.ckf, 0
  %or.cond.i626 = or i1 %.not22.i625, %i.ckk
  br i1 %or.cond.i626, label %.loopexit.i632, label %.lr.ph.i627

.lr.ph.i627:                                      ; preds = %bb.sg, %bb.sj
  %.in.i628 = phi i64 [ %i.ckl, %bb.sj ], [ %i.ckf, %bb.sg ]
  %.01623.i = phi ptr [ %i.ckm, %bb.sj ], [ %i.ew, %bb.sg ]
  %i.ckl = add nsw i64 %.in.i628, -1              ; 2 uses
  %i.ckm = getelementptr inbounds i8, ptr %.01623.i, i64 -8 ; 2 uses
  %i.ckn = load i64, ptr %i.ckm, align 8, !tbaa !185 ; 2 uses
  %i.cko = load i16, ptr %i.ba, align 8, !tbaa !209
  %20 = trunc i64 %i.ckn to i16
  %.not19.i629 = icmp ugt i16 %i.cko, %20
  br i1 %.not19.i629, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph.i627
  %i.ckp = load i8, ptr %i.i, align 2, !tbaa !163
  %.not20.i630 = icmp eq i8 %i.ckp, 0
  br i1 %.not20.i630, label %bb.sj, label %.loopexit.sink.split

bb.si:                                            ; preds = %.lr.ph.i627
  %i.ckq = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.ckr = and i64 %i.ckn, 65535
  %i.cks = getelementptr inbounds nuw i8, ptr %i.ckq, i64 %i.ckr ; 2 uses
  %i.ckt = load i8, ptr %i.cks, align 1, !tbaa !186
  %i.cku = xor i8 %i.ckt, 1
  store i8 %i.cku, ptr %i.cks, align 1, !tbaa !186
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.not.i631 = icmp eq i64 %i.ckl, 0
  br i1 %.not.i631, label %.loopexit.i632, label %.lr.ph.i627, !llvm.loop !604

.loopexit.i632:                                   ; preds = %bb.sj, %bb.sg, %bb.sf, %bb.se
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.sk:                                            ; preds = %bb.f
  %i.ckv = load i32, ptr %i.u, align 4, !tbaa !215
  %i.ckw = icmp eq i32 %i.ckv, 7
  br i1 %i.ckw, label %Ins_SPVTL.exitthread-pre-split, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.cky = load i64, ptr %i.ckx, align 8, !tbaa !185 ; 2 uses
  %i.ckz = trunc i64 %i.cky to i32
  %i.cla = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.clb = trunc i64 %i.cla to i16                ; 2 uses
  %i.clc = and i32 %i.ckz, 65535                  ; 2 uses
  %i.cld = load i16, ptr %i.ba, align 8, !tbaa !209 ; 2 uses
  %i.cle = zext i16 %i.cld to i32
  %.not.i634 = icmp samesign ult i32 %i.clc, %i.cle
  %.not16.i = icmp ugt i16 %i.cld, %i.clb
  %or.cond.i635 = select i1 %.not.i634, i1 %.not16.i, i1 false
  br i1 %or.cond.i635, label %.preheader.i638, label %bb.sm

.preheader.i638:                                  ; preds = %bb.sl
  %21 = trunc i64 %i.cla to i32
  %22 = and i32 %21, 65535
  %.not1720.i = icmp samesign ult i32 %i.clc, %22
  br i1 %.not1720.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i639

.lr.ph.i639:                                      ; preds = %.preheader.i638
  %i.clf = trunc i64 %i.cky to i16
  br label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  %i.clg = load i8, ptr %i.i, align 2, !tbaa !163
  %.not18.i636 = icmp eq i8 %i.clg, 0
  br i1 %.not18.i636, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.sn:                                            ; preds = %bb.sn, %.lr.ph.i639
  %.021.i = phi i16 [ %i.clb, %.lr.ph.i639 ], [ %i.clm, %bb.sn ] ; 2 uses
  %i.clh = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cli = zext i16 %.021.i to i64
  %i.clj = getelementptr inbounds nuw i8, ptr %i.clh, i64 %i.cli ; 2 uses
  %i.clk = load i8, ptr %i.clj, align 1, !tbaa !186
  %i.cll = or i8 %i.clk, 1
  store i8 %i.cll, ptr %i.clj, align 1, !tbaa !186
  %i.clm = add i16 %.021.i, 1                     ; 2 uses
  %.not17.i = icmp ugt i16 %i.clm, %i.clf
  br i1 %.not17.i, label %Ins_SPVTL.exitthread-pre-split, label %bb.sn, !llvm.loop !605

bb.so:                                            ; preds = %bb.f
  %i.cln = load i32, ptr %i.u, align 4, !tbaa !215
  %i.clo = icmp eq i32 %i.cln, 7
  br i1 %i.clo, label %Ins_SPVTL.exitthread-pre-split, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.clp = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.clq = load i64, ptr %i.clp, align 8, !tbaa !185 ; 2 uses
  %i.clr = trunc i64 %i.clq to i32
  %i.cls = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.clt = trunc i64 %i.cls to i16                ; 2 uses
  %i.clu = and i32 %i.clr, 65535                  ; 2 uses
  %i.clv = load i16, ptr %i.ba, align 8, !tbaa !209 ; 2 uses
  %i.clw = zext i16 %i.clv to i32
  %.not.i640 = icmp samesign ult i32 %i.clu, %i.clw
  %.not16.i641 = icmp ugt i16 %i.clv, %i.clt
  %or.cond.i642 = select i1 %.not.i640, i1 %.not16.i641, i1 false
  br i1 %or.cond.i642, label %.preheader.i645, label %bb.sq

.preheader.i645:                                  ; preds = %bb.sp
  %23 = trunc i64 %i.cls to i32
  %24 = and i32 %23, 65535
  %.not1720.i646 = icmp samesign ult i32 %i.clu, %24
  br i1 %.not1720.i646, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i647

.lr.ph.i647:                                      ; preds = %.preheader.i645
  %i.clx = trunc i64 %i.clq to i16
  br label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  %i.cly = load i8, ptr %i.i, align 2, !tbaa !163
  %.not18.i643 = icmp eq i8 %i.cly, 0
  br i1 %.not18.i643, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.sr:                                            ; preds = %bb.sr, %.lr.ph.i647
  %.021.i648 = phi i16 [ %i.clt, %.lr.ph.i647 ], [ %i.cme, %bb.sr ] ; 2 uses
  %i.clz = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cma = zext i16 %.021.i648 to i64
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.clz, i64 %i.cma ; 2 uses
  %i.cmc = load i8, ptr %i.cmb, align 1, !tbaa !186
  %i.cmd = and i8 %i.cmc, -2
  store i8 %i.cmd, ptr %i.cmb, align 1, !tbaa !186
  %i.cme = add i16 %.021.i648, 1                  ; 2 uses
  %.not17.i649 = icmp ugt i16 %i.cme, %i.clx
  br i1 %.not17.i649, label %Ins_SPVTL.exitthread-pre-split, label %bb.sr, !llvm.loop !606

bb.ss:                                            ; preds = %bb.f, %bb.f
  %i.cmf = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i650 = icmp eq ptr %i.cmf, null
  br i1 %.not.i650, label %._crit_edge.i655, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.cmg = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.cmh = zext i32 %i.cmg to i64
  %.idx.i651 = shl nuw nsw i64 %i.cmh, 5
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmf, i64 %.idx.i651
  %.not40.i652 = icmp eq i32 %i.cmg, 0
  br i1 %.not40.i652, label %._crit_edge.i655, label %.lr.ph.i653

.lr.ph.i653:                                      ; preds = %bb.st, %bb.ta
  %.031.i654 = phi ptr [ %i.cnm, %bb.ta ], [ %i.cmf, %bb.st ] ; 6 uses
  %i.cmj = getelementptr inbounds nuw i8, ptr %.031.i654, i64 24
  %i.cmk = load i32, ptr %i.cmj, align 8, !tbaa !276
  %i.cml = trunc i32 %i.cmk to i8
  %i.cmm = icmp eq i8 %i.dy, %i.cml
  br i1 %i.cmm, label %bb.su, label %bb.ta

bb.su:                                            ; preds = %.lr.ph.i653
  %i.cmn = getelementptr inbounds nuw i8, ptr %.031.i654, i64 28
  %i.cmo = load i8, ptr %i.cmn, align 4, !tbaa !277
  %.not28.i657 = icmp eq i8 %i.cmo, 0
  br i1 %.not28.i657, label %bb.ta, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.cmp = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.cmq = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i658 = icmp slt i32 %i.cmp, %i.cmq
  br i1 %.not29.i658, label %bb.sw, label %.loopexit.sink.split

bb.sw:                                            ; preds = %bb.sv
  %i.cmr = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cms = add nsw i32 %i.cmp, 1
  store i32 %i.cms, ptr %i.o, align 8, !tbaa !267
  %i.cmt = sext i32 %i.cmp to i64
  %i.cmu = getelementptr inbounds [32 x i8], ptr %i.cmr, i64 %i.cmt ; 4 uses
  %i.cmv = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.cmv, ptr %i.cmu, align 8, !tbaa !278
  %i.cmw = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cmx = add nsw i64 %i.cmw, 1
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmu, i64 8
  store i64 %i.cmx, ptr %i.cmy, align 8, !tbaa !279
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmu, i64 16
  store i64 1, ptr %i.cmz, align 8, !tbaa !280
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmu, i64 24
  store ptr %.031.i654, ptr %i.cna, align 8, !tbaa !269
  %i.cnb = load i32, ptr %.031.i654, align 8, !tbaa !281 ; 3 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %.031.i654, i64 8
  %i.cnd = load i64, ptr %i.cnc, align 8, !tbaa !282 ; 2 uses
  %i.cne = add i32 %i.cnb, -4
  %or.cond.i.i659 = icmp ult i32 %i.cne, -3
  br i1 %or.cond.i.i659, label %.loopexit.sink.split, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.cnf = zext nneg i32 %i.cnb to i64
  %i.cng = getelementptr [16 x i8], ptr %0, i64 %i.cnf ; 2 uses
  %i.cnh = getelementptr i8, ptr %i.cng, i64 720
  %i.cni = load ptr, ptr %i.cnh, align 8, !tbaa !202 ; 2 uses
  %.not.i.i660 = icmp eq ptr %i.cni, null
  br i1 %.not.i.i660, label %.loopexit.sink.split, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.cnj = getelementptr i8, ptr %i.cng, i64 728
  %i.cnk = load i64, ptr %i.cnj, align 8, !tbaa !203 ; 2 uses
  %i.cnl = icmp sgt i64 %i.cnd, %i.cnk
  br i1 %i.cnl, label %.loopexit.sink.split, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  store ptr %i.cni, ptr %i.c, align 8, !tbaa !204
  store i64 %i.cnk, ptr %i.s, align 8, !tbaa !205
  store i64 %i.cnd, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.cnb, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.ta:                                            ; preds = %bb.su, %.lr.ph.i653
  %i.cnm = getelementptr inbounds nuw i8, ptr %.031.i654, i64 32 ; 2 uses
  %i.cnn = icmp ult ptr %i.cnm, %i.cmi
  br i1 %i.cnn, label %.lr.ph.i653, label %._crit_edge.i655, !llvm.loop !0

._crit_edge.i655:                                 ; preds = %bb.ta, %bb.st, %bb.ss
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.tb:                                            ; preds = %bb.f
  %.val329 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 8 uses
  %i.cno = trunc i64 %.val329 to i32
  %i.cnp = and i32 %i.cno, 255                    ; 2 uses
  %trunc.i = trunc i64 %.val329 to i8
  switch i8 %trunc.i, label %bb.td [
    i8 -1, label %.sink.split.i662
    i8 0, label %bb.tc
  ]

bb.tc:                                            ; preds = %bb.tb
  br label %.sink.split.i662

bb.td:                                            ; preds = %bb.tb
  %i.cnq = and i64 %.val329, 256
  %.not.i664 = icmp eq i64 %i.cnq, 0
  br i1 %.not.i664, label %bb.tg, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.cnr = load i16, ptr %i.ay, align 8, !tbaa !311
  %i.cns = zext i16 %i.cnr to i32
  %.not24.i665 = icmp samesign ult i32 %i.cnp, %i.cns
  br i1 %.not24.i665, label %bb.tg, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  store i8 1, ptr %i.az, align 2, !tbaa !213
  br label %bb.tg

bb.tg:                                            ; preds = %bb.tf, %bb.te, %bb.td
  %i.cnt = and i64 %.val329, 512
  %.not25.i666 = icmp eq i64 %i.cnt, 0
  br i1 %.not25.i666, label %bb.tj, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cnu = load i8, ptr %i.z, align 2, !tbaa !638
  %.not26.i667 = icmp eq i8 %i.cnu, 0
  br i1 %.not26.i667, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  store i8 1, ptr %i.az, align 2, !tbaa !213
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th, %bb.tg
  %i.cnv = and i64 %.val329, 1024
  %.not27.i668 = icmp eq i64 %i.cnv, 0
  br i1 %.not27.i668, label %bb.tm, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.cnw = load i8, ptr %i.aa, align 1, !tbaa !639
  %.not28.i669 = icmp eq i8 %i.cnw, 0
  br i1 %.not28.i669, label %bb.tm, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  store i8 1, ptr %i.az, align 2, !tbaa !213
  br label %bb.tm

bb.tm:                                            ; preds = %bb.tl, %bb.tk, %bb.tj
  %i.cnx = and i64 %.val329, 2048
  %.not29.i670 = icmp eq i64 %i.cnx, 0
  br i1 %.not29.i670, label %bb.tp, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.cny = load i16, ptr %i.ay, align 8, !tbaa !311
  %i.cnz = zext i16 %i.cny to i32
  %i.coa = icmp samesign ult i32 %i.cnp, %i.cnz
  br i1 %i.coa, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  store i8 0, ptr %i.az, align 2, !tbaa !213
  br label %bb.tp

bb.tp:                                            ; preds = %bb.to, %bb.tn, %bb.tm
  %i.cob = and i64 %.val329, 4096
  %.not30.i671 = icmp eq i64 %i.cob, 0
  br i1 %.not30.i671, label %bb.ts, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.coc = load i8, ptr %i.z, align 2, !tbaa !638
  %.not31.i672 = icmp eq i8 %i.coc, 0
  br i1 %.not31.i672, label %bb.ts, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  store i8 0, ptr %i.az, align 2, !tbaa !213
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tr, %bb.tq, %bb.tp
  %i.cod = and i64 %.val329, 8192
  %.not32.i673 = icmp eq i64 %i.cod, 0
  br i1 %.not32.i673, label %Ins_SPVTL.exitthread-pre-split, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.coe = load i8, ptr %i.aa, align 1, !tbaa !639
  %.not33.i = icmp eq i8 %i.coe, 0
  br i1 %.not33.i, label %Ins_SPVTL.exitthread-pre-split, label %.sink.split.i662

.sink.split.i662:                                 ; preds = %bb.tt, %bb.tc, %bb.tb
  %.sink.i663 = phi i8 [ 1, %bb.tb ], [ 0, %bb.tc ], [ 0, %bb.tt ]
  store i8 %.sink.i663, ptr %i.az, align 2, !tbaa !213
  br label %Ins_SPVTL.exitthread-pre-split

bb.tu:                                            ; preds = %bb.f, %bb.f
  %i.cof = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.cog = load i16, ptr %i.ad, align 8, !tbaa !255
  %25 = trunc i64 %i.cof to i16
  %.not.i674 = icmp ugt i16 %i.cog, %25
  br i1 %.not.i674, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %bb.tu
  %i.coh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.coi = load i64, ptr %i.coh, align 8, !tbaa !185 ; 2 uses
  %i.coj = load i16, ptr %i.ae, align 8, !tbaa !617
  %26 = trunc i64 %i.coi to i16
  %.not52.i676 = icmp ugt i16 %i.coj, %26
  br i1 %.not52.i676, label %bb.tx, label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tu
  %i.cok = load i8, ptr %i.i, align 2, !tbaa !163
  %.not55.i675 = icmp eq i8 %i.cok, 0
  br i1 %.not55.i675, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.tx:                                            ; preds = %bb.tv
  %i.col = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.com = and i64 %i.cof, 65535                  ; 2 uses
  %i.con = getelementptr inbounds nuw [16 x i8], ptr %i.col, i64 %i.com ; 2 uses
  %i.coo = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.cop = and i64 %i.coi, 65535                  ; 2 uses
  %i.coq = getelementptr inbounds nuw [16 x i8], ptr %i.coo, i64 %i.cop ; 2 uses
  %i.cor = load i64, ptr %i.con, align 8, !tbaa !230 ; 2 uses
  %i.cos = load i64, ptr %i.coq, align 8, !tbaa !230 ; 2 uses
  %i.cot = sub i64 %i.cor, %i.cos
  %i.cou = getelementptr inbounds nuw i8, ptr %i.con, i64 8
  %i.cov = load i64, ptr %i.cou, align 8, !tbaa !257 ; 2 uses
  %i.cow = getelementptr inbounds nuw i8, ptr %i.coq, i64 8
  %i.cox = load i64, ptr %i.cow, align 8, !tbaa !257 ; 2 uses
  %i.coy = sub i64 %i.cov, %i.cox                 ; 2 uses
  %i.coz = icmp eq i64 %i.cor, %i.cos
  %i.cpa = icmp eq i64 %i.cov, %i.cox
  %or.cond.i677 = select i1 %i.coz, i1 %i.cpa, i1 false ; 2 uses
  %spec.select.i678 = select i1 %or.cond.i677, i64 16384, i64 %i.cot ; 2 uses
  %i.cpb = and i8 %i.dy, 1
  %.not5362.i = icmp eq i8 %i.cpb, 0
  %.not53.i679 = or i1 %.not5362.i, %or.cond.i677 ; 3 uses
  %i.cpc = sub i64 0, %i.coy
  %.149.i = select i1 %.not53.i679, i64 %spec.select.i678, i64 %i.cpc ; 2 uses
  %.046.i = select i1 %.not53.i679, i64 %i.coy, i64 %spec.select.i678 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cpd = or i64 %.046.i, %.149.i
  %or.cond.i.i680 = icmp eq i64 %i.cpd, 0
  br i1 %or.cond.i.i680, label %Normalize.exit.i681, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  store i64 %.149.i, ptr %2, align 8, !tbaa !230
  store i64 %.046.i, ptr %i.ai, align 8, !tbaa !257
  %i.cpe = call i32 @FT_Vector_NormLen(ptr noundef nonnull %2) #21 ; 0 uses
  %i.cpf = load i64, ptr %2, align 8, !tbaa !230
  %i.cpg = sdiv i64 %i.cpf, 4
  %i.cph = trunc i64 %i.cpg to i16
  store i16 %i.cph, ptr %i.ah, align 4, !tbaa !619
  %i.cpi = load i64, ptr %i.ai, align 8, !tbaa !257
  %i.cpj = sdiv i64 %i.cpi, 4
  %i.cpk = trunc i64 %i.cpj to i16
  store i16 %i.cpk, ptr %i.aj, align 2, !tbaa !620
  br label %Normalize.exit.i681

Normalize.exit.i681:                              ; preds = %bb.ty, %bb.tx
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.cpl = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.cpm = getelementptr inbounds nuw [16 x i8], ptr %i.cpl, i64 %i.com ; 2 uses
  %i.cpn = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.cpo = getelementptr inbounds nuw [16 x i8], ptr %i.cpn, i64 %i.cop ; 2 uses
  %i.cpp = load i64, ptr %i.cpm, align 8, !tbaa !230 ; 2 uses
  %i.cpq = load i64, ptr %i.cpo, align 8, !tbaa !230 ; 2 uses
  %i.cpr = sub i64 %i.cpp, %i.cpq
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpm, i64 8
  %i.cpt = load i64, ptr %i.cps, align 8, !tbaa !257 ; 2 uses
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpo, i64 8
  %i.cpv = load i64, ptr %i.cpu, align 8, !tbaa !257 ; 2 uses
  %i.cpw = sub i64 %i.cpt, %i.cpv                 ; 2 uses
  %i.cpx = icmp eq i64 %i.cpp, %i.cpq
  %i.cpy = icmp eq i64 %i.cpt, %i.cpv
  %or.cond3.i = select i1 %i.cpx, i1 %i.cpy, i1 false ; 2 uses
  %.2.i682 = select i1 %or.cond3.i, i64 16384, i64 %i.cpr ; 2 uses
  %.not54.i = or i1 %.not53.i679, %or.cond3.i     ; 2 uses
  %i.cpz = sub i64 0, %i.cpw
  %.3.i683 = select i1 %.not54.i, i64 %.2.i682, i64 %i.cpz ; 2 uses
  %.147.i = select i1 %.not54.i, i64 %i.cpw, i64 %.2.i682 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.cqa = or i64 %.147.i, %.3.i683
  %or.cond.i57.i = icmp eq i64 %i.cqa, 0
  br i1 %or.cond.i57.i, label %Normalize.exit.Normalize.exit58_crit_edge.i, label %bb.tz

Normalize.exit.Normalize.exit58_crit_edge.i:      ; preds = %Normalize.exit.i681
  %.pre.i688 = load i16, ptr %i.am, align 8, !tbaa !242
  %.pre61.i = load i16, ptr %i.ao, align 2, !tbaa !243
  br label %Normalize.exit58.i

bb.tz:                                            ; preds = %Normalize.exit.i681
  store i64 %.3.i683, ptr %1, align 8, !tbaa !230
  store i64 %.147.i, ptr %i.an, align 8, !tbaa !257
  %i.cqb = call i32 @FT_Vector_NormLen(ptr noundef nonnull %1) #21 ; 0 uses
  %i.cqc = load i64, ptr %1, align 8, !tbaa !230
  %i.cqd = sdiv i64 %i.cqc, 4
  %i.cqe = trunc i64 %i.cqd to i16                ; 2 uses
  store i16 %i.cqe, ptr %i.am, align 8, !tbaa !619
  %i.cqf = load i64, ptr %i.an, align 8, !tbaa !257
  %i.cqg = sdiv i64 %i.cqf, 4
  %i.cqh = trunc i64 %i.cqg to i16                ; 2 uses
  store i16 %i.cqh, ptr %i.ao, align 2, !tbaa !620
  br label %Normalize.exit58.i

Normalize.exit58.i:                               ; preds = %bb.tz, %Normalize.exit.Normalize.exit58_crit_edge.i
  %i.cqi = phi i16 [ %.pre61.i, %Normalize.exit.Normalize.exit58_crit_edge.i ], [ %i.cqh, %bb.tz ] ; 2 uses
  %i.cqj = phi i16 [ %.pre.i688, %Normalize.exit.Normalize.exit58_crit_edge.i ], [ %i.cqe, %bb.tz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.cqk = sext i16 %i.cqj to i64
  %i.cql = sext i16 %i.cqi to i64
  %i.cqm = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128 ; 3 uses
  %i.cqn = extractelement <2 x i16> %i.cqm, i64 0 ; 2 uses
  %i.cqo = sext i16 %i.cqn to i64                 ; 2 uses
  %i.cqp = mul nsw i64 %i.cqo, %i.cqk
  %i.cqq = extractelement <2 x i16> %i.cqm, i64 1 ; 2 uses
  %i.cqr = sext i16 %i.cqq to i64                 ; 2 uses
  %i.cqs = mul nsw i64 %i.cqr, %i.cql
  %i.cqt = add nsw i64 %i.cqp, 8192
  %i.cqu = add nsw i64 %i.cqt, %i.cqs
  %i.cqv = ashr i64 %i.cqu, 14                    ; 4 uses
  %i.cqw = icmp sgt i64 %i.cqv, 16381
  br i1 %i.cqw, label %bb.ud, label %bb.ua

bb.ua:                                            ; preds = %Normalize.exit58.i
  %i.cqx = add nsw i64 %i.cqv, 1023
  %or.cond.i59.i = icmp ult i64 %i.cqx, 2047
  br i1 %or.cond.i59.i, label %bb.ub, label %bb.uc

bb.ub:                                            ; preds = %bb.ua
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i684

bb.uc:                                            ; preds = %bb.ua
  %i.cqy = shl nsw i64 %i.cqo, 16
  %i.cqz = sdiv i64 %i.cqy, %i.cqv
  store i64 %i.cqz, ptr %i.ar, align 8, !tbaa !248
  %i.cra = shl nsw i64 %i.cqr, 16
  %i.crb = sdiv i64 %i.cra, %i.cqv
  store i64 %i.crb, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i684

bb.ud:                                            ; preds = %Normalize.exit58.i
  %i.crc = sext <2 x i16> %i.cqm to <2 x i32>
  %i.crd = shl nsw <2 x i32> %i.crc, splat (i32 2)
  %i.cre = sext <2 x i32> %i.crd to <2 x i64>
  store <2 x i64> %i.cre, ptr %i.ar, align 8, !tbaa !185
  %i.crf = icmp eq i16 %i.cqn, 16384
  br i1 %i.crf, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.crg = icmp eq i16 %i.cqq, 16384
  br i1 %i.crg, label %bb.uf, label %.critedge.i.i684

.critedge.i.i684:                                 ; preds = %bb.ue, %bb.uc, %bb.ub
  br label %bb.uf

bb.uf:                                            ; preds = %.critedge.i.i684, %bb.ue, %bb.ud
  %Direct_Move_Y.sink.i.i685 = phi ptr [ @Direct_Move_X, %bb.ud ], [ @Direct_Move, %.critedge.i.i684 ], [ @Direct_Move_Y, %bb.ue ]
  %Direct_Move_Orig_Y.sink.i.i686 = phi ptr [ @Direct_Move_Orig_X, %bb.ud ], [ @Direct_Move_Orig, %.critedge.i.i684 ], [ @Direct_Move_Orig_Y, %bb.ue ]
  store ptr %Direct_Move_Y.sink.i.i685, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i686, ptr %i.au, align 8, !tbaa !251
  %i.crh = icmp eq i16 %i.cqj, 16384
  %i.cri = icmp eq i16 %i.cqi, 16384
  %Project_y.Project1253 = select i1 %i.cri, ptr @Project_y, ptr @Project
  %Project.sink1242 = select i1 %i.crh, ptr @Project_x, ptr %Project_y.Project1253
  store ptr %Project.sink1242, ptr %i.av, align 8, !tbaa !252
  %i.crj = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.crk = icmp eq i16 %i.crj, 16384
  br i1 %i.crk, label %Compute_Funcs.exit.i687, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.crl = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.crm = icmp eq i16 %i.crl, 16384
  %Project_y.Dual_Project1254 = select i1 %i.crm, ptr @Project_y, ptr @Dual_Project
  br label %Compute_Funcs.exit.i687

Compute_Funcs.exit.i687:                          ; preds = %bb.ug, %bb.uf
  %Dual_Project.sink1243 = phi ptr [ @Project_x, %bb.uf ], [ %Project_y.Dual_Project1254, %bb.ug ]
  store ptr %Dual_Project.sink1243, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.uh:                                            ; preds = %bb.f
  %i.crn = load i64, ptr %i.ew, align 8, !tbaa !185 ; 8 uses
  %i.cro = and i64 %i.crn, 1
  %.not.i690 = icmp eq i64 %i.cro, 0
  br i1 %.not.i690, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.crp = load ptr, ptr %0, align 8, !tbaa !189
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 176
  %i.crr = load ptr, ptr %i.crq, align 8, !tbaa !43
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 112
  %i.crt = load i32, ptr %i.crs, align 8, !tbaa !28
  %i.cru = zext i32 %i.crt to i64
  br label %bb.uj

bb.uj:                                            ; preds = %bb.ui, %bb.uh
  %.0.i691 = phi i64 [ %i.cru, %bb.ui ], [ 0, %bb.uh ] ; 3 uses
  %i.crv = and i64 %i.crn, 2
  %.not34.i = icmp eq i64 %i.crv, 0
  br i1 %.not34.i, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.crw = load i8, ptr %i.z, align 2, !tbaa !638
  %.not35.i692 = icmp eq i8 %i.crw, 0
  %i.crx = or i64 %.0.i691, 256
end_hunk_7
begin_hunk_8_@Ins_UNKNOWN:bb.a
  %i.h = load i8, ptr %i.g, align 8, !tbaa !238
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.031 = phi ptr [ %i.b, %.lr.ph ], [ %i.ax, %bb.n ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !276
  %i.k = trunc i32 %i.j to i8
  %i.l = icmp eq i8 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.031, i64 28
  %i.n = load i8, ptr %i.m, align 4, !tbaa !277
  %.not28 = icmp eq i8 %i.n, 0
  br i1 %.not28, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !267  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.r = load i32, ptr %i.q, align 4, !tbaa !160
  %.not29 = icmp slt i32 %i.p, %i.r
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 130, ptr %i.s, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161
  %i.v = add nsw i32 %i.p, 1
  store i32 %i.v, ptr %i.o, align 8, !tbaa !267
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !207
  store i32 %i.z, ptr %i.x, align 8, !tbaa !278
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !206
  %i.ac = add nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !279
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %i.ae, align 8, !tbaa !280
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.031, ptr %i.af, align 8, !tbaa !269
  %i.ag = load i32, ptr %.031, align 8, !tbaa !281 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !282 ; 2 uses
  %i.aj = add i32 %i.ag, -4
  %or.cond.i = icmp ult i32 %i.aj, -3
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 132, ptr %i.ak, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit

bb.i:                                             ; preds = %bb.g
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = getelementptr [16 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 720
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !202 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 138, ptr %i.ap, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %i.am, i64 728
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !203 ; 2 uses
  %i.as = icmp sgt i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 131, ptr %i.at, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !205
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !206
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 0, ptr %i.aw, align 4, !tbaa !239
  store i32 %i.ag, ptr %i.y, align 4, !tbaa !207
  br label %Ins_Goto_CodeRange.exit

bb.n:                                             ; preds = %bb.c, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.031, i64 32 ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %i.f
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.n, %bb.a, %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 128, ptr %i.az, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit

Ins_Goto_CodeRange.exit:                          ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Ins_DELTAP(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !185    ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = sdiv i64 %i.d, 2
  %i.f = icmp sgt i64 %i.a, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 842
  %i.h = load i8, ptr %i.g, align 2, !tbaa !163
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 129, ptr %i.i, align 8, !tbaa !237
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !241  ; 2 uses
  %i.l = sdiv i64 %i.k, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.m = phi i64 [ %i.k, %bb.e ], [ %i.d, %bb.b ]
  %.048 = phi i64 [ %i.l, %bb.e ], [ %i.a, %bb.b ] ; 3 uses
  %i.n = shl nsw i64 %.048, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = sub nsw i64 %i.m, %i.n
  store i64 %i.p, ptr %i.o, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304
  %i.s = tail call i64 %i.r(ptr noundef nonnull %0) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load i16, ptr %i.t, align 8, !tbaa !305
  %i.v = zext i16 %i.u to i64
  %i.w = sub nsw i64 %i.s, %i.v                   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.y = load i8, ptr %i.x, align 8, !tbaa !238
  switch i8 %i.y, label %bb.i [
    i8 114, label %bb.h
    i8 113, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i64 %i.w, -16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %i.w, -32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi i64 [ %i.w, %bb.f ], [ %i.aa, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.not54 = icmp ult i64 %.0, 16
  br i1 %.not54, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ab = shl nuw nsw i64 %.0, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !306
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub nsw i64 6, %i.ae
  %i.ag = and i64 %i.af, 4294967295
  %.not5563 = icmp eq i64 %.048, 0
  br i1 %.not5563, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 842
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 841
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 486
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.s
  %.in = phi i64 [ %.048, %.lr.ph ], [ %i.ao, %bb.s ]
  %.04964 = phi ptr [ %1, %.lr.ph ], [ %i.as, %bb.s ] ; 2 uses
  %i.ao = add nsw i64 %.in, -1                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.04964, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  %i.ar = trunc i64 %i.aq to i16                  ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.04964, i64 -16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !185 ; 2 uses
  %i.au = load i16, ptr %i.ah, align 8, !tbaa !258
  %.not56 = icmp ugt i16 %i.au, %i.ar
  br i1 %.not56, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.ai, align 2, !tbaa !163
  %.not62 = icmp eq i8 %i.av, 0
  br i1 %.not62, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 134, ptr %i.aw, align 8, !tbaa !237
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.ax = and i64 %i.at, 240
  %i.ay = icmp eq i64 %i.ax, %i.ab
  br i1 %i.ay, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.az = and i64 %i.at, 15                       ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.az, 7
  %spec.select.v = select i1 %i.ba, i64 -7, i64 -8
  %spec.select = add nsw i64 %spec.select.v, %i.az
  %i.bb = shl i64 %spec.select, %i.ag
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !215
  switch i32 %i.bc, label %bb.p [
    i32 0, label %.sink.split
    i32 7, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.bd = load i8, ptr %i.al, align 1, !tbaa !292
  %.not59 = icmp eq i8 %i.bd, 0
  br i1 %.not59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = load i16, ptr %i.am, align 2, !tbaa !247
  %.not60 = icmp eq i16 %i.be, 0
  br i1 %.not60, label %bb.r, label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !283
  %i.bg = and i64 %i.aq, 65535
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !186
  %i.bj = and i8 %i.bi, 16
  %.not61 = icmp eq i8 %i.bj, 0
  br i1 %.not61, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.q, %bb.r
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !250
  tail call void %i.bk(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i16 noundef zeroext %i.ar, i64 noundef %i.bb) #21
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.o, %bb.n, %bb.r, %bb.l
  %.not55 = icmp eq i64 %i.ao, 0
  br i1 %.not55, label %.loopexit, label %bb.k, !llvm.loop !640

.loopexit:                                        ; preds = %bb.s, %bb.j, %bb.i, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Ins_MIRP(ptr noundef %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %.0.val to i16                 ; 4 uses
  %i.b = add i64 %.8.val, 1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !255
  %.not = icmp ugt i16 %i.d, %i.a
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.f = load i64, ptr %i.e, align 8, !tbaa !175
  %i.g = add i64 %i.f, 1
  %.not117 = icmp ult i64 %i.b, %i.g
  br i1 %.not117, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !260  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i16, ptr %i.j, align 8, !tbaa !258
  %.not118 = icmp ult i16 %i.i, %i.k
  br i1 %.not118, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 842
  %i.m = load i8, ptr %i.l, align 2, !tbaa !163
  %.not123 = icmp eq i8 %i.m, 0
  br i1 %.not123, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 134, ptr %i.n, align 8, !tbaa !237
  br label %bb.u

bb.f:                                             ; preds = %bb.c
  %.not119 = icmp eq i64 %i.b, 0
  br i1 %.not119, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !300
  %i.q = tail call i64 %i.p(ptr noundef nonnull %0, i64 noundef %.8.val) #21
  %.pre2.pre = load i16, ptr %i.h, align 8, !tbaa !260
  %i.r = freeze i64 %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pre2 = phi i16 [ %.pre2.pre, %bb.g ], [ %i.i, %bb.f ] ; 2 uses
  %.0107 = phi i64 [ %i.r, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.t = load i64, ptr %i.s, align 8, !tbaa !275  ; 3 uses
  %i.u = sub i64 %.0107, %i.t
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.w = load i64, ptr %i.v, align 8, !tbaa !274
  %i.x = icmp slt i64 %spec.select, %i.w
  %i.y = sub nsw i64 0, %i.t
  %i.z = icmp slt i64 %.0107, 0
  %spec.select7 = select i1 %i.z, i64 %i.y, i64 %i.t
  %.1108 = select i1 %i.x, i64 %spec.select7, i64 %.0107 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !264
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre5 = and i64 %.0.val, 65535
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !293
  %i.af = zext i16 %.pre2 to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !246
  %i.ak = sext i16 %i.aj to i64
  %i.al = mul i64 %.1108, %i.ak                   ; 2 uses
  %i.am = ashr i64 %i.al, 63
  %i.an = add i64 %i.al, 8192
  %i.ao = add i64 %i.an, %i.am
  %i.ap = ashr i64 %i.ao, 14
  %i.aq = add i64 %i.ap, %i.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !295
  %i.at = and i64 %.0.val, 65535                  ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !230
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !257
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 486
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !247
  %i.az = sext i16 %i.ay to i64
  %i.ba = mul i64 %.1108, %i.az                   ; 2 uses
  %i.bb = ashr i64 %i.ba, 63
  %i.bc = add i64 %i.ba, 8192
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = ashr i64 %i.bd, 14
  %i.bf = add i64 %i.be, %i.aw
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !257
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !256
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !299
  %.pre = load i16, ptr %i.h, align 8, !tbaa !260
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi = phi i64 [ %.pre5, %._crit_edge ], [ %i.at, %bb.i ] ; 2 uses
  %i.bk = phi i16 [ %.pre2, %._crit_edge ], [ %.pre, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !253
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !295
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.pre-phi ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !230
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !293
  %i.bt = zext i16 %i.bk to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !230
  %i.bw = sub i64 %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !257
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !257
  %i.cb = sub i64 %i.by, %i.ca
  %i.cc = tail call i64 %i.bm(ptr noundef nonnull %0, i64 noundef %i.bw, i64 noundef %i.cb) #21 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !252
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !256
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.pre-phi ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !230
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.cl = load i16, ptr %i.h, align 8, !tbaa !260
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !230
  %i.cp = sub i64 %i.ci, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !257
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !257
  %i.cu = sub i64 %i.cr, %i.ct
  %i.cv = tail call i64 %i.ce(ptr noundef nonnull %0, i64 noundef %i.cp, i64 noundef %i.cu) #21
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !211
  %.not120 = icmp ne i8 %i.cx, 0
  %i.cy = xor i64 %i.cc, %.1108
  %i.cz = icmp slt i64 %i.cy, 0
  %or.cond = select i1 %.not120, i1 %i.cz, i1 false
  %i.da = sub i64 0, %.1108
  %.2109 = select i1 %or.cond, i64 %i.da, i64 %.1108 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !238 ; 3 uses
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = and i32 %i.de, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !185 ; 3 uses
  %i.dj = and i32 %i.de, 4
  %.not121 = icmp eq i32 %i.dj, 0
  br i1 %.not121, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 470
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !263
  %i.dm = load i16, ptr %i.aa, align 8, !tbaa !264
  %i.dn = icmp eq i16 %i.dl, %i.dm
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !273
  %i.dq = sub i64 %.2109, %i.cc
  %spec.select126 = tail call i64 @llvm.abs.i64(i64 %i.dq, i1 false)
  %i.dr = icmp sgt i64 %spec.select126, %i.dp
  %.3 = select i1 %i.dr, i64 %i.cc, i64 %.2109
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i64 [ %.3, %bb.l ], [ %.2109, %bb.k ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !265
  %i.du = tail call i64 %i.dt(ptr noundef nonnull %0, i64 noundef %.4, i64 noundef %i.di) #21
  %.pre3 = load i8, ptr %i.dc, align 8, !tbaa !238
  br label %Round_None.exit

bb.n:                                             ; preds = %bb.j
  %i.dv = icmp sgt i64 %.2109, -1
  br i1 %i.dv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dw = add i64 %.2109, %i.di
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.dw, i64 0)
  br label %Round_None.exit

bb.p:                                             ; preds = %bb.n
  %i.dx = sub i64 %.2109, %i.di
  %spec.store.select1.i = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 0)
  br label %Round_None.exit

Round_None.exit:                                  ; preds = %bb.p, %bb.o, %bb.m
  %i.dy = phi i8 [ %.pre3, %bb.m ], [ %i.dd, %bb.o ], [ %i.dd, %bb.p ]
  %.0105 = phi i64 [ %i.du, %bb.m ], [ %spec.store.select.i, %bb.o ], [ %spec.store.select1.i, %bb.p ] ; 3 uses
  %i.dz = and i8 %i.dy, 8
  %.not122 = icmp eq i8 %i.dz, 0
  br i1 %.not122, label %bb.t, label %bb.q

bb.q:                                             ; preds = %Round_None.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !266 ; 2 uses
  %i.ec = icmp sgt i64 %i.cc, -1
  br i1 %i.ec, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %spec.select127 = tail call i64 @llvm.smax.i64(i64 %.0105, i64 %i.eb)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ed = sub i64 0, %i.eb
  %spec.select128 = tail call i64 @llvm.smin.i64(i64 %.0105, i64 %i.ed)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %Round_None.exit
  %.2 = phi i64 [ %.0105, %Round_None.exit ], [ %spec.select127, %bb.r ], [ %spec.select128, %bb.s ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !250
  %i.eg = sub i64 %.2, %i.cv
  tail call void %i.ef(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i16 noundef zeroext %i.a, i64 noundef %i.eg) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.e, %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !260
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 466
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !261
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i16 %i.a, ptr %i.ek, align 4, !tbaa !262
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.em = load i8, ptr %i.el, align 8, !tbaa !238
  %i.en = and i8 %i.em, 16
  %.not124 = icmp eq i8 %i.en, 0
  br i1 %.not124, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %i.a, ptr %i.eh, align 8, !tbaa !260
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Ins_MDRP(ptr noundef %0, i64 %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %.0.val to i16                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !255
  %.not = icmp ugt i16 %i.c, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !260  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i16, ptr %i.f, align 8, !tbaa !258
  %.not100 = icmp ult i16 %i.e, %i.g
  br i1 %.not100, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 842
  %i.i = load i8, ptr %i.h, align 2, !tbaa !163
  %.not103 = icmp eq i8 %i.i, 0
  br i1 %.not103, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 134, ptr %i.j, align 8, !tbaa !237
  br label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 470
  %i.l = load i16, ptr %i.k, align 2, !tbaa !263
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i16, ptr %i.n, align 8, !tbaa !264
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !295
  %i.s = and i64 %.0.val, 65535
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !293
  %i.w = zext i16 %i.e to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !253
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !230
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !230
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !257
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !257
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = tail call i64 %i.z(ptr noundef nonnull %0, i64 noundef %i.ac, i64 noundef %i.ah) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !298
  %i.al = and i64 %.0.val, 65535
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !294
  %i.ap = zext i16 %i.e to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !296 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.au = load i64, ptr %i.at, align 8, !tbaa !297 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !230
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !230
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !257
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !257
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = tail call i64 %i.ax(ptr noundef nonnull %0, i64 noundef %i.ba, i64 noundef %i.bf) #21
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !296
  %i.bi = mul i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = ashr i64 %i.bi, 63
  %i.bk = add i64 %i.bi, 32768
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = ashr i64 %i.bl, 16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bn = load i64, ptr %i.am, align 8, !tbaa !230
  %i.bo = load i64, ptr %i.aq, align 8, !tbaa !230
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = mul i64 %i.bp, %i.as                    ; 2 uses
  %i.br = ashr i64 %i.bq, 63
  %i.bs = add i64 %i.bq, 32768
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = ashr i64 %i.bt, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !257
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !257
  %i.bz = sub i64 %i.bw, %i.by
  %i.ca = mul i64 %i.bz, %i.au                    ; 2 uses
  %i.cb = ashr i64 %i.ca, 63
  %i.cc = add i64 %i.ca, 32768
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = ashr i64 %i.cd, 16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !253
  %i.ch = tail call i64 %i.cg(ptr noundef nonnull %0, i64 noundef %i.bu, i64 noundef %i.ce) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.1 = phi i64 [ %i.ai, %bb.g ], [ %i.bm, %bb.i ], [ %i.ch, %bb.j ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !274 ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !275 ; 4 uses
  %i.cn = add i64 %i.cm, %i.cj
  %i.co = icmp slt i64 %.1, %i.cn
  %i.cp = sub i64 %i.cm, %i.cj
  %i.cq = icmp sgt i64 %.1, %i.cp
  %or.cond = and i1 %i.co, %i.cq
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = sub nsw i64 0, %i.cm
  %i.cs = icmp slt i64 %.1, 0
  %spec.select107 = select i1 %i.cs, i64 %i.cr, i64 %i.cm
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.2 = phi i64 [ %.1, %bb.l ], [ %spec.select107, %bb.m ], [ %.1, %bb.k ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !238 ; 3 uses
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = and i32 %i.cw, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !185 ; 3 uses
  %i.db = and i32 %i.cw, 4
  %.not101 = icmp eq i32 %i.db, 0
  br i1 %.not101, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !265
  %i.de = tail call i64 %i.dd(ptr noundef nonnull %0, i64 noundef %.2, i64 noundef %i.da) #21
  %.pre = load i8, ptr %i.cu, align 8, !tbaa !238
  br label %Round_None.exit

bb.p:                                             ; preds = %bb.n
  %i.df = icmp sgt i64 %.2, -1
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dg = add i64 %i.da, %.2
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.dg, i64 0)
  br label %Round_None.exit

bb.r:                                             ; preds = %bb.p
  %i.dh = sub i64 %.2, %i.da
  %spec.store.select1.i = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 0)
  br label %Round_None.exit

Round_None.exit:                                  ; preds = %bb.r, %bb.q, %bb.o
  %i.di = phi i8 [ %.pre, %bb.o ], [ %i.cv, %bb.q ], [ %i.cv, %bb.r ]
  %.092 = phi i64 [ %i.de, %bb.o ], [ %spec.store.select.i, %bb.q ], [ %spec.store.select1.i, %bb.r ] ; 3 uses
  %i.dj = and i8 %i.di, 8
  %.not102 = icmp eq i8 %i.dj, 0
  br i1 %.not102, label %bb.v, label %bb.s

bb.s:                                             ; preds = %Round_None.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !266 ; 2 uses
  %i.dm = icmp sgt i64 %.2, -1
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.092, i64 %i.dl)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dn = sub i64 0, %i.dl
  %spec.select106 = tail call i64 @llvm.smin.i64(i64 %.092, i64 %i.dn)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %Round_None.exit
  %.294 = phi i64 [ %.092, %Round_None.exit ], [ %spec.select, %bb.t ], [ %spec.select106, %bb.u ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !252
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 152
end_hunk_8
