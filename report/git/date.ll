Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/date?download=true
inline.NumInlined: 105
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@approxidate_careful:bb.a

.lr.ph.i179.5.i.i:                                ; preds = %.lr.ph.i179.5.i.i.preheader, %bb.ci
  %i.qc = phi i8 [ %i.qw, %bb.ci ], [ %i.z, %.lr.ph.i179.5.i.i.preheader ] ; 3 uses
  %.023.i180.5.i.i = phi i32 [ %i.qv, %bb.ci ], [ 0, %.lr.ph.i179.5.i.i.preheader ] ; 2 uses
  %.01022.i181.5.i.i = phi ptr [ %i.qu, %bb.ci ], [ @.str.53, %.lr.ph.i179.5.i.i.preheader ] ; 2 uses
  %.01121.i182.5.i.i = phi ptr [ %i.qt, %bb.ci ], [ %.0969.i, %.lr.ph.i179.5.i.i.preheader ]
  %i.qd = load i8, ptr %.01022.i181.5.i.i, align 1, !tbaa !29 ; 3 uses
  %i.qe = icmp eq i8 %i.qc, %i.qd
  br i1 %i.qe, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i179.5.i.i
  %i.qf = zext i8 %i.qc to i32                    ; 2 uses
  %i.qg = zext i8 %i.qc to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !29  ; 2 uses
  %i.qj = and i8 %i.qi, 4
  %.not.i.i183.5.i.i = icmp eq i8 %i.qj, 0
  %i.qk = and i32 %i.qf, 223
  %spec.select.i.i184.5.i.i = select i1 %.not.i.i183.5.i.i, i32 %i.qf, i32 %i.qk
  %i.ql = zext i8 %i.qd to i32                    ; 2 uses
  %i.qm = zext i8 %i.qd to i64
  %i.qn = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !29
  %i.qp = and i8 %i.qo, 4
  %.not.i15.i185.5.i.i = icmp eq i8 %i.qp, 0
  %i.qq = and i32 %i.ql, 223
  %spec.select.i16.i186.5.i.i = select i1 %.not.i15.i185.5.i.i, i32 %i.ql, i32 %i.qq
  %i.qr = icmp eq i32 %spec.select.i.i184.5.i.i, %spec.select.i16.i186.5.i.i
  br i1 %i.qr, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qs = and i8 %i.qi, 6
  %.not14.i187.5.i.i = icmp eq i8 %i.qs, 0
  br i1 %.not14.i187.5.i.i, label %match_string.exit191.5.i.i, label %.lr.ph.i179.6.i.i.preheader

bb.ci:                                            ; preds = %bb.cg, %.lr.ph.i179.5.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.01121.i182.5.i.i, i64 1 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.01022.i181.5.i.i, i64 1
  %i.qv = add nuw nsw i32 %.023.i180.5.i.i, 1     ; 2 uses
  %i.qw = load i8, ptr %i.qt, align 1, !tbaa !29  ; 2 uses
  %.not.i190.5.i.i = icmp eq i8 %i.qw, 0
  br i1 %.not.i190.5.i.i, label %match_string.exit191.5.i.i, label %.lr.ph.i179.5.i.i, !llvm.loop !35

match_string.exit191.5.i.i:                       ; preds = %bb.ci, %bb.ch
  %.012.i189.5.i.i = phi i32 [ %.023.i180.5.i.i, %bb.ch ], [ %i.qv, %bb.ci ]
  %i.qx = icmp slt i32 %.012.i189.5.i.i, 3
  br i1 %i.qx, label %.lr.ph.i179.6.i.i.preheader, label %bb.bm

.lr.ph.i179.6.i.i.preheader:                      ; preds = %match_string.exit191.5.i.i, %bb.ch
  br label %.lr.ph.i179.6.i.i

