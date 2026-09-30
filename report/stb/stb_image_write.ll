Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbi_write_jpg_core:bb.a
  %i.mz = insertelement <4 x i8> %i.my, i8 %i.mv, i64 2
  %i.na = insertelement <4 x i8> %i.mz, i8 %i.mw, i64 3
  %i.nb = uitofp <4 x i8> %i.na to <4 x float>
  %i.nc = fmul <4 x float> %wide.load, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ml
  %i.ne = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mm
  %i.nf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mn
  %i.ng = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mo
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !17
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !17
  %i.nj = load i8, ptr %i.nf, align 1, !tbaa !17
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !17
  %i.nl = insertelement <4 x i8> poison, i8 %i.nh, i64 0
  %i.nm = insertelement <4 x i8> %i.nl, i8 %i.ni, i64 1
  %i.nn = insertelement <4 x i8> %i.nm, i8 %i.nj, i64 2
  %i.no = insertelement <4 x i8> %i.nn, i8 %i.nk, i64 3
  %i.np = uitofp <4 x i8> %i.no to <4 x float>
  %i.nq = fmul <4 x float> %wide.load, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 7
  %i.nt = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 15
  %i.nv = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 23
  %i.nx = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 31
  %i.nz = load i8, ptr %i.ns, align 1, !tbaa !17
  %i.oa = load i8, ptr %i.nu, align 1, !tbaa !17
  %i.ob = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !17
  %i.od = zext i8 %i.nz to i64                    ; 2 uses
  %i.oe = zext i8 %i.oa to i64                    ; 2 uses
  %i.of = zext i8 %i.ob to i64                    ; 2 uses
  %i.og = zext i8 %i.oc to i64                    ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.od
  %i.oi = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.oe
  %i.oj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.of
  %i.ok = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.og
  %i.ol = load i8, ptr %i.oh, align 1, !tbaa !17
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !17
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !17
  %i.oo = load i8, ptr %i.ok, align 1, !tbaa !17
  %i.op = insertelement <4 x i8> poison, i8 %i.ol, i64 0
  %i.oq = insertelement <4 x i8> %i.op, i8 %i.om, i64 1
  %i.or = insertelement <4 x i8> %i.oq, i8 %i.on, i64 2
  %i.os = insertelement <4 x i8> %i.or, i8 %i.oo, i64 3
  %i.ot = uitofp <4 x i8> %i.os to <4 x float>
  %i.ou = fmul <4 x float> %wide.load, %i.ot
  %i.ov = shufflevector <4 x float> %i.cw, <4 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ow = shufflevector <4 x float> %i.gi, <4 x float> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ox = shufflevector <4 x float> %i.js, <4 x float> %i.lk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oy = shufflevector <4 x float> %i.nc, <4 x float> %i.ou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oz = shufflevector <8 x float> %i.ov, <8 x float> %i.ow, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pa = shufflevector <8 x float> %i.ox, <8 x float> %i.oy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pb = shufflevector <16 x float> %i.oz, <16 x float> %i.pa, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.pc = fmul <32 x float> %i.pb, <float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2>
  %interleaved.vec = fdiv <32 x float> splat (float 1.000000e+00), %i.pc
  store <32 x float> %interleaved.vec, ptr %i.cx, align 16, !tbaa !23
  %i.pd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.od
  %i.pe = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.oe
  %i.pf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.of
  %i.pg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.og
  %i.ph = load i8, ptr %i.pd, align 1, !tbaa !17
  %i.pi = load i8, ptr %i.pe, align 1, !tbaa !17
  %i.pj = load i8, ptr %i.pf, align 1, !tbaa !17
  %i.pk = load i8, ptr %i.pg, align 1, !tbaa !17
  %i.pl = insertelement <4 x i8> poison, i8 %i.ph, i64 0
  %i.pm = insertelement <4 x i8> %i.pl, i8 %i.pi, i64 1
  %i.pn = insertelement <4 x i8> %i.pm, i8 %i.pj, i64 2
  %i.po = insertelement <4 x i8> %i.pn, i8 %i.pk, i64 3
  %i.pp = uitofp <4 x i8> %i.po to <4 x float>
  %i.pq = fmul <4 x float> %wide.load, %i.pp
  %i.pr = shufflevector <4 x float> %i.dl, <4 x float> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ps = shufflevector <4 x float> %i.gw, <4 x float> %i.io, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pt = shufflevector <4 x float> %i.kg, <4 x float> %i.ly, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pu = shufflevector <4 x float> %i.nq, <4 x float> %i.pq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pv = shufflevector <8 x float> %i.pr, <8 x float> %i.ps, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pw = shufflevector <8 x float> %i.pt, <8 x float> %i.pu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.px = shufflevector <16 x float> %i.pv, <16 x float> %i.pw, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.py = fmul <32 x float> %i.px, <float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2, float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2>
  %interleaved.vec419 = fdiv <32 x float> splat (float 1.000000e+00), %i.py
  store <32 x float> %interleaved.vec419, ptr %i.dm, align 16, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pz = icmp eq i64 %index.next, 8
  br i1 %i.pz, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.u, ptr noundef nonnull align 16 dereferenceable(25) @__const.stbi_write_jpg_core.head0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.v, ptr noundef nonnull align 1 dereferenceable(14) @__const.stbi_write_jpg_core.head2, i64 14, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #25
  store <4 x i8> <i8 -1, i8 -64, i8 0, i8 17>, ptr %i.w, align 16, !tbaa !17
  %i.qa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i8 8, ptr %i.qa, align 4, !tbaa !17
  %i.qb = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.qc = lshr i32 %2, 8
  %i.qd = trunc i32 %i.qc to i8
  store i8 %i.qd, ptr %i.qb, align 1, !tbaa !17
  %i.qe = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.qf = trunc i32 %2 to i8
  store i8 %i.qf, ptr %i.qe, align 2, !tbaa !17
  %i.qg = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.qh = lshr i32 %1, 8
  %i.qi = trunc i32 %i.qh to i8
  store i8 %i.qi, ptr %i.qg, align 1, !tbaa !17
  %i.qj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.qk = trunc i32 %1 to i8
  store i8 %i.qk, ptr %i.qj, align 8, !tbaa !17
  %i.ql = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  store i8 3, ptr %i.ql, align 1, !tbaa !17
  %i.qm = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  store i8 1, ptr %i.qm, align 2, !tbaa !17
  %i.qn = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.qo = select i1 %i.an, i8 34, i8 17
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !17
  %i.qp = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store <8 x i8> <i8 0, i8 2, i8 17, i8 1, i8 3, i8 17, i8 1, i8 -1>, ptr %i.qp, align 4, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store <4 x i8> <i8 -60, i8 1, i8 -94, i8 0>, ptr %i.qq, align 4, !tbaa !17
  %i.qr = load ptr, ptr %0, align 8, !tbaa !15
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.qr(ptr noundef %i.qt, ptr noundef nonnull %i.u, i32 noundef 25) #25
  %i.qu = load ptr, ptr %0, align 8, !tbaa !15
  %i.qv = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.qu(ptr noundef %i.qv, ptr noundef nonnull %i.s, i32 noundef 64) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 1, ptr %i.h, align 1, !tbaa !17
  %i.qw = load ptr, ptr %0, align 8, !tbaa !15
  %i.qx = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.qw(ptr noundef %i.qx, ptr noundef nonnull %i.h, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.qy = load ptr, ptr %0, align 8, !tbaa !15
  %i.qz = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.qy(ptr noundef %i.qz, ptr noundef nonnull %i.t, i32 noundef 64) #25
  %i.ra = load ptr, ptr %0, align 8, !tbaa !15
  %i.rb = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.ra(ptr noundef %i.rb, ptr noundef nonnull %i.w, i32 noundef 24) #25
  %i.rc = load ptr, ptr %0, align 8, !tbaa !15
  %i.rd = load ptr, ptr %i.qs, align 8, !tbaa !16
  %i.re = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void %i.rc(ptr noundef %i.rd, ptr noundef nonnull %i.re, i32 noundef 16) #25
  %i.rf = load ptr, ptr %0, align 8, !tbaa !15
  %i.rg = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.rf(ptr noundef %i.rg, ptr noundef nonnull %i.j, i32 noundef 12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 16, ptr %i.g, align 1, !tbaa !17
  %i.rh = load ptr, ptr %0, align 8, !tbaa !15
  %i.ri = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.rh(ptr noundef %i.ri, ptr noundef nonnull %i.g, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.rj = load ptr, ptr %0, align 8, !tbaa !15
  %i.rk = load ptr, ptr %i.qs, align 8, !tbaa !16
  %i.rl = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void %i.rj(ptr noundef %i.rk, ptr noundef nonnull %i.rl, i32 noundef 16) #25
  %i.rm = load ptr, ptr %0, align 8, !tbaa !15
  %i.rn = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.rm(ptr noundef %i.rn, ptr noundef nonnull %i.l, i32 noundef 162) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.f, align 1, !tbaa !17
  %i.ro = load ptr, ptr %0, align 8, !tbaa !15
  %i.rp = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.ro(ptr noundef %i.rp, ptr noundef nonnull %i.f, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.rq = load ptr, ptr %0, align 8, !tbaa !15
  %i.rr = load ptr, ptr %i.qs, align 8, !tbaa !16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void %i.rq(ptr noundef %i.rr, ptr noundef nonnull %i.rs, i32 noundef 16) #25
  %i.rt = load ptr, ptr %0, align 8, !tbaa !15
  %i.ru = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.rt(ptr noundef %i.ru, ptr noundef nonnull %i.n, i32 noundef 12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 17, ptr %i.e, align 1, !tbaa !17
  %i.rv = load ptr, ptr %0, align 8, !tbaa !15
  %i.rw = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.rv(ptr noundef %i.rw, ptr noundef nonnull %i.e, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.rx = load ptr, ptr %0, align 8, !tbaa !15
  %i.ry = load ptr, ptr %i.qs, align 8, !tbaa !16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void %i.rx(ptr noundef %i.ry, ptr noundef nonnull %i.rz, i32 noundef 16) #25
  %i.sa = load ptr, ptr %0, align 8, !tbaa !15
  %i.sb = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.sa(ptr noundef %i.sb, ptr noundef nonnull %i.p, i32 noundef 162) #25
  %i.sc = load ptr, ptr %0, align 8, !tbaa !15
  %i.sd = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.sc(ptr noundef %i.sd, ptr noundef nonnull %i.v, i32 noundef 14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #25
  store i32 0, ptr %i.x, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #25
  store i32 0, ptr %i.y, align 4, !tbaa !12
  %i.se = icmp samesign ugt i32 %3, 2             ; 2 uses
  %i.sf = select i1 %i.se, i64 2, i64 0
  %i.sg = zext i1 %i.se to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 %i.sg ; 17 uses
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 %i.sf ; 17 uses
  %i.sj = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.an, label %.preheader267, label %.preheader269

.preheader269:                                    ; preds = %middle.block
  br i1 %i.sj, label %.preheader268.lr.ph, label %.loopexit

.preheader268.lr.ph:                              ; preds = %.preheader269
  %6 = icmp sgt i32 %1, 0
  %7 = add nsw i32 %2, -1                         ; 3 uses
  %8 = add nsw i32 %1, -1                         ; 8 uses
  br i1 %6, label %.preheader268.us, label %.loopexit

.preheader268.us:                                 ; preds = %.preheader268.lr.ph, %._crit_edge.us
  %indvars.iv362 = phi i32 [ %indvars.iv.next363, %._crit_edge.us ], [ 8, %.preheader268.lr.ph ] ; 3 uses
  %.2236294.us = phi i32 [ %i.add, %._crit_edge.us ], [ 0, %.preheader268.lr.ph ]
  %.1242293.us = phi i32 [ %i.adi, %._crit_edge.us ], [ 0, %.preheader268.lr.ph ] ; 3 uses
  %.2247292.us = phi i32 [ %i.adf, %._crit_edge.us ], [ 0, %.preheader268.lr.ph ]
  %.2251291.us = phi i32 [ %i.ade, %._crit_edge.us ], [ 0, %.preheader268.lr.ph ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader268.us, %.split284.us301
  %.3288.us = phi i32 [ %.2236294.us, %.preheader268.us ], [ %i.add, %.split284.us301 ]
  %.1244287.us = phi i32 [ 0, %.preheader268.us ], [ %i.adg, %.split284.us301 ] ; 9 uses
  %.3248286.us = phi i32 [ %.2247292.us, %.preheader268.us ], [ %i.adf, %.split284.us301 ]
  %.3252285.us = phi i32 [ %.2251291.us, %.preheader268.us ], [ %i.ade, %.split284.us301 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #25
  %i.sk = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.fr = freeze i32 %i.sk
  %.not264.us = icmp eq i32 %.fr, 0
  %i.sl = call i32 @llvm.smin.i32(i32 %.1244287.us, i32 %8) ; 2 uses
  %i.sm = or disjoint i32 %.1244287.us, 1
  %i.sn = call i32 @llvm.smin.i32(i32 %i.sm, i32 %8) ; 2 uses
  %i.so = or disjoint i32 %.1244287.us, 2
  %i.sp = call i32 @llvm.smin.i32(i32 %i.so, i32 %8) ; 2 uses
  %i.sq = or disjoint i32 %.1244287.us, 3
  %i.sr = call i32 @llvm.smin.i32(i32 %i.sq, i32 %8) ; 2 uses
  %i.ss = or disjoint i32 %.1244287.us, 4
  %i.st = call i32 @llvm.smin.i32(i32 %i.ss, i32 %8) ; 2 uses
  %i.su = or disjoint i32 %.1244287.us, 5
  %i.sv = call i32 @llvm.smin.i32(i32 %i.su, i32 %8) ; 2 uses
  %i.sw = or disjoint i32 %.1244287.us, 6
  %i.sx = call i32 @llvm.smin.i32(i32 %i.sw, i32 %8) ; 2 uses
  %i.sy = or disjoint i32 %.1244287.us, 7
  %i.sz = call i32 @llvm.smin.i32(i32 %i.sy, i32 %8) ; 2 uses
  br i1 %.not264.us, label %.split.us.us, label %.split.us295

.split.us295:                                     ; preds = %bb.g, %.split.us295
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %.split.us295 ], [ 0, %bb.g ] ; 5 uses
  %.2282.us296 = phi i32 [ %i.yb, %.split.us295 ], [ %.1242293.us, %bb.g ] ; 2 uses
  %i.ta = call i32 @llvm.smin.i32(i32 %.2282.us296, i32 %7)
  %i.tb = sub nsw i32 %7, %i.ta
  %i.tc = mul nuw nsw i32 %i.tb, %1               ; 8 uses
  %i.td = add i32 %i.sl, %i.tc
  %i.te = mul i32 %i.td, %3
  %i.tf = sext i32 %i.te to i64                   ; 3 uses
  %i.tg = getelementptr inbounds i8, ptr %4, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !17
  %i.ti = getelementptr inbounds i8, ptr %i.sh, i64 %i.tf
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !17
  %i.tk = getelementptr inbounds i8, ptr %i.si, i64 %i.tf
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !17
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv359
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv359
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv359
  %i.tp = add i32 %i.sn, %i.tc
  %i.tq = mul i32 %i.tp, %3
  %i.tr = sext i32 %i.tq to i64                   ; 3 uses
  %i.ts = getelementptr inbounds i8, ptr %4, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !17
  %i.tu = getelementptr inbounds i8, ptr %i.sh, i64 %i.tr
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !17
  %i.tw = getelementptr inbounds i8, ptr %i.si, i64 %i.tr
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !17
  %i.ty = add i32 %i.sp, %i.tc
  %i.tz = mul i32 %i.ty, %3
  %i.ua = sext i32 %i.tz to i64                   ; 3 uses
  %i.ub = getelementptr inbounds i8, ptr %4, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !17
  %i.ud = getelementptr inbounds i8, ptr %i.sh, i64 %i.ua
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !17
  %i.uf = getelementptr inbounds i8, ptr %i.si, i64 %i.ua
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !17
  %i.uh = add i32 %i.sr, %i.tc
  %i.ui = mul i32 %i.uh, %3
  %i.uj = sext i32 %i.ui to i64                   ; 3 uses
  %i.uk = getelementptr inbounds i8, ptr %4, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !17
  %i.um = getelementptr inbounds i8, ptr %i.sh, i64 %i.uj
  %i.un = load i8, ptr %i.um, align 1, !tbaa !17
  %i.uo = getelementptr inbounds i8, ptr %i.si, i64 %i.uj
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !17
  %i.uq = insertelement <4 x i8> poison, i8 %i.tj, i64 0
  %i.ur = insertelement <4 x i8> %i.uq, i8 %i.tv, i64 1
  %i.us = insertelement <4 x i8> %i.ur, i8 %i.ue, i64 2
  %i.ut = insertelement <4 x i8> %i.us, i8 %i.un, i64 3
  %i.uu = uitofp <4 x i8> %i.ut to <4 x float>    ; 3 uses
  %i.uv = insertelement <4 x i8> poison, i8 %i.th, i64 0
  %i.uw = insertelement <4 x i8> %i.uv, i8 %i.tt, i64 1
  %i.ux = insertelement <4 x i8> %i.uw, i8 %i.uc, i64 2
  %i.uy = insertelement <4 x i8> %i.ux, i8 %i.ul, i64 3
  %i.uz = uitofp <4 x i8> %i.uy to <4 x float>    ; 3 uses
  %i.va = insertelement <4 x i8> poison, i8 %i.tl, i64 0
  %i.vb = insertelement <4 x i8> %i.va, i8 %i.tx, i64 1
  %i.vc = insertelement <4 x i8> %i.vb, i8 %i.ug, i64 2
  %i.vd = insertelement <4 x i8> %i.vc, i8 %i.up, i64 3
  %i.ve = uitofp <4 x i8> %i.vd to <4 x float>    ; 3 uses
  %i.vf = fmul nnan <4 x float> %i.uu, splat (float 5.870000e-01)
  %i.vg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uz, <4 x float> splat (float 2.990000e-01), <4 x float> %i.vf)
  %i.vh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> splat (float 1.140000e-01), <4 x float> %i.vg)
  %i.vi = fadd <4 x float> %i.vh, splat (float -1.280000e+02)
  store <4 x float> %i.vi, ptr %i.tm, align 16, !tbaa !23
  %i.vj = fmul nnan <4 x float> %i.uu, splat (float -3.312600e-01)
  %i.vk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uz, <4 x float> splat (float -1.687400e-01), <4 x float> %i.vj)
  %i.vl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> splat (float 5.000000e-01), <4 x float> %i.vk)
  store <4 x float> %i.vl, ptr %i.tn, align 16, !tbaa !23
  %i.vm = fmul nnan <4 x float> %i.uu, splat (float -4.186900e-01)
  %i.vn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uz, <4 x float> splat (float 5.000000e-01), <4 x float> %i.vm)
  %i.vo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> splat (float f0xBDA685DB), <4 x float> %i.vn)
  store <4 x float> %i.vo, ptr %i.to, align 16, !tbaa !23
  %indvars.iv.next356.3 = or disjoint i64 %indvars.iv359, 4 ; 3 uses
  %i.vp = add i32 %i.st, %i.tc
  %i.vq = mul i32 %i.vp, %3
  %i.vr = sext i32 %i.vq to i64                   ; 3 uses
  %i.vs = getelementptr inbounds i8, ptr %4, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !17
  %i.vu = getelementptr inbounds i8, ptr %i.sh, i64 %i.vr
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !17
  %i.vw = getelementptr inbounds i8, ptr %i.si, i64 %i.vr
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !17
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next356.3
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next356.3
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next356.3
  %i.wb = add i32 %i.sv, %i.tc
  %i.wc = mul i32 %i.wb, %3
  %i.wd = sext i32 %i.wc to i64                   ; 3 uses
  %i.we = getelementptr inbounds i8, ptr %4, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !17
  %i.wg = getelementptr inbounds i8, ptr %i.sh, i64 %i.wd
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !17
  %i.wi = getelementptr inbounds i8, ptr %i.si, i64 %i.wd
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !17
  %i.wk = add i32 %i.sx, %i.tc
  %i.wl = mul i32 %i.wk, %3
  %i.wm = sext i32 %i.wl to i64                   ; 3 uses
  %i.wn = getelementptr inbounds i8, ptr %4, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !17
  %i.wp = getelementptr inbounds i8, ptr %i.sh, i64 %i.wm
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !17
  %i.wr = getelementptr inbounds i8, ptr %i.si, i64 %i.wm
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !17
  %i.wt = add i32 %i.sz, %i.tc
  %i.wu = mul i32 %i.wt, %3
  %i.wv = sext i32 %i.wu to i64                   ; 3 uses
  %i.ww = getelementptr inbounds i8, ptr %4, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !17
  %i.wy = getelementptr inbounds i8, ptr %i.sh, i64 %i.wv
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !17
  %i.xa = getelementptr inbounds i8, ptr %i.si, i64 %i.wv
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !17
  %i.xc = insertelement <4 x i8> poison, i8 %i.vv, i64 0
  %i.xd = insertelement <4 x i8> %i.xc, i8 %i.wh, i64 1
  %i.xe = insertelement <4 x i8> %i.xd, i8 %i.wq, i64 2
  %i.xf = insertelement <4 x i8> %i.xe, i8 %i.wz, i64 3
  %i.xg = uitofp <4 x i8> %i.xf to <4 x float>    ; 3 uses
  %i.xh = insertelement <4 x i8> poison, i8 %i.vt, i64 0
  %i.xi = insertelement <4 x i8> %i.xh, i8 %i.wf, i64 1
  %i.xj = insertelement <4 x i8> %i.xi, i8 %i.wo, i64 2
  %i.xk = insertelement <4 x i8> %i.xj, i8 %i.wx, i64 3
  %i.xl = uitofp <4 x i8> %i.xk to <4 x float>    ; 3 uses
  %i.xm = insertelement <4 x i8> poison, i8 %i.vx, i64 0
  %i.xn = insertelement <4 x i8> %i.xm, i8 %i.wj, i64 1
  %i.xo = insertelement <4 x i8> %i.xn, i8 %i.ws, i64 2
  %i.xp = insertelement <4 x i8> %i.xo, i8 %i.xb, i64 3
  %i.xq = uitofp <4 x i8> %i.xp to <4 x float>    ; 3 uses
  %i.xr = fmul nnan <4 x float> %i.xg, splat (float 5.870000e-01)
  %i.xs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xl, <4 x float> splat (float 2.990000e-01), <4 x float> %i.xr)
  %i.xt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> splat (float 1.140000e-01), <4 x float> %i.xs)
  %i.xu = fadd <4 x float> %i.xt, splat (float -1.280000e+02)
  store <4 x float> %i.xu, ptr %i.vy, align 16, !tbaa !23
  %i.xv = fmul nnan <4 x float> %i.xg, splat (float -3.312600e-01)
  %i.xw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xl, <4 x float> splat (float -1.687400e-01), <4 x float> %i.xv)
  %i.xx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> splat (float 5.000000e-01), <4 x float> %i.xw)
  store <4 x float> %i.xx, ptr %i.vz, align 16, !tbaa !23
  %i.xy = fmul nnan <4 x float> %i.xg, splat (float -4.186900e-01)
  %i.xz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xl, <4 x float> splat (float 5.000000e-01), <4 x float> %i.xy)
  %i.ya = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> splat (float f0xBDA685DB), <4 x float> %i.xz)
  store <4 x float> %i.ya, ptr %i.wa, align 16, !tbaa !23
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 8
  %i.yb = add nuw nsw i32 %.2282.us296, 1         ; 2 uses
  %exitcond364.not = icmp eq i32 %i.yb, %indvars.iv362
  br i1 %exitcond364.not, label %.split284.us301, label %.split.us295, !llvm.loop !111

