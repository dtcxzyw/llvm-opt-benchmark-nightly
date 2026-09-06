Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 559
begin_hunk_0_@_ZN8tetgenio8load_stlEPc:bb.a
  store i64 %i.pd, ptr %i.cp, align 8, !tbaa !101
  %i.pe = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.pf = load <2 x float>, ptr %i.pe, align 4, !tbaa !80
  %i.pg = fpext <2 x float> %i.pf to <2 x double>
  store <2 x double> %i.pg, ptr %i.pc, align 8, !tbaa !59
  %i.ph = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !80
  %i.pj = fpext float %i.pi to double
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store double %i.pj, ptr %i.pk, align 8, !tbaa !59
  %i.pl = trunc i64 %i.pd to i32
  %i.pm = load i32, ptr %i.cq, align 8, !tbaa !104
  %i.pn = ashr i32 %i.pl, %i.pm                   ; 4 uses
  %.not.i.2 = icmp slt i32 %i.pn, %i.ok
  br i1 %.not.i.2, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.po = mul nsw i32 %i.ok, 3                    ; 2 uses
  %.not39.i.2 = icmp slt i32 %i.pn, %i.po
  %i.pp = add nsw i32 %i.pn, 128
  %spec.select.i.2 = select i1 %.not39.i.2, i32 %i.po, i32 %i.pp ; 5 uses
  %i.pq = sext i32 %spec.select.i.2 to i64
  %i.pr = shl nsw i64 %i.pq, 3
  %i.ps = call noalias ptr @malloc(i64 noundef %i.pr) #45 ; 10 uses
  %i.pt = icmp sgt i32 %i.ok, 0
  br i1 %i.pt, label %.lr.ph.preheader.i.2, label %.preheader.i116.2