.lr.ph.i179.6.i.i:                                ; preds = %.lr.ph.i179.6.i.i.preheader, %bb.cl
  %i.qy = phi i8 [ %i.rs, %bb.cl ], [ %i.z, %.lr.ph.i179.6.i.i.preheader ] ; 3 uses
  %.023.i180.6.i.i = phi i32 [ %i.rr, %bb.cl ], [ 0, %.lr.ph.i179.6.i.i.preheader ] ; 2 uses
  %.01022.i181.6.i.i = phi ptr [ %i.rq, %bb.cl ], [ @.str.54, %.lr.ph.i179.6.i.i.preheader ] ; 2 uses
  %.01121.i182.6.i.i = phi ptr [ %i.rp, %bb.cl ], [ %.0969.i, %.lr.ph.i179.6.i.i.preheader ]
  %i.qz = load i8, ptr %.01022.i181.6.i.i, align 1, !tbaa !29 ; 3 uses
  %i.ra = icmp eq i8 %i.qy, %i.qz
  br i1 %i.ra, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i179.6.i.i
  %i.rb = zext i8 %i.qy to i32                    ; 2 uses
  %i.rc = zext i8 %i.qy to i64
  %i.rd = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !29  ; 2 uses
  %i.rf = and i8 %i.re, 4
  %.not.i.i183.6.i.i = icmp eq i8 %i.rf, 0
  %i.rg = and i32 %i.rb, 223
  %spec.select.i.i184.6.i.i = select i1 %.not.i.i183.6.i.i, i32 %i.rb, i32 %i.rg
  %i.rh = zext i8 %i.qz to i32                    ; 2 uses
  %i.ri = zext i8 %i.qz to i64
  %i.rj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !29
  %i.rl = and i8 %i.rk, 4
  %.not.i15.i185.6.i.i = icmp eq i8 %i.rl, 0
  %i.rm = and i32 %i.rh, 223
  %spec.select.i16.i186.6.i.i = select i1 %.not.i15.i185.6.i.i, i32 %i.rh, i32 %i.rm
  %i.rn = icmp eq i32 %spec.select.i.i184.6.i.i, %spec.select.i16.i186.6.i.i
  br i1 %i.rn, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ro = and i8 %i.re, 6
  %.not14.i187.6.i.i = icmp eq i8 %i.ro, 0
  br i1 %.not14.i187.6.i.i, label %match_string.exit191.6.i.i, label %.lr.ph.i197.i.i.preheader

bb.cl:                                            ; preds = %bb.cj, %.lr.ph.i179.6.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.01121.i182.6.i.i, i64 1 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.01022.i181.6.i.i, i64 1
  %i.rr = add nuw nsw i32 %.023.i180.6.i.i, 1     ; 2 uses
  %i.rs = load i8, ptr %i.rp, align 1, !tbaa !29  ; 2 uses
  %.not.i190.6.i.i = icmp eq i8 %i.rs, 0
  br i1 %.not.i190.6.i.i, label %match_string.exit191.6.i.i, label %.lr.ph.i179.6.i.i, !llvm.loop !35

match_string.exit191.6.i.i:                       ; preds = %bb.cl, %bb.ck
  %.012.i189.6.i.i = phi i32 [ %.023.i180.6.i.i, %bb.ck ], [ %i.rr, %bb.cl ]
  %i.rt = icmp slt i32 %.012.i189.6.i.i, 3
  br i1 %i.rt, label %.lr.ph.i197.i.i.preheader, label %bb.bm

.lr.ph.i197.i.i.preheader:                        ; preds = %match_string.exit191.6.i.i, %bb.ck
  br label %.lr.ph.i197.i.i

.lr.ph.i197.i.i:                                  ; preds = %.lr.ph.i197.i.i.preheader, %bb.co
  %i.ru = phi i8 [ %i.so, %bb.co ], [ %i.z, %.lr.ph.i197.i.i.preheader ] ; 3 uses
  %.023.i198.i.i = phi i32 [ %i.sn, %bb.co ], [ 0, %.lr.ph.i197.i.i.preheader ] ; 2 uses
  %.01022.i199.i.i = phi ptr [ %i.sm, %bb.co ], [ @.str.132, %.lr.ph.i197.i.i.preheader ] ; 2 uses
  %.01121.i200.i.i = phi ptr [ %i.sl, %bb.co ], [ %.0969.i, %.lr.ph.i197.i.i.preheader ]
  %i.rv = load i8, ptr %.01022.i199.i.i, align 1, !tbaa !29 ; 3 uses
  %i.rw = icmp eq i8 %i.ru, %i.rv
  br i1 %i.rw, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i197.i.i
  %i.rx = zext i8 %i.ru to i32                    ; 2 uses
  %i.ry = zext i8 %i.ru to i64
  %i.rz = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !29  ; 2 uses
  %i.sb = and i8 %i.sa, 4
  %.not.i.i201.i.i = icmp eq i8 %i.sb, 0
  %i.sc = and i32 %i.rx, 223
  %spec.select.i.i202.i.i = select i1 %.not.i.i201.i.i, i32 %i.rx, i32 %i.sc
  %i.sd = zext i8 %i.rv to i32                    ; 2 uses
  %i.se = zext i8 %i.rv to i64
  %i.sf = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !29
  %i.sh = and i8 %i.sg, 4
  %.not.i15.i203.i.i = icmp eq i8 %i.sh, 0
  %i.si = and i32 %i.sd, 223
  %spec.select.i16.i204.i.i = select i1 %.not.i15.i203.i.i, i32 %i.sd, i32 %i.si
  %i.sj = icmp eq i32 %spec.select.i.i202.i.i, %spec.select.i16.i204.i.i
  br i1 %i.sj, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sk = and i8 %i.sa, 6
  %.not14.i205.i.i = icmp eq i8 %i.sk, 0
  br i1 %.not14.i205.i.i, label %match_string.exit209.i.i, label %.lr.ph.i215.i.i.preheader