.split.us.us:                                     ; preds = %bb.g, %.split.us.us
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.split.us.us ], [ 0, %bb.g ] ; 5 uses
  %.2282.us.us = phi i32 [ %i.adc, %.split.us.us ], [ %.1242293.us, %bb.g ] ; 2 uses
  %i.yc = call i32 @llvm.smin.i32(i32 %.2282.us.us, i32 %7)
  %i.yd = mul nsw i32 %i.yc, %1                   ; 8 uses
  %i.ye = add i32 %i.sl, %i.yd
  %i.yf = mul i32 %i.ye, %3
  %i.yg = sext i32 %i.yf to i64                   ; 3 uses
  %i.yh = getelementptr inbounds i8, ptr %4, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !17
  %i.yj = getelementptr inbounds i8, ptr %i.sh, i64 %i.yg
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !17
  %i.yl = getelementptr inbounds i8, ptr %i.si, i64 %i.yg
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !17
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv369
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv369
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv369
  %i.yq = add i32 %i.sn, %i.yd
  %i.yr = mul i32 %i.yq, %3
  %i.ys = sext i32 %i.yr to i64                   ; 3 uses
  %i.yt = getelementptr inbounds i8, ptr %4, i64 %i.ys
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !17
  %i.yv = getelementptr inbounds i8, ptr %i.sh, i64 %i.ys
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !17
  %i.yx = getelementptr inbounds i8, ptr %i.si, i64 %i.ys
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !17
  %i.yz = add i32 %i.sp, %i.yd
  %i.za = mul i32 %i.yz, %3
  %i.zb = sext i32 %i.za to i64                   ; 3 uses
  %i.zc = getelementptr inbounds i8, ptr %4, i64 %i.zb
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !17
  %i.ze = getelementptr inbounds i8, ptr %i.sh, i64 %i.zb
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !17
  %i.zg = getelementptr inbounds i8, ptr %i.si, i64 %i.zb
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !17
  %i.zi = add i32 %i.sr, %i.yd
  %i.zj = mul i32 %i.zi, %3
  %i.zk = sext i32 %i.zj to i64                   ; 3 uses
  %i.zl = getelementptr inbounds i8, ptr %4, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !17
  %i.zn = getelementptr inbounds i8, ptr %i.sh, i64 %i.zk
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !17
  %i.zp = getelementptr inbounds i8, ptr %i.si, i64 %i.zk
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !17
  %i.zr = insertelement <4 x i8> poison, i8 %i.yk, i64 0
  %i.zs = insertelement <4 x i8> %i.zr, i8 %i.yw, i64 1
  %i.zt = insertelement <4 x i8> %i.zs, i8 %i.zf, i64 2
  %i.zu = insertelement <4 x i8> %i.zt, i8 %i.zo, i64 3
  %i.zv = uitofp <4 x i8> %i.zu to <4 x float>    ; 3 uses
  %i.zw = insertelement <4 x i8> poison, i8 %i.yi, i64 0
  %i.zx = insertelement <4 x i8> %i.zw, i8 %i.yu, i64 1
  %i.zy = insertelement <4 x i8> %i.zx, i8 %i.zd, i64 2
  %i.zz = insertelement <4 x i8> %i.zy, i8 %i.zm, i64 3
  %i.aaa = uitofp <4 x i8> %i.zz to <4 x float>   ; 3 uses
  %i.aab = insertelement <4 x i8> poison, i8 %i.ym, i64 0
  %i.aac = insertelement <4 x i8> %i.aab, i8 %i.yy, i64 1
  %i.aad = insertelement <4 x i8> %i.aac, i8 %i.zh, i64 2
  %i.aae = insertelement <4 x i8> %i.aad, i8 %i.zq, i64 3
  %i.aaf = uitofp <4 x i8> %i.aae to <4 x float>  ; 3 uses
  %i.aag = fmul nnan <4 x float> %i.zv, splat (float 5.870000e-01)
  %i.aah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaa, <4 x float> splat (float 2.990000e-01), <4 x float> %i.aag)
  %i.aai = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> splat (float 1.140000e-01), <4 x float> %i.aah)
  %i.aaj = fadd <4 x float> %i.aai, splat (float -1.280000e+02)
  store <4 x float> %i.aaj, ptr %i.yn, align 16, !tbaa !23
  %i.aak = fmul nnan <4 x float> %i.zv, splat (float -3.312600e-01)
  %i.aal = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaa, <4 x float> splat (float -1.687400e-01), <4 x float> %i.aak)
  %i.aam = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> splat (float 5.000000e-01), <4 x float> %i.aal)
  store <4 x float> %i.aam, ptr %i.yo, align 16, !tbaa !23
  %i.aan = fmul nnan <4 x float> %i.zv, splat (float -4.186900e-01)
  %i.aao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaa, <4 x float> splat (float 5.000000e-01), <4 x float> %i.aan)
  %i.aap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> splat (float f0xBDA685DB), <4 x float> %i.aao)
  store <4 x float> %i.aap, ptr %i.yp, align 16, !tbaa !23
  %indvars.iv.next366.3 = or disjoint i64 %indvars.iv369, 4 ; 3 uses
  %i.aaq = add i32 %i.st, %i.yd
  %i.aar = mul i32 %i.aaq, %3
  %i.aas = sext i32 %i.aar to i64                 ; 3 uses
  %i.aat = getelementptr inbounds i8, ptr %4, i64 %i.aas
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !17
  %i.aav = getelementptr inbounds i8, ptr %i.sh, i64 %i.aas
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !17
  %i.aax = getelementptr inbounds i8, ptr %i.si, i64 %i.aas
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !17
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next366.3
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next366.3
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next366.3
  %i.abc = add i32 %i.sv, %i.yd
  %i.abd = mul i32 %i.abc, %3
  %i.abe = sext i32 %i.abd to i64                 ; 3 uses
  %i.abf = getelementptr inbounds i8, ptr %4, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !17
  %i.abh = getelementptr inbounds i8, ptr %i.sh, i64 %i.abe
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !17
  %i.abj = getelementptr inbounds i8, ptr %i.si, i64 %i.abe
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !17
  %i.abl = add i32 %i.sx, %i.yd
  %i.abm = mul i32 %i.abl, %3
  %i.abn = sext i32 %i.abm to i64                 ; 3 uses
  %i.abo = getelementptr inbounds i8, ptr %4, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !17
  %i.abq = getelementptr inbounds i8, ptr %i.sh, i64 %i.abn
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !17
  %i.abs = getelementptr inbounds i8, ptr %i.si, i64 %i.abn
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !17
  %i.abu = add i32 %i.sz, %i.yd
  %i.abv = mul i32 %i.abu, %3
  %i.abw = sext i32 %i.abv to i64                 ; 3 uses
  %i.abx = getelementptr inbounds i8, ptr %4, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !17
  %i.abz = getelementptr inbounds i8, ptr %i.sh, i64 %i.abw
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !17
  %i.acb = getelementptr inbounds i8, ptr %i.si, i64 %i.abw
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !17
  %i.acd = insertelement <4 x i8> poison, i8 %i.aaw, i64 0
  %i.ace = insertelement <4 x i8> %i.acd, i8 %i.abi, i64 1
  %i.acf = insertelement <4 x i8> %i.ace, i8 %i.abr, i64 2
  %i.acg = insertelement <4 x i8> %i.acf, i8 %i.aca, i64 3
  %i.ach = uitofp <4 x i8> %i.acg to <4 x float>  ; 3 uses
  %i.aci = insertelement <4 x i8> poison, i8 %i.aau, i64 0
  %i.acj = insertelement <4 x i8> %i.aci, i8 %i.abg, i64 1
  %i.ack = insertelement <4 x i8> %i.acj, i8 %i.abp, i64 2
  %i.acl = insertelement <4 x i8> %i.ack, i8 %i.aby, i64 3
  %i.acm = uitofp <4 x i8> %i.acl to <4 x float>  ; 3 uses
  %i.acn = insertelement <4 x i8> poison, i8 %i.aay, i64 0
  %i.aco = insertelement <4 x i8> %i.acn, i8 %i.abk, i64 1
  %i.acp = insertelement <4 x i8> %i.aco, i8 %i.abt, i64 2
  %i.acq = insertelement <4 x i8> %i.acp, i8 %i.acc, i64 3
  %i.acr = uitofp <4 x i8> %i.acq to <4 x float>  ; 3 uses
  %i.acs = fmul nnan <4 x float> %i.ach, splat (float 5.870000e-01)
  %i.act = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> splat (float 2.990000e-01), <4 x float> %i.acs)
  %i.acu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acr, <4 x float> splat (float 1.140000e-01), <4 x float> %i.act)
  %i.acv = fadd <4 x float> %i.acu, splat (float -1.280000e+02)
  store <4 x float> %i.acv, ptr %i.aaz, align 16, !tbaa !23
  %i.acw = fmul nnan <4 x float> %i.ach, splat (float -3.312600e-01)
  %i.acx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> splat (float -1.687400e-01), <4 x float> %i.acw)
  %i.acy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acr, <4 x float> splat (float 5.000000e-01), <4 x float> %i.acx)
  store <4 x float> %i.acy, ptr %i.aba, align 16, !tbaa !23
  %i.acz = fmul nnan <4 x float> %i.ach, splat (float -4.186900e-01)
  %i.ada = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> splat (float 5.000000e-01), <4 x float> %i.acz)
  %i.adb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acr, <4 x float> splat (float f0xBDA685DB), <4 x float> %i.ada)
  store <4 x float> %i.adb, ptr %i.abb, align 16, !tbaa !23
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 8
  %i.adc = add nuw nsw i32 %.2282.us.us, 1        ; 2 uses
  %exitcond372.not = icmp eq i32 %i.adc, %indvars.iv362
  br i1 %exitcond372.not, label %.split284.us301, label %.split.us.us, !llvm.loop !111