.lr.ph.preheader.i.2:                             ; preds = %bb.as
  %i.pu = ptrtoaddr ptr %i.ps to i64
  %wide.trip.count.i.2 = zext nneg i32 %i.ok to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ok, 4
  %i.pv = sub i64 %i.om, %i.pu
  %diff.check = icmp ugt i64 %i.pv, -32
  %or.cond309 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond309, label %.lr.ph.i.2.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.2
  %n.vec = and i64 %wide.trip.count.i.2, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %index ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load = load <2 x ptr>, ptr %i.pw, align 8, !tbaa !54
  %wide.load278 = load <2 x ptr>, ptr %i.px, align 8, !tbaa !54
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %index ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store <2 x ptr> %wide.load, ptr %i.py, align 8, !tbaa !54
  store <2 x ptr> %wide.load278, ptr %i.pz, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qa = icmp eq i64 %index.next, %n.vec
  br i1 %i.qa, label %middle.block, label %vector.body, !llvm.loop !480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.2
  br i1 %cmp.n, label %.preheader.i116.2, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %.lr.ph.preheader.i.2, %middle.block
  %indvars.iv.i117.2.ph = phi i64 [ 0, %.lr.ph.preheader.i.2 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter352 = and i64 %wide.trip.count.i.2, 3  ; 2 uses
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod353.not, label %.lr.ph.i.2.prol.loopexit, label %.lr.ph.i.2.prol

.lr.ph.i.2.prol:                                  ; preds = %.lr.ph.i.2.preheader, %.lr.ph.i.2.prol
  %indvars.iv.i117.2.prol = phi i64 [ %indvars.iv.next.i118.2.prol, %.lr.ph.i.2.prol ], [ %indvars.iv.i117.2.ph, %.lr.ph.i.2.preheader ] ; 3 uses
  %prol.iter354 = phi i64 [ %prol.iter354.next, %.lr.ph.i.2.prol ], [ 0, %.lr.ph.i.2.preheader ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.i117.2.prol
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !54
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.i117.2.prol
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !54
  %indvars.iv.next.i118.2.prol = add nuw nsw i64 %indvars.iv.i117.2.prol, 1 ; 2 uses
  %prol.iter354.next = add i64 %prol.iter354, 1   ; 2 uses
  %prol.iter354.cmp.not = icmp eq i64 %prol.iter354.next, %xtraiter352
  br i1 %prol.iter354.cmp.not, label %.lr.ph.i.2.prol.loopexit, label %.lr.ph.i.2.prol, !llvm.loop !481

.lr.ph.i.2.prol.loopexit:                         ; preds = %.lr.ph.i.2.prol, %.lr.ph.i.2.preheader
  %indvars.iv.i117.2.unr = phi i64 [ %indvars.iv.i117.2.ph, %.lr.ph.i.2.preheader ], [ %indvars.iv.next.i118.2.prol, %.lr.ph.i.2.prol ]
  %i.qe = sub nsw i64 %indvars.iv.i117.2.ph, %wide.trip.count.i.2
  %i.qf = icmp ugt i64 %i.qe, -4
  br i1 %i.qf, label %.preheader.i116.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.prol.loopexit, %.lr.ph.i.2
  %indvars.iv.i117.2 = phi i64 [ %indvars.iv.next.i118.2.3, %.lr.ph.i.2 ], [ %indvars.iv.i117.2.unr, %.lr.ph.i.2.prol.loopexit ] ; 6 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.i117.2
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !54
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.i117.2
  store ptr %i.qh, ptr %i.qi, align 8, !tbaa !54
  %indvars.iv.next.i118.2 = add nuw nsw i64 %indvars.iv.i117.2, 1 ; 2 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next.i118.2
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !54
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i118.2
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !54
  %indvars.iv.next.i118.2.1 = add nuw nsw i64 %indvars.iv.i117.2, 2 ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next.i118.2.1
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !54
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i118.2.1
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !54
  %indvars.iv.next.i118.2.2 = add nuw nsw i64 %indvars.iv.i117.2, 3 ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next.i118.2.2
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !54
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i118.2.2
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !54
  %indvars.iv.next.i118.2.3 = add nuw nsw i64 %indvars.iv.i117.2, 4 ; 2 uses
  %exitcond.not.i119.2.3 = icmp eq i64 %indvars.iv.next.i118.2.3, %wide.trip.count.i.2
  br i1 %exitcond.not.i119.2.3, label %.preheader.i116.2, label %.lr.ph.i.2, !llvm.loop !482

.preheader.i116.2:                                ; preds = %.lr.ph.i.2.prol.loopexit, %.lr.ph.i.2, %middle.block, %bb.as
  %i.qs = icmp slt i32 %i.ok, %spec.select.i.2
  br i1 %i.qs, label %.lr.ph42.preheader.i.2, label %._crit_edge.i.2

.lr.ph42.preheader.i.2:                           ; preds = %.preheader.i116.2
  %i.qt = sext i32 %i.ok to i64
  %i.qu = shl nsw i64 %i.qt, 3
  %scevgep.i.2 = getelementptr i8, ptr %i.ps, i64 %i.qu
  %i.qv = xor i32 %i.ok, -1
  %i.qw = add i32 %spec.select.i.2, %i.qv
  %i.qx = zext i32 %i.qw to i64
  %i.qy = shl nuw nsw i64 %i.qx, 3
  %i.qz = add nuw nsw i64 %i.qy, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.2, i8 0, i64 %i.qz, i1 false), !tbaa !54
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %.lr.ph42.preheader.i.2, %.preheader.i116.2
  call void @free(ptr noundef nonnull %i.ol) #40
  %i.ra = load i32, ptr %i.ct, align 8, !tbaa !106
  %i.rb = sub nsw i32 %spec.select.i.2, %i.ra
  %i.rc = sext i32 %i.rb to i64
  %i.rd = shl nsw i64 %i.rc, 3
  %i.re = load i64, ptr %i.cu, align 8, !tbaa !107
  %i.rf = add i64 %i.rd, %i.re
  store i64 %i.rf, ptr %i.cu, align 8, !tbaa !107
  store ptr %i.ps, ptr %i.cr, align 8, !tbaa !105
  store i32 %spec.select.i.2, ptr %i.ct, align 8, !tbaa !106
  %.pre189.pre = load i32, ptr %i.cs, align 4, !tbaa !102
  %.pre190.pre = load i32, ptr %i.al, align 8, !tbaa !103
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.2, %bb.ar
  %.pre190 = phi i32 [ %.pre188, %bb.ar ], [ %.pre190.pre, %._crit_edge.i.2 ] ; 2 uses
  %.pre189 = phi i32 [ %.pre187, %bb.ar ], [ %.pre189.pre, %._crit_edge.i.2 ] ; 2 uses
  %i.rg = phi ptr [ %i.ol, %bb.ar ], [ %i.ps, %._crit_edge.i.2 ]
  %i.rh = sext i32 %i.pn to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.rh ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !54 ; 2 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.au, label %_ZN10tetgenmesh9arraypool8getblockEi.exit.2

bb.au:                                            ; preds = %bb.at
  %i.rl = mul nsw i32 %.pre190, %.pre189
  %i.rm = sext i32 %i.rl to i64                   ; 2 uses
  %i.rn = call noalias ptr @malloc(i64 noundef %i.rm) #45 ; 2 uses
  store ptr %i.rn, ptr %i.ri, align 8, !tbaa !54
  %i.ro = load i64, ptr %i.cu, align 8, !tbaa !107
  %i.rp = add i64 %i.ro, %i.rm
  store i64 %i.rp, ptr %i.cu, align 8, !tbaa !107
  br label %_ZN10tetgenmesh9arraypool8getblockEi.exit.2

_ZN10tetgenmesh9arraypool8getblockEi.exit.2:      ; preds = %bb.au, %bb.at
  %.033.i.2 = phi ptr [ %i.rn, %bb.au ], [ %i.rj, %bb.at ]
  %i.rq = load i64, ptr %i.cp, align 8, !tbaa !101 ; 2 uses
  %i.rr = add nsw i32 %.pre189, -1
  %i.rs = sext i32 %i.rr to i64
  %i.rt = and i64 %i.rq, %i.rs
  %i.ru = sext i32 %.pre190 to i64
  %i.rv = mul nsw i64 %i.rt, %i.ru
  %i.rw = getelementptr inbounds i8, ptr %.033.i.2, i64 %i.rv ; 2 uses
  %i.rx = add nsw i64 %i.rq, 1
  store i64 %i.rx, ptr %i.cp, align 8, !tbaa !101
  %i.ry = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.rz = load <2 x float>, ptr %i.ry, align 4, !tbaa !80
  %i.sa = fpext <2 x float> %i.rz to <2 x double>
  store <2 x double> %i.sa, ptr %i.rw, align 8, !tbaa !59
  %i.sb = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !80
  %i.sd = fpext float %i.sc to double
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store double %i.sd, ptr %i.se, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader134, !llvm.loop !483

.loopexit:                                        ; preds = %_ZN10tetgenmesh9arraypool8getblockEi.exit.2, %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.do) #42
  br label %bb.av

