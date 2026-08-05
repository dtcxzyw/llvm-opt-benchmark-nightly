inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_encode_tile:bb.a
  %i.qp = call fastcc i32 @opj_tcd_makelayer(ptr %.val262.val.i.i, i32 noundef %i.oz, double noundef %i.qk, i32 noundef 0)
  %i.qq = icmp eq i32 %i.qp, 0                    ; 2 uses
  %i.qr = load i32, ptr %i.ip, align 4, !tbaa !31
  %i.qs = icmp eq i32 %i.qr, 1
  br i1 %i.qs, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.qt = load i16, ptr %i.in, align 8, !tbaa !217 ; 2 uses
  %i.qu = add i16 %i.qt, -3
  %or.cond260.i.i = icmp ult i16 %i.qu, 4
  %i.qv = add i16 %i.qt, -1024
  %or.cond261.i.i = icmp ult i16 %i.qv, 1436
  %or.cond279.i.i = or i1 %or.cond260.i.i, %or.cond261.i.i
  br i1 %or.cond279.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.qw = load i32, ptr %i.g, align 8, !tbaa !160
  %i.qx = load i32, ptr %i.d, align 8, !tbaa !159
  %i.qy = load i32, ptr %0, align 8, !tbaa !32
  %i.qz = load i32, ptr %i.ny, align 8, !tbaa !216
  %i.ra = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.ow, i32 noundef %i.qw, ptr noundef %i.is, i32 noundef %i.qi, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.ok, ptr noundef %5, ptr noundef null, i32 noundef %i.qx, i32 noundef %i.qy, i32 noundef %i.qz, i32 noundef 0, ptr noundef %7) #15
  %.not257.i.i = icmp eq i32 %i.ra, 0
  br i1 %.not257.i.i, label %bb.bq, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.oy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rb = load double, ptr %i.nz, align 8, !tbaa !218
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.rc = load double, ptr %i.pc, align 8, !tbaa !218
  %i.rd = load double, ptr %i.pd, align 8, !tbaa !218
  %i.re = fadd double %i.rc, %i.rd
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.rf = phi double [ %i.rb, %bb.bf ], [ %i.re, %bb.bg ]
  %i.rg = fcmp olt double %i.rf, %i.os
  br i1 %i.rg, label %bb.bq, label %bb.bp

bb.bi:                                            ; preds = %bb.bc
  br i1 %i.oy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rh = load double, ptr %i.nz, align 8, !tbaa !218
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ri = load double, ptr %i.pc, align 8, !tbaa !218
  %i.rj = load double, ptr %i.pd, align 8, !tbaa !218
  %i.rk = fadd double %i.ri, %i.rj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.rl = phi double [ %i.rh, %bb.bj ], [ %i.rk, %bb.bk ]
  %i.rm = fcmp olt double %i.rl, %i.os
  br i1 %i.rm, label %bb.bq, label %bb.bp

bb.bm:                                            ; preds = %bb.bb
  %i.rn = icmp ne i32 %.0198330.i.i, 0
  %or.cond.i.i = select i1 %i.qq, i1 true, i1 %i.rn
  br i1 %or.cond.i.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.qq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ro = load i32, ptr %i.g, align 8, !tbaa !160
  %i.rp = load i32, ptr %i.d, align 8, !tbaa !159
  %i.rq = load i32, ptr %0, align 8, !tbaa !32
  %i.rr = load i32, ptr %i.ny, align 8, !tbaa !216
  %i.rs = call i32 @opj_t2_encode_packets(ptr noundef nonnull %i.ow, i32 noundef %i.ro, ptr noundef %i.is, i32 noundef %i.qi, ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef %i.ok, ptr noundef %5, ptr noundef null, i32 noundef %i.rp, i32 noundef %i.rq, i32 noundef %i.rr, i32 noundef 0, ptr noundef %7) #15
  %.not256.i.i = icmp eq i32 %i.rs, 0
  br i1 %.not256.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bh
  %.1218.i.i = phi double [ %i.qk, %bb.bl ], [ %i.qk, %bb.bh ], [ %.0217325.i.i, %bb.bo ], [ %.0217325.i.i, %bb.bn ]
  %.1215.i.i = phi double [ %.0214326.i.i, %bb.bl ], [ %.0214326.i.i, %bb.bh ], [ %i.qk, %bb.bo ], [ %i.qk, %bb.bn ]
  %.1208.i.i = phi double [ %.0207327.i.i, %bb.bl ], [ %.0207327.i.i, %bb.bh ], [ %i.qk, %bb.bo ], [ %i.qk, %bb.bn ]
  %.1199.i.i = phi i32 [ %.0198330.i.i, %bb.bl ], [ %.0198330.i.i, %bb.bh ], [ 1, %bb.bo ], [ 1, %bb.bn ]
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bh, %bb.bd
  %.2219.ph.i.i = phi double [ %i.qk, %bb.bo ], [ %i.qk, %bb.bm ], [ %.0217325.i.i, %bb.bh ], [ %.1218.i.i, %bb.bp ], [ %i.qk, %bb.bd ], [ %.0217325.i.i, %bb.bl ]
  %.2216.ph.i.i = phi double [ %.0214326.i.i, %bb.bo ], [ %.0214326.i.i, %bb.bm ], [ %i.qk, %bb.bh ], [ %.1215.i.i, %bb.bp ], [ %.0214326.i.i, %bb.bd ], [ %i.qk, %bb.bl ]
  %.2209.ph.i.i = phi double [ %.0207327.i.i, %bb.bo ], [ %.0207327.i.i, %bb.bm ], [ %i.qk, %bb.bh ], [ %.1208.i.i, %bb.bp ], [ %.0207327.i.i, %bb.bd ], [ %i.qk, %bb.bl ] ; 2 uses
  %.2200.ph.i.i = phi i32 [ 0, %bb.bo ], [ 0, %bb.bm ], [ %.0198330.i.i, %bb.bh ], [ %.1199.i.i, %bb.bp ], [ %.0198330.i.i, %bb.bd ], [ %.0198330.i.i, %bb.bl ]
  %i.rt = add nuw nsw i32 %.0206328.i.i, 1        ; 2 uses
  %exitcond371.not.i.i = icmp eq i32 %i.rt, 128
  br i1 %exitcond371.not.i.i, label %.loopexit.i.i, label %bb.ba, !llvm.loop !219

