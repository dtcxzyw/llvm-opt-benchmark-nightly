Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_Crowd?download=true
inline.NumInlined: 240
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14CrowdToolState6renderEv:bb.a
  %i.nx = load float, ptr %i.ea, align 8, !tbaa !71
  %i.ny = load float, ptr %i.eb, align 4, !tbaa !71
  %i.nz = fadd float %i.ny, 3.000000e-01
  %i.oa = load float, ptr %i.ec, align 8, !tbaa !71
  %i.ob = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 48
  %i.od = load ptr, ptr %i.oc, align 8
  tail call void %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %i.nx, float noundef %i.nz, float noundef %i.oa, i32 noundef -1073709056) #15, !call_target !165
  %i.oe = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 72
  %i.og = load ptr, ptr %i.of, align 8
  tail call void %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !call_target !162
  br label %bb.ap

bb.ap:                                            ; preds = %bb.y, %bb.ao, %bb.an, %bb.x
  %i.oh = add nuw nsw i32 %.0397472, 1            ; 2 uses
  %i.oi = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.oj = icmp slt i32 %i.oh, %i.oi
  br i1 %i.oj, label %bb.w, label %.preheader428, !llvm.loop !133

.preheader427:                                    ; preds = %bb.as, %.preheader428
  %i.ok = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %.lr.ph478, label %._crit_edge479

bb.aq:                                            ; preds = %.lr.ph476, %bb.as
  %.0391475 = phi i32 [ 0, %.lr.ph476 ], [ %i.oz, %bb.as ] ; 3 uses
  %i.om = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.i, i32 noundef %.0391475) #15 ; 5 uses
  %i.on = load i8, ptr %i.om, align 8, !tbaa !67, !range !56, !noundef !57
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 480
  %i.oq = load float, ptr %i.op, align 8, !tbaa !86
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 416
  %i.os = load i32, ptr %i.gb, align 8, !tbaa !37
  %i.ot = icmp eq i32 %i.os, %.0391475
  %spec.select426 = select i1 %i.ot, i32 -2147483393, i32 536870912
  %i.ou = load float, ptr %i.or, align 8, !tbaa !71
  %i.ov = getelementptr inbounds nuw i8, ptr %i.om, i64 420
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !71
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 424
  %i.oy = load float, ptr %i.ox, align 8, !tbaa !71
  tail call void @_Z17duDebugDrawCircleP11duDebugDrawffffjf(ptr noundef nonnull %i.c, float noundef %i.ou, float noundef %i.ow, float noundef %i.oy, float noundef %i.oq, i32 noundef %spec.select426, float noundef 2.000000e+00) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.oz = add nuw nsw i32 %.0391475, 1            ; 2 uses
  %i.pa = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.pb = icmp slt i32 %i.oz, %i.pa
  br i1 %i.pb, label %bb.aq, label %.preheader427, !llvm.loop !134

._crit_edge479:                                   ; preds = %bb.av, %.preheader427
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 98963
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !173, !range !56, !noundef !57
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge479
  %i.pf = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %.lr.ph486, label %.loopexit

.lr.ph486:                                        ; preds = %.preheader
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 98970
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.aw

.lr.ph478:                                        ; preds = %.preheader427, %bb.av
  %.0389477 = phi i32 [ %i.qh, %bb.av ], [ 0, %.preheader427 ] ; 2 uses
  %i.pk = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.i, i32 noundef %.0389477) #15 ; 7 uses
  %i.pl = load i8, ptr %i.pk, align 8, !tbaa !67, !range !56, !noundef !57
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.lr.ph478
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 480
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 484
  %i.pp = load float, ptr %i.po, align 4, !tbaa !92
  %i.pq = load float, ptr %i.pn, align 8, !tbaa !86 ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 416
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 592
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !174
  %switch.tableidx = add i8 %i.pt, -1             ; 2 uses
  %i.pu = icmp ult i8 %switch.tableidx, 6
  br i1 %i.pu, label %switch.lookup, label %bb.au

switch.lookup:                                    ; preds = %bb.at
  %i.pv = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN14CrowdToolState6renderEv, i64 %i.pv
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.au