bb.av:                                            ; preds = %_ZL9SwapBytesPcii.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.sf = call i32 @feof(ptr noundef nonnull %i.n) #40
  %.not106 = icmp eq i32 %i.sf, 0
  br i1 %.not106, label %bb.af, label %.loopexit136

.loopexit136:                                     ; preds = %.loopexit137, %.backedge.i, %bb.av, %.preheader139, %bb.ae, %.thread
  %i.sg = call i32 @fclose(ptr noundef nonnull %i.n) ; 0 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !101 ; 3 uses
  %i.sj = trunc i64 %i.si to i32                  ; 7 uses
  %i.sk = icmp ne i32 %i.sj, 0
  %i.sl = srem i32 %i.sj, 3
  %i.sm = sdiv i32 %i.sj, 3                       ; 3 uses
  %.not108 = icmp eq i32 %i.sl, 0
  %or.cond109 = and i1 %i.sk, %.not108
  br i1 %or.cond109, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit136
  %i.sn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, ptr noundef nonnull %i.a) ; 0 uses
  call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #42
  br label %bb.az

bb.ax:                                            ; preds = %.loopexit136
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.sj, ptr %i.so, align 8, !tbaa !45
  %sext = mul i64 %i.si, 12884901888
  %i.sp = call i64 @llvm.smax.i64(i64 %sext, i64 -1)
  %i.sq = ashr i64 %i.sp, 29
  %i.sr = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.sq) #41 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !46
  %i.st = icmp sgt i32 %i.sj, 0
  br i1 %i.st, label %.lr.ph153, label %._crit_edge

.lr.ph153:                                        ; preds = %bb.ax
  %i.su = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !105
  %i.sw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !104
  %i.sy = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !111
  %i.ta = load i32, ptr %i.al, align 8, !tbaa !103
  %wide.trip.count178 = and i64 %i.si, 2147483647
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph153, %bb.ay
  %indvars.iv175 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next176, %bb.ay ] ; 3 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv175 to i32 ; 2 uses
  %i.tc = lshr i32 %i.tb, %i.sx
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !54
  %i.tg = and i32 %i.sz, %i.tb
  %i.th = mul nsw i32 %i.tg, %i.ta
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds i8, ptr %i.tf, i64 %i.ti ; 3 uses
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !59
  %.idx = mul nuw nsw i64 %indvars.iv175, 24
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.idx ; 3 uses
  store double %i.tk, ptr %i.tl, align 8, !tbaa !59
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !59
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store double %i.tn, ptr %i.to, align 8, !tbaa !59
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !59
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store double %i.tq, ptr %i.tr, align 8, !tbaa !59
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %._crit_edge, label %bb.ay, !llvm.loop !484

