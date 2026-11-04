Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO14processMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %2, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !159
  %i.qk = and i32 %i.qj, 2
  %.not.i341 = icmp eq i32 %i.qk, 0
  br i1 %.not.i341, label %bb.cb, label %.invoke756

bb.cb:                                            ; preds = %.noexc342
  %i.ql = load i8, ptr %i.aj, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #28
  %.not204 = icmp eq i8 %i.ql, 0
  %i.qm = zext i1 %.not204 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #28
  store i8 0, ptr %i.ai, align 1
  %i.qn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.noexc346 unwind label %bb.gy ; 0 uses

.noexc346:                                        ; preds = %bb.cb
  %i.qo = load ptr, ptr %2, align 8, !tbaa !55
  %i.qp = getelementptr i8, ptr %i.qo, i64 -24
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = getelementptr inbounds i8, ptr %2, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !159
  %i.qu = and i32 %i.qt, 2
  %.not.i345 = icmp eq i32 %i.qu, 0
  br i1 %.not.i345, label %bb.cc, label %.invoke756

bb.cc:                                            ; preds = %.noexc346
  %i.qv = load i8, ptr %i.ai, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #28
  %.not205 = icmp eq i8 %i.qv, 0
  %i.qw = zext i1 %.not205 to i8
  %i.qx = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.cd unwind label %bb.gy

bb.cd:                                            ; preds = %bb.cc
  %.not690 = icmp eq i32 %i.qx, -1
  br i1 %.not690, label %bb.ct, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #28
  store i32 0, ptr %i.ah, align 4
  %i.qy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ah, i64 noundef 4)
          to label %.noexc351 unwind label %bb.gy ; 0 uses

.noexc351:                                        ; preds = %bb.ce
  %i.qz = load ptr, ptr %2, align 8, !tbaa !55
  %i.ra = getelementptr i8, ptr %i.qz, i64 -24
  %i.rb = load i64, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds i8, ptr %2, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !159
  %i.rf = and i32 %i.re, 2
  %.not.i350 = icmp eq i32 %i.rf, 0
  br i1 %.not.i350, label %bb.cf, label %.invoke756

bb.cf:                                            ; preds = %.noexc351
  %i.rg = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ah)
          to label %bb.cg unwind label %bb.gy

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #28
  store i32 0, ptr %i.ag, align 4
  %i.rh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ag, i64 noundef 4)
          to label %.noexc356 unwind label %bb.gy ; 0 uses

.noexc356:                                        ; preds = %bb.cg
  %i.ri = load ptr, ptr %2, align 8, !tbaa !55
  %i.rj = getelementptr i8, ptr %i.ri, i64 -24
  %i.rk = load i64, ptr %i.rj, align 8
  %i.rl = getelementptr inbounds i8, ptr %2, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !159
  %i.ro = and i32 %i.rn, 2
  %.not.i355 = icmp eq i32 %i.ro, 0
  br i1 %.not.i355, label %bb.ch, label %.invoke756

bb.ch:                                            ; preds = %.noexc356
  %i.rp = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ag)
          to label %bb.ci unwind label %bb.gy

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #28
  store i32 0, ptr %i.af, align 4
  %i.rq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.af, i64 noundef 4)
          to label %.noexc361 unwind label %bb.gy ; 0 uses

.noexc361:                                        ; preds = %bb.ci
  %i.rr = load ptr, ptr %2, align 8, !tbaa !55
  %i.rs = getelementptr i8, ptr %i.rr, i64 -24
  %i.rt = load i64, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds i8, ptr %2, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !159
  %i.rx = and i32 %i.rw, 2
  %.not.i360 = icmp eq i32 %i.rx, 0
  br i1 %.not.i360, label %bb.cj, label %.invoke756

bb.cj:                                            ; preds = %.noexc361
  %i.ry = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.af)
          to label %bb.ck unwind label %bb.gy

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #28
  store i32 0, ptr %i.ae, align 4
  %i.rz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ae, i64 noundef 4)
          to label %.noexc366 unwind label %bb.gy ; 0 uses

.noexc366:                                        ; preds = %bb.ck
  %i.sa = load ptr, ptr %2, align 8, !tbaa !55
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %2, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !159
  %i.sg = and i32 %i.sf, 2
  %.not.i365 = icmp eq i32 %i.sg, 0
  br i1 %.not.i365, label %bb.cl, label %.invoke756

bb.cl:                                            ; preds = %.noexc366
  %i.sh = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ae)
          to label %bb.cm unwind label %bb.gy

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #28
  store i32 0, ptr %i.ad, align 4
  %i.si = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ad, i64 noundef 4)
          to label %.noexc371 unwind label %bb.gy ; 0 uses

.noexc371:                                        ; preds = %bb.cm
  %i.sj = load ptr, ptr %2, align 8, !tbaa !55
  %i.sk = getelementptr i8, ptr %i.sj, i64 -24
  %i.sl = load i64, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds i8, ptr %2, i64 %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !159
  %i.sp = and i32 %i.so, 2
  %.not.i370 = icmp eq i32 %i.sp, 0
  br i1 %.not.i370, label %bb.cn, label %.invoke756

bb.cn:                                            ; preds = %.noexc371
  %i.sq = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ad)
          to label %bb.co unwind label %bb.gy

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #28
  store i32 0, ptr %i.ac, align 4
  %i.sr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ac, i64 noundef 4)
          to label %.noexc376 unwind label %bb.gy ; 0 uses

.noexc376:                                        ; preds = %bb.co
  %i.ss = load ptr, ptr %2, align 8, !tbaa !55
  %i.st = getelementptr i8, ptr %i.ss, i64 -24
  %i.su = load i64, ptr %i.st, align 8
  %i.sv = getelementptr inbounds i8, ptr %2, i64 %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !159
  %i.sy = and i32 %i.sx, 2
  %.not.i375 = icmp eq i32 %i.sy, 0
  br i1 %.not.i375, label %bb.cp, label %.invoke756

