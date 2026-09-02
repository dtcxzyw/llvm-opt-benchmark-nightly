Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_h266?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 33
begin_hunk_0_@cbs_h266_read_sps:bb.a
  %i.pd = ashr i32 %.neg2812, %i.hd
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %indvars.iv ; 4 uses
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !56
  %i.pg = zext i16 %i.pf to i32
  %i.ph = add nsw i32 %i.pa, %i.pg
  %i.pi = sub nsw i32 0, %i.ph
  %spec.select1961 = call i32 @llvm.smax.i32(i32 %i.pi, i32 0)
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %indvars.iv ; 3 uses
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !56
  %i.pl = zext i16 %i.pk to i32
  %i.pm = add nsw i32 %i.pc, %i.pl
  %i.pn = sub nsw i32 0, %i.pm
  %i.po = call i32 @llvm.smax.i32(i32 %i.pn, i32 0)
  %i.pp = icmp ult i32 %i.he, %i.on
  br i1 %i.pp, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.pq = load i16, ptr %i.nw, align 8, !tbaa !246
  %i.pr = zext i16 %i.pq to i32
  %i.ps = mul nuw nsw i32 %i.pr, %i.nx
  %.neg = sub nsw i32 %i.ps, %i.on
  %i.pt = ashr i32 %.neg, %i.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #10
  store i32 1, ptr %i.ad, align 4, !tbaa !35
  %i.pu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.pu, ptr %i.oc, align 4, !tbaa !35
  %i.pv = xor i32 %i.pt, -1
  %i.pw = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.lu, ptr noundef nonnull @.str.196, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac, i32 noundef 0, i32 noundef %i.pv) #10 ; 2 uses
  %i.px = icmp sgt i32 %i.pw, -1
  br i1 %i.px, label %.thread2041, label %bb.bt

.thread2041:                                      ; preds = %bb.bs
  %i.py = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.pz = trunc i32 %i.py to i16                  ; 2 uses
  store i16 %i.pz, ptr %i.pe, align 2, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #10
  %.pre = load i16, ptr %i.io, align 2, !tbaa !236
  %.pre2554 = zext i16 %.pre to i32
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #10
  br label %.thread1974

bb.bu:                                            ; preds = %bb.br
  store i16 0, ptr %i.pe, align 2, !tbaa !56
  br label %bb.bv

bb.bv:                                            ; preds = %.thread2041, %bb.bu
  %.pre-phi = phi i32 [ %.pre2554, %.thread2041 ], [ %i.op, %bb.bu ]
  %i.qa = phi i16 [ %i.pz, %.thread2041 ], [ 0, %bb.bu ]
  %i.qb = icmp ult i32 %i.he, %.pre-phi
  br i1 %i.qb, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #10
  store i32 1, ptr %i.af, align 4, !tbaa !35
  %i.qc = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.qc, ptr %i.od, align 4, !tbaa !35
  %i.qd = xor i32 %i.pd, -1
  %i.qe = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.mf, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ae, i32 noundef 0, i32 noundef %i.qd) #10 ; 2 uses
  %i.qf = icmp sgt i32 %i.qe, -1
  br i1 %i.qf, label %.thread2043, label %bb.bx

.thread2043:                                      ; preds = %bb.bw
  %i.qg = load i32, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  %i.qh = trunc i32 %i.qg to i16
  store i16 %i.qh, ptr %i.pj, align 2, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #10
  %.pre2545 = load i16, ptr %i.pe, align 2, !tbaa !56
  %i.qi = and i32 %i.qg, 65535
  %i.qj = xor i32 %i.qi, -1
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #10
  br label %.thread1974

bb.by:                                            ; preds = %bb.bv
  store i16 0, ptr %i.pj, align 2, !tbaa !56
  br label %bb.bz

bb.bz:                                            ; preds = %.thread2043, %bb.by
  %i.qk = phi i32 [ %i.qj, %.thread2043 ], [ -1, %bb.by ]
  %i.ql = phi i16 [ %.pre2545, %.thread2043 ], [ %i.qa, %bb.by ]
  %i.qm = zext i16 %i.ql to i32
  %i.qn = xor i32 %i.qm, -1
  %i.qo = sub nsw i32 %i.qn, %i.ke                ; 2 uses
  %i.qp = sub nsw i32 %i.qk, %i.kj                ; 2 uses
  %i.qq = load i16, ptr %i.kz, align 8, !tbaa !86
  %i.qr = zext i16 %i.qq to i64                   ; 2 uses
  %i.qs = icmp samesign ult i64 %indvars.iv, %i.qr
  br i1 %i.qs, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.qt = load i16, ptr %i.ij, align 8, !tbaa !235
  %i.qu = zext i16 %i.qt to i32
  %i.qv = icmp ult i32 %i.he, %i.qu
  br i1 %i.qv, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #10
  store i32 1, ptr %i.ah, align 4, !tbaa !35
  %i.qw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.qw, ptr %i.oe, align 4, !tbaa !35
  %i.qx = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.lu, ptr noundef nonnull @.str.198, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ag, i32 noundef %spec.select1961, i32 noundef %i.qo) #10 ; 2 uses
  %i.qy = icmp sgt i32 %i.qx, -1
  br i1 %i.qy, label %.thread2045, label %bb.cc

