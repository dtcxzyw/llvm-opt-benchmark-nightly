Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_tables?download=true
inline.NumInlined: 682
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f:bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store <2 x float> zeroinitializer, ptr %i.ng, align 8, !tbaa !176
  %i.nh = getelementptr inbounds nuw i8, ptr %i.am, i64 550
  %i.ni = getelementptr inbounds nuw i8, ptr %i.am, i64 579
  store i64 0, ptr %i.nh, align 2
  store i8 1, ptr %i.ni, align 1, !tbaa !246
  %i.nj = getelementptr inbounds nuw i8, ptr %i.am, i64 520
  store i16 0, ptr %i.nj, align 8, !tbaa !247
  %i.nk = getelementptr inbounds nuw i8, ptr %i.am, i64 518
  store i16 0, ptr %i.nk, align 2, !tbaa !248
  %i.nl = add nsw i32 %i.du, 1
  %i.nm = load i32, ptr %i.dv, align 8, !tbaa !208
  %i.nn = icmp slt i32 %i.nl, %i.nm
  br i1 %i.nn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.no = getelementptr inbounds nuw i8, ptr %i.am, i64 582
  store i8 0, ptr %i.no, align 2, !tbaa !249
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.np = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  store float 0.000000e+00, ptr %i.np, align 8, !tbaa !250
  %i.nq = getelementptr i8, ptr %i.cl, i64 -128
  store float 0.000000e+00, ptr %i.nq, align 8, !tbaa !251
  %i.nr = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 46, float noundef 1.000000e+00) #4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.am, i64 164
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !252
  %i.nt = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 47, float noundef 1.000000e+00) #4
  %i.nu = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  store i32 %i.nt, ptr %i.nu, align 8, !tbaa !253
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  store ptr %i.am, ptr %i.nv, align 8, !tbaa !254
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i8 0, ptr %i.nw, align 8, !tbaa !255
  %i.nx = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store i32 %i.at, ptr %i.nx, align 8, !tbaa !256
  br i1 %.not345, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ny = getelementptr inbounds nuw i8, ptr %i.il, i64 464
  store i32 %i.at, ptr %i.ny, align 8, !tbaa !256
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.nz = and i32 %i.ed, 2
  %.not353 = icmp ne i32 %i.nz, 0
  %i.oa = and i32 %.6.i, 2
  %i.ob = icmp eq i32 %i.oa, 0
  %or.cond362 = and i1 %i.ob, %.not353
  br i1 %or.cond362, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.oc = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.oc, align 2, !tbaa !257
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 8888 ; 4 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !500 ; 2 uses
  %.not354 = icmp sgt i32 %i.oe, %i.at
  br i1 %.not354, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.of = add nsw i32 %i.at, 1                    ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.a, i64 8892 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !501 ; 4 uses
  %.not418 = icmp sgt i32 %i.oh, %i.at
  br i1 %.not418, label %_ZN8ImVectorIfE7reserveEi.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not.i.i394 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i394, label %_ZNK8ImVectorIfE14_grow_capacityEi.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oi = sdiv i32 %i.oh, 2
  %i.oj = add nsw i32 %i.oi, %i.oh
  br label %_ZNK8ImVectorIfE14_grow_capacityEi.exit.i

_ZNK8ImVectorIfE14_grow_capacityEi.exit.i:        ; preds = %bb.bu, %bb.bt
  %i.ok = phi i32 [ %i.oj, %bb.bu ], [ 8, %bb.bt ]
  %i.ol = call noundef i32 @llvm.smax.i32(i32 %i.ok, i32 %i.of) ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i64 %i.om, 2
  %i.oo = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.on) #4 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 8896 ; 3 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !258 ; 2 uses
  %.not6.i.i395 = icmp eq ptr %i.oq, null
  br i1 %.not6.i.i395, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNK8ImVectorIfE14_grow_capacityEi.exit.i
  %i.or = load i32, ptr %i.od, align 8, !tbaa !502
  %i.os = sext i32 %i.or to i64
  %i.ot = shl nsw i64 %i.os, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oo, ptr nonnull align 4 %i.oq, i64 %i.ot, i1 false)
  %i.ou = load ptr, ptr %i.op, align 8, !tbaa !258
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ou) #4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNK8ImVectorIfE14_grow_capacityEi.exit.i
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !258
  store i32 %i.ol, ptr %i.og, align 4, !tbaa !501
  %.pre434 = load i32, ptr %i.od, align 8, !tbaa !502
  br label %_ZN8ImVectorIfE7reserveEi.exit.i

