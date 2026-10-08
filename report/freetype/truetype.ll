Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_RunIns:bb.a
  %i.ne = trunc i64 %i.nd to i16                  ; 2 uses
  store i16 %i.ne, ptr %i.ap, align 4, !tbaa !619
  %i.nf = load i64, ptr %i.do, align 8, !tbaa !257
  %i.ng = sdiv i64 %i.nf, 4
  %i.nh = trunc i64 %i.ng to i16                  ; 2 uses
  store i16 %i.nh, ptr %i.aq, align 2, !tbaa !620
  br label %Normalize.exit.i365

Normalize.exit.i365:                              ; preds = %bb.ay, %.Normalize.exit_crit_edge.i
  %i.ni = phi i16 [ %.pre1.i, %.Normalize.exit_crit_edge.i ], [ %i.nh, %bb.ay ] ; 3 uses
  %i.nj = phi i16 [ %.pre.i371, %.Normalize.exit_crit_edge.i ], [ %i.ne, %bb.ay ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.nk = load i16, ptr %i.am, align 8, !tbaa !242 ; 2 uses
  %i.nl = sext i16 %i.nk to i64
  %i.nm = sext i16 %i.nj to i64                   ; 2 uses
  %i.nn = mul nsw i64 %i.nl, %i.nm
  %i.no = load i16, ptr %i.ao, align 2, !tbaa !243 ; 2 uses
  %i.np = sext i16 %i.no to i64
  %i.nq = sext i16 %i.ni to i64                   ; 2 uses
  %i.nr = mul nsw i64 %i.np, %i.nq
  %i.ns = add nsw i64 %i.nn, 8192
  %i.nt = add nsw i64 %i.ns, %i.nr
  %i.nu = ashr i64 %i.nt, 14                      ; 4 uses
  %i.nv = icmp sgt i64 %i.nu, 16381
  br i1 %i.nv, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %Normalize.exit.i365
  %i.nw = add nsw i64 %i.nu, 1023
  %or.cond.i5.i366 = icmp ult i64 %i.nw, 2047
  br i1 %or.cond.i5.i366, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i367

bb.bb:                                            ; preds = %bb.az
  %i.nx = shl nsw i64 %i.nm, 16
  %i.ny = sdiv i64 %i.nx, %i.nu
  store i64 %i.ny, ptr %i.ar, align 8, !tbaa !248
  %i.nz = shl nsw i64 %i.nq, 16
  %i.oa = sdiv i64 %i.nz, %i.nu
  store i64 %i.oa, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i367

bb.bc:                                            ; preds = %Normalize.exit.i365
  %i.ob = sext i16 %i.nj to i32
  %i.oc = shl nsw i32 %i.ob, 2
  %i.od = sext i32 %i.oc to i64
  store i64 %i.od, ptr %i.ar, align 8, !tbaa !248
  %i.oe = sext i16 %i.ni to i32
  %i.of = shl nsw i32 %i.oe, 2
  %i.og = sext i32 %i.of to i64
  store i64 %i.og, ptr %i.as, align 8, !tbaa !249
  %i.oh = icmp eq i16 %i.nj, 16384
  br i1 %i.oh, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oi = icmp eq i16 %i.ni, 16384
  br i1 %i.oi, label %bb.be, label %.critedge.i.i367

.critedge.i.i367:                                 ; preds = %bb.bd, %bb.bb, %bb.ba
  br label %bb.be

bb.be:                                            ; preds = %.critedge.i.i367, %bb.bd, %bb.bc
  %Direct_Move_Y.sink.i.i368 = phi ptr [ @Direct_Move_X, %bb.bc ], [ @Direct_Move, %.critedge.i.i367 ], [ @Direct_Move_Y, %bb.bd ]
  %Direct_Move_Orig_Y.sink.i.i369 = phi ptr [ @Direct_Move_Orig_X, %bb.bc ], [ @Direct_Move_Orig, %.critedge.i.i367 ], [ @Direct_Move_Orig_Y, %bb.bd ]
  store ptr %Direct_Move_Y.sink.i.i368, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i369, ptr %i.au, align 8, !tbaa !251
  %i.oj = icmp eq i16 %i.nk, 16384
  %i.ok = icmp eq i16 %i.no, 16384
  %Project_y.Project1250 = select i1 %i.ok, ptr @Project_y, ptr @Project
  %Project.sink1238 = select i1 %i.oj, ptr @Project_x, ptr %Project_y.Project1250
  store ptr %Project.sink1238, ptr %i.av, align 8, !tbaa !252
  %i.ol = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.om = icmp eq i16 %i.ol, 16384
  br i1 %i.om, label %Ins_SFVFS.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.on = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.oo = icmp eq i16 %i.on, 16384
  %Project_y.Dual_Project1251 = select i1 %i.oo, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SFVFS.exit

Ins_SFVFS.exit:                                   ; preds = %bb.bf, %bb.be
  %Project_x.sink1239 = phi ptr [ @Project_x, %bb.be ], [ %Project_y.Dual_Project1251, %bb.bf ]
  store ptr %Project_x.sink1239, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.bg:                                            ; preds = %bb.f
  %i.op = load <2 x i16>, ptr %i.am, align 8, !tbaa !128
  %i.oq = sext <2 x i16> %i.op to <2 x i64>
  store <2 x i64> %i.oq, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.bh:                                            ; preds = %bb.f
  %i.or = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128
  %i.os = sext <2 x i16> %i.or to <2 x i64>
  store <2 x i64> %i.os, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.bi:                                            ; preds = %bb.f
  %i.ot = load i32, ptr %i.am, align 8            ; 6 uses
  store i32 %i.ot, ptr %i.ap, align 4, !tbaa !128
  %i.ou = trunc i32 %i.ot to i16                  ; 3 uses
  %i.ov = sext i16 %i.ou to i64                   ; 3 uses
  %i.ow = mul nsw i64 %i.ov, %i.ov
  %i.ox = lshr i32 %i.ot, 16                      ; 2 uses
  %i.oy = ashr i32 %i.ot, 16
  %i.oz = sext i32 %i.oy to i64                   ; 3 uses
  %i.pa = mul nsw i64 %i.oz, %i.oz
  %i.pb = add nuw nsw i64 %i.ow, 8192
  %i.pc = add nuw nsw i64 %i.pb, %i.pa            ; 3 uses
  %i.pd = lshr i64 %i.pc, 14                      ; 2 uses
  %i.pe = icmp samesign ugt i64 %i.pc, 268402687
  br i1 %i.pe, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %or.cond.i.i373 = icmp samesign ult i64 %i.pc, 16777216
  br i1 %or.cond.i.i373, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.pf = shl nsw i64 %i.ov, 16
  %i.pg = sdiv i64 %i.pf, %i.pd
  store i64 %i.pg, ptr %i.ar, align 8, !tbaa !248
  %i.ph = shl nsw i64 %i.oz, 16
  %i.pi = sdiv i64 %i.ph, %i.pd
  store i64 %i.pi, ptr %i.as, align 8, !tbaa !249
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bi
  %sext.i = shl i32 %i.ot, 16
  %i.pj = insertelement <2 x i32> poison, i32 %sext.i, i64 0
  %i.pk = insertelement <2 x i32> %i.pj, i32 %i.ot, i64 1
  %i.pl = ashr <2 x i32> %i.pk, splat (i32 14)
  %i.pm = and <2 x i32> %i.pl, <i32 -1, i32 -4>
  %i.pn = sext <2 x i32> %i.pm to <2 x i64>
  store <2 x i64> %i.pn, ptr %i.ar, align 8, !tbaa !185
  %i.po = icmp eq i16 %i.ou, 16384
  br i1 %i.po, label %.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pp = icmp eq i32 %i.ox, 16384
  br i1 %i.pp, label %.sink.split, label %.thread9.i

.thread9.i:                                       ; preds = %bb.bn
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.at, align 8, !tbaa !154
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.at, align 8, !tbaa !154
  %i.pq = icmp eq i16 %i.ou, 16384
  br i1 %i.pq, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.thread9.i
  %i.pr = icmp eq i32 %i.ox, 16384
  %spec.select = select i1 %i.pr, ptr @Project_y, ptr @Project
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
  %i.ps = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.pt = icmp eq i16 %i.ps, 16384
  br i1 %i.pt, label %Ins_SFVTPV.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pu = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.pv = icmp eq i16 %i.pu, 16384
  %Project_y.Dual_Project1252 = select i1 %i.pv, ptr @Project_y, ptr @Dual_Project
  br label %Ins_SFVTPV.exit

Ins_SFVTPV.exit:                                  ; preds = %bb.br, %bb.bq
  %Project_x.sink1241 = phi ptr [ @Project_x, %bb.bq ], [ %Project_y.Dual_Project1252, %bb.br ]
  store ptr %Project_x.sink1241, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.bs:                                            ; preds = %bb.f
  %i.pw = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.py = load i64, ptr %i.px, align 8, !tbaa !185 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !185 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !185 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !185 ; 2 uses
  %i.qf = load i16, ptr %i.bu, align 8, !tbaa !258 ; 2 uses
  %8 = trunc i64 %i.qc to i16
  %.not.i = icmp ugt i16 %i.qf, %8
  %9 = trunc i64 %i.qe to i16
  %.not95.i = icmp ugt i16 %i.qf, %9
  %or.cond.i = select i1 %.not.i, i1 %.not95.i, i1 false
  br i1 %or.cond.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.qg = load i16, ptr %i.ad, align 8, !tbaa !255 ; 2 uses
  %10 = trunc i64 %i.py to i16
  %.not96.i = icmp ugt i16 %i.qg, %10
  %11 = trunc i64 %i.qa to i16
  %.not97.i = icmp ugt i16 %i.qg, %11
  %or.cond102.i = select i1 %.not96.i, i1 %.not97.i, i1 false
  br i1 %or.cond102.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.qh = load i16, ptr %i.ae, align 8, !tbaa !617
  %12 = trunc i64 %i.pw to i16
  %.not98.i = icmp ugt i16 %i.qh, %12
  br i1 %.not98.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.qi = load i8, ptr %i.i, align 2, !tbaa !163
  %.not99.i = icmp eq i8 %i.qi, 0
  br i1 %.not99.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.bw:                                            ; preds = %bb.bu
  %i.qj = load ptr, ptr %i.bv, align 8, !tbaa !259 ; 2 uses
  %i.qk = and i64 %i.qe, 65535                    ; 2 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qk ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !230
  %i.qn = and i64 %i.qc, 65535                    ; 2 uses
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qn ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !230 ; 2 uses
  %i.qq = sub i64 %i.qm, %i.qp                    ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !257
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !257 ; 2 uses
  %i.qv = sub i64 %i.qs, %i.qu                    ; 2 uses
  %i.qw = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %i.qx = and i64 %i.qa, 65535                    ; 2 uses
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %i.qx ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !230
  %i.ra = and i64 %i.py, 65535                    ; 3 uses
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %i.ra ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !230 ; 2 uses
  %i.rd = sub i64 %i.qz, %i.rc                    ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !257
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !257 ; 2 uses
  %i.ri = sub i64 %i.rf, %i.rh                    ; 3 uses
  %i.rj = sub i64 0, %i.qv                        ; 2 uses
  %i.rk = call i64 @FT_MulDiv(i64 noundef %i.rd, i64 noundef %i.rj, i64 noundef 64) #21
  %i.rl = call i64 @FT_MulDiv(i64 noundef %i.ri, i64 noundef %i.qq, i64 noundef 64) #21
  %i.rm = add i64 %i.rl, %i.rk                    ; 3 uses
  %i.rn = call i64 @FT_MulDiv(i64 noundef %i.rd, i64 noundef %i.qq, i64 noundef 64) #21
  %i.ro = call i64 @FT_MulDiv(i64 noundef %i.ri, i64 noundef %i.qv, i64 noundef 64) #21
  %i.rp = add i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.abs.i64(i64 %i.rm, i1 true)
  %i.rr = mul i64 %i.rq, 19
  %i.rs = call i64 @llvm.abs.i64(i64 %i.rp, i1 true)
  %i.rt = icmp sgt i64 %i.rr, %i.rs
  br i1 %i.rt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ru = sub i64 %i.qu, %i.rh
  %i.rv = sub i64 %i.qp, %i.rc
  %i.rw = call i64 @FT_MulDiv(i64 noundef %i.rv, i64 noundef %i.rj, i64 noundef 64) #21
  %i.rx = call i64 @FT_MulDiv(i64 noundef %i.ru, i64 noundef %i.qq, i64 noundef 64) #21
  %i.ry = add i64 %i.rx, %i.rw                    ; 2 uses
  %i.rz = call i64 @FT_MulDiv(i64 noundef %i.ry, i64 noundef %i.rd, i64 noundef %i.rm) #21
  %i.sa = call i64 @FT_MulDiv(i64 noundef %i.ry, i64 noundef %i.ri, i64 noundef %i.rm) #21
  %i.sb = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.sb, i64 %i.ra ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !230
  %i.se = add i64 %i.sd, %i.rz
  %i.sf = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.sg = and i64 %i.pw, 65535                    ; 2 uses
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.sg ; 2 uses
  store i64 %i.se, ptr %i.sh, align 8, !tbaa !230
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !257
  %i.sk = add i64 %i.sj, %i.sa
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.sl = load ptr, ptr %i.ak, align 8, !tbaa !256 ; 2 uses
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %i.ra
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %i.qx
  %i.so = load ptr, ptr %i.bv, align 8, !tbaa !259 ; 2 uses
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.so, i64 %i.qn
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.so, i64 %i.qk
  %i.sr = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.ss = and i64 %i.pw, 65535                    ; 2 uses
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %i.ss ; 2 uses
  %i.su = load <2 x i64>, ptr %i.sm, align 8, !tbaa !185
  %i.sv = load <2 x i64>, ptr %i.sn, align 8, !tbaa !185
  %i.sw = load <2 x i64>, ptr %i.sp, align 8, !tbaa !185
  %i.sx = load <2 x i64>, ptr %i.sq, align 8, !tbaa !185
  %i.sy = add <2 x i64> %i.sv, %i.su
  %i.sz = add <2 x i64> %i.sy, %i.sw
  %i.ta = add <2 x i64> %i.sz, %i.sx
  %i.tb = sdiv <2 x i64> %i.ta, splat (i64 4)     ; 2 uses
  %i.tc = extractelement <2 x i64> %i.tb, i64 0
  store i64 %i.tc, ptr %i.st, align 8, !tbaa !230
  %i.td = extractelement <2 x i64> %i.tb, i64 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink104.i = phi ptr [ %i.st, %bb.by ], [ %i.sh, %bb.bx ]
  %.sink.i = phi i64 [ %i.td, %bb.by ], [ %i.sk, %bb.bx ]
  %.pre-phi.i = phi i64 [ %i.ss, %bb.by ], [ %i.sg, %bb.bx ]
  %i.te = getelementptr inbounds nuw i8, ptr %.sink104.i, i64 8
  store i64 %.sink.i, ptr %i.te, align 8, !tbaa !257
  %i.tf = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.pre-phi.i ; 2 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !186
  %i.ti = or i8 %i.th, 24
  store i8 %i.ti, ptr %i.tg, align 1, !tbaa !186
  br label %Ins_SPVTL.exitthread-pre-split

bb.ca:                                            ; preds = %bb.f
  %.val306 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tj = trunc i64 %.val306 to i16
  store i16 %i.tj, ptr %i.cm, align 8, !tbaa !260
  br label %Ins_SPVTL.exitthread-pre-split

bb.cb:                                            ; preds = %bb.f
  %.val307 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tk = trunc i64 %.val307 to i16
  store i16 %i.tk, ptr %i.cn, align 2, !tbaa !261
  br label %Ins_SPVTL.exitthread-pre-split

bb.cc:                                            ; preds = %bb.f
  %.val308 = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tl = trunc i64 %.val308 to i16
  store i16 %i.tl, ptr %i.co, align 4, !tbaa !262
  br label %Ins_SPVTL.exitthread-pre-split

bb.cd:                                            ; preds = %bb.f
  %i.tm = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tn = trunc i64 %i.tm to i32
  switch i32 %i.tn, label %bb.cf [
    i32 0, label %bb.cg
    i32 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.to = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i375 = icmp eq i8 %i.to, 0
  br i1 %.not.i375, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %.sink10.i = phi i64 [ 248, %bb.ce ], [ 304, %bb.cd ]
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.tp, i64 56, i1 false)
  %i.tq = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tr = trunc i64 %i.tq to i16
  store i16 %i.tr, ptr %i.bw, align 2, !tbaa !263
  br label %Ins_SPVTL.exitthread-pre-split

bb.ch:                                            ; preds = %bb.f
  %i.ts = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tt = trunc i64 %i.ts to i32
  switch i32 %i.tt, label %bb.cj [
    i32 0, label %bb.ck
    i32 1, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.tu = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i377 = icmp eq i8 %i.tu, 0
  br i1 %.not.i377, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %.sink10.i376 = phi i64 [ 248, %bb.ci ], [ 304, %bb.ch ]
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.tv, i64 56, i1 false)
  %i.tw = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tx = trunc i64 %i.tw to i16
  store i16 %i.tx, ptr %i.bx, align 8, !tbaa !264
  br label %Ins_SPVTL.exitthread-pre-split

bb.cl:                                            ; preds = %bb.f
  %i.ty = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.tz = trunc i64 %i.ty to i32
  switch i32 %i.tz, label %bb.cn [
    i32 0, label %bb.co
    i32 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ua = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i379 = icmp eq i8 %i.ua, 0
  br i1 %.not.i379, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %.sink10.i378 = phi i64 [ 248, %bb.cm ], [ 304, %bb.cl ]
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.ub, i64 56, i1 false)
  %i.uc = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.ud = trunc i64 %i.uc to i16
  store i16 %i.ud, ptr %i.cd, align 2, !tbaa !622
  br label %Ins_SPVTL.exitthread-pre-split

bb.cp:                                            ; preds = %bb.f
  %i.ue = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.uf = trunc i64 %i.ue to i32
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a

bb.cz:                                            ; preds = %bb.dg, %bb.cy
  %i.um = phi i64 [ %.promoted7.i, %bb.cy ], [ %i.up, %bb.dg ]
  %i.un = phi i32 [ 1, %bb.cy ], [ %i.vf, %bb.dg ]
  %.0.i = phi i32 [ 1, %bb.cy ], [ %.1.i, %bb.dg ] ; 3 uses
  %i.uo = sext i32 %i.un to i64
  %i.up = add nsw i64 %i.um, %i.uo                ; 5 uses
  store i64 %i.up, ptr %i.d, align 8, !tbaa !206
  %i.uq = icmp slt i64 %i.up, %i.ul
  br i1 %i.uq, label %bb.da, label %.loopexit.sink.split

bb.da:                                            ; preds = %bb.cz
  %i.ur = getelementptr inbounds i8, ptr %i.dv, i64 %i.up
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !186 ; 4 uses
  store i8 %i.us, ptr %i.e, align 8, !tbaa !238
  %i.ut = zext i8 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr @opcode_length, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !186
  %i.uw = sext i8 %i.uv to i32                    ; 3 uses
  store i32 %i.uw, ptr %i.f, align 4, !tbaa !239
  %i.ux = and i8 %i.us, -2
  %i.uy = icmp eq i8 %i.ux, 64
  br i1 %i.uy, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.uz = add nsw i64 %i.up, 1                    ; 2 uses
  %.not.i.i381 = icmp slt i64 %i.uz, %i.ul
  br i1 %.not.i.i381, label %bb.dc, label %.loopexit.sink.split

bb.dc:                                            ; preds = %bb.db
  %i.va = getelementptr inbounds i8, ptr %i.dv, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !186
  %i.vc = zext i8 %i.vb to i32
  %i.vd = mul nsw i32 %i.vc, %i.uw
  %i.ve = sub nsw i32 2, %i.vd                    ; 2 uses
  store i32 %i.ve, ptr %i.f, align 4, !tbaa !239
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.vf = phi i32 [ %i.ve, %bb.dc ], [ %i.uw, %bb.da ]
  switch i8 %i.us, label %bb.dg [
    i8 88, label %bb.de
    i8 89, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  %i.vg = add nsw i32 %.0.i, 1
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.vh = add nsw i32 %.0.i, -1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.1.i = phi i32 [ %.0.i, %bb.dd ], [ %i.vg, %bb.de ], [ %i.vh, %bb.df ] ; 2 uses
  %.not4.i = icmp eq i32 %.1.i, 0
  br i1 %.not4.i, label %Ins_SPVTL.exitthread-pre-split, label %bb.cz, !llvm.loop !559

bb.dh:                                            ; preds = %bb.f
  %i.vi = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.vj = or i64 %i.vi, %i.eo
  %or.cond = icmp eq i64 %i.vj, 0
  br i1 %or.cond, label %.sink.split.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vk = load i64, ptr %i.d, align 8, !tbaa !206
  %i.vl = add i64 %i.vk, %i.vi                    ; 3 uses
  store i64 %i.vl, ptr %i.d, align 8, !tbaa !206
  %i.vm = icmp slt i64 %i.vl, 0
  br i1 %i.vm, label %.sink.split.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vn = load i32, ptr %i.o, align 8, !tbaa !267 ; 2 uses
  %i.vo = icmp sgt i32 %i.vn, 0
  br i1 %i.vo, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.vp = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.vq = zext nneg i32 %i.vn to i64
  %i.vr = getelementptr [32 x i8], ptr %i.vp, i64 %i.vq
  %i.vs = getelementptr i8, ptr %i.vr, i64 -8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !269
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !625
  %i.vw = icmp sgt i64 %i.vl, %i.vv
  br i1 %i.vw, label %.sink.split.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  store i32 0, ptr %i.f, align 4, !tbaa !239
  %i.vx = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.vy = icmp slt i64 %i.vx, 0
  br i1 %i.vy, label %bb.dm, label %Ins_SPVTL.exitthread-pre-split

bb.dm:                                            ; preds = %bb.dl
  %i.vz = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.wa = add i64 %i.vz, 1                        ; 2 uses
  store i64 %i.wa, ptr %i.bf, align 8, !tbaa !271
  %i.wb = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.wc = icmp ugt i64 %i.wa, %i.wb
  br i1 %i.wc, label %.sink.split.i, label %Ins_SPVTL.exitthread-pre-split

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
  %i.wd = load i64, ptr %i.bp, align 8, !tbaa !626
  %i.we = mul i64 %i.wd, %.val313                 ; 2 uses
  %i.wf = ashr i64 %i.we, 63
  %i.wg = add i64 %i.we, 32768
  %i.wh = add i64 %i.wg, %i.wf
  %i.wi = ashr i64 %i.wh, 16
  store i64 %i.wi, ptr %i.dl, align 8, !tbaa !275
  br label %Ins_SPVTL.exitthread-pre-split

bb.dq:                                            ; preds = %bb.f
  %i.wj = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.wj, ptr %i.wk, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.dr:                                            ; preds = %bb.f
  store i64 0, ptr %i.k, align 8, !tbaa !241
  br label %Ins_SPVTL.exitthread-pre-split

bb.ds:                                            ; preds = %bb.f
  %i.wl = load <2 x i64>, ptr %i.ew, align 8, !tbaa !185
  %i.wm = shufflevector <2 x i64> %i.wl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.wm, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.dt:                                            ; preds = %bb.f
  %.val314 = load i64, ptr %i.g, align 8, !tbaa !240
  store i64 %.val314, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.du:                                            ; preds = %bb.f
  %i.wn = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.wo = icmp slt i64 %i.wn, 1
  %i.wp = icmp samesign ugt i64 %i.wn, %i.eo
  %or.cond786 = select i1 %i.wo, i1 true, i1 %i.wp
  br i1 %or.cond786, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.wq = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i383 = icmp eq i8 %i.wq, 0
  br i1 %.not.i383, label %Ins_CINDEX.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_CINDEX.exit

bb.dx:                                            ; preds = %bb.du
  %i.wr = sub nsw i64 0, %i.wn
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.wr
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !185
  br label %Ins_CINDEX.exit

Ins_CINDEX.exit:                                  ; preds = %bb.dv, %bb.dw, %bb.dx
  %storemerge.i = phi i64 [ %i.wt, %bb.dx ], [ 0, %bb.dw ], [ 0, %bb.dv ]
  store i64 %storemerge.i, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.dy:                                            ; preds = %bb.f
  %i.wu = load i64, ptr %i.ew, align 8, !tbaa !185 ; 4 uses
  %i.wv = icmp slt i64 %i.wu, 1
  %i.ww = icmp samesign ugt i64 %i.wu, %i.eo
  %or.cond787 = select i1 %i.wv, i1 true, i1 %i.ww
  br i1 %or.cond787, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.wx = load i8, ptr %i.i, align 2, !tbaa !163
  %.not.i384 = icmp eq i8 %i.wx, 0
  br i1 %.not.i384, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ea:                                            ; preds = %bb.dy
  %i.wy = sub nsw i64 0, %i.wu
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.wy ; 3 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !185
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xc = shl i64 %i.wu, 3
  %i.xd = add i64 %i.xc, -8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wz, ptr nonnull align 8 %i.xb, i64 %i.xd, i1 false)
  %i.xe = getelementptr inbounds i8, ptr %i.ew, i64 -8
  store i64 %i.xa, ptr %i.xe, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.eb:                                            ; preds = %bb.f
  %.val315 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.xf = getelementptr i8, ptr %i.ew, i64 8
  %.val316 = load i64, ptr %i.xf, align 8, !tbaa !185 ; 2 uses
  %i.xg = trunc i64 %.val315 to i16               ; 2 uses
  %i.xh = trunc i64 %.val316 to i16               ; 2 uses
  %i.xi = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not.i385 = icmp ugt i16 %i.xi, %i.xg
  br i1 %.not.i385, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.xj = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not28.i = icmp ugt i16 %i.xj, %i.xh
  br i1 %.not28.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.xk = load i8, ptr %i.i, align 2, !tbaa !163
  %.not29.i = icmp eq i8 %i.xk, 0
  br i1 %.not29.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ee:                                            ; preds = %bb.ec
  %i.xl = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.xm = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.xn = and i64 %.val316, 65535
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %i.xm, i64 %i.xn ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !230
  %i.xq = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.xr = and i64 %.val315, 65535
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %i.xq, i64 %i.xr ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !230
  %i.xu = sub i64 %i.xp, %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !257
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !257
  %i.xz = sub i64 %i.xw, %i.xy
  %i.ya = call i64 %i.xl(ptr noundef nonnull %0, i64 noundef %i.xu, i64 noundef %i.xz) #21, !inline_history !560
  %i.yb = sdiv i64 %i.ya, 2                       ; 2 uses
  %i.yc = load ptr, ptr %i.at, align 8, !tbaa !250
  call void %i.yc(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.xg, i64 noundef %i.yb) #21, !inline_history !560
  %i.yd = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.ye = sub nsw i64 0, %i.yb
  call void %i.yd(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.xh, i64 noundef %i.ye) #21, !inline_history !560
  br label %Ins_SPVTL.exitthread-pre-split

bb.ef:                                            ; preds = %bb.f
  %i.yf = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i386 = icmp eq ptr %i.yf, null
  br i1 %.not.i386, label %._crit_edge.i387, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.yg = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.yh = zext i32 %i.yg to i64
  %.idx.i = shl nuw nsw i64 %i.yh, 5
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 %.idx.i
  %.not40.i = icmp eq i32 %i.yg, 0
  br i1 %.not40.i, label %._crit_edge.i387, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.eg, %bb.en
  %.031.i = phi ptr [ %i.zm, %bb.en ], [ %i.yf, %bb.eg ] ; 6 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.031.i, i64 24
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !276
  %i.yl = and i32 %i.yk, 255
  %i.ym = icmp eq i32 %i.yl, 40
  br i1 %i.ym, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %.lr.ph.i
  %i.yn = getelementptr inbounds nuw i8, ptr %.031.i, i64 28
  %i.yo = load i8, ptr %i.yn, align 4, !tbaa !277
  %.not28.i388 = icmp eq i8 %i.yo, 0
  br i1 %.not28.i388, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yp = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.yq = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i389 = icmp slt i32 %i.yp, %i.yq
  br i1 %.not29.i389, label %bb.ej, label %.loopexit.sink.split

bb.ej:                                            ; preds = %bb.ei
  %i.yr = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.ys = add nsw i32 %i.yp, 1
  store i32 %i.ys, ptr %i.o, align 8, !tbaa !267
  %i.yt = sext i32 %i.yp to i64
  %i.yu = getelementptr inbounds [32 x i8], ptr %i.yr, i64 %i.yt ; 4 uses
  %i.yv = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.yv, ptr %i.yu, align 8, !tbaa !278
  %i.yw = load i64, ptr %i.d, align 8, !tbaa !206
  %i.yx = add nsw i64 %i.yw, 1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store i64 %i.yx, ptr %i.yy, align 8, !tbaa !279
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store i64 1, ptr %i.yz, align 8, !tbaa !280
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  store ptr %.031.i, ptr %i.za, align 8, !tbaa !269
  %i.zb = load i32, ptr %.031.i, align 8, !tbaa !281 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !282 ; 2 uses
  %i.ze = add i32 %i.zb, -4
  %or.cond.i.i390 = icmp ult i32 %i.ze, -3
  br i1 %or.cond.i.i390, label %.loopexit.sink.split, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.zf = zext nneg i32 %i.zb to i64
  %i.zg = getelementptr [16 x i8], ptr %0, i64 %i.zf ; 2 uses
  %i.zh = getelementptr i8, ptr %i.zg, i64 720
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !202 ; 2 uses
  %.not.i.i391 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i391, label %.loopexit.sink.split, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zj = getelementptr i8, ptr %i.zg, i64 728
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !203 ; 2 uses
  %i.zl = icmp sgt i64 %i.zd, %i.zk
  br i1 %i.zl, label %.loopexit.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el
  store ptr %i.zi, ptr %i.c, align 8, !tbaa !204
  store i64 %i.zk, ptr %i.s, align 8, !tbaa !205
  store i64 %i.zd, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.zb, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.en:                                            ; preds = %bb.eh, %.lr.ph.i
  %i.zm = getelementptr inbounds nuw i8, ptr %.031.i, i64 32 ; 2 uses
  %i.zn = icmp ult ptr %i.zm, %i.yi
  br i1 %i.zn, label %.lr.ph.i, label %._crit_edge.i387, !llvm.loop !0

._crit_edge.i387:                                 ; preds = %bb.en, %bb.eg, %bb.ef
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.eo:                                            ; preds = %bb.f
  %.val317 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.zo = load i16, ptr %i.bu, align 8, !tbaa !258
  %13 = trunc i64 %.val317 to i16
  %.not.i392 = icmp ugt i16 %i.zo, %13
  br i1 %.not.i392, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.zp = load i8, ptr %i.i, align 2, !tbaa !163
  %.not13.i = icmp eq i8 %i.zp, 0
  br i1 %.not13.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.eq:                                            ; preds = %bb.eo
  %i.zq = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not11.i = icmp eq i16 %i.zq, 0
  %spec.select.i393 = select i1 %.not11.i, i8 -1, i8 -9 ; 2 uses
  %i.zr = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not12.i = icmp eq i16 %i.zr, 0
  %i.zs = and i8 %spec.select.i393, -17
  %.1.i394 = select i1 %.not12.i, i8 %spec.select.i393, i8 %i.zs
  %i.zt = load ptr, ptr %i.dk, align 8, !tbaa !283
  %i.zu = and i64 %.val317, 65535
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zu ; 2 uses
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !186
  %i.zx = and i8 %.1.i394, %i.zw
  store i8 %i.zx, ptr %i.zv, align 1, !tbaa !186
  br label %Ins_SPVTL.exitthread-pre-split

bb.er:                                            ; preds = %bb.f
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !185 ; 4 uses
  %i.aaa = load i32, ptr %i.dh, align 8, !tbaa !170
  %i.aab = add i32 %i.aaa, 1                      ; 2 uses
  %i.aac = zext i32 %i.aab to i64
  %.not.i395 = icmp ult i64 %i.zz, %i.aac
  br i1 %.not.i395, label %bb.es, label %.sink.split.i396

bb.es:                                            ; preds = %bb.er
  %i.aad = load ptr, ptr %i.de, align 8, !tbaa !166 ; 6 uses
  %.not51.i = icmp eq ptr %i.aad, null
  %i.aae = load i32, ptr %i.df, align 8, !tbaa !168 ; 2 uses
  %.not52.i = icmp eq i32 %i.aab, %i.aae
  br i1 %.not52.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aaf = getelementptr inbounds nuw [32 x i8], ptr %i.aad, i64 %i.zz ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !276
  %i.aai = zext i32 %i.aah to i64
  %.not53.i = icmp eq i64 %i.zz, %i.aai
  br i1 %.not53.i, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.aaj = zext i32 %i.aae to i64
  %i.aak = getelementptr inbounds nuw [32 x i8], ptr %i.aad, i64 %i.aaj
  %i.aal = select i1 %.not51.i, ptr null, ptr %i.aak ; 3 uses
  %i.aam = icmp ult ptr %i.aad, %i.aal
  br i1 %i.aam, label %.lr.ph.i401, label %.critedge.i

.lr.ph.i401:                                      ; preds = %bb.eu, %bb.ev
  %.04658.i = phi ptr [ %i.aaq, %bb.ev ], [ %i.aad, %bb.eu ] ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.04658.i, i64 24
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !276
  %i.aap = zext i32 %i.aao to i64
  %.not55.i = icmp eq i64 %i.zz, %i.aap
  br i1 %.not55.i, label %.critedge.i, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i401
  %i.aaq = getelementptr inbounds nuw i8, ptr %.04658.i, i64 32 ; 3 uses
  %i.aar = icmp ult ptr %i.aaq, %i.aal
  br i1 %i.aar, label %.lr.ph.i401, label %.critedge.i, !llvm.loop !561

.critedge.i:                                      ; preds = %bb.ev, %.lr.ph.i401, %bb.eu
  %.046.lcssa.i = phi ptr [ %i.aad, %bb.eu ], [ %.04658.i, %.lr.ph.i401 ], [ %i.aaq, %bb.ev ] ; 2 uses
  %i.aas = icmp eq ptr %.046.lcssa.i, %i.aal
  br i1 %i.aas, label %.sink.split.i396, label %bb.ew

bb.ew:                                            ; preds = %.critedge.i, %bb.et
  %.1.i398 = phi ptr [ %.046.lcssa.i, %.critedge.i ], [ %i.aaf, %bb.et ] ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.1.i398, i64 28
  %i.aau = load i8, ptr %i.aat, align 4, !tbaa !277
  %.not56.i = icmp eq i8 %i.aau, 0
  br i1 %.not56.i, label %.sink.split.i396, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aav = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.aaw = load i32, ptr %i.p, align 4, !tbaa !160
  %.not57.i = icmp slt i32 %i.aav, %i.aaw
  br i1 %.not57.i, label %bb.ey, label %.sink.split.i396

bb.ey:                                            ; preds = %bb.ex
  %i.aax = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.aay = icmp sgt i64 %i.aax, 0
  br i1 %i.aay, label %bb.ez, label %Ins_SPVTL.exitthread-pre-split

bb.ez:                                            ; preds = %bb.ey
  %i.aaz = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.aba = sext i32 %i.aav to i64
  %i.abb = getelementptr inbounds [32 x i8], ptr %i.aaz, i64 %i.aba ; 4 uses
  %i.abc = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.abc, ptr %i.abb, align 8, !tbaa !278
  %i.abd = load i64, ptr %i.d, align 8, !tbaa !206
  %i.abe = add nsw i64 %i.abd, 1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  store i64 %i.abe, ptr %i.abf, align 8, !tbaa !279
  %i.abg = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.abh = shl i64 %i.abg, 32
  %i.abi = ashr exact i64 %i.abh, 32
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  store i64 %i.abi, ptr %i.abj, align 8, !tbaa !280
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  store ptr %.1.i398, ptr %i.abk, align 8, !tbaa !269
  %i.abl = add nsw i32 %i.aav, 1
  store i32 %i.abl, ptr %i.o, align 8, !tbaa !267
  %i.abm = load i32, ptr %.1.i398, align 8, !tbaa !281 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.1.i398, i64 8
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !282 ; 2 uses
  %i.abp = add i32 %i.abm, -4
  %or.cond.i.i399 = icmp ult i32 %i.abp, -3
  br i1 %or.cond.i.i399, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i32 132, ptr %i.b, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit.i

bb.fb:                                            ; preds = %bb.ez
  %i.abq = zext nneg i32 %i.abm to i64
  %i.abr = getelementptr [16 x i8], ptr %0, i64 %i.abq ; 2 uses
  %i.abs = getelementptr i8, ptr %i.abr, i64 720
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !202 ; 2 uses
  %.not.i.i400 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i400, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 138, ptr %i.b, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit.i

bb.fd:                                            ; preds = %bb.fb
  %i.abu = getelementptr i8, ptr %i.abr, i64 728
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !203 ; 2 uses
  %i.abw = icmp sgt i64 %i.abo, %i.abv
  br i1 %i.abw, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 131, ptr %i.b, align 8, !tbaa !237
  br label %Ins_Goto_CodeRange.exit.i

bb.ff:                                            ; preds = %bb.fd
  store ptr %i.abt, ptr %i.c, align 8, !tbaa !204
  store i64 %i.abv, ptr %i.s, align 8, !tbaa !205
  store i64 %i.abo, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.abm, ptr %i.r, align 4, !tbaa !207
  br label %Ins_Goto_CodeRange.exit.i

Ins_Goto_CodeRange.exit.i:                        ; preds = %bb.ff, %bb.fe, %bb.fc, %bb.fa
  %i.abx = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.aby = load i64, ptr %i.di, align 8, !tbaa !284
  %i.abz = add i64 %i.aby, %i.abx                 ; 2 uses
  store i64 %i.abz, ptr %i.di, align 8, !tbaa !284
  %i.aca = load i64, ptr %i.dj, align 8, !tbaa !285
  %i.acb = icmp ugt i64 %i.abz, %i.aca
  br i1 %i.acb, label %.sink.split.i396, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i396:                                 ; preds = %Ins_Goto_CodeRange.exit.i, %bb.ex, %bb.ew, %.critedge.i, %bb.er
  %.sink.i397 = phi i32 [ 130, %bb.ex ], [ 139, %Ins_Goto_CodeRange.exit.i ], [ 134, %.critedge.i ], [ 134, %bb.ew ], [ 134, %bb.er ] ; 2 uses
  store i32 %.sink.i397, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.fg:                                            ; preds = %bb.f
  %.val318 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 4 uses
  %i.acc = load i32, ptr %i.dh, align 8, !tbaa !170
  %i.acd = add i32 %i.acc, 1                      ; 2 uses
  %i.ace = zext i32 %i.acd to i64
  %.not.i402 = icmp ult i64 %.val318, %i.ace
  br i1 %.not.i402, label %bb.fh, label %.loopexit.sink.split

bb.fh:                                            ; preds = %bb.fg
  %i.acf = load ptr, ptr %i.de, align 8, !tbaa !166 ; 5 uses
  %.not42.i = icmp eq ptr %i.acf, null
  br i1 %.not42.i, label %.loopexit.sink.split, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.acg = load i32, ptr %i.df, align 8, !tbaa !168 ; 3 uses
  %.not43.i = icmp eq i32 %i.acd, %i.acg
  br i1 %.not43.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ach = getelementptr inbounds nuw [32 x i8], ptr %i.acf, i64 %.val318 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !276
  %i.ack = zext i32 %i.acj to i64
  %.not44.i = icmp eq i64 %.val318, %i.ack
  br i1 %.not44.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.acl = zext i32 %i.acg to i64
  %.idx.i404 = shl nuw nsw i64 %i.acl, 5
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 %.idx.i404 ; 2 uses
  %.not4.i405 = icmp eq i32 %i.acg, 0
  br i1 %.not4.i405, label %.critedge.i407, label %.lr.ph.i406

.lr.ph.i406:                                      ; preds = %bb.fk, %bb.fl
  %.0381.i = phi ptr [ %i.acq, %bb.fl ], [ %i.acf, %bb.fk ] ; 3 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.0381.i, i64 24
end_hunk_1
begin_hunk_2_@TT_RunIns:bb.a
  store i64 %i.adq, ptr %i.s, align 8, !tbaa !205
  store i64 %i.adj, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.adh, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.fs:                                            ; preds = %bb.f
  %i.ads = load i32, ptr %i.t, align 8, !tbaa !208
  %i.adt = icmp eq i32 %i.ads, 3
  br i1 %i.adt, label %.loopexit.sink.split, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adu = load ptr, ptr %i.de, align 8, !tbaa !166 ; 4 uses
  %.not.i411 = icmp eq ptr %i.adu, null
  br i1 %.not.i411, label %._crit_edge.thread.i, label %bb.fu

._crit_edge.thread.i:                             ; preds = %bb.ft
  %i.adv = load i64, ptr %i.ew, align 8, !tbaa !185
  %.pre1010 = load i32, ptr %i.df, align 8, !tbaa !168
  br label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.adw = load i32, ptr %i.df, align 8, !tbaa !168 ; 3 uses
  %i.adx = zext i32 %i.adw to i64
  %.idx.i412 = shl nuw nsw i64 %i.adx, 5
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 %.idx.i412 ; 3 uses
  %i.adz = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %.not61.i = icmp eq i32 %i.adw, 0
  br i1 %.not61.i, label %._crit_edge.i414, label %.lr.ph.i413

.lr.ph.i413:                                      ; preds = %bb.fu, %bb.fv
  %.042.i = phi ptr [ %i.aee, %bb.fv ], [ %i.adu, %bb.fu ] ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.aeb = load i32, ptr %i.aea, align 8, !tbaa !276
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = icmp eq i64 %i.adz, %i.aec
  br i1 %i.aed, label %._crit_edge.i414, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i413
  %i.aee = getelementptr inbounds nuw i8, ptr %.042.i, i64 32 ; 3 uses
  %i.aef = icmp ult ptr %i.aee, %i.ady
  br i1 %i.aef, label %.lr.ph.i413, label %._crit_edge.i414, !llvm.loop !563

._crit_edge.i414:                                 ; preds = %bb.fv, %.lr.ph.i413, %bb.fu
  %.0.lcssa.i = phi ptr [ %i.adu, %bb.fu ], [ %.042.i, %.lr.ph.i413 ], [ %i.aee, %bb.fv ] ; 2 uses
  %i.aeg = icmp eq ptr %.0.lcssa.i, %i.ady
  br i1 %i.aeg, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %._crit_edge.i414, %._crit_edge.thread.i
  %i.aeh = phi i32 [ %.pre1010, %._crit_edge.thread.i ], [ %i.adw, %._crit_edge.i414 ] ; 2 uses
  %.0.lcssa58.i = phi ptr [ null, %._crit_edge.thread.i ], [ %i.ady, %._crit_edge.i414 ]
  %i.aei = phi i64 [ %i.adv, %._crit_edge.thread.i ], [ %i.adz, %._crit_edge.i414 ]
  %i.aej = load i32, ptr %i.dg, align 4, !tbaa !164
  %.not38.i = icmp ult i32 %i.aeh, %i.aej
  br i1 %.not38.i, label %bb.fx, label %.loopexit.sink.split

bb.fx:                                            ; preds = %bb.fw
  %i.aek = add nuw i32 %i.aeh, 1
  store i32 %i.aek, ptr %i.df, align 8, !tbaa !168
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %._crit_edge.i414
  %.0.lcssa57.i = phi ptr [ %.0.lcssa58.i, %bb.fx ], [ %.0.lcssa.i, %._crit_edge.i414 ] ; 5 uses
  %i.ael = phi i64 [ %i.aei, %bb.fx ], [ %i.adz, %._crit_edge.i414 ] ; 3 uses
  %i.aem = icmp ugt i64 %i.ael, 65535
  br i1 %i.aem, label %.loopexit.sink.split, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aen = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.aen, ptr %.0.lcssa57.i, align 8, !tbaa !281
  %i.aeo = trunc nuw nsw i64 %i.ael to i32        ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 24
  store i32 %i.aeo, ptr %i.aep, align 8, !tbaa !276
  %i.aeq = load i64, ptr %i.d, align 8, !tbaa !206 ; 2 uses
  %i.aer = add nsw i64 %i.aeq, 1
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 8
  store i64 %i.aer, ptr %i.aes, align 8, !tbaa !282
  %i.aet = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 28
  store i8 1, ptr %i.aet, align 4, !tbaa !277
  %i.aeu = load i32, ptr %i.dh, align 8, !tbaa !170
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = icmp samesign ugt i64 %i.ael, %i.aev
  br i1 %i.aew, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 %i.aeo, ptr %i.dh, align 8, !tbaa !170
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aex = load i64, ptr %i.s, align 8, !tbaa !205 ; 2 uses
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gg, %bb.gb
  %i.aey = phi i64 [ %i.afb, %bb.gg ], [ %i.aeq, %bb.gb ]
  %i.aez = phi i32 [ %i.afr, %bb.gg ], [ 1, %bb.gb ]
  %i.afa = sext i32 %i.aez to i64
  %i.afb = add nsw i64 %i.aey, %i.afa             ; 6 uses
  store i64 %i.afb, ptr %i.d, align 8, !tbaa !206
  %i.afc = icmp slt i64 %i.afb, %i.aex
  br i1 %i.afc, label %bb.gd, label %.loopexit.sink.split

bb.gd:                                            ; preds = %bb.gc
  %i.afd = getelementptr inbounds i8, ptr %i.dv, i64 %i.afb
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !186 ; 4 uses
  store i8 %i.afe, ptr %i.e, align 8, !tbaa !238
  %i.aff = zext i8 %i.afe to i64
  %i.afg = getelementptr inbounds nuw i8, ptr @opcode_length, i64 %i.aff
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !186
  %i.afi = sext i8 %i.afh to i32                  ; 3 uses
  store i32 %i.afi, ptr %i.f, align 4, !tbaa !239
  %i.afj = and i8 %i.afe, -2
  %i.afk = icmp eq i8 %i.afj, 64
  br i1 %i.afk, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  %i.afl = add nsw i64 %i.afb, 1                  ; 2 uses
  %.not.i.i417 = icmp slt i64 %i.afl, %i.aex
  br i1 %.not.i.i417, label %bb.gf, label %.loopexit.sink.split

bb.gf:                                            ; preds = %bb.ge
  %i.afm = getelementptr inbounds i8, ptr %i.dv, i64 %i.afl
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !186
  %i.afo = zext i8 %i.afn to i32
  %i.afp = mul nsw i32 %i.afo, %i.afi
  %i.afq = sub nsw i32 2, %i.afp                  ; 2 uses
  store i32 %i.afq, ptr %i.f, align 4, !tbaa !239
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %i.afr = phi i32 [ %i.afq, %bb.gf ], [ %i.afi, %bb.gd ]
  switch i8 %i.afe, label %bb.gc [
    i8 -119, label %.loopexit.sink.split
    i8 44, label %.loopexit.sink.split
    i8 45, label %bb.gh
  ], !llvm.loop !564

bb.gh:                                            ; preds = %bb.gg
  %i.afs = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 16
  store i64 %i.afb, ptr %i.afs, align 8, !tbaa !625
  br label %Ins_SPVTL.exitthread-pre-split

bb.gi:                                            ; preds = %bb.f
  %i.aft = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.afu = icmp slt i32 %i.aft, 1
  br i1 %i.afu, label %.loopexit.sink.split, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.afv = add nsw i32 %i.aft, -1                 ; 2 uses
  store i32 %i.afv, ptr %i.o, align 8, !tbaa !267
  %i.afw = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.afx = zext nneg i32 %i.afv to i64
  %i.afy = getelementptr inbounds nuw [32 x i8], ptr %i.afw, i64 %i.afx ; 4 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 16 ; 2 uses
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !280 ; 2 uses
  %i.agb = add nsw i64 %i.aga, -1
  store i64 %i.agb, ptr %i.afz, align 8, !tbaa !280
  %i.agc = icmp sgt i64 %i.aga, 1
  br i1 %i.agc, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 %i.aft, ptr %i.o, align 8, !tbaa !267
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afy, i64 24
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !269
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !282
  store i64 %i.agg, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  br label %Ins_SPVTL.exitthread-pre-split

bb.gl:                                            ; preds = %bb.gj
  %i.agh = load i32, ptr %i.afy, align 8, !tbaa !278 ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.agj = load i64, ptr %i.agi, align 8, !tbaa !279 ; 2 uses
  %i.agk = add i32 %i.agh, -4
  %or.cond.i.i418 = icmp ult i32 %i.agk, -3
  br i1 %or.cond.i.i418, label %.loopexit.sink.split, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.agl = zext nneg i32 %i.agh to i64
  %i.agm = getelementptr [16 x i8], ptr %0, i64 %i.agl ; 2 uses
  %i.agn = getelementptr i8, ptr %i.agm, i64 720
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !202 ; 2 uses
  %.not.i.i419 = icmp eq ptr %i.ago, null
  br i1 %.not.i.i419, label %.loopexit.sink.split, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agp = getelementptr i8, ptr %i.agm, i64 728
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !203 ; 2 uses
  %i.agr = icmp sgt i64 %i.agj, %i.agq
  br i1 %i.agr, label %.loopexit.sink.split, label %bb.go

bb.go:                                            ; preds = %bb.gn
  store ptr %i.ago, ptr %i.c, align 8, !tbaa !204
  store i64 %i.agq, ptr %i.s, align 8, !tbaa !205
  store i64 %i.agj, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.agh, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.gp:                                            ; preds = %bb.f, %bb.f
  %.val319 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.ags = trunc i64 %.val319 to i16              ; 4 uses
  %i.agt = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i421 = icmp ugt i16 %i.agt, %i.ags
  br i1 %.not.i421, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agu = load i8, ptr %i.i, align 2, !tbaa !163
  %.not25.i = icmp eq i8 %i.agu, 0
  br i1 %.not25.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.gr:                                            ; preds = %bb.gp
  %i.agv = and i8 %i.dy, 1
  %.not24.i = icmp eq i8 %i.agv, 0
  br i1 %.not24.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.agw = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.agx = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.agy = and i64 %.val319, 65535
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %i.agx, i64 %i.agy ; 2 uses
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !230
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !257
  %i.ahd = call i64 %i.agw(ptr noundef nonnull %0, i64 noundef %i.aha, i64 noundef %i.ahc) #21, !inline_history !565 ; 2 uses
  %i.ahe = load ptr, ptr %i.be, align 8, !tbaa !265
  %i.ahf = call i64 %i.ahe(ptr noundef nonnull %0, i64 noundef %i.ahd, i64 noundef 0) #21, !inline_history !565
  %i.ahg = sub i64 %i.ahf, %i.ahd
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.0.i422 = phi i64 [ %i.ahg, %bb.gs ], [ 0, %bb.gr ]
  %i.ahh = load ptr, ptr %i.at, align 8, !tbaa !250
  call void %i.ahh(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.ags, i64 noundef %.0.i422) #21, !inline_history !565
  store i16 %i.ags, ptr %i.cm, align 8, !tbaa !260
  store i16 %i.ags, ptr %i.cn, align 2, !tbaa !261
  br label %Ins_SPVTL.exitthread-pre-split

bb.gu:                                            ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ahi = load i32, ptr %i.u, align 4, !tbaa !215 ; 2 uses
  switch i32 %i.ahi, label %bb.gv [
    i32 7, label %Ins_IUP.exit
    i32 0, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  %i.ahj = and i8 %i.dy, 1
  %i.ahk = zext nneg i8 %i.ahj to i32
  %i.ahl = shl nuw nsw i32 1, %i.ahk
  %i.ahm = or i32 %i.ahi, %i.ahl
  store i32 %i.ahm, ptr %i.u, align 4, !tbaa !215
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.ahn = load i16, ptr %i.cv, align 2, !tbaa !210
  %i.aho = icmp eq i16 %i.ahn, 0
  br i1 %i.aho, label %Ins_IUP.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ahp = and i8 %i.dy, 1
  %.not66.i = icmp eq i8 %i.ahp, 0
  %i.ahq = load ptr, ptr %i.cw, align 8, !tbaa !627 ; 2 uses
  br i1 %.not66.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ahr = load ptr, ptr %i.cx, align 8, !tbaa !628
  %i.ahs = load ptr, ptr %i.cy, align 8, !tbaa !629
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahu = load ptr, ptr %i.cx, align 8, !tbaa !628
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = load ptr, ptr %i.cy, align 8, !tbaa !629
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sink95.i = phi ptr [ %i.aht, %bb.gz ], [ %i.ahq, %bb.gy ] ; 6 uses
  %.sink94.i = phi ptr [ %i.ahv, %bb.gz ], [ %i.ahr, %bb.gy ] ; 16 uses
  %.sink.i423 = phi ptr [ %i.ahx, %bb.gz ], [ %i.ahs, %bb.gy ] ; 4 uses
  %.062.i = phi i32 [ 16, %bb.gz ], [ 8, %bb.gy ] ; 2 uses
  store ptr %.sink95.i, ptr %3, align 8, !tbaa !287
  store ptr %.sink94.i, ptr %i.cz, align 8, !tbaa !288
  store ptr %.sink.i423, ptr %i.da, align 8, !tbaa !289
  %i.ahy = load i16, ptr %i.ba, align 8, !tbaa !209
  %i.ahz = zext i16 %i.ahy to i32                 ; 3 uses
  store i32 %i.ahz, ptr %i.db, align 8, !tbaa !290
  br label %bb.hb

bb.hb:                                            ; preds = %.critedge72.i, %bb.ha
  %.058.i = phi i32 [ 0, %bb.ha ], [ %.3.i, %.critedge72.i ] ; 8 uses
  %.0.i424 = phi i16 [ 0, %bb.ha ], [ %i.amy, %.critedge72.i ] ; 2 uses
  %i.aia = load ptr, ptr %i.dc, align 8, !tbaa !630
  %i.aib = sext i16 %.0.i424 to i64
  %i.aic = getelementptr inbounds [2 x i8], ptr %i.aia, i64 %i.aib
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !128
  %i.aie = zext i16 %i.aid to i32
  %i.aif = load i16, ptr %i.dd, align 8, !tbaa !631
  %i.aig = zext i16 %i.aif to i32
  %i.aih = sub nsw i32 %i.aie, %i.aig             ; 2 uses
  %i.aii = load i16, ptr %i.ba, align 8, !tbaa !209
  %i.aij = zext i16 %i.aii to i32                 ; 2 uses
  %.not67.i = icmp ult i32 %i.aih, %i.aij
  %i.aik = add nsw i32 %i.aij, -1
  %spec.select.i425 = select i1 %.not67.i, i32 %i.aih, i32 %i.aik ; 7 uses
  %.not6879.i = icmp ugt i32 %.058.i, %spec.select.i425
  br i1 %.not6879.i, label %.critedge72.i, label %.lr.ph.i426

.lr.ph.i426:                                      ; preds = %bb.hb
  %i.ail = load ptr, ptr %i.bb, align 8, !tbaa !632
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hd, %.lr.ph.i426
  %indvar = phi i32 [ %indvar.next, %bb.hd ], [ 0, %.lr.ph.i426 ] ; 3 uses
  %.180.i = phi i32 [ %i.ais, %bb.hd ], [ %.058.i, %.lr.ph.i426 ] ; 10 uses
  %i.aim = zext i32 %.180.i to i64                ; 6 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !186
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = and i32 %.062.i, %i.aip
  %i.air = icmp eq i32 %i.aiq, 0
  %i.ais = add i32 %.180.i, 1                     ; 6 uses
  %.not68.i = icmp ugt i32 %i.ais, %spec.select.i425 ; 3 uses
  br i1 %i.air, label %bb.hd, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.hc
  br i1 %.not68.i, label %.critedge._crit_edge.thread.i, label %.lr.ph86.i

bb.hd:                                            ; preds = %bb.hc
  %indvar.next = add i32 %indvar, 1
  br i1 %.not68.i, label %.critedge72.i, label %bb.hc, !llvm.loop !566

.lr.ph86.i:                                       ; preds = %.critedge.preheader.i, %iup_worker_interpolate_.exit.i
  %.285.i = phi i32 [ %.2.i, %iup_worker_interpolate_.exit.i ], [ %i.ais, %.critedge.preheader.i ] ; 8 uses
  %.2.in84.i = phi i32 [ %.285.i, %iup_worker_interpolate_.exit.i ], [ %.180.i, %.critedge.preheader.i ] ; 3 uses
  %.05983.i = phi i32 [ %.160.i, %iup_worker_interpolate_.exit.i ], [ %.180.i, %.critedge.preheader.i ] ; 4 uses
  %i.ait = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.aiu = zext i32 %.285.i to i64                ; 4 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !186
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = and i32 %.062.i, %i.aix
  %.not71.i = icmp eq i32 %i.aiy, 0
  br i1 %.not71.i, label %iup_worker_interpolate_.exit.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph86.i
  %i.aiz = add i32 %.05983.i, 1                   ; 3 uses
  %i.aja = icmp ugt i32 %i.aiz, %.2.in84.i
  br i1 %i.aja, label %iup_worker_interpolate_.exit.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i427 = icmp ult i32 %.05983.i, %i.ahz
  %.not104.i.i = icmp ult i32 %.285.i, %i.ahz
  %or.cond.i.i428 = and i1 %.not104.i.i, %.not.i.i427
  br i1 %or.cond.i.i428, label %bb.hg, label %iup_worker_interpolate_.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.ajb = zext nneg i32 %.05983.i to i64         ; 3 uses
  %i.ajc = getelementptr inbounds nuw [16 x i8], ptr %.sink.i423, i64 %i.ajb
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !230 ; 4 uses
  %i.aje = getelementptr inbounds nuw [16 x i8], ptr %.sink.i423, i64 %i.aiu
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !230 ; 4 uses
  %i.ajg = icmp sgt i64 %i.ajd, %i.ajf
  br i1 %i.ajg, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.pre-phi123.i.i = phi i64 [ %i.ajb, %bb.hh ], [ %i.aiu, %bb.hg ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %i.aiu, %bb.hh ], [ %i.ajb, %bb.hg ] ; 2 uses
  %.086.i.i = phi i64 [ %i.ajf, %bb.hh ], [ %i.ajd, %bb.hg ] ; 2 uses
  %.085.i.i = phi i64 [ %i.ajd, %bb.hh ], [ %i.ajf, %bb.hg ]
  %i.ajh = getelementptr inbounds nuw [16 x i8], ptr %.sink95.i, i64 %.pre-phi.i.i
  %i.aji = load i64, ptr %i.ajh, align 8, !tbaa !230 ; 3 uses
  %i.ajj = getelementptr inbounds nuw [16 x i8], ptr %.sink95.i, i64 %.pre-phi123.i.i
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !230 ; 3 uses
  %i.ajl = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %.pre-phi.i.i
  %i.ajm = load i64, ptr %i.ajl, align 8, !tbaa !230 ; 5 uses
  %i.ajn = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %.pre-phi123.i.i
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !230 ; 3 uses
  %i.ajp = sub i64 %i.ajm, %i.aji                 ; 2 uses
  %i.ajq = sub i64 %i.ajo, %i.ajk                 ; 2 uses
  %i.ajr = icmp eq i64 %i.ajm, %i.ajo
  %i.ajs = icmp eq i64 %i.ajf, %i.ajd
  %or.cond112.i.i = or i1 %i.ajs, %i.ajr
  br i1 %or.cond112.i.i, label %.lr.ph121.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hi
  %i.ajt = sub i64 %i.ajo, %i.ajm
  %i.aju = sub i64 %.085.i.i, %.086.i.i
  br label %bb.hj

.lr.ph121.i.i:                                    ; preds = %bb.hi, %.lr.ph121.i.i
  %.087120.i.i = phi i32 [ %i.akb, %.lr.ph121.i.i ], [ %i.aiz, %bb.hi ] ; 2 uses
  %i.ajv = zext i32 %.087120.i.i to i64           ; 2 uses
  %i.ajw = getelementptr inbounds nuw [16 x i8], ptr %.sink95.i, i64 %i.ajv
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !230 ; 4 uses
  %.not110.i.i = icmp sgt i64 %i.ajx, %i.aji
  %i.ajy = add i64 %i.ajx, %i.ajp
  %.not111.i.i = icmp slt i64 %i.ajx, %i.ajk
  %i.ajz = add i64 %i.ajx, %i.ajq
end_hunk_2
begin_hunk_3_@TT_RunIns:bb.a

.lr.ph.i75.i.prol:                                ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i75.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i75.i.prol ], [ %i.ala, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter1422 = phi i64 [ %prol.iter1422.next, %.lr.ph.i75.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !230
  %i.ale = add i64 %i.ald, %i.aky
  store i64 %i.ale, ptr %i.alc, align 8, !tbaa !230
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter1422.next = add i64 %prol.iter1422, 1 ; 2 uses
  %prol.iter1422.cmp.not = icmp eq i64 %prol.iter1422.next, %xtraiter1420
  br i1 %prol.iter1422.cmp.not, label %.lr.ph.i75.i.prol.loopexit, label %.lr.ph.i75.i.prol, !llvm.loop !568

.lr.ph.i75.i.prol.loopexit:                       ; preds = %.lr.ph.i75.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.ala, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i75.i.prol ]
  %i.alf = sub nsw i64 %i.ala, %i.aim
  %i.alg = icmp ugt i64 %i.alf, -4
  br i1 %i.alg, label %.preheader.i.i, label %.lr.ph.i75.i

.preheader.i.i:                                   ; preds = %.lr.ph.i75.i.prol.loopexit, %.lr.ph.i75.i, %.preheader1.i.i
  br i1 %.not68.i, label %.critedge72.i, label %.lr.ph6.i.preheader.i

.lr.ph6.i.preheader.i:                            ; preds = %.preheader.i.i
  %i.alh = zext i32 %i.ais to i64                 ; 2 uses
  %i.ali = add nuw nsw i32 %spec.select.i425, 1
  %i.alj = add i32 %.058.i, %indvar
  %i.alk = sub i32 %spec.select.i425, %i.alj
  %xtraiter1424 = and i32 %i.alk, 3               ; 2 uses
  %lcmp.mod1425.not = icmp eq i32 %xtraiter1424, 0
  br i1 %lcmp.mod1425.not, label %.lr.ph6.i.i.prol.loopexit, label %.lr.ph6.i.i.prol

.lr.ph6.i.i.prol:                                 ; preds = %.lr.ph6.i.preheader.i, %.lr.ph6.i.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph6.i.i.prol ], [ %i.alh, %.lr.ph6.i.preheader.i ] ; 2 uses
  %prol.iter1426 = phi i32 [ %prol.iter1426.next, %.lr.ph6.i.i.prol ], [ 0, %.lr.ph6.i.preheader.i ]
  %i.all = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !230
  %i.aln = add i64 %i.alm, %i.aky
  store i64 %i.aln, ptr %i.all, align 8, !tbaa !230
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1426.next = add i32 %prol.iter1426, 1 ; 2 uses
  %prol.iter1426.cmp.not = icmp eq i32 %prol.iter1426.next, %xtraiter1424
  br i1 %prol.iter1426.cmp.not, label %.lr.ph6.i.i.prol.loopexit, label %.lr.ph6.i.i.prol, !llvm.loop !569

.lr.ph6.i.i.prol.loopexit:                        ; preds = %.lr.ph6.i.i.prol, %.lr.ph6.i.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.alh, %.lr.ph6.i.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph6.i.i.prol ]
  %i.alo = sub i32 %.058.i, %spec.select.i425
  %i.alp = add i32 %i.alo, %indvar
  %i.alq = icmp ugt i32 %i.alp, -4
  br i1 %i.alq, label %.critedge72.i, label %.lr.ph6.i.i

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.prol.loopexit, %.lr.ph.i75.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i75.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i75.i.prol.loopexit ] ; 5 uses
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i ; 2 uses
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !230
  %i.alt = add i64 %i.als, %i.aky
  store i64 %i.alt, ptr %i.alr, align 8, !tbaa !230
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 16 ; 2 uses
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !230
  %i.alx = add i64 %i.alw, %i.aky
  store i64 %i.alx, ptr %i.alv, align 8, !tbaa !230
  %i.aly = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 32 ; 2 uses
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !230
  %i.amb = add i64 %i.ama, %i.aky
  store i64 %i.amb, ptr %i.alz, align 8, !tbaa !230
  %i.amc = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i.i
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 48 ; 2 uses
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !230
  %i.amf = add i64 %i.ame, %i.aky
  store i64 %i.amf, ptr %i.amd, align 8, !tbaa !230
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.aim
  br i1 %exitcond.not.i.i.3, label %.preheader.i.i, label %.lr.ph.i75.i, !llvm.loop !570

