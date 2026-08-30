Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMBaseRegisterInfo?download=true
inline.NumInlined: 1330
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4llvm18ARMGenRegisterInfo21getRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEb:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !164
  %i.ci = zext i16 %i.ch to i64
  store ptr %i.cf, ptr %17, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @_ZZN4llvmL28GPRnoipGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.ck, align 16, !tbaa !165
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 14, ptr %i.cl, align 8, !tbaa !167
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr @_ZZN4llvmL28GPRnoipGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr %i.cm, align 16, !tbaa !165
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 8, ptr %i.cn, align 8, !tbaa !167
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr @_ZZN4llvmL28GPRnoipGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder3, ptr %i.co, align 16, !tbaa !165
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 14, ptr %i.cp, align 8, !tbaa !167
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47, !nonnull !168, !align !169
  %i.cs = tail call noundef i32 @_ZNK4llvm12ARMSubtarget21getGPRAllocationOrderERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(519368) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %2) #20
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i165 = load ptr, ptr %i.cu, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.2.0.copyload.i167 = load i64, ptr %.sroa.2.0..sroa_idx.i166, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %.fca.0.insert.i168 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i165, 0
  %.fca.1.insert.i169 = insertvalue { ptr, i64 } %.fca.0.insert.i168, i64 %.sroa.2.0.copyload.i167, 1
  br label %bb.ak

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.cv = load i32, ptr %1, align 8, !tbaa !163
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !164
  %i.da = zext i16 %i.cz to i64
  store ptr %i.cx, ptr %16, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @_ZZN4llvmL25rGPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.dc, align 16, !tbaa !165
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 14, ptr %i.dd, align 8, !tbaa !167
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr @_ZZN4llvmL25rGPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr %i.de, align 16, !tbaa !165
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 8, ptr %i.df, align 8, !tbaa !167
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr @_ZZN4llvmL25rGPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder3, ptr %i.dg, align 16, !tbaa !165
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i64 14, ptr %i.dh, align 8, !tbaa !167
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47, !nonnull !168, !align !169
  %i.dk = tail call noundef i32 @_ZNK4llvm12ARMSubtarget21getGPRAllocationOrderERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(519368) %i.dj, ptr noundef nonnull align 8 dereferenceable(1065) %2) #20
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %i.dl ; 2 uses
  %.sroa.0.0.copyload.i170 = load ptr, ptr %i.dm, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i171 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.2.0.copyload.i172 = load i64, ptr %.sroa.2.0..sroa_idx.i171, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.fca.0.insert.i173 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i170, 0
  %.fca.1.insert.i174 = insertvalue { ptr, i64 } %.fca.0.insert.i173, i64 %.sroa.2.0.copyload.i172, 1
  br label %bb.ak

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.dn = load i32, ptr %1, align 8, !tbaa !163
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !164
  %i.ds = zext i16 %i.dr to i64
  store ptr %i.dp, ptr %15, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ds, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @_ZZN4llvmL40GPRnoip_and_GPRnopcGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.du, align 16, !tbaa !165
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 13, ptr %i.dv, align 8, !tbaa !167
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr @_ZZN4llvmL40GPRnoip_and_GPRnopcGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr %i.dw, align 16, !tbaa !165
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 8, ptr %i.dx, align 8, !tbaa !167
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr @_ZZN4llvmL40GPRnoip_and_GPRnopcGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder3, ptr %i.dy, align 16, !tbaa !165
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i64 13, ptr %i.dz, align 8, !tbaa !167
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !47, !nonnull !168, !align !169
  %i.ec = tail call noundef i32 @_ZNK4llvm12ARMSubtarget21getGPRAllocationOrderERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(519368) %i.eb, ptr noundef nonnull align 8 dereferenceable(1065) %2) #20
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.ed ; 2 uses
  %.sroa.0.0.copyload.i175 = load ptr, ptr %i.ee, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i176 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.2.0.copyload.i177 = load i64, ptr %.sroa.2.0..sroa_idx.i176, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %.fca.0.insert.i178 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i175, 0
  %.fca.1.insert.i179 = insertvalue { ptr, i64 } %.fca.0.insert.i178, i64 %.sroa.2.0.copyload.i177, 1
  br label %bb.ak

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ef = load i32, ptr %1, align 8, !tbaa !163
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !164
  %i.ek = zext i16 %i.ej to i64
  store ptr %i.eh, ptr %14, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ek, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @_ZZN4llvmL40GPRnoip_and_GPRnospGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.em, align 16, !tbaa !165
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 13, ptr %i.en, align 8, !tbaa !167
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr @_ZZN4llvmL40GPRnoip_and_GPRnospGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr %i.eo, align 16, !tbaa !165
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 8, ptr %i.ep, align 8, !tbaa !167
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr @_ZZN4llvmL40GPRnoip_and_GPRnospGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder3, ptr %i.eq, align 16, !tbaa !165
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 13, ptr %i.er, align 8, !tbaa !167
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !47, !nonnull !168, !align !169
  %i.eu = tail call noundef i32 @_ZNK4llvm12ARMSubtarget21getGPRAllocationOrderERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(519368) %i.et, ptr noundef nonnull align 8 dereferenceable(1065) %2) #20
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.ev ; 2 uses
  %.sroa.0.0.copyload.i180 = load ptr, ptr %i.ew, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.2.0.copyload.i182 = load i64, ptr %.sroa.2.0..sroa_idx.i181, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %.fca.0.insert.i183 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i180, 0
  %.fca.1.insert.i184 = insertvalue { ptr, i64 } %.fca.0.insert.i183, i64 %.sroa.2.0.copyload.i182, 1
  br label %bb.ak

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ex = load i32, ptr %1, align 8, !tbaa !163
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !164
  %i.fc = zext i16 %i.fb to i64
  store ptr %i.ez, ptr %13, align 16
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.fc, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @_ZZN4llvmL53GPRnoip_and_GPRwithAPSR_NZCVnospGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.fe, align 16, !tbaa !165
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 12, ptr %i.ff, align 8, !tbaa !167
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr @_ZZN4llvmL53GPRnoip_and_GPRwithAPSR_NZCVnospGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr %i.fg, align 16, !tbaa !165
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 8, ptr %i.fh, align 8, !tbaa !167
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr @_ZZN4llvmL53GPRnoip_and_GPRwithAPSR_NZCVnospGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder3, ptr %i.fi, align 16, !tbaa !165
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i64 12, ptr %i.fj, align 8, !tbaa !167
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !47, !nonnull !168, !align !169
  %i.fm = tail call noundef i32 @_ZNK4llvm12ARMSubtarget21getGPRAllocationOrderERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(519368) %i.fl, ptr noundef nonnull align 8 dereferenceable(1065) %2) #20
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %i.fn ; 2 uses
  %.sroa.0.0.copyload.i185 = load ptr, ptr %i.fo, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.2.0.copyload.i187 = load i64, ptr %.sroa.2.0..sroa_idx.i186, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %.fca.0.insert.i188 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i185, 0
  %.fca.1.insert.i189 = insertvalue { ptr, i64 } %.fca.0.insert.i188, i64 %.sroa.2.0.copyload.i187, 1
  br label %bb.ak