bb.cp:                                            ; preds = %.noexc376
  %i.sz = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ac)
          to label %bb.cq unwind label %bb.gy

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #28
  store i32 0, ptr %i.ab, align 4
  %i.ta = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab, i64 noundef 4)
          to label %.noexc381 unwind label %bb.gy ; 0 uses

.noexc381:                                        ; preds = %bb.cq
  %i.tb = load ptr, ptr %2, align 8, !tbaa !55
  %i.tc = getelementptr i8, ptr %i.tb, i64 -24
  %i.td = load i64, ptr %i.tc, align 8
  %i.te = getelementptr inbounds i8, ptr %2, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !159
  %i.th = and i32 %i.tg, 2
  %.not.i380 = icmp eq i32 %i.th, 0
  br i1 %.not.i380, label %bb.cr, label %.invoke756

bb.cr:                                            ; preds = %.noexc381
  %i.ti = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.ab)
          to label %bb.cs unwind label %bb.gy

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #28
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cd
  %.sroa.28.0 = phi nsz float [ %i.ti, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %.sroa.26667.0 = phi nsz float [ %i.sz, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %.sroa.24.0 = phi nsz float [ %i.sq, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %.sroa.22.0 = phi nsz float [ %i.sh, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %.sroa.20.0 = phi nsz float [ %i.ry, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %.sroa.18.0 = phi nsz float [ %i.rp, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %.sroa.16666.0 = phi nsz float [ %i.rg, %bb.cs ], [ 1.000000e+00, %bb.cd ]
  %i.tj = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.cu unwind label %bb.gy

bb.cu:                                            ; preds = %bb.ct
  %.not691 = icmp eq i32 %i.tj, -1
  br i1 %.not691, label %bb.dc, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #28
  store i32 0, ptr %i.aa, align 4
  %i.tk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aa, i64 noundef 4)
          to label %.noexc388 unwind label %bb.gy ; 0 uses

.noexc388:                                        ; preds = %bb.cv
  %i.tl = load ptr, ptr %2, align 8, !tbaa !55
  %i.tm = getelementptr i8, ptr %i.tl, i64 -24
  %i.tn = load i64, ptr %i.tm, align 8
  %i.to = getelementptr inbounds i8, ptr %2, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !159
  %i.tr = and i32 %i.tq, 2
  %.not.i387 = icmp eq i32 %i.tr, 0
  br i1 %.not.i387, label %bb.cw, label %.invoke756

bb.cw:                                            ; preds = %.noexc388
  %i.ts = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.aa)
          to label %bb.cx unwind label %bb.gy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #28
  store i32 0, ptr %i.z, align 4
  %i.tt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.z, i64 noundef 4)
          to label %.noexc393 unwind label %bb.gy ; 0 uses

.noexc393:                                        ; preds = %bb.cx
  %i.tu = load ptr, ptr %2, align 8, !tbaa !55
  %i.tv = getelementptr i8, ptr %i.tu, i64 -24
  %i.tw = load i64, ptr %i.tv, align 8
  %i.tx = getelementptr inbounds i8, ptr %2, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !159
  %i.ua = and i32 %i.tz, 2
  %.not.i392 = icmp eq i32 %i.ua, 0
  br i1 %.not.i392, label %bb.cy, label %.invoke756

bb.cy:                                            ; preds = %.noexc393
  %i.ub = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.z)
          to label %bb.cz unwind label %bb.gy

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #28
  store i32 0, ptr %i.y, align 4
  %i.uc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.y, i64 noundef 4)
          to label %.noexc398 unwind label %bb.gy ; 0 uses

.noexc398:                                        ; preds = %bb.cz
  %i.ud = load ptr, ptr %2, align 8, !tbaa !55
  %i.ue = getelementptr i8, ptr %i.ud, i64 -24
  %i.uf = load i64, ptr %i.ue, align 8
  %i.ug = getelementptr inbounds i8, ptr %2, i64 %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 32
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !159
  %i.uj = and i32 %i.ui, 2
  %.not.i397 = icmp eq i32 %i.uj, 0
  br i1 %.not.i397, label %bb.da, label %.invoke756

bb.da:                                            ; preds = %.noexc398
  %i.uk = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.y)
          to label %bb.db unwind label %bb.gy

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cu
  %.sroa.30.0 = phi nsz float [ %i.ts, %bb.db ], [ 1.000000e+00, %bb.cu ]
  %.sroa.32.0 = phi nsz float [ %i.ub, %bb.db ], [ 1.000000e+00, %bb.cu ]
  %.sroa.34.0 = phi nsz float [ %i.uk, %bb.db ], [ 1.000000e+00, %bb.cu ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !117, !range !46, !noundef !47
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %bb.dd, label %.critedge

bb.dd:                                            ; preds = %bb.dc
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !187
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 96
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !233 ; 16 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 264
  store float %i.pa, ptr %i.us, align 8, !tbaa !48
  %.sroa.6663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 268
  store float %i.pj, ptr %.sroa.6663.0..sroa_idx, align 4, !tbaa !48
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 272
  store float %i.ps, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !48
  %.sroa.10664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 276
  store i8 %i.qc, ptr %.sroa.10664.0..sroa_idx, align 4, !tbaa !458
  %.sroa.12665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 277
  store i8 %i.qm, ptr %.sroa.12665.0..sroa_idx, align 1, !tbaa !458
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 278
  store i8 %i.qw, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !458
  %.sroa.16666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 280
  store float %.sroa.16666.0, ptr %.sroa.16666.0..sroa_idx, align 8, !tbaa !48
  %.sroa.18.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ur, i64 284
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx.a, align 4, !tbaa !48
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 288
  store float %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !48
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 292
  store float %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !48
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 296
  store float %.sroa.24.0, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !48
  %.sroa.26667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 300
  store float %.sroa.26667.0, ptr %.sroa.26667.0..sroa_idx, align 4, !tbaa !48
  %.sroa.28.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ur, i64 304
  store float %.sroa.28.0, ptr %.sroa.28.0..sroa_idx.a, align 8, !tbaa !48
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 308
  store float %.sroa.30.0, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !48
  %.sroa.32.0..sroa_idx668 = getelementptr inbounds nuw i8, ptr %i.ur, i64 312
  store float %.sroa.32.0, ptr %.sroa.32.0..sroa_idx668, align 8, !tbaa !48
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ur, i64 316
  store float %.sroa.34.0, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !48
  br label %.critedge

bb.de:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #28
  store i64 0, ptr %i.x, align 8
  %i.ut = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.x, i64 noundef 8)
          to label %.noexc405 unwind label %bb.gy ; 0 uses