.split284.us301:                                  ; preds = %.split.us295, %.split.us.us
  %i.add = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ae, i32 noundef 8, ptr noundef nonnull %i.q, i32 noundef %.3288.us, ptr noundef nonnull @__const.stbi_write_jpg_core.YDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.YAC_HT) ; 2 uses
  %i.ade = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.af, i32 noundef 8, ptr noundef nonnull %i.r, i32 noundef %.3252285.us, ptr noundef nonnull @__const.stbi_write_jpg_core.UVDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.UVAC_HT) ; 2 uses
  %i.adf = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ag, i32 noundef 8, ptr noundef nonnull %i.r, i32 noundef %.3248286.us, ptr noundef nonnull @__const.stbi_write_jpg_core.UVDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #25
  %i.adg = add nuw nsw i32 %.1244287.us, 8        ; 2 uses
  %i.adh = icmp slt i32 %i.adg, %1
  br i1 %i.adh, label %bb.g, label %._crit_edge.us, !llvm.loop !112

._crit_edge.us:                                   ; preds = %.split284.us301
  %i.adi = add nuw nsw i32 %.1242293.us, 8        ; 2 uses
  %i.adj = icmp slt i32 %i.adi, %2
  %indvars.iv.next363 = add i32 %indvars.iv362, 8
  br i1 %i.adj, label %.preheader268.us, label %.loopexit, !llvm.loop !113

