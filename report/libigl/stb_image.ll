inline.NumInlined: 824
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi:bb.a
  %i.na = fmul <4 x float> %wide.load, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %i.bc
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 7
  %i.nd = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %i.bc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 15
  %i.nf = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %i.bc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 23
  %i.nh = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %i.bc
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 31
  %i.nj = load i8, ptr %i.nc, align 1, !tbaa !23
  %i.nk = load i8, ptr %i.ne, align 1, !tbaa !23
  %i.nl = load i8, ptr %i.ng, align 1, !tbaa !23
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !23
  %i.nn = zext i8 %i.nj to i64                    ; 2 uses
  %i.no = zext i8 %i.nk to i64                    ; 2 uses
  %i.np = zext i8 %i.nl to i64                    ; 2 uses
  %i.nq = zext i8 %i.nm to i64                    ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.nn
  %i.ns = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.no
  %i.nt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.np
  %i.nu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.nq
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !23
  %i.nw = load i8, ptr %i.ns, align 1, !tbaa !23
  %i.nx = load i8, ptr %i.nt, align 1, !tbaa !23
  %i.ny = load i8, ptr %i.nu, align 1, !tbaa !23
  %i.nz = insertelement <4 x i8> poison, i8 %i.nv, i64 0
  %i.oa = insertelement <4 x i8> %i.nz, i8 %i.nw, i64 1
  %i.ob = insertelement <4 x i8> %i.oa, i8 %i.nx, i64 2
  %i.oc = insertelement <4 x i8> %i.ob, i8 %i.ny, i64 3
  %i.od = uitofp <4 x i8> %i.oc to <4 x float>
  %i.oe = fmul <4 x float> %wide.load, %i.od
  %i.of = shufflevector <4 x float> %i.cg, <4 x float> %i.ea, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.og = shufflevector <4 x float> %i.fs, <4 x float> %i.hk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oh = shufflevector <4 x float> %i.jc, <4 x float> %i.ku, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oi = shufflevector <4 x float> %i.mm, <4 x float> %i.oe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oj = shufflevector <8 x float> %i.of, <8 x float> %i.og, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ok = shufflevector <8 x float> %i.oh, <8 x float> %i.oi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ol = shufflevector <16 x float> %i.oj, <16 x float> %i.ok, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.om = fmul <32 x float> %i.ol, <float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2>
  %interleaved.vec = fdiv <32 x float> splat (float 1.000000e+00), %i.om
  store <32 x float> %interleaved.vec, ptr %i.ch, align 16, !tbaa !58
  %i.on = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.nn
  %i.oo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.no
  %i.op = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.np
  %i.oq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.nq
  %i.or = load i8, ptr %i.on, align 1, !tbaa !23
  %i.os = load i8, ptr %i.oo, align 1, !tbaa !23
  %i.ot = load i8, ptr %i.op, align 1, !tbaa !23
  %i.ou = load i8, ptr %i.oq, align 1, !tbaa !23
  %i.ov = insertelement <4 x i8> poison, i8 %i.or, i64 0
  %i.ow = insertelement <4 x i8> %i.ov, i8 %i.os, i64 1
  %i.ox = insertelement <4 x i8> %i.ow, i8 %i.ot, i64 2
  %i.oy = insertelement <4 x i8> %i.ox, i8 %i.ou, i64 3
  %i.oz = uitofp <4 x i8> %i.oy to <4 x float>
  %i.pa = fmul <4 x float> %wide.load, %i.oz
  %i.pb = shufflevector <4 x float> %i.cv, <4 x float> %i.eo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pc = shufflevector <4 x float> %i.gg, <4 x float> %i.hy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pd = shufflevector <4 x float> %i.jq, <4 x float> %i.li, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pe = shufflevector <4 x float> %i.na, <4 x float> %i.pa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pf = shufflevector <8 x float> %i.pb, <8 x float> %i.pc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pg = shufflevector <8 x float> %i.pd, <8 x float> %i.pe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ph = shufflevector <16 x float> %i.pf, <16 x float> %i.pg, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.pi = fmul <32 x float> %i.ph, <float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2>
  %interleaved.vec248 = fdiv <32 x float> splat (float 1.000000e+00), %i.pi
  store <32 x float> %interleaved.vec248, ptr %i.cw, align 16, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pj = icmp eq i64 %index.next, 8
  br i1 %i.pj, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  store <4 x i8> <i8 -1, i8 -64, i8 0, i8 17>, ptr %i.m, align 16, !tbaa !23
  %i.pk = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 8, ptr %i.pk, align 4, !tbaa !23
  %i.pl = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.pm = lshr i32 %2, 8
  %i.pn = trunc i32 %i.pm to i8
  store i8 %i.pn, ptr %i.pl, align 1, !tbaa !23
  %i.po = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.pp = trunc i32 %2 to i8
  store i8 %i.pp, ptr %i.po, align 2, !tbaa !23
  %i.pq = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.pr = lshr i32 %1, 8
  %i.ps = trunc i32 %i.pr to i8
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !23
  %i.pt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pu = trunc i32 %1 to i8
  store i8 %i.pu, ptr %i.pt, align 8, !tbaa !23
  %i.pv = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  store <8 x i8> <i8 3, i8 1, i8 17, i8 0, i8 2, i8 17, i8 1, i8 3>, ptr %i.pv, align 1, !tbaa !23
  %i.pw = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  store <4 x i8> <i8 17, i8 1, i8 -1, i8 -60>, ptr %i.pw, align 1, !tbaa !23
  %i.px = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  store i8 1, ptr %i.px, align 1, !tbaa !23
  %i.py = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  store i8 -94, ptr %i.py, align 2, !tbaa !23
  %i.pz = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  store i8 0, ptr %i.pz, align 1, !tbaa !23
  %i.qa = load ptr, ptr %0, align 8, !tbaa !108
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !110
  tail call void %i.qa(ptr noundef %i.qc, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE5head0, i32 noundef 25)
  %i.qd = load ptr, ptr %0, align 8, !tbaa !108
  %i.qe = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qd(ptr noundef %i.qe, ptr noundef nonnull %i.k, i32 noundef 64)
  %.val178 = load ptr, ptr %0, align 8, !tbaa !108
  %.val179 = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 1, ptr %i.h, align 1, !tbaa !23
  call void %.val178(ptr noundef %.val179, ptr noundef nonnull %i.h, i32 noundef 1), !inline_history !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.qf = load ptr, ptr %0, align 8, !tbaa !108
  %i.qg = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qf(ptr noundef %i.qg, ptr noundef nonnull %i.l, i32 noundef 64)
  %i.qh = load ptr, ptr %0, align 8, !tbaa !108
  %i.qi = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qh(ptr noundef %i.qi, ptr noundef nonnull %i.m, i32 noundef 24)
  %i.qj = load ptr, ptr %0, align 8, !tbaa !108
  %i.qk = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qj(ptr noundef %i.qk, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE24std_dc_luminance_nrcodes, i64 1), i32 noundef 16)
  %i.ql = load ptr, ptr %0, align 8, !tbaa !108
  %i.qm = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.ql(ptr noundef %i.qm, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE23std_dc_luminance_values, i32 noundef 12)
  %.val176 = load ptr, ptr %0, align 8, !tbaa !108
  %.val177 = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 16, ptr %i.g, align 1, !tbaa !23
  call void %.val176(ptr noundef %.val177, ptr noundef nonnull %i.g, i32 noundef 1), !inline_history !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.qn = load ptr, ptr %0, align 8, !tbaa !108
  %i.qo = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qn(ptr noundef %i.qo, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE24std_ac_luminance_nrcodes, i64 1), i32 noundef 16)
  %i.qp = load ptr, ptr %0, align 8, !tbaa !108
  %i.qq = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qp(ptr noundef %i.qq, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE23std_ac_luminance_values, i32 noundef 162)
  %.val174 = load ptr, ptr %0, align 8, !tbaa !108
  %.val175 = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.f, align 1, !tbaa !23
  call void %.val174(ptr noundef %.val175, ptr noundef nonnull %i.f, i32 noundef 1), !inline_history !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qr = load ptr, ptr %0, align 8, !tbaa !108
  %i.qs = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qr(ptr noundef %i.qs, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE26std_dc_chrominance_nrcodes, i64 1), i32 noundef 16)
  %i.qt = load ptr, ptr %0, align 8, !tbaa !108
  %i.qu = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qt(ptr noundef %i.qu, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE25std_dc_chrominance_values, i32 noundef 12)
  %.val172 = load ptr, ptr %0, align 8, !tbaa !108
  %.val173 = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 17, ptr %i.e, align 1, !tbaa !23
  call void %.val172(ptr noundef %.val173, ptr noundef nonnull %i.e, i32 noundef 1), !inline_history !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.qv = load ptr, ptr %0, align 8, !tbaa !108
  %i.qw = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qv(ptr noundef %i.qw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE26std_ac_chrominance_nrcodes, i64 1), i32 noundef 16)
  %i.qx = load ptr, ptr %0, align 8, !tbaa !108
  %i.qy = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qx(ptr noundef %i.qy, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE25std_ac_chrominance_values, i32 noundef 162)
  %i.qz = load ptr, ptr %0, align 8, !tbaa !108
  %i.ra = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void %i.qz(ptr noundef %i.ra, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE5head2, i32 noundef 14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  store i32 0, ptr %i.n, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #33
  store i32 0, ptr %i.o, align 4, !tbaa !12
  %i.rb = icmp samesign ugt i32 %3, 2             ; 2 uses
  %i.rc = zext i1 %i.rb to i32
  %i.rd = select i1 %i.rb, i32 2, i32 0
  %i.re = icmp sgt i32 %2, 0
  br i1 %i.re, label %.preheader.lr.ph, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.preheader.lr.ph:                                 ; preds = %middle.block
  %i.rf = icmp sgt i32 %1, 0
  %i.rg = add nsw i32 %2, -1                      ; 2 uses
  %i.rh = add nsw i32 %1, -1
  br i1 %i.rf, label %.preheader.us, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %indvars.iv232 = phi i32 [ %indvars.iv.next233, %._crit_edge.us ], [ 8, %.preheader.lr.ph ] ; 2 uses
  %.0151202.us = phi i32 [ %i.sy, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.0153201.us = phi i32 [ %i.st, %._crit_edge.us ], [ 0, %.preheader.lr.ph ]
  %.0155200.us = phi i32 [ %i.sv, %._crit_edge.us ], [ 0, %.preheader.lr.ph ]
  %.0157199.us = phi i32 [ %i.su, %._crit_edge.us ], [ 0, %.preheader.lr.ph ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.k
  %.0152196.us = phi i32 [ 0, %.preheader.us ], [ %i.sw, %bb.k ] ; 2 uses
  %.1154195.us = phi i32 [ %.0153201.us, %.preheader.us ], [ %i.st, %bb.k ]
  %.1156194.us = phi i32 [ %.0155200.us, %.preheader.us ], [ %i.sv, %bb.k ]
  %.1158193.us = phi i32 [ %.0157199.us, %.preheader.us ], [ %i.su, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #33
  %i.ri = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.not168.us = icmp eq i32 %i.ri, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.1192.us = phi i32 [ %.0151202.us, %bb.g ], [ %i.ss, %bb.j ] ; 2 uses
  %.0149191.us = phi i32 [ 0, %bb.g ], [ %7, %bb.j ] ; 2 uses
  %i.rj = call i32 @llvm.smin.i32(i32 %.1192.us, i32 %i.rg) ; 2 uses
  %i.rk = sub nsw i32 %i.rg, %i.rj
  %i.rl = select i1 %.not168.us, i32 %i.rj, i32 %i.rk
  %i.rm = mul nsw i32 %i.rl, %1
  %6 = sext i32 %.0149191.us to i64
  %7 = add i32 %.0149191.us, 8                    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %bb.i ], [ %6, %bb.h ] ; 4 uses
  %.1145190.us = phi i32 [ %i.sr, %bb.i ], [ %.0152196.us, %bb.h ] ; 2 uses
  %i.rn = call i32 @llvm.smin.i32(i32 %.1145190.us, i32 %i.rh)
  %i.ro = add i32 %i.rn, %i.rm
  %i.rp = mul i32 %i.ro, %3                       ; 3 uses
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds i8, ptr %4, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !23
  %i.rt = uitofp i8 %i.rs to float                ; 3 uses
  %i.ru = add nsw i32 %i.rp, %i.rc
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds i8, ptr %4, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !23
  %i.ry = uitofp i8 %i.rx to float                ; 3 uses
  %i.rz = add nsw i32 %i.rp, %i.rd
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds i8, ptr %4, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !23
  %i.sd = uitofp i8 %i.sc to float                ; 3 uses
  %i.se = fmul nnan float %i.ry, 5.870000e-01
  %i.sf = call float @llvm.fmuladd.f32(float %i.rt, float 2.990000e-01, float %i.se)
  %i.sg = call float @llvm.fmuladd.f32(float %i.sd, float 1.140000e-01, float %i.sf)
  %i.sh = fadd float %i.sg, -1.280000e+02
  %i.si = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv228
  store float %i.sh, ptr %i.si, align 4, !tbaa !58
  %i.sj = fmul nnan float %i.ry, -3.312600e-01
  %i.sk = call float @llvm.fmuladd.f32(float %i.rt, float -1.687400e-01, float %i.sj)
  %i.sl = call float @llvm.fmuladd.f32(float %i.sd, float 5.000000e-01, float %i.sk)
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv228
  store float %i.sl, ptr %i.sm, align 4, !tbaa !58
  %i.sn = fmul nnan float %i.ry, -4.186900e-01
  %i.so = call float @llvm.fmuladd.f32(float %i.rt, float 5.000000e-01, float %i.sn)
  %i.sp = call float @llvm.fmuladd.f32(float %i.sd, float f0xBDA685DB, float %i.so)
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv228
  store float %i.sp, ptr %i.sq, align 4, !tbaa !58
  %i.sr = add nuw nsw i32 %.1145190.us, 1
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next229 to i32
  %exitcond231.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond231.not, label %bb.j, label %bb.i, !llvm.loop !184

bb.j:                                             ; preds = %bb.i
  %i.ss = add nuw nsw i32 %.1192.us, 1            ; 2 uses
  %exitcond234.not = icmp eq i32 %i.ss, %indvars.iv232
  br i1 %exitcond234.not, label %bb.k, label %bb.h, !llvm.loop !185

bb.k:                                             ; preds = %bb.j
  %i.st = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.i, i32 noundef %.1154195.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT) ; 2 uses
  %i.su = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.j, i32 noundef %.1158193.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  %i.sv = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, ptr noundef %i.j, i32 noundef %.1156194.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #33
  %i.sw = add nuw nsw i32 %.0152196.us, 8         ; 2 uses
  %i.sx = icmp slt i32 %i.sw, %1
  br i1 %i.sx, label %bb.g, label %._crit_edge.us, !llvm.loop !186

._crit_edge.us:                                   ; preds = %bb.k
  %i.sy = add nuw nsw i32 %.0151202.us, 8         ; 2 uses
  %i.sz = icmp slt i32 %i.sy, %2
  %indvars.iv.next233 = add i32 %indvars.iv232, 8
  br i1 %i.sz, label %.preheader.us, label %._crit_edge203, !llvm.loop !187

._crit_edge203:                                   ; preds = %._crit_edge.us
  %.pre235 = load i32, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %i.ta = icmp sgt i32 %.pre235, 0
  br i1 %i.ta, label %.lr.ph.i.preheader, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge203
  %i.tb = sub nsw i32 17, %.pre235
  %i.tc = shl i32 127, %i.tb
  %.pre = load i32, ptr %i.n, align 4, !tbaa !12
  %i.td = or i32 %i.tc, %.pre
  %i.te = add nuw nsw i32 %.pre235, 7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.02.i = phi i32 [ %i.tj, %bb.m ], [ %i.td, %.lr.ph.i.preheader ] ; 3 uses
  %.0181.i = phi i32 [ %i.tk, %bb.m ], [ %i.te, %.lr.ph.i.preheader ] ; 2 uses
  %i.tf = lshr i32 %.02.i, 16
  %i.tg = trunc i32 %i.tf to i8
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !108
  %.val21.i = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.tg, ptr %i.d, align 1, !tbaa !23
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.th = and i32 %.02.i, 16711680
  %i.ti = icmp eq i32 %i.th, 16711680
  br i1 %i.ti, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !108
  %.val19.i = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !23
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.tj = shl i32 %.02.i, 8
  %i.tk = add nsw i32 %.0181.i, -8
  %i.tl = icmp sgt i32 %.0181.i, 15
  br i1 %i.tl, label %.lr.ph.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !189

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit: ; preds = %bb.m, %.preheader.lr.ph, %middle.block, %._crit_edge203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  %.val170 = load ptr, ptr %0, align 8, !tbaa !108
  %.val171 = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 1, !tbaa !23
  call void %.val170(ptr noundef %.val171, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8, !tbaa !108
  %.val169 = load ptr, ptr %i.qb, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -39, ptr %i.a, align 1, !tbaa !23
  call void %.val(ptr noundef %.val169, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %.0 = phi i32 [ 1, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_jpg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 3 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %6, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !110
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef i32 @_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi(ptr noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZL16stbi__stdio_readPvPci(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #12 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL16stbi__stdio_skipPvi(ptr nofree noundef captures(none) %0, i32 noundef %1) #12 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZL15stbi__stdio_eofPv(ptr nofree noundef captures(none) %0) #12 {
bb.a:
  %i.a = tail call i32 @feof(ptr noundef %0) #33
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) initializes((0, 12)) %5, i32 noundef range(i32 8, 17) %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %struct.stbi__gif, align 8          ; 9 uses
  %i.a = alloca [256 x [4 x i8]], align 16        ; 7 uses
  %8 = alloca %struct.stbi__bmp_data, align 4     ; 14 uses
  %9 = alloca %struct.stbi__png, align 8          ; 10 uses
  %i.b = alloca [64 x i16], align 16              ; 4 uses
  %i.c = alloca [64 x i16], align 16              ; 4 uses
  %i.d = alloca [4 x ptr], align 16               ; 13 uses
  %10 = alloca [4 x %struct.stbi__resample], align 16 ; 4 uses
  store i32 8, ptr %5, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.e, align 4, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !191
  %i.g = tail call noalias noundef dereferenceable_or_null(18568) ptr @malloc(i64 noundef 18568) #34 ; 9 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 18544
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 18552
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 18560
  store ptr @_ZL15stbi__idct_simdPhiPs, ptr %i.h, align 8, !tbaa !192
  store ptr @_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii, ptr %i.i, align 8, !tbaa !193
  store ptr @_ZL28stbi__resample_row_hv_2_simdPhS_S_ii, ptr %i.j, align 8, !tbaa !194
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 18504
  store i32 0, ptr %i.k, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 18508
  store i32 -1, ptr %i.l, align 4, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 18472
  store i8 -1, ptr %i.m, align 8, !tbaa !197
  %i.n = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef nonnull %i.g)
  %.not = icmp eq i8 %i.n, -40                    ; 2 uses
  br i1 %.not, label %_ZL15stbi__jpeg_testP13stbi__context.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.7, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %_ZL15stbi__jpeg_testP13stbi__context.exit

_ZL15stbi__jpeg_testP13stbi__context.exit:        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 69 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 34 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !9
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !9
  tail call void @free(ptr noundef nonnull %i.g) #33
  br i1 %.not, label %bb.c, label %bb.ip

bb.c:                                             ; preds = %_ZL15stbi__jpeg_testP13stbi__context.exit
  %i.s = tail call noalias noundef dereferenceable_or_null(18568) ptr @malloc(i64 noundef 18568) #34 ; 83 uses
  store ptr %0, ptr %i.s, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 18544 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 18552 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 18560 ; 2 uses
  store ptr @_ZL15stbi__idct_simdPhiPs, ptr %i.t, align 8, !tbaa !192
  store ptr @_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii, ptr %i.u, align 8, !tbaa !193
end_hunk_0