_ZN8ImVectorIfE7reserveEi.exit.i:                 ; preds = %bb.bw, %bb.bs
  %i.ov = phi i32 [ %.pre434, %bb.bw ], [ %i.oe, %bb.bs ] ; 2 uses
  %.not419 = icmp sgt i32 %i.ov, %i.at
  br i1 %.not419, label %_ZN8ImVectorIfE6resizeEiRKf.exit, label %.preheader.i388

.preheader.i388:                                  ; preds = %_ZN8ImVectorIfE7reserveEi.exit.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 8896 ; 5 uses
  %i.ox = sext i32 %i.ov to i64                   ; 4 uses
  %wide.trip.count.i389 = sext i32 %i.of to i64   ; 3 uses
  %i.oy = sub nsw i64 %wide.trip.count.i389, %i.ox
  %xtraiter478 = and i64 %i.oy, 3                 ; 2 uses
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %.prol.loopexit477, label %.prol.preheader476

.prol.preheader476:                               ; preds = %.preheader.i388, %.prol.preheader476
  %indvars.iv.i391.prol = phi i64 [ %indvars.iv.next.i392.prol, %.prol.preheader476 ], [ %i.ox, %.preheader.i388 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader476 ], [ 0, %.preheader.i388 ]
  %i.oz = load ptr, ptr %i.ow, align 8, !tbaa !258
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %indvars.iv.i391.prol
  store i32 -1082130432, ptr %i.pa, align 4
  %indvars.iv.next.i392.prol = add nsw i64 %indvars.iv.i391.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter478
  br i1 %prol.iter.cmp.not, label %.prol.loopexit477, label %.prol.preheader476, !llvm.loop !472

.prol.loopexit477:                                ; preds = %.prol.preheader476, %.preheader.i388
  %indvars.iv.i391.unr = phi i64 [ %i.ox, %.preheader.i388 ], [ %indvars.iv.next.i392.prol, %.prol.preheader476 ]
  %i.pb = sub nsw i64 %i.ox, %wide.trip.count.i389
  %i.pc = icmp ugt i64 %i.pb, -4
  br i1 %i.pc, label %_ZN8ImVectorIfE6resizeEiRKf.exit, label %.preheader.i388.new

.preheader.i388.new:                              ; preds = %.prol.loopexit477, %.preheader.i388.new
  %indvars.iv.i391 = phi i64 [ %indvars.iv.next.i392.3, %.preheader.i388.new ], [ %indvars.iv.i391.unr, %.prol.loopexit477 ] ; 5 uses
  %i.pd = load ptr, ptr %i.ow, align 8, !tbaa !258
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.pd, i64 %indvars.iv.i391
  store i32 -1082130432, ptr %i.pe, align 4
  %i.pf = load ptr, ptr %i.ow, align 8, !tbaa !258
  %i.pg = getelementptr [4 x i8], ptr %i.pf, i64 %indvars.iv.i391
  %i.ph = getelementptr i8, ptr %i.pg, i64 4
  store i32 -1082130432, ptr %i.ph, align 4
  %i.pi = load ptr, ptr %i.ow, align 8, !tbaa !258
  %i.pj = getelementptr [4 x i8], ptr %i.pi, i64 %indvars.iv.i391
  %i.pk = getelementptr i8, ptr %i.pj, i64 8
  store i32 -1082130432, ptr %i.pk, align 4
  %i.pl = load ptr, ptr %i.ow, align 8, !tbaa !258
  %i.pm = getelementptr [4 x i8], ptr %i.pl, i64 %indvars.iv.i391
  %i.pn = getelementptr i8, ptr %i.pm, i64 12
  store i32 -1082130432, ptr %i.pn, align 4
  %indvars.iv.next.i392.3 = add nsw i64 %indvars.iv.i391, 4 ; 2 uses
  %exitcond.not.i393.3 = icmp eq i64 %indvars.iv.next.i392.3, %wide.trip.count.i389
  br i1 %exitcond.not.i393.3, label %_ZN8ImVectorIfE6resizeEiRKf.exit, label %.preheader.i388.new, !llvm.loop !473