.thread2045:                                      ; preds = %bb.cb
  %i.qz = load i32, ptr %i.ag, align 4, !tbaa !35
  %i.ra = trunc i32 %i.qz to i16
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.nu, i64 %indvars.iv
  store i16 %i.ra, ptr %i.rb, align 2, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #10
  %.pre2546 = load i16, ptr %i.kz, align 8, !tbaa !86
  %.pre2557 = zext i16 %.pre2546 to i64
  br label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #10
  br label %.thread1974

bb.cd:                                            ; preds = %bb.bz, %bb.ca
  %i.rc = trunc i32 %i.qo to i16
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.nu, i64 %indvars.iv
  store i16 %i.rc, ptr %i.rd, align 2, !tbaa !56
  br label %bb.ce

bb.ce:                                            ; preds = %.thread2045, %bb.cd
  %.pre-phi2558 = phi i64 [ %.pre2557, %.thread2045 ], [ %i.qr, %bb.cd ]
  %i.re = icmp samesign ult i64 %indvars.iv, %.pre-phi2558
  br i1 %i.re, label %bb.cf, label %.thread2051

bb.cf:                                            ; preds = %bb.ce
  %i.rf = load i16, ptr %i.io, align 2, !tbaa !236
  %i.rg = zext i16 %i.rf to i32
  %i.rh = icmp ult i32 %i.he, %i.rg
  br i1 %i.rh, label %bb.cg, label %.thread2051

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #10
  store i32 1, ptr %i.aj, align 4, !tbaa !35
  %i.ri = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ri, ptr %i.of, align 4, !tbaa !35
  %i.rj = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.mf, ptr noundef nonnull @.str.199, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ai, i32 noundef %i.po, i32 noundef %i.qp) #10 ; 2 uses
  %i.rk = icmp sgt i32 %i.rj, -1
  br i1 %i.rk, label %.thread2054, label %bb.ch

.thread2054:                                      ; preds = %bb.cg
  %i.rl = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.rm = trunc i32 %i.rl to i16
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #10
  br label %bb.cm

.thread2051:                                      ; preds = %bb.cf, %bb.ce
  %i.ro = trunc i32 %i.qp to i16
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !56
  br label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #10
  br label %.thread1974

bb.ci:                                            ; preds = %bb.bq
  %i.rq = load i16, ptr %i.nu, align 4, !tbaa !56
  %i.rr = zext i16 %i.rq to i32
  %i.rs = add nuw nsw i32 %i.rr, 1                ; 3 uses
  %i.rt = udiv i32 %i.kf, %i.rs                   ; 3 uses
  %i.ru = urem i32 %i.kf, %i.rs
  %.not1903 = icmp eq i32 %i.ru, 0
  br i1 %.not1903, label %bb.cj, label %.thread1974

bb.cj:                                            ; preds = %bb.ci
  %i.rv = load i16, ptr %i.nv, align 4, !tbaa !56
  %i.rw = zext i16 %i.rv to i32
  %i.rx = add nuw nsw i32 %i.rw, 1                ; 2 uses
  %i.ry = urem i32 %i.kk, %i.rx
  %.not1904 = icmp eq i32 %i.ry, 0
  br i1 %.not1904, label %bb.ck, label %.thread1974

bb.ck:                                            ; preds = %bb.cj
  %i.rz = mul i32 %i.rt, %i.kk
  %i.sa = udiv i32 %i.rz, %i.rx
  %i.sb = add i32 %i.sa, -1
  %.not1905 = icmp eq i32 %i.sb, %i.ok
  br i1 %.not1905, label %bb.cl, label %.thread1974