.noexc405:                                        ; preds = %bb.de
  %i.uu = load ptr, ptr %2, align 8, !tbaa !55
  %i.uv = getelementptr i8, ptr %i.uu, i64 -24
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds i8, ptr %2, i64 %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 32
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !159
  %i.va = and i32 %i.uz, 2
  %.not.i402 = icmp eq i32 %i.va, 0
  br i1 %.not.i402, label %bb.df, label %.invoke756

bb.df:                                            ; preds = %.noexc405
  %i.vb = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.x)
          to label %.noexc407 unwind label %bb.gy

.noexc407:                                        ; preds = %bb.df
  %i.vc = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.vd = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.vc)
          to label %bb.dg unwind label %bb.gy

bb.dg:                                            ; preds = %.noexc407
  %.sroa.0.0.vec.insert.i.i403 = insertelement <2 x float> poison, float %i.vb, i64 0
  %.sroa.0.4.vec.insert.i.i404 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i403, float %i.vd, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !117, !range !46, !noundef !47
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x float> %.sroa.0.4.vec.insert.i.i404, ptr %i.vh, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #28
  store i32 0, ptr %i.w, align 4
  %i.vi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.w, i64 noundef 4)
          to label %.noexc410 unwind label %bb.gy ; 0 uses

.noexc410:                                        ; preds = %bb.dh
  %i.vj = load ptr, ptr %2, align 8, !tbaa !55
  %i.vk = getelementptr i8, ptr %i.vj, i64 -24
  %i.vl = load i64, ptr %i.vk, align 8
  %i.vm = getelementptr inbounds i8, ptr %2, i64 %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !159
  %i.vp = and i32 %i.vo, 2
  %.not.i409 = icmp eq i32 %i.vp, 0
  br i1 %.not.i409, label %bb.di, label %.invoke756

bb.di:                                            ; preds = %.noexc410
  %i.vq = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.w)
          to label %bb.dj unwind label %bb.gy

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #28
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 736
  store float %i.vq, ptr %i.vr, align 8, !tbaa !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #28
  store i32 0, ptr %i.v, align 4
  %i.vs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.v, i64 noundef 4)
          to label %.noexc415 unwind label %bb.gy ; 0 uses

.noexc415:                                        ; preds = %bb.dj
  %i.vt = load ptr, ptr %2, align 8, !tbaa !55
  %i.vu = getelementptr i8, ptr %i.vt, i64 -24
  %i.vv = load i64, ptr %i.vu, align 8
  %i.vw = getelementptr inbounds i8, ptr %2, i64 %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !159
  %i.vz = and i32 %i.vy, 2
  %.not.i414 = icmp eq i32 %i.vz, 0
  br i1 %.not.i414, label %bb.dk, label %.invoke756

bb.dk:                                            ; preds = %.noexc415
  %i.wa = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.v)
          to label %bb.dl unwind label %bb.gy

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #28
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 740
  store float %i.wa, ptr %i.wb, align 4, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #28
  store i8 0, ptr %i.u, align 1
  %i.wc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %.noexc420 unwind label %bb.gy ; 0 uses

.noexc420:                                        ; preds = %bb.dl
  %i.wd = load ptr, ptr %2, align 8, !tbaa !55
  %i.we = getelementptr i8, ptr %i.wd, i64 -24
  %i.wf = load i64, ptr %i.we, align 8
  %i.wg = getelementptr inbounds i8, ptr %2, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !159
  %i.wj = and i32 %i.wi, 2
  %.not.i419 = icmp eq i32 %i.wj, 0
  br i1 %.not.i419, label %bb.dm, label %.invoke756

bb.dm:                                            ; preds = %.noexc420
  %i.wk = load i8, ptr %i.u, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  %.not198 = icmp eq i8 %i.wk, 0
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.wm = zext i1 %.not198 to i8
  store i8 %i.wm, ptr %i.wl, align 2, !tbaa !122
  br label %.invoke755