_ZN8ImVectorIfE6resizeEiRKf.exit:                 ; preds = %.prol.loopexit477, %.preheader.i388.new, %_ZN8ImVectorIfE7reserveEi.exit.i
  store i32 %i.of, ptr %i.od, align 8, !tbaa !502
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN8ImVectorIfE6resizeEiRKf.exit, %bb.br
  %i.po = getelementptr inbounds nuw i8, ptr %i.a, i64 4992
  %i.pp = load double, ptr %i.po, align 8, !tbaa !503
  %i.pq = fptrunc double %i.pp to float           ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 8896
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !258
  %sext = shl i64 %i.as, 32
  %i.pt = ashr exact i64 %sext, 30
  %i.pu = getelementptr inbounds i8, ptr %i.ps, i64 %i.pt
  store float %i.pq, ptr %i.pu, align 4, !tbaa !176
  %i.pv = getelementptr i8, ptr %i.cl, i64 -132
  store float %i.pq, ptr %i.pv, align 4, !tbaa !183
  %i.pw = getelementptr inbounds nuw i8, ptr %i.am, i64 585
  store i8 0, ptr %i.pw, align 1, !tbaa !260
  %i.px = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !261
  %i.qa = load ptr, ptr %i.px, align 8, !tbaa !262 ; 2 uses
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = sdiv exact i64 %i.qd, 116               ; 2 uses
  %i.qf = trunc i64 %i.qe to i32                  ; 2 uses
  %.not355 = icmp eq i32 %i.qf, 0
  %.not356 = icmp eq i32 %2, %i.qf
  %or.cond363 = or i1 %.not355, %.not356
  %.phi.trans.insert436 = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.pre437 = load ptr, ptr %.phi.trans.insert436, align 8, !tbaa !263 ; 2 uses
  br i1 %or.cond363, label %bb.by, label %.thread468

.thread468:                                       ; preds = %bb.bx
  store ptr null, ptr %.phi.trans.insert436, align 8, !tbaa !263
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qg = icmp eq ptr %.pre437, null
  br i1 %i.qg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.thread468, %bb.by
  %.0327474 = phi ptr [ %.pre437, %.thread468 ], [ null, %bb.by ]
  %.0328472 = phi ptr [ %i.qa, %.thread468 ], [ null, %bb.by ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.qi = add nsw i32 %2, 31
  %i.qj = mul i32 %2, 116
  %i.qk = shl i32 %2, 1
  %i.ql = mul i32 %2, 118
  %i.qm = shl i32 %2, 3                           ; 2 uses
  %i.qn = add nsw i32 %i.ql, 2                    ; 2 uses
  %i.qo = and i32 %i.qn, -4
  %i.qp = add nsw i32 %i.qn, %i.qm                ; 2 uses
  %i.qq = ashr i32 %i.qi, 3
  %i.qr = and i32 %i.qq, -4                       ; 3 uses
  %i.qs = and i32 %i.qp, -4
  %i.qt = add nsw i32 %i.qp, %i.qr                ; 2 uses
  %i.qu = and i32 %i.qt, -4
  %i.qv = add nsw i32 %i.qt, %i.qr
  %i.qw = and i32 %i.qv, -4                       ; 2 uses
  %i.qx = add nsw i32 %i.qw, %i.qr
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.qy) #4 ; 2 uses
  store ptr %i.qz, ptr %i.qh, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr align 1 %i.qz, i8 0, i64 %i.qy, i1 false)
  %i.ra = load ptr, ptr %i.qh, align 8, !tbaa !263 ; 6 uses
  %i.rb = sext i32 %i.qj to i64
  %i.rc = getelementptr inbounds i8, ptr %i.ra, i64 %i.rb ; 3 uses
  store ptr %i.ra, ptr %i.px, align 8, !tbaa !262
  store ptr %i.rc, ptr %i.py, align 8, !tbaa !261
  %i.rd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.re = sext i32 %i.qk to i64
  %i.rf = getelementptr inbounds i8, ptr %i.rc, i64 %i.re
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !264
  %i.rg = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !265
  %i.rh = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ri = sext i32 %i.qo to i64
  %i.rj = getelementptr inbounds i8, ptr %i.ra, i64 %i.ri ; 2 uses
  %i.rk = sext i32 %i.qm to i64
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 %i.rk
  store ptr %i.rj, ptr %i.rh, align 8, !tbaa !266
  %i.rm = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !267
  %i.rn = sext i32 %i.qs to i64
  %i.ro = getelementptr inbounds i8, ptr %i.ra, i64 %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.ro, ptr %i.rp, align 8, !tbaa !268
  %i.rq = sext i32 %i.qu to i64
  %i.rr = getelementptr inbounds i8, ptr %i.ra, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !269
  %i.rt = sext i32 %i.qw to i64
  %i.ru = getelementptr inbounds i8, ptr %i.ra, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %i.ru, ptr %i.rv, align 8, !tbaa !270
  %i.rw = getelementptr inbounds nuw i8, ptr %i.am, i64 574
  store i8 1, ptr %i.rw, align 2, !tbaa !271
  %i.rx = getelementptr inbounds nuw i8, ptr %i.am, i64 569
  store i8 1, ptr %i.rx, align 1, !tbaa !272
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0327473 = phi ptr [ %.0327474, %bb.bz ], [ null, %bb.by ] ; 2 uses
  %.0328471 = phi ptr [ %.0328472, %bb.bz ], [ null, %bb.by ] ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.am, i64 577 ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !273, !range !174, !noundef !175
  %i.sa = trunc nuw i8 %i.rz to i1
  %i.sb = getelementptr inbounds nuw i8, ptr %i.am, i64 569 ; 2 uses
  br i1 %i.sa, label %.thread475, label %bb.cb

