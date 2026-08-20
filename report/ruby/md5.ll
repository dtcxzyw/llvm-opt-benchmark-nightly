inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@md5_process:bb.a
  %i.rn = add i32 %i.rm, %i.qk
  %i.ro = add i32 %i.rn, %i.rl                    ; 2 uses
  %i.rp = tail call i32 @llvm.fshl.i32(i32 %i.ro, i32 %i.ro, i32 6)
  %i.rq = add i32 %i.rp, %i.ri                    ; 5 uses
  %i.rr = xor i32 %i.ra, -1
  %i.rs = or i32 %i.rq, %i.rr
  %i.rt = xor i32 %i.rs, %i.ri
  %i.ru = add i32 %.0.sroa.phi598.sroa.speculated, -30611744
  %i.rv = add i32 %i.ru, %i.qs
  %i.rw = add i32 %i.rv, %i.rt                    ; 2 uses
  %i.rx = tail call i32 @llvm.fshl.i32(i32 %i.rw, i32 %i.rw, i32 10)
  %i.ry = add i32 %i.rx, %i.rq                    ; 5 uses
  %i.rz = xor i32 %i.ri, -1
  %i.sa = or i32 %i.ry, %i.rz
  %i.sb = xor i32 %i.sa, %i.rq
  %i.sc = add i32 %i.o, -1560198380
  %i.sd = add i32 %i.sc, %i.ra
  %i.se = add i32 %i.sd, %i.sb                    ; 2 uses
  %i.sf = tail call i32 @llvm.fshl.i32(i32 %i.se, i32 %i.se, i32 15)
  %i.sg = add i32 %i.sf, %i.ry                    ; 5 uses
  %i.sh = xor i32 %i.rq, -1
  %i.si = or i32 %i.sg, %i.sh
  %i.sj = xor i32 %i.si, %i.ry
  %i.sk = add i32 %.0.sroa.phi592.sroa.speculated, 1309151649
  %i.sl = add i32 %i.sk, %i.ri
  %i.sm = add i32 %i.sl, %i.sj                    ; 2 uses
  %i.sn = tail call i32 @llvm.fshl.i32(i32 %i.sm, i32 %i.sm, i32 21)
  %i.so = add i32 %i.sn, %i.sg                    ; 5 uses
  %i.sp = xor i32 %i.ry, -1
  %i.sq = or i32 %i.so, %i.sp
  %i.sr = xor i32 %i.sq, %i.sg
  %i.ss = add i32 %i.m, -145523070
  %i.st = add i32 %i.ss, %i.rq
  %i.su = add i32 %i.st, %i.sr                    ; 2 uses
  %i.sv = tail call i32 @llvm.fshl.i32(i32 %i.su, i32 %i.su, i32 6)
  %i.sw = add i32 %i.sv, %i.so                    ; 5 uses
  %i.sx = xor i32 %i.sg, -1
  %i.sy = or i32 %i.sw, %i.sx
  %i.sz = xor i32 %i.sy, %i.so
  %i.ta = add i32 %.0.sroa.phi586.sroa.speculated, -1120210379
  %i.tb = add i32 %i.ta, %i.ry
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.tc, i32 %i.tc, i32 10)
  %i.te = add i32 %i.td, %i.sw                    ; 4 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %i.k, 718787259
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 15)
  %i.tm = add i32 %i.tl, %i.te                    ; 3 uses
  %i.tn = xor i32 %i.sw, -1
  %i.to = or i32 %i.tm, %i.tn
  %i.tp = xor i32 %i.to, %i.te
  %i.tq = add i32 %.0.sroa.phi580.sroa.speculated, -343485551
  %i.tr = add i32 %i.tq, %i.so
  %i.ts = add i32 %i.tr, %i.tp                    ; 2 uses
  %i.tt = tail call i32 @llvm.fshl.i32(i32 %i.ts, i32 %i.ts, i32 21)
  %i.tu = add i32 %i.sw, %i.b
  store i32 %i.tu, ptr %i.a, align 4, !tbaa !6
  %i.tv = add i32 %i.tm, %i.d
  %i.tw = add i32 %i.tv, %i.tt
  store i32 %i.tw, ptr %i.c, align 4, !tbaa !6
  %i.tx = add i32 %i.tm, %i.f
  store i32 %i.tx, ptr %i.e, align 4, !tbaa !6
  %i.ty = add i32 %i.te, %i.h
  store i32 %i.ty, ptr %i.g, align 4, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @rb_Digest_MD5_Finish(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load i32, ptr %0, align 4, !tbaa !6      ; 6 uses
  %i.c = trunc i32 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !12
  %i.d = lshr i32 %i.b, 8
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !12
  %i.g = lshr i32 %i.b, 16
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !12
  %i.j = lshr i32 %i.b, 24
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6    ; 5 uses
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.o, ptr %i.p, align 1, !tbaa !12
  %i.q = lshr i32 %i.n, 8
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = lshr i32 %i.n, 16
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.u, ptr %i.v, align 1, !tbaa !12
  %i.w = lshr i32 %i.n, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.x, ptr %i.y, align 1, !tbaa !12
  %i.z = lshr i32 %i.b, 3                         ; 2 uses
  %i.aa = sub nsw i32 55, %i.z
  %i.ab = and i32 %i.aa, 63
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ae = and i32 %i.z, 63                        ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = shl nuw nsw i32 %i.ac, 3                ; 2 uses
  %i.ah = add i32 %i.ag, %i.b                     ; 2 uses
  store i32 %i.ah, ptr %0, align 4, !tbaa !6
  %i.ai = icmp ult i32 %i.ah, %i.ag
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = add i32 %i.n, 1
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = add nuw nsw i64 %i.ad, %i.af
  %i.al = icmp samesign ugt i64 %i.ak, 64
  %i.am = sub nuw nsw i64 64, %i.af
  %i.an = select i1 %i.al, i64 %i.am, i64 %i.ad   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 16 dereferenceable(1) @rb_Digest_MD5_Finish.pad, i64 %i.an, i1 false)
  %i.aq = add nuw nsw i64 %i.an, %i.af
  %i.ar = icmp samesign ugt i64 %i.aq, 63
  br i1 %i.ar, label %bb.e, label %rb_Digest_MD5_Update.exit

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr @rb_Digest_MD5_Finish.pad, i64 %i.an
  %i.at = sub nsw i64 %i.ad, %i.an
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.140.i = phi ptr [ %i.as, %bb.e ], [ @rb_Digest_MD5_Finish.pad, %bb.c ] ; 2 uses
  %.1.i = phi i64 [ %i.at, %bb.e ], [ %i.ad, %bb.c ] ; 3 uses
  %i.au = icmp ugt i64 %.1.i, 63
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.246.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.1.i, %bb.f ]
  %.24145.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.140.i, %bb.f ] ; 2 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef %.24145.i)
  %i.av = getelementptr inbounds nuw i8, ptr %.24145.i, i64 64 ; 2 uses
  %i.aw = add i64 %.246.i, -64                    ; 3 uses
  %i.ax = icmp ugt i64 %i.aw, 63
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.241.lcssa.i = phi ptr [ %.140.i, %bb.f ], [ %i.av, %.lr.ph.i ]
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.f ], [ %i.aw, %.lr.ph.i ] ; 2 uses
  %.not44.i = icmp eq i64 %.2.lcssa.i, 0
  br i1 %.not44.i, label %rb_Digest_MD5_Update.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 1 %.241.lcssa.i, i64 %.2.lcssa.i, i1 false)
  br label %rb_Digest_MD5_Update.exit