.loopexit.i.i:                                    ; preds = %bb.bq, %bb.ba, %.preheader.i.i
  %.0207.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %.2209.ph.i.i, %bb.bq ], [ %.0207327.i.i, %bb.ba ] ; 2 uses
  %.0201.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %i.qk, %bb.bq ], [ %.0201329.i.i, %bb.ba ]
  %i.ru = fcmp oeq double %.0207.lcssa.i.i, 0.000000e+00
  %i.rv = select i1 %i.ru, double %.0201.lcssa.i.i, double %.0207.lcssa.i.i
  call void @opj_t2_destroy(ptr noundef nonnull %i.ow) #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.i.i, %bb.al, %bb.ak, %bb.aj
  %.1212.i.i = phi double [ %i.rv, %.loopexit.i.i ], [ -1.000000e+00, %bb.al ], [ -1.000000e+00, %bb.aj ], [ -1.000000e+00, %bb.ak ] ; 2 uses
  br i1 %.not, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread.i.i
  %i.rw = load ptr, ptr %i.oa, align 8, !tbaa !162
  %i.rx = load i32, ptr %i.g, align 8, !tbaa !160
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [608 x i8], ptr %i.rw, i64 %i.ry
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !215
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %indvars.iv375.i.i
  store double %.1212.i.i, ptr %i.sb, align 8, !tbaa !218
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread.i.i
  %.val.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !18
  %i.sc = trunc nuw i64 %indvars.iv375.i.i to i32
  %i.sd = call fastcc i32 @opj_tcd_makelayer(ptr %.val.val.i.i, i32 noundef %i.sc, double noundef %.1212.i.i, i32 noundef 1) ; 0 uses
  %i.se = icmp eq i64 %indvars.iv375.i.i, 0
  br i1 %i.se, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sf = load double, ptr %i.nz, align 8, !tbaa !218
  br label %.critedge.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.sg = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv375.i.i
  %i.sh = getelementptr i8, ptr %i.sg, i64 -8
  %i.si = load double, ptr %i.sh, align 8, !tbaa !218
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv375.i.i
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !218
  %i.sl = fadd double %i.si, %i.sk
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bu, %bb.bt
  %i.sm = phi double [ %i.sf, %bb.bt ], [ %i.sl, %bb.bu ]
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv375.i.i
  store double %i.sm, ptr %i.sn, align 8, !tbaa !218
  %indvars.iv.next376.i.i = add nuw nsw i64 %indvars.iv375.i.i, 1 ; 2 uses
  %i.so = load i32, ptr %i.ns, align 8, !tbaa !214
  %i.sp = zext i32 %i.so to i64
  %i.sq = icmp samesign ult i64 %indvars.iv.next376.i.i, %i.sp
  br i1 %i.sq, label %bb.ah, label %opj_tcd_rate_allocate_encode.exit, !llvm.loop !220

bb.bv:                                            ; preds = %bb.t
  %i.sr = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !214 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.st, 0
  br i1 %.not.i14.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv
  %i.su = load ptr, ptr %i.bp, align 8, !tbaa !7
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !18 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !30 ; 2 uses
  %.not180.i.i.i = icmp eq i32 %i.sx, 0
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count217.i.i.i = zext i32 %i.sx to i64 ; 2 uses
  %wide.trip.count192.i.i.i = zext i32 %i.st to i64 ; 3 uses
  br i1 %.not180.i.i.i, label %.sink.split, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !25 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.in, i64 128 ; 2 uses
  br label %.lr.ph178.i.i.i

.lr.ph178.i.i.i:                                  ; preds = %opj_tcd_makelayer_fixed.exit.loopexit.i.i, %.lr.ph.split.i.i
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.split.i.i ], [ %indvars.iv.next.i16.i, %opj_tcd_makelayer_fixed.exit.loopexit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.tc = icmp eq i64 %indvars.iv.i15.i, 0
  %invariant.gep171.i.i.i = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv.i15.i ; 2 uses
  %i.td = add nuw nsw i64 %indvars.iv.i15.i, 4294967295
  %i.te = and i64 %i.td, 4294967295
  %invariant.gep.i.i.i = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %i.te
  br i1 %i.tc, label %.preheader141.lr.ph.i.us.i.i, label %.preheader141.lr.ph.i.i.i

.preheader141.lr.ph.i.us.i.i:                     ; preds = %.lr.ph178.i.i.i, %._crit_edge170.i.us.i.i
  %indvars.iv214.i.us.i.i = phi i64 [ %indvars.iv.next215.i.us.i.i, %._crit_edge170.i.us.i.i ], [ 0, %.lr.ph178.i.i.i ] ; 3 uses
  %i.tf = getelementptr inbounds nuw [112 x i8], ptr %i.ta, i64 %indvars.iv214.i.us.i.i ; 2 uses
  %.phi.trans.insert.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.tf, i64 20
  %.pre.i.us.i.i = load i32, ptr %.phi.trans.insert.i.us.i.i, align 4, !tbaa !95 ; 5 uses
  %.not182.i.us.i.i = icmp eq i32 %.pre.i.us.i.i, 0
  br i1 %.not182.i.us.i.i, label %._crit_edge170.i.us.i.i, label %.preheader141.lr.ph.split.i.us.i.i

.preheader141.lr.ph.split.i.us.i.i:               ; preds = %.preheader141.lr.ph.i.us.i.i
  %i.tg = load ptr, ptr %i.tb, align 8, !tbaa !31 ; 15 uses
  %i.th = load ptr, ptr %i.sy, align 8, !tbaa !16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !70
  %i.tk = getelementptr inbounds nuw [64 x i8], ptr %i.tj, i64 %indvars.iv214.i.us.i.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !113 ; 2 uses
  %i.tn = uitofp i32 %i.tm to double
  %i.to = fmul nnan double %i.tn, 6.250000e-02
  %i.tp = fptrunc nnan double %i.to to float      ; 3 uses
  %wide.trip.count.i.us.i.i = zext i32 %.pre.i.us.i.i to i64 ; 5 uses
  %i.tq = add nsw i64 %wide.trip.count.i.us.i.i, -1 ; 3 uses
  %i.tr = mul i32 %.pre.i.us.i.i, 3
  %i.ts = zext i32 %i.tr to i64
  %min.iters.check223 = icmp ult i32 %.pre.i.us.i.i, 9
  %i.tt = trunc i64 %i.tq to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tt, i32 3) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %8 = icmp ugt i64 %i.tq, 4294967295
  %i.tu = icmp ugt i64 %i.tq, 4294967295
  %invariant.op286 = or i1 %i.tu, %mul.overflow
  %n.mod.vf225 = and i64 %wide.trip.count.i.us.i.i, 3 ; 2 uses
  %i.tv = icmp eq i64 %n.mod.vf225, 0
  %i.tw = select i1 %i.tv, i64 4, i64 %n.mod.vf225
  %n.vec226 = sub nsw i64 %wide.trip.count.i.us.i.i, %i.tw ; 2 uses
  %broadcast.splatinsert227 = insertelement <4 x float> poison, float %i.tp, i64 0 ; 2 uses
  %broadcast.splat228 = shufflevector <4 x float> %broadcast.splatinsert227, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tx = shufflevector <4 x float> %broadcast.splatinsert227, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ty = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader141.i.us.i.i