.preheader267:                                    ; preds = %middle.block
  br i1 %i.sj, label %.preheader266.lr.ph, label %.loopexit

.preheader266.lr.ph:                              ; preds = %.preheader267
  %9 = icmp sgt i32 %1, 0
  %10 = add nsw i32 %2, -1                        ; 2 uses
  %11 = add nsw i32 %1, -1
  %i.adk = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.adl = getelementptr inbounds nuw i8, ptr %i.z, i64 512
  %i.adm = getelementptr inbounds nuw i8, ptr %i.z, i64 544
  br i1 %9, label %.preheader266.us, label %.loopexit

.preheader266.us:                                 ; preds = %.preheader266.lr.ph, %._crit_edge.us320
  %indvars.iv377 = phi i32 [ %indvars.iv.next378, %._crit_edge.us320 ], [ 16, %.preheader266.lr.ph ] ; 2 uses
  %.0234319.us = phi i32 [ %i.aez, %._crit_edge.us320 ], [ 0, %.preheader266.lr.ph ]
  %.0241318.us = phi i32 [ %i.bqh, %._crit_edge.us320 ], [ 0, %.preheader266.lr.ph ] ; 2 uses
  %.0245317.us = phi i32 [ %i.bqe, %._crit_edge.us320 ], [ 0, %.preheader266.lr.ph ]
  %.0249316.us = phi i32 [ %i.bqd, %._crit_edge.us320 ], [ 0, %.preheader266.lr.ph ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader266.us, %middle.block426
  %.1235313.us = phi i32 [ %.0234319.us, %.preheader266.us ], [ %i.aez, %middle.block426 ]
  %.0243312.us = phi i32 [ 0, %.preheader266.us ], [ %i.bqf, %middle.block426 ] ; 2 uses
  %.1246311.us = phi i32 [ %.0245317.us, %.preheader266.us ], [ %i.bqe, %middle.block426 ]
  %.1250310.us = phi i32 [ %.0249316.us, %.preheader266.us ], [ %i.bqd, %middle.block426 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #25
  %i.adn = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.not265.us = icmp eq i32 %i.adn, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.1305.us = phi i32 [ %.0241318.us, %bb.h ], [ %i.aev, %bb.k ] ; 2 uses
  %.0237304.us = phi i32 [ 0, %bb.h ], [ %i.adt, %bb.k ] ; 2 uses
  %i.ado = call i32 @llvm.smin.i32(i32 %.1305.us, i32 %10) ; 2 uses
  %i.adp = sub nsw i32 %10, %i.ado
  %i.adq = select i1 %.not265.us, i32 %i.ado, i32 %i.adp
  %i.adr = mul nsw i32 %i.adq, %1
  %i.ads = sext i32 %.0237304.us to i64
  %i.adt = add i32 %.0237304.us, 16               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %bb.j ], [ %i.ads, %bb.i ] ; 4 uses
  %.1227303.us = phi i32 [ %i.aeu, %bb.j ], [ %.0243312.us, %bb.i ] ; 2 uses
  %i.adu = call i32 @llvm.smin.i32(i32 %.1227303.us, i32 %11)
  %i.adv = add i32 %i.adu, %i.adr
  %i.adw = mul i32 %i.adv, %3
  %i.adx = sext i32 %i.adw to i64                 ; 3 uses
  %i.ady = getelementptr inbounds i8, ptr %4, i64 %i.adx
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !17
  %i.aea = uitofp i8 %i.adz to float              ; 3 uses
  %i.aeb = getelementptr inbounds i8, ptr %i.sh, i64 %i.adx
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !17
  %i.aed = uitofp i8 %i.aec to float              ; 3 uses
  %i.aee = getelementptr inbounds i8, ptr %i.si, i64 %i.adx
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !17
  %i.aeg = uitofp i8 %i.aef to float              ; 3 uses
  %i.aeh = fmul nnan float %i.aed, 5.870000e-01
  %i.aei = call float @llvm.fmuladd.f32(float %i.aea, float 2.990000e-01, float %i.aeh)
  %i.aej = call float @llvm.fmuladd.f32(float %i.aeg, float 1.140000e-01, float %i.aei)
  %i.aek = fadd float %i.aej, -1.280000e+02
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv373
  store float %i.aek, ptr %i.ael, align 4, !tbaa !23
  %i.aem = fmul nnan float %i.aed, -3.312600e-01
  %i.aen = call float @llvm.fmuladd.f32(float %i.aea, float -1.687400e-01, float %i.aem)
  %i.aeo = call float @llvm.fmuladd.f32(float %i.aeg, float 5.000000e-01, float %i.aen)
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %indvars.iv373
  store float %i.aeo, ptr %i.aep, align 4, !tbaa !23
  %i.aeq = fmul nnan float %i.aed, -4.186900e-01
  %i.aer = call float @llvm.fmuladd.f32(float %i.aea, float 5.000000e-01, float %i.aeq)
  %i.aes = call float @llvm.fmuladd.f32(float %i.aeg, float f0xBDA685DB, float %i.aer)
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv373
  store float %i.aes, ptr %i.aet, align 4, !tbaa !23
  %i.aeu = add nuw nsw i32 %.1227303.us, 1
  %indvars.iv.next374 = add nsw i64 %indvars.iv373, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next374 to i32
  %exitcond376.not = icmp eq i32 %i.adt, %lftr.wideiv
  br i1 %exitcond376.not, label %bb.k, label %bb.j, !llvm.loop !114

bb.k:                                             ; preds = %bb.j
  %i.aev = add nuw nsw i32 %.1305.us, 1           ; 2 uses
  %exitcond379.not = icmp eq i32 %i.aev, %indvars.iv377
  br i1 %exitcond379.not, label %vector.ph420, label %bb.i, !llvm.loop !115

vector.ph420:                                     ; preds = %bb.k
  %i.aew = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i32 noundef 16, ptr noundef nonnull %i.q, i32 noundef %.1235313.us, ptr noundef nonnull @__const.stbi_write_jpg_core.YDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.YAC_HT)
  %i.aex = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.adk, i32 noundef 16, ptr noundef nonnull %i.q, i32 noundef %i.aew, ptr noundef nonnull @__const.stbi_write_jpg_core.YDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.YAC_HT)
  %i.aey = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.adl, i32 noundef 16, ptr noundef nonnull %i.q, i32 noundef %i.aex, ptr noundef nonnull @__const.stbi_write_jpg_core.YDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.YAC_HT)
  %i.aez = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.adm, i32 noundef 16, ptr noundef nonnull %i.q, i32 noundef %i.aey, ptr noundef nonnull @__const.stbi_write_jpg_core.YDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.YAC_HT) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #25
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph420
  %index422 = phi i64 [ 0, %vector.ph420 ], [ %index.next425, %vector.body421 ] ; 6 uses
  %i.afa = shl nuw i64 %index422, 3               ; 2 uses
  %i.afb = shl nuw nsw i64 %index422, 5           ; 33 uses
  %i.afc = shl i64 %index422, 5                   ; 32 uses
  %i.afd = or disjoint i64 %i.afc, 32             ; 2 uses
  %i.afe = shl i64 %index422, 5                   ; 32 uses
  %i.aff = or disjoint i64 %i.afe, 64             ; 2 uses
  %i.afg = shl i64 %index422, 5                   ; 32 uses
  %i.afh = or disjoint i64 %i.afg, 96             ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afb
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afd
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.aff
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afh
  %i.afm = load float, ptr %i.afi, align 16, !tbaa !23
  %i.afn = load float, ptr %i.afj, align 16, !tbaa !23
  %i.afo = load float, ptr %i.afk, align 16, !tbaa !23
  %i.afp = load float, ptr %i.afl, align 16, !tbaa !23
  %i.afq = insertelement <4 x float> poison, float %i.afm, i64 0
  %i.afr = insertelement <4 x float> %i.afq, float %i.afn, i64 1
  %i.afs = insertelement <4 x float> %i.afr, float %i.afo, i64 2
  %i.aft = insertelement <4 x float> %i.afs, float %i.afp, i64 3
  %i.afu = or disjoint i64 %i.afb, 1              ; 2 uses
  %i.afv = or disjoint i64 %i.afc, 33             ; 2 uses
  %i.afw = or disjoint i64 %i.afe, 65             ; 2 uses
  %i.afx = or disjoint i64 %i.afg, 97             ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afu
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afv
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afw
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.afx
  %i.agc = load float, ptr %i.afy, align 4, !tbaa !23
  %i.agd = load float, ptr %i.afz, align 4, !tbaa !23
  %i.age = load float, ptr %i.aga, align 4, !tbaa !23
  %i.agf = load float, ptr %i.agb, align 4, !tbaa !23
  %i.agg = insertelement <4 x float> poison, float %i.agc, i64 0
  %i.agh = insertelement <4 x float> %i.agg, float %i.agd, i64 1
  %i.agi = insertelement <4 x float> %i.agh, float %i.age, i64 2
  %i.agj = insertelement <4 x float> %i.agi, float %i.agf, i64 3
  %i.agk = or disjoint i64 %i.afb, 16             ; 2 uses
  %i.agl = or disjoint i64 %i.afc, 48             ; 2 uses
  %i.agm = or disjoint i64 %i.afe, 80             ; 2 uses
  %i.agn = or disjoint i64 %i.afg, 112            ; 2 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.agk
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.agl
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.agm
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.agn
  %i.ags = load float, ptr %i.ago, align 16, !tbaa !23
  %i.agt = load float, ptr %i.agp, align 16, !tbaa !23
  %i.agu = load float, ptr %i.agq, align 16, !tbaa !23
  %i.agv = load float, ptr %i.agr, align 16, !tbaa !23
  %i.agw = insertelement <4 x float> poison, float %i.ags, i64 0
  %i.agx = insertelement <4 x float> %i.agw, float %i.agt, i64 1
  %i.agy = insertelement <4 x float> %i.agx, float %i.agu, i64 2
  %i.agz = insertelement <4 x float> %i.agy, float %i.agv, i64 3
  %i.aha = or disjoint i64 %i.afb, 17             ; 2 uses
  %i.ahb = or disjoint i64 %i.afc, 49             ; 2 uses
  %i.ahc = or disjoint i64 %i.afe, 81             ; 2 uses
  %i.ahd = or disjoint i64 %i.afg, 113            ; 2 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.aha
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ahb
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ahc
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ahd
  %i.ahi = load float, ptr %i.ahe, align 4, !tbaa !23
  %i.ahj = load float, ptr %i.ahf, align 4, !tbaa !23
  %i.ahk = load float, ptr %i.ahg, align 4, !tbaa !23
  %i.ahl = load float, ptr %i.ahh, align 4, !tbaa !23
  %i.ahm = insertelement <4 x float> poison, float %i.ahi, i64 0
  %i.ahn = insertelement <4 x float> %i.ahm, float %i.ahj, i64 1
  %i.aho = insertelement <4 x float> %i.ahn, float %i.ahk, i64 2
  %i.ahp = insertelement <4 x float> %i.aho, float %i.ahl, i64 3
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.afa
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afb
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afd
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aff
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afh
  %i.ahv = load float, ptr %i.ahr, align 16, !tbaa !23
  %i.ahw = load float, ptr %i.ahs, align 16, !tbaa !23
  %i.ahx = load float, ptr %i.aht, align 16, !tbaa !23
  %i.ahy = load float, ptr %i.ahu, align 16, !tbaa !23
  %i.ahz = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.aia = insertelement <4 x float> %i.ahz, float %i.ahw, i64 1
  %i.aib = insertelement <4 x float> %i.aia, float %i.ahx, i64 2
  %i.aic = insertelement <4 x float> %i.aib, float %i.ahy, i64 3
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afu
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afv
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afw
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.afx
  %i.aih = load float, ptr %i.aid, align 4, !tbaa !23
  %i.aii = load float, ptr %i.aie, align 4, !tbaa !23
  %i.aij = load float, ptr %i.aif, align 4, !tbaa !23
  %i.aik = load float, ptr %i.aig, align 4, !tbaa !23
  %i.ail = insertelement <4 x float> poison, float %i.aih, i64 0
  %i.aim = insertelement <4 x float> %i.ail, float %i.aii, i64 1
  %i.ain = insertelement <4 x float> %i.aim, float %i.aij, i64 2
  %i.aio = insertelement <4 x float> %i.ain, float %i.aik, i64 3
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.agk
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.agl
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.agm
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.agn
  %i.ait = load float, ptr %i.aip, align 16, !tbaa !23
  %i.aiu = load float, ptr %i.aiq, align 16, !tbaa !23
  %i.aiv = load float, ptr %i.air, align 16, !tbaa !23
  %i.aiw = load float, ptr %i.ais, align 16, !tbaa !23
  %i.aix = insertelement <4 x float> poison, float %i.ait, i64 0
  %i.aiy = insertelement <4 x float> %i.aix, float %i.aiu, i64 1
  %i.aiz = insertelement <4 x float> %i.aiy, float %i.aiv, i64 2
  %i.aja = insertelement <4 x float> %i.aiz, float %i.aiw, i64 3
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aha
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ahb
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ahc
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ahd
  %i.ajf = load float, ptr %i.ajb, align 4, !tbaa !23
  %i.ajg = load float, ptr %i.ajc, align 4, !tbaa !23
  %i.ajh = load float, ptr %i.ajd, align 4, !tbaa !23
  %i.aji = load float, ptr %i.aje, align 4, !tbaa !23
  %i.ajj = insertelement <4 x float> poison, float %i.ajf, i64 0
  %i.ajk = insertelement <4 x float> %i.ajj, float %i.ajg, i64 1
  %i.ajl = insertelement <4 x float> %i.ajk, float %i.ajh, i64 2
  %i.ajm = insertelement <4 x float> %i.ajl, float %i.aji, i64 3
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.afa
  %i.ajo = or disjoint i64 %i.afb, 2              ; 2 uses
  %i.ajp = or disjoint i64 %i.afc, 34             ; 2 uses
  %i.ajq = or disjoint i64 %i.afe, 66             ; 2 uses
  %i.ajr = or disjoint i64 %i.afg, 98             ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ajo
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ajp
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ajq
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ajr
  %i.ajw = load float, ptr %i.ajs, align 8, !tbaa !23
  %i.ajx = load float, ptr %i.ajt, align 8, !tbaa !23
  %i.ajy = load float, ptr %i.aju, align 8, !tbaa !23
  %i.ajz = load float, ptr %i.ajv, align 8, !tbaa !23
  %i.aka = insertelement <4 x float> poison, float %i.ajw, i64 0
  %i.akb = insertelement <4 x float> %i.aka, float %i.ajx, i64 1
  %i.akc = insertelement <4 x float> %i.akb, float %i.ajy, i64 2
  %i.akd = insertelement <4 x float> %i.akc, float %i.ajz, i64 3
  %i.ake = or disjoint i64 %i.afb, 3              ; 2 uses
  %i.akf = or disjoint i64 %i.afc, 35             ; 2 uses
  %i.akg = or disjoint i64 %i.afe, 67             ; 2 uses
  %i.akh = or disjoint i64 %i.afg, 99             ; 2 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ake
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.akf
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.akg
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.akh
  %i.akm = load float, ptr %i.aki, align 4, !tbaa !23
  %i.akn = load float, ptr %i.akj, align 4, !tbaa !23
  %i.ako = load float, ptr %i.akk, align 4, !tbaa !23
  %i.akp = load float, ptr %i.akl, align 4, !tbaa !23
  %i.akq = insertelement <4 x float> poison, float %i.akm, i64 0
  %i.akr = insertelement <4 x float> %i.akq, float %i.akn, i64 1
  %i.aks = insertelement <4 x float> %i.akr, float %i.ako, i64 2
  %i.akt = insertelement <4 x float> %i.aks, float %i.akp, i64 3