.lr.ph6.i.i:                                      ; preds = %.lr.ph6.i.i.prol.loopexit, %.lr.ph6.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph6.i.i ], [ %indvars.iv.i.unr, %.lr.ph6.i.i.prol.loopexit ] ; 5 uses
  %i.amg = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8, !tbaa !230
  %i.ami = add i64 %i.amh, %i.aky
  store i64 %i.ami, ptr %i.amg, align 8, !tbaa !230
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 16 ; 2 uses
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !230
  %i.amm = add i64 %i.aml, %i.aky
  store i64 %i.amm, ptr %i.amk, align 8, !tbaa !230
  %i.amn = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 32 ; 2 uses
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !230
  %i.amq = add i64 %i.amp, %i.aky
  store i64 %i.amq, ptr %i.amo, align 8, !tbaa !230
  %i.amr = getelementptr inbounds nuw [16 x i8], ptr %.sink94.i, i64 %indvars.iv.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 48 ; 2 uses
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !230
  %i.amu = add i64 %i.amt, %i.aky
  store i64 %i.amu, ptr %i.ams, align 8, !tbaa !230
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %i.ali, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %.critedge72.i, label %.lr.ph6.i.i, !llvm.loop !571

bb.hr:                                            ; preds = %.critedge._crit_edge.i
  %i.amv = add i32 %.160.i, 1
  %i.amw = and i32 %i.amv, 65535
  call fastcc void @iup_worker_interpolate_(ptr noundef %3, i32 noundef %i.amw, i32 noundef %spec.select.i425, i32 noundef %.160.i, i32 noundef %.180.i)
  %.not70.i = icmp eq i32 %.180.i, 0
  br i1 %.not70.i, label %.critedge72.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.amx = add i32 %.180.i, -1
  call fastcc void @iup_worker_interpolate_(ptr noundef %3, i32 noundef %.058.i, i32 noundef %i.amx, i32 noundef %.160.i, i32 noundef %.180.i)
  br label %.critedge72.i