.preheader141.i.us.i.i:                           ; preds = %._crit_edge.i.us.i.i, %.preheader141.lr.ph.split.i.us.i.i
  %indvars.iv189.i.us.i.i = phi i64 [ 0, %.preheader141.lr.ph.split.i.us.i.i ], [ %indvars.iv.next190.i.us.i.i, %._crit_edge.i.us.i.i ] ; 4 uses
  %i.ua = trunc nuw i64 %indvars.iv189.i.us.i.i to i32
  %i.ub = mul i32 %.pre.i.us.i.i, %i.ua           ; 5 uses
  %i.uc = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv189.i.us.i.i ; 2 uses
  br i1 %min.iters.check223, label %.preheader140.i.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader141.i.us.i.i
  %i.ud = mul i64 %indvars.iv189.i.us.i.i, %i.ts  ; 3 uses
  %i.ue = trunc i64 %i.ud to i32
  %i.uf = trunc i64 %i.ud to i32
  %i.ug = trunc i64 %i.ud to i32
  %i.uh = xor i32 %i.ug, -1
  %i.ui = icmp ugt i32 %mul.result, %i.uh
  %i.uj = sub i32 -2, %i.uf
  %i.uk = icmp ult i32 %i.uj, %mul.result
  %.reass287 = or i1 %i.uk, %8
  %i.ul = sub i32 -3, %i.ue
  %i.um = icmp ult i32 %i.ul, %mul.result
  %i.un = or i1 %i.um, %invariant.op286
  %i.uo = or i1 %.reass287, %i.ui
  %i.up = or i1 %i.uo, %i.un
  br i1 %i.up, label %.preheader140.i.us.i.i.preheader, label %vector.body229

vector.body229:                                   ; preds = %vector.scevcheck, %vector.body229
  %index230 = phi i64 [ %index.next231, %vector.body229 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.uq = trunc i64 %index230 to i32              ; 4 uses
  %i.ur = or disjoint i32 %i.uq, 1
  %i.us = or disjoint i32 %i.uq, 2
  %i.ut = or disjoint i32 %i.uq, 3
  %i.uu = add i32 %i.ub, %i.uq
  %i.uv = add i32 %i.ub, %i.ur
  %i.uw = add i32 %i.ub, %i.us
  %i.ux = add i32 %i.ub, %i.ut
  %i.uy = mul i32 %i.uu, 3                        ; 3 uses
  %i.uz = mul i32 %i.uv, 3                        ; 3 uses
  %i.va = mul i32 %i.uw, 3                        ; 3 uses
  %i.vb = mul i32 %i.ux, 3                        ; 3 uses
  %i.vc = getelementptr inbounds nuw [12 x i8], ptr %i.uc, i64 %index230
  %i.vd = zext i32 %i.uy to i64
  %i.ve = zext i32 %i.uz to i64
  %i.vf = zext i32 %i.va to i64
  %i.vg = zext i32 %i.vb to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vd
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.ve
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vf
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vg
  %i.vl = load i32, ptr %i.vh, align 4, !tbaa !3
  %i.vm = load i32, ptr %i.vi, align 4, !tbaa !3
  %i.vn = load i32, ptr %i.vj, align 4, !tbaa !3
  %i.vo = load i32, ptr %i.vk, align 4, !tbaa !3
  %i.vp = insertelement <4 x i32> poison, i32 %i.vl, i64 0
  %i.vq = insertelement <4 x i32> %i.vp, i32 %i.vm, i64 1
  %i.vr = insertelement <4 x i32> %i.vq, i32 %i.vn, i64 2
  %i.vs = insertelement <4 x i32> %i.vr, i32 %i.vo, i64 3
  %i.vt = add i32 %i.uy, 1
  %i.vu = add i32 %i.uz, 1
  %i.vv = add i32 %i.va, 1
  %i.vw = add i32 %i.vb, 1
  %i.vx = zext i32 %i.vt to i64
  %i.vy = zext i32 %i.vu to i64
  %i.vz = zext i32 %i.vv to i64
  %i.wa = zext i32 %i.vw to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vx
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vy
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vz
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.wa
  %i.wf = load i32, ptr %i.wb, align 4, !tbaa !3
  %i.wg = load i32, ptr %i.wc, align 4, !tbaa !3
  %i.wh = load i32, ptr %i.wd, align 4, !tbaa !3
  %i.wi = load i32, ptr %i.we, align 4, !tbaa !3
  %i.wj = insertelement <4 x i32> poison, i32 %i.wf, i64 0
  %i.wk = insertelement <4 x i32> %i.wj, i32 %i.wg, i64 1
  %i.wl = insertelement <4 x i32> %i.wk, i32 %i.wh, i64 2
  %i.wm = insertelement <4 x i32> %i.wl, i32 %i.wi, i64 3
  %i.wn = add i32 %i.uy, 2
  %i.wo = add i32 %i.uz, 2
  %i.wp = add i32 %i.va, 2
  %i.wq = add i32 %i.vb, 2
  %i.wr = zext i32 %i.wn to i64
  %i.ws = zext i32 %i.wo to i64
  %i.wt = zext i32 %i.wp to i64
  %i.wu = zext i32 %i.wq to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.wr
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.ws
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.wt
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.wu
  %i.wz = load i32, ptr %i.wv, align 4, !tbaa !3
  %i.xa = load i32, ptr %i.ww, align 4, !tbaa !3
  %i.xb = load i32, ptr %i.wx, align 4, !tbaa !3
  %i.xc = load i32, ptr %i.wy, align 4, !tbaa !3
  %i.xd = insertelement <4 x i32> poison, i32 %i.wz, i64 0
  %i.xe = insertelement <4 x i32> %i.xd, i32 %i.xa, i64 1
  %i.xf = insertelement <4 x i32> %i.xe, i32 %i.xb, i64 2
  %i.xg = insertelement <4 x i32> %i.xf, i32 %i.xc, i64 3
  %i.xh = sitofp <4 x i32> %i.xg to <4 x float>
  %i.xi = fmul <4 x float> %broadcast.splat228, %i.xh
  %i.xj = fptosi <4 x float> %i.xi to <4 x i32>
  %i.xk = shufflevector <4 x i32> %i.vs, <4 x i32> %i.wm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xl = sitofp <8 x i32> %i.xk to <8 x float>
  %i.xm = fmul <8 x float> %i.tx, %i.xl
  %i.xn = fptosi <8 x float> %i.xm to <8 x i32>
  %i.xo = shufflevector <4 x i32> %i.xj, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i32> %i.xn, <8 x i32> %i.xo, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec, ptr %i.vc, align 8, !tbaa !3
  %index.next231 = add nuw i64 %index230, 4       ; 2 uses
  %i.xp = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.xp, label %.preheader140.i.us.i.i.preheader, label %vector.body229, !llvm.loop !221

.preheader140.i.us.i.i.preheader:                 ; preds = %vector.body229, %vector.scevcheck, %.preheader141.i.us.i.i
  %indvars.iv.i.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader141.i.us.i.i ], [ %n.vec226, %vector.body229 ]
  br label %.preheader140.i.us.i.i