rb_Digest_MD5_Update.exit:                        ; preds = %bb.d, %._crit_edge.i, %bb.g
  %i.az = load i32, ptr %0, align 4, !tbaa !6     ; 3 uses
  %i.ba = lshr i32 %i.az, 3
  %i.bb = and i32 %i.ba, 63                       ; 3 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !6
  %i.be = add i32 %i.az, 64
  store i32 %i.be, ptr %0, align 4, !tbaa !6
  %i.bf = icmp ugt i32 %i.az, -65
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_Digest_MD5_Update.exit
  %i.bg = add i32 %i.bd, 1
  store i32 %i.bg, ptr %i.m, align 4, !tbaa !6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_Digest_MD5_Update.exit
  %.not.i15 = icmp eq i32 %i.bb, 0
  br i1 %.not.i15, label %._crit_edge.i18.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ugt i32 %i.bb, 56
  %i.bi = sub nuw nsw i64 64, %i.bc
  %i.bj = select i1 %i.bh, i64 %i.bi, i64 8       ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bj, i1 false)
  %i.bm = add nuw nsw i64 %i.bj, %i.bc
  %i.bn = icmp samesign ugt i64 %i.bm, 63
  br i1 %i.bn, label %bb.k, label %rb_Digest_MD5_Update.exit25

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj ; 2 uses
  %i.bp = sub nsw i64 8, %i.bj                    ; 3 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.bk)
  %i.bq = icmp ugt i64 %i.bp, 63
  br i1 %i.bq, label %.lr.ph.i22, label %._crit_edge.i18