.critedge72.i:                                    ; preds = %bb.hd, %.lr.ph6.i.i.prol.loopexit, %.lr.ph6.i.i, %bb.hs, %bb.hr, %.preheader.i.i, %.critedge._crit_edge.thread.i, %bb.hb
  %.3.i = phi i32 [ %.2.lcssa109.i, %.lr.ph6.i.i.prol.loopexit ], [ %.2.i, %bb.hs ], [ %.2.i, %bb.hr ], [ %.2.lcssa109.i, %.critedge._crit_edge.thread.i ], [ %.2.lcssa109.i, %.preheader.i.i ], [ %.058.i, %bb.hb ], [ %.2.lcssa109.i, %.lr.ph6.i.i ], [ %i.ais, %bb.hd ]
  %i.amy = add i16 %.0.i424, 1                    ; 2 uses
  %i.amz = sext i16 %i.amy to i32
  %i.ana = load i16, ptr %i.cv, align 2, !tbaa !210
  %i.anb = zext i16 %i.ana to i32
  %i.anc = icmp slt i32 %i.amz, %i.anb
  br i1 %i.anc, label %bb.hb, label %Ins_IUP.exit, !llvm.loop !572

Ins_IUP.exit:                                     ; preds = %.critedge72.i, %bb.gu, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %Ins_SPVTL.exitthread-pre-split

bb.ht:                                            ; preds = %bb.f, %bb.f
  %i.and = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.ane = icmp slt i64 %i.er, %i.and
  br i1 %i.ane, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.anf = load i8, ptr %i.i, align 2, !tbaa !163
  %.not22.i = icmp eq i8 %i.anf, 0
  br i1 %.not22.i, label %.loopexit.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i

bb.hw:                                            ; preds = %bb.ht
  %i.ang = sub nsw i64 %i.er, %i.and
  store i64 %i.ang, ptr %i.k, align 8, !tbaa !241
  %i.anh = and i8 %i.dy, 1
  %.not.i.i430 = icmp eq i8 %i.anh, 0             ; 4 uses
  %..i.i = select i1 %.not.i.i430, i64 136, i64 80
  %.55.i.i = select i1 %.not.i.i430, i64 468, i64 466
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i
  %.sroa.0.0.copyload8.i.i = load i16, ptr %i.ani, align 8, !tbaa !128
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 %.55.i.i
  %.0.i.i431 = load i16, ptr %i.anj, align 2, !tbaa !128 ; 2 uses
  %.not43.i.i = icmp ult i16 %.0.i.i431, %.sroa.0.0.copyload8.i.i
  br i1 %.not43.i.i, label %Compute_Point_Displacement.exit.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ank = load i8, ptr %i.i, align 2, !tbaa !163
  %.not44.i.i = icmp eq i8 %i.ank, 0
  br i1 %.not44.i.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

Compute_Point_Displacement.exit.i:                ; preds = %bb.hw
  %.53.i.i = select i1 %.not.i.i430, i64 152, i64 96
  %.sroa.8.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.53.i.i
  %.sroa.8.0.copyload19.i.i = load ptr, ptr %.sroa.8.0..sroa_idx18.i.i, align 8, !tbaa !197
  %.52.i.i = select i1 %.not.i.i430, i64 144, i64 88
  %.sroa.612.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.52.i.i
  %.sroa.612.0.copyload14.i.i = load ptr, ptr %.sroa.612.0..sroa_idx13.i.i, align 8, !tbaa !197
  %i.anl = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.anm = zext i16 %.0.i.i431 to i64             ; 2 uses
  %i.ann = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload19.i.i, i64 %i.anm ; 2 uses
  %i.ano = load i64, ptr %i.ann, align 8, !tbaa !230
  %i.anp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.612.0.copyload14.i.i, i64 %i.anm ; 2 uses
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !230
  %i.anr = sub i64 %i.ano, %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !257
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !257
  %i.anw = sub i64 %i.ant, %i.anv
  %i.anx = call i64 %i.anl(ptr noundef nonnull %0, i64 noundef %i.anr, i64 noundef %i.anw) #21, !inline_history !573 ; 2 uses
  %i.any = load i64, ptr %i.ar, align 8, !tbaa !248
  %i.anz = mul i64 %i.any, %i.anx                 ; 2 uses
  %i.aoa = ashr i64 %i.anz, 63
  %i.aob = add i64 %i.anz, 32768
  %i.aoc = add i64 %i.aob, %i.aoa
  %i.aod = ashr i64 %i.aoc, 16
  %i.aoe = load i64, ptr %i.as, align 8, !tbaa !249
  %i.aof = mul i64 %i.aoe, %i.anx                 ; 2 uses
  %i.aog = ashr i64 %i.aof, 63
  %i.aoh = add i64 %i.aof, 32768
  %i.aoi = add i64 %i.aoh, %i.aog
  %i.aoj = ashr i64 %i.aoi, 16
  %.not1931.i = icmp eq i64 %i.and, 0
  br i1 %.not1931.i, label %.loopexit.i, label %.lr.ph.i432

.lr.ph.i432:                                      ; preds = %Compute_Point_Displacement.exit.i, %Move_Zp2_Point.exit.i
  %.in.i = phi i64 [ %i.aok, %Move_Zp2_Point.exit.i ], [ %i.and, %Compute_Point_Displacement.exit.i ]
  %.01632.i = phi ptr [ %i.aol, %Move_Zp2_Point.exit.i ], [ %i.ew, %Compute_Point_Displacement.exit.i ]
  %i.aok = add nsw i64 %.in.i, -1                 ; 2 uses
  %i.aol = getelementptr inbounds i8, ptr %.01632.i, i64 -8 ; 2 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !185 ; 5 uses
  %i.aon = load i16, ptr %i.ae, align 8, !tbaa !617
  %14 = trunc i64 %i.aom to i16
  %.not20.i = icmp ugt i16 %i.aon, %14
  br i1 %.not20.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i432
  %i.aoo = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i = icmp eq i8 %i.aoo, 0
  br i1 %.not21.i, label %Move_Zp2_Point.exit.i, label %.loopexit.sink.split

bb.hz:                                            ; preds = %.lr.ph.i432
  %i.aop = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i23.i = icmp eq i16 %i.aop, 0
  br i1 %.not.i23.i, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aoq = load i32, ptr %i.u, align 4, !tbaa !215
  %.not19.i.i = icmp eq i32 %i.aoq, 0
  br i1 %.not19.i.i, label %bb.ib, label %._crit_edge.i433