.preheader140.i.us.i.i:                           ; preds = %.preheader140.i.us.i.i.preheader, %.preheader140.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i, %.preheader140.i.us.i.i ], [ %indvars.iv.i.us.i.i.ph, %.preheader140.i.us.i.i.preheader ] ; 3 uses
  %i.xq = trunc nuw i64 %indvars.iv.i.us.i.i to i32
  %i.xr = add i32 %i.ub, %i.xq
  %i.xs = mul i32 %i.xr, 3                        ; 3 uses
  %i.xt = getelementptr inbounds nuw [12 x i8], ptr %i.uc, i64 %indvars.iv.i.us.i.i ; 2 uses
  %i.xu = zext i32 %i.xs to i64
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !3
  %i.xx = add i32 %i.xs, 1
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !3
  %i.yb = insertelement <2 x i32> poison, i32 %i.xw, i64 0
  %i.yc = insertelement <2 x i32> %i.yb, i32 %i.ya, i64 1
  %i.yd = sitofp <2 x i32> %i.yc to <2 x float>
  %i.ye = fmul <2 x float> %i.tz, %i.yd
  %i.yf = fptosi <2 x float> %i.ye to <2 x i32>
  store <2 x i32> %i.yf, ptr %i.xt, align 4, !tbaa !3
  %i.yg = add i32 %i.xs, 2
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !3
  %i.yk = sitofp i32 %i.yj to float
  %i.yl = fmul float %i.tp, %i.yk
  %i.ym = fptosi float %i.yl to i32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !3
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond.not.i.us.i.i, label %._crit_edge.i.us.i.i, label %.preheader140.i.us.i.i, !llvm.loop !222

._crit_edge.i.us.i.i:                             ; preds = %.preheader140.i.us.i.i
  %indvars.iv.next190.i.us.i.i = add nuw nsw i64 %indvars.iv189.i.us.i.i, 1 ; 2 uses
  %exitcond193.not.i.us.i.i = icmp eq i64 %indvars.iv.next190.i.us.i.i, %wide.trip.count192.i.i.i
  br i1 %exitcond193.not.i.us.i.i, label %.lr.ph169.i.us.i.i, label %.preheader141.i.us.i.i, !llvm.loop !223

.lr.ph169.i.us.i.i:                               ; preds = %._crit_edge.i.us.i.i
  %i.yo = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !34
  br label %bb.bw

._crit_edge170.i.us.i.i:                          ; preds = %._crit_edge162.i.us.us.i.i, %.preheader141.lr.ph.i.us.i.i
  %indvars.iv.next215.i.us.i.i = add nuw nsw i64 %indvars.iv214.i.us.i.i, 1 ; 2 uses
  %exitcond218.not.i.us.i.i = icmp eq i64 %indvars.iv.next215.i.us.i.i, %wide.trip.count217.i.i.i
  br i1 %exitcond218.not.i.us.i.i, label %opj_tcd_makelayer_fixed.exit.loopexit.i.i, label %.preheader141.lr.ph.i.us.i.i, !llvm.loop !224

bb.bw:                                            ; preds = %._crit_edge162.i.us.us.i.i, %.lr.ph169.i.us.i.i
  %indvars.iv209.i.us.us.i.i = phi i64 [ 0, %.lr.ph169.i.us.i.i ], [ %indvars.iv.next210.i.us.us.i.i, %._crit_edge162.i.us.us.i.i ] ; 3 uses
  %i.yq = getelementptr inbounds nuw [192 x i8], ptr %i.yp, i64 %indvars.iv209.i.us.us.i.i ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !104 ; 2 uses
  %.not184.i.us.us.i.i = icmp eq i32 %i.ys, 0
  br i1 %.not184.i.us.us.i.i, label %._crit_edge162.i.us.us.i.i, label %.lr.ph161.i.us.us.i.i

.lr.ph161.i.us.us.i.i:                            ; preds = %bb.bw
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yq, i64 20
  %gep172.i.us.us.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep171.i.i.i, i64 %indvars.iv209.i.us.us.i.i
  %wide.trip.count207.i.us.us.i.i = zext i32 %i.ys to i64
  br label %bb.bx