bb.dn:                                            ; preds = %bb.dg
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !187
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 96
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !233 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 488
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !600
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %bb.dn
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x float> %.sroa.0.4.vec.insert.i.i404, ptr %i.wu, align 8, !tbaa !48
  %i.wv = invoke noundef float @_Z7readF32RSi(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dp unwind label %bb.gy

bb.dp:                                            ; preds = %bb.do
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 736
  store float %i.wv, ptr %i.ww, align 8, !tbaa !591
  %i.wx = invoke noundef float @_Z7readF32RSi(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dq unwind label %bb.gy

bb.dq:                                            ; preds = %bb.dp
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 740
  store float %i.wx, ptr %i.wy, align 4, !tbaa !592
  %i.wz = invoke noundef zeroext i8 @_Z6readU8RSi(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dr unwind label %bb.gy

bb.dr:                                            ; preds = %bb.dq
  %.not199 = icmp eq i8 %i.wz, 0
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.xb = zext i1 %.not199 to i8
  store i8 %i.xb, ptr %i.xa, align 2, !tbaa !122
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dn
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !590 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wq, i64 148
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !607 ; 2 uses
  %i.xg = fcmp nsz une float %i.xd, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wq, i64 156
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !607 ; 2 uses
  %i.xj = fcmp nsz une float %i.xd, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wq, i64 164
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !607
  %i.xm = fcmp nsz une float %i.xd, %i.xl
  %.not763 = select i1 %i.xm, i1 %i.xj, i1 false
  %spec.select.2.not760 = select i1 %.not763, i1 %i.xg, i1 false
  %i.xn = fadd nsz float %i.xf, %i.xi
  %i.xo = fcmp nsz olt float %i.xn, 1.000000e+00
  %or.cond = select i1 %spec.select.2.not760, i1 true, i1 %i.xo
  br i1 %or.cond, label %.invoke755, label %.critedge

.invoke755:                                       ; preds = %bb.ds, %bb.dm
  invoke void @_ZN10GenericCAO15updateAnimationEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
          to label %.critedge unwind label %bb.gy

bb.dt:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #28
  store i32 0, ptr %i.t, align 4
  %i.xp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.t, i64 noundef 4)
          to label %.noexc424 unwind label %bb.gy ; 0 uses

.noexc424:                                        ; preds = %bb.dt
  %i.xq = load ptr, ptr %2, align 8, !tbaa !55
  %i.xr = getelementptr i8, ptr %i.xq, i64 -24
  %i.xs = load i64, ptr %i.xr, align 8
  %i.xt = getelementptr inbounds i8, ptr %2, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !159
  %i.xw = and i32 %i.xv, 2
  %.not.i423 = icmp eq i32 %i.xw, 0
  br i1 %.not.i423, label %bb.du, label %.invoke756

bb.du:                                            ; preds = %.noexc424
  %i.xx = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.t)
          to label %bb.dv unwind label %bb.gy     ; 2 uses

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 736
  store float %i.xx, ptr %i.xy, align 8, !tbaa !591
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !288 ; 2 uses
  %.not.i428 = icmp eq ptr %i.ya, null
  br i1 %.not.i428, label %.critedge, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432) %i.ya, float noundef %i.xx)
          to label %.critedge unwind label %bb.gy

bb.dx:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.yc = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.dz unwind label %bb.ec     ; 14 uses

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.44)
  %.not688 = icmp eq ptr %i.yc, null
  br i1 %.not688, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.sroa.7602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 52
  %.sroa.7602.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.7602.0..sroa_idx, align 4, !tbaa !48
  %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 60
  %.sroa.7602.sroa.8.0.copyload = load float, ptr %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx.sroa_idx, align 4, !tbaa !48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.0..sroa_idx, i64 3, i1 false), !tbaa.struct !890
  %.sroa.12607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 68
  %.sroa.12607.0.copyload = load float, ptr %.sroa.12607.0..sroa_idx, align 4, !tbaa !48
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 88
  %12 = load <4 x float>, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !48
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 104
  %.sroa.26.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !48
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29.0..sroa_idx, i64 3, i1 false), !tbaa.struct !891
  %.sroa.29621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 120
  %.sroa.29621.0.copyload = load float, ptr %.sroa.29621.0..sroa_idx, align 8, !tbaa !48
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 136
  %.sroa.36.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.36.0..sroa_idx, align 8, !tbaa !48
  %.sroa.36.sroa.9.0..sroa.36.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 144
  %.sroa.36.sroa.9.0.copyload = load float, ptr %.sroa.36.sroa.9.0..sroa.36.0..sroa_idx.sroa_idx, align 8, !tbaa !48
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 148
  %.sroa.42.0.copyload = load i8, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !458
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx, i64 3, i1 false), !tbaa.struct !892
  %.sroa.44630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yc, i64 152
  %.sroa.44630.0.copyload = load float, ptr %.sroa.44630.0..sroa_idx, align 8, !tbaa !48
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dx
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

bb.ec:                                            ; preds = %bb.dy
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ed:                                            ; preds = %bb.dz, %bb.ea
  %.sroa.26.sroa.0.0 = phi nsz <3 x float> [ zeroinitializer, %bb.dz ], [ %.sroa.26.sroa.0.0.copyload, %bb.ea ]
  %.sroa.0601.sroa.7.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.7602.sroa.8.0.copyload, %bb.ea ]
  %.sroa.0601.sroa.0.0 = phi nsz <2 x float> [ zeroinitializer, %bb.dz ], [ %.sroa.7602.sroa.0.0.copyload, %bb.ea ]
  %.sroa.12607.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.12607.0.copyload, %bb.ea ]
  %.sroa.32.sroa.8.0 = phi nsz float [ 1.000000e+00, %bb.dz ], [ %.sroa.36.sroa.9.0.copyload, %bb.ea ] ; 2 uses
  %.sroa.32.sroa.0.0 = phi nsz <2 x float> [ splat (float 1.000000e+00), %bb.dz ], [ %.sroa.36.sroa.0.0.copyload, %bb.ea ] ; 2 uses
  %.sroa.44630.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.44630.0.copyload, %bb.ea ]
  %.sroa.42.0 = phi i8 [ 0, %bb.dz ], [ %.sroa.42.0.copyload, %bb.ea ]
  %.sroa.29621.0 = phi nsz float [ 0.000000e+00, %bb.dz ], [ %.sroa.29621.0.copyload, %bb.ea ]
  %13 = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.dz ], [ %12, %bb.ea ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, i8 0, i64 12, i1 false)
  %i.yf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.s, i64 noundef 12)
          to label %.noexc436 unwind label %bb.et ; 0 uses

.noexc436:                                        ; preds = %bb.ed
  %i.yg = load ptr, ptr %2, align 8, !tbaa !55
  %i.yh = getelementptr i8, ptr %i.yg, i64 -24
  %i.yi = load i64, ptr %i.yh, align 8
  %i.yj = getelementptr inbounds i8, ptr %2, i64 %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !159
  %i.ym = and i32 %i.yl, 2
  %.not.i431 = icmp eq i32 %i.ym, 0
  br i1 %.not.i431, label %bb.ee, label %.invoke

bb.ee:                                            ; preds = %.noexc436
  %i.yn = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.s)
          to label %.noexc438 unwind label %bb.et

.noexc438:                                        ; preds = %bb.ee
  %i.yo = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.yp = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.yo)
          to label %.noexc439 unwind label %bb.et