._crit_edge.i433:                                 ; preds = %bb.ia
  %.pre34.i = and i64 %i.aom, 65535
  br label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.aor = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.aos = and i64 %i.aom, 65535                  ; 2 uses
  %i.aot = getelementptr inbounds nuw [16 x i8], ptr %i.aor, i64 %i.aos ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !230
  %i.aov = add i64 %i.aou, %i.aod
  store i64 %i.aov, ptr %i.aot, align 8, !tbaa !230
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %._crit_edge.i433
  %.pre-phi35.i = phi i64 [ %.pre34.i, %._crit_edge.i433 ], [ %i.aos, %bb.ib ]
  %i.aow = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.pre-phi35.i ; 2 uses
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !186
  %i.aoz = or i8 %i.aoy, 8
  store i8 %i.aoz, ptr %i.aox, align 1, !tbaa !186
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hz
  %i.apa = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i = icmp eq i16 %i.apa, 0
  br i1 %.not21.i.i, label %Move_Zp2_Point.exit.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.apb = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i = icmp eq i32 %i.apb, 7
  br i1 %.not22.i.i, label %._crit_edge33.i, label %bb.if

._crit_edge33.i:                                  ; preds = %bb.ie
  %.pre.i435 = and i64 %i.aom, 65535
  br label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.apc = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.apd = and i64 %i.aom, 65535                  ; 2 uses
  %i.ape = getelementptr inbounds nuw [16 x i8], ptr %i.apc, i64 %i.apd
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 8 ; 2 uses
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !257
  %i.aph = add i64 %i.apg, %i.aoj
  store i64 %i.aph, ptr %i.apf, align 8, !tbaa !257
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %._crit_edge33.i
  %.pre-phi.i434 = phi i64 [ %.pre.i435, %._crit_edge33.i ], [ %i.apd, %bb.if ]
  %i.api = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 %.pre-phi.i434 ; 2 uses
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !186
  %i.apl = or i8 %i.apk, 16
  store i8 %i.apl, ptr %i.apj, align 1, !tbaa !186
  br label %Move_Zp2_Point.exit.i

Move_Zp2_Point.exit.i:                            ; preds = %bb.ig, %bb.id, %bb.hy
  %.not19.i = icmp eq i64 %i.aok, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph.i432, !llvm.loop !574

.loopexit.i:                                      ; preds = %Move_Zp2_Point.exit.i, %Compute_Point_Displacement.exit.i, %bb.hv, %bb.hu
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.ih:                                            ; preds = %bb.f, %bb.f
  %.val320 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.apm = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.apn = icmp eq i16 %i.apm, 0
  br i1 %i.apn, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.apo = load i16, ptr %i.cs, align 2, !tbaa !633
  %i.app = zext i16 %i.apo to i32
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.apq = phi i32 [ %i.app, %bb.ii ], [ 1, %bb.ih ]
  %i.apr = trunc i64 %.val320 to i32
  %i.aps = and i32 %i.apr, 65535                  ; 2 uses
  %.not.i436 = icmp samesign ult i32 %i.aps, %i.apq
  br i1 %.not.i436, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apt = load i8, ptr %i.i, align 2, !tbaa !163
  %.not31.i = icmp eq i8 %i.apt, 0
  br i1 %.not31.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.il:                                            ; preds = %bb.ij
  %i.apu = and i8 %i.dy, 1
  %.not.i.i437 = icmp eq i8 %i.apu, 0             ; 4 uses
  %..i.i438 = select i1 %.not.i.i437, i64 136, i64 80
  %.53.i.i439 = select i1 %.not.i.i437, i64 152, i64 96
  %.55.i.i440 = select i1 %.not.i.i437, i64 468, i64 466
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i438
  %.sroa.0.0.copyload8.i.i441 = load i16, ptr %i.apv, align 8, !tbaa !128
  %.sroa.8.0..sroa_idx18.i.i442 = getelementptr inbounds nuw i8, ptr %0, i64 %.53.i.i439
  %.sroa.8.0.copyload19.i.i443 = load ptr, ptr %.sroa.8.0..sroa_idx18.i.i442, align 8, !tbaa !197 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %0, i64 %.55.i.i440
  %.0.i.i444 = load i16, ptr %i.apw, align 2, !tbaa !128 ; 2 uses
  %.not43.i.i445 = icmp ult i16 %.0.i.i444, %.sroa.0.0.copyload8.i.i441
  br i1 %.not43.i.i445, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.apx = load i8, ptr %i.i, align 2, !tbaa !163
  %.not44.i.i446 = icmp eq i8 %i.apx, 0
  br i1 %.not44.i.i446, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.in:                                            ; preds = %bb.il
  %.52.i.i447 = select i1 %.not.i.i437, i64 144, i64 88
  %.sroa.612.0..sroa_idx13.i.i448 = getelementptr inbounds nuw i8, ptr %0, i64 %.52.i.i447
  %.sroa.612.0.copyload14.i.i449 = load ptr, ptr %.sroa.612.0..sroa_idx13.i.i448, align 8, !tbaa !197
  %i.apy = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.apz = zext i16 %.0.i.i444 to i64             ; 3 uses
  %i.aqa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload19.i.i443, i64 %i.apz ; 2 uses
  %i.aqb = load i64, ptr %i.aqa, align 8, !tbaa !230
  %i.aqc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.612.0.copyload14.i.i449, i64 %i.apz ; 2 uses
  %i.aqd = load i64, ptr %i.aqc, align 8, !tbaa !230
  %i.aqe = sub i64 %i.aqb, %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  %i.aqg = load i64, ptr %i.aqf, align 8, !tbaa !257
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !257
  %i.aqj = sub i64 %i.aqg, %i.aqi
  %i.aqk = call i64 %i.apy(ptr noundef nonnull %0, i64 noundef %i.aqe, i64 noundef %i.aqj) #21, !inline_history !575 ; 2 uses
  %i.aql = load i64, ptr %i.ar, align 8, !tbaa !248
  %i.aqm = mul i64 %i.aql, %i.aqk                 ; 2 uses
  %i.aqn = ashr i64 %i.aqm, 63
  %i.aqo = add i64 %i.aqm, 32768
  %i.aqp = add i64 %i.aqo, %i.aqn
  %i.aqq = ashr i64 %i.aqp, 16
  %i.aqr = load i64, ptr %i.as, align 8, !tbaa !249
  %i.aqs = mul i64 %i.aqr, %i.aqk                 ; 2 uses
  %i.aqt = ashr i64 %i.aqs, 63
  %i.aqu = add i64 %i.aqs, 32768
  %i.aqv = add i64 %i.aqu, %i.aqt
  %i.aqw = ashr i64 %i.aqv, 16
  %i.aqx = icmp eq i32 %i.aps, 0
  br i1 %i.aqx, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aqy = load ptr, ptr %i.ct, align 8, !tbaa !634
  %i.aqz = and i64 %.val320, 65535
  %i.ara = getelementptr [2 x i8], ptr %i.aqy, i64 %i.aqz
  %i.arb = getelementptr i8, ptr %i.ara, i64 -2
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !128
  %i.ard = add i16 %i.arc, 1
  %i.are = load i16, ptr %i.cu, align 8, !tbaa !635
  %i.arf = sub i16 %i.ard, %i.are
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.025.i = phi i16 [ %i.arf, %bb.io ], [ 0, %bb.in ] ; 2 uses
  %i.arg = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.arh = icmp eq i16 %i.arg, 0
  br i1 %i.arh, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ari = load i16, ptr %i.ae, align 8, !tbaa !617
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %i.arj = load ptr, ptr %i.ct, align 8, !tbaa !634
  %i.ark = and i64 %.val320, 65535
  %i.arl = getelementptr inbounds nuw [2 x i8], ptr %i.arj, i64 %i.ark
  %i.arm = load i16, ptr %i.arl, align 2, !tbaa !128
  %i.arn = add i16 %i.arm, 1
  %i.aro = load i16, ptr %i.cu, align 8, !tbaa !635
  %i.arp = sub i16 %i.arn, %i.aro
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.024.i = phi i16 [ %i.ari, %bb.iq ], [ %i.arp, %bb.ir ] ; 2 uses
  %i.arq = icmp ult i16 %.025.i, %.024.i
  br i1 %i.arq, label %.lr.ph.i450, label %Ins_SPVTL.exitthread-pre-split

.lr.ph.i450:                                      ; preds = %bb.is
  %i.arr = zext i16 %.025.i to i64
  %wide.trip.count.i = zext i16 %.024.i to i64
  br label %bb.it

bb.it:                                            ; preds = %Move_Zp2_Point.exit.i457, %.lr.ph.i450
  %indvars.iv.i451 = phi i64 [ %i.arr, %.lr.ph.i450 ], [ %indvars.iv.next.i458, %Move_Zp2_Point.exit.i457 ] ; 6 uses
  %i.ars = load ptr, ptr %i.al, align 8, !tbaa !618 ; 2 uses
  %.not29.i452 = icmp eq ptr %.sroa.8.0.copyload19.i.i443, %i.ars
end_hunk_3
begin_hunk_4_@TT_RunIns:bb.a
  %i.avj = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv35.i
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 48 ; 2 uses
  %i.avl = load i64, ptr %i.avk, align 8, !tbaa !230
  %i.avm = add i64 %i.avl, %i.auw
  store i64 %i.avm, ptr %i.avk, align 8, !tbaa !230
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
  %i.avn = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %index ; 2 uses
  %i.avo = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %index
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.avn, align 8
  %wide.load1314 = load <2 x i64>, ptr %i.avp, align 8
  %i.avq = add <2 x i64> %wide.load, %i.atn
  %i.avr = add <2 x i64> %wide.load1314, %i.atn
  store <2 x i64> %i.avq, ptr %i.avn, align 8
  store <2 x i64> %i.avr, ptr %i.avp, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.avs = icmp eq i64 %index.next, %n.vec
  br i1 %i.avs, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  br i1 %cmp.n, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i.preheader

Move_Zp2_Point.exit.us.us16.i.preheader:          ; preds = %Move_Zp2_Point.exit.us.us16.preheader.i, %middle.block
  %indvars.iv25.i.ph = phi i64 [ 0, %Move_Zp2_Point.exit.us.us16.preheader.i ], [ %n.vec, %middle.block ]
  br label %Move_Zp2_Point.exit.us.us16.i

Move_Zp2_Point.exit.us.us16.i:                    ; preds = %Move_Zp2_Point.exit.us.us16.i.preheader, %Move_Zp2_Point.exit.us.us16.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %Move_Zp2_Point.exit.us.us16.i ], [ %indvars.iv25.i.ph, %Move_Zp2_Point.exit.us.us16.i.preheader ] ; 2 uses
  %i.avt = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv25.i ; 2 uses
  %i.avu = load <2 x i64>, ptr %i.avt, align 8, !tbaa !185
  %i.avv = add <2 x i64> %i.avu, %i.atn
  store <2 x i64> %i.avv, ptr %i.avt, align 8, !tbaa !185
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.us16.i, !llvm.loop !580

.lr.ph.split.us.split.split.split.i:              ; preds = %.lr.ph.split.us.split.split.i
  %.not22.i.us.i = icmp eq i32 %i.auv, 7
  br i1 %.not22.i.us.i, label %Ins_SPVTL.exitthread-pre-split, label %Move_Zp2_Point.exit.us.preheader.i

Move_Zp2_Point.exit.us.preheader.i:               ; preds = %.lr.ph.split.us.split.split.split.i
  %wide.trip.count.i479 = zext i16 %.016.i to i64 ; 2 uses
  %i.avw = extractelement <2 x i64> %i.atn, i64 1 ; 5 uses
  %xtraiter1402 = and i64 %wide.trip.count.i479, 3 ; 3 uses
  %i.avx = icmp ult i16 %.016.i, 4
  br i1 %i.avx, label %Move_Zp2_Point.exit.us.i.epil.preheader, label %Move_Zp2_Point.exit.us.preheader.i.new

Move_Zp2_Point.exit.us.preheader.i.new:           ; preds = %Move_Zp2_Point.exit.us.preheader.i
  %unroll_iter1406 = and i64 %wide.trip.count.i479, 65532
  br label %Move_Zp2_Point.exit.us.i

Move_Zp2_Point.exit.us.i:                         ; preds = %Move_Zp2_Point.exit.us.i, %Move_Zp2_Point.exit.us.preheader.i.new
  %indvars.iv.i480 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %indvars.iv.next.i481.3, %Move_Zp2_Point.exit.us.i ] ; 5 uses
  %niter1407 = phi i64 [ 0, %Move_Zp2_Point.exit.us.preheader.i.new ], [ %niter1407.next.3, %Move_Zp2_Point.exit.us.i ]
  %i.avy = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv.i480
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8 ; 2 uses
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !257
  %i.awb = add i64 %i.awa, %i.avw
  store i64 %i.awb, ptr %i.avz, align 8, !tbaa !257
  %i.awc = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv.i480
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 24 ; 2 uses
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !257
  %i.awf = add i64 %i.awe, %i.avw
  store i64 %i.awf, ptr %i.awd, align 8, !tbaa !257
  %i.awg = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv.i480
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 40 ; 2 uses
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !257
  %i.awj = add i64 %i.awi, %i.avw
  store i64 %i.awj, ptr %i.awh, align 8, !tbaa !257
  %i.awk = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv.i480
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 56 ; 2 uses
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !257
  %i.awn = add i64 %i.awm, %i.avw
  store i64 %i.awn, ptr %i.awl, align 8, !tbaa !257
  %indvars.iv.next.i481.3 = add nuw nsw i64 %indvars.iv.i480, 4 ; 2 uses
  %niter1407.next.3 = add i64 %niter1407, 4       ; 2 uses
  %niter1407.ncmp.3 = icmp eq i64 %niter1407.next.3, %unroll_iter1406
  br i1 %niter1407.ncmp.3, label %Ins_SPVTL.exitthread-pre-split.loopexit1345.unr-lcssa, label %Move_Zp2_Point.exit.us.i, !llvm.loop !578

.lr.ph.split.i:                                   ; preds = %Move_Zp2_Point.exit.i486, %.lr.ph.split.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next46.i, %Move_Zp2_Point.exit.i486 ] ; 4 uses
  %.not23.i = icmp eq i64 %indvars.iv45.i, %i.asu
  br i1 %.not23.i, label %Move_Zp2_Point.exit.i486, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph.split.i
  %i.awo = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i25.i = icmp eq i16 %i.awo, 0
  br i1 %.not.i25.i, label %bb.jo, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.awp = load i32, ptr %i.u, align 4, !tbaa !215
  %.not19.i.i483 = icmp eq i32 %i.awp, 0
  br i1 %.not19.i.i483, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.awq = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv45.i ; 2 uses
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !230
  %i.aws = add i64 %i.awr, %i.aty
  store i64 %i.aws, ptr %i.awq, align 8, !tbaa !230
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jl
  %i.awt = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i484 = icmp eq i16 %i.awt, 0
  br i1 %.not21.i.i484, label %Move_Zp2_Point.exit.i486, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awu = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i485 = icmp eq i32 %i.awu, 7
  br i1 %.not22.i.i485, label %Move_Zp2_Point.exit.i486, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.awv = getelementptr inbounds nuw [16 x i8], ptr %i.atx, i64 %indvars.iv45.i
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 8 ; 2 uses
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !257
  %i.awy = add i64 %i.awx, %i.atz
  store i64 %i.awy, ptr %i.aww, align 8, !tbaa !257
  br label %Move_Zp2_Point.exit.i486

Move_Zp2_Point.exit.i486:                         ; preds = %bb.jq, %bb.jp, %bb.jo, %.lr.ph.split.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count48.i
  br i1 %exitcond49.not.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.split.i, !llvm.loop !578

bb.jr:                                            ; preds = %bb.f
  %i.awz = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.axa = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.axb = icmp eq i16 %i.axa, 0
  br i1 %i.axb, label %bb.ju, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.axc = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.axd = icmp eq i16 %i.axc, 0
  br i1 %i.axd, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.axe = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.axf = icmp ne i16 %i.axe, 0
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jr
  %.not40.i487 = phi i1 [ false, %bb.js ], [ false, %bb.jr ], [ %i.axf, %bb.jt ]
  %i.axg = icmp slt i64 %i.er, %i.awz
  br i1 %i.axg, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.axh = load i8, ptr %i.i, align 2, !tbaa !163
  %.not46.i504 = icmp eq i8 %i.axh, 0
  br i1 %.not46.i504, label %.loopexit.i495, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i495

bb.jx:                                            ; preds = %bb.ju
  %i.axi = sub nsw i64 %i.er, %i.awz
  store i64 %i.axi, ptr %i.k, align 8, !tbaa !241
  %i.axj = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.axk = load i16, ptr %i.ap, align 4, !tbaa !246
  %i.axl = sext i16 %i.axk to i64
  %i.axm = mul i64 %i.axj, %i.axl                 ; 2 uses
  %i.axn = ashr i64 %i.axm, 63
  %i.axo = add i64 %i.axm, 8192
  %i.axp = add i64 %i.axo, %i.axn
  %i.axq = ashr i64 %i.axp, 14
  %i.axr = load i16, ptr %i.aq, align 2, !tbaa !247
  %i.axs = sext i16 %i.axr to i64
  %i.axt = mul i64 %i.axj, %i.axs                 ; 2 uses
  %i.axu = ashr i64 %i.axt, 63
  %i.axv = add i64 %i.axt, 8192
  %i.axw = add i64 %i.axv, %i.axu
  %i.axx = ashr i64 %i.axw, 14                    ; 2 uses
  %.not52.i488 = icmp eq i64 %i.awz, 0
  br i1 %.not52.i488, label %.loopexit.i495, label %.lr.ph.i489

.lr.ph.i489:                                      ; preds = %bb.jx, %Move_Zp2_Point.exit.i493
  %.in.i490 = phi i64 [ %i.axy, %Move_Zp2_Point.exit.i493 ], [ %i.awz, %bb.jx ]
  %.03453.i = phi ptr [ %i.axz, %Move_Zp2_Point.exit.i493 ], [ %i.ew, %bb.jx ]
  %i.axy = add nsw i64 %.in.i490, -1              ; 2 uses
  %i.axz = getelementptr inbounds i8, ptr %.03453.i, i64 -8 ; 2 uses
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !185 ; 8 uses
  %15 = trunc i64 %i.aya to i16
  %i.ayb = load i16, ptr %i.ae, align 8, !tbaa !617
  %.not38.i491 = icmp ugt i16 %i.ayb, %15
  br i1 %.not38.i491, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %.lr.ph.i489
  %i.ayc = load i8, ptr %i.i, align 2, !tbaa !163
  %.not45.i492 = icmp eq i8 %i.ayc, 0
  br i1 %.not45.i492, label %Move_Zp2_Point.exit.i493, label %.loopexit.sink.split

bb.jz:                                            ; preds = %.lr.ph.i489
  %i.ayd = load i32, ptr %i.u, align 4, !tbaa !215 ; 2 uses
  %.not39.i = icmp eq i32 %i.ayd, 0
  br i1 %.not39.i, label %bb.kk, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %.not40.i487, label %bb.kb, label %bb.kf

bb.kb:                                            ; preds = %bb.ka
  %.not41.i = icmp eq i32 %i.ayd, 7
  br i1 %.not41.i, label %Move_Zp2_Point.exit.i493, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aye = load i8, ptr %i.cq, align 1, !tbaa !292
  %.not42.i500 = icmp eq i8 %i.aye, 0
  br i1 %.not42.i500, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ayf = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not43.i501 = icmp eq i16 %i.ayf, 0
  br i1 %.not43.i501, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.ayg = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.ayh = and i64 %i.aya, 65535
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 %i.ayh
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !186
  %i.ayk = and i8 %i.ayj, 16
  %.not44.i502 = icmp eq i8 %i.ayk, 0
  br i1 %.not44.i502, label %Move_Zp2_Point.exit.i493, label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.ka
  %i.ayl = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i.i496 = icmp eq i16 %i.ayl, 0
  br i1 %.not.i.i496, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aym = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.ayn = and i64 %i.aya, 65535
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.ayn ; 2 uses
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !186
  %i.ayq = or i8 %i.ayp, 8
  store i8 %i.ayq, ptr %i.ayo, align 1, !tbaa !186
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.ayr = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i.i497 = icmp eq i16 %i.ayr, 0
  br i1 %.not21.i.i497, label %Move_Zp2_Point.exit.i493, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ays = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i.i498 = icmp eq i32 %i.ays, 7
  br i1 %.not22.i.i498, label %._crit_edge.i499, label %bb.kj

._crit_edge.i499:                                 ; preds = %bb.ki
  %.pre55.i = and i64 %i.aya, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.kj:                                            ; preds = %bb.ki
  %i.ayt = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.ayu = and i64 %i.aya, 65535                  ; 2 uses
  %i.ayv = getelementptr inbounds nuw [16 x i8], ptr %i.ayt, i64 %i.ayu
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8 ; 2 uses
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !257
  %i.ayy = add i64 %i.ayx, %i.axx
  store i64 %i.ayy, ptr %i.ayw, align 8, !tbaa !257
  br label %Move_Zp2_Point.exit.sink.split.i

bb.kk:                                            ; preds = %bb.jz
  %i.ayz = load i16, ptr %i.ap, align 4, !tbaa !246
  %.not.i47.i = icmp eq i16 %i.ayz, 0
  br i1 %.not.i47.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aza = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.azb = and i64 %i.aya, 65535                  ; 2 uses
  %i.azc = getelementptr inbounds nuw [16 x i8], ptr %i.aza, i64 %i.azb ; 2 uses
  %i.azd = load i64, ptr %i.azc, align 8, !tbaa !230
  %i.aze = add i64 %i.azd, %i.axq
  store i64 %i.aze, ptr %i.azc, align 8, !tbaa !230
  %i.azf = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 %i.azb ; 2 uses
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !186
  %i.azi = or i8 %i.azh, 8
  store i8 %i.azi, ptr %i.azg, align 1, !tbaa !186
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.azj = load i16, ptr %i.aq, align 2, !tbaa !247
  %.not21.i49.i = icmp eq i16 %i.azj, 0
  br i1 %.not21.i49.i, label %Move_Zp2_Point.exit.i493, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.azk = load i32, ptr %i.u, align 4, !tbaa !215
  %.not22.i50.i = icmp eq i32 %i.azk, 7
  br i1 %.not22.i50.i, label %._crit_edge54.i, label %bb.ko

._crit_edge54.i:                                  ; preds = %bb.kn
  %.pre.i503 = and i64 %i.aya, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.ko:                                            ; preds = %bb.kn
  %i.azl = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.azm = and i64 %i.aya, 65535                  ; 2 uses
  %i.azn = getelementptr inbounds nuw [16 x i8], ptr %i.azl, i64 %i.azm
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 8 ; 2 uses
  %i.azp = load i64, ptr %i.azo, align 8, !tbaa !257
  %i.azq = add i64 %i.azp, %i.axx
  store i64 %i.azq, ptr %i.azo, align 8, !tbaa !257
  br label %Move_Zp2_Point.exit.sink.split.i

Move_Zp2_Point.exit.sink.split.i:                 ; preds = %bb.ko, %._crit_edge54.i, %bb.kj, %._crit_edge.i499
  %.pre-phi.sink.i = phi i64 [ %i.ayu, %bb.kj ], [ %.pre55.i, %._crit_edge.i499 ], [ %.pre.i503, %._crit_edge54.i ], [ %i.azm, %bb.ko ]
  %i.azr = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 %.pre-phi.sink.i ; 2 uses
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !186
  %i.azu = or i8 %i.azt, 16
  store i8 %i.azu, ptr %i.azs, align 1, !tbaa !186
  br label %Move_Zp2_Point.exit.i493

Move_Zp2_Point.exit.i493:                         ; preds = %Move_Zp2_Point.exit.sink.split.i, %bb.km, %bb.kh, %bb.ke, %bb.kb, %bb.jy
  %.not.i494 = icmp eq i64 %i.axy, 0
  br i1 %.not.i494, label %.loopexit.i495, label %.lr.ph.i489, !llvm.loop !581

.loopexit.i495:                                   ; preds = %Move_Zp2_Point.exit.i493, %bb.jx, %bb.jw, %bb.jv
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.kp:                                            ; preds = %bb.f
  %i.azv = load i64, ptr %i.bc, align 8, !tbaa !623 ; 8 uses
  %i.azw = icmp slt i64 %i.er, %i.azv
  br i1 %i.azw, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.azx = load i8, ptr %i.i, align 2, !tbaa !163
  %.not137.i = icmp eq i8 %i.azx, 0
  br i1 %.not137.i, label %.loopexit.i507, label %.loopexit.sink.split.i

