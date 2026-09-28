Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PdbUtil?download=true
inline.NumInlined: 3073
inline.NumDeleted: 977
begin_hunk_0_@_ZN12lldb_private4npdb23GetVariableLocationInfoERNS0_8PdbIndexENS0_17PdbCompilandSymIdERNS_5BlockESt10shared_ptrINS_6ModuleEE:_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mm) #21, !inline_history !4
  br label %_ZN4llvm5ErrorD2Ev.exit248

_ZN4llvm5ErrorD2Ev.exit248:                       ; preds = %bb.cg, %.critedge135.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.mr = load ptr, ptr %61, align 8, !tbaa !66   ; 3 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %_ZN4llvm5ErrorD2Ev.exit249, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit248
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !40
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #21, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit249

_ZN4llvm5ErrorD2Ev.exit249:                       ; preds = %_ZN4llvm5ErrorD2Ev.exit248, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  br label %.critedge135

_ZN4llvm5ErrorD2Ev.exit250:                       ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit246
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  %i.mw = add i64 %i.i, %.sroa.3101.0.extract.shift ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.055.0.copyload = load i32, ptr %i.mx, align 8, !tbaa !73
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !369
  %.sroa.0433.0.insert.ext = zext i32 %.sroa.055.0.copyload to i40
  %i.na = call noundef i64 @_ZN12lldb_private4npdb13GetSizeOfTypeENS0_12PdbTypeSymIdERN4llvm3pdb9TpiStreamE(i40 %.sroa.0433.0.insert.ext, ptr noundef nonnull align 8 dereferenceable(360) %i.mz)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  %i.nb = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  store i32 0, ptr %i.nb, align 8, !tbaa !213
  %i.nc = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 3 uses
  store ptr null, ptr %i.nc, align 8, !tbaa !214
  %i.nd = getelementptr inbounds nuw i8, ptr %62, i64 24
  store ptr %i.nb, ptr %i.nd, align 8, !tbaa !215
  %i.ne = getelementptr inbounds nuw i8, ptr %62, i64 32
  store ptr %i.nb, ptr %i.ne, align 8, !tbaa !216
  %i.nf = getelementptr inbounds nuw i8, ptr %62, i64 40
  store i64 0, ptr %i.nf, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  %i.ng = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 3 uses
  store ptr %i.ng, ptr %63, align 8, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 6 uses
  store i32 0, ptr %i.nh, align 8, !tbaa !52
  %i.ni = getelementptr inbounds nuw i8, ptr %63, i64 12
  store i32 0, ptr %i.ni, align 4, !tbaa !53
  %i.nj = and i64 %2, 65535                       ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %97, i64 12 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %97, i64 24 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %97, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %97, i64 2 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %97, i64 6 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.nt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.nz = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %19, i64 104 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.oi = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.om = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.on = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %17, i64 104 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.oy = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.pc = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.pd = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.pe = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.pr = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.pv = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.pw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.pz = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %21, i64 104 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.qh = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %20, i64 112
  %i.ql = getelementptr inbounds nuw i8, ptr %21, i64 96
  %i.qm = getelementptr inbounds nuw i8, ptr %20, i64 120
  %i.qn = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %97, i64 40 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %88, i64 24 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %88, i64 32
  %i.qs = getelementptr inbounds nuw i8, ptr %88, i64 2
  %i.qt = getelementptr inbounds nuw i8, ptr %88, i64 6 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %88, i64 10 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %95, i64 48
  %i.qy = getelementptr inbounds nuw i8, ptr %91, i64 48 ; 2 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %93, i64 48
  %i.rb = getelementptr inbounds nuw i8, ptr %88, i64 4
  %i.rc = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %88, i64 40 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %79, i64 12 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %79, i64 24 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %79, i64 2
  %i.ri = getelementptr inbounds nuw i8, ptr %79, i64 6 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.rk = getelementptr inbounds nuw i8, ptr %86, i64 48
  %i.rl = getelementptr inbounds nuw i8, ptr %82, i64 48 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %84, i64 48
  %i.ro = getelementptr inbounds nuw i8, ptr %79, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %79, i64 40 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %74, i64 2
  %i.rt = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %74, i64 24
  %i.rv = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.rx = getelementptr inbounds nuw i8, ptr %74, i64 32 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.sd = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.se = getelementptr inbounds nuw i8, ptr %34, i64 28 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.sh = getelementptr inbounds nuw i8, ptr %64, i64 2 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %72, i64 48
  %i.sk = getelementptr inbounds nuw i8, ptr %68, i64 48 ; 2 uses
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %70, i64 48
  %i.sm = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.sn = getelementptr inbounds nuw i8, ptr %64, i64 32
  %.sroa.7443.0.insert.ext670 = shl i64 %i.mw, 32
  %.sroa.0442.0.insert.insert671 = or disjoint i64 %.sroa.7443.0.insert.ext670, %i.nj
  %i.so = call { ptr, i64 } @_ZNK12lldb_private4npdb8PdbIndex16ReadSymbolRecordENS0_17PdbCompilandSymIdE(ptr noundef nonnull align 8 dereferenceable(392) %1, i64 %.sroa.0442.0.insert.insert671) #21 ; 2 uses
  %i.sp = extractvalue { ptr, i64 } %i.so, 1      ; 2 uses
  %i.sq = icmp ult i64 %i.sp, 4
  br i1 %i.sq, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader: ; preds = %_ZN4llvm5ErrorD2Ev.exit250
  %i.sr = insertelement <2 x ptr> poison, ptr %i.pw, i64 0
  %i.ss = shufflevector <2 x ptr> %i.sr, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.st = insertelement <2 x ptr> poison, ptr %i.qd, i64 0
  %i.su = shufflevector <2 x ptr> %i.st, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.sv = insertelement <2 x ptr> poison, ptr %i.nv, i64 0
  %i.sw = shufflevector <2 x ptr> %i.sv, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.sx = insertelement <2 x ptr> poison, ptr %i.oe, i64 0
  %i.sy = shufflevector <2 x ptr> %i.sx, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.sz = insertelement <2 x ptr> poison, ptr %i.on, i64 0
  %i.ta = shufflevector <2 x ptr> %i.sz, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.tb = insertelement <2 x ptr> poison, ptr %i.ou, i64 0
  %i.tc = shufflevector <2 x ptr> %i.tb, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.td = insertelement <2 x ptr> poison, ptr %i.pe, i64 0
  %i.te = shufflevector <2 x ptr> %i.td, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.tf = insertelement <2 x ptr> poison, ptr %i.pn, i64 0
  %i.tg = shufflevector <2 x ptr> %i.tf, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader, %bb.ik
  %i.th = phi i64 [ %i.alj, %bb.ik ], [ %i.sp, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ] ; 6 uses
  %.pn = phi { ptr, i64 } [ %i.ali, %bb.ik ], [ %i.so, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ]
  %.sroa.7443.0.in530674 = phi i64 [ %i.alh, %bb.ik ], [ %i.mw, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ]
  %.0115532673 = phi i16 [ %.4119, %bb.ik ], [ 0, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ] ; 10 uses
  %.1533672 = phi i1 [ %.7, %bb.ik ], [ false, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ] ; 8 uses
  %i.ti = extractvalue { ptr, i64 } %.pn, 0       ; 6 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %.0.copyload.i.i.i.i251 = load i16, ptr %i.tj, align 1
  switch i16 %.0.copyload.i.i.i.i251, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.thread [
    i16 4418, label %bb.ci
    i16 4417, label %bb.dl
    i16 4421, label %bb.ec
    i16 4471, label %bb.fj
    i16 4419, label %bb.gq
    i16 4415, label %bb.ik
    i16 4416, label %bb.ik
    i16 4420, label %bb.ik
  ]