._crit_edge162.i.us.us.i.i:                       ; preds = %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i, %bb.bw
  %indvars.iv.next210.i.us.us.i.i = add nuw nsw i64 %indvars.iv209.i.us.us.i.i, 1 ; 2 uses
  %exitcond213.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next210.i.us.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond213.not.i.us.us.i.i, label %._crit_edge170.i.us.i.i, label %bb.bw, !llvm.loop !225

bb.bx:                                            ; preds = %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i, %.lr.ph161.i.us.us.i.i
  %indvars.iv204.i.us.us.us.i.i = phi i64 [ 0, %.lr.ph161.i.us.us.i.i ], [ %indvars.iv.next205.i.us.us.us.i.i, %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i ] ; 3 uses
  %i.yw = getelementptr inbounds nuw [48 x i8], ptr %i.yt, i64 %indvars.iv204.i.us.us.us.i.i ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !110
  %i.yz = load i32, ptr %i.yw, align 8, !tbaa !108
  %i.za = icmp eq i32 %i.yy, %i.yz
  br i1 %i.za, label %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i, label %opj_tcd_is_band_empty.exit.i.us.us.us.i.i

opj_tcd_is_band_empty.exit.i.us.us.us.i.i:        ; preds = %bb.bx
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 12
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !111
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !109
  %.not.i.us.us.us.i.i = icmp eq i32 %i.zc, %i.ze
  br i1 %.not.i.us.us.us.i.i, label %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i, label %.preheader.i.us.us.us.i.i

.preheader.i.us.us.us.i.i:                        ; preds = %opj_tcd_is_band_empty.exit.i.us.us.us.i.i
  %i.zf = load i32, ptr %i.yu, align 8, !tbaa !102
  %i.zg = load i32, ptr %i.yv, align 4, !tbaa !103
  %i.zh = mul i32 %i.zg, %i.zf                    ; 2 uses
  %.not185.i.us.us.us.i.i = icmp eq i32 %i.zh, 0
  br i1 %.not185.i.us.us.us.i.i, label %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i, label %.lr.ph158.i.us.us.us.i.i

.lr.ph158.i.us.us.us.i.i:                         ; preds = %.preheader.i.us.us.us.i.i
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !38
  %gep.i.us.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %gep172.i.us.us.i.i, i64 %indvars.iv204.i.us.us.us.i.i
  %wide.trip.count202.i.us.us.us.i.i = zext i32 %i.zh to i64
  br label %bb.by

opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i: ; preds = %._crit_edge156.i.us.us.us.us.i.i, %.preheader.i.us.us.us.i.i, %opj_tcd_is_band_empty.exit.i.us.us.us.i.i, %bb.bx
  %indvars.iv.next205.i.us.us.us.i.i = add nuw nsw i64 %indvars.iv204.i.us.us.us.i.i, 1 ; 2 uses
  %exitcond208.not.i.us.us.us.i.i = icmp eq i64 %indvars.iv.next205.i.us.us.us.i.i, %wide.trip.count207.i.us.us.i.i
  br i1 %exitcond208.not.i.us.us.us.i.i, label %._crit_edge162.i.us.us.i.i, label %bb.bx, !llvm.loop !226