.noexc439:                                        ; preds = %.noexc438
  %.sroa.0.0.vec.insert.i.i432 = insertelement <2 x float> poison, float %i.yn, i64 0
  %.sroa.0.4.vec.insert.i.i433 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i432, float %i.yp, i64 1
  %i.yq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.yr = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.yq)
          to label %bb.ef unwind label %bb.et

bb.ef:                                            ; preds = %.noexc439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.ys = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 12)
          to label %.noexc447 unwind label %bb.et ; 0 uses

.noexc447:                                        ; preds = %bb.ef
  %i.yt = load ptr, ptr %2, align 8, !tbaa !55
  %i.yu = getelementptr i8, ptr %i.yt, i64 -24
  %i.yv = load i64, ptr %i.yu, align 8
  %i.yw = getelementptr inbounds i8, ptr %2, i64 %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !159
  %i.yz = and i32 %i.yy, 2
  %.not.i442 = icmp eq i32 %i.yz, 0
  br i1 %.not.i442, label %bb.eg, label %.invoke

.invoke:                                          ; preds = %.noexc463, %.noexc470, %.noexc475, %.noexc480, %.noexc485, %.noexc447, %.noexc436
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.cont unwind label %bb.et

.cont:                                            ; preds = %.invoke
  unreachable

bb.eg:                                            ; preds = %.noexc447
  %i.za = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.r)
          to label %.noexc449 unwind label %bb.et

.noexc449:                                        ; preds = %bb.eg
  %i.zb = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.zc = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.zb)
          to label %.noexc450 unwind label %bb.et

.noexc450:                                        ; preds = %.noexc449
  %i.zd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ze = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.zd)
          to label %bb.eh unwind label %bb.et

bb.eh:                                            ; preds = %.noexc450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  %i.zf = fmul nsz float %i.za, f0x3C8EFA35
  %i.zg = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.ze, i64 1
  %i.zi = fmul nsz <2 x float> %i.zh, splat (float f0x3C8EFA35)
  %i.zj = fpext nsz float %i.zf to double
  %i.zk = fmul nsz double %i.zj, 5.000000e-01
  %sincos.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.zk) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.zl = fpext nsz <2 x float> %i.zi to <2 x double>
  %i.zm = fmul nsz <2 x double> %i.zl, splat (double 5.000000e-01)
  %i.zn = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.zm) ; 2 uses
  %i.zo = extractvalue { <2 x double>, <2 x double> } %i.zn, 0 ; 3 uses
  %i.zp = shufflevector <2 x double> %i.zo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zq = extractelement <2 x double> %i.zo, i64 0
  %i.zr = extractvalue { <2 x double>, <2 x double> } %i.zn, 1 ; 2 uses
  %i.zs = shufflevector <2 x double> %i.zr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.zt = extractelement <2 x double> %i.zo, i64 1
  %i.zu = shufflevector <2 x double> %i.zr, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.zv = shufflevector <4 x double> %i.zu, <4 x double> %i.zp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.zw = fmul nsz <4 x double> %i.zv, %i.zs      ; 3 uses
  %i.zx = fmul nsz double %i.zq, %i.zt            ; 2 uses
  %i.zy = fneg nsz double %i.zx
  %i.zz = insertelement <4 x double> poison, double %cos.i.i, i64 0
  %i.aaa = insertelement <4 x double> %i.zz, double %sin.i.i, i64 1 ; 2 uses
  %i.aab = shufflevector <4 x double> %i.aaa, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aac = shufflevector <4 x double> %i.zw, <4 x double> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %i.aad = insertelement <4 x double> %i.aac, double %i.zy, i64 0
  %i.aae = fneg nsz <4 x double> %i.zw
  %i.aaf = shufflevector <4 x double> %i.aad, <4 x double> %i.aae, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aag = insertelement <4 x double> %i.aaf, double %i.zx, i64 3
  %i.aah = fmul nsz <4 x double> %i.aab, %i.aag
  %i.aai = shufflevector <4 x double> %i.aaa, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.aaj = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aai, <4 x double> %i.zw, <4 x double> %i.aah)
  %i.aak = fptrunc nsz <4 x double> %i.aaj to <4 x float> ; 6 uses
  %foldExtExtBinop = fmul nsz <4 x float> %i.aak, %i.aak
  %i.aal = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.aam = extractelement <4 x float> %i.aak, i64 0 ; 2 uses
  %i.aan = call nsz float @llvm.fmuladd.f32(float %i.aam, float %i.aam, float %i.aal)
  %i.aao = extractelement <4 x float> %i.aak, i64 2 ; 2 uses
  %i.aap = call nsz float @llvm.fmuladd.f32(float %i.aao, float %i.aao, float %i.aan)
  %i.aaq = extractelement <4 x float> %i.aak, i64 3 ; 2 uses
  %i.aar = call nsz float @llvm.fmuladd.f32(float %i.aaq, float %i.aaq, float %i.aap)
  %i.aas = fpext nsz float %i.aar to double
  %i.aat = call nsz double @llvm.sqrt.f64(double %i.aas)
  %i.aau = fdiv nsz double 1.000000e+00, %i.aat
  %i.aav = fptrunc nsz double %i.aau to float
  %i.aaw = insertelement <4 x float> poison, float %i.aav, i64 0
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aay = fmul nsz <4 x float> %i.aax, %i.aak
  %i.aaz = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ei unwind label %bb.et

bb.ei:                                            ; preds = %bb.eh
  %.not689 = icmp eq i32 %i.aaz, -1
  br i1 %.not689, label %bb.eu, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  %i.aba = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.q, i64 noundef 12)
          to label %.noexc463 unwind label %bb.et ; 0 uses

.noexc463:                                        ; preds = %bb.ej
  %i.abb = load ptr, ptr %2, align 8, !tbaa !55
  %i.abc = getelementptr i8, ptr %i.abb, i64 -24
  %i.abd = load i64, ptr %i.abc, align 8
  %i.abe = getelementptr inbounds i8, ptr %2, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 32
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !159
  %i.abh = and i32 %i.abg, 2
  %.not.i458 = icmp eq i32 %i.abh, 0
  br i1 %.not.i458, label %bb.ek, label %.invoke