bb.ci:                                            ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  store i16 4418, ptr %64, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ry, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  call void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_26DefRangeFramePointerRelSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %65, ptr nonnull %i.ti, i64 %i.th, ptr noundef nonnull align 8 dereferenceable(44) %64)
  %i.tk = load ptr, ptr %65, align 8, !tbaa !66   ; 2 uses
  %.not523 = icmp eq ptr %i.tk, null              ; 2 uses
  br i1 %.not523, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr null, ptr %65, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  store ptr %i.tk, ptr %37, align 8, !tbaa !66
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %36, ptr nofree noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
  %i.tl = load ptr, ptr %37, align 8, !tbaa !66   ; 3 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tn = load ptr, ptr %i.tl, align 8, !tbaa !40
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load ptr, ptr %i.to, align 8
  call void %i.tp(ptr noundef nonnull align 8 dereferenceable(8) %i.tl) #21, !inline_history !4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %.pr477 = load ptr, ptr %65, align 8, !tbaa !66 ; 3 uses
  %i.tq = icmp eq ptr %.pr477, null
  br i1 %i.tq, label %_ZN4llvm5ErrorD2Ev.exit257.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tr = load ptr, ptr %.pr477, align 8, !tbaa !40
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8
  call void %i.tt(ptr noundef nonnull align 8 dereferenceable(8) %.pr477) #21, !inline_history !5
  br label %_ZN4llvm5ErrorD2Ev.exit257.thread

_ZN4llvm5ErrorD2Ev.exit257.thread:                ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %bb.dj

bb.cn:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  %i.tu = load ptr, ptr %i.rz, align 8, !tbaa !370 ; 2 uses
  %i.tv = load ptr, ptr %i.sa, align 8, !tbaa !371
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %i.tu to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = ashr exact i64 %i.ty, 2
  call fastcc void @_ZL13MakeRangeListRKN12lldb_private4npdb8PdbIndexERKN4llvm8codeview22LocalVariableAddrRangeENS4_8ArrayRefINS5_20LocalVariableAddrGapEEE(ptr dead_on_unwind noalias writable align 8 %66, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ry, ptr %i.tu, i64 %i.tz)
  %i.ua = icmp eq i16 %.0115532673, 0
  br i1 %i.ua, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  %i.ub = load i64, ptr %i.sb, align 8, !tbaa !373
  store i64 %i.ub, ptr %67, align 8, !tbaa !375
  %i.uc = call i64 @_ZNK12lldb_private4npdb9PdbSymUid14asCompilandSymEv(ptr noundef nonnull align 8 dereferenceable(8) %67) #21 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.ud = call { ptr, i64 } @_ZNK12lldb_private4npdb8PdbIndex16ReadSymbolRecordENS0_17PdbCompilandSymIdE(ptr noundef nonnull align 8 dereferenceable(392) %1, i64 %i.uc) #21 ; 2 uses
  %i.ue = extractvalue { ptr, i64 } %i.ud, 1      ; 2 uses
  %i.uf = icmp ult i64 %i.ue, 4
  br i1 %i.uf, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit263, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit260

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit260: ; preds = %bb.co
  %i.ug = extractvalue { ptr, i64 } %i.ud, 0
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  %.0.copyload.i.i.i.i258 = load i16, ptr %i.uh, align 1
  %i.ui = add i16 %.0.copyload.i.i.i.i258, -4367
  %spec.select = icmp ult i16 %i.ui, 2
  br label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit263

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit263: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit260, %bb.co
  %i.uj = phi i1 [ %spec.select, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit260 ], [ false, %bb.co ]
  call void @_ZN12lldb_private12_lldb_assertEbPKcS1_S1_jRSt9once_flag(i1 noundef zeroext %i.uj, ptr noundef nonnull @.str.7, ptr noundef nonnull @__FUNCTION__._ZN12lldb_private4npdb23GetVariableLocationInfoERNS0_8PdbIndexENS0_17PdbCompilandSymIdERNS_5BlockESt10shared_ptrINS_6ModuleEE, ptr noundef nonnull @.str.1, i32 noundef 823, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN12lldb_private4npdb23GetVariableLocationInfoERNS0_8PdbIndexENS0_17PdbCompilandSymIdERNS_5BlockESt10shared_ptrINS_6ModuleEEE10_once_flag) #21
  %i.uk = shl i64 %i.ue, 32
  %.sroa.547.0.extract.shift524 = add i64 %i.uk, %i.uc
  %.sroa.4424.0.insert.ext = and i64 %.sroa.547.0.extract.shift524, -4294967296
  %.sroa.0422.0.insert.ext = and i64 %i.uc, 65535
  %.sroa.0422.0.insert.insert = or disjoint i64 %.sroa.4424.0.insert.ext, %.sroa.0422.0.insert.ext
  %i.ul = load i8, ptr %i.sc, align 8, !tbaa !142, !range !123, !noundef !124
  %i.um = trunc nuw i8 %i.ul to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.un = call { ptr, i64 } @_ZNK12lldb_private4npdb8PdbIndex16ReadSymbolRecordENS0_17PdbCompilandSymIdE(ptr noundef nonnull align 8 dereferenceable(392) %1, i64 %.sroa.0422.0.insert.insert) #21 ; 2 uses
  %i.uo = extractvalue { ptr, i64 } %i.un, 0      ; 2 uses
  %i.up = extractvalue { ptr, i64 } %i.un, 1      ; 2 uses
  %i.uq = icmp ult i64 %i.up, 4
  br i1 %i.uq, label %_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit263
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.ur, align 1
  %.not.i264 = icmp eq i16 %.0.copyload.i.i.i.i.i, 4114
  br i1 %.not.i264, label %_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit, label %_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit.thread