bb.cl:                                            ; preds = %bb.ck
  %i.sc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.sd = srem i32 %i.sc, %i.rt
  %i.se = mul nuw nsw i32 %i.sd, %i.rs
  %i.sf = trunc i32 %i.se to i16
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %indvars.iv
  store i16 %i.sf, ptr %i.sg, align 2, !tbaa !56
  %i.sh = sdiv i32 %i.sc, %i.rt
  %i.si = load i16, ptr %i.nv, align 4, !tbaa !56
  %3 = zext i16 %i.si to i32
  %4 = add nuw nsw i32 %3, 1
  %5 = mul nsw i32 %4, %i.sh
  %6 = trunc i32 %5 to i16
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %indvars.iv
  store i16 %6, ptr %i.sj, align 2, !tbaa !56
  %i.sk = load i16, ptr %i.nu, align 4, !tbaa !56
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.nu, i64 %indvars.iv
  store i16 %i.sk, ptr %i.sl, align 2, !tbaa !56
  %i.sm = load i16, ptr %i.nv, align 4, !tbaa !56
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv
  store i16 %i.sm, ptr %i.sn, align 2, !tbaa !56
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread2054, %.thread2051
  %i.so = load i8, ptr %i.le, align 2, !tbaa !300
  %.not1906 = icmp eq i8 %i.so, 0
  br i1 %.not1906, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #10
  store i32 1, ptr %i.al, align 4, !tbaa !35
  %i.sp = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.sp, ptr %i.oi, align 4, !tbaa !35
  %i.sq = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.200, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ak, i32 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.sr = icmp sgt i32 %i.sq, -1
  br i1 %i.sr, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #10
  br label %.thread1974

bb.cp:                                            ; preds = %bb.cn
  %i.ss = load i32, ptr %i.ak, align 4, !tbaa !35
  %i.st = trunc i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv
  store i8 %i.st, ptr %i.su, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #10
  store i32 1, ptr %i.an, align 4, !tbaa !35
  store i32 %i.sp, ptr %i.oj, align 4, !tbaa !35
  %i.sv = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.201, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am, i32 noundef 0, i32 noundef 1) #10 ; 2 uses
  %i.sw = icmp sgt i32 %i.sv, -1
  br i1 %i.sw, label %.thread2063, label %bb.cq

.thread2063:                                      ; preds = %bb.cp
  %i.sx = load i32, ptr %i.am, align 4, !tbaa !35
  %i.sy = trunc i32 %i.sx to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #10
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #10
  br label %.thread1974

bb.cr:                                            ; preds = %bb.cm
  %i.ta = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv
  store i8 1, ptr %i.ta, align 1, !tbaa !20
  %i.tb = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv
  store i8 0, ptr %i.tb, align 1, !tbaa !20
  br label %bb.cs

bb.cs:                                            ; preds = %.thread2063, %bb.cr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.tc = load i16, ptr %i.kz, align 8, !tbaa !86 ; 2 uses
  %i.td = zext i16 %i.tc to i64
  %.not1901.not = icmp samesign ult i64 %indvars.iv, %i.td
  br i1 %.not1901.not, label %bb.bq, label %.loopexit2400, !llvm.loop !745

.thread2030:                                      ; preds = %bb.av, %bb.ba
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 1412
  store i16 0, ptr %i.te, align 4, !tbaa !56
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 3412
  store i16 0, ptr %i.tf, align 4, !tbaa !56
  %i.tg = trunc i32 %i.kl to i16
  %i.th = getelementptr inbounds nuw i8, ptr %2, i64 5412
  store i16 %i.tg, ptr %i.th, align 4, !tbaa !56
  %i.ti = trunc i32 %i.km to i16
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 7412
  store i16 %i.ti, ptr %i.tj, align 4, !tbaa !56
  br label %.loopexit2400

.loopexit2400:                                    ; preds = %bb.cs, %bb.bp, %.thread2030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #10
  %i.tk = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.202, ptr noundef null, ptr noundef nonnull %i.ao, i32 noundef 0, i32 noundef 15) #10 ; 2 uses
  %i.tl = icmp sgt i32 %i.tk, -1
  br i1 %i.tl, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.loopexit2400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #10
  br label %.thread1974