bb.ek:                                            ; preds = %.noexc463
  %i.abi = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.q)
          to label %.noexc465 unwind label %bb.et

.noexc465:                                        ; preds = %bb.ek
  %i.abj = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.abk = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.abj)
          to label %.noexc466 unwind label %bb.et

.noexc466:                                        ; preds = %.noexc465
  %.sroa.0.0.vec.insert.i.i459 = insertelement <2 x float> poison, float %i.abi, i64 0
  %.sroa.0.4.vec.insert.i.i460 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i459, float %i.abk, i64 1
  %i.abl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.abm = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.abl)
          to label %bb.el unwind label %bb.et

bb.el:                                            ; preds = %.noexc466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store i32 0, ptr %i.p, align 4
  %i.abn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.p, i64 noundef 4)
          to label %.noexc470 unwind label %bb.et ; 0 uses

.noexc470:                                        ; preds = %bb.el
  %i.abo = load ptr, ptr %2, align 8, !tbaa !55
  %i.abp = getelementptr i8, ptr %i.abo, i64 -24
  %i.abq = load i64, ptr %i.abp, align 8
  %i.abr = getelementptr inbounds i8, ptr %2, i64 %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !159
  %i.abu = and i32 %i.abt, 2
  %.not.i469 = icmp eq i32 %i.abu, 0
  br i1 %.not.i469, label %bb.em, label %.invoke

bb.em:                                            ; preds = %.noexc470
  %i.abv = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.p)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store i32 0, ptr %i.o, align 4
  %i.abw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.o, i64 noundef 4)
          to label %.noexc475 unwind label %bb.et ; 0 uses

.noexc475:                                        ; preds = %bb.en
  %i.abx = load ptr, ptr %2, align 8, !tbaa !55
  %i.aby = getelementptr i8, ptr %i.abx, i64 -24
  %i.abz = load i64, ptr %i.aby, align 8
  %i.aca = getelementptr inbounds i8, ptr %2, i64 %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !159
  %i.acd = and i32 %i.acc, 2
  %.not.i474 = icmp eq i32 %i.acd, 0
  br i1 %.not.i474, label %bb.eo, label %.invoke

bb.eo:                                            ; preds = %.noexc475
  %i.ace = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.o)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store i32 0, ptr %i.n, align 4
  %i.acf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.n, i64 noundef 4)
          to label %.noexc480 unwind label %bb.et ; 0 uses

.noexc480:                                        ; preds = %bb.ep
  %i.acg = load ptr, ptr %2, align 8, !tbaa !55
  %i.ach = getelementptr i8, ptr %i.acg, i64 -24
  %i.aci = load i64, ptr %i.ach, align 8
  %i.acj = getelementptr inbounds i8, ptr %2, i64 %i.aci
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !159
  %i.acm = and i32 %i.acl, 2
  %.not.i479 = icmp eq i32 %i.acm, 0
  br i1 %.not.i479, label %bb.eq, label %.invoke

bb.eq:                                            ; preds = %.noexc480
  %i.acn = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.n)
          to label %bb.er unwind label %bb.et

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store i8 0, ptr %i.m, align 1
  %i.aco = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.m, i64 noundef 1)
          to label %.noexc485 unwind label %bb.et ; 0 uses

.noexc485:                                        ; preds = %bb.er
  %i.acp = load ptr, ptr %2, align 8, !tbaa !55
  %i.acq = getelementptr i8, ptr %i.acp, i64 -24
  %i.acr = load i64, ptr %i.acq, align 8
  %i.acs = getelementptr inbounds i8, ptr %2, i64 %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 32
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !159
  %i.acv = and i32 %i.acu, 2
  %.not.i484 = icmp eq i32 %i.acv, 0
  br i1 %.not.i484, label %bb.es, label %.invoke

bb.es:                                            ; preds = %.noexc485
  %i.acw = load i8, ptr %i.m, align 1, !tbaa !61  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  %i.acx = and i8 %i.acw, 1
  %i.acy = lshr i8 %i.acw, 1
  %.lobit = and i8 %i.acy, 1
  %i.acz = lshr i8 %i.acw, 2
  %.lobit193 = and i8 %i.acz, 1
  br label %bb.eu