_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit.thread: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit263
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %bb.dh

_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i
  %.sroa.05.0.extract.trunc.i = trunc i64 %i.uc to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  store i16 4114, ptr %34, align 4, !tbaa !82
  store i32 0, ptr %i.se, align 4, !tbaa !376
  store i32 0, ptr %i.sf, align 4, !tbaa !222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.sd, i8 0, i64 22, i1 false)
  call void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_12FrameProcSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %35, ptr nonnull %i.uo, i64 %i.up, ptr noundef nonnull align 4 dereferenceable(36) %34)
  %i.us = call noundef ptr @_ZN12lldb_private4npdb16CompileUnitIndex12GetCompilandEt(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, i16 noundef zeroext %.sroa.05.0.extract.trunc.i) #21
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 576
  %i.uu = load i16, ptr %i.ut, align 8, !tbaa !377
  %i.uv = load i32, ptr %i.se, align 4, !tbaa !376
  %..i = select i1 %i.um, i32 16, i32 14
  %i.uw = lshr i32 %i.uv, %..i
  %i.ux = trunc i32 %i.uw to i8
  %i.uy = and i8 %i.ux, 3
  %i.uz = call noundef zeroext i16 @_ZN4llvm8codeview17decodeFramePtrRegENS0_18EncodedFramePtrRegENS0_7CPUTypeE(i8 noundef zeroext %i.uy, i16 noundef zeroext %i.uu) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  %.not125 = icmp eq i16 %i.uz, 0
  br i1 %.not125, label %bb.dh, label %bb.cp

bb.cp:                                            ; preds = %_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit, %bb.cn
  %.1116 = phi i16 [ %i.uz, %_ZL20GetBaseFrameRegisterRN12lldb_private4npdb8PdbIndexENS0_17PdbCompilandSymIdEb.exit ], [ %.0115532673, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %68) #21
  %i.va = icmp eq i16 %.1116, 30006
  br i1 %i.va, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %i.vb = call fastcc noundef zeroext i1 @_ZL19GetFrameDataProgramRN12lldb_private4npdb8PdbIndexERKNS_11RangeVectorImmLj0EEERN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %69)
  br i1 %i.vb, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21
  %.sroa.042.0.copyload = load ptr, ptr %69, align 8, !tbaa !45
  %.sroa.243.0.copyload = load i64, ptr %.sroa.243.0..sroa_idx, align 8, !tbaa !46
  %.0.copyload.i.i.i = load i32, ptr %i.sh, align 2
  %i.vc = load ptr, ptr %i.qw, align 8, !tbaa !69 ; 2 uses
  %i.vd = load <2 x ptr>, ptr %4, align 8, !tbaa !147
  store <2 x ptr> %i.vd, ptr %71, align 16, !tbaa !147
  %.not.i.i.i267 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i267, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit269, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 3 uses
  %i.vf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i268 = icmp eq i8 %i.vf, 0
  br i1 %.not.i.i.i.i268, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vg = load i32, ptr %i.ve, align 4, !tbaa !74
  %i.vh = add nsw i32 %i.vg, 1
  store i32 %i.vh, ptr %i.ve, align 4, !tbaa !74
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit269

bb.cu:                                            ; preds = %bb.cs
  %i.vi = atomicrmw volatile add ptr %i.ve, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit269

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit269: ; preds = %bb.cr, %bb.ct, %bb.cu
  call void @_ZN12lldb_private4npdb31MakeVFrameRelLocationExpressionEN4llvm9StringRefEiSt10shared_ptrINS_6ModuleEE(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::DWARFExpression") align 8 %70, ptr %.sroa.042.0.copyload, i64 %.sroa.243.0.copyload, i32 noundef %.0.copyload.i.i.i, ptr nofree noundef nonnull align 8 dereferenceable(16) %71) #21
  %i.vj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private13DataExtractoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %68, ptr noundef nonnull align 8 dereferenceable(52) %70) #21 ; 0 uses
  %i.vk = load i32, ptr %i.sl, align 8, !tbaa !178
  store i32 %i.vk, ptr %i.sk, align 8, !tbaa !178
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %70) #21
  call void @_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %71) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  br label %bb.cv
end_hunk_0
begin_hunk_1_@_ZN12lldb_private4npdb23GetVariableLocationInfoERNS0_8PdbIndexENS0_17PdbCompilandSymIdERNS_5BlockESt10shared_ptrINS_6ModuleEE:_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  %i.aea = load ptr, ptr %90, align 8, !tbaa !51  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.rc
  br i1 %i.aeb, label %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit350, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @free(ptr noundef %i.aea) #21
  br label %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit350

_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit350: ; preds = %bb.gn, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #21
  %i.aec = load ptr, ptr %i.qq, align 8, !tbaa !370 ; 3 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.aec, null
  br i1 %.not.i.i.i.i351, label %_ZN4llvm8codeview27DefRangeRegisterRelIndirSymD2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit350
  %i.aed = load ptr, ptr %i.rd, align 8, !tbaa !378
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = ptrtoint ptr %i.aec to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %i.aec, i64 noundef %i.aeg) #22
  br label %_ZN4llvm8codeview27DefRangeRegisterRelIndirSymD2Ev.exit

_ZN4llvm8codeview27DefRangeRegisterRelIndirSymD2Ev.exit: ; preds = %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit350, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #21
  br label %bb.ik

bb.gq:                                            ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #21
  store i16 4419, ptr %97, align 8, !tbaa !82
  store i64 0, ptr %i.nk, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.nl, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #21
  call void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_27DefRangeSubfieldRegisterSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %98, ptr nonnull %i.ti, i64 %i.th, ptr noundef nonnull align 8 dereferenceable(52) %97)
  %i.aeh = load ptr, ptr %98, align 8, !tbaa !66  ; 2 uses
  %.not519 = icmp eq ptr %i.aeh, null
  br i1 %.not519, label %bb.gv, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  store ptr null, ptr %98, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %i.aeh, ptr %23, align 8, !tbaa !66
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %22, ptr nofree noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 1 dereferenceable(1) %24)
  %i.aei = load ptr, ptr %23, align 8, !tbaa !66  ; 3 uses
  %i.aej = icmp eq ptr %i.aei, null
  br i1 %i.aej, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aek = load ptr, ptr %i.aei, align 8, !tbaa !40
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aem = load ptr, ptr %i.ael, align 8
  call void %i.aem(ptr noundef nonnull align 8 dereferenceable(8) %i.aei) #21, !inline_history !4
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gr, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %.pr506 = load ptr, ptr %98, align 8, !tbaa !66 ; 3 uses
  %i.aen = icmp eq ptr %.pr506, null
  br i1 %i.aen, label %.critedge133, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aeo = load ptr, ptr %.pr506, align 8, !tbaa !40
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = load ptr, ptr %i.aep, align 8
  call void %i.aeq(ptr noundef nonnull align 8 dereferenceable(8) %.pr506) #21, !inline_history !5
  br label %.critedge133