bb.o:                                             ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val114 = load ptr, ptr %i.fp, align 8, !tbaa !47 ; 2 uses
  %i.fq = getelementptr i8, ptr %.val114, i64 410
  %.val114.val = load i8, ptr %i.fq, align 2
  %i.fr = getelementptr i8, ptr %.val114, i64 461
  %.val114.val115 = load i8, ptr %i.fr, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.fs = load i32, ptr %1, align 8, !tbaa !163
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = load i16, ptr %i.fv, align 8, !tbaa !164
  %i.fx = zext i16 %i.fw to i64
  store ptr %i.fu, ptr %12, align 16
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.fx, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @_ZZN4llvmL29tGPREvenGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.fz, align 16, !tbaa !165
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 4, ptr %i.ga, align 8, !tbaa !167
  %i.gb = trunc nuw i8 %.val114.val115 to i1
  %i.gc = and i8 %.val114.val, 1
  %i.gd = xor i8 %i.gc, 1
  %21 = select i1 %i.gb, i8 %i.gd, i8 0
  %22 = zext nneg i8 %21 to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %22 ; 2 uses
  %.sroa.0.0.copyload.i190 = load ptr, ptr %i.ge, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.2.0.copyload.i192 = load i64, ptr %.sroa.2.0..sroa_idx.i191, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %.fca.0.insert.i193 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i190, 0
  %.fca.1.insert.i194 = insertvalue { ptr, i64 } %.fca.0.insert.i193, i64 %.sroa.2.0.copyload.i192, 1
  br label %bb.ak