bb.au:                                            ; preds = %switch.lookup, %bb.at
  %.0388 = phi i32 [ %switch.load, %switch.lookup ], [ -2133009188, %bb.at ]
  %i.pw = load float, ptr %i.pr, align 8, !tbaa !71 ; 2 uses
  %i.px = fsub float %i.pw, %i.pq
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 420
  %i.pz = load float, ptr %i.py, align 4, !tbaa !71 ; 2 uses
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.pq, float 1.000000e-01, float %i.pz)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pk, i64 424
  %i.qc = load float, ptr %i.qb, align 8, !tbaa !71 ; 2 uses
  %i.qd = fsub float %i.qc, %i.pq
  %i.qe = fadd float %i.pq, %i.pw
  %i.qf = fadd float %i.pp, %i.pz
  %i.qg = fadd float %i.pq, %i.qc
  tail call void @_Z19duDebugDrawCylinderP11duDebugDrawffffffj(ptr noundef nonnull %i.c, float noundef %i.px, float noundef %i.qa, float noundef %i.qd, float noundef %i.qe, float noundef %i.qf, float noundef %i.qg, i32 noundef %.0388) #15
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph478, %bb.au
  %i.qh = add nuw nsw i32 %.0389477, 1            ; 2 uses
  %i.qi = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.qj = icmp slt i32 %i.qh, %i.qi
  br i1 %i.qj, label %.lr.ph478, label %._crit_edge479, !llvm.loop !135

bb.aw:                                            ; preds = %.lr.ph486, %bb.bb
  %.0387484 = phi i32 [ 0, %.lr.ph486 ], [ %i.uy, %bb.bb ] ; 3 uses
  %i.qk = load i8, ptr %i.ph, align 2, !tbaa !61, !range !56, !noundef !57
  %i.ql = icmp eq i8 %i.qk, 0
  br i1 %i.ql, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qm = load i32, ptr %i.pi, align 8, !tbaa !37
  %.not417 = icmp eq i32 %.0387484, %i.qm
  br i1 %.not417, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qn = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.i, i32 noundef %.0387484) #15 ; 6 uses
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !67, !range !56, !noundef !57
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.qq = load ptr, ptr %i.pj, align 8, !tbaa !38 ; 6 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 416
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !71 ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 420
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !71
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qn, i64 484
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !92
  %i.qx = fadd float %i.qu, %i.qw                 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qn, i64 424
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !71 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 492
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !93
  tail call void @_Z17duDebugDrawCircleP11duDebugDrawffffjf(ptr noundef nonnull %i.c, float noundef %i.qs, float noundef %i.qx, float noundef %i.qz, float noundef %i.rb, i32 noundef 1090519039, float noundef 2.000000e+00) #15
  %i.rc = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = load ptr, ptr %i.rd, align 8
  tail call void %i.re(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef 3, float noundef 1.000000e+00) #15, !call_target !150
  %i.rf = load i32, ptr %i.qq, align 8, !tbaa !176
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %bb.az
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qq, i64 48
  br label %bb.ba