bb.gv:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #21
  %i.aer = load ptr, ptr %i.nl, align 8, !tbaa !370 ; 2 uses
  %i.aes = load ptr, ptr %i.nm, align 8, !tbaa !371
  %i.aet = ptrtoint ptr %i.aes to i64
  %i.aeu = ptrtoint ptr %i.aer to i64
  %i.aev = sub i64 %i.aet, %i.aeu
  %i.aew = ashr exact i64 %i.aev, 2
  call fastcc void @_ZL13MakeRangeListRKN12lldb_private4npdb8PdbIndexERKN4llvm8codeview22LocalVariableAddrRangeENS4_8ArrayRefINS5_20LocalVariableAddrGapEEE(ptr dead_on_unwind noalias writable align 8 %99, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.nk, ptr %i.aer, i64 %i.aew)
  %.0.copyload.i.i.i357 = load i16, ptr %i.nn, align 2
  %i.aex = call noundef i32 @_ZN12lldb_private4npdb15GetRegisterSizeEN4llvm8codeview10RegisterIdE(i16 noundef zeroext %.0.copyload.i.i.i357) #21 ; 2 uses
  %i.aey = icmp eq i32 %i.aex, 0
  br i1 %i.aey, label %bb.ih, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aez = zext i32 %i.aex to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %.0.copyload.i.i.i358 = load i32, ptr %i.no, align 2
  %i.afa = zext i32 %.0.copyload.i.i.i358 to i64
  store i64 %i.afa, ptr %i.f, align 8, !tbaa !46
  %i.afb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  store i64 %i.aez, ptr %i.afb, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %.0.copyload.i.i.i359 = load i32, ptr %i.no, align 2
  %i.afc = zext i32 %.0.copyload.i.i.i359 to i64
  %.0.copyload.i.i.i360 = load i16, ptr %i.nn, align 2
  %.sroa.0.0.insert.ext = zext i16 %.0.copyload.i.i.i360 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.0.0.insert.ext, 4294967296
  %.val141 = load ptr, ptr %99, align 8, !tbaa !51 ; 2 uses
  %.val142 = load i32, ptr %i.np, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store i48 %.sroa.0.0.insert.insert, ptr %11, align 8
  store i64 %i.afc, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr %i.nq, ptr %12, align 8, !tbaa !51
  store i32 0, ptr %i.nr, align 8, !tbaa !52
  store i32 0, ptr %i.ns, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %i.e, ptr %13, align 8, !tbaa !379
  store ptr %11, ptr %i.nt, align 8, !tbaa !380
  store ptr %12, ptr %i.nu, align 8, !tbaa !381
  %i.afd = zext i32 %.val142 to i64
  %.idx.i = shl nuw nsw i64 %i.afd, 4
  %i.afe = getelementptr inbounds nuw i8, ptr %.val141, i64 %.idx.i
  %.not20.i = icmp eq i32 %.val142, 0
  br i1 %.not20.i, label %.thread5.i, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.gw
  %.val96.i.pre541 = load ptr, ptr %63, align 8
  br label %.lr.ph23.i

._crit_edge24.i:                                  ; preds = %bb.ie
  %.val.pre.i = load ptr, ptr %12, align 8, !tbaa !51 ; 3 uses
  %.val93.pre.i = load i32, ptr %i.nr, align 8, !tbaa !52 ; 2 uses
  %i.aff = zext i32 %.val93.pre.i to i64
  %.idx30.i = mul nuw nsw i64 %i.aff, 136
  %i.afg = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 %.idx30.i
  %.not8725.i = icmp eq i32 %.val93.pre.i, 0
  br i1 %.not8725.i, label %.thread5.i, label %.lr.ph28.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %bb.ie
  %.val96.i = phi ptr [ %.val96.i544, %bb.ie ], [ %.val96.i.pre541, %.lr.ph23.i.preheader ] ; 11 uses
  %.08121.i = phi ptr [ %i.ako, %bb.ie ], [ %.val141, %.lr.ph23.i.preheader ] ; 3 uses
  %i.afh = load i64, ptr %.08121.i, align 8, !tbaa !230 ; 10 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.08121.i, i64 8
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !231
  %i.afk = add i64 %i.afj, %i.afh                 ; 18 uses
  %.val97.i = load i32, ptr %i.nh, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i361 = icmp eq i32 %.val97.i, 0
  br i1 %.not.i.i.i.i361, label %._crit_edge.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph23.i
  %i.afl = zext i32 %.val97.i to i64              ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.04.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.afl, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0113.i.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val96.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.afm = lshr i64 %.04.i.i.i.i.i.i, 1           ; 3 uses
  %i.afn = getelementptr inbounds nuw [136 x i8], ptr %.0113.i.i.i.i.i.i, i64 %i.afm ; 3 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.afn, align 8, !tbaa !230
  %i.afo = getelementptr i8, ptr %i.afn, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.afo, align 8, !tbaa !231
  %i.afp = add i64 %.val13.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %.not.i.i.i.i.i.i362 = icmp ugt i64 %i.afp, %i.afh ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 136
  %i.afr = xor i64 %i.afm, -1
  %i.afs = add nsw i64 %.04.i.i.i.i.i.i, %i.afr
  %.112.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i362, ptr %.0113.i.i.i.i.i.i, ptr %i.afq ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i362, i64 %i.afm, i64 %i.afs ; 2 uses
  %i.aft = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.aft, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.preheader.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.preheader.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.afu = getelementptr inbounds nuw [136 x i8], ptr %.val96.i, i64 %i.afl
  br label %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.i.i.i

_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.i.i.i: ; preds = %bb.gx, %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.afv, %bb.gx ], [ %.112.i.i.i.i.i.i, %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.preheader.i.i.i ] ; 4 uses
  %.not.i.i.i363 = icmp eq ptr %.09.i.i.i, %.val96.i
  br i1 %.not.i.i.i363, label %.critedge.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.i.i.i
  %i.afv = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -136 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !230 ; 2 uses
  %.not.i18.i.i.i = icmp ule i64 %i.afw, %i.afh
  %i.afx = getelementptr inbounds i8, ptr %.09.i.i.i, i64 -128
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = add i64 %i.afy, %i.afw
  %i.aga = icmp ult i64 %i.afh, %i.afz
  %i.agb = select i1 %.not.i18.i.i.i, i1 %i.aga, i1 false
  br i1 %i.agb, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.i.i.i, label %.critedge.i.i.i, !llvm.loop !7