bb.p:                                             ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val116 = load ptr, ptr %i.gf, align 8, !tbaa !47 ; 2 uses
  %i.gg = getelementptr i8, ptr %.val116, i64 410
  %.val116.val = load i8, ptr %i.gg, align 2
  %i.gh = getelementptr i8, ptr %.val116, i64 461
  %.val116.val117 = load i8, ptr %i.gh, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.gi = load i32, ptr %1, align 8, !tbaa !163
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gm = load i16, ptr %i.gl, align 8, !tbaa !164
  %i.gn = zext i16 %i.gm to i64
  store ptr %i.gk, ptr %11, align 16
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @_ZZN4llvmL41GPRnoip_and_tGPREvenGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.gp, align 16, !tbaa !165
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 4, ptr %i.gq, align 8, !tbaa !167
  %i.gr = trunc nuw i8 %.val116.val117 to i1
  %i.gs = and i8 %.val116.val, 1
  %i.gt = xor i8 %i.gs, 1
  %23 = select i1 %i.gr, i8 %i.gt, i8 0
  %24 = zext nneg i8 %23 to i64
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %24 ; 2 uses
  %.sroa.0.0.copyload.i195 = load ptr, ptr %i.gu, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i196 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.sroa.2.0.copyload.i197 = load i64, ptr %.sroa.2.0..sroa_idx.i196, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.fca.0.insert.i198 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i195, 0
  %.fca.1.insert.i199 = insertvalue { ptr, i64 } %.fca.0.insert.i198, i64 %.sroa.2.0.copyload.i197, 1
  br label %bb.ak

bb.q:                                             ; preds = %bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val118 = load ptr, ptr %i.gv, align 8, !tbaa !47 ; 2 uses
  %i.gw = getelementptr i8, ptr %.val118, i64 410
  %.val118.val = load i8, ptr %i.gw, align 2
  %i.gx = getelementptr i8, ptr %.val118, i64 461
  %.val118.val119 = load i8, ptr %i.gx, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.gy = load i32, ptr %1, align 8, !tbaa !163
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !164
  %i.hd = zext i16 %i.hc to i64
  store ptr %i.ha, ptr %10, align 16
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.hd, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @_ZZN4llvmL28tGPROddGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.hf, align 16, !tbaa !165
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 4, ptr %i.hg, align 8, !tbaa !167
  %i.hh = trunc nuw i8 %.val118.val119 to i1
  %i.hi = and i8 %.val118.val, 1
  %i.hj = xor i8 %i.hi, 1
  %25 = select i1 %i.hh, i8 %i.hj, i8 0
  %26 = zext nneg i8 %25 to i64
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %26 ; 2 uses
  %.sroa.0.0.copyload.i200 = load ptr, ptr %i.hk, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.2.0.copyload.i202 = load i64, ptr %.sroa.2.0..sroa_idx.i201, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.fca.0.insert.i203 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i200, 0
  %.fca.1.insert.i204 = insertvalue { ptr, i64 } %.fca.0.insert.i203, i64 %.sroa.2.0.copyload.i202, 1
  br label %bb.ak

bb.r:                                             ; preds = %bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val120 = load ptr, ptr %i.hl, align 8, !tbaa !47 ; 2 uses
  %i.hm = getelementptr i8, ptr %.val120, i64 410
  %.val120.val = load i8, ptr %i.hm, align 2
  %i.hn = getelementptr i8, ptr %.val120, i64 461
  %.val120.val121 = load i8, ptr %i.hn, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ho = load i32, ptr %1, align 8, !tbaa !163
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hs = load i16, ptr %i.hr, align 8, !tbaa !164
  %i.ht = zext i16 %i.hs to i64
  store ptr %i.hq, ptr %9, align 16
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ht, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @_ZZN4llvmL26tcGPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.hv, align 16, !tbaa !165
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 4, ptr %i.hw, align 8, !tbaa !167
  %i.hx = trunc nuw i8 %.val120.val121 to i1
  %i.hy = and i8 %.val120.val, 1
  %i.hz = xor i8 %i.hy, 1
  %27 = select i1 %i.hx, i8 %i.hz, i8 0
  %28 = zext nneg i8 %27 to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %28 ; 2 uses
  %.sroa.0.0.copyload.i205 = load ptr, ptr %i.ia, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.2.0.copyload.i207 = load i64, ptr %.sroa.2.0..sroa_idx.i206, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.fca.0.insert.i208 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i205, 0
  %.fca.1.insert.i209 = insertvalue { ptr, i64 } %.fca.0.insert.i208, i64 %.sroa.2.0.copyload.i207, 1
  br label %bb.ak