end_hunk_0
begin_hunk_1_@stbi_write_jpg_core:bb.a
  %i.bjk = or disjoint i64 %i.afb, 14             ; 2 uses
  %i.bjl = or disjoint i64 %i.afc, 46             ; 2 uses
  %i.bjm = or disjoint i64 %i.afe, 78             ; 2 uses
  %i.bjn = or disjoint i64 %i.afg, 110            ; 2 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bjk
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bjl
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bjm
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bjn
  %i.bjs = load float, ptr %i.bjo, align 8, !tbaa !23
  %i.bjt = load float, ptr %i.bjp, align 8, !tbaa !23
  %i.bju = load float, ptr %i.bjq, align 8, !tbaa !23
  %i.bjv = load float, ptr %i.bjr, align 8, !tbaa !23
  %i.bjw = insertelement <4 x float> poison, float %i.bjs, i64 0
  %i.bjx = insertelement <4 x float> %i.bjw, float %i.bjt, i64 1
  %i.bjy = insertelement <4 x float> %i.bjx, float %i.bju, i64 2
  %i.bjz = insertelement <4 x float> %i.bjy, float %i.bjv, i64 3
  %i.bka = or disjoint i64 %i.afb, 15             ; 2 uses
  %i.bkb = or disjoint i64 %i.afc, 47             ; 2 uses
  %i.bkc = or disjoint i64 %i.afe, 79             ; 2 uses
  %i.bkd = or disjoint i64 %i.afg, 111            ; 2 uses
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bka
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bkb
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bkc
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bkd
  %i.bki = load float, ptr %i.bke, align 4, !tbaa !23
  %i.bkj = load float, ptr %i.bkf, align 4, !tbaa !23
  %i.bkk = load float, ptr %i.bkg, align 4, !tbaa !23
  %i.bkl = load float, ptr %i.bkh, align 4, !tbaa !23
  %i.bkm = insertelement <4 x float> poison, float %i.bki, i64 0
  %i.bkn = insertelement <4 x float> %i.bkm, float %i.bkj, i64 1
  %i.bko = insertelement <4 x float> %i.bkn, float %i.bkk, i64 2
  %i.bkp = insertelement <4 x float> %i.bko, float %i.bkl, i64 3
  %i.bkq = or disjoint i64 %i.afb, 30             ; 2 uses
  %i.bkr = or disjoint i64 %i.afc, 62             ; 2 uses
  %i.bks = or disjoint i64 %i.afe, 94             ; 2 uses
  %i.bkt = or disjoint i64 %i.afg, 126            ; 2 uses
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bkq
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bkr
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bks
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bkt
  %i.bky = load float, ptr %i.bku, align 8, !tbaa !23
  %i.bkz = load float, ptr %i.bkv, align 8, !tbaa !23
  %i.bla = load float, ptr %i.bkw, align 8, !tbaa !23
  %i.blb = load float, ptr %i.bkx, align 8, !tbaa !23
  %i.blc = insertelement <4 x float> poison, float %i.bky, i64 0
  %i.bld = insertelement <4 x float> %i.blc, float %i.bkz, i64 1
  %i.ble = insertelement <4 x float> %i.bld, float %i.bla, i64 2
  %i.blf = insertelement <4 x float> %i.ble, float %i.blb, i64 3
  %i.blg = or disjoint i64 %i.afb, 31             ; 2 uses
  %i.blh = or disjoint i64 %i.afc, 63             ; 2 uses
  %i.bli = or disjoint i64 %i.afe, 95             ; 2 uses
  %i.blj = or disjoint i64 %i.afg, 127            ; 2 uses
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.blg
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.blh
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bli
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.blj
  %i.blo = load float, ptr %i.blk, align 4, !tbaa !23
  %i.blp = load float, ptr %i.bll, align 4, !tbaa !23
  %i.blq = load float, ptr %i.blm, align 4, !tbaa !23
  %i.blr = load float, ptr %i.bln, align 4, !tbaa !23
  %i.bls = insertelement <4 x float> poison, float %i.blo, i64 0
  %i.blt = insertelement <4 x float> %i.bls, float %i.blp, i64 1
  %i.blu = insertelement <4 x float> %i.blt, float %i.blq, i64 2
  %i.blv = insertelement <4 x float> %i.blu, float %i.blr, i64 3
  %i.blw = shufflevector <4 x float> %i.aft, <4 x float> %i.akd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.blx = shufflevector <4 x float> %i.aol, <4 x float> %i.ast, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bly = shufflevector <8 x float> %i.blw, <8 x float> %i.blx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.blz = shufflevector <4 x float> %i.agj, <4 x float> %i.akt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bma = shufflevector <4 x float> %i.apb, <4 x float> %i.atj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmb = shufflevector <8 x float> %i.blz, <8 x float> %i.bma, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmc = fadd <16 x float> %i.bly, %i.bmb
  %i.bmd = shufflevector <4 x float> %i.agz, <4 x float> %i.alj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bme = shufflevector <4 x float> %i.apr, <4 x float> %i.atz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmf = shufflevector <8 x float> %i.bmd, <8 x float> %i.bme, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmg = fadd <16 x float> %i.bmc, %i.bmf
  %i.bmh = shufflevector <4 x float> %i.ahp, <4 x float> %i.alz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmi = shufflevector <4 x float> %i.aqh, <4 x float> %i.aup, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmj = shufflevector <8 x float> %i.bmh, <8 x float> %i.bmi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmk = fadd <16 x float> %i.bmg, %i.bmj
  %i.bml = shufflevector <4 x float> %i.axb, <4 x float> %i.bbj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmm = shufflevector <4 x float> %i.bfr, <4 x float> %i.bjz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmn = shufflevector <8 x float> %i.bml, <8 x float> %i.bmm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmo = shufflevector <4 x float> %i.axr, <4 x float> %i.bbz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmp = shufflevector <4 x float> %i.bgh, <4 x float> %i.bkp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmq = shufflevector <8 x float> %i.bmo, <8 x float> %i.bmp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmr = fadd <16 x float> %i.bmn, %i.bmq
  %i.bms = shufflevector <4 x float> %i.ayh, <4 x float> %i.bcp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmt = shufflevector <4 x float> %i.bgx, <4 x float> %i.blf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmu = shufflevector <8 x float> %i.bms, <8 x float> %i.bmt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmv = fadd <16 x float> %i.bmr, %i.bmu
  %i.bmw = shufflevector <4 x float> %i.ayx, <4 x float> %i.bdf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmx = shufflevector <4 x float> %i.bhn, <4 x float> %i.blv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmy = shufflevector <8 x float> %i.bmw, <8 x float> %i.bmx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmz = fadd <16 x float> %i.bmv, %i.bmy
  %i.bna = shufflevector <16 x float> %i.bmk, <16 x float> %i.bmz, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec423 = fmul <32 x float> %i.bna, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec423, ptr %i.ahq, align 16, !tbaa !23
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bjk
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bjl
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bjm
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bjn
  %i.bnf = load float, ptr %i.bnb, align 8, !tbaa !23
  %i.bng = load float, ptr %i.bnc, align 8, !tbaa !23
  %i.bnh = load float, ptr %i.bnd, align 8, !tbaa !23
  %i.bni = load float, ptr %i.bne, align 8, !tbaa !23
  %i.bnj = insertelement <4 x float> poison, float %i.bnf, i64 0
  %i.bnk = insertelement <4 x float> %i.bnj, float %i.bng, i64 1
  %i.bnl = insertelement <4 x float> %i.bnk, float %i.bnh, i64 2
  %i.bnm = insertelement <4 x float> %i.bnl, float %i.bni, i64 3
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bka
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bkb
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bkc
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bkd
  %i.bnr = load float, ptr %i.bnn, align 4, !tbaa !23
  %i.bns = load float, ptr %i.bno, align 4, !tbaa !23
  %i.bnt = load float, ptr %i.bnp, align 4, !tbaa !23
  %i.bnu = load float, ptr %i.bnq, align 4, !tbaa !23
  %i.bnv = insertelement <4 x float> poison, float %i.bnr, i64 0
  %i.bnw = insertelement <4 x float> %i.bnv, float %i.bns, i64 1
  %i.bnx = insertelement <4 x float> %i.bnw, float %i.bnt, i64 2
  %i.bny = insertelement <4 x float> %i.bnx, float %i.bnu, i64 3
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bkq
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bkr
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bks
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bkt
  %i.bod = load float, ptr %i.bnz, align 8, !tbaa !23
  %i.boe = load float, ptr %i.boa, align 8, !tbaa !23
  %i.bof = load float, ptr %i.bob, align 8, !tbaa !23
  %i.bog = load float, ptr %i.boc, align 8, !tbaa !23
  %i.boh = insertelement <4 x float> poison, float %i.bod, i64 0
  %i.boi = insertelement <4 x float> %i.boh, float %i.boe, i64 1
  %i.boj = insertelement <4 x float> %i.boi, float %i.bof, i64 2
  %i.bok = insertelement <4 x float> %i.boj, float %i.bog, i64 3
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.blg
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.blh
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bli
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.blj
  %i.bop = load float, ptr %i.bol, align 4, !tbaa !23
  %i.boq = load float, ptr %i.bom, align 4, !tbaa !23
  %i.bor = load float, ptr %i.bon, align 4, !tbaa !23
  %i.bos = load float, ptr %i.boo, align 4, !tbaa !23
  %i.bot = insertelement <4 x float> poison, float %i.bop, i64 0
  %i.bou = insertelement <4 x float> %i.bot, float %i.boq, i64 1
  %i.bov = insertelement <4 x float> %i.bou, float %i.bor, i64 2
  %i.bow = insertelement <4 x float> %i.bov, float %i.bos, i64 3
  %i.box = shufflevector <4 x float> %i.aic, <4 x float> %i.aml, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boy = shufflevector <4 x float> %i.aqt, <4 x float> %i.avb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boz = shufflevector <8 x float> %i.box, <8 x float> %i.boy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpa = shufflevector <4 x float> %i.aio, <4 x float> %i.amx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpb = shufflevector <4 x float> %i.arf, <4 x float> %i.avn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpc = shufflevector <8 x float> %i.bpa, <8 x float> %i.bpb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpd = fadd <16 x float> %i.boz, %i.bpc
  %i.bpe = shufflevector <4 x float> %i.aja, <4 x float> %i.anj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpf = shufflevector <4 x float> %i.arr, <4 x float> %i.avz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpg = shufflevector <8 x float> %i.bpe, <8 x float> %i.bpf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bph = fadd <16 x float> %i.bpd, %i.bpg
  %i.bpi = shufflevector <4 x float> %i.ajm, <4 x float> %i.anv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpj = shufflevector <4 x float> %i.asd, <4 x float> %i.awl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpk = shufflevector <8 x float> %i.bpi, <8 x float> %i.bpj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpl = fadd <16 x float> %i.bph, %i.bpk
  %i.bpm = shufflevector <4 x float> %i.azj, <4 x float> %i.bdr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpn = shufflevector <4 x float> %i.bhz, <4 x float> %i.bnm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpo = shufflevector <8 x float> %i.bpm, <8 x float> %i.bpn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpp = shufflevector <4 x float> %i.azv, <4 x float> %i.bed, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpq = shufflevector <4 x float> %i.bil, <4 x float> %i.bny, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpr = shufflevector <8 x float> %i.bpp, <8 x float> %i.bpq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bps = fadd <16 x float> %i.bpo, %i.bpr
  %i.bpt = shufflevector <4 x float> %i.bah, <4 x float> %i.bep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpu = shufflevector <4 x float> %i.bix, <4 x float> %i.bok, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpv = shufflevector <8 x float> %i.bpt, <8 x float> %i.bpu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpw = fadd <16 x float> %i.bps, %i.bpv
  %i.bpx = shufflevector <4 x float> %i.bat, <4 x float> %i.bfb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpy = shufflevector <4 x float> %i.bjj, <4 x float> %i.bow, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpz = shufflevector <8 x float> %i.bpx, <8 x float> %i.bpy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqa = fadd <16 x float> %i.bpw, %i.bpz
  %i.bqb = shufflevector <16 x float> %i.bpl, <16 x float> %i.bqa, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec424 = fmul <32 x float> %i.bqb, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec424, ptr %i.ajn, align 16, !tbaa !23
  %index.next425 = add nuw i64 %index422, 4       ; 2 uses
  %i.bqc = icmp eq i64 %index.next425, 8
  br i1 %i.bqc, label %middle.block426, label %vector.body421, !llvm.loop !116