bb.by:                                            ; preds = %._crit_edge156.i.us.us.us.us.i.i, %.lr.ph158.i.us.us.us.i.i
  %indvars.iv199.i.us.us.us.us.i.i = phi i64 [ 0, %.lr.ph158.i.us.us.us.i.i ], [ %indvars.iv.next200.i.us.us.us.us.i.i, %._crit_edge156.i.us.us.us.us.i.i ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [56 x i8], ptr %i.zj, i64 %indvars.iv199.i.us.us.us.us.i.i ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !124
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 20
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !125
  %i.zp = mul i32 %i.zo, %i.zm                    ; 2 uses
  %.not186.i.us.us.us.us.i.i = icmp eq i32 %i.zp, 0
  br i1 %.not186.i.us.us.us.us.i.i, label %._crit_edge156.i.us.us.us.us.i.i, label %.lr.ph.i.us.us.us.us.i.i

.lr.ph.i.us.us.us.us.i.i:                         ; preds = %bb.by
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %wide.trip.count197.i.us.us.us.us.i.i = zext i32 %i.zp to i64
  %i.zr = load i32, ptr %gep.i.us.us.us.i.i, align 4, !tbaa !3 ; 2 uses
  br label %bb.bz

._crit_edge156.i.us.us.us.us.i.i:                 ; preds = %bb.cb, %bb.by
  %indvars.iv.next200.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv199.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond203.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next200.i.us.us.us.us.i.i, %wide.trip.count202.i.us.us.us.i.i
  br i1 %exitcond203.not.i.us.us.us.us.i.i, label %opj_tcd_is_band_empty.exit.thread.i.us.us.us.i.i, label %bb.by, !llvm.loop !227

bb.bz:                                            ; preds = %bb.cb, %.lr.ph.i.us.us.us.us.i.i
  %indvars.iv194.i.us.us.us.us.us.i.i = phi i64 [ 0, %.lr.ph.i.us.us.us.us.i.i ], [ %indvars.iv.next195.i.us.us.us.us.us.i.i, %bb.cb ] ; 2 uses
  %i.zs = load ptr, ptr %i.zq, align 8, !tbaa !31
  %i.zt = getelementptr inbounds nuw [64 x i8], ptr %i.zs, i64 %indvars.iv194.i.us.us.us.us.us.i.i ; 5 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !140 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !228
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zt, i64 56 ; 2 uses
  store i32 0, ptr %i.zy, align 8, !tbaa !229
  %i.zz = sub i32 %i.tm, %i.zx                    ; 2 uses
  %.not126.i.us.us.us.us.us.i.i = icmp slt i32 %i.zz, %i.zr
  %i.aaa = sub nsw i32 %i.zr, %i.zz
  %spec.select.i.us.us.us.us.us.i.i = select i1 %.not126.i.us.us.us.us.us.i.i, i32 %i.aaa, i32 0 ; 2 uses
  %.not127.i.us.us.us.us.us.i.i = icmp eq i32 %spec.select.i.us.us.us.us.us.i.i, 0
  %i.aab = mul i32 %spec.select.i.us.us.us.us.us.i.i, 3
  %i.aac = add i32 %i.aab, -2                     ; 2 uses
  %.0109.i.us.us.us.us.us.i.i = select i1 %.not127.i.us.us.us.us.us.i.i, i32 0, i32 %i.aac ; 3 uses
  store i32 %.0109.i.us.us.us.us.us.i.i, ptr %i.zv, align 8, !tbaa !230
  %.not128.i.us.us.us.us.us.i.i = icmp eq i32 %.0109.i.us.us.us.us.us.i.i, 0
  br i1 %.not128.i.us.us.us.us.us.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !144
  %i.aaf = add i32 %.0109.i.us.us.us.us.us.i.i, -1
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [24 x i8], ptr %i.aae, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !201
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  store i32 %i.aai, ptr %i.aaj, align 4, !tbaa !232
  %i.aak = load ptr, ptr %i.zt, align 8, !tbaa !150
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  store ptr %i.aak, ptr %i.aal, align 8, !tbaa !233
  store i32 %i.aac, ptr %i.zy, align 8, !tbaa !229
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %indvars.iv.next195.i.us.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv194.i.us.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond198.not.i.us.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next195.i.us.us.us.us.us.i.i, %wide.trip.count197.i.us.us.us.us.i.i
  br i1 %exitcond198.not.i.us.us.us.us.us.i.i, label %._crit_edge156.i.us.us.us.us.i.i, label %bb.bz, !llvm.loop !234

.preheader141.lr.ph.i.i.i:                        ; preds = %.lr.ph178.i.i.i, %._crit_edge170.i.i.i
  %indvars.iv214.i.i.i = phi i64 [ %indvars.iv.next215.i.i.i, %._crit_edge170.i.i.i ], [ 0, %.lr.ph178.i.i.i ] ; 3 uses
  %i.aam = getelementptr inbounds nuw [112 x i8], ptr %i.ta, i64 %indvars.iv214.i.i.i ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 20
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !95 ; 5 uses
  %.not182.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not182.i.i.i, label %._crit_edge170.i.i.i, label %.preheader141.lr.ph.split.i.i.i

.preheader141.lr.ph.split.i.i.i:                  ; preds = %.preheader141.lr.ph.i.i.i
  %i.aan = load ptr, ptr %i.tb, align 8, !tbaa !31 ; 15 uses
  %i.aao = load ptr, ptr %i.sy, align 8, !tbaa !16
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !70
  %i.aar = getelementptr inbounds nuw [64 x i8], ptr %i.aaq, i64 %indvars.iv214.i.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !113 ; 2 uses
  %i.aau = uitofp i32 %i.aat to double
  %i.aav = fmul nnan double %i.aau, 6.250000e-02
  %i.aaw = fptrunc nnan double %i.aav to float    ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %.pre.i.i.i to i64 ; 5 uses
  %i.aax = add nsw i64 %wide.trip.count.i.i.i, -1 ; 3 uses
  %i.aay = mul i32 %.pre.i.i.i, 3
  %i.aaz = zext i32 %i.aay to i64
  %min.iters.check245 = icmp ult i32 %.pre.i.i.i, 9
  %i.aba = trunc i64 %i.aax to i32
  %mul235 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aba, i32 3) ; 2 uses
  %mul.result236 = extractvalue { i32, i1 } %mul235, 0 ; 3 uses
  %mul.overflow237 = extractvalue { i32, i1 } %mul235, 1
  %9 = icmp ugt i64 %i.aax, 4294967295
  %i.abb = icmp ugt i64 %i.aax, 4294967295
  %invariant.op = or i1 %i.abb, %mul.overflow237
  %n.mod.vf247 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %i.abc = icmp eq i64 %n.mod.vf247, 0
  %i.abd = select i1 %i.abc, i64 4, i64 %n.mod.vf247
  %n.vec248 = sub nsw i64 %wide.trip.count.i.i.i, %i.abd ; 2 uses
  %broadcast.splatinsert249 = insertelement <4 x float> poison, float %i.aaw, i64 0 ; 2 uses
  %broadcast.splat250 = shufflevector <4 x float> %broadcast.splatinsert249, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abe = shufflevector <4 x float> %broadcast.splatinsert249, <4 x float> poison, <8 x i32> zeroinitializer
  %i.abf = insertelement <2 x float> poison, float %i.aaw, i64 0
  %i.abg = shufflevector <2 x float> %i.abf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader141.i.i.i

.lr.ph169.i.i.i:                                  ; preds = %._crit_edge.i.i.i
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !34
  br label %bb.cc