bb.s:                                             ; preds = %bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val122 = load ptr, ptr %i.ib, align 8, !tbaa !47 ; 2 uses
  %i.ic = getelementptr i8, ptr %.val122, i64 410
  %.val122.val = load i8, ptr %i.ic, align 2
  %i.id = getelementptr i8, ptr %.val122, i64 461
  %.val122.val123 = load i8, ptr %i.id, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ie = load i32, ptr %1, align 8, !tbaa !163
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ii = load i16, ptr %i.ih, align 8, !tbaa !164
  %i.ij = zext i16 %i.ii to i64
  store ptr %i.ig, ptr %8, align 16
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ij, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @_ZZN4llvmL38tGPR_and_tGPREvenGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.il, align 16, !tbaa !165
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 4, ptr %i.im, align 8, !tbaa !167
  %i.in = trunc nuw i8 %.val122.val123 to i1
  %i.io = and i8 %.val122.val, 1
  %i.ip = xor i8 %i.io, 1
  %29 = select i1 %i.in, i8 %i.ip, i8 0
  %30 = zext nneg i8 %29 to i64
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %30 ; 2 uses
  %.sroa.0.0.copyload.i210 = load ptr, ptr %i.iq, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %.sroa.2.0.copyload.i212 = load i64, ptr %.sroa.2.0..sroa_idx.i211, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.fca.0.insert.i213 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i210, 0
  %.fca.1.insert.i214 = insertvalue { ptr, i64 } %.fca.0.insert.i213, i64 %.sroa.2.0.copyload.i212, 1
  br label %bb.ak

bb.t:                                             ; preds = %bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val124 = load ptr, ptr %i.ir, align 8, !tbaa !47 ; 2 uses
  %i.is = getelementptr i8, ptr %.val124, i64 410
  %.val124.val = load i8, ptr %i.is, align 2
  %i.it = getelementptr i8, ptr %.val124, i64 461
  %.val124.val125 = load i8, ptr %i.it, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.iu = load i32, ptr %1, align 8, !tbaa !163
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iy = load i16, ptr %i.ix, align 8, !tbaa !164
  %i.iz = zext i16 %i.iy to i64
  store ptr %i.iw, ptr %7, align 16
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.iz, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @_ZZN4llvmL37tGPR_and_tGPROddGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.jb, align 16, !tbaa !165
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 4, ptr %i.jc, align 8, !tbaa !167
  %i.jd = trunc nuw i8 %.val124.val125 to i1
  %i.je = and i8 %.val124.val, 1
  %i.jf = xor i8 %i.je, 1
  %31 = select i1 %i.jd, i8 %i.jf, i8 0
  %32 = zext nneg i8 %31 to i64
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %32 ; 2 uses
  %.sroa.0.0.copyload.i215 = load ptr, ptr %i.jg, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.sroa.2.0.copyload.i217 = load i64, ptr %.sroa.2.0..sroa_idx.i216, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.fca.0.insert.i218 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i215, 0
  %.fca.1.insert.i219 = insertvalue { ptr, i64 } %.fca.0.insert.i218, i64 %.sroa.2.0.copyload.i217, 1
  br label %bb.ak