._crit_edge483:                                   ; preds = %bb.ba, %bb.az
  %i.rl = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 72
  %i.rn = load ptr, ptr %i.rm, align 8
  tail call void %i.rn(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !call_target !162
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph482, %bb.ba
  %indvars.iv508 = phi i64 [ 0, %.lr.ph482 ], [ %indvars.iv.next509, %bb.ba ] ; 5 uses
  %i.ro = load ptr, ptr %i.rh, align 8, !tbaa !177
  %.idx = mul nuw nsw i64 %indvars.iv508, 12
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.idx ; 5 uses
  %i.rq = load ptr, ptr %i.ri, align 8, !tbaa !178
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %indvars.iv508
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !71 ; 8 uses
  %i.rt = load ptr, ptr %i.rj, align 8, !tbaa !179
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv508
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !71
  %i.rw = load ptr, ptr %i.rk, align 8, !tbaa !180
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv508
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !71
  %i.rz = fmul float %i.rv, 2.550000e+02
  %i.sa = fptosi float %i.rz to i32               ; 3 uses
  %i.sb = sub i32 255, %i.sa
  %i.sc = mul i32 %i.sb, 255                      ; 3 uses
  %i.sd = shl i32 %i.sa, 7
  %i.se = add i32 %i.sc, %i.sd
  %i.sf = udiv i32 %i.se, 255                     ; 2 uses
  %i.sg = mul i32 %i.sa, 96
  %i.sh = add i32 %i.sc, %i.sg
  %i.si = udiv i32 %i.sh, 255
  %i.sj = udiv i32 %i.sc, 255
  %i.sk = shl i32 %i.si, 8
  %i.sl = shl i32 %i.sj, 16
  %i.sm = or i32 %i.sl, %i.sk
  %i.sn = or i32 %i.sm, %i.sf                     ; 3 uses
  %i.so = fmul float %i.ry, 1.280000e+02
  %1 = fptosi float %i.so to i32                  ; 3 uses
  %2 = lshr i32 %i.sn, 24
  %3 = or i32 %2, 220
  %i.sp = and i32 %i.sf, 255
  %i.sq = lshr i32 %i.sn, 8
  %i.sr = and i32 %i.sq, 255
  %i.ss = lshr i32 %i.sn, 16
  %i.st = and i32 %i.ss, 255
  %i.su = sub i32 255, %1                         ; 4 uses
  %i.sv = mul i32 %i.sp, %i.su
  %i.sw = shl i32 %1, 7
  %i.sx = add i32 %i.sv, %i.sw
  %i.sy = mul i32 %i.sr, %i.su
  %i.sz = mul i32 %i.st, %i.su
  %i.ta = mul i32 %3, %i.su
  %i.tb = mul i32 %1, 220
  %i.tc = add i32 %i.ta, %i.tb
  %i.td = insertelement <4 x i32> poison, i32 %i.sx, i64 0
  %i.te = insertelement <4 x i32> %i.td, i32 %i.sy, i64 1
  %i.tf = insertelement <4 x i32> %i.te, i32 %i.sz, i64 2
  %i.tg = insertelement <4 x i32> %i.tf, i32 %i.tc, i64 3
  %i.th = udiv <4 x i32> %i.tg, splat (i32 255)
  %i.ti = shl <4 x i32> %i.th, <i32 0, i32 8, i32 16, i32 24>
  %i.tj = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ti) ; 4 uses
  %i.tk = load float, ptr %i.rp, align 4, !tbaa !71
  %i.tl = fadd float %i.qs, %i.tk
  %i.tm = fsub float %i.tl, %i.rs
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 4 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !71
  %i.tp = fadd float %i.qz, %i.to
  %i.tq = fsub float %i.tp, %i.rs
  %i.tr = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 48
  %i.tt = load ptr, ptr %i.ts, align 8
  tail call void %i.tt(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %i.tm, float noundef %i.qx, float noundef %i.tq, i32 noundef %i.tj) #15, !call_target !165
  %i.tu = load float, ptr %i.rp, align 4, !tbaa !71
  %i.tv = fadd float %i.qs, %i.tu
  %i.tw = fsub float %i.tv, %i.rs
  %i.tx = load float, ptr %i.tn, align 4, !tbaa !71
  %i.ty = fadd float %i.qz, %i.tx
  %i.tz = fadd float %i.rs, %i.ty
  %i.ua = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  %i.uc = load ptr, ptr %i.ub, align 8
  tail call void %i.uc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %i.tw, float noundef %i.qx, float noundef %i.tz, i32 noundef %i.tj) #15, !call_target !165
  %i.ud = load float, ptr %i.rp, align 4, !tbaa !71
  %i.ue = fadd float %i.qs, %i.ud
  %i.uf = fadd float %i.rs, %i.ue
  %i.ug = load float, ptr %i.tn, align 4, !tbaa !71
  %i.uh = fadd float %i.qz, %i.ug
  %i.ui = fadd float %i.rs, %i.uh
  %i.uj = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 48
  %i.ul = load ptr, ptr %i.uk, align 8
  tail call void %i.ul(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %i.uf, float noundef %i.qx, float noundef %i.ui, i32 noundef %i.tj) #15, !call_target !165
  %i.um = load float, ptr %i.rp, align 4, !tbaa !71
  %i.un = fadd float %i.qs, %i.um
  %i.uo = fadd float %i.rs, %i.un
  %i.up = load float, ptr %i.tn, align 4, !tbaa !71
  %i.uq = fadd float %i.qz, %i.up
  %i.ur = fsub float %i.uq, %i.rs
  %i.us = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 48
  %i.uu = load ptr, ptr %i.ut, align 8
  tail call void %i.uu(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %i.uo, float noundef %i.qx, float noundef %i.ur, i32 noundef %i.tj) #15, !call_target !165
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %i.uv = load i32, ptr %i.qq, align 8, !tbaa !176
  %i.uw = sext i32 %i.uv to i64
  %i.ux = icmp slt i64 %indvars.iv.next509, %i.uw
  br i1 %i.ux, label %bb.ba, label %._crit_edge483, !llvm.loop !136