bb.et:                                            ; preds = %.invoke, %bb.ef, %bb.eg, %.noexc449, %.noexc450, %bb.eu, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %.noexc466, %.noexc465, %bb.ek, %bb.ej, %bb.eh, %.noexc439, %.noexc438, %bb.ee, %bb.ed
  %i.ada = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ei, %bb.es
  %.sroa.10.0 = phi i8 [ %i.acx, %bb.es ], [ 1, %bb.ei ]
  %.sroa.12607.1 = phi nsz float [ %i.abv, %bb.es ], [ %.sroa.12607.0, %bb.ei ]
  %.sroa.27.0 = phi i8 [ %.lobit, %bb.es ], [ 1, %bb.ei ]
  %.sroa.36.sroa.9.1 = phi nsz float [ %i.abm, %bb.es ], [ %.sroa.32.sroa.8.0, %bb.ei ]
  %.sroa.36.sroa.0.1 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert.i.i460, %bb.es ], [ %.sroa.32.sroa.0.0, %bb.ei ]
  %.sroa.44630.1 = phi nsz float [ %i.acn, %bb.es ], [ %.sroa.44630.0, %bb.ei ]
  %.sroa.42.1 = phi i8 [ %.lobit193, %bb.es ], [ %.sroa.42.0, %bb.ei ]
  %.sroa.29621.1 = phi nsz float [ %i.ace, %bb.es ], [ %.sroa.29621.0, %bb.ei ]
  %i.adb = invoke noundef nonnull align 4 dereferenceable(120) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit unwind label %bb.et ; 21 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit: ; preds = %bb.eu
  store <2 x float> %.sroa.0601.sroa.0.0, ptr %i.adb, align 4, !tbaa !48
  %.sroa.0601.sroa.7.0..sroa_idx658 = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  store float %.sroa.0601.sroa.7.0, ptr %.sroa.0601.sroa.7.0..sroa_idx658, align 4, !tbaa !48
  %.sroa.7602.0..sroa_idx603 = getelementptr inbounds nuw i8, ptr %i.adb, i64 12
  store <2 x float> %.sroa.0.4.vec.insert.i.i433, ptr %.sroa.7602.0..sroa_idx603, align 4, !tbaa !48
  %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx603.sroa_idx = getelementptr inbounds nuw i8, ptr %i.adb, i64 20
  store float %i.yr, ptr %.sroa.7602.sroa.8.0..sroa.7602.0..sroa_idx603.sroa_idx, align 4, !tbaa !48
  %.sroa.10.0..sroa_idx604 = getelementptr inbounds nuw i8, ptr %i.adb, i64 24
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx604, align 4, !tbaa !458
  %.sroa.12.0..sroa_idx606 = getelementptr inbounds nuw i8, ptr %i.adb, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12.0..sroa_idx606, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.12, i64 3, i1 false), !tbaa.struct !890
  %.sroa.12607.0..sroa_idx608 = getelementptr inbounds nuw i8, ptr %i.adb, i64 28
  store float %.sroa.12607.1, ptr %.sroa.12607.0..sroa_idx608, align 4, !tbaa !48
  %.sroa.15.0..sroa_idx610 = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  store <4 x float> %13, ptr %.sroa.15.0..sroa_idx610, align 4, !tbaa !48
  %.sroa.17.0..sroa_idx611 = getelementptr inbounds nuw i8, ptr %i.adb, i64 48
  store <4 x float> %i.aay, ptr %.sroa.17.0..sroa_idx611, align 4, !tbaa !48
  %.sroa.26.0..sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.adb, i64 64
  store <3 x float> %.sroa.26.sroa.0.0, ptr %.sroa.26.0..sroa_idx615, align 4, !tbaa !48
  %.sroa.27.0..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.adb, i64 76
  store i8 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx618, align 4, !tbaa !458
  %.sroa.29.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.adb, i64 77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29.0..sroa_idx620, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29, i64 3, i1 false), !tbaa.struct !891
  %.sroa.29621.0..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.adb, i64 80
  store float %.sroa.29621.1, ptr %.sroa.29621.0..sroa_idx622, align 4, !tbaa !48
  %.sroa.32.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.adb, i64 84
  store <2 x float> %.sroa.32.sroa.0.0, ptr %.sroa.32.0..sroa_idx624, align 4, !tbaa !48
  %.sroa.32.sroa.8.0..sroa.32.0..sroa_idx624.sroa_idx = getelementptr inbounds nuw i8, ptr %i.adb, i64 92
  store float %.sroa.32.sroa.8.0, ptr %.sroa.32.sroa.8.0..sroa.32.0..sroa_idx624.sroa_idx, align 4, !tbaa !48
  %.sroa.36.0..sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.adb, i64 96
  store <2 x float> %.sroa.36.sroa.0.1, ptr %.sroa.36.0..sroa_idx625, align 4, !tbaa !48
  %.sroa.36.sroa.9.0..sroa.36.0..sroa_idx625.sroa_idx = getelementptr inbounds nuw i8, ptr %i.adb, i64 104
  store float %.sroa.36.sroa.9.1, ptr %.sroa.36.sroa.9.0..sroa.36.0..sroa_idx625.sroa_idx, align 4, !tbaa !48
  %.sroa.42.0..sroa_idx627 = getelementptr inbounds nuw i8, ptr %i.adb, i64 108
  store i8 %.sroa.42.1, ptr %.sroa.42.0..sroa_idx627, align 4, !tbaa !458
  %.sroa.44.0..sroa_idx629 = getelementptr inbounds nuw i8, ptr %i.adb, i64 109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx629, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44, i64 3, i1 false), !tbaa.struct !892
  %.sroa.44630.0..sroa_idx631 = getelementptr inbounds nuw i8, ptr %i.adb, i64 112
  store float %.sroa.44630.1, ptr %.sroa.44630.0..sroa_idx631, align 4, !tbaa !48
  %.sroa.47.0..sroa_idx633 = getelementptr inbounds nuw i8, ptr %i.adb, i64 116
  store float 0.000000e+00, ptr %.sroa.47.0..sroa_idx633, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44)
  %i.adc = load ptr, ptr %8, align 8, !tbaa !134  ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ade = icmp eq ptr %i.adc, %i.add
  br i1 %i.ade, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit
  %i.adf = load i64, ptr %i.add, align 8, !tbaa !61
  %i.adg = add i64 %i.adf, 1
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.adg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge

bb.ev:                                            ; preds = %bb.et, %bb.ec
  %.pn194.pn = phi { ptr, i32 } [ %i.ada, %bb.et ], [ %i.ye, %bb.ec ] ; 2 uses
  %i.adh = load ptr, ptr %8, align 8, !tbaa !134  ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.adj = icmp eq ptr %i.adh, %i.adi
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %bb.ev
  %i.adk = load i64, ptr %i.adi, align 8, !tbaa !61
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492, %bb.eb
  %.pn194.pn.pn = phi { ptr, i32 } [ %i.yd, %bb.eb ], [ %.pn194.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492 ], [ %.pn194.pn, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

bb.ew:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i16 0, ptr %i.l, align 2
  %i.adm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.l, i64 noundef 2)
          to label %.noexc496 unwind label %bb.gy ; 0 uses

.noexc496:                                        ; preds = %bb.ew
  %i.adn = load ptr, ptr %2, align 8, !tbaa !55
  %i.ado = getelementptr i8, ptr %i.adn, i64 -24
  %i.adp = load i64, ptr %i.ado, align 8
  %i.adq = getelementptr inbounds i8, ptr %2, i64 %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 32
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !159
  %i.adt = and i32 %i.ads, 2
  %.not.i495 = icmp eq i32 %i.adt, 0
  br i1 %.not.i495, label %bb.ex, label %.invoke756