.critedge.i.i.i:                                  ; preds = %bb.gx, %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.i.i.i
  %.09.lcssa.i.i.i = phi ptr [ %.val96.i, %_ZN4llvm11lower_boundIRKNS_11SmallVectorIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELj0EEERmZNKS2_15RangeDataVectorImmS5_Lj0ENS5_10ComparatorEE30FindEntryThatContainsOrFollowsEmEUlRKNS2_9RangeDataImmS5_EEmE_EEDaOT_OT0_T1_.exit.i.i.i ], [ %.09.i.i.i, %bb.gx ] ; 3 uses
  %.not11.not.i.i.i = icmp eq ptr %.09.lcssa.i.i.i, %i.afu
  %.not.i.i364 = icmp eq ptr %.09.lcssa.i.i.i, null
  %or.cond.i.i = or i1 %.not11.not.i.i.i, %.not.i.i364
  br i1 %or.cond.i.i, label %._crit_edge.i, label %_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i

_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i: ; preds = %.critedge.i.i.i
  %i.agc = ptrtoint ptr %.09.lcssa.i.i.i to i64
  %i.agd = ptrtoint ptr %.val96.i to i64
  %i.age = sub i64 %i.agc, %i.agd
  %i.agf = sdiv exact i64 %i.age, 136             ; 2 uses
  %i.agg = trunc i64 %i.agf to i32
  %i.agh = icmp ugt i32 %.val97.i, %i.agg
  %.not881250.i = icmp ne ptr %.val96.i, null
  %.not8812.i = select i1 %i.agh, i1 %.not881250.i, i1 false
  %.not8913.i = icmp ult i64 %i.afh, %i.afk
  %or.cond14.i = select i1 %.not8812.i, i1 %.not8913.i, i1 false
  br i1 %or.cond14.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i
  %i.agi = and i64 %i.agf, 4294967295             ; 2 uses
  %i.agj = getelementptr inbounds nuw [136 x i8], ptr %.val96.i, i64 %i.agi ; 2 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !230 ; 2 uses
  %.not90.i662 = icmp ult i64 %i.agk, %i.afk
  br i1 %.not90.i662, label %bb.gy, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.hz
  %i.agl = getelementptr inbounds nuw [136 x i8], ptr %.val94.i, i64 %indvars.iv.next ; 2 uses
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !230 ; 2 uses
  %.not90.i = icmp ult i64 %i.agm, %i.afk
  br i1 %.not90.i, label %bb.gy, label %._crit_edge.i

bb.gy:                                            ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.agn = phi i64 [ %i.agm, %.lr.ph.i ], [ %i.agk, %.lr.ph.i.preheader ] ; 3 uses
  %.07715.i665 = phi i64 [ %.178.i, %.lr.ph.i ], [ %i.afh, %.lr.ph.i.preheader ] ; 6 uses
  %spec.select.i17.i664 = phi ptr [ %i.agl, %.lr.ph.i ], [ %i.agj, %.lr.ph.i.preheader ] ; 19 uses
  %indvars.iv663 = phi i64 [ %indvars.iv.next, %.lr.ph.i ], [ %i.agi, %.lr.ph.i.preheader ]
  %i.ago = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 16 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 120 ; 3 uses
  %i.agq = load i8, ptr %i.agp, align 8, !tbaa !382, !range !123, !noundef !124
  %i.agr = trunc nuw i8 %i.agq to i1
  %i.ags = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 8 ; 5 uses
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !231
  %i.agu = add i64 %i.agt, %i.agn                 ; 10 uses
  br i1 %i.agr, label %bb.hz, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.agv = icmp ugt i64 %.07715.i665, %i.agn
  br i1 %i.agv, label %bb.ha, label %bb.hj

bb.ha:                                            ; preds = %bb.gz
  %i.agw = icmp ult i64 %i.afk, %i.agu
  br i1 %i.agw, label %bb.hb, label %bb.hi

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.agx = sub nuw i64 %i.agu, %i.afk
  store i32 0, ptr %i.pe, align 8, !tbaa !213
  store ptr null, ptr %i.pf, align 8, !tbaa !214
  store <2 x ptr> %i.te, ptr %i.pg, align 8, !tbaa !239
  store i64 0, ptr %i.pi, align 8, !tbaa !217
  %i.agy = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 32
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i99.i = icmp eq ptr %i.agz, null
  br i1 %.not.i.i.i99.i, label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %15, ptr %10, align 8, !tbaa !241
  %i.aha = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %15, ptr noundef nonnull %i.agz, ptr noundef nonnull %i.pe, ptr noundef nonnull align 8 dereferenceable(8) %10) ; 3 uses
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %bb.hc
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.aha, %bb.hc ], [ %i.ahc, %bb.hd ] ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %bb.hd, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %bb.hd
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.pg, align 8, !tbaa !239
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.aha, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.ahe, %bb.he ] ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i, i64 24
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i = icmp eq ptr %i.ahe, null
  br i1 %.not.i.i8.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i, label %bb.he, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i: ; preds = %bb.he
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.ph, align 8, !tbaa !239
  %i.ahf = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 56
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !217
  store i64 %i.ahg, ptr %i.pi, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  store ptr %i.aha, ptr %i.pf, align 8, !tbaa !239
  br label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i

_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i, %bb.hb
  %i.ahh = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 64
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.pj, ptr noundef nonnull align 8 dereferenceable(52) %i.ahh) #21
  %i.ahi = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 112
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !178
  store i32 %i.ahj, ptr %i.pk, align 8, !tbaa !178
  %i.ahk = load i8, ptr %i.agp, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ahk, ptr %i.pl, align 8, !tbaa !244
  store i64 %i.afk, ptr %14, align 8, !tbaa !230
  store i64 %i.agx, ptr %i.pm, align 8, !tbaa !231
  store i32 0, ptr %i.pn, align 8, !tbaa !213
  store ptr null, ptr %i.po, align 8, !tbaa !214
  store <2 x ptr> %i.tg, ptr %i.pp, align 8, !tbaa !239
  store i64 0, ptr %i.pr, align 8, !tbaa !217
  %i.ahl = load ptr, ptr %i.pf, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i.i372 = icmp eq ptr %i.ahl, null
  br i1 %.not.i.i.i.i.i372, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i, label %bb.hf