.thread475:                                       ; preds = %bb.ca
  store i8 1, ptr %i.sb, align 1, !tbaa !272
  store i8 0, ptr %i.ry, align 1, !tbaa !273
  %i.sc = getelementptr inbounds nuw i8, ptr %i.am, i64 574
  store i8 0, ptr %i.sc, align 2, !tbaa !271
  %i.sd = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store i32 0, ptr %i.sd, align 8, !tbaa !274
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %.pre440 = load i8, ptr %i.sb, align 1, !tbaa !272, !range !174
  %i.se = trunc nuw i8 %.pre440 to i1
  br i1 %i.se, label %bb.cc, label %.loopexit420

bb.cc:                                            ; preds = %.thread475, %bb.cb
  %i.sf = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  store i32 -1, ptr %i.sf, align 4, !tbaa !275
  %i.sg = getelementptr inbounds nuw i8, ptr %i.am, i64 570
  store i8 1, ptr %i.sg, align 2, !tbaa !276
  %i.sh = getelementptr inbounds nuw i8, ptr %i.am, i64 575
  store i8 1, ptr %i.sh, align 1, !tbaa !277
  %i.si = getelementptr inbounds nuw i8, ptr %i.am, i64 122
  store i16 -1, ptr %i.si, align 2, !tbaa !278
  %i.sj = getelementptr inbounds nuw i8, ptr %i.am, i64 548
  store i16 -1, ptr %i.sj, align 4, !tbaa !279
  %i.sk = getelementptr inbounds nuw i8, ptr %i.am, i64 532
  store i16 -1, ptr %i.sk, align 4, !tbaa !280
  %i.sl = getelementptr inbounds nuw i8, ptr %i.am, i64 530
  store i16 -1, ptr %i.sl, align 2, !tbaa !281
  %i.sm = getelementptr inbounds nuw i8, ptr %i.am, i64 536
  store i16 -1, ptr %i.sm, align 8, !tbaa !282
  %i.sn = getelementptr inbounds nuw i8, ptr %i.am, i64 528
  store i16 -1, ptr %i.sn, align 8, !tbaa !283
  %i.so = getelementptr inbounds nuw i8, ptr %i.am, i64 524
  store i16 -1, ptr %i.so, align 4, !tbaa !284
  %i.sp = getelementptr inbounds nuw i8, ptr %i.am, i64 522
  store i16 -1, ptr %i.sp, align 2, !tbaa !285
  %i.sq = icmp sgt i32 %2, 0
  br i1 %i.sq, label %.lr.ph, label %.loopexit420