.preheader141.i.i.i:                              ; preds = %._crit_edge.i.i.i, %.preheader141.lr.ph.split.i.i.i
  %indvars.iv189.i.i.i = phi i64 [ 0, %.preheader141.lr.ph.split.i.i.i ], [ %indvars.iv.next190.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.abj = trunc nuw i64 %indvars.iv189.i.i.i to i32
  %i.abk = mul i32 %.pre.i.i.i, %i.abj            ; 5 uses
  %i.abl = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %indvars.iv189.i.i.i ; 2 uses
  br i1 %min.iters.check245, label %.preheader140.i.i.i.preheader, label %vector.scevcheck234

vector.scevcheck234:                              ; preds = %.preheader141.i.i.i
  %i.abm = mul i64 %indvars.iv189.i.i.i, %i.aaz   ; 3 uses
  %i.abn = trunc i64 %i.abm to i32
  %i.abo = trunc i64 %i.abm to i32
  %i.abp = trunc i64 %i.abm to i32
  %i.abq = xor i32 %i.abp, -1
  %i.abr = icmp ugt i32 %mul.result236, %i.abq
  %i.abs = sub i32 -2, %i.abo
  %i.abt = icmp ult i32 %i.abs, %mul.result236
  %.reass.a = or i1 %i.abt, %9
  %i.abu = sub i32 -3, %i.abn
  %i.abv = icmp ult i32 %i.abu, %mul.result236
  %i.abw = or i1 %i.abv, %invariant.op
  %i.abx = or i1 %.reass.a, %i.abr
  %i.aby = or i1 %i.abx, %i.abw
  br i1 %i.aby, label %.preheader140.i.i.i.preheader, label %vector.body251

vector.body251:                                   ; preds = %vector.scevcheck234, %vector.body251
  %index252 = phi i64 [ %index.next254, %vector.body251 ], [ 0, %vector.scevcheck234 ] ; 3 uses
  %i.abz = trunc i64 %index252 to i32             ; 4 uses
  %i.aca = or disjoint i32 %i.abz, 1
  %i.acb = or disjoint i32 %i.abz, 2
  %i.acc = or disjoint i32 %i.abz, 3
  %i.acd = add i32 %i.abk, %i.abz
  %i.ace = add i32 %i.abk, %i.aca
  %i.acf = add i32 %i.abk, %i.acb
  %i.acg = add i32 %i.abk, %i.acc
  %i.ach = mul i32 %i.acd, 3                      ; 3 uses
  %i.aci = mul i32 %i.ace, 3                      ; 3 uses
  %i.acj = mul i32 %i.acf, 3                      ; 3 uses
  %i.ack = mul i32 %i.acg, 3                      ; 3 uses
  %i.acl = getelementptr inbounds nuw [12 x i8], ptr %i.abl, i64 %index252
  %i.acm = zext i32 %i.ach to i64
  %i.acn = zext i32 %i.aci to i64
  %i.aco = zext i32 %i.acj to i64
  %i.acp = zext i32 %i.ack to i64
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.acm
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.acn
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aco
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.acp
  %i.acu = load i32, ptr %i.acq, align 4, !tbaa !3
  %i.acv = load i32, ptr %i.acr, align 4, !tbaa !3
  %i.acw = load i32, ptr %i.acs, align 4, !tbaa !3
  %i.acx = load i32, ptr %i.act, align 4, !tbaa !3
  %i.acy = insertelement <4 x i32> poison, i32 %i.acu, i64 0
  %i.acz = insertelement <4 x i32> %i.acy, i32 %i.acv, i64 1
  %i.ada = insertelement <4 x i32> %i.acz, i32 %i.acw, i64 2
  %i.adb = insertelement <4 x i32> %i.ada, i32 %i.acx, i64 3
  %i.adc = add i32 %i.ach, 1
  %i.add = add i32 %i.aci, 1
  %i.ade = add i32 %i.acj, 1
  %i.adf = add i32 %i.ack, 1
  %i.adg = zext i32 %i.adc to i64
  %i.adh = zext i32 %i.add to i64
  %i.adi = zext i32 %i.ade to i64
  %i.adj = zext i32 %i.adf to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.adg
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.adh
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.adi
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.adj
  %i.ado = load i32, ptr %i.adk, align 4, !tbaa !3
  %i.adp = load i32, ptr %i.adl, align 4, !tbaa !3
  %i.adq = load i32, ptr %i.adm, align 4, !tbaa !3
  %i.adr = load i32, ptr %i.adn, align 4, !tbaa !3
  %i.ads = insertelement <4 x i32> poison, i32 %i.ado, i64 0
  %i.adt = insertelement <4 x i32> %i.ads, i32 %i.adp, i64 1
  %i.adu = insertelement <4 x i32> %i.adt, i32 %i.adq, i64 2
  %i.adv = insertelement <4 x i32> %i.adu, i32 %i.adr, i64 3
  %i.adw = add i32 %i.ach, 2
  %i.adx = add i32 %i.aci, 2
  %i.ady = add i32 %i.acj, 2
  %i.adz = add i32 %i.ack, 2
  %i.aea = zext i32 %i.adw to i64
  %i.aeb = zext i32 %i.adx to i64
  %i.aec = zext i32 %i.ady to i64
  %i.aed = zext i32 %i.adz to i64
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aea
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aeb
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aec
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aed
  %i.aei = load i32, ptr %i.aee, align 4, !tbaa !3
  %i.aej = load i32, ptr %i.aef, align 4, !tbaa !3
  %i.aek = load i32, ptr %i.aeg, align 4, !tbaa !3
  %i.ael = load i32, ptr %i.aeh, align 4, !tbaa !3
  %i.aem = insertelement <4 x i32> poison, i32 %i.aei, i64 0
  %i.aen = insertelement <4 x i32> %i.aem, i32 %i.aej, i64 1
  %i.aeo = insertelement <4 x i32> %i.aen, i32 %i.aek, i64 2
  %i.aep = insertelement <4 x i32> %i.aeo, i32 %i.ael, i64 3
  %i.aeq = sitofp <4 x i32> %i.aep to <4 x float>
  %i.aer = fmul <4 x float> %broadcast.splat250, %i.aeq
  %i.aes = fptosi <4 x float> %i.aer to <4 x i32>
  %i.aet = shufflevector <4 x i32> %i.adb, <4 x i32> %i.adv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aeu = sitofp <8 x i32> %i.aet to <8 x float>
  %i.aev = fmul <8 x float> %i.abe, %i.aeu
  %i.aew = fptosi <8 x float> %i.aev to <8 x i32>
  %i.aex = shufflevector <4 x i32> %i.aes, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec253 = shufflevector <8 x i32> %i.aew, <8 x i32> %i.aex, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i32> %interleaved.vec253, ptr %i.acl, align 8, !tbaa !3
  %index.next254 = add nuw i64 %index252, 4       ; 2 uses
  %i.aey = icmp eq i64 %index.next254, %n.vec248
  br i1 %i.aey, label %.preheader140.i.i.i.preheader, label %vector.body251, !llvm.loop !235

.preheader140.i.i.i.preheader:                    ; preds = %vector.body251, %vector.scevcheck234, %.preheader141.i.i.i
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.scevcheck234 ], [ 0, %.preheader141.i.i.i ], [ %n.vec248, %vector.body251 ]
  br label %.preheader140.i.i.i