bb.kr:                                            ; preds = %bb.kp
  %i.azy = sub nsw i64 %i.er, %i.azv
  store i64 %i.azy, ptr %i.k, align 8, !tbaa !241
  %i.azz = load i16, ptr %i.cn, align 2, !tbaa !261 ; 3 uses
  %i.baa = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i505 = icmp ult i16 %i.azz, %i.baa
  br i1 %.not.i505, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.bab = load i8, ptr %i.i, align 2, !tbaa !163
  %.not136.i = icmp eq i8 %i.bab, 0
  br i1 %.not136.i, label %.loopexit.i507, label %.loopexit.sink.split.i

bb.kt:                                            ; preds = %bb.kr
  %i.bac = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.bad = icmp eq i16 %i.bac, 0
  br i1 %i.bad, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bae = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.baf = icmp eq i16 %i.bae, 0
  br i1 %i.baf, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bag = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.bah = icmp eq i16 %i.bag, 0
  br i1 %i.bah, label %bb.kw, label %.thread155.i

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %bb.kt
  %i.bai = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.baj = zext i16 %i.azz to i64                 ; 2 uses
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %i.baj ; 5 uses
  %i.bal = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bam = getelementptr inbounds nuw [16 x i8], ptr %i.bal, i64 %i.baj ; 3 uses
  %i.ban = load i16, ptr %i.co, align 4, !tbaa !262 ; 2 uses
  %i.bao = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not130.i = icmp ult i16 %i.ban, %i.bao
  br i1 %.not130.i, label %bb.kx, label %.thread750

.thread155.i:                                     ; preds = %bb.kv
  %i.bap = load ptr, ptr %i.by, align 8, !tbaa !294
  %i.baq = zext i16 %i.azz to i64                 ; 2 uses
  %i.bar = getelementptr inbounds nuw [16 x i8], ptr %i.bap, i64 %i.baq ; 8 uses
  %i.bas = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bat = getelementptr inbounds nuw [16 x i8], ptr %i.bas, i64 %i.baq ; 4 uses
  %i.bau = load i16, ptr %i.co, align 4, !tbaa !262 ; 3 uses
  %i.bav = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not130158.i = icmp ult i16 %i.bau, %i.bav
  br i1 %.not130158.i, label %bb.ky, label %.thread165.i

bb.kx:                                            ; preds = %bb.kw
  %i.baw = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bax = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bay = zext i16 %i.ban to i64
end_hunk_4
begin_hunk_5_@TT_RunIns:bb.a
  %i.beh = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.bei = and i64 %i.beb, 4294967295             ; 2 uses
  %i.bej = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bei ; 2 uses
  %i.bek = load i64, ptr %i.bej, align 8, !tbaa !230
  %i.bel = load i64, ptr %.0124159.i755764777.ph, align 8, !tbaa !230
  %i.bem = sub i64 %i.bek, %i.bel
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %i.beo = load i64, ptr %i.ben, align 8, !tbaa !257
  %i.bep = load i64, ptr %.ph807, align 8, !tbaa !257
  %i.beq = sub i64 %i.beo, %i.bep
  %i.ber = call i64 %i.beg(ptr noundef nonnull %0, i64 noundef %i.bem, i64 noundef %i.beq) #21, !inline_history !582
  %i.bes = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bet = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.beu = getelementptr inbounds nuw [16 x i8], ptr %i.bet, i64 %i.bei ; 2 uses
  %i.bev = load i64, ptr %i.beu, align 8, !tbaa !230
  %i.bew = load i64, ptr %.ph, align 8, !tbaa !230
  %i.bex = sub i64 %i.bev, %i.bew
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beu, i64 8
  %i.bez = load i64, ptr %i.bey, align 8, !tbaa !257
  %i.bfa = load i64, ptr %.ph812, align 8, !tbaa !257
  %i.bfb = sub i64 %i.bez, %i.bfa
  %i.bfc = call i64 %i.bes(ptr noundef nonnull %0, i64 noundef %i.bex, i64 noundef %i.bfb) #21, !inline_history !582
  %i.bfd = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bfe = trunc i64 %i.beb to i16
  %i.bff = sub i64 %i.ber, %i.bfc
  call void %i.bfd(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %i.bfe, i64 noundef %i.bff) #21, !inline_history !582
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %i.bfg = add nsw i64 %i.bdz, -1
  %.not131.us.us.i = icmp eq i64 %i.bdz, 0
  br i1 %.not131.us.us.i, label %.loopexit.i507, label %.lr.ph.split.us.split.us.i514

.lr.ph.split.us.split.i513:                       ; preds = %.lr.ph.split.us.i512, %bb.lj
  %i.bfh = phi i64 [ %i.bgp, %bb.lj ], [ %i.bdn, %.lr.ph.split.us.i512 ] ; 2 uses
  %.0141.us.i = phi ptr [ %i.bfi, %bb.lj ], [ %i.ew, %.lr.ph.split.us.i512 ]
  %i.bfi = getelementptr inbounds i8, ptr %.0141.us.i, i64 -8 ; 2 uses
  %i.bfj = load i64, ptr %i.bfi, align 8, !tbaa !185 ; 3 uses
  %i.bfk = trunc i64 %i.bfj to i32
  %i.bfl = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.bfm = zext i16 %i.bfl to i32
  %.not132.us.i = icmp ult i32 %i.bfk, %i.bfm
  br i1 %.not132.us.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph.split.us.split.i513
  %i.bfn = load i8, ptr %i.i, align 2, !tbaa !163
  %.not135.us.i = icmp eq i8 %i.bfn, 0
  br i1 %.not135.us.i, label %bb.lj, label %.loopexit.sink.split, !llvm.loop !583

bb.lg:                                            ; preds = %.lr.ph.split.us.split.i513
  %i.bfo = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bfp = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.bfq = and i64 %i.bfj, 4294967295             ; 2 uses
  %i.bfr = getelementptr inbounds nuw [16 x i8], ptr %i.bfp, i64 %i.bfq ; 2 uses
  %i.bfs = load i64, ptr %i.bfr, align 8, !tbaa !230
  %i.bft = load i64, ptr %.0124160163.i, align 8, !tbaa !230
  %i.bfu = sub i64 %i.bfs, %i.bft
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfr, i64 8
  %i.bfw = load i64, ptr %i.bfv, align 8, !tbaa !257
  %i.bfx = load i64, ptr %i.bdu, align 8, !tbaa !257
  %i.bfy = sub i64 %i.bfw, %i.bfx
  %i.bfz = call i64 %i.bfo(ptr noundef nonnull %0, i64 noundef %i.bfu, i64 noundef %i.bfy) #21, !inline_history !582 ; 2 uses
  %i.bga = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bgb = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bgc = getelementptr inbounds nuw [16 x i8], ptr %i.bgb, i64 %i.bfq ; 2 uses
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !230
  %i.bge = load i64, ptr %i.bcx, align 8, !tbaa !230
  %i.bgf = sub i64 %i.bgd, %i.bge
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgc, i64 8
  %i.bgh = load i64, ptr %i.bgg, align 8, !tbaa !257
  %i.bgi = load i64, ptr %i.bdi, align 8, !tbaa !257
  %i.bgj = sub i64 %i.bgh, %i.bgi
  %i.bgk = call i64 %i.bga(ptr noundef nonnull %0, i64 noundef %i.bgf, i64 noundef %i.bgj) #21, !inline_history !582
  %.not133.us.i = icmp eq i64 %i.bfz, 0
  br i1 %.not133.us.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bgl = call i64 @FT_MulDiv(i64 noundef %i.bfz, i64 noundef %i.bdl, i64 noundef %i.bdm) #21
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %.0120.us.i = phi i64 [ %i.bgl, %bb.lh ], [ 0, %bb.lg ]
  %i.bgm = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bgn = trunc i64 %i.bfj to i16
  %i.bgo = sub i64 %.0120.us.i, %i.bgk
  call void %i.bgm(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %i.bgn, i64 noundef %i.bgo) #21, !inline_history !582
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lf
  %i.bgp = add nsw i64 %i.bfh, -1
  %.not131.us.i = icmp eq i64 %i.bfh, 0
  br i1 %.not131.us.i, label %.loopexit.i507, label %.lr.ph.split.us.split.i513

.lr.ph.split.i509:                                ; preds = %bb.lr, %.lr.ph.split.preheader.i508
  %i.bgq = phi i64 [ %i.bix, %bb.lr ], [ %i.bdy, %.lr.ph.split.preheader.i508 ] ; 2 uses
  %.0141.i = phi ptr [ %i.bgr, %bb.lr ], [ %i.ew, %.lr.ph.split.preheader.i508 ]
  %i.bgr = getelementptr inbounds i8, ptr %.0141.i, i64 -8 ; 2 uses
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !185 ; 4 uses
  %i.bgt = trunc i64 %i.bgs to i32
  %i.bgu = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.bgv = zext i16 %i.bgu to i32
  %.not132.i = icmp ult i32 %i.bgt, %i.bgv
  br i1 %.not132.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %.lr.ph.split.i509
  %i.bgw = load i8, ptr %i.i, align 2, !tbaa !163
  %.not135.i = icmp eq i8 %i.bgw, 0
  br i1 %.not135.i, label %bb.lr, label %.loopexit.sink.split, !llvm.loop !583

bb.ll:                                            ; preds = %.lr.ph.split.i509
  %i.bgx = load i64, ptr %i.ca, align 8, !tbaa !296 ; 2 uses
  %i.bgy = load i64, ptr %i.cb, align 8, !tbaa !297 ; 2 uses
  %i.bgz = icmp eq i64 %i.bgx, %i.bgy
  br i1 %i.bgz, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bha = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bhb = load ptr, ptr %i.cp, align 8, !tbaa !637
  %i.bhc = and i64 %i.bgs, 4294967295             ; 2 uses
  %i.bhd = getelementptr inbounds nuw [16 x i8], ptr %i.bhb, i64 %i.bhc ; 2 uses
  %i.bhe = load i64, ptr %i.bhd, align 8, !tbaa !230
  %i.bhf = load i64, ptr %.0124159170179.i, align 8, !tbaa !230
  %i.bhg = sub i64 %i.bhe, %i.bhf
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  %i.bhi = load i64, ptr %i.bhh, align 8, !tbaa !257
  %i.bhj = load i64, ptr %i.bdw, align 8, !tbaa !257
  %i.bhk = sub i64 %i.bhi, %i.bhj
  %i.bhl = call i64 %i.bha(ptr noundef nonnull %0, i64 noundef %i.bhg, i64 noundef %i.bhk) #21, !inline_history !582
  br label %bb.lo

bb.ln:                                            ; preds = %bb.ll
  %i.bhm = load ptr, ptr %i.cp, align 8, !tbaa !637
  %i.bhn = and i64 %i.bgs, 4294967295             ; 2 uses
  %i.bho = getelementptr inbounds nuw [16 x i8], ptr %i.bhm, i64 %i.bhn ; 2 uses
  %i.bhp = load i64, ptr %i.bho, align 8, !tbaa !230
  %i.bhq = load i64, ptr %.0124159170179.i, align 8, !tbaa !230
  %i.bhr = sub i64 %i.bhp, %i.bhq
  %i.bhs = mul i64 %i.bhr, %i.bgx                 ; 2 uses
  %i.bht = ashr i64 %i.bhs, 63
  %i.bhu = add i64 %i.bhs, 32768
  %i.bhv = add i64 %i.bhu, %i.bht
  %i.bhw = ashr i64 %i.bhv, 16
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bho, i64 8
  %i.bhy = load i64, ptr %i.bhx, align 8, !tbaa !257
  %i.bhz = load i64, ptr %i.bdw, align 8, !tbaa !257
  %i.bia = sub i64 %i.bhy, %i.bhz
  %i.bib = mul i64 %i.bia, %i.bgy                 ; 2 uses
  %i.bic = ashr i64 %i.bib, 63
  %i.bid = add i64 %i.bib, 32768
  %i.bie = add i64 %i.bid, %i.bic
  %i.bif = ashr i64 %i.bie, 16
  %i.big = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bih = call i64 %i.big(ptr noundef nonnull %0, i64 noundef %i.bhw, i64 noundef %i.bif) #21, !inline_history !582
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %.pre-phi146.i = phi i64 [ %i.bhc, %bb.lm ], [ %i.bhn, %bb.ln ]
  %.0121.i = phi i64 [ %i.bhl, %bb.lm ], [ %i.bih, %bb.ln ] ; 3 uses
  %i.bii = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bij = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bik = getelementptr inbounds nuw [16 x i8], ptr %i.bij, i64 %.pre-phi146.i ; 2 uses
  %i.bil = load i64, ptr %i.bik, align 8, !tbaa !230
  %i.bim = load i64, ptr %i.bdx, align 8, !tbaa !230
  %i.bin = sub i64 %i.bil, %i.bim
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  %i.bip = load i64, ptr %i.bio, align 8, !tbaa !257
  %i.biq = load i64, ptr %i.bdv, align 8, !tbaa !257
  %i.bir = sub i64 %i.bip, %i.biq
  %i.bis = call i64 %i.bii(ptr noundef nonnull %0, i64 noundef %i.bin, i64 noundef %i.bir) #21, !inline_history !582
  %.not133.i = icmp eq i64 %.0121.i, 0
  %brmerge.i = or i1 %.not134180.i, %.not133.i
  br i1 %brmerge.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bit = call i64 @FT_MulDiv(i64 noundef %.0121.i, i64 noundef %.0123171178.i, i64 noundef %.1172177.i) #21
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %.0120.i = phi i64 [ %i.bit, %bb.lp ], [ %.0121.i, %bb.lo ]
  %i.biu = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.biv = trunc i64 %i.bgs to i16
  %i.biw = sub i64 %.0120.i, %i.bis
  call void %i.biu(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %i.biv, i64 noundef %i.biw) #21, !inline_history !582
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lk
  %i.bix = add nsw i64 %i.bgq, -1
  %.not131.i = icmp eq i64 %i.bgq, 0
  br i1 %.not131.i, label %.loopexit.i507, label %.lr.ph.split.i509

.loopexit.sink.split.i:                           ; preds = %bb.ks, %bb.kq
  %.sink.i506 = phi i32 [ 129, %bb.kq ], [ 134, %bb.ks ]
  store i32 %.sink.i506, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i507

.loopexit.i507:                                   ; preds = %bb.lr, %bb.lj, %bb.le, %.thread750, %.loopexit.sink.split.i, %.thread165.i, %bb.lb, %bb.ks, %bb.kq
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.ls:                                            ; preds = %bb.f, %bb.f
  %i.biy = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.biz = trunc i64 %i.biy to i16                ; 5 uses
  %i.bja = load i16, ptr %i.ad, align 8, !tbaa !255
  %.not.i515 = icmp ugt i16 %i.bja, %i.biz
  br i1 %.not.i515, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.bjb = load i16, ptr %i.cm, align 8, !tbaa !260 ; 3 uses
  %i.bjc = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not43.i517 = icmp ult i16 %i.bjb, %i.bjc
  br i1 %.not43.i517, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bjd = load i8, ptr %i.i, align 2, !tbaa !163
  %.not45.i516 = icmp eq i8 %i.bjd, 0
  br i1 %.not45.i516, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.lv:                                            ; preds = %bb.lt
  %i.bje = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.bjf = icmp eq i16 %i.bje, 0
  br i1 %i.bjf, label %bb.lw, label %._crit_edge.i518

._crit_edge.i518:                                 ; preds = %bb.lv
  %.pre46.i = and i64 %i.biy, 65535
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.bjg = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bjh = and i64 %i.biy, 65535                  ; 4 uses
  %i.bji = getelementptr inbounds nuw [16 x i8], ptr %i.bjg, i64 %i.bjh
  %i.bjj = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bjk = zext i16 %i.bjb to i64
  %i.bjl = getelementptr inbounds nuw [16 x i8], ptr %i.bjj, i64 %i.bjk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bji, ptr noundef nonnull align 8 dereferenceable(16) %i.bjl, i64 16, i1 false), !tbaa.struct !299
  %i.bjm = load ptr, ptr %i.au, align 8, !tbaa !251
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bjo = load i64, ptr %i.bjn, align 8, !tbaa !185
  call void %i.bjm(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.biz, i64 noundef %i.bjo) #21, !inline_history !584
  %i.bjp = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.bjq = getelementptr inbounds nuw [16 x i8], ptr %i.bjp, i64 %i.bjh
  %i.bjr = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bjs = getelementptr inbounds nuw [16 x i8], ptr %i.bjr, i64 %i.bjh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjq, ptr noundef nonnull align 8 dereferenceable(16) %i.bjs, i64 16, i1 false), !tbaa.struct !299
  %.pre.i521 = load i16, ptr %i.cm, align 8, !tbaa !260
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %._crit_edge.i518
  %.pre-phi.i519 = phi i64 [ %.pre46.i, %._crit_edge.i518 ], [ %i.bjh, %bb.lw ]
  %i.bjt = phi i16 [ %i.bjb, %._crit_edge.i518 ], [ %.pre.i521, %bb.lw ]
  %i.bju = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bjv = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.bjw = getelementptr inbounds nuw [16 x i8], ptr %i.bjv, i64 %.pre-phi.i519 ; 2 uses
  %i.bjx = load i64, ptr %i.bjw, align 8, !tbaa !230
  %i.bjy = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bjz = zext i16 %i.bjt to i64
  %i.bka = getelementptr inbounds nuw [16 x i8], ptr %i.bjy, i64 %i.bjz ; 2 uses
  %i.bkb = load i64, ptr %i.bka, align 8, !tbaa !230
  %i.bkc = sub i64 %i.bjx, %i.bkb
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjw, i64 8
  %i.bke = load i64, ptr %i.bkd, align 8, !tbaa !257
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bka, i64 8
  %i.bkg = load i64, ptr %i.bkf, align 8, !tbaa !257
  %i.bkh = sub i64 %i.bke, %i.bkg
  %i.bki = call i64 %i.bju(ptr noundef nonnull %0, i64 noundef %i.bkc, i64 noundef %i.bkh) #21, !inline_history !584
  %i.bkj = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bkl = load i64, ptr %i.bkk, align 8, !tbaa !185
  %i.bkm = sub i64 %i.bkl, %i.bki
  call void %i.bkj(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %i.biz, i64 noundef %i.bkm) #21, !inline_history !584
  %i.bkn = load i16, ptr %i.cm, align 8, !tbaa !260
  store i16 %i.bkn, ptr %i.cn, align 2, !tbaa !261
  store i16 %i.biz, ptr %i.co, align 4, !tbaa !262
  %i.bko = load i8, ptr %i.e, align 8, !tbaa !238
  %i.bkp = and i8 %i.bko, 1
  %.not44.i520 = icmp eq i8 %i.bkp, 0
  br i1 %.not44.i520, label %Ins_SPVTL.exitthread-pre-split, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  store i16 %i.biz, ptr %i.cm, align 8, !tbaa !260
  br label %Ins_SPVTL.exitthread-pre-split

bb.lz:                                            ; preds = %bb.f
  %i.bkq = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.bkr = icmp slt i64 %i.er, %i.bkq
  br i1 %i.bkr, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.bks = load i8, ptr %i.i, align 2, !tbaa !163
  %.not40.i530 = icmp eq i8 %i.bks, 0
  br i1 %.not40.i530, label %.loopexit.i526, label %.loopexit.sink.split.i524

bb.mb:                                            ; preds = %bb.lz
  %i.bkt = sub nsw i64 %i.er, %i.bkq
  store i64 %i.bkt, ptr %i.k, align 8, !tbaa !241
  %i.bku = load i16, ptr %i.cm, align 8, !tbaa !260
  %i.bkv = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i522 = icmp ult i16 %i.bku, %i.bkv
  br i1 %.not.i522, label %.preheader.i, label %bb.mc

.preheader.i:                                     ; preds = %bb.mb
  %.not3641.i = icmp eq i64 %i.bkq, 0
  br i1 %.not3641.i, label %.loopexit.i526, label %.lr.ph.i527

bb.mc:                                            ; preds = %bb.mb
  %i.bkw = load i8, ptr %i.i, align 2, !tbaa !163
  %.not39.i523 = icmp eq i8 %i.bkw, 0
  br i1 %.not39.i523, label %.loopexit.i526, label %.loopexit.sink.split.i524

.lr.ph.i527:                                      ; preds = %.preheader.i, %bb.mf
  %.in.i528 = phi i64 [ %i.bkx, %bb.mf ], [ %i.bkq, %.preheader.i ]
  %.03242.i = phi ptr [ %i.bky, %bb.mf ], [ %i.ew, %.preheader.i ]
  %i.bkx = add nsw i64 %.in.i528, -1              ; 2 uses
  %i.bky = getelementptr inbounds i8, ptr %.03242.i, i64 -8 ; 2 uses
  %i.bkz = load i64, ptr %i.bky, align 8, !tbaa !185 ; 2 uses
  %i.bla = load i16, ptr %i.ad, align 8, !tbaa !255
  %16 = trunc i64 %i.bkz to i16                   ; 2 uses
  %.not37.i = icmp ugt i16 %i.bla, %16
  br i1 %.not37.i, label %bb.me, label %bb.md

bb.md:                                            ; preds = %.lr.ph.i527
  %i.blb = load i8, ptr %i.i, align 2, !tbaa !163
  %.not38.i529 = icmp eq i8 %i.blb, 0
  br i1 %.not38.i529, label %bb.mf, label %.loopexit.sink.split

bb.me:                                            ; preds = %.lr.ph.i527
  %i.blc = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bld = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.ble = and i64 %i.bkz, 65535
  %i.blf = getelementptr inbounds nuw [16 x i8], ptr %i.bld, i64 %i.ble ; 2 uses
  %i.blg = load i64, ptr %i.blf, align 8, !tbaa !230
  %i.blh = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bli = load i16, ptr %i.cm, align 8, !tbaa !260
  %i.blj = zext i16 %i.bli to i64
  %i.blk = getelementptr inbounds nuw [16 x i8], ptr %i.blh, i64 %i.blj ; 2 uses
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !230
  %i.blm = sub i64 %i.blg, %i.bll
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blf, i64 8
  %i.blo = load i64, ptr %i.bln, align 8, !tbaa !257
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blk, i64 8
  %i.blq = load i64, ptr %i.blp, align 8, !tbaa !257
  %i.blr = sub i64 %i.blo, %i.blq
  %i.bls = call i64 %i.blc(ptr noundef nonnull %0, i64 noundef %i.blm, i64 noundef %i.blr) #21, !inline_history !585
  %i.blt = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.blu = sub i64 0, %i.bls
  call void %i.blt(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i16 noundef zeroext %16, i64 noundef %i.blu) #21, !inline_history !585
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.not36.i = icmp eq i64 %i.bkx, 0
  br i1 %.not36.i, label %.loopexit.i526, label %.lr.ph.i527, !llvm.loop !586

.loopexit.sink.split.i524:                        ; preds = %bb.mc, %bb.ma
  %.sink.i525 = phi i32 [ 129, %bb.ma ], [ 134, %bb.mc ]
  store i32 %.sink.i525, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i526

.loopexit.i526:                                   ; preds = %bb.mf, %.loopexit.sink.split.i524, %bb.mc, %.preheader.i, %bb.ma
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.mg:                                            ; preds = %bb.f
  store i32 2, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_To_Double_Grid, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.mh:                                            ; preds = %bb.f, %bb.f
  %.val322 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.blv = getelementptr i8, ptr %i.ew, i64 8
  %.val323 = load i64, ptr %i.blv, align 8, !tbaa !185 ; 2 uses
  %i.blw = trunc i64 %.val322 to i16              ; 4 uses
  %i.blx = load i16, ptr %i.bu, align 8, !tbaa !258
  %.not.i531 = icmp ugt i16 %i.blx, %i.blw
  br i1 %.not.i531, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bly = load i64, ptr %i.bn, align 8, !tbaa !175
  %.not55.i533 = icmp ult i64 %.val323, %i.bly
  br i1 %.not55.i533, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %i.blz = load i8, ptr %i.i, align 2, !tbaa !163
  %.not57.i532 = icmp eq i8 %i.blz, 0
  br i1 %.not57.i532, label %Ins_MIAP.exit, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_MIAP.exit