.lr.ph.i215.i.i.preheader:                        ; preds = %match_string.exit209.i.i, %bb.cn
  br label %.lr.ph.i215.i.i

bb.co:                                            ; preds = %bb.cm, %.lr.ph.i197.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.01121.i200.i.i, i64 1 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.01022.i199.i.i, i64 1
  %i.sn = add nuw nsw i32 %.023.i198.i.i, 1       ; 2 uses
  %i.so = load i8, ptr %i.sl, align 1, !tbaa !29  ; 2 uses
  %.not.i208.i.i = icmp eq i8 %i.so, 0
  br i1 %.not.i208.i.i, label %match_string.exit209.i.i, label %.lr.ph.i197.i.i, !llvm.loop !35

match_string.exit209.i.i:                         ; preds = %bb.co, %bb.cn
  %.012.i207.i.i = phi i32 [ %.023.i198.i.i, %bb.cn ], [ %i.sn, %bb.co ]
  %i.sp = icmp sgt i32 %.012.i207.i.i, 4
  br i1 %i.sp, label %bb.cp, label %.lr.ph.i215.i.i.preheader

bb.cp:                                            ; preds = %match_string.exit209.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.sq = load i32, ptr %i.t, align 4, !tbaa !18  ; 2 uses
  %i.sr = icmp slt i32 %i.sq, 0
  br i1 %i.sr, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ss = xor i32 %i.sq, -1
  %i.st = mul i32 %i.ss, 86400
  %i.su = zext i32 %i.st to i64
  %i.sv = load i32, ptr %i.v, align 4, !tbaa !18
  store i32 %i.sv, ptr %i.t, align 4, !tbaa !18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1.i210.i.i = phi i64 [ %i.su, %bb.cq ], [ 0, %bb.cp ]
  %i.sw = load i32, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.sx = icmp slt i32 %i.sw, 0
  br i1 %i.sx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.sy = load i32, ptr %i.w, align 8, !tbaa !17  ; 2 uses
  store i32 %i.sy, ptr %i.s, align 8, !tbaa !17
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.sz = phi i32 [ %i.sy, %bb.cs ], [ %i.sw, %bb.cr ]
  %i.ta = load i32, ptr %i.r, align 4, !tbaa !12
  %i.tb = icmp slt i32 %i.ta, 0
  br i1 %i.tb, label %bb.cu, label %update_tm.exit213.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.tc = load i32, ptr %i.x, align 4, !tbaa !12  ; 2 uses
  store i32 %i.tc, ptr %i.r, align 4, !tbaa !12
  %i.td = load i32, ptr %i.w, align 8, !tbaa !17
  %i.te = icmp sgt i32 %i.sz, %i.td
  br i1 %i.te, label %bb.cv, label %update_tm.exit213.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.tf = add nsw i32 %i.tc, -1
  store i32 %i.tf, ptr %i.r, align 4, !tbaa !12
  br label %update_tm.exit213.i.i

update_tm.exit213.i.i:                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.tg = call i64 @mktime(ptr noundef nonnull %2) #19
  %i.th = sub nsw i64 %i.tg, %.1.i210.i.i
  store i64 %i.th, ptr %i.b, align 8, !tbaa !30
  %i.ti = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.tj = load i32, ptr %i.s, align 8, !tbaa !17  ; 3 uses
  %i.tk = load i32, ptr %i.f, align 4, !tbaa !22  ; 3 uses
  %i.tl = sub nsw i32 %i.tj, %i.tk                ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !22
  %i.tm = icmp slt i32 %i.tl, 0
  br i1 %i.tm, label %.lr.ph.i.i, label %bb.cw