bb.u:                                             ; preds = %bb.a
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val126 = load ptr, ptr %i.jh, align 8, !tbaa !47 ; 2 uses
  %i.ji = getelementptr i8, ptr %.val126, i64 410
  %.val126.val = load i8, ptr %i.ji, align 2
  %i.jj = getelementptr i8, ptr %.val126, i64 461
  %.val126.val127 = load i8, ptr %i.jj, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.jk = load i32, ptr %1, align 8, !tbaa !163
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jo = load i16, ptr %i.jn, align 8, !tbaa !164
  %i.jp = zext i16 %i.jo to i64
  store ptr %i.jm, ptr %6, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.jp, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZZN4llvmL39tGPREven_and_tcGPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.jr, align 16, !tbaa !165
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 2, ptr %i.js, align 8, !tbaa !167
  %i.jt = trunc nuw i8 %.val126.val127 to i1
  %i.ju = and i8 %.val126.val, 1
  %i.jv = xor i8 %i.ju, 1
  %33 = select i1 %i.jt, i8 %i.jv, i8 0
  %34 = zext nneg i8 %33 to i64
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %34 ; 2 uses
  %.sroa.0.0.copyload.i220 = load ptr, ptr %i.jw, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.2.0.copyload.i222 = load i64, ptr %.sroa.2.0..sroa_idx.i221, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.insert.i223 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i220, 0
  %.fca.1.insert.i224 = insertvalue { ptr, i64 } %.fca.0.insert.i223, i64 %.sroa.2.0.copyload.i222, 1
  br label %bb.ak

bb.v:                                             ; preds = %bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val128 = load ptr, ptr %i.jx, align 8, !tbaa !47 ; 2 uses
  %i.jy = getelementptr i8, ptr %.val128, i64 410
  %.val128.val = load i8, ptr %i.jy, align 2
  %i.jz = getelementptr i8, ptr %.val128, i64 461
  %.val128.val129 = load i8, ptr %i.jz, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ka = load i32, ptr %1, align 8, !tbaa !163
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ke = load i16, ptr %i.kd, align 8, !tbaa !164
  %i.kf = zext i16 %i.ke to i64
  store ptr %i.kc, ptr %5, align 16
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.kf, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @_ZZN4llvmL45tGPREven_and_tcGPRnotr12GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, ptr %i.kh, align 16, !tbaa !165
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 2, ptr %i.ki, align 8, !tbaa !167
  %i.kj = trunc nuw i8 %.val128.val129 to i1
  %i.kk = and i8 %.val128.val, 1
  %i.kl = xor i8 %i.kk, 1
  %35 = select i1 %i.kj, i8 %i.kl, i8 0
  %36 = zext nneg i8 %35 to i64
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %36 ; 2 uses
  %.sroa.0.0.copyload.i225 = load ptr, ptr %i.km, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %.sroa.2.0.copyload.i227 = load i64, ptr %.sroa.2.0..sroa_idx.i226, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.fca.0.insert.i228 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i225, 0
  %.fca.1.insert.i229 = insertvalue { ptr, i64 } %.fca.0.insert.i228, i64 %.sroa.2.0.copyload.i227, 1
  br label %bb.ak

bb.w:                                             ; preds = %bb.a
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val130 = load ptr, ptr %i.kn, align 8, !tbaa !47 ; 2 uses
  %i.ko = getelementptr i8, ptr %.val130, i64 410
  %.val130.val = load i8, ptr %i.ko, align 2
  %i.kp = getelementptr i8, ptr %.val130, i64 461
  %.val130.val131 = load i8, ptr %i.kp, align 1, !tbaa !171, !range !291, !noundef !168
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.kq = load i32, ptr %1, align 8, !tbaa !163
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ku = load i16, ptr %i.kt, align 8, !tbaa !164
  %i.kv = zext i16 %i.ku to i64
  store ptr %i.ks, ptr %4, align 16
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kv, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ky = trunc nuw i8 %.val130.val131 to i1
  %i.kz = and i8 %.val130.val, 1
  %i.la = xor i8 %i.kz, 1
  %37 = select i1 %i.ky, i8 %i.la, i8 0
  %38 = zext nneg i8 %37 to i64
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %38 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i230 = load ptr, ptr %i.lb, align 16, !tbaa !170
  %.sroa.2.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.sroa.2.0.copyload.i232 = load i64, ptr %.sroa.2.0..sroa_idx.i231, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.0.insert.i233 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.i230, 0
  %.fca.1.insert.i234 = insertvalue { ptr, i64 } %.fca.0.insert.i233, i64 %.sroa.2.0.copyload.i232, 1
  br label %bb.ak