bb.ml:                                            ; preds = %bb.mi
  %i.bma = load ptr, ptr %i.ce, align 8, !tbaa !300
  %i.bmb = call i64 %i.bma(ptr noundef nonnull %0, i64 noundef %.val323) #21, !inline_history !587 ; 5 uses
  %i.bmc = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.bmd = icmp eq i16 %i.bmc, 0
  br i1 %i.bmd, label %bb.mm, label %._crit_edge.i534

._crit_edge.i534:                                 ; preds = %bb.ml
  %.pre.i535 = and i64 %.val322, 65535
  br label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bme = load i16, ptr %i.ap, align 4, !tbaa !246
  %i.bmf = sext i16 %i.bme to i64
  %i.bmg = mul i64 %i.bmb, %i.bmf                 ; 2 uses
  %i.bmh = ashr i64 %i.bmg, 63
  %i.bmi = add i64 %i.bmg, 8192
  %i.bmj = add i64 %i.bmi, %i.bmh
  %i.bmk = ashr i64 %i.bmj, 14
  %i.bml = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bmm = and i64 %.val322, 65535                ; 3 uses
  %i.bmn = getelementptr inbounds nuw [16 x i8], ptr %i.bml, i64 %i.bmm ; 3 uses
  store i64 %i.bmk, ptr %i.bmn, align 8, !tbaa !230
  %i.bmo = load i16, ptr %i.aq, align 2, !tbaa !247
  %i.bmp = sext i16 %i.bmo to i64
  %i.bmq = mul i64 %i.bmb, %i.bmp                 ; 2 uses
  %i.bmr = ashr i64 %i.bmq, 63
  %i.bms = add i64 %i.bmq, 8192
  %i.bmt = add i64 %i.bms, %i.bmr
  %i.bmu = ashr i64 %i.bmt, 14
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmn, i64 8
  store i64 %i.bmu, ptr %i.bmv, align 8, !tbaa !257
  %i.bmw = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bmx = getelementptr inbounds nuw [16 x i8], ptr %i.bmw, i64 %i.bmm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bmx, ptr noundef nonnull align 8 dereferenceable(16) %i.bmn, i64 16, i1 false), !tbaa.struct !299
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %._crit_edge.i534
  %.pre-phi.i536 = phi i64 [ %.pre.i535, %._crit_edge.i534 ], [ %i.bmm, %bb.mm ]
  %i.bmy = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bmz = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bna = getelementptr inbounds nuw [16 x i8], ptr %i.bmz, i64 %.pre-phi.i536 ; 2 uses
  %i.bnb = load i64, ptr %i.bna, align 8, !tbaa !230
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bna, i64 8
  %i.bnd = load i64, ptr %i.bnc, align 8, !tbaa !257
  %i.bne = call i64 %i.bmy(ptr noundef nonnull %0, i64 noundef %i.bnb, i64 noundef %i.bnd) #21, !inline_history !587 ; 3 uses
  %i.bnf = load i8, ptr %i.e, align 8, !tbaa !238
  %i.bng = and i8 %i.bnf, 1
  %.not56.i537 = icmp eq i8 %i.bng, 0
  br i1 %.not56.i537, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bnh = load i64, ptr %i.cl, align 8, !tbaa !273
  %i.bni = sub i64 %i.bmb, %i.bne
  %spec.select.i538 = call i64 @llvm.abs.i64(i64 %i.bni, i1 false)
  %i.bnj = icmp sgt i64 %spec.select.i538, %i.bnh
  %.051.i = select i1 %i.bnj, i64 %i.bne, i64 %i.bmb
  %i.bnk = load ptr, ptr %i.be, align 8, !tbaa !265
  %i.bnl = call i64 %i.bnk(ptr noundef nonnull %0, i64 noundef %.051.i, i64 noundef 0) #21, !inline_history !587
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn
  %.1.i539 = phi i64 [ %i.bnl, %bb.mo ], [ %i.bmb, %bb.mn ]
  %i.bnm = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.bnn = sub i64 %.1.i539, %i.bne
  call void %i.bnm(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i16 noundef zeroext %i.blw, i64 noundef %i.bnn) #21, !inline_history !587
  br label %Ins_MIAP.exit

Ins_MIAP.exit:                                    ; preds = %bb.mj, %bb.mk, %bb.mp
  store i16 %i.blw, ptr %i.cm, align 8, !tbaa !260
  store i16 %i.blw, ptr %i.cn, align 2, !tbaa !261
  br label %Ins_SPVTL.exitthread-pre-split

bb.mq:                                            ; preds = %bb.f
  %i.bno = load i64, ptr %i.d, align 8, !tbaa !206
  %i.bnp = add nsw i64 %i.bno, 1                  ; 6 uses
  %i.bnq = load i64, ptr %i.s, align 8, !tbaa !205 ; 2 uses
  %.not.i540 = icmp slt i64 %i.bnp, %i.bnq
  br i1 %.not.i540, label %bb.mr, label %.loopexit.sink.split

bb.mr:                                            ; preds = %bb.mq
  %i.bnr = getelementptr inbounds i8, ptr %i.dv, i64 %i.bnp
  %i.bns = load i8, ptr %i.bnr, align 1, !tbaa !186 ; 4 uses
  %i.bnt = zext i8 %i.bns to i64                  ; 4 uses
  %i.bnu = add nsw i64 %i.bnp, %i.bnt
  %.not28.i541 = icmp slt i64 %i.bnu, %i.bnq
  br i1 %.not28.i541, label %bb.ms, label %.loopexit.sink.split

bb.ms:                                            ; preds = %bb.mr
  %i.bnv = zext i8 %i.bns to i32
  %i.bnw = add nuw nsw i64 %i.es, 1
  %i.bnx = load i64, ptr %i.g, align 8, !tbaa !240
  %i.bny = sub i64 %i.bnw, %i.bnx
  %i.bnz = trunc i64 %i.bny to i32
  %.not29.i542 = icmp ult i32 %i.bnv, %i.bnz
  br i1 %.not29.i542, label %.preheader.i543, label %.loopexit.sink.split

.preheader.i543:                                  ; preds = %bb.ms
  %.not32.i = icmp eq i8 %i.bns, 0
  br i1 %.not32.i, label %._crit_edge.i549, label %.lr.ph.i545.preheader

.lr.ph.i545.preheader:                            ; preds = %.preheader.i543
  %xtraiter1396 = and i64 %i.bnt, 3               ; 3 uses
  %i.boa = icmp ult i8 %i.bns, 4
  br i1 %i.boa, label %.lr.ph.i545.epil.preheader, label %.lr.ph.i545.preheader.new

.lr.ph.i545.preheader.new:                        ; preds = %.lr.ph.i545.preheader
  %unroll_iter1400 = and i64 %i.bnt, 252
  br label %.lr.ph.i545

.lr.ph.i545:                                      ; preds = %.lr.ph.i545, %.lr.ph.i545.preheader.new
  %indvars.iv.i546 = phi i64 [ 0, %.lr.ph.i545.preheader.new ], [ %indvars.iv.next.i547.3, %.lr.ph.i545 ] ; 5 uses
  %.02430.i = phi i64 [ %i.bnp, %.lr.ph.i545.preheader.new ], [ %i.bos, %.lr.ph.i545 ] ; 4 uses
  %niter1401 = phi i64 [ 0, %.lr.ph.i545.preheader.new ], [ %niter1401.next.3, %.lr.ph.i545 ]
  %i.bob = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.boc = getelementptr i8, ptr %i.bob, i64 1
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !186
  %i.boe = zext i8 %i.bod to i64
  %i.bof = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i546
  store i64 %i.boe, ptr %i.bof, align 8, !tbaa !185
  %i.bog = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.boh = getelementptr i8, ptr %i.bog, i64 2
  %i.boi = load i8, ptr %i.boh, align 1, !tbaa !186
  %i.boj = zext i8 %i.boi to i64
  %i.bok = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i546
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  store i64 %i.boj, ptr %i.bol, align 8, !tbaa !185
  %i.bom = getelementptr i8, ptr %i.dv, i64 %.02430.i
  %i.bon = getelementptr i8, ptr %i.bom, i64 3
  %i.boo = load i8, ptr %i.bon, align 1, !tbaa !186
  %i.bop = zext i8 %i.boo to i64
  %i.boq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i546
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 16
  store i64 %i.bop, ptr %i.bor, align 8, !tbaa !185
  %i.bos = add nsw i64 %.02430.i, 4               ; 4 uses
  %i.bot = getelementptr inbounds i8, ptr %i.dv, i64 %i.bos
  %i.bou = load i8, ptr %i.bot, align 1, !tbaa !186
  %i.bov = zext i8 %i.bou to i64
  %i.bow = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i546
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 24
  store i64 %i.bov, ptr %i.box, align 8, !tbaa !185
  %indvars.iv.next.i547.3 = add nuw nsw i64 %indvars.iv.i546, 4 ; 2 uses
  %niter1401.next.3 = add i64 %niter1401, 4       ; 2 uses
  %niter1401.ncmp.3 = icmp eq i64 %niter1401.next.3, %unroll_iter1400
  br i1 %niter1401.ncmp.3, label %._crit_edge.i549.loopexit.unr-lcssa, label %.lr.ph.i545, !llvm.loop !588

._crit_edge.i549.loopexit.unr-lcssa:              ; preds = %.lr.ph.i545
  %lcmp.mod1397.not = icmp eq i64 %xtraiter1396, 0
  br i1 %lcmp.mod1397.not, label %._crit_edge.i549.loopexit, label %.lr.ph.i545.epil.preheader

.lr.ph.i545.epil.preheader:                       ; preds = %._crit_edge.i549.loopexit.unr-lcssa, %.lr.ph.i545.preheader
  %indvars.iv.i546.epil.init = phi i64 [ 0, %.lr.ph.i545.preheader ], [ %indvars.iv.next.i547.3, %._crit_edge.i549.loopexit.unr-lcssa ]
  %.02430.i.epil.init = phi i64 [ %i.bnp, %.lr.ph.i545.preheader ], [ %i.bos, %._crit_edge.i549.loopexit.unr-lcssa ]
  %lcmp.mod1399 = icmp ne i64 %xtraiter1396, 0
  call void @llvm.assume(i1 %lcmp.mod1399)
  br label %.lr.ph.i545.epil

.lr.ph.i545.epil:                                 ; preds = %.lr.ph.i545.epil, %.lr.ph.i545.epil.preheader
  %indvars.iv.i546.epil = phi i64 [ %indvars.iv.next.i547.epil, %.lr.ph.i545.epil ], [ %indvars.iv.i546.epil.init, %.lr.ph.i545.epil.preheader ] ; 2 uses
  %.02430.i.epil = phi i64 [ %i.boy, %.lr.ph.i545.epil ], [ %.02430.i.epil.init, %.lr.ph.i545.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i545.epil ], [ 0, %.lr.ph.i545.epil.preheader ]
  %i.boy = add nsw i64 %.02430.i.epil, 1          ; 3 uses
  %i.boz = getelementptr inbounds i8, ptr %i.dv, i64 %i.boy
  %i.bpa = load i8, ptr %i.boz, align 1, !tbaa !186
  %i.bpb = zext i8 %i.bpa to i64
  %i.bpc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i546.epil
  store i64 %i.bpb, ptr %i.bpc, align 8, !tbaa !185
  %indvars.iv.next.i547.epil = add nuw nsw i64 %indvars.iv.i546.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1396
  br i1 %epil.iter.cmp.not, label %._crit_edge.i549.loopexit, label %.lr.ph.i545.epil, !llvm.loop !589

._crit_edge.i549.loopexit:                        ; preds = %.lr.ph.i545.epil, %._crit_edge.i549.loopexit.unr-lcssa
  %.lcssa1381 = phi i64 [ %i.bos, %._crit_edge.i549.loopexit.unr-lcssa ], [ %i.boy, %.lr.ph.i545.epil ]
  %.pre1009 = load i64, ptr %i.k, align 8, !tbaa !241
  br label %._crit_edge.i549

._crit_edge.i549:                                 ; preds = %._crit_edge.i549.loopexit, %.preheader.i543
  %i.bpd = phi i64 [ %i.er, %.preheader.i543 ], [ %.pre1009, %._crit_edge.i549.loopexit ]
  %.024.lcssa.i = phi i64 [ %i.bnp, %.preheader.i543 ], [ %.lcssa1381, %._crit_edge.i549.loopexit ]
  %i.bpe = add nsw i64 %i.bpd, %i.bnt
  store i64 %i.bpe, ptr %i.k, align 8, !tbaa !241
  store i64 %.024.lcssa.i, ptr %i.d, align 8, !tbaa !206
  br label %Ins_SPVTL.exitthread-pre-split
end_hunk_5
begin_hunk_6_@TT_RunIns:bb.a
  %.02733.i.epil.init = phi i64 [ %i.bpg, %.lr.ph.preheader.i554 ], [ %i.bql, %._crit_edge.i560.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1395 = trunc i8 %i.bpj to i1
  call void @llvm.assume(i1 %lcmp.mod1395)
  %i.bqs = getelementptr i8, ptr %i.dv, i64 %.02733.i.epil.init
  %i.bqt = getelementptr i8, ptr %i.bqs, i64 1
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !186
  %i.bqv = zext i8 %i.bqu to i16
  %i.bqw = shl nuw i16 %i.bqv, 8
  %i.bqx = sext i16 %i.bqw to i64
  %i.bqy = add nsw i64 %.02733.i.epil.init, 2     ; 2 uses
  %i.bqz = getelementptr inbounds i8, ptr %i.dv, i64 %i.bqy
  %i.bra = load i8, ptr %i.bqz, align 1, !tbaa !186
  %i.brb = zext i8 %i.bra to i64
  %i.brc = or disjoint i64 %i.bqx, %i.brb
  %i.brd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i557.epil.init
  store i64 %i.brc, ptr %i.brd, align 8, !tbaa !185
  br label %._crit_edge.i560.loopexit

._crit_edge.i560.loopexit:                        ; preds = %._crit_edge.i560.loopexit.unr-lcssa, %.lr.ph.i556.epil.preheader
  %.lcssa1380 = phi i64 [ %i.bql, %._crit_edge.i560.loopexit.unr-lcssa ], [ %i.bqy, %.lr.ph.i556.epil.preheader ]
  %.pre1008 = load i64, ptr %i.k, align 8, !tbaa !241
  br label %._crit_edge.i560

._crit_edge.i560:                                 ; preds = %.preheader.i553, %._crit_edge.i560.loopexit
  %.pre-phi = phi i64 [ %wide.trip.count.i555, %._crit_edge.i560.loopexit ], [ 0, %.preheader.i553 ]
  %i.bre = phi i64 [ %.pre1008, %._crit_edge.i560.loopexit ], [ %i.er, %.preheader.i553 ]
  %.027.lcssa.i = phi i64 [ %.lcssa1380, %._crit_edge.i560.loopexit ], [ %i.bpg, %.preheader.i553 ]
  %i.brf = add nsw i64 %i.bre, %.pre-phi
  store i64 %i.brf, ptr %i.k, align 8, !tbaa !241
  store i64 %.027.lcssa.i, ptr %i.d, align 8, !tbaa !206
  br label %Ins_SPVTL.exitthread-pre-split

bb.mw:                                            ; preds = %bb.f
  %i.brg = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.brh = load i16, ptr %i.cg, align 8, !tbaa !173
  %i.bri = zext i16 %i.brh to i64                 ; 2 uses
  %.not.i561 = icmp ult i64 %i.brg, %i.bri
  br i1 %.not.i561, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.brj = load i8, ptr %i.i, align 2, !tbaa !163
  %.not28.i562 = icmp eq i8 %i.brj, 0
  br i1 %.not28.i562, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.my:                                            ; preds = %bb.mw
  %i.brk = load i32, ptr %i.t, align 8, !tbaa !208
  %i.brl = icmp eq i32 %i.brk, 3
  %i.brm = load ptr, ptr %i.ch, align 8, !tbaa !190 ; 3 uses
  br i1 %i.brl, label %bb.mz, label %._crit_edge.i563

bb.mz:                                            ; preds = %bb.my
  %i.brn = load ptr, ptr %i.ci, align 8, !tbaa !301 ; 2 uses
  %.not26.i = icmp eq ptr %i.brm, %i.brn
  br i1 %.not26.i, label %._crit_edge.i563, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bro = load ptr, ptr %i.cj, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.brp = load i16, ptr %i.ck, align 8, !tbaa !302
  %i.brq = zext i16 %i.brp to i64
  %i.brr = call ptr @ft_mem_qrealloc(ptr noundef %i.bro, i64 noundef 8, i64 noundef %i.brq, i64 noundef %i.bri, ptr noundef %i.brn, ptr noundef nonnull %i.a) #21 ; 2 uses
  store ptr %i.brr, ptr %i.ci, align 8, !tbaa !301
  %i.brs = load i32, ptr %i.a, align 4, !tbaa !152 ; 3 uses
  store i32 %i.brs, ptr %i.b, align 8, !tbaa !237
  %.not27.i = icmp eq i32 %i.brs, 0
  br i1 %.not27.i, label %bb.nb, label %.critedge.i564

bb.nb:                                            ; preds = %bb.na
  %i.brt = load i16, ptr %i.cg, align 8, !tbaa !173 ; 2 uses
  store i16 %i.brt, ptr %i.ck, align 8, !tbaa !302
  %i.bru = load ptr, ptr %i.ch, align 8, !tbaa !190
  %i.brv = zext i16 %i.brt to i64
  %i.brw = shl nuw nsw i64 %i.brv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.brr, ptr align 8 %i.bru, i64 %i.brw, i1 false)
  %i.brx = load ptr, ptr %i.ci, align 8, !tbaa !301 ; 2 uses
  store ptr %i.brx, ptr %i.ch, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %._crit_edge.i563

._crit_edge.i563:                                 ; preds = %bb.nb, %bb.mz, %bb.my
  %i.bry = phi ptr [ %i.brm, %bb.mz ], [ %i.brx, %bb.nb ], [ %i.brm, %bb.my ]
  %i.brz = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bsa = load i64, ptr %i.brz, align 8, !tbaa !185
  %i.bsb = getelementptr inbounds nuw [8 x i8], ptr %i.bry, i64 %i.brg
  store i64 %i.bsa, ptr %i.bsb, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

.critedge.i564:                                   ; preds = %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %Ins_SPVTL.exit

bb.nc:                                            ; preds = %bb.f
  %i.bsc = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bsd = load i16, ptr %i.cg, align 8, !tbaa !173
  %i.bse = zext i16 %i.bsd to i64
  %.not.i565 = icmp ult i64 %i.bsc, %i.bse
  br i1 %.not.i565, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.bsf = load i8, ptr %i.i, align 2, !tbaa !163
  %.not8.i = icmp eq i8 %i.bsf, 0
  br i1 %.not8.i, label %bb.nf, label %.loopexit.sink.split

bb.ne:                                            ; preds = %bb.nc
  %i.bsg = load ptr, ptr %i.ch, align 8, !tbaa !190
  %i.bsh = getelementptr inbounds nuw [8 x i8], ptr %i.bsg, i64 %i.bsc
  %i.bsi = load i64, ptr %i.bsh, align 8, !tbaa !185
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %storemerge.i566 = phi i64 [ %i.bsi, %bb.ne ], [ 0, %bb.nd ]
  store i64 %storemerge.i566, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.ng:                                            ; preds = %bb.f
  %i.bsj = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bsk = load i64, ptr %i.bn, align 8, !tbaa !175
  %.not.i567 = icmp ult i64 %i.bsj, %i.bsk
  br i1 %.not.i567, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bsl = load i8, ptr %i.i, align 2, !tbaa !163
  %.not8.i568 = icmp eq i8 %i.bsl, 0
  br i1 %.not8.i568, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ni:                                            ; preds = %bb.ng
  %i.bsm = load ptr, ptr %i.cf, align 8, !tbaa !303
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bso = load i64, ptr %i.bsn, align 8, !tbaa !185
  call void %i.bsm(ptr noundef nonnull %0, i64 noundef %i.bsj, i64 noundef %i.bso) #21, !inline_history !591
  br label %Ins_SPVTL.exitthread-pre-split

bb.nj:                                            ; preds = %bb.f
  %i.bsp = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bsq = load i64, ptr %i.bn, align 8, !tbaa !175
  %.not.i569 = icmp ult i64 %i.bsp, %i.bsq
  br i1 %.not.i569, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.bsr = load i8, ptr %i.i, align 2, !tbaa !163
  %.not9.i = icmp eq i8 %i.bsr, 0
  br i1 %.not9.i, label %bb.nm, label %.loopexit.sink.split

bb.nl:                                            ; preds = %bb.nj
  %i.bss = load ptr, ptr %i.ce, align 8, !tbaa !300
  %i.bst = call i64 %i.bss(ptr noundef nonnull %0, i64 noundef %i.bsp) #21, !inline_history !592
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %storemerge.i570 = phi i64 [ %i.bst, %bb.nl ], [ 0, %bb.nk ]
  store i64 %storemerge.i570, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.nn:                                            ; preds = %bb.f, %bb.f
  %i.bsu = load i64, ptr %i.ew, align 8, !tbaa !185 ; 3 uses
  %i.bsv = load i16, ptr %i.ae, align 8, !tbaa !617
  %i.bsw = zext i16 %i.bsv to i64
  %.not.i571 = icmp ult i64 %i.bsu, %i.bsw
  br i1 %.not.i571, label %bb.nq, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bsx = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i572 = icmp eq i8 %i.bsx, 0
  br i1 %.not21.i572, label %Ins_GC.exit, label %bb.np

bb.np:                                            ; preds = %bb.no
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_GC.exit

bb.nq:                                            ; preds = %bb.nn
  %i.bsy = and i8 %i.dy, 1
  %.not20.i574 = icmp eq i8 %i.bsy, 0
  br i1 %.not20.i574, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bsz = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bta = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.btb = getelementptr inbounds nuw [16 x i8], ptr %i.bta, i64 %i.bsu ; 2 uses
  %i.btc = load i64, ptr %i.btb, align 8, !tbaa !230
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.bte = load i64, ptr %i.btd, align 8, !tbaa !257
  %i.btf = call i64 %i.bsz(ptr noundef nonnull %0, i64 noundef %i.btc, i64 noundef %i.bte) #21, !inline_history !593
  br label %Ins_GC.exit

bb.ns:                                            ; preds = %bb.nq
  %i.btg = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.bth = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bti = getelementptr inbounds nuw [16 x i8], ptr %i.bth, i64 %i.bsu ; 2 uses
  %i.btj = load i64, ptr %i.bti, align 8, !tbaa !230
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bti, i64 8
  %i.btl = load i64, ptr %i.btk, align 8, !tbaa !257
  %i.btm = call i64 %i.btg(ptr noundef nonnull %0, i64 noundef %i.btj, i64 noundef %i.btl) #21, !inline_history !593
  br label %Ins_GC.exit

Ins_GC.exit:                                      ; preds = %bb.no, %bb.np, %bb.nr, %bb.ns
  %.0.i573 = phi i64 [ %i.btm, %bb.ns ], [ %i.btf, %bb.nr ], [ 0, %bb.np ], [ 0, %bb.no ]
  store i64 %.0.i573, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.nt:                                            ; preds = %bb.f
  %i.btn = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.bto = load i16, ptr %i.ae, align 8, !tbaa !617
  %17 = trunc i64 %i.btn to i16                   ; 2 uses
  %.not.i575 = icmp ugt i16 %i.bto, %17
  br i1 %.not.i575, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.btp = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i576 = icmp eq i8 %i.btp, 0
  br i1 %.not21.i576, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.nv:                                            ; preds = %bb.nt
  %i.btq = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.btr = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.bts = and i64 %i.btn, 65535                  ; 3 uses
  %i.btt = getelementptr inbounds nuw [16 x i8], ptr %i.btr, i64 %i.bts ; 2 uses
  %i.btu = load i64, ptr %i.btt, align 8, !tbaa !230
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btt, i64 8
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !257
  %i.btx = call i64 %i.btq(ptr noundef nonnull %0, i64 noundef %i.btu, i64 noundef %i.btw) #21, !inline_history !594
  %i.bty = load ptr, ptr %i.at, align 8, !tbaa !250
  %i.btz = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bua = load i64, ptr %i.btz, align 8, !tbaa !185
  %i.bub = sub i64 %i.bua, %i.btx
  call void %i.bty(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i16 noundef zeroext %17, i64 noundef %i.bub) #21, !inline_history !594
  %i.buc = load i16, ptr %i.cd, align 2, !tbaa !622
  %i.bud = icmp eq i16 %i.buc, 0
  br i1 %i.bud, label %bb.nw, label %Ins_SPVTL.exitthread-pre-split