.lr.ph.i.i:                                       ; preds = %update_tm.exit213.i.i
  %.promoted.i.i = load i32, ptr %i.r, align 4, !tbaa !12
  %i.tn = call i32 @llvm.umax.i32(i32 %i.tl, i32 -12)
  %.neg8.i = sub i32 %i.tk, %i.tj
  %i.to = add i32 %.neg8.i, 11
  %5 = add i32 %i.to, %i.tn
  %6 = udiv i32 %5, 12                            ; 2 uses
  %i.tp = mul nuw i32 %6, 12
  %i.tq = add i32 %i.tj, 12
  %i.tr = sub i32 %i.tq, %i.tk
  %i.ts = add i32 %i.tr, %i.tp
  %i.tt = xor i32 %6, -1
  %i.tu = add i32 %.promoted.i.i, %i.tt
  store i32 %i.tu, ptr %i.r, align 4, !tbaa !12
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i, %update_tm.exit213.i.i
  %.0.lcssa.i.i = phi i32 [ %i.ts, %.lr.ph.i.i ], [ %i.tl, %update_tm.exit213.i.i ]
  store i32 %.0.lcssa.i.i, ptr %i.s, align 8, !tbaa !17
  br label %approxidate_alpha.exit.i

.lr.ph.i215.i.i:                                  ; preds = %.lr.ph.i215.i.i.preheader, %bb.cz
  %i.tv = phi i8 [ %i.up, %bb.cz ], [ %i.z, %.lr.ph.i215.i.i.preheader ] ; 3 uses
  %.023.i216.i.i = phi i32 [ %i.uo, %bb.cz ], [ 0, %.lr.ph.i215.i.i.preheader ] ; 2 uses
  %.01022.i217.i.i = phi ptr [ %i.un, %bb.cz ], [ @.str.133, %.lr.ph.i215.i.i.preheader ] ; 2 uses
  %.01121.i218.i.i = phi ptr [ %i.um, %bb.cz ], [ %.0969.i, %.lr.ph.i215.i.i.preheader ]
  %i.tw = load i8, ptr %.01022.i217.i.i, align 1, !tbaa !29 ; 3 uses
  %i.tx = icmp eq i8 %i.tv, %i.tw
  br i1 %i.tx, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i215.i.i
  %i.ty = zext i8 %i.tv to i32                    ; 2 uses
  %i.tz = zext i8 %i.tv to i64
  %i.ua = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !29  ; 2 uses
  %i.uc = and i8 %i.ub, 4
  %.not.i.i219.i.i = icmp eq i8 %i.uc, 0
  %i.ud = and i32 %i.ty, 223
  %spec.select.i.i220.i.i = select i1 %.not.i.i219.i.i, i32 %i.ty, i32 %i.ud
  %i.ue = zext i8 %i.tw to i32                    ; 2 uses
  %i.uf = zext i8 %i.tw to i64
  %i.ug = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !29
  %i.ui = and i8 %i.uh, 4
  %.not.i15.i221.i.i = icmp eq i8 %i.ui, 0
  %i.uj = and i32 %i.ue, 223
  %spec.select.i16.i222.i.i = select i1 %.not.i15.i221.i.i, i32 %i.ue, i32 %i.uj
  %i.uk = icmp eq i32 %spec.select.i.i220.i.i, %spec.select.i16.i222.i.i
  br i1 %i.uk, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ul = and i8 %i.ub, 6
  %.not14.i223.i.i = icmp eq i8 %i.ul, 0
  br i1 %.not14.i223.i.i, label %match_string.exit227.i.i, label %approxidate_alpha.exit.i

bb.cz:                                            ; preds = %bb.cx, %.lr.ph.i215.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %.01121.i218.i.i, i64 1 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.01022.i217.i.i, i64 1
  %i.uo = add nuw nsw i32 %.023.i216.i.i, 1       ; 2 uses
  %i.up = load i8, ptr %i.um, align 1, !tbaa !29  ; 2 uses
  %.not.i226.i.i = icmp eq i8 %i.up, 0
  br i1 %.not.i226.i.i, label %match_string.exit227.i.i, label %.lr.ph.i215.i.i, !llvm.loop !35