bb.ex:                                            ; preds = %.noexc496
  %.0.copyload.i.i.i = load i16, ptr %i.l, align 2
  %rev.i.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ey unwind label %bb.fg

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.k, i8 0, i64 12, i1 false)
  %i.adu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.k, i64 noundef 12)
          to label %.noexc503 unwind label %bb.fh ; 0 uses

.noexc503:                                        ; preds = %bb.ey
  %i.adv = load ptr, ptr %2, align 8, !tbaa !55
  %i.adw = getelementptr i8, ptr %i.adv, i64 -24
  %i.adx = load i64, ptr %i.adw, align 8
  %i.ady = getelementptr inbounds i8, ptr %2, i64 %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 32
  %i.aea = load i32, ptr %i.adz, align 8, !tbaa !159
  %i.aeb = and i32 %i.aea, 2
  %.not.i498 = icmp eq i32 %i.aeb, 0
  br i1 %.not.i498, label %bb.ez, label %.invoke753

bb.ez:                                            ; preds = %.noexc503
  %i.aec = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.k)
          to label %.noexc505 unwind label %bb.fh

.noexc505:                                        ; preds = %bb.ez
  %i.aed = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aee = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.aed)
          to label %.noexc506 unwind label %bb.fh

.noexc506:                                        ; preds = %.noexc505
  %.sroa.0.0.vec.insert.i.i499 = insertelement <2 x float> poison, float %i.aec, i64 0
  %.sroa.0.4.vec.insert.i.i500 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i499, float %i.aee, i64 1
  %i.aef = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aeg = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.aef)
          to label %bb.fa unwind label %bb.fh

bb.fa:                                            ; preds = %.noexc506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.j, i64 noundef 12)
          to label %.noexc514 unwind label %bb.fh ; 0 uses

.noexc514:                                        ; preds = %bb.fa
  %i.aei = load ptr, ptr %2, align 8, !tbaa !55
  %i.aej = getelementptr i8, ptr %i.aei, i64 -24
  %i.aek = load i64, ptr %i.aej, align 8
  %i.ael = getelementptr inbounds i8, ptr %2, i64 %i.aek
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 32
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !159
  %i.aeo = and i32 %i.aen, 2
  %.not.i509 = icmp eq i32 %i.aeo, 0
  br i1 %.not.i509, label %bb.fb, label %.invoke753

bb.fb:                                            ; preds = %.noexc514
  %i.aep = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.j)
          to label %.noexc516 unwind label %bb.fh

.noexc516:                                        ; preds = %bb.fb
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aer = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.aeq)
          to label %.noexc517 unwind label %bb.fh

.noexc517:                                        ; preds = %.noexc516
  %.sroa.0.0.vec.insert.i.i510 = insertelement <2 x float> poison, float %i.aep, i64 0
  %.sroa.0.4.vec.insert.i.i511 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i510, float %i.aer, i64 1
  %i.aes = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aet = invoke noundef float @_Z7readF32PKh(ptr noundef nonnull %i.aes)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %.noexc517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  %i.aeu = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %.not687 = icmp eq i32 %i.aeu, -1
  br i1 %.not687, label %bb.fi, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i8 0, ptr %i.i, align 1
  %i.aev = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.i, i64 noundef 1)
          to label %.noexc523 unwind label %bb.fh ; 0 uses

.noexc523:                                        ; preds = %bb.fe
  %i.aew = load ptr, ptr %2, align 8, !tbaa !55
  %i.aex = getelementptr i8, ptr %i.aew, i64 -24
  %i.aey = load i64, ptr %i.aex, align 8
  %i.aez = getelementptr inbounds i8, ptr %2, i64 %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 32
  %i.afb = load i32, ptr %i.afa, align 8, !tbaa !159
  %i.afc = and i32 %i.afb, 2
  %.not.i522 = icmp eq i32 %i.afc, 0
  br i1 %.not.i522, label %bb.ff, label %.invoke753

.invoke753:                                       ; preds = %.noexc523, %.noexc514, %.noexc503
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.cont754 unwind label %bb.fh

.cont754:                                         ; preds = %.invoke753
  unreachable

bb.ff:                                            ; preds = %.noexc523
  %i.afd = load i8, ptr %i.i, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %i.afe = icmp ne i8 %i.afd, 0
  br label %bb.fi

bb.fg:                                            ; preds = %bb.ex
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528

bb.fh:                                            ; preds = %.invoke753, %bb.fe, %bb.fc, %.noexc517, %.noexc516, %bb.fb, %bb.fa, %.noexc506, %.noexc505, %bb.ez, %bb.ey, %bb.fi
  %i.afg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afh = load ptr, ptr %9, align 8, !tbaa !134  ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.afj = icmp eq ptr %i.afh, %i.afi
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i526: ; preds = %bb.fh
  %i.afk = load i64, ptr %i.afi, align 8, !tbaa !61
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528

bb.fi:                                            ; preds = %bb.ff, %bb.fd
  %.0172 = phi i1 [ %i.afe, %bb.ff ], [ false, %bb.fd ]
  %i.afm = load ptr, ptr %0, align 8, !tbaa !55
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 32
  %i.afo = load ptr, ptr %i.afn, align 8
  invoke void %i.afo(ptr noundef nonnull align 8 dereferenceable(1076) %0, i16 noundef zeroext %rev.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %9, <2 x float> %.sroa.0.4.vec.insert.i.i500, float %i.aeg, <2 x float> %.sroa.0.4.vec.insert.i.i511, float %i.aet, i1 noundef zeroext %.0172)
          to label %bb.fj unwind label %bb.fh

bb.fj:                                            ; preds = %bb.fi
  %i.afp = load ptr, ptr %9, align 8, !tbaa !134  ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.afr = icmp eq ptr %i.afp, %i.afq
end_hunk_0