bb.nw:                                            ; preds = %bb.nv
  %i.bue = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.buf = getelementptr inbounds nuw [16 x i8], ptr %i.bue, i64 %i.bts
  %i.bug = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.buh = getelementptr inbounds nuw [16 x i8], ptr %i.bug, i64 %i.bts
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buf, ptr noundef nonnull align 8 dereferenceable(16) %i.buh, i64 16, i1 false), !tbaa.struct !299
  br label %Ins_SPVTL.exitthread-pre-split

bb.nx:                                            ; preds = %bb.f, %bb.f
  %i.bui = load i64, ptr %i.ew, align 8, !tbaa !185 ; 4 uses
  %i.buj = load i16, ptr %i.bu, align 8, !tbaa !258
  %18 = trunc i64 %i.bui to i16
  %.not.i577 = icmp ugt i16 %i.buj, %18
  br i1 %.not.i577, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.buk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.bul = load i64, ptr %i.buk, align 8, !tbaa !185 ; 4 uses
  %i.bum = load i16, ptr %i.ad, align 8, !tbaa !255
  %19 = trunc i64 %i.bul to i16
  %.not57.i579 = icmp ugt i16 %i.bum, %19
  br i1 %.not57.i579, label %bb.ob, label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.bun = load i8, ptr %i.i, align 2, !tbaa !163
  %.not59.i = icmp eq i8 %i.bun, 0
  br i1 %.not59.i, label %Ins_MD.exit, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  store i32 134, ptr %i.b, align 8, !tbaa !237
  br label %Ins_MD.exit

bb.ob:                                            ; preds = %bb.ny
  %i.buo = and i8 %i.dy, 1
  %.not58.i = icmp eq i8 %i.buo, 0
  br i1 %.not58.i, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bup = load ptr, ptr %i.av, align 8, !tbaa !252
  %i.buq = load ptr, ptr %i.bv, align 8, !tbaa !259
  %i.bur = and i64 %i.bui, 65535
  %i.bus = getelementptr inbounds nuw [16 x i8], ptr %i.buq, i64 %i.bur ; 2 uses
  %i.but = load i64, ptr %i.bus, align 8, !tbaa !230
  %i.buu = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.buv = and i64 %i.bul, 65535
  %i.buw = getelementptr inbounds nuw [16 x i8], ptr %i.buu, i64 %i.buv ; 2 uses
  %i.bux = load i64, ptr %i.buw, align 8, !tbaa !230
  %i.buy = sub i64 %i.but, %i.bux
  %i.buz = getelementptr inbounds nuw i8, ptr %i.bus, i64 8
  %i.bva = load i64, ptr %i.buz, align 8, !tbaa !257
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.buw, i64 8
  %i.bvc = load i64, ptr %i.bvb, align 8, !tbaa !257
  %i.bvd = sub i64 %i.bva, %i.bvc
  %i.bve = call i64 %i.bup(ptr noundef nonnull %0, i64 noundef %i.buy, i64 noundef %i.bvd) #21, !inline_history !595
  br label %Ins_MD.exit

bb.od:                                            ; preds = %bb.ob
  %i.bvf = load i16, ptr %i.bw, align 2, !tbaa !263
  %i.bvg = icmp eq i16 %i.bvf, 0
  br i1 %i.bvg, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.bvh = load i16, ptr %i.bx, align 8, !tbaa !264
  %i.bvi = icmp eq i16 %i.bvh, 0
  br i1 %i.bvi, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe, %bb.od
  %i.bvj = load ptr, ptr %i.cc, align 8, !tbaa !293
  %i.bvk = and i64 %i.bui, 65535
  %i.bvl = getelementptr inbounds nuw [16 x i8], ptr %i.bvj, i64 %i.bvk ; 2 uses
  %i.bvm = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.bvn = and i64 %i.bul, 65535
  %i.bvo = getelementptr inbounds nuw [16 x i8], ptr %i.bvm, i64 %i.bvn ; 2 uses
  %i.bvp = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bvq = load i64, ptr %i.bvl, align 8, !tbaa !230
  %i.bvr = load i64, ptr %i.bvo, align 8, !tbaa !230
  %i.bvs = sub i64 %i.bvq, %i.bvr
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8
  %i.bvu = load i64, ptr %i.bvt, align 8, !tbaa !257
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvo, i64 8
  %i.bvw = load i64, ptr %i.bvv, align 8, !tbaa !257
  %i.bvx = sub i64 %i.bvu, %i.bvw
  %i.bvy = call i64 %i.bvp(ptr noundef nonnull %0, i64 noundef %i.bvs, i64 noundef %i.bvx) #21, !inline_history !595
  br label %Ins_MD.exit

bb.og:                                            ; preds = %bb.oe
  %i.bvz = load ptr, ptr %i.by, align 8, !tbaa !294
  %i.bwa = and i64 %i.bui, 65535
  %i.bwb = getelementptr inbounds nuw [16 x i8], ptr %i.bvz, i64 %i.bwa ; 4 uses
  %i.bwc = load ptr, ptr %i.bz, align 8, !tbaa !298
  %i.bwd = and i64 %i.bul, 65535
  %i.bwe = getelementptr inbounds nuw [16 x i8], ptr %i.bwc, i64 %i.bwd ; 4 uses
  %i.bwf = load i64, ptr %i.ca, align 8, !tbaa !296 ; 2 uses
  %i.bwg = load i64, ptr %i.cb, align 8, !tbaa !297 ; 2 uses
  %i.bwh = icmp eq i64 %i.bwf, %i.bwg
  br i1 %i.bwh, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.bwi = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bwj = load i64, ptr %i.bwb, align 8, !tbaa !230
  %i.bwk = load i64, ptr %i.bwe, align 8, !tbaa !230
  %i.bwl = sub i64 %i.bwj, %i.bwk
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwb, i64 8
  %i.bwn = load i64, ptr %i.bwm, align 8, !tbaa !257
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  %i.bwp = load i64, ptr %i.bwo, align 8, !tbaa !257
  %i.bwq = sub i64 %i.bwn, %i.bwp
  %i.bwr = call i64 %i.bwi(ptr noundef nonnull %0, i64 noundef %i.bwl, i64 noundef %i.bwq) #21, !inline_history !595
  %i.bws = load i64, ptr %i.ca, align 8, !tbaa !296
  %i.bwt = mul i64 %i.bws, %i.bwr                 ; 2 uses
  %i.bwu = ashr i64 %i.bwt, 63
  %i.bwv = add i64 %i.bwt, 32768
  %i.bww = add i64 %i.bwv, %i.bwu
  %i.bwx = ashr i64 %i.bww, 16
  br label %Ins_MD.exit

bb.oi:                                            ; preds = %bb.og
  %i.bwy = load i64, ptr %i.bwb, align 8, !tbaa !230
  %i.bwz = load i64, ptr %i.bwe, align 8, !tbaa !230
  %i.bxa = sub nsw i64 %i.bwy, %i.bwz
  %i.bxb = mul i64 %i.bxa, %i.bwf                 ; 2 uses
  %i.bxc = ashr i64 %i.bxb, 63
  %i.bxd = add i64 %i.bxb, 32768
  %i.bxe = add i64 %i.bxd, %i.bxc
  %i.bxf = ashr i64 %i.bxe, 16
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bwb, i64 8
  %i.bxh = load i64, ptr %i.bxg, align 8, !tbaa !257
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  %i.bxj = load i64, ptr %i.bxi, align 8, !tbaa !257
  %i.bxk = sub nsw i64 %i.bxh, %i.bxj
  %i.bxl = mul i64 %i.bxk, %i.bwg                 ; 2 uses
  %i.bxm = ashr i64 %i.bxl, 63
  %i.bxn = add i64 %i.bxl, 32768
  %i.bxo = add i64 %i.bxn, %i.bxm
  %i.bxp = ashr i64 %i.bxo, 16
  %i.bxq = load ptr, ptr %i.aw, align 8, !tbaa !253
  %i.bxr = call i64 %i.bxq(ptr noundef nonnull %0, i64 noundef %i.bxf, i64 noundef %i.bxp) #21, !inline_history !595
  br label %Ins_MD.exit

Ins_MD.exit:                                      ; preds = %bb.nz, %bb.oa, %bb.oc, %bb.of, %bb.oh, %bb.oi
  %.1.i578 = phi i64 [ 0, %bb.nz ], [ %i.bve, %bb.oc ], [ %i.bvy, %bb.of ], [ 0, %bb.oa ], [ %i.bwx, %bb.oh ], [ %i.bxr, %bb.oi ]
  store i64 %.1.i578, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.oj:                                            ; preds = %bb.f
  %i.bxs = load ptr, ptr %i.bk, align 8, !tbaa !304
  %i.bxt = call i64 %i.bxs(ptr noundef nonnull %0) #21, !inline_history !596
  store i64 %i.bxt, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.ok:                                            ; preds = %bb.f
  %i.bxu = load ptr, ptr %0, align 8, !tbaa !189
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxu, i64 176
  %i.bxw = load ptr, ptr %i.bxv, align 8, !tbaa !43
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 112
  %i.bxy = load i32, ptr %i.bxx, align 8, !tbaa !28
  %i.bxz = icmp eq i32 %i.bxy, 35
  br i1 %i.bxz, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %i.bya = load ptr, ptr %i.bk, align 8, !tbaa !304
  %i.byb = call i64 %i.bya(ptr noundef nonnull %0) #21, !inline_history !597
  br label %Ins_MPS.exit

bb.om:                                            ; preds = %bb.ok
  %i.byc = load i64, ptr %i.bt, align 8, !tbaa !195
  br label %Ins_MPS.exit

Ins_MPS.exit:                                     ; preds = %bb.ol, %bb.om
  %storemerge.i580 = phi i64 [ %i.byc, %bb.om ], [ %i.byb, %bb.ol ]
  store i64 %storemerge.i580, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.on:                                            ; preds = %bb.f
  store i8 1, ptr %i.bs, align 4, !tbaa !211
  br label %Ins_SPVTL.exitthread-pre-split

bb.oo:                                            ; preds = %bb.f
  store i8 0, ptr %i.bs, align 4, !tbaa !211
  br label %Ins_SPVTL.exitthread-pre-split

bb.op:                                            ; preds = %bb.f
  %i.byd = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.bye = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byf = load i64, ptr %i.bye, align 8, !tbaa !185
  %i.byg = icmp slt i64 %i.byd, %i.byf
  %i.byh = zext i1 %i.byg to i64
  store i64 %i.byh, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.oq:                                            ; preds = %bb.f
  %i.byi = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byj = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byk = load i64, ptr %i.byj, align 8, !tbaa !185
  %i.byl = icmp sle i64 %i.byi, %i.byk
  %i.bym = zext i1 %i.byl to i64
  store i64 %i.bym, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.or:                                            ; preds = %bb.f
  %i.byn = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byo = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byp = load i64, ptr %i.byo, align 8, !tbaa !185
  %i.byq = icmp sgt i64 %i.byn, %i.byp
  %i.byr = zext i1 %i.byq to i64
  store i64 %i.byr, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.os:                                            ; preds = %bb.f
  %i.bys = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byt = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !185
  %i.byv = icmp sge i64 %i.bys, %i.byu
  %i.byw = zext i1 %i.byv to i64
  store i64 %i.byw, ptr %i.ew, align 8, !tbaa !185
  br label %Ins_SPVTL.exitthread-pre-split

bb.ot:                                            ; preds = %bb.f
  %i.byx = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.byy = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.byz = load i64, ptr %i.byy, align 8, !tbaa !185
end_hunk_6
begin_hunk_7_@TT_RunIns:bb.a
  store i64 %i.chy, ptr %i.bf, align 8, !tbaa !271
  %i.chz = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.cia = icmp ugt i64 %i.chy, %i.chz
  br i1 %i.cia, label %.sink.split.i.i, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i:                                  ; preds = %bb.re, %bb.rj, %bb.rh, %bb.rf
  %.sink.i.i609 = phi i32 [ 132, %bb.rf ], [ 132, %bb.re ], [ 132, %bb.rh ], [ 139, %bb.rj ] ; 2 uses
  store i32 %.sink.i.i609, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.rk:                                            ; preds = %bb.f
  %i.cib = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.cic = load i64, ptr %i.cib, align 8, !tbaa !185
  %i.cid = icmp eq i64 %i.cic, 0
  br i1 %i.cid, label %bb.rl, label %Ins_SPVTL.exitthread-pre-split

bb.rl:                                            ; preds = %bb.rk
  %i.cie = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.cif = or i64 %i.cie, %i.eo
  %or.cond791 = icmp eq i64 %i.cif, 0
  br i1 %or.cond791, label %.sink.split.i.i610, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.cig = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cih = add i64 %i.cig, %i.cie                 ; 3 uses
  store i64 %i.cih, ptr %i.d, align 8, !tbaa !206
  %i.cii = icmp slt i64 %i.cih, 0
  br i1 %i.cii, label %.sink.split.i.i610, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.cij = load i32, ptr %i.o, align 8, !tbaa !267 ; 2 uses
  %i.cik = icmp sgt i32 %i.cij, 0
  br i1 %i.cik, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.cil = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cim = zext nneg i32 %i.cij to i64
  %i.cin = getelementptr [32 x i8], ptr %i.cil, i64 %i.cim
  %i.cio = getelementptr i8, ptr %i.cin, i64 -8
  %i.cip = load ptr, ptr %i.cio, align 8, !tbaa !269
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cip, i64 16
  %i.cir = load i64, ptr %i.ciq, align 8, !tbaa !625
  %i.cis = icmp sgt i64 %i.cih, %i.cir
  br i1 %i.cis, label %.sink.split.i.i610, label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  store i32 0, ptr %i.f, align 4, !tbaa !239
  %i.cit = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.ciu = icmp slt i64 %i.cit, 0
  br i1 %i.ciu, label %bb.rq, label %Ins_SPVTL.exitthread-pre-split

bb.rq:                                            ; preds = %bb.rp
  %i.civ = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.ciw = add i64 %i.civ, 1                      ; 2 uses
  store i64 %i.ciw, ptr %i.bf, align 8, !tbaa !271
  %i.cix = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.ciy = icmp ugt i64 %i.ciw, %i.cix
  br i1 %i.ciy, label %.sink.split.i.i610, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i610:                               ; preds = %bb.rl, %bb.rq, %bb.ro, %bb.rm
  %.sink.i.i611 = phi i32 [ 132, %bb.rm ], [ 132, %bb.rl ], [ 132, %bb.ro ], [ 139, %bb.rq ] ; 2 uses
  store i32 %.sink.i.i611, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.rr:                                            ; preds = %bb.f
  store i32 5, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_None, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.rs:                                            ; preds = %bb.f
  %i.ciz = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i612 = icmp eq ptr %i.ciz, null
  br i1 %.not.i612, label %._crit_edge.i617, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.cja = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.cjb = zext i32 %i.cja to i64
  %.idx.i613 = shl nuw nsw i64 %i.cjb, 5
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.ciz, i64 %.idx.i613
  %.not40.i614 = icmp eq i32 %i.cja, 0
  br i1 %.not40.i614, label %._crit_edge.i617, label %.lr.ph.i615

.lr.ph.i615:                                      ; preds = %bb.rt, %bb.sa
  %.031.i616 = phi ptr [ %i.ckg, %bb.sa ], [ %i.ciz, %bb.rt ] ; 6 uses
  %i.cjd = getelementptr inbounds nuw i8, ptr %.031.i616, i64 24
  %i.cje = load i32, ptr %i.cjd, align 8, !tbaa !276
  %i.cjf = and i32 %i.cje, 255
  %i.cjg = icmp eq i32 %i.cjf, 123
  br i1 %i.cjg, label %bb.ru, label %bb.sa

bb.ru:                                            ; preds = %.lr.ph.i615
  %i.cjh = getelementptr inbounds nuw i8, ptr %.031.i616, i64 28
  %i.cji = load i8, ptr %i.cjh, align 4, !tbaa !277
  %.not28.i619 = icmp eq i8 %i.cji, 0
  br i1 %.not28.i619, label %bb.sa, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.cjj = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.cjk = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i620 = icmp slt i32 %i.cjj, %i.cjk
  br i1 %.not29.i620, label %bb.rw, label %.loopexit.sink.split

bb.rw:                                            ; preds = %bb.rv
  %i.cjl = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cjm = add nsw i32 %i.cjj, 1
  store i32 %i.cjm, ptr %i.o, align 8, !tbaa !267
  %i.cjn = sext i32 %i.cjj to i64
  %i.cjo = getelementptr inbounds [32 x i8], ptr %i.cjl, i64 %i.cjn ; 4 uses
  %i.cjp = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.cjp, ptr %i.cjo, align 8, !tbaa !278
  %i.cjq = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cjr = add nsw i64 %i.cjq, 1
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjo, i64 8
  store i64 %i.cjr, ptr %i.cjs, align 8, !tbaa !279
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjo, i64 16
  store i64 1, ptr %i.cjt, align 8, !tbaa !280
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjo, i64 24
  store ptr %.031.i616, ptr %i.cju, align 8, !tbaa !269
  %i.cjv = load i32, ptr %.031.i616, align 8, !tbaa !281 ; 3 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %.031.i616, i64 8
  %i.cjx = load i64, ptr %i.cjw, align 8, !tbaa !282 ; 2 uses
  %i.cjy = add i32 %i.cjv, -4
  %or.cond.i.i621 = icmp ult i32 %i.cjy, -3
  br i1 %or.cond.i.i621, label %.loopexit.sink.split, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.cjz = zext nneg i32 %i.cjv to i64
  %i.cka = getelementptr [16 x i8], ptr %0, i64 %i.cjz ; 2 uses
  %i.ckb = getelementptr i8, ptr %i.cka, i64 720
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !202 ; 2 uses
  %.not.i.i622 = icmp eq ptr %i.ckc, null
  br i1 %.not.i.i622, label %.loopexit.sink.split, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.ckd = getelementptr i8, ptr %i.cka, i64 728
  %i.cke = load i64, ptr %i.ckd, align 8, !tbaa !203 ; 2 uses
  %i.ckf = icmp sgt i64 %i.cjx, %i.cke
  br i1 %i.ckf, label %.loopexit.sink.split, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  store ptr %i.ckc, ptr %i.c, align 8, !tbaa !204
  store i64 %i.cke, ptr %i.s, align 8, !tbaa !205
  store i64 %i.cjx, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.cjv, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.sa:                                            ; preds = %bb.ru, %.lr.ph.i615
  %i.ckg = getelementptr inbounds nuw i8, ptr %.031.i616, i64 32 ; 2 uses
  %i.ckh = icmp ult ptr %i.ckg, %i.cjc
  br i1 %i.ckh, label %.lr.ph.i615, label %._crit_edge.i617, !llvm.loop !0

._crit_edge.i617:                                 ; preds = %bb.sa, %bb.rt, %bb.rs
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
  %i.cki = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.ckj = icmp slt i64 %i.er, %i.cki
  br i1 %i.ckj, label %bb.se, label %bb.sg

bb.se:                                            ; preds = %bb.sd
  %i.ckk = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i633 = icmp eq i8 %i.ckk, 0
  br i1 %.not21.i633, label %.loopexit.i631, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i631

bb.sg:                                            ; preds = %bb.sd
  %i.ckl = sub nsw i64 %i.er, %i.cki
  store i64 %i.ckl, ptr %i.k, align 8, !tbaa !241
  %i.ckm = load i32, ptr %i.u, align 4, !tbaa !215
  %i.ckn = icmp eq i32 %i.ckm, 7
  %.not22.i624 = icmp eq i64 %i.cki, 0
  %or.cond.i625 = or i1 %.not22.i624, %i.ckn
  br i1 %or.cond.i625, label %.loopexit.i631, label %.lr.ph.i626

.lr.ph.i626:                                      ; preds = %bb.sg
  %.pre24.i = load i16, ptr %i.ba, align 8, !tbaa !209
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sk, %.lr.ph.i626
  %i.cko = phi i16 [ %.pre24.i, %.lr.ph.i626 ], [ %i.cky, %bb.sk ] ; 2 uses
  %.in.i627 = phi i64 [ %i.cki, %.lr.ph.i626 ], [ %i.ckp, %bb.sk ]
  %.01623.i = phi ptr [ %i.ew, %.lr.ph.i626 ], [ %i.ckq, %bb.sk ]
  %i.ckp = add nsw i64 %.in.i627, -1              ; 2 uses
  %i.ckq = getelementptr inbounds i8, ptr %.01623.i, i64 -8 ; 2 uses
  %i.ckr = load i64, ptr %i.ckq, align 8, !tbaa !185 ; 2 uses
  %20 = trunc i64 %i.ckr to i16
  %.not19.i628 = icmp ugt i16 %i.cko, %20
  br i1 %.not19.i628, label %bb.sj, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.cks = load i8, ptr %i.i, align 2, !tbaa !163
  %.not20.i629 = icmp eq i8 %i.cks, 0
  br i1 %.not20.i629, label %bb.sk, label %.loopexit.sink.split

bb.sj:                                            ; preds = %bb.sh
  %i.ckt = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cku = and i64 %i.ckr, 65535
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.ckt, i64 %i.cku ; 2 uses
  %i.ckw = load i8, ptr %i.ckv, align 1, !tbaa !186
  %i.ckx = xor i8 %i.ckw, 1
  store i8 %i.ckx, ptr %i.ckv, align 1, !tbaa !186
  %.pre.i632 = load i16, ptr %i.ba, align 8, !tbaa !209
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %i.cky = phi i16 [ %i.cko, %bb.si ], [ %.pre.i632, %bb.sj ]
  %.not.i630 = icmp eq i64 %i.ckp, 0
  br i1 %.not.i630, label %.loopexit.i631, label %bb.sh, !llvm.loop !604

.loopexit.i631:                                   ; preds = %bb.sk, %bb.sg, %bb.sf, %bb.se
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.sl:                                            ; preds = %bb.f
  %i.ckz = load i32, ptr %i.u, align 4, !tbaa !215
  %i.cla = icmp eq i32 %i.ckz, 7
  br i1 %i.cla, label %Ins_SPVTL.exitthread-pre-split, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.clb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.clc = load i64, ptr %i.clb, align 8, !tbaa !185 ; 2 uses
  %i.cld = trunc i64 %i.clc to i32
  %i.cle = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.clf = trunc i64 %i.cle to i16                ; 2 uses
  %i.clg = and i32 %i.cld, 65535                  ; 2 uses
  %i.clh = load i16, ptr %i.ba, align 8, !tbaa !209 ; 2 uses
  %i.cli = zext i16 %i.clh to i32
  %.not.i634 = icmp samesign ult i32 %i.clg, %i.cli
  %.not16.i = icmp ugt i16 %i.clh, %i.clf
  %or.cond.i635 = select i1 %.not.i634, i1 %.not16.i, i1 false
  br i1 %or.cond.i635, label %.preheader.i638, label %bb.sn

.preheader.i638:                                  ; preds = %bb.sm
  %21 = trunc i64 %i.cle to i32
  %22 = and i32 %21, 65535
  %.not1720.i = icmp samesign ult i32 %i.clg, %22
  br i1 %.not1720.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i639

.lr.ph.i639:                                      ; preds = %.preheader.i638
  %i.clj = trunc i64 %i.clc to i16
  br label %bb.so

bb.sn:                                            ; preds = %bb.sm
  %i.clk = load i8, ptr %i.i, align 2, !tbaa !163
  %.not18.i636 = icmp eq i8 %i.clk, 0
  br i1 %.not18.i636, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.so:                                            ; preds = %bb.so, %.lr.ph.i639
  %.021.i = phi i16 [ %i.clf, %.lr.ph.i639 ], [ %i.clq, %bb.so ] ; 2 uses
  %i.cll = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.clm = zext i16 %.021.i to i64
  %i.cln = getelementptr inbounds nuw i8, ptr %i.cll, i64 %i.clm ; 2 uses
  %i.clo = load i8, ptr %i.cln, align 1, !tbaa !186
  %i.clp = or i8 %i.clo, 1
  store i8 %i.clp, ptr %i.cln, align 1, !tbaa !186
  %i.clq = add i16 %.021.i, 1                     ; 2 uses
  %.not17.i = icmp ugt i16 %i.clq, %i.clj
  br i1 %.not17.i, label %Ins_SPVTL.exitthread-pre-split, label %bb.so, !llvm.loop !605