.lr.ph:                                           ; preds = %bb.cc
  %.not358 = icmp ne ptr %.0328471, null
  %i.sr = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %sext467 = shl i64 %i.qe, 32
  %i.ss = ashr exact i64 %sext467, 32
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.6.52..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 52
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph, %bb.cg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cg ] ; 6 uses
  %i.st = load ptr, ptr %i.px, align 8, !tbaa !262
  %i.su = getelementptr inbounds nuw [116 x i8], ptr %i.st, i64 %indvars.iv ; 15 uses
  %i.sv = icmp slt i64 %indvars.iv, %i.ss
  %or.cond364 = and i1 %.not358, %i.sv
  br i1 %or.cond364, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sw = getelementptr inbounds nuw [116 x i8], ptr %.0328471, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(115) %i.su, ptr noundef nonnull align 4 dereferenceable(115) %i.sw, i64 115, i1 false), !tbaa.struct !504
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 20 ; 3 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.52..sroa_idx, i8 -1, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.su, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store float -1.000000e+00, ptr %.sroa.4.0..sroa_idx398, align 4, !tbaa !176
  store i64 0, ptr %i.sx, align 4, !tbaa !176
  %.sroa.5399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 28
  store float -1.000000e+00, ptr %.sroa.5399.0..sroa_idx, align 4, !tbaa !176
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false), !tbaa.struct !505
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  store i16 255, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !287
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 98
  store i16 255, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !287
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 100
  store i16 255, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !287
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 102
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.sz, i8 0, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store float %i.sy, ptr %i.sx, align 4, !tbaa !291
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 109
  store i8 1, ptr %i.ta, align 1, !tbaa !292
  %i.tb = getelementptr inbounds nuw i8, ptr %i.su, i64 104
  store i8 1, ptr %i.tb, align 4, !tbaa !293
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 103
  store i8 1, ptr %i.tc, align 1, !tbaa !294
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !295
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.td = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.te = load ptr, ptr %i.sr, align 8, !tbaa !264
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %indvars.iv
  store i16 %i.td, ptr %i.tf, align 2, !tbaa !287
  %i.tg = getelementptr inbounds nuw i8, ptr %i.su, i64 86
  store i16 %i.td, ptr %i.tg, align 2, !tbaa !296
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit420, label %bb.cd, !llvm.loop !474

.loopexit420:                                     ; preds = %bb.cg, %bb.cc, %bb.cb
  %.not357 = icmp eq ptr %.0327473, null
  br i1 %.not357, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.loopexit420
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0327473) #4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.loopexit420
  %i.th = getelementptr inbounds nuw i8, ptr %i.am, i64 574
  %i.ti = load i8, ptr %i.th, align 2, !tbaa !271, !range !174, !noundef !175
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN5ImGui17TableLoadSettingsEP10ImGuiTable(ptr noundef nonnull %i.am)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.tl = load float, ptr %i.tk, align 8, !tbaa !297 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.am, i64 228 ; 2 uses
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !298 ; 3 uses
  %i.to = fcmp une float %i.tn, 0.000000e+00
  %i.tp = fcmp une float %i.tn, %i.tl
  %or.cond365 = select i1 %i.to, i1 %i.tp, i1 false
  br i1 %or.cond365, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %bb.ck
  %i.tq = fdiv float %i.tl, %i.tn                 ; 5 uses
  %i.tr = icmp sgt i32 %2, 0
  br i1 %i.tr, label %.lr.ph423, label %.loopexit

.lr.ph423:                                        ; preds = %bb.cl
  %i.ts = load ptr, ptr %i.px, align 8, !tbaa !262 ; 5 uses
  %wide.trip.count428 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter480 = and i64 %wide.trip.count428, 3   ; 3 uses
  %i.tt = icmp ult i32 %2, 4
  br i1 %i.tt, label %.epil.preheader, label %.lr.ph423.new