bb.cu:                                            ; preds = %.loopexit2400
  %i.tm = load i32, ptr %i.ao, align 4, !tbaa !35 ; 2 uses
  %i.tn = trunc i32 %i.tm to i8
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 11412 ; 2 uses
  store i8 %i.tn, ptr %i.to, align 4, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #10
  %i.tp = and i32 %i.tm, 255                      ; 2 uses
  %i.tq = shl nuw i32 2, %i.tp
  %i.tr = load i16, ptr %i.kz, align 8, !tbaa !86
  %i.ts = zext i16 %i.tr to i32
  %.not1907 = icmp sgt i32 %i.tq, %i.ts
  br i1 %.not1907, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tt = load ptr, ptr %0, align 8, !tbaa !28
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.tt, i32 noundef 16, ptr noundef nonnull @.str.203, i32 noundef %i.tp) #10
  br label %.thread1974

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #10
  %i.tu = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.204, ptr noundef nonnull %i.ap) #10 ; 2 uses
  %i.tv = icmp sgt i32 %i.tu, -1
  br i1 %i.tv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #10
  br label %.thread1974

bb.cy:                                            ; preds = %bb.cw
  %i.tw = load i32, ptr %i.ap, align 4, !tbaa !35
  %i.tx = trunc i32 %i.tw to i8                   ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %2, i64 11413
  store i8 %i.tx, ptr %i.ty, align 1, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #10
  %.not1908 = icmp eq i8 %i.tx, 0
  br i1 %.not1908, label %.loopexit2399, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #10
  %i.tz = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.aq) #10 ; 2 uses
  %i.ua = icmp sgt i32 %i.tz, -1
  br i1 %i.ua, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #10
  br label %.thread1974

bb.db:                                            ; preds = %bb.cz
  %i.ub = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.uc = trunc i32 %i.ub to i8                   ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 11414
  store i8 %i.uc, ptr %i.ud, align 2, !tbaa !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #10
  %.not1909 = icmp eq i8 %i.uc, 0
  br i1 %.not1909, label %.loopexit2399, label %.preheader

.preheader:                                       ; preds = %bb.db
  %i.ue = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.uf = getelementptr inbounds nuw i8, ptr %2, i64 11416
  br label %bb.dc

bb.dc:                                            ; preds = %.preheader, %bb.de
  %indvars.iv2510 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next2511, %bb.de ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #10
  %i.ug = load i8, ptr %i.to, align 4, !tbaa !84  ; 2 uses
  %i.uh = zext i8 %i.ug to i32
  %i.ui = add nuw nsw i32 %i.uh, 1
  store i32 1, ptr %i.as, align 4, !tbaa !35
  %i.uj = trunc nuw nsw i64 %indvars.iv2510 to i32
  store i32 %i.uj, ptr %i.ue, align 4, !tbaa !35
  %i.uk = zext nneg i8 %i.ug to i64
  %i.ul = shl nuw i64 2, %i.uk
  %i.um = trunc i64 %i.ul to i32
  %i.un = add i32 %i.um, -1
  %i.uo = call i32 @ff_cbs_read_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ui, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ar, i32 noundef 0, i32 noundef %i.un) #10 ; 2 uses
  %i.up = icmp sgt i32 %i.uo, -1
  br i1 %i.up, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #10
  br label %.thread1974

bb.de:                                            ; preds = %bb.dc
  %i.uq = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv2510
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #10
  %indvars.iv.next2511 = add nuw nsw i64 %indvars.iv2510, 1
  %i.us = load i16, ptr %i.kz, align 8, !tbaa !86
  %i.ut = zext i16 %i.us to i64
  %.not1910.not = icmp samesign ult i64 %indvars.iv2510, %i.ut
  br i1 %.not1910.not, label %bb.dc, label %.loopexit2399, !llvm.loop !746

bb.df:                                            ; preds = %bb.as
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 1408
  store i16 0, ptr %i.uu, align 8, !tbaa !86
  %i.uv = getelementptr inbounds nuw i8, ptr %2, i64 1410
  store i8 1, ptr %i.uv, align 2, !tbaa !300
  %i.uw = getelementptr inbounds nuw i8, ptr %2, i64 1411
  store i8 0, ptr %i.uw, align 1, !tbaa !301
  %i.ux = getelementptr inbounds nuw i8, ptr %2, i64 11413
  store i8 0, ptr %i.ux, align 1, !tbaa !260
  %i.uy = getelementptr inbounds nuw i8, ptr %2, i64 1412
  store i16 0, ptr %i.uy, align 4, !tbaa !56
  %i.uz = getelementptr inbounds nuw i8, ptr %2, i64 3412
  store i16 0, ptr %i.uz, align 4, !tbaa !56
  %i.va = trunc i32 %i.kl to i16
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 5412
  store i16 %i.va, ptr %i.vb, align 4, !tbaa !56
  %i.vc = trunc i32 %i.km to i16
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 7412
  store i16 %i.vc, ptr %i.vd, align 4, !tbaa !56
end_hunk_0