match_string.exit227.i.i:                         ; preds = %bb.cz, %bb.cy
  %.012.i225.i.i = phi i32 [ %.023.i216.i.i, %bb.cy ], [ %i.uo, %bb.cz ]
  %i.uq = icmp sgt i32 %.012.i225.i.i, 3
  br i1 %i.uq, label %bb.da, label %approxidate_alpha.exit.i

bb.da:                                            ; preds = %match_string.exit227.i.i
  call fastcc void @update_tm(ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 0)
  %i.ur = load i32, ptr %i.f, align 4, !tbaa !22
  %i.us = load i32, ptr %i.r, align 4, !tbaa !12
  %i.ut = sub nsw i32 %i.us, %i.ur
  store i32 %i.ut, ptr %i.r, align 4, !tbaa !12
  store i32 0, ptr %i.f, align 4, !tbaa !22
  br label %approxidate_alpha.exit.i

approxidate_alpha.exit.i:                         ; preds = %bb.da, %match_string.exit227.i.i, %bb.cy, %bb.cw, %bb.bt, %.thread237.i.i, %bb.am, %match_string.exit163.i.i, %bb.ak, %.thread233.i.i, %.thread231.i.i, %bb.aa, %bb.w, %approxidate_digit.exit.i
  %.22.i = phi i32 [ 1, %bb.aa ], [ %.0168.i, %bb.w ], [ 1, %approxidate_digit.exit.i ], [ %.0168.i, %bb.cy ], [ %.0168.i, %match_string.exit227.i.i ], [ %.0168.i, %match_string.exit163.i.i ], [ %.0168.i, %bb.ak ], [ 1, %bb.da ], [ 1, %bb.cw ], [ 1, %bb.bt ], [ 1, %.thread237.i.i ], [ 1, %bb.am ], [ 1, %.thread233.i.i ], [ 1, %.thread231.i.i ] ; 2 uses
  %.2.i = phi ptr [ %i.bp, %bb.aa ], [ %i.bn, %bb.w ], [ %.1.i.i, %approxidate_digit.exit.i ], [ %i.bp, %bb.cy ], [ %i.bp, %match_string.exit227.i.i ], [ %i.bp, %match_string.exit163.i.i ], [ %i.bp, %bb.ak ], [ %i.bp, %bb.da ], [ %i.bp, %bb.cw ], [ %i.bp, %bb.bt ], [ %i.bp, %.thread237.i.i ], [ %i.bp, %bb.am ], [ %i.bp, %.thread233.i.i ], [ %i.bp, %.thread231.i.i ] ; 2 uses
  %i.uu = load i8, ptr %.2.i, align 1, !tbaa !29  ; 2 uses
  %.not.i6 = icmp eq i8 %i.uu, 0
  br i1 %.not.i6, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %approxidate_alpha.exit.i
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !22 ; 12 uses
  %i.uv = icmp ne i32 %.22.i, 0                   ; 6 uses
  %.not.i17.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i17.i, label %pending_number.exit22.i, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.f, align 4, !tbaa !22
  %i.uw = load i32, ptr %i.t, align 4, !tbaa !18
  %i.ux = icmp slt i32 %i.uw, 0
  %i.uy = icmp slt i32 %.pre.i, 32
  %or.cond.i18.i = and i1 %i.uy, %i.ux
  br i1 %or.cond.i18.i, label %.split201.i.a, label %bb.dc

.split201.i.a:                                    ; preds = %bb.db
  store i32 %.pre.i, ptr %i.t, align 4, !tbaa !18
  br i1 %i.uv, label %bb.dh, label %pending_number.exit22.thread.i

bb.dc:                                            ; preds = %bb.db
  %i.uz = load i32, ptr %i.s, align 8, !tbaa !17
  %i.va = icmp slt i32 %i.uz, 0
  %i.vb = icmp slt i32 %.pre.i, 13
  %or.cond3.i19.i = and i1 %i.vb, %i.va
  br i1 %or.cond3.i19.i, label %.split204.i, label %bb.dd

.split204.i:                                      ; preds = %bb.dc
  %i.vc = add nsw i32 %.pre.i, -1
  store i32 %i.vc, ptr %i.s, align 8, !tbaa !17
  %brmerge15 = or i1 %.not, %i.uv
  br i1 %brmerge15, label %thread-pre-split.i, label %pending_number.exit22.thread.i.else

bb.dd:                                            ; preds = %bb.dc
  %i.vd = load i32, ptr %i.r, align 4, !tbaa !12
  %i.ve = icmp slt i32 %i.vd, 0
  br i1 %i.ve, label %bb.de, label %pending_number.exit22.i