bb.sp:                                            ; preds = %bb.f
  %i.clr = load i32, ptr %i.u, align 4, !tbaa !215
  %i.cls = icmp eq i32 %i.clr, 7
  br i1 %i.cls, label %Ins_SPVTL.exitthread-pre-split, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.clt = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.clu = load i64, ptr %i.clt, align 8, !tbaa !185 ; 2 uses
  %i.clv = trunc i64 %i.clu to i32
  %i.clw = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.clx = trunc i64 %i.clw to i16                ; 2 uses
  %i.cly = and i32 %i.clv, 65535                  ; 2 uses
  %i.clz = load i16, ptr %i.ba, align 8, !tbaa !209 ; 2 uses
  %i.cma = zext i16 %i.clz to i32
  %.not.i640 = icmp samesign ult i32 %i.cly, %i.cma
  %.not16.i641 = icmp ugt i16 %i.clz, %i.clx
  %or.cond.i642 = select i1 %.not.i640, i1 %.not16.i641, i1 false
  br i1 %or.cond.i642, label %.preheader.i645, label %bb.sr

.preheader.i645:                                  ; preds = %bb.sq
  %23 = trunc i64 %i.clw to i32
  %24 = and i32 %23, 65535
  %.not1720.i646 = icmp samesign ult i32 %i.cly, %24
  br i1 %.not1720.i646, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i647

.lr.ph.i647:                                      ; preds = %.preheader.i645
  %i.cmb = trunc i64 %i.clu to i16
  br label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  %i.cmc = load i8, ptr %i.i, align 2, !tbaa !163
  %.not18.i643 = icmp eq i8 %i.cmc, 0
  br i1 %.not18.i643, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ss:                                            ; preds = %bb.ss, %.lr.ph.i647
  %.021.i648 = phi i16 [ %i.clx, %.lr.ph.i647 ], [ %i.cmi, %bb.ss ] ; 2 uses
  %i.cmd = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cme = zext i16 %.021.i648 to i64
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cmd, i64 %i.cme ; 2 uses
  %i.cmg = load i8, ptr %i.cmf, align 1, !tbaa !186
  %i.cmh = and i8 %i.cmg, -2
  store i8 %i.cmh, ptr %i.cmf, align 1, !tbaa !186
  %i.cmi = add i16 %.021.i648, 1                  ; 2 uses
  %.not17.i649 = icmp ugt i16 %i.cmi, %i.cmb
  br i1 %.not17.i649, label %Ins_SPVTL.exitthread-pre-split, label %bb.ss, !llvm.loop !606

bb.st:                                            ; preds = %bb.f, %bb.f
  %i.cmj = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i650 = icmp eq ptr %i.cmj, null
  br i1 %.not.i650, label %._crit_edge.i655, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.cmk = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.cml = zext i32 %i.cmk to i64
  %.idx.i651 = shl nuw nsw i64 %i.cml, 5
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cmj, i64 %.idx.i651
  %.not40.i652 = icmp eq i32 %i.cmk, 0
  br i1 %.not40.i652, label %._crit_edge.i655, label %.lr.ph.i653

.lr.ph.i653:                                      ; preds = %bb.su, %bb.tb
  %.031.i654 = phi ptr [ %i.cnq, %bb.tb ], [ %i.cmj, %bb.su ] ; 6 uses
  %i.cmn = getelementptr inbounds nuw i8, ptr %.031.i654, i64 24
  %i.cmo = load i32, ptr %i.cmn, align 8, !tbaa !276
  %i.cmp = trunc i32 %i.cmo to i8
  %i.cmq = icmp eq i8 %i.dy, %i.cmp
  br i1 %i.cmq, label %bb.sv, label %bb.tb

bb.sv:                                            ; preds = %.lr.ph.i653
  %i.cmr = getelementptr inbounds nuw i8, ptr %.031.i654, i64 28
  %i.cms = load i8, ptr %i.cmr, align 4, !tbaa !277
  %.not28.i657 = icmp eq i8 %i.cms, 0
  br i1 %.not28.i657, label %bb.tb, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.cmt = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.cmu = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i658 = icmp slt i32 %i.cmt, %i.cmu
  br i1 %.not29.i658, label %bb.sx, label %.loopexit.sink.split

bb.sx:                                            ; preds = %bb.sw
  %i.cmv = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cmw = add nsw i32 %i.cmt, 1
  store i32 %i.cmw, ptr %i.o, align 8, !tbaa !267
  %i.cmx = sext i32 %i.cmt to i64
  %i.cmy = getelementptr inbounds [32 x i8], ptr %i.cmv, i64 %i.cmx ; 4 uses
  %i.cmz = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.cmz, ptr %i.cmy, align 8, !tbaa !278
  %i.cna = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cnb = add nsw i64 %i.cna, 1
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cmy, i64 8
  store i64 %i.cnb, ptr %i.cnc, align 8, !tbaa !279
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cmy, i64 16
  store i64 1, ptr %i.cnd, align 8, !tbaa !280
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cmy, i64 24
  store ptr %.031.i654, ptr %i.cne, align 8, !tbaa !269
  %i.cnf = load i32, ptr %.031.i654, align 8, !tbaa !281 ; 3 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %.031.i654, i64 8
  %i.cnh = load i64, ptr %i.cng, align 8, !tbaa !282 ; 2 uses
  %i.cni = add i32 %i.cnf, -4
  %or.cond.i.i659 = icmp ult i32 %i.cni, -3
  br i1 %or.cond.i.i659, label %.loopexit.sink.split, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.cnj = zext nneg i32 %i.cnf to i64
  %i.cnk = getelementptr [16 x i8], ptr %0, i64 %i.cnj ; 2 uses
  %i.cnl = getelementptr i8, ptr %i.cnk, i64 720
  %i.cnm = load ptr, ptr %i.cnl, align 8, !tbaa !202 ; 2 uses
  %.not.i.i660 = icmp eq ptr %i.cnm, null
  br i1 %.not.i.i660, label %.loopexit.sink.split, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.cnn = getelementptr i8, ptr %i.cnk, i64 728
  %i.cno = load i64, ptr %i.cnn, align 8, !tbaa !203 ; 2 uses
  %i.cnp = icmp sgt i64 %i.cnh, %i.cno
  br i1 %i.cnp, label %.loopexit.sink.split, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store ptr %i.cnm, ptr %i.c, align 8, !tbaa !204
  store i64 %i.cno, ptr %i.s, align 8, !tbaa !205
  store i64 %i.cnh, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.cnf, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.tb:                                            ; preds = %bb.sv, %.lr.ph.i653
  %i.cnq = getelementptr inbounds nuw i8, ptr %.031.i654, i64 32 ; 2 uses
  %i.cnr = icmp ult ptr %i.cnq, %i.cmm
  br i1 %i.cnr, label %.lr.ph.i653, label %._crit_edge.i655, !llvm.loop !0

._crit_edge.i655:                                 ; preds = %bb.tb, %bb.su, %bb.st
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.tc:                                            ; preds = %bb.f
  %.val329 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 8 uses
  %i.cns = trunc i64 %.val329 to i32
  %i.cnt = and i32 %i.cns, 255                    ; 2 uses
  %trunc.i = trunc i64 %.val329 to i8
  switch i8 %trunc.i, label %bb.te [
    i8 -1, label %.sink.split.i662
    i8 0, label %bb.td
  ]

bb.td:                                            ; preds = %bb.tc
  br label %.sink.split.i662

bb.te:                                            ; preds = %bb.tc
  %i.cnu = and i64 %.val329, 256
  %.not.i664 = icmp eq i64 %i.cnu, 0
  br i1 %.not.i664, label %bb.th, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.cnv = load i16, ptr %i.ay, align 8, !tbaa !311
  %i.cnw = zext i16 %i.cnv to i32
  %.not24.i665 = icmp samesign ult i32 %i.cnt, %i.cnw
  br i1 %.not24.i665, label %bb.th, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  store i8 1, ptr %i.az, align 2, !tbaa !213
  br label %bb.th

bb.th:                                            ; preds = %bb.tg, %bb.tf, %bb.te
  %i.cnx = and i64 %.val329, 512
  %.not25.i666 = icmp eq i64 %i.cnx, 0
  br i1 %.not25.i666, label %bb.tk, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.cny = load i8, ptr %i.z, align 2, !tbaa !638
  %.not26.i667 = icmp eq i8 %i.cny, 0
  br i1 %.not26.i667, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  store i8 1, ptr %i.az, align 2, !tbaa !213
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.ti, %bb.th
  %i.cnz = and i64 %.val329, 1024
  %.not27.i668 = icmp eq i64 %i.cnz, 0
  br i1 %.not27.i668, label %bb.tn, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  %i.coa = load i8, ptr %i.aa, align 1, !tbaa !639
  %.not28.i669 = icmp eq i8 %i.coa, 0
  br i1 %.not28.i669, label %bb.tn, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  store i8 1, ptr %i.az, align 2, !tbaa !213
  br label %bb.tn

bb.tn:                                            ; preds = %bb.tm, %bb.tl, %bb.tk
  %i.cob = and i64 %.val329, 2048
  %.not29.i670 = icmp eq i64 %i.cob, 0
  br i1 %.not29.i670, label %bb.tq, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.coc = load i16, ptr %i.ay, align 8, !tbaa !311
  %i.cod = zext i16 %i.coc to i32
  %i.coe = icmp samesign ult i32 %i.cnt, %i.cod
  br i1 %i.coe, label %bb.tp, label %bb.tq

bb.tp:                                            ; preds = %bb.to
  store i8 0, ptr %i.az, align 2, !tbaa !213
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to, %bb.tn
  %i.cof = and i64 %.val329, 4096
  %.not30.i671 = icmp eq i64 %i.cof, 0
  br i1 %.not30.i671, label %bb.tt, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.cog = load i8, ptr %i.z, align 2, !tbaa !638
  %.not31.i672 = icmp eq i8 %i.cog, 0
  br i1 %.not31.i672, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  store i8 0, ptr %i.az, align 2, !tbaa !213
  br label %bb.tt

bb.tt:                                            ; preds = %bb.ts, %bb.tr, %bb.tq
  %i.coh = and i64 %.val329, 8192
  %.not32.i673 = icmp eq i64 %i.coh, 0
  br i1 %.not32.i673, label %Ins_SPVTL.exitthread-pre-split, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.coi = load i8, ptr %i.aa, align 1, !tbaa !639
  %.not33.i = icmp eq i8 %i.coi, 0
  br i1 %.not33.i, label %Ins_SPVTL.exitthread-pre-split, label %.sink.split.i662

.sink.split.i662:                                 ; preds = %bb.tu, %bb.td, %bb.tc
  %.sink.i663 = phi i8 [ 1, %bb.tc ], [ 0, %bb.td ], [ 0, %bb.tu ]
  store i8 %.sink.i663, ptr %i.az, align 2, !tbaa !213
  br label %Ins_SPVTL.exitthread-pre-split

bb.tv:                                            ; preds = %bb.f, %bb.f
  %i.coj = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.cok = load i16, ptr %i.ad, align 8, !tbaa !255
  %25 = trunc i64 %i.coj to i16
  %.not.i674 = icmp ugt i16 %i.cok, %25
  br i1 %.not.i674, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %bb.tv
  %i.col = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.com = load i64, ptr %i.col, align 8, !tbaa !185 ; 2 uses
  %i.con = load i16, ptr %i.ae, align 8, !tbaa !617
  %26 = trunc i64 %i.com to i16
  %.not52.i676 = icmp ugt i16 %i.con, %26
  br i1 %.not52.i676, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  %i.coo = load i8, ptr %i.i, align 2, !tbaa !163
  %.not55.i675 = icmp eq i8 %i.coo, 0
  br i1 %.not55.i675, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ty:                                            ; preds = %bb.tw
  %i.cop = load ptr, ptr %i.af, align 8, !tbaa !295
  %i.coq = and i64 %i.coj, 65535                  ; 2 uses
  %i.cor = getelementptr inbounds nuw [16 x i8], ptr %i.cop, i64 %i.coq ; 2 uses
  %i.cos = load ptr, ptr %i.ag, align 8, !tbaa !636
  %i.cot = and i64 %i.com, 65535                  ; 2 uses
  %i.cou = getelementptr inbounds nuw [16 x i8], ptr %i.cos, i64 %i.cot ; 2 uses
  %i.cov = load i64, ptr %i.cor, align 8, !tbaa !230 ; 2 uses
  %i.cow = load i64, ptr %i.cou, align 8, !tbaa !230 ; 2 uses
  %i.cox = sub i64 %i.cov, %i.cow
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cor, i64 8
  %i.coz = load i64, ptr %i.coy, align 8, !tbaa !257 ; 2 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.cou, i64 8
  %i.cpb = load i64, ptr %i.cpa, align 8, !tbaa !257 ; 2 uses
  %i.cpc = sub i64 %i.coz, %i.cpb                 ; 2 uses
  %i.cpd = icmp eq i64 %i.cov, %i.cow
  %i.cpe = icmp eq i64 %i.coz, %i.cpb
  %or.cond.i677 = select i1 %i.cpd, i1 %i.cpe, i1 false ; 2 uses
  %spec.select.i678 = select i1 %or.cond.i677, i64 16384, i64 %i.cox ; 2 uses
  %i.cpf = and i8 %i.dy, 1
  %.not5362.i = icmp eq i8 %i.cpf, 0
  %.not53.i679 = or i1 %.not5362.i, %or.cond.i677 ; 3 uses
  %i.cpg = sub i64 0, %i.cpc
  %.149.i = select i1 %.not53.i679, i64 %spec.select.i678, i64 %i.cpg ; 2 uses
  %.046.i = select i1 %.not53.i679, i64 %i.cpc, i64 %spec.select.i678 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cph = or i64 %.046.i, %.149.i
  %or.cond.i.i680 = icmp eq i64 %i.cph, 0
  br i1 %or.cond.i.i680, label %Normalize.exit.i681, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  store i64 %.149.i, ptr %2, align 8, !tbaa !230
  store i64 %.046.i, ptr %i.ai, align 8, !tbaa !257
  %i.cpi = call i32 @FT_Vector_NormLen(ptr noundef nonnull %2) #21 ; 0 uses
  %i.cpj = load i64, ptr %2, align 8, !tbaa !230
  %i.cpk = sdiv i64 %i.cpj, 4
  %i.cpl = trunc i64 %i.cpk to i16
  store i16 %i.cpl, ptr %i.ah, align 4, !tbaa !619
  %i.cpm = load i64, ptr %i.ai, align 8, !tbaa !257
  %i.cpn = sdiv i64 %i.cpm, 4
  %i.cpo = trunc i64 %i.cpn to i16
  store i16 %i.cpo, ptr %i.aj, align 2, !tbaa !620
  br label %Normalize.exit.i681

Normalize.exit.i681:                              ; preds = %bb.tz, %bb.ty
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.cpp = load ptr, ptr %i.ak, align 8, !tbaa !256
  %i.cpq = getelementptr inbounds nuw [16 x i8], ptr %i.cpp, i64 %i.coq ; 2 uses
  %i.cpr = load ptr, ptr %i.al, align 8, !tbaa !618
  %i.cps = getelementptr inbounds nuw [16 x i8], ptr %i.cpr, i64 %i.cot ; 2 uses
  %i.cpt = load i64, ptr %i.cpq, align 8, !tbaa !230 ; 2 uses
  %i.cpu = load i64, ptr %i.cps, align 8, !tbaa !230 ; 2 uses
  %i.cpv = sub i64 %i.cpt, %i.cpu
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpq, i64 8
  %i.cpx = load i64, ptr %i.cpw, align 8, !tbaa !257 ; 2 uses
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cps, i64 8
  %i.cpz = load i64, ptr %i.cpy, align 8, !tbaa !257 ; 2 uses
  %i.cqa = sub i64 %i.cpx, %i.cpz                 ; 2 uses
  %i.cqb = icmp eq i64 %i.cpt, %i.cpu
  %i.cqc = icmp eq i64 %i.cpx, %i.cpz
  %or.cond3.i = select i1 %i.cqb, i1 %i.cqc, i1 false ; 2 uses
  %.2.i682 = select i1 %or.cond3.i, i64 16384, i64 %i.cpv ; 2 uses
  %.not54.i = or i1 %.not53.i679, %or.cond3.i     ; 2 uses
  %i.cqd = sub i64 0, %i.cqa
  %.3.i683 = select i1 %.not54.i, i64 %.2.i682, i64 %i.cqd ; 2 uses
  %.147.i = select i1 %.not54.i, i64 %i.cqa, i64 %.2.i682 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.cqe = or i64 %.147.i, %.3.i683
  %or.cond.i57.i = icmp eq i64 %i.cqe, 0
  br i1 %or.cond.i57.i, label %Normalize.exit.Normalize.exit58_crit_edge.i, label %bb.ua

Normalize.exit.Normalize.exit58_crit_edge.i:      ; preds = %Normalize.exit.i681
  %.pre.i688 = load i16, ptr %i.am, align 8, !tbaa !242
  %.pre61.i = load i16, ptr %i.ao, align 2, !tbaa !243
  br label %Normalize.exit58.i

bb.ua:                                            ; preds = %Normalize.exit.i681
  store i64 %.3.i683, ptr %1, align 8, !tbaa !230
  store i64 %.147.i, ptr %i.an, align 8, !tbaa !257
  %i.cqf = call i32 @FT_Vector_NormLen(ptr noundef nonnull %1) #21 ; 0 uses
  %i.cqg = load i64, ptr %1, align 8, !tbaa !230
  %i.cqh = sdiv i64 %i.cqg, 4
  %i.cqi = trunc i64 %i.cqh to i16                ; 2 uses
  store i16 %i.cqi, ptr %i.am, align 8, !tbaa !619
  %i.cqj = load i64, ptr %i.an, align 8, !tbaa !257
  %i.cqk = sdiv i64 %i.cqj, 4
  %i.cql = trunc i64 %i.cqk to i16                ; 2 uses
  store i16 %i.cql, ptr %i.ao, align 2, !tbaa !620
  br label %Normalize.exit58.i

Normalize.exit58.i:                               ; preds = %bb.ua, %Normalize.exit.Normalize.exit58_crit_edge.i
  %i.cqm = phi i16 [ %.pre61.i, %Normalize.exit.Normalize.exit58_crit_edge.i ], [ %i.cql, %bb.ua ] ; 2 uses
  %i.cqn = phi i16 [ %.pre.i688, %Normalize.exit.Normalize.exit58_crit_edge.i ], [ %i.cqi, %bb.ua ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.cqo = sext i16 %i.cqn to i64
  %i.cqp = sext i16 %i.cqm to i64
  %i.cqq = load <2 x i16>, ptr %i.ap, align 4, !tbaa !128 ; 3 uses
  %i.cqr = extractelement <2 x i16> %i.cqq, i64 0 ; 2 uses
  %i.cqs = sext i16 %i.cqr to i64                 ; 2 uses
  %i.cqt = mul nsw i64 %i.cqs, %i.cqo
  %i.cqu = extractelement <2 x i16> %i.cqq, i64 1 ; 2 uses
  %i.cqv = sext i16 %i.cqu to i64                 ; 2 uses
  %i.cqw = mul nsw i64 %i.cqv, %i.cqp
  %i.cqx = add nsw i64 %i.cqt, 8192
  %i.cqy = add nsw i64 %i.cqx, %i.cqw
  %i.cqz = ashr i64 %i.cqy, 14                    ; 4 uses
  %i.cra = icmp sgt i64 %i.cqz, 16381
  br i1 %i.cra, label %bb.ue, label %bb.ub

bb.ub:                                            ; preds = %Normalize.exit58.i
  %i.crb = add nsw i64 %i.cqz, 1023
  %or.cond.i59.i = icmp ult i64 %i.crb, 2047
  br i1 %or.cond.i59.i, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %.critedge.i.i684

bb.ud:                                            ; preds = %bb.ub
  %i.crc = shl nsw i64 %i.cqs, 16
  %i.crd = sdiv i64 %i.crc, %i.cqz
  store i64 %i.crd, ptr %i.ar, align 8, !tbaa !248
  %i.cre = shl nsw i64 %i.cqv, 16
  %i.crf = sdiv i64 %i.cre, %i.cqz
  store i64 %i.crf, ptr %i.as, align 8, !tbaa !249
  br label %.critedge.i.i684

bb.ue:                                            ; preds = %Normalize.exit58.i
  %i.crg = sext <2 x i16> %i.cqq to <2 x i32>
  %i.crh = shl nsw <2 x i32> %i.crg, splat (i32 2)
  %i.cri = sext <2 x i32> %i.crh to <2 x i64>
  store <2 x i64> %i.cri, ptr %i.ar, align 8, !tbaa !185
  %i.crj = icmp eq i16 %i.cqr, 16384
  br i1 %i.crj, label %bb.ug, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.crk = icmp eq i16 %i.cqu, 16384
  br i1 %i.crk, label %bb.ug, label %.critedge.i.i684

.critedge.i.i684:                                 ; preds = %bb.uf, %bb.ud, %bb.uc
  br label %bb.ug

bb.ug:                                            ; preds = %.critedge.i.i684, %bb.uf, %bb.ue
  %Direct_Move_Y.sink.i.i685 = phi ptr [ @Direct_Move_X, %bb.ue ], [ @Direct_Move, %.critedge.i.i684 ], [ @Direct_Move_Y, %bb.uf ]
  %Direct_Move_Orig_Y.sink.i.i686 = phi ptr [ @Direct_Move_Orig_X, %bb.ue ], [ @Direct_Move_Orig, %.critedge.i.i684 ], [ @Direct_Move_Orig_Y, %bb.uf ]
  store ptr %Direct_Move_Y.sink.i.i685, ptr %i.at, align 8, !tbaa !250
  store ptr %Direct_Move_Orig_Y.sink.i.i686, ptr %i.au, align 8, !tbaa !251
  %i.crl = icmp eq i16 %i.cqn, 16384
  %i.crm = icmp eq i16 %i.cqm, 16384
  %Project_y.Project1253 = select i1 %i.crm, ptr @Project_y, ptr @Project
  %Project.sink1242 = select i1 %i.crl, ptr @Project_x, ptr %Project_y.Project1253
  store ptr %Project.sink1242, ptr %i.av, align 8, !tbaa !252
  %i.crn = load i16, ptr %i.ah, align 4, !tbaa !244
  %i.cro = icmp eq i16 %i.crn, 16384
  br i1 %i.cro, label %Compute_Funcs.exit.i687, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.crp = load i16, ptr %i.aj, align 2, !tbaa !245
  %i.crq = icmp eq i16 %i.crp, 16384
  %Project_y.Dual_Project1254 = select i1 %i.crq, ptr @Project_y, ptr @Dual_Project
  br label %Compute_Funcs.exit.i687

Compute_Funcs.exit.i687:                          ; preds = %bb.uh, %bb.ug
  %Dual_Project.sink1243 = phi ptr [ @Project_x, %bb.ug ], [ %Project_y.Dual_Project1254, %bb.uh ]
  store ptr %Dual_Project.sink1243, ptr %i.aw, align 8, !tbaa !253
  store i64 0, ptr %i.ax, align 8, !tbaa !254
  br label %Ins_SPVTL.exitthread-pre-split

bb.ui:                                            ; preds = %bb.f
  %i.crr = load i64, ptr %i.ew, align 8, !tbaa !185 ; 8 uses
  %i.crs = and i64 %i.crr, 1
  %.not.i690 = icmp eq i64 %i.crs, 0
  br i1 %.not.i690, label %bb.uk, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.crt = load ptr, ptr %0, align 8, !tbaa !189
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crt, i64 176
  %i.crv = load ptr, ptr %i.cru, align 8, !tbaa !43
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 112
  %i.crx = load i32, ptr %i.crw, align 8, !tbaa !28
  %i.cry = zext i32 %i.crx to i64
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %.0.i691 = phi i64 [ %i.cry, %bb.uj ], [ 0, %bb.ui ] ; 3 uses
  %i.crz = and i64 %i.crr, 2
  %.not34.i = icmp eq i64 %i.crz, 0
  br i1 %.not34.i, label %bb.um, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.csa = load i8, ptr %i.z, align 2, !tbaa !638
  %.not35.i692 = icmp eq i8 %i.csa, 0
  %i.csb = or i64 %.0.i691, 256
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