.preheader140.i.i.i:                              ; preds = %.preheader140.i.i.i.preheader, %.preheader140.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader140.i.i.i ], [ %indvars.iv.i.i.i.ph, %.preheader140.i.i.i.preheader ] ; 3 uses
  %i.aez = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.afa = add i32 %i.abk, %i.aez
  %i.afb = mul i32 %i.afa, 3                      ; 3 uses
  %i.afc = getelementptr inbounds nuw [12 x i8], ptr %i.abl, i64 %indvars.iv.i.i.i ; 2 uses
  %i.afd = zext i32 %i.afb to i64
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.afd
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !3
  %i.afg = add i32 %i.afb, 1
  %i.afh = zext i32 %i.afg to i64
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.afh
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !3
  %i.afk = insertelement <2 x i32> poison, i32 %i.aff, i64 0
  %i.afl = insertelement <2 x i32> %i.afk, i32 %i.afj, i64 1
  %i.afm = sitofp <2 x i32> %i.afl to <2 x float>
  %i.afn = fmul <2 x float> %i.abg, %i.afm
  %i.afo = fptosi <2 x float> %i.afn to <2 x i32>
  store <2 x i32> %i.afo, ptr %i.afc, align 4, !tbaa !3
  %i.afp = add i32 %i.afb, 2
  %i.afq = zext i32 %i.afp to i64
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !3
  %i.aft = sitofp i32 %i.afs to float
  %i.afu = fmul float %i.aaw, %i.aft
  %i.afv = fptosi float %i.afu to i32
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  store i32 %i.afv, ptr %i.afw, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.preheader140.i.i.i, !llvm.loop !236

._crit_edge.i.i.i:                                ; preds = %.preheader140.i.i.i
  %indvars.iv.next190.i.i.i = add nuw nsw i64 %indvars.iv189.i.i.i, 1 ; 2 uses
  %exitcond193.not.i.i.i = icmp eq i64 %indvars.iv.next190.i.i.i, %wide.trip.count192.i.i.i
  br i1 %exitcond193.not.i.i.i, label %.lr.ph169.i.i.i, label %.preheader141.i.i.i, !llvm.loop !223

bb.cc:                                            ; preds = %._crit_edge162.i.i.i, %.lr.ph169.i.i.i
  %indvars.iv209.i.i.i = phi i64 [ 0, %.lr.ph169.i.i.i ], [ %indvars.iv.next210.i.i.i, %._crit_edge162.i.i.i ] ; 4 uses
  %i.afx = getelementptr inbounds nuw [192 x i8], ptr %i.abi, i64 %indvars.iv209.i.i.i ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 24
  %i.afz = load i32, ptr %i.afy, align 8, !tbaa !104 ; 2 uses
  %.not184.i.i.i = icmp eq i32 %i.afz, 0
  br i1 %.not184.i.i.i, label %._crit_edge162.i.i.i, label %.lr.ph161.i.i.i

.lr.ph161.i.i.i:                                  ; preds = %bb.cc
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 32
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afx, i64 20
  %gep172.i.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep171.i.i.i, i64 %indvars.iv209.i.i.i
  %gep173.i.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv209.i.i.i
  %wide.trip.count207.i.i.i = zext i32 %i.afz to i64
  br label %bb.cd

bb.cd:                                            ; preds = %opj_tcd_is_band_empty.exit.thread.i.i.i, %.lr.ph161.i.i.i
  %indvars.iv204.i.i.i = phi i64 [ 0, %.lr.ph161.i.i.i ], [ %indvars.iv.next205.i.i.i, %opj_tcd_is_band_empty.exit.thread.i.i.i ] ; 4 uses
  %i.agd = getelementptr inbounds nuw [48 x i8], ptr %i.aga, i64 %indvars.iv204.i.i.i ; 5 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !110
  %i.agg = load i32, ptr %i.agd, align 8, !tbaa !108
  %i.agh = icmp eq i32 %i.agf, %i.agg
  br i1 %i.agh, label %opj_tcd_is_band_empty.exit.thread.i.i.i, label %opj_tcd_is_band_empty.exit.i.i.i

opj_tcd_is_band_empty.exit.i.i.i:                 ; preds = %bb.cd
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agd, i64 12
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !111
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !109
  %.not.i.i.i = icmp eq i32 %i.agj, %i.agl
  br i1 %.not.i.i.i, label %opj_tcd_is_band_empty.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %opj_tcd_is_band_empty.exit.i.i.i
  %i.agm = load i32, ptr %i.agb, align 8, !tbaa !102
  %i.agn = load i32, ptr %i.agc, align 4, !tbaa !103
  %i.ago = mul i32 %i.agn, %i.agm                 ; 2 uses
  %.not185.i.i.i = icmp eq i32 %i.ago, 0
  br i1 %.not185.i.i.i, label %opj_tcd_is_band_empty.exit.thread.i.i.i, label %.lr.ph158.i.i.i

.lr.ph158.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !38
  %gep.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %gep172.i.i.i, i64 %indvars.iv204.i.i.i
  %gep165.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %gep173.i.i.i, i64 %indvars.iv204.i.i.i
  %wide.trip.count202.i.i.i = zext i32 %i.ago to i64
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge156.i.i.i, %.lr.ph158.i.i.i
  %indvars.iv199.i.i.i = phi i64 [ 0, %.lr.ph158.i.i.i ], [ %indvars.iv.next200.i.i.i, %._crit_edge156.i.i.i ] ; 2 uses
  %i.agr = getelementptr inbounds nuw [56 x i8], ptr %i.agq, i64 %indvars.iv199.i.i.i ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !124
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agr, i64 20
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !125
  %i.agw = mul i32 %i.agv, %i.agt                 ; 2 uses
  %.not186.i.i.i = icmp eq i32 %i.agw, 0
  br i1 %.not186.i.i.i, label %._crit_edge156.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ce
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agr, i64 24
  %wide.trip.count197.i.i.i = zext i32 %i.agw to i64
  %i.agy = load i32, ptr %gep.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.agz = load i32, ptr %gep165.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.aha = sub nsw i32 %i.agy, %i.agz
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ci, %.lr.ph.i.i.i
  %indvars.iv194.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next195.i.i.i, %bb.ci ] ; 2 uses
  %i.ahb = load ptr, ptr %i.agx, align 8, !tbaa !31
  %i.ahc = getelementptr inbounds nuw [64 x i8], ptr %i.ahb, i64 %indvars.iv194.i.i.i ; 7 uses
end_hunk_0