bb.bb:                                            ; preds = %._crit_edge483, %bb.ay, %bb.ax
  %i.uy = add nuw nsw i32 %.0387484, 1            ; 2 uses
  %i.uz = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.va = icmp slt i32 %i.uy, %i.uz
  br i1 %i.va, label %bb.aw, label %.loopexit, !llvm.loop !137

.loopexit:                                        ; preds = %bb.bb, %.preheader, %._crit_edge479
  %i.vb = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.vc = icmp sgt i32 %i.vb, 0
  br i1 %i.vc, label %.lr.ph489, label %._crit_edge490

.lr.ph489:                                        ; preds = %.loopexit
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.bc

._crit_edge490:                                   ; preds = %bb.bf, %.loopexit
  %i.ve = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8
  tail call void %i.vg(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext true) #15, !call_target !143
  br label %bb.bg

bb.bc:                                            ; preds = %.lr.ph489, %bb.bf
  %.0385487 = phi i32 [ 0, %.lr.ph489 ], [ %i.xc, %bb.bf ] ; 3 uses
  %i.vh = tail call noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072) %i.i, i32 noundef %.0385487) #15 ; 13 uses
  %i.vi = load i8, ptr %i.vh, align 8, !tbaa !67, !range !56, !noundef !57
  %i.vj = trunc nuw i8 %i.vi to i1
  br i1 %i.vj, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 480
  %i.vl = load float, ptr %i.vk, align 8, !tbaa !86
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vh, i64 484
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !92 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vh, i64 416 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vh, i64 464
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vh, i64 440
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 592
  %i.vs = load i8, ptr %i.vr, align 8, !tbaa !174
  %switch.tableidx536 = add i8 %i.vs, -1          ; 2 uses
  %i.vt = icmp ult i8 %switch.tableidx536, 6
  br i1 %i.vt, label %switch.lookup537, label %bb.be

switch.lookup537:                                 ; preds = %bb.bd
  %i.vu = zext nneg i8 %switch.tableidx536 to i64
  %switch.gep538 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN14CrowdToolState6renderEv.1, i64 %i.vu
  %switch.load539 = load i32, ptr %switch.gep538, align 4
  br label %bb.be