._crit_edge:                                      ; preds = %bb.ay, %bb.ax
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.sm, ptr %i.ts, align 8, !tbaa !83
  %i.tt = sext i32 %i.sm to i64
  %i.tu = icmp slt i32 %i.sj, -2
  %i.tv = shl nsw i64 %i.tt, 5
  %i.tw = select i1 %i.tu, i64 -1, i64 %i.tv
  %i.tx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.tw) #41
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.tx, ptr %i.ty, align 8, !tbaa !84
  store i32 1, ptr %0, align 8, !tbaa !56
  %2 = icmp sgt i32 %i.sj, 2
  br i1 %2, label %.lr.ph157.preheader, label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %._crit_edge
  %wide.trip.count183 = zext nneg i32 %i.sm to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %indvars.iv180 = phi i64 [ 0, %.lr.ph157.preheader ], [ %indvars.iv.next181, %.lr.ph157 ] ; 2 uses
  %.091154 = phi i32 [ 1, %.lr.ph157.preheader ], [ %i.ul, %.lr.ph157 ] ; 4 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !84
  %i.ua = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %indvars.iv180 ; 5 uses
  store ptr null, ptr %i.ua, align 8, !tbaa !87
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store ptr null, ptr %i.uc, align 8, !tbaa !89
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store i32 0, ptr %i.ud, align 8, !tbaa !90
  store i32 1, ptr %i.ub, align 8, !tbaa !88
  %i.ue = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 4 uses
  store ptr %i.ue, ptr %i.ua, align 8, !tbaa !87
  store ptr null, ptr %i.ue, align 8, !tbaa !92
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i32 3, ptr %i.uf, align 8, !tbaa !93
  %i.ug = call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #41 ; 4 uses
  store ptr %i.ug, ptr %i.ue, align 8, !tbaa !92
  store i32 %.091154, ptr %i.ug, align 4, !tbaa !60
  %i.uh = add nuw nsw i32 %.091154, 1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !60
  %i.uj = add nuw nsw i32 %.091154, 2
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !60
  %i.ul = add nuw nsw i32 %.091154, 3
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !485

._crit_edge158:                                   ; preds = %.lr.ph157, %._crit_edge
  call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #42
  br label %bb.az

bb.az:                                            ; preds = %.loopexit138, %bb.aw, %._crit_edge158, %bb.h, %bb.f, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.aw ], [ true, %._crit_edge158 ], [ false, %.loopexit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !102
  %i.h = add nsw i32 %i.g, -1
  %i.i = sext i32 %i.h to i64
  %i.j = and i64 %i.e, %i.i
  %i.k = load i32, ptr %0, align 8, !tbaa !103
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.j, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  store ptr %i.n, ptr %1, align 8, !tbaa !112
  %i.o = add nsw i64 %i.e, 1
  store i64 %i.o, ptr %i.a, align 8, !tbaa !101
  ret i32 %i.c
}

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8tetgenio10load_meditEPci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 19 uses
  %i.b = alloca [2048 x i8], align 16             ; 19 uses
  %i.c = alloca ptr, align 8                      ; 55 uses
  %i.d = alloca i32, align 4                      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.e = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1023) #40 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.f, align 1, !tbaa !51
  %i.g = load i8, ptr %i.a, align 16, !tbaa !51
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.dz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.j = getelementptr i8, ptr %i.a, i64 %i.i     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -5
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(6) @.str.94) #44
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.j, ptr noundef nonnull align 1 dereferenceable(6) @.str.94, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4) ; 28 uses
  %.not211 = icmp eq ptr %i.m, null
  br i1 %.not211, label %bb.dz, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.a) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = icmp ne i32 %2, 0                        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.outer.outer

..loopexit399_crit_edge:                          ; preds = %_ZN8tetgenio14findnextnumberEPc.exit267.2
  br label %.loopexit399, !llvm.loop !486

.loopexit399:                                     ; preds = %bb.ae, %..loopexit399_crit_edge
  %.lcssa566570.lcssa = phi i32 [ %i.dc, %..loopexit399_crit_edge ], [ %.promoted569, %bb.ae ] ; 2 uses
  store i32 %.lcssa566570.lcssa, ptr %i.d, align 4
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.e, %.loopexit399
  %.promoted500.pre740 = phi i32 [ 0, %bb.e ], [ %.lcssa566570.lcssa, %.loopexit399 ]
  %.0178.ph.ph = phi i32 [ 0, %bb.e ], [ %.1179, %.loopexit399 ]
  %.0177.ph.ph = phi i32 [ 0, %bb.e ], [ %i.cp, %.loopexit399 ]
  %.0175.ph.ph = phi i32 [ 0, %bb.e ], [ %.0175.ph.ph1093, %.loopexit399 ]
  %.0172.ph.ph = phi i32 [ 0, %bb.e ], [ %.0172.ph, %.loopexit399 ]
  %.0.ph.ph = phi i32 [ 0, %bb.e ], [ %i.cq, %.loopexit399 ]
  %i.ad = icmp eq i32 %.0177.ph.ph, 0
  br label %.outer.outer1091