bb.x:                                             ; preds = %bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val132 = load ptr, ptr %i.lc, align 8, !tbaa !47
  %i.ld = tail call noundef zeroext i1 @_ZNK4llvm12ARMSubtarget14useStride4VFPsEv(ptr noundef nonnull align 8 dereferenceable(519368) %.val132) #20
  %.sroa.0.0.copyload.sroa.speculated.i235 = select i1 %i.ld, ptr @_ZZN4llvmL24DPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL24DPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.fca.0.insert.i236 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i235, 0
  %.fca.1.insert.i237 = insertvalue { ptr, i64 } %.fca.0.insert.i236, i64 32, 1
  br label %bb.ak

bb.y:                                             ; preds = %bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val133 = load ptr, ptr %i.le, align 8, !tbaa !47
  %i.lf = getelementptr i8, ptr %.val133, i64 395
  %.val133.val = load i8, ptr %i.lf, align 1, !tbaa !292, !range !291, !noundef !168
  %i.lg = trunc nuw i8 %.val133.val to i1         ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated.i238 = select i1 %i.lg, ptr @_ZZN4llvmL26DPairGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL26DPairGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.sroa.2.0.copyload.sroa.speculated.i239 = select i1 %i.lg, i64 16, i64 31
  %.fca.0.insert.i240 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i238, 0
  %.fca.1.insert.i241 = insertvalue { ptr, i64 } %.fca.0.insert.i240, i64 %.sroa.2.0.copyload.sroa.speculated.i239, 1
  br label %bb.ak

bb.z:                                             ; preds = %bb.a
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val134 = load ptr, ptr %i.lh, align 8, !tbaa !47
  %i.li = getelementptr i8, ptr %.val134, i64 395
  %.val134.val = load i8, ptr %i.li, align 1, !tbaa !292, !range !291, !noundef !168
  %i.lj = trunc nuw i8 %.val134.val to i1
  %.sroa.0.0.copyload.sroa.speculated.i242 = select i1 %i.lj, ptr @_ZZN4llvmL38DPair_with_ssub_0GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL38DPair_with_ssub_0GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.fca.0.insert.i243 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i242, 0
  %.fca.1.insert.i244 = insertvalue { ptr, i64 } %.fca.0.insert.i243, i64 16, 1
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val135 = load ptr, ptr %i.lk, align 8, !tbaa !47
  %i.ll = getelementptr i8, ptr %.val135, i64 395
  %.val135.val = load i8, ptr %i.ll, align 1, !tbaa !292, !range !291, !noundef !168
  %i.lm = trunc nuw i8 %.val135.val to i1         ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated.i245 = select i1 %i.lm, ptr @_ZZN4llvmL24QPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL24QPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.sroa.2.0.copyload.sroa.speculated.i246 = select i1 %i.lm, i64 8, i64 16
  %.fca.0.insert.i247 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i245, 0
  %.fca.1.insert.i248 = insertvalue { ptr, i64 } %.fca.0.insert.i247, i64 %.sroa.2.0.copyload.sroa.speculated.i246, 1
  br label %bb.ak

bb.ab:                                            ; preds = %bb.a
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val136 = load ptr, ptr %i.ln, align 8, !tbaa !47
  %i.lo = getelementptr i8, ptr %.val136, i64 395
  %.val136.val = load i8, ptr %i.lo, align 1, !tbaa !292, !range !291, !noundef !168
  %i.lp = trunc nuw i8 %.val136.val to i1
  %.sroa.0.0.copyload.sroa.speculated.i249 = select i1 %i.lp, ptr @_ZZN4llvmL38DPair_with_ssub_2GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL38DPair_with_ssub_2GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.fca.0.insert.i250 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i249, 0
  %.fca.1.insert.i251 = insertvalue { ptr, i64 } %.fca.0.insert.i250, i64 15, 1
  br label %bb.ak

bb.ac:                                            ; preds = %bb.a
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val137 = load ptr, ptr %i.lq, align 8, !tbaa !47
  %i.lr = getelementptr i8, ptr %.val137, i64 395
  %.val137.val = load i8, ptr %i.lr, align 1, !tbaa !292, !range !291, !noundef !168
  %i.ls = trunc nuw i8 %.val137.val to i1
  %.sroa.0.0.copyload.sroa.speculated.i252 = select i1 %i.ls, ptr @_ZZN4llvmL47DPair_with_dsub_0_in_DPR_8GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL47DPair_with_dsub_0_in_DPR_8GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.fca.0.insert.i253 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i252, 0
  %.fca.1.insert.i254 = insertvalue { ptr, i64 } %.fca.0.insert.i253, i64 8, 1
  br label %bb.ak