bb.be:                                            ; preds = %switch.lookup537, %bb.bd
  %.0 = phi i32 [ %switch.load539, %switch.lookup537 ], [ -1059267364, %bb.bd ]
  %i.vv = load float, ptr %i.vo, align 8, !tbaa !71
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vh, i64 420 ; 3 uses
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !71
  %i.vy = fadd float %i.vn, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vh, i64 424 ; 3 uses
  %i.wa = load float, ptr %i.vz, align 8, !tbaa !71
  tail call void @_Z17duDebugDrawCircleP11duDebugDrawffffjf(ptr noundef nonnull %i.c, float noundef %i.vv, float noundef %i.vy, float noundef %i.wa, float noundef %i.vl, i32 noundef %.0, float noundef 2.000000e+00) #15
  %i.wb = load float, ptr %i.vo, align 8, !tbaa !71 ; 2 uses
  %i.wc = load float, ptr %i.vw, align 4, !tbaa !71
  %i.wd = fadd float %i.vn, %i.wc                 ; 2 uses
  %i.we = load float, ptr %i.vz, align 8, !tbaa !71 ; 2 uses
  %i.wf = load float, ptr %i.vq, align 8, !tbaa !71
  %i.wg = fadd float %i.wb, %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vh, i64 444
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !71
  %i.wj = fadd float %i.wd, %i.wi
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vh, i64 448
  %i.wl = load float, ptr %i.wk, align 8, !tbaa !71
  %i.wm = fadd float %i.we, %i.wl
  %i.wn = load i32, ptr %i.vd, align 8, !tbaa !37
  %i.wo = icmp eq i32 %i.wn, %.0385487
  %i.wp = select i1 %i.wo, float 2.000000e+00, float 1.000000e+00
  tail call void @_Z16duDebugDrawArrowP11duDebugDrawffffffffjf(ptr noundef nonnull %i.c, float noundef %i.wb, float noundef %i.wd, float noundef %i.we, float noundef %i.wg, float noundef %i.wj, float noundef %i.wm, float noundef 0.000000e+00, float noundef 4.000000e-01, i32 noundef -1056980992, float noundef %i.wp) #15
  %i.wq = load float, ptr %i.vo, align 8, !tbaa !71 ; 2 uses
  %i.wr = load float, ptr %i.vw, align 4, !tbaa !71
  %i.ws = fadd float %i.vn, %i.wr                 ; 2 uses
  %i.wt = load float, ptr %i.vz, align 8, !tbaa !71 ; 2 uses
  %i.wu = load float, ptr %i.vp, align 8, !tbaa !71
  %i.wv = fadd float %i.wq, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vh, i64 468
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !71
  %i.wy = fadd float %i.ws, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vh, i64 472
  %i.xa = load float, ptr %i.wz, align 8, !tbaa !71
  %i.xb = fadd float %i.wt, %i.xa
  tail call void @_Z16duDebugDrawArrowP11duDebugDrawffffffffjf(ptr noundef nonnull %i.c, float noundef %i.wq, float noundef %i.ws, float noundef %i.wt, float noundef %i.wv, float noundef %i.wy, float noundef %i.xb, float noundef 0.000000e+00, float noundef 4.000000e-01, i32 noundef -1610612736, float noundef 2.000000e+00) #15
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.be
  %i.xc = add nuw nsw i32 %.0385487, 1            ; 2 uses
  %i.xd = tail call noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072) %i.i) #15
  %i.xe = icmp slt i32 %i.xc, %i.xd
  br i1 %i.xe, label %bb.bc, label %._crit_edge490, !llvm.loop !138

bb.bg:                                            ; preds = %bb.a, %._crit_edge490
  ret void
}

declare void @_Z23duDebugDrawNavMeshNodesP11duDebugDrawRK14dtNavMeshQuery(ptr noundef, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare noundef i32 @_ZNK7dtCrowd13getAgentCountEv(ptr noundef nonnull align 8 dereferenceable(5072)) local_unnamed_addr #2

declare noundef ptr @_ZN7dtCrowd8getAgentEi(ptr noundef nonnull align 8 dereferenceable(5072), i32 noundef) local_unnamed_addr #2

declare void @_Z22duDebugDrawNavMeshPolyP11duDebugDrawRK9dtNavMeshjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16duDebugDrawCrossP11duDebugDrawffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK15dtProximityGrid14getItemCountAtEii(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @_Z17duDebugDrawCircleP11duDebugDrawffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_Z13duAppendArrowP11duDebugDrawffffffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z19duDebugDrawCylinderP11duDebugDrawffffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16duDebugDrawArrowP11duDebugDrawffffffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14CrowdToolState13renderOverlayEv(ptr noundef nonnull align 8 dereferenceable(98989) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.i = alloca [32 x i8], align 16               ; 11 uses
  %5 = alloca %struct.GraphParams, align 8        ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