.outer.outer1091:                                 ; preds = %.outer.outer1091.backedge, %.outer.outer
  %.promoted500.ph = phi i32 [ %.promoted500.pre740, %.outer.outer ], [ %.promoted500.ph.be, %.outer.outer1091.backedge ]
  %.0178.ph.ph1092 = phi i32 [ %.0178.ph.ph, %.outer.outer ], [ %.1179, %.outer.outer1091.backedge ]
  %.0175.ph.ph1093 = phi i32 [ %.0175.ph.ph, %.outer.outer ], [ %.0175.ph.ph1093.be, %.outer.outer1091.backedge ] ; 2 uses
  %.0172.ph.ph1094 = phi i32 [ %.0172.ph.ph, %.outer.outer ], [ %.2174, %.outer.outer1091.backedge ]
  %.0.ph.ph1095 = phi i32 [ %.0.ph.ph, %.outer.outer ], [ %.0.ph.ph1095.be, %.outer.outer1091.backedge ]
  %i.ae = icmp eq i32 %.0175.ph.ph1093, 0
  br label %.outer

.outer:                                           ; preds = %.outer.outer1091, %bb.bv
  %.promoted500 = phi i32 [ %.promoted500744, %bb.bv ], [ %.promoted500.ph, %.outer.outer1091 ]
  %.0178.ph = phi i32 [ %.1179, %bb.bv ], [ %.0178.ph.ph1092, %.outer.outer1091 ] ; 2 uses
  %.0172.ph = phi i32 [ %.2174, %bb.bv ], [ %.0172.ph.ph1094, %.outer.outer1091 ] ; 3 uses
  %.0.ph = phi i32 [ %.4, %bb.bv ], [ %.0.ph.ph1095, %.outer.outer1091 ] ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.h
  %.lcssa498501 = phi i32 [ %.promoted500, %.outer ], [ %i.ak, %bb.h ]
  %i.af = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.m) ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit403, label %.preheader.i

.backedge.i:                                      ; preds = %bb.g, %bb.g, %bb.g
  %i.ah = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.m) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit403, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %.backedge.i
  %.in = phi i32 [ %i.ak, %.backedge.i ], [ %.lcssa498501, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %i.ah, %.backedge.i ], [ %i.af, %bb.f ]
  %i.ak = add nsw i32 %.in, 1                     ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %.preheader.i
  %.0.i = phi ptr [ %i.am, %.critedge.i ], [ %i.aj, %.preheader.i ] ; 7 uses
  %i.al = load i8, ptr %.0.i, align 1, !tbaa !51
  switch i8 %i.al, label %bb.h [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 0, label %.backedge.i
    i8 13, label %.backedge.i
    i8 10, label %.backedge.i
  ]

.critedge.i:                                      ; preds = %bb.g, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.g, !llvm.loop !3

bb.h:                                             ; preds = %bb.g
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !54
  %i.an = load i8, ptr %.0.i, align 1, !tbaa !51
  %i.ao = icmp eq i8 %i.an, 35
  br i1 %i.ao, label %bb.f, label %bb.i, !llvm.loop !486

bb.i:                                             ; preds = %bb.h
  store i32 %i.ak, ptr %i.d, align 4
  %i.ap = icmp eq i32 %.0178.ph, 0
  br i1 %i.ap, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.aq = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.95) #44 ; 2 uses
  %.not213 = icmp eq ptr %i.aq, null
  br i1 %.not213, label %bb.k, label %.thread331.preheader

bb.k:                                             ; preds = %bb.j
  %i.ar = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.96) #44 ; 2 uses
  %.not214 = icmp eq ptr %i.ar, null
  br i1 %.not214, label %bb.l, label %.thread331.preheader

bb.l:                                             ; preds = %bb.k
  %i.as = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.97) #44 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.u, label %.thread331.preheader

.thread331.preheader:                             ; preds = %bb.j, %bb.k, %bb.l
  %.0.i234.ph = phi ptr [ %i.aq, %bb.j ], [ %i.ar, %bb.k ], [ %i.as, %bb.l ]
end_hunk_0