bb.de:                                            ; preds = %bb.dd
  %i.vf = add i32 %.pre.i, -1970
  %or.cond5.i20.i = icmp ult i32 %i.vf, 130
  br i1 %or.cond5.i20.i, label %.split203.i, label %bb.df

.split203.i:                                      ; preds = %bb.de
  %i.vg = add nsw i32 %.pre.i, -1900
  store i32 %i.vg, ptr %i.r, align 4, !tbaa !12
  %brmerge13 = or i1 %.not, %i.uv
  br i1 %brmerge13, label %thread-pre-split.i, label %pending_number.exit22.thread.i.else

bb.df:                                            ; preds = %bb.de
  %i.vh = add i32 %.pre.i, -70
  %or.cond7.i21.i = icmp ult i32 %i.vh, 30
  br i1 %or.cond7.i21.i, label %.split202.i, label %bb.dg

.split202.i:                                      ; preds = %bb.df
  store i32 %.pre.i, ptr %i.r, align 4, !tbaa !12
  %brmerge11 = or i1 %.not, %i.uv
  br i1 %brmerge11, label %thread-pre-split.i, label %pending_number.exit22.thread.i.else

bb.dg:                                            ; preds = %bb.df
  %i.vi = icmp slt i32 %.pre.i, 38
  br i1 %i.vi, label %.split.i, label %pending_number.exit22.i

.split.i:                                         ; preds = %bb.dg
  %i.vj = add nsw i32 %.pre.i, 100
  store i32 %i.vj, ptr %i.r, align 4, !tbaa !12
  %brmerge9 = or i1 %.not, %i.uv
  br i1 %brmerge9, label %thread-pre-split.i, label %pending_number.exit22.thread.i.else

pending_number.exit22.i:                          ; preds = %bb.dg, %bb.dd, %._crit_edge.i
  %brmerge = or i1 %.not, %i.uv
  br i1 %brmerge, label %thread-pre-split.i, label %pending_number.exit22.thread.i.else

pending_number.exit22.thread.i:                   ; preds = %.split201.i.a, %get_time.exit
  br i1 %.not, label %thread-pre-split.i, label %pending_number.exit22.thread.i.else

pending_number.exit22.thread.i.else:              ; preds = %.split204.i, %.split203.i, %.split202.i, %.split.i, %pending_number.exit22.i, %pending_number.exit22.thread.i
  store i32 1, ptr %1, align 4, !tbaa !22
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.split204.i, %.split203.i, %.split202.i, %.split.i, %pending_number.exit22.i, %pending_number.exit22.thread.i.else, %pending_number.exit22.thread.i
  %.pr.i = load i32, ptr %i.t, align 4, !tbaa !18
  br label %bb.dh

bb.dh:                                            ; preds = %thread-pre-split.i, %.split201.i.a
  %i.vk = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %.pre.i, %.split201.i.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.vm = xor i32 %i.vk, -1
  %i.vn = mul i32 %i.vm, 86400
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !18
  store i32 %i.vq, ptr %i.t, align 4, !tbaa !18
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.1.i23.i = phi i64 [ %i.vo, %bb.di ], [ 0, %bb.dh ]
  %i.vr = load i32, ptr %i.s, align 8, !tbaa !17  ; 2 uses
  %i.vs = icmp slt i32 %i.vr, 0
  br i1 %i.vs, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.vt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !17 ; 2 uses
  store i32 %i.vu, ptr %i.s, align 8, !tbaa !17
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.vv = phi i32 [ %i.vu, %bb.dk ], [ %i.vr, %bb.dj ]
  %i.vw = load i32, ptr %i.r, align 4, !tbaa !12
  %i.vx = icmp slt i32 %i.vw, 0
  br i1 %i.vx, label %bb.dm, label %approxidate_str.exit

bb.dm:                                            ; preds = %bb.dl
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !12 ; 2 uses
  store i32 %i.vz, ptr %i.r, align 4, !tbaa !12
  %i.wa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !17
  %i.wc = icmp sgt i32 %i.vv, %i.wb
  br i1 %i.wc, label %bb.dn, label %approxidate_str.exit

bb.dn:                                            ; preds = %bb.dm
  %i.wd = add nsw i32 %i.vz, -1
  store i32 %i.wd, ptr %i.r, align 4, !tbaa !12
  br label %approxidate_str.exit
end_hunk_0