middle.block426:                                  ; preds = %vector.body421
  %i.bqd = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ac, i32 noundef 8, ptr noundef nonnull %i.r, i32 noundef %.1250310.us, ptr noundef nonnull @__const.stbi_write_jpg_core.UVDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.UVAC_HT) ; 2 uses
  %i.bqe = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ad, i32 noundef 8, ptr noundef nonnull %i.r, i32 noundef %.1246311.us, ptr noundef nonnull @__const.stbi_write_jpg_core.UVDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #25
  %i.bqf = add nuw nsw i32 %.0243312.us, 16       ; 2 uses
  %i.bqg = icmp slt i32 %i.bqf, %1
  br i1 %i.bqg, label %bb.h, label %._crit_edge.us320, !llvm.loop !117

._crit_edge.us320:                                ; preds = %middle.block426
  %i.bqh = add nuw nsw i32 %.0241318.us, 16       ; 2 uses
  %i.bqi = icmp slt i32 %i.bqh, %2
  %indvars.iv.next378 = add i32 %indvars.iv377, 16
  br i1 %i.bqi, label %.preheader266.us, label %.loopexit, !llvm.loop !118

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.us320, %.preheader266.lr.ph, %.preheader268.lr.ph, %.preheader269, %.preheader267
  %i.bqj = load i32, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.bqk = icmp sgt i32 %i.bqj, 0
  br i1 %i.bqk, label %.lr.ph.i.preheader, label %stbiw__jpg_writeBits.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.bql = sub nsw i32 17, %i.bqj
  %i.bqm = shl i32 127, %i.bql
  %i.bqn = load i32, ptr %i.x, align 4, !tbaa !12
  %i.bqo = or i32 %i.bqm, %i.bqn
  %i.bqp = add nuw nsw i32 %i.bqj, 7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.020.i = phi i32 [ %i.bqz, %bb.m ], [ %i.bqp, %.lr.ph.i.preheader ] ; 2 uses
  %.01819.i = phi i32 [ %i.bqy, %bb.m ], [ %i.bqo, %.lr.ph.i.preheader ] ; 3 uses
  %i.bqq = lshr i32 %.01819.i, 16
  %i.bqr = trunc i32 %i.bqq to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.bqr, ptr %i.d, align 1, !tbaa !17
  %i.bqs = load ptr, ptr %0, align 8, !tbaa !15
  %i.bqt = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.bqs(ptr noundef %i.bqt, ptr noundef nonnull %i.d, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bqu = and i32 %.01819.i, 16711680
  %i.bqv = icmp eq i32 %i.bqu, 16711680
  br i1 %i.bqv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !17
  %i.bqw = load ptr, ptr %0, align 8, !tbaa !15
  %i.bqx = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.bqw(ptr noundef %i.bqx, ptr noundef nonnull %i.c, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bqy = shl i32 %.01819.i, 8
  %i.bqz = add nsw i32 %.020.i, -8
  %i.bra = icmp sgt i32 %.020.i, 15
  br i1 %i.bra, label %.lr.ph.i, label %stbiw__jpg_writeBits.exit, !llvm.loop !3

stbiw__jpg_writeBits.exit:                        ; preds = %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 1, !tbaa !17
  %i.brb = load ptr, ptr %0, align 8, !tbaa !15
  %i.brc = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.brb(ptr noundef %i.brc, ptr noundef nonnull %i.b, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -39, ptr %i.a, align 1, !tbaa !17
  %i.brd = load ptr, ptr %0, align 8, !tbaa !15
  %i.bre = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.brd(ptr noundef %i.bre, ptr noundef nonnull %i.a, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %stbiw__jpg_writeBits.exit
  %.0 = phi i32 [ 1, %stbiw__jpg_writeBits.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_jpg_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %7, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = call i32 @stbi_write_jpg_core(ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_jpg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 3 uses
  store ptr @stbi__stdio_write, ptr %6, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !16
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @stbi_write_jpg_core(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

end_hunk_1