bb.hf:                                            ; preds = %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %i.ps, ptr %9, align 8, !tbaa !241
  %i.ahm = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.ps, ptr noundef nonnull %i.ahl, ptr noundef nonnull %i.pn, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 3 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ahm, %bb.hf ], [ %i.aho, %bb.hg ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aho, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %bb.hg, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %bb.hg
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.pp, align 8, !tbaa !239
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.ahm, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.ahq, %bb.hh ] ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i, label %bb.hh, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i: ; preds = %bb.hh
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.pq, align 8, !tbaa !239
  %i.ahr = load i64, ptr %i.pi, align 8, !tbaa !217
  store i64 %i.ahr, ptr %i.pr, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  store ptr %i.ahm, ptr %i.po, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i, %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.pt, ptr noundef nonnull align 8 dereferenceable(52) %i.pj) #21
  %i.ahs = load i32, ptr %i.pk, align 8, !tbaa !178
  store i32 %i.ahs, ptr %i.pu, align 8, !tbaa !178
  %i.aht = load i8, ptr %i.pl, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.aht, ptr %i.pv, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %14)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.pt) #21
  %i.ahu = load ptr, ptr %i.po, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.ps, ptr noundef %i.ahu)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.pj) #21
  %i.ahv = load ptr, ptr %i.pf, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %15, ptr noundef %i.ahv)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i, %bb.ha
  %i.ahw = call i64 @llvm.umin.i64(i64 %i.afk, i64 %i.agu)
  call fastcc void @"_ZZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEEENK3$_0clEmmPNS0_9RangeDataImmS2_EE"(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %.07715.i665, i64 noundef %i.ahw, ptr noundef %spec.select.i17.i664)
  %i.ahx = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %spec.select.i100.i = call i64 @llvm.usub.sat.i64(i64 %.07715.i665, i64 %i.ahx)
  store i64 %spec.select.i100.i, ptr %i.ags, align 8, !tbaa !231
  br label %bb.hz

bb.hj:                                            ; preds = %bb.gz
  %i.ahy = icmp ult i64 %.07715.i665, %i.agn
  br i1 %i.ahy, label %bb.hk, label %bb.hq

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.ahz = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %i.aia = sub i64 %i.ahz, %.07715.i665
  %i.aib = load i64, ptr %i.e, align 8, !tbaa !46
  store i32 0, ptr %i.on, align 8, !tbaa !213
  store ptr null, ptr %i.oo, align 8, !tbaa !214
  store <2 x ptr> %i.ta, ptr %i.op, align 8, !tbaa !239
  store i64 0, ptr %i.oq, align 8, !tbaa !217
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %i.or) #21
  store i8 0, ptr %i.os, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.aib, ptr %i.d, align 8, !tbaa !46
  %i.aic = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.aic, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.07715.i665, ptr %16, align 8, !tbaa !230
  store i64 %i.aia, ptr %i.ot, align 8, !tbaa !231
  store i32 0, ptr %i.ou, align 8, !tbaa !213
  store ptr null, ptr %i.ov, align 8, !tbaa !214
  store <2 x ptr> %i.tc, ptr %i.ow, align 8, !tbaa !239
  store i64 0, ptr %i.oy, align 8, !tbaa !217
  %i.aid = load ptr, ptr %i.oo, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i101.i = icmp eq ptr %i.aid, null
  br i1 %.not.i.i.i.i101.i, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.oz, ptr %8, align 8, !tbaa !241
  %i.aie = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.oz, ptr noundef nonnull %i.aid, ptr noundef nonnull %i.ou, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 3 uses
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hm, %bb.hl
  %.0.i.i.i.i.i.i.i.i102.i = phi ptr [ %i.aie, %bb.hl ], [ %i.aig, %bb.hm ] ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i102.i, i64 16
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i103.i = icmp eq ptr %i.aig, null
  br i1 %.not.i.i.i.i.i.i.i.i103.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i, label %bb.hm, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i: ; preds = %bb.hm
  store ptr %.0.i.i.i.i.i.i.i.i102.i, ptr %i.ow, align 8, !tbaa !239
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hn, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i
  %.0.i.i7.i.i.i.i.i.i105.i = phi ptr [ %i.aie, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i ], [ %i.aii, %bb.hn ] ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i105.i, i64 24
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i106.i = icmp eq ptr %i.aii, null
  br i1 %.not.i.i8.i.i.i.i.i.i106.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i107.i, label %bb.hn, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i107.i: ; preds = %bb.hn
  store ptr %.0.i.i7.i.i.i.i.i.i105.i, ptr %i.ox, align 8, !tbaa !239
  %i.aij = load i64, ptr %i.oq, align 8, !tbaa !217
  store i64 %i.aij, ptr %i.oy, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  store ptr %i.aie, ptr %i.ov, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i107.i, %bb.hk
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.pa, ptr noundef nonnull align 8 dereferenceable(52) %i.or) #21
  %i.aik = load i32, ptr %i.pc, align 8, !tbaa !178
  store i32 %i.aik, ptr %i.pb, align 8, !tbaa !178
  %i.ail = load i8, ptr %i.os, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ail, ptr %i.pd, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %16)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.pa) #21
  %i.aim = load ptr, ptr %i.ov, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.oz, ptr noundef %i.aim)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.or) #21
  %i.ain = load ptr, ptr %i.oo, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %17, ptr noundef %i.ain)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.aio = icmp eq i64 %i.agu, %i.afk
  br i1 %i.aio, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i
  %i.aip = load i64, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.aip, ptr %i.c, align 8, !tbaa !46
  %i.aiq = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %i.ago, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.aiq, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.hz

bb.hp:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i
  %i.air = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  call fastcc void @"_ZZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEEENK3$_0clEmmPNS0_9RangeDataImmS2_EE"(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.air, i64 noundef %i.afk, ptr noundef %spec.select.i17.i664)
  %i.ais = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %i.ait = sub i64 %i.afk, %i.ais
  store i64 %i.afk, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %i.aiu = load i64, ptr %i.ags, align 8, !tbaa !46
  %i.aiv = call i64 @llvm.usub.sat.i64(i64 %i.aiu, i64 %i.ait)
  store i64 %i.aiv, ptr %i.ags, align 8, !tbaa !231
  br label %bb.hz