.lr.ph423.new:                                    ; preds = %.lr.ph423
  %unroll_iter = and i64 %wide.trip.count428, 2147483644
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph423.new
  %indvars.iv425 = phi i64 [ 0, %.lr.ph423.new ], [ %indvars.iv.next426.3, %bb.cm ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph423.new ], [ %niter.next.3, %bb.cm ]
  %i.tu = getelementptr inbounds nuw [116 x i8], ptr %i.ts, i64 %indvars.iv425
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16 ; 2 uses
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !299
  %i.tx = fmul float %i.tq, %i.tw
  store float %i.tx, ptr %i.tv, align 4, !tbaa !299
  %i.ty = getelementptr inbounds nuw [116 x i8], ptr %i.ts, i64 %indvars.iv425
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 132 ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !299
  %i.ub = fmul float %i.tq, %i.ua
  store float %i.ub, ptr %i.tz, align 4, !tbaa !299
  %i.uc = getelementptr inbounds nuw [116 x i8], ptr %i.ts, i64 %indvars.iv425
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 248 ; 2 uses
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !299
  %i.uf = fmul float %i.tq, %i.ue
  store float %i.uf, ptr %i.ud, align 4, !tbaa !299
  %i.ug = getelementptr inbounds nuw [116 x i8], ptr %i.ts, i64 %indvars.iv425
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 364 ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !299
  %i.uj = fmul float %i.tq, %i.ui
  store float %i.uj, ptr %i.uh, align 4, !tbaa !299
  %indvars.iv.next426.3 = add nuw nsw i64 %indvars.iv425, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !475

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cm
  %lcmp.mod481.not = icmp eq i64 %xtraiter480, 0
  br i1 %lcmp.mod481.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph423
  %indvars.iv425.epil.init = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next426.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod482 = icmp ne i64 %xtraiter480, 0
  call void @llvm.assume(i1 %lcmp.mod482)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader
  %indvars.iv425.epil = phi i64 [ %indvars.iv425.epil.init, %.epil.preheader ], [ %indvars.iv.next426.epil, %bb.cn ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cn ]
  %i.uk = getelementptr inbounds nuw [116 x i8], ptr %i.ts, i64 %indvars.iv425.epil