.lr.ph.i22:                                       ; preds = %bb.k, %.lr.ph.i22
  %.246.i23 = phi i64 [ %2, %.lr.ph.i22 ], [ %i.bp, %bb.k ]
  %.24145.i24 = phi ptr [ %i.br, %.lr.ph.i22 ], [ %i.bo, %bb.k ] ; 2 uses
  call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %.24145.i24)
  %i.br = getelementptr inbounds nuw i8, ptr %.24145.i24, i64 64 ; 2 uses
  %2 = add i64 %.246.i23, -64                     ; 3 uses
  %3 = icmp ugt i64 %2, 63
  br i1 %3, label %.lr.ph.i22, label %._crit_edge.i18, !llvm.loop !10

._crit_edge.i18:                                  ; preds = %.lr.ph.i22, %bb.k
  %.241.lcssa.i19 = phi ptr [ %i.bo, %bb.k ], [ %i.br, %.lr.ph.i22 ]
  %.2.lcssa.i20 = phi i64 [ %i.bp, %bb.k ], [ %2, %.lr.ph.i22 ] ; 2 uses
  %.not44.i21 = icmp eq i64 %.2.lcssa.i20, 0
  br i1 %.not44.i21, label %rb_Digest_MD5_Update.exit25, label %._crit_edge.i18.thread

._crit_edge.i18.thread:                           ; preds = %bb.i, %._crit_edge.i18
  %.2.lcssa.i2032 = phi i64 [ %.2.lcssa.i20, %._crit_edge.i18 ], [ 8, %bb.i ]
  %.241.lcssa.i1931 = phi ptr [ %.241.lcssa.i19, %._crit_edge.i18 ], [ %i.a, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %.241.lcssa.i1931, i64 %.2.lcssa.i2032, i1 false)
  br label %rb_Digest_MD5_Update.exit25

rb_Digest_MD5_Update.exit25:                      ; preds = %bb.j, %._crit_edge.i18, %._crit_edge.i18.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %1, align 1, !tbaa !12
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.bx = lshr i32 %i.bw, 8
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !12
  %i.ca = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.cb = lshr i32 %i.ca, 16
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %i.ce = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.cf = lshr i32 %i.ce, 24
  %i.cg = trunc nuw i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !12
  %i.cm = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.cn = lshr i32 %i.cm, 8
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !12
  %i.cq = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.cr = lshr i32 %i.cq, 16
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !12
  %i.cu = load i32, ptr %i.ci, align 4, !tbaa !6
  %i.cv = lshr i32 %i.cu, 24
  %i.cw = trunc nuw i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !6
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.da, ptr %i.db, align 1, !tbaa !12
  %i.dc = load i32, ptr %i.cy, align 4, !tbaa !6
  %i.dd = lshr i32 %i.dc, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.de, ptr %i.df, align 1, !tbaa !12
  %i.dg = load i32, ptr %i.cy, align 4, !tbaa !6
  %i.dh = lshr i32 %i.dg, 16
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !12
  %i.dk = load i32, ptr %i.cy, align 4, !tbaa !6
  %i.dl = lshr i32 %i.dk, 24
  %i.dm = trunc nuw i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !6
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !12
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !6
  %i.dt = lshr i32 %i.ds, 8
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !12
  %i.dw = load i32, ptr %i.do, align 4, !tbaa !6
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !12
  %i.ea = load i32, ptr %i.do, align 4, !tbaa !6
  %i.eb = lshr i32 %i.ea, 24
  %i.ec = trunc nuw i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
end_hunk_0