bb.hq:                                            ; preds = %bb.hj
  %i.aiw = icmp ult i64 %i.afk, %i.agu
  br i1 %i.aiw, label %bb.hr, label %bb.hy

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store i32 0, ptr %i.nv, align 8, !tbaa !213
  store ptr null, ptr %i.nw, align 8, !tbaa !214
  store <2 x ptr> %i.sw, ptr %i.nx, align 8, !tbaa !239
  store i64 0, ptr %i.nz, align 8, !tbaa !217
  %i.aix = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 32
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i109.i = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i.i109.i, label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %19, ptr %7, align 8, !tbaa !241
  %i.aiz = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %19, ptr noundef nonnull %i.aiy, ptr noundef nonnull %i.nv, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 3 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ht, %bb.hs
  %.0.i.i.i.i.i.i.i110.i = phi ptr [ %i.aiz, %bb.hs ], [ %i.ajb, %bb.ht ] ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i110.i, i64 16
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i111.i = icmp eq ptr %i.ajb, null
  br i1 %.not.i.i.i.i.i.i.i111.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i, label %bb.ht, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i: ; preds = %bb.ht
  store ptr %.0.i.i.i.i.i.i.i110.i, ptr %i.nx, align 8, !tbaa !239
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hu, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i
  %.0.i.i7.i.i.i.i.i113.i = phi ptr [ %i.aiz, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i ], [ %i.ajd, %bb.hu ] ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i113.i, i64 24
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i114.i = icmp eq ptr %i.ajd, null
  br i1 %.not.i.i8.i.i.i.i.i114.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i115.i, label %bb.hu, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i115.i: ; preds = %bb.hu
  store ptr %.0.i.i7.i.i.i.i.i113.i, ptr %i.ny, align 8, !tbaa !239
  %i.aje = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 56
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !217
  store i64 %i.ajf, ptr %i.nz, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  store ptr %i.aiz, ptr %i.nw, align 8, !tbaa !239
  br label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i

_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i115.i, %bb.hr
  %i.ajg = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 64
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.oa, ptr noundef nonnull align 8 dereferenceable(52) %i.ajg) #21
  %i.ajh = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 112
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !178
  store i32 %i.aji, ptr %i.ob, align 8, !tbaa !178
  %i.ajj = load i8, ptr %i.agp, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ajj, ptr %i.oc, align 8, !tbaa !244
  store i64 %i.afk, ptr %18, align 8, !tbaa !230
  store i64 %i.agu, ptr %i.od, align 8, !tbaa !231
  store i32 0, ptr %i.oe, align 8, !tbaa !213
  store ptr null, ptr %i.of, align 8, !tbaa !214
  store <2 x ptr> %i.sy, ptr %i.og, align 8, !tbaa !239
  store i64 0, ptr %i.oi, align 8, !tbaa !217
  %i.ajk = load ptr, ptr %i.nw, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i117.i = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i.i.i117.i, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i, label %bb.hv

bb.hv:                                            ; preds = %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.oj, ptr %6, align 8, !tbaa !241
  %i.ajl = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.oj, ptr noundef nonnull %i.ajk, ptr noundef nonnull %i.oe, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 3 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hw, %bb.hv
  %.0.i.i.i.i.i.i.i.i118.i = phi ptr [ %i.ajl, %bb.hv ], [ %i.ajn, %bb.hw ] ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i118.i, i64 16
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i119.i = icmp eq ptr %i.ajn, null
  br i1 %.not.i.i.i.i.i.i.i.i119.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i, label %bb.hw, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i: ; preds = %bb.hw
  store ptr %.0.i.i.i.i.i.i.i.i118.i, ptr %i.og, align 8, !tbaa !239
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hx, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i
  %.0.i.i7.i.i.i.i.i.i121.i = phi ptr [ %i.ajl, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i ], [ %i.ajp, %bb.hx ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i121.i, i64 24
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i122.i = icmp eq ptr %i.ajp, null
  br i1 %.not.i.i8.i.i.i.i.i.i122.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i123.i, label %bb.hx, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i123.i: ; preds = %bb.hx
  store ptr %.0.i.i7.i.i.i.i.i.i121.i, ptr %i.oh, align 8, !tbaa !239
  %i.ajq = load i64, ptr %i.nz, align 8, !tbaa !217
  store i64 %i.ajq, ptr %i.oi, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  store ptr %i.ajl, ptr %i.of, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i123.i, %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.ok, ptr noundef nonnull align 8 dereferenceable(52) %i.oa) #21
  %i.ajr = load i32, ptr %i.ob, align 8, !tbaa !178
  store i32 %i.ajr, ptr %i.ol, align 8, !tbaa !178
  %i.ajs = load i8, ptr %i.oc, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ajs, ptr %i.om, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %18)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.ok) #21
  %i.ajt = load ptr, ptr %i.of, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.oj, ptr noundef %i.ajt)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.oa) #21
  %i.aju = load ptr, ptr %i.nw, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %19, ptr noundef %i.aju)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.ajv = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %spec.select.i125.i = call i64 @llvm.usub.sat.i64(i64 %i.afk, i64 %i.ajv)
  store i64 %spec.select.i125.i, ptr %i.ags, align 8, !tbaa !231
  br label %bb.hy