bb.ad:                                            ; preds = %bb.a
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val138 = load ptr, ptr %i.lt, align 8, !tbaa !47
  %i.lu = getelementptr i8, ptr %.val138, i64 395
  %.val138.val = load i8, ptr %i.lu, align 1, !tbaa !292, !range !291, !noundef !168
  %i.lv = trunc nuw i8 %.val138.val to i1
  %.sroa.0.0.copyload.sroa.speculated.i255 = select i1 %i.lv, ptr @_ZZN4llvmL47DPair_with_dsub_1_in_DPR_8GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder2, ptr @_ZZN4llvmL47DPair_with_dsub_1_in_DPR_8GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1
  %.fca.0.insert.i256 = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload.sroa.speculated.i255, 0
  %.fca.1.insert.i257 = insertvalue { ptr, i64 } %.fca.0.insert.i256, i64 7, 1
  br label %bb.ak

bb.ae:                                            ; preds = %bb.a
  br label %bb.ak

bb.af:                                            ; preds = %bb.a
  br label %bb.ak

bb.ag:                                            ; preds = %bb.a
  br label %bb.ak

bb.ah:                                            ; preds = %bb.a
  br label %bb.ak

bb.ai:                                            ; preds = %bb.a
  br label %bb.ak

bb.aj:                                            ; preds = %bb.a
  %i.lw = load i32, ptr %1, align 8, !tbaa !163
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ma = load i16, ptr %i.lz, align 8, !tbaa !164
  %i.mb = zext i16 %i.ma to i64
  %.fca.0.insert.i258 = insertvalue { ptr, i64 } poison, ptr %i.ly, 0
  %.fca.1.insert.i259 = insertvalue { ptr, i64 } %.fca.0.insert.i258, i64 %i.mb, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i259, %bb.aj ], [ %.fca.1.insert.i, %bb.b ], [ %.fca.1.insert.i141, %bb.c ], [ %.fca.1.insert.i143, %bb.d ], [ %.fca.1.insert.i146, %bb.e ], [ %.fca.1.insert.i150, %bb.f ], [ %.fca.1.insert.i155, %bb.g ], [ %.fca.1.insert.i160, %bb.h ], [ %.fca.1.insert.i164, %bb.i ], [ %.fca.1.insert.i169, %bb.j ], [ %.fca.1.insert.i174, %bb.k ], [ %.fca.1.insert.i179, %bb.l ], [ %.fca.1.insert.i184, %bb.m ], [ %.fca.1.insert.i189, %bb.n ], [ %.fca.1.insert.i194, %bb.o ], [ %.fca.1.insert.i199, %bb.p ], [ %.fca.1.insert.i204, %bb.q ], [ %.fca.1.insert.i209, %bb.r ], [ %.fca.1.insert.i214, %bb.s ], [ %.fca.1.insert.i219, %bb.t ], [ %.fca.1.insert.i224, %bb.u ], [ %.fca.1.insert.i229, %bb.v ], [ %.fca.1.insert.i234, %bb.w ], [ %.fca.1.insert.i237, %bb.x ], [ %.fca.1.insert.i241, %bb.y ], [ %.fca.1.insert.i244, %bb.z ], [ %.fca.1.insert.i248, %bb.aa ], [ %.fca.1.insert.i251, %bb.ab ], [ %.fca.1.insert.i254, %bb.ac ], [ %.fca.1.insert.i257, %bb.ad ], [ { ptr @_ZZN4llvmL39QQQQPR_with_ssub_8GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, i64 6 }, %bb.ai ], [ { ptr @_ZZN4llvmL37QQPR_with_ssub_0GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, i64 8 }, %bb.ae ], [ { ptr @_ZZN4llvmL27QQQQPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, i64 13 }, %bb.af ], [ { ptr @_ZZN4llvmL39QQQQPR_with_ssub_0GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, i64 8 }, %bb.ag ], [ { ptr @_ZZN4llvmL39QQQQPR_with_ssub_4GetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, i64 7 }, %bb.ah ], [ { ptr @_ZZN4llvmL25QQPRGetRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEbE9AltOrder1, i64 15 }, %bb.a ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK4llvm18ARMGenRegisterInfo22getMinimalPhysRegClassENS_10MCRegisterE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZNK4llvm18ARMGenRegisterInfo22getMinimalPhysRegClassENS_10MCRegisterEE7Mapping, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !293  ; 2 uses
  %i.d = icmp eq i16 %i.c, -1
  %i.e = zext i16 %i.c to i64
  %i.f = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 %i.e
  %.0 = select i1 %i.d, ptr null, ptr %i.f
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18ARMGenRegisterInfoC2Ejjjjj(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvm18TargetRegisterInfoC2EPKNS_22TargetRegisterInfoDescEPKcNS_8ArrayRefIjEEPKNS0_17SubRegCoveredBitsEPKNS_11LaneBitmaskESB_PKNS0_12RegClassInfoEPKNS_3MVT15SimpleValueTypeEj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull @_ZN4llvmL14ARMRegInfoDescE, ptr noundef nonnull @_ZN4llvmL21ARMSubRegIndexStringsE, ptr nonnull @_ZN4llvmL25ARMSubRegIndexNameOffsetsE, i64 56, ptr noundef nonnull @_ZN4llvmL22ARMSubRegIdxRangeTableE, ptr noundef nonnull @_ZN4llvmL27ARMSubRegIndexLaneMaskTableE, i64 -1, ptr noundef nonnull @_ZN4llvmL16ARMRegClassInfosE, ptr noundef nonnull @_ZN4llvmL10ARMVTListsE, i32 noundef %5) #20
  store ptr getelementptr inbounds nuw inrange(-16, 720) (i8, ptr @_ZTVN4llvm18ARMGenRegisterInfoE, i64 16), ptr %0, align 8, !tbaa !294
  %i.a = tail call noundef nonnull align 8 dereferenceable(62) ptr @_ZN4llvm21getARMMCRegisterClassEj(i32 noundef 0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4llvm10ARMRegDescE, ptr %i.b, align 8, !tbaa !296
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 297, ptr %i.c, align 8, !tbaa !297
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.d, align 4, !tbaa !298
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.e, align 8, !tbaa !298
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4llvm15ARMRegDiffListsE, ptr %i.g, align 8, !tbaa !299
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN4llvm16ARMLaneMaskListsE, ptr %i.h, align 8, !tbaa !300
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN4llvm13ARMRegStringsE, ptr %i.i, align 8, !tbaa !301
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN4llvm18ARMRegClassStringsE, ptr %i.j, align 8, !tbaa !302
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 137, ptr %i.k, align 8, !tbaa !303
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN4llvm15ARMRegUnitRootsE, ptr %i.l, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 88, ptr %i.m, align 4, !tbaa !305
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZN4llvm17ARMSubRegIdxListsE, ptr %i.n, align 8, !tbaa !306
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 57, ptr %i.o, align 8, !tbaa !307
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZN4llvm19ARMRegEncodingTableE, ptr %i.p, align 8, !tbaa !308
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !309  ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !310  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = sdiv exact i64 %i.x, 24                  ; 2 uses
  %i.z = icmp ult i64 %i.y, 297
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = sub nuw nsw i64 297, %i.y
  tail call void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.aa)
  br label %_ZN4llvm14MCRegisterInfo18InitMCRegisterInfoEPKNS_14MCRegisterDescEjjjPKNS_15MCRegisterClassEjPA2_KtjPKsPKNS_11LaneBitmaskEPKcSG_PS7_jSH_PA2_Kj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.x, 7128
  br i1 %.not, label %_ZN4llvm14MCRegisterInfo18InitMCRegisterInfoEPKNS_14MCRegisterDescEjjjPKNS_15MCRegisterClassEjPA2_KtjPKsPKNS_11LaneBitmaskEPKcSG_PS7_jSH_PA2_Kj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 7128 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.ab
  br i1 %.not.i.i.i, label %_ZN4llvm14MCRegisterInfo18InitMCRegisterInfoEPKNS_14MCRegisterDescEjjjPKNS_15MCRegisterClassEjPA2_KtjPKsPKNS_11LaneBitmaskEPKcSG_PS7_jSH_PA2_Kj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i.i.i ], [ %i.ab, %bb.d ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i.i.i, label %bb.e

end_hunk_0