end_hunk_0
begin_hunk_1_@llvm.ceil.f32
declare float @llvm.ceil.f32(float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

declare void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #2

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

declare void @_ZN5ImGui12PushItemFlagEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui11PopItemFlagEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9888 ; 3 uses
  %i.c = shl i32 %1, 4
  %i.d = load i32, ptr %i.b, align 8, !tbaa !308  ; 2 uses
  %i.e = add i32 %i.c, 24                         ; 2 uses
  %i.f = add nsw i32 %i.d, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9892 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !300  ; 4 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i

._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i:       ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9896
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !305
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i32 %i.h, 2
  %i.k = add nsw i32 %i.j, %i.h
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.k, %bb.c ], [ 8, %bb.b ]
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 %i.f) ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.n) #4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9896 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !301  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.r = load i32, ptr %i.b, align 8, !tbaa !302
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !301
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !301
  store i32 %i.m, ptr %i.g, align 4, !tbaa !300
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit: ; preds = %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i, %bb.e
  %i.u = phi ptr [ %.pre.i, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ], [ %i.o, %bb.e ]
  store i32 %i.f, ptr %i.b, align 8, !tbaa !302
  %i.v = sext i32 %i.d to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 6 uses
  store i32 %i.e, ptr %i.w, align 4, !tbaa !286
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.lr.ph.preheader.i, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.preheader.i:                               ; preds = %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %xtraiter = and i32 %1, 1
  %i.aa = icmp eq i32 %1, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.01315.i = phi ptr [ %i.z, %.lr.ph.preheader.i.new ], [ %i.as, %.lr.ph.i ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  store float 0.000000e+00, ptr %.01315.i, align 4, !tbaa !320
  %i.ab = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !443
  %i.ac = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  store i16 -1, ptr %i.ac, align 4, !tbaa !319
  %i.ad = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  store i16 -1, ptr %i.ad, align 4, !tbaa !322
  %i.ae = getelementptr inbounds nuw i8, ptr %.01315.i, i64 10
  store i16 -1, ptr %i.ae, align 2, !tbaa !321
  %i.af = getelementptr inbounds nuw i8, ptr %.01315.i, i64 14 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = and i8 %i.ag, -32
  %i.ai = or disjoint i8 %i.ah, 12
  store i8 %i.ai, ptr %i.af, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !320
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315.i, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !443
  %i.al = getelementptr inbounds nuw i8, ptr %.01315.i, i64 24
  store i16 -1, ptr %i.al, align 4, !tbaa !319
  %i.am = getelementptr inbounds nuw i8, ptr %.01315.i, i64 28
  store i16 -1, ptr %i.am, align 4, !tbaa !322
  %i.an = getelementptr inbounds nuw i8, ptr %.01315.i, i64 26
  store i16 -1, ptr %i.an, align 2, !tbaa !321
  %i.ao = getelementptr inbounds nuw i8, ptr %.01315.i, i64 30 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = and i8 %i.ap, -32
  %i.ar = or disjoint i8 %i.aq, 12
  store i8 %i.ar, ptr %i.ao, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %.01315.i, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.01315.i.epil.init = phi ptr [ %i.z, %.lr.ph.preheader.i ], [ %i.as, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod9 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  store float 0.000000e+00, ptr %.01315.i.epil.init, align 4, !tbaa !320
  %i.at = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !443
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 8
  store i16 -1, ptr %i.au, align 4, !tbaa !319
  %i.av = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 12
  store i16 -1, ptr %i.av, align 4, !tbaa !322
  %i.aw = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 10
  store i16 -1, ptr %i.aw, align 2, !tbaa !321
  %i.ax = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 14 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2
  %i.az = and i8 %i.ay, -32
  %i.ba = or disjoint i8 %i.az, 12
  store i8 %i.ba, ptr %i.ax, align 2
  br label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa, %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit
  store i32 %0, ptr %i.x, align 4, !tbaa !307
  %i.bb = trunc i32 %1 to i16                     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i16 %i.bb, ptr %i.bc, align 4, !tbaa !309
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  store i16 %i.bb, ptr %i.bd, align 2, !tbaa !310
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i8 1, ptr %i.be, align 4, !tbaa !444
  ret ptr %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui21TableSettingsFindByIDEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9888
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0812 = phi ptr [ %i.k, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i32, ptr %.0812, align 4, !tbaa !307
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph
  %i.h = getelementptr inbounds i8, ptr %.0812, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !286
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.0812, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !308
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %.lr.ph, %bb.a
  %.08.lcssa = phi ptr [ null, %bb.a ], [ %.0812, %.lr.ph ], [ null, %select.unfold ]
  ret ptr %.08.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !275  ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 9896
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !305
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.i = load i16, ptr %i.h, align 2, !tbaa !310
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !214
  %.not10.not = icmp sgt i32 %i.l, %i.j
  br i1 %.not10.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.g, align 4, !tbaa !307
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.thread, %bb.b
  %.1 = phi ptr [ %i.g, %bb.b ], [ null, %.thread ], [ null, %bb.a ]
  ret ptr %.1
}

declare void @_ZN5ImGui20MarkIniSettingsDirtyEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui31TableSettingsAddSettingsHandlerEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImGuiSettingsHandler, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store ptr @.str.14, ptr %0, align 8, !tbaa !446
  %i.b = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.14, i64 noundef 0, i32 noundef 0) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !644
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler, ptr %i.d, align 8, !tbaa !645
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc, ptr %i.e, align 8, !tbaa !646
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc, ptr %i.f, align 8, !tbaa !647
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler, ptr %i.g, align 8, !tbaa !648
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer, ptr %i.h, align 8, !tbaa !649
  call void @_ZN5ImGui18AddSettingsHandlerEPK20ImGuiSettingsHandler(ptr noundef nonnull %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.b = load i32, ptr %i.a, align 8, !tbaa !447  ; 4 uses
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !448  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8856 ; 3 uses
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %.pre14 = load ptr, ptr %i.e, align 8           ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.pre14, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !289  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %.not910.epil = icmp eq ptr %.epil.init, null
  %.not9.epil = select i1 %i.k, i1 true, i1 %.not910.epil
  br i1 %.not9.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [592 x i8], ptr %.epil.init, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  store i32 -1, ptr %i.n, align 4, !tbaa !275
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9896 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !301  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9888
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9892
  store i32 0, ptr %i.r, align 4, !tbaa !300
  store i32 0, ptr %i.q, align 8, !tbaa !302
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.p) #4
  store ptr null, ptr %i.o, align 8, !tbaa !301
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit: ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %bb.h, %.lr.ph.new
  %i.s = phi ptr [ %.pre14, %.lr.ph.new ], [ %i.ai, %bb.h ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !289  ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  %.not910 = icmp eq ptr %i.s, null
  %.not9 = select i1 %i.w, i1 true, i1 %.not910
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [592 x i8], ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  store i32 -1, ptr %i.z, align 4, !tbaa !275
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !289 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  %.not910.1 = icmp eq ptr %i.aa, null
  %.not9.1 = select i1 %i.ae, i1 true, i1 %.not910.1
  br i1 %.not9.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [592 x i8], ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  store i32 -1, ptr %i.ah, align 4, !tbaa !275
  %.pre.1 = load ptr, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi ptr [ %.pre.1, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !650
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !286
  %i.c = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %2, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !286  ; 4 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9888
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 9896
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0812.i = phi ptr [ %i.p, %select.unfold.i ], [ %i.j, %.lr.ph.i.preheader ] ; 11 uses
end_hunk_1