bb.hy:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i, %bb.hq
  %i.ajw = load i64, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ajw, ptr %i.b, align 8, !tbaa !46
  %i.ajx = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %i.ago, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.ajx, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hp, %bb.ho, %bb.hi, %bb.gy
  %.178.i = phi i64 [ %i.agu, %bb.hi ], [ %i.agu, %bb.hy ], [ %i.agu, %bb.hp ], [ %i.afk, %bb.ho ], [ %i.agu, %bb.gy ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv663, 1 ; 3 uses
  %.val94.i = load ptr, ptr %63, align 8          ; 4 uses
  %.val95.i = load i32, ptr %i.nh, align 8, !tbaa !52
  %i.ajy = zext i32 %.val95.i to i64
  %i.ajz = icmp samesign ult i64 %indvars.iv.next, %i.ajy
  %.not8851.i = icmp ne ptr %.val94.i, null
  %.not88.i = select i1 %i.ajz, i1 %.not8851.i, i1 false
  %.not89.i = icmp ult i64 %.178.i, %i.afk
  %or.cond.i = select i1 %.not88.i, i1 %.not89.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.hz, %.lr.ph.i.preheader, %.lr.ph23.i, %.critedge.i.i.i, %_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i
  %.val96.i545 = phi ptr [ %.val96.i, %_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i ], [ %.val96.i, %.critedge.i.i.i ], [ %.val96.i, %.lr.ph23.i ], [ %.val96.i, %.lr.ph.i.preheader ], [ %.val94.i, %bb.hz ], [ %.val94.i, %.lr.ph.i ]
  %.077.lcssa.i = phi i64 [ %i.afh, %_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i ], [ %i.afh, %.critedge.i.i.i ], [ %i.afh, %.lr.ph23.i ], [ %i.afh, %.lr.ph.i.preheader ], [ %.178.i, %bb.hz ], [ %.178.i, %.lr.ph.i ] ; 3 uses
  %.not91.i = icmp ult i64 %.077.lcssa.i, %i.afk
  br i1 %.not91.i, label %bb.ia, label %bb.ie

bb.ia:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.aka = sub nuw i64 %i.afk, %.077.lcssa.i
  %i.akb = load i64, ptr %i.e, align 8, !tbaa !46
  store i32 0, ptr %i.pw, align 8, !tbaa !213
  store ptr null, ptr %i.px, align 8, !tbaa !214
  store <2 x ptr> %i.ss, ptr %i.py, align 8, !tbaa !239
  store i64 0, ptr %i.pz, align 8, !tbaa !217
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %i.qa) #21
  store i8 0, ptr %i.qb, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.akb, ptr %i.a, align 8, !tbaa !46
  %i.akc = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.akc, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.077.lcssa.i, ptr %20, align 8, !tbaa !230
  store i64 %i.aka, ptr %i.qc, align 8, !tbaa !231
  store i32 0, ptr %i.qd, align 8, !tbaa !213
  store ptr null, ptr %i.qe, align 8, !tbaa !214
  store <2 x ptr> %i.su, ptr %i.qf, align 8, !tbaa !239
  store i64 0, ptr %i.qh, align 8, !tbaa !217
  %i.akd = load ptr, ptr %i.px, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i126.i = icmp eq ptr %i.akd, null
  br i1 %.not.i.i.i.i126.i, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.qi, ptr %5, align 8, !tbaa !241
  %i.ake = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.qi, ptr noundef nonnull %i.akd, ptr noundef nonnull %i.qd, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %bb.ib
  %.0.i.i.i.i.i.i.i.i127.i = phi ptr [ %i.ake, %bb.ib ], [ %i.akg, %bb.ic ] ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i127.i, i64 16
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i128.i = icmp eq ptr %i.akg, null
  br i1 %.not.i.i.i.i.i.i.i.i128.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i, label %bb.ic, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i: ; preds = %bb.ic
  store ptr %.0.i.i.i.i.i.i.i.i127.i, ptr %i.qf, align 8, !tbaa !239
  br label %bb.id

bb.id:                                            ; preds = %bb.id, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i
  %.0.i.i7.i.i.i.i.i.i130.i = phi ptr [ %i.ake, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i ], [ %i.aki, %bb.id ] ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i130.i, i64 24
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i131.i = icmp eq ptr %i.aki, null
  br i1 %.not.i.i8.i.i.i.i.i.i131.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i132.i, label %bb.id, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i132.i: ; preds = %bb.id
  store ptr %.0.i.i7.i.i.i.i.i.i130.i, ptr %i.qg, align 8, !tbaa !239
  %i.akj = load i64, ptr %i.pz, align 8, !tbaa !217
  store i64 %i.akj, ptr %i.qh, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store ptr %i.ake, ptr %i.qe, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i132.i, %bb.ia
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.qj, ptr noundef nonnull align 8 dereferenceable(52) %i.qa) #21
  %i.akk = load i32, ptr %i.ql, align 8, !tbaa !178
  store i32 %i.akk, ptr %i.qk, align 8, !tbaa !178
  %i.akl = load i8, ptr %i.qb, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.akl, ptr %i.qm, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %20)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.qj) #21
  %i.akm = load ptr, ptr %i.qe, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.qi, ptr noundef %i.akm)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.qa) #21
  %i.akn = load ptr, ptr %i.px, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %21, ptr noundef %i.akn)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %.val96.i.pre = load ptr, ptr %63, align 8
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i, %._crit_edge.i
  %.val96.i544 = phi ptr [ %.val96.i.pre, %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i ], [ %.val96.i545, %._crit_edge.i ]
  %i.ako = getelementptr inbounds nuw i8, ptr %.08121.i, i64 16 ; 2 uses
  %.not.i365 = icmp eq ptr %i.ako, %i.afe
  br i1 %.not.i365, label %._crit_edge24.i, label %.lr.ph23.i

._crit_edge29.i:                                  ; preds = %.lr.ph28.i
  %.val98.pre.i = load i32, ptr %i.nr, align 8, !tbaa !52
  %i.akp = icmp eq i32 %.val98.pre.i, 0
  br i1 %i.akp, label %._crit_edge29.i..thread5.i_crit_edge, label %bb.if

._crit_edge29.i..thread5.i_crit_edge:             ; preds = %._crit_edge29.i
  %.val.i.i7.i.pre = load ptr, ptr %12, align 8, !tbaa !51
  br label %.thread5.i

.thread5.i:                                       ; preds = %._crit_edge29.i..thread5.i_crit_edge, %._crit_edge24.i, %bb.gw
  %.val.i.i7.i = phi ptr [ %.val.i.i7.i.pre, %._crit_edge29.i..thread5.i_crit_edge ], [ %.val.pre.i, %._crit_edge24.i ], [ %i.nq, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

.lr.ph28.i:                                       ; preds = %._crit_edge24.i, %.lr.ph28.i
  %.026.i = phi ptr [ %i.akq, %.lr.ph28.i ], [ %.val.pre.i, %._crit_edge24.i ] ; 2 uses
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %63, ptr noundef nonnull align 8 dereferenceable(128) %.026.i)
  %i.akq = getelementptr inbounds nuw i8, ptr %.026.i, i64 136 ; 2 uses
  %.not87.i = icmp eq ptr %i.akq, %i.afg
  br i1 %.not87.i, label %._crit_edge29.i, label %.lr.ph28.i

bb.if:                                            ; preds = %._crit_edge29.i
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE4SortEv(ptr noundef nonnull align 8 dereferenceable(17) %63)
  %.val2.i.i.pr.i = load i32, ptr %i.nr, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %.val.i.i.i = load ptr, ptr %12, align 8, !tbaa !51 ; 3 uses
  %.not4.i.i.i.i366 = icmp eq i32 %.val2.i.i.pr.i, 0
  br i1 %.not4.i.i.i.i366, label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i367

.lr.ph.i.preheader.i.i.i367:                      ; preds = %bb.if
  %i.akr = zext i32 %.val2.i.i.pr.i to i64
  %.idx.i.i.i368 = mul nuw nsw i64 %i.akr, 136
  %i.aks = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx.i.i.i368
  br label %.lr.ph.i.i.i.i369

.lr.ph.i.i.i.i369:                                ; preds = %.lr.ph.i.i.i.i369, %.lr.ph.i.preheader.i.i.i367
end_hunk_1
