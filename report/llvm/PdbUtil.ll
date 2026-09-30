Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PdbUtil?download=true
inline.NumInlined: 3073
inline.NumDeleted: 977
begin_hunk_0_@_ZN12lldb_private4npdb23GetVariableLocationInfoERNS0_8PdbIndexENS0_17PdbCompilandSymIdERNS_5BlockESt10shared_ptrINS_6ModuleEE:_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
bb.cg:                                            ; preds = %.critedge135.critedge
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !40
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8
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
  %i.sr = insertelement <2 x ptr> poison, ptr %i.qd, i64 0
  %i.ss = shufflevector <2 x ptr> %i.sr, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.st = insertelement <2 x ptr> poison, ptr %i.pw, i64 0
  %i.su = shufflevector <2 x ptr> %i.st, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.sv = insertelement <2 x ptr> poison, ptr %i.pn, i64 0
  %i.sw = shufflevector <2 x ptr> %i.sv, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.sx = insertelement <2 x ptr> poison, ptr %i.pe, i64 0
  %i.sy = shufflevector <2 x ptr> %i.sx, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.sz = insertelement <2 x ptr> poison, ptr %i.ou, i64 0
  %i.ta = shufflevector <2 x ptr> %i.sz, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.tb = insertelement <2 x ptr> poison, ptr %i.on, i64 0
  %i.tc = shufflevector <2 x ptr> %i.tb, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.td = insertelement <2 x ptr> poison, ptr %i.oe, i64 0
  %i.te = shufflevector <2 x ptr> %i.td, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.tf = insertelement <2 x ptr> poison, ptr %i.nv, i64 0
  %i.tg = shufflevector <2 x ptr> %i.tf, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader, %bb.ik
  %i.th = phi i64 [ %i.alk, %bb.ik ], [ %i.sp, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ] ; 6 uses
  %.pn = phi { ptr, i64 } [ %i.alj, %bb.ik ], [ %i.so, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ]
  %.sroa.7443.0.in530674 = phi i64 [ %i.ali, %bb.ik ], [ %i.mw, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.preheader ]
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
end_hunk_0
begin_hunk_1_@_ZN12lldb_private4npdb23GetVariableLocationInfoERNS0_8PdbIndexENS0_17PdbCompilandSymIdERNS_5BlockESt10shared_ptrINS_6ModuleEE:_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
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
  %i.agf = sdiv exact i64 %i.age, 136             ; 3 uses
  %i.agg = trunc i64 %i.agf to i32
  %i.agh = icmp ugt i32 %.val97.i, %i.agg
  %.not881250.i = icmp ne ptr %.val96.i, null
  %.not8812.i = select i1 %i.agh, i1 %.not881250.i, i1 false
  %.not8913.i = icmp ult i64 %i.afh, %i.afk
  %or.cond14.i = select i1 %.not8812.i, i1 %.not8913.i, i1 false
  br i1 %or.cond14.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZNK12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE35FindEntryIndexThatContainsOrFollowsEm.exit.i
  %i.agi = and i64 %i.agf, 4294967295
  %i.agj = getelementptr inbounds nuw [136 x i8], ptr %.val96.i, i64 %i.agi ; 2 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !230 ; 2 uses
  %.not90.i662 = icmp ult i64 %i.agk, %i.afk
  br i1 %.not90.i662, label %.lr.ph666, label %._crit_edge.i

.lr.ph666:                                        ; preds = %.lr.ph.i.preheader
  %i.agl = and i64 %i.agf, 4294967295
  br label %bb.gy

.lr.ph.i:                                         ; preds = %bb.hz
  %i.agm = getelementptr inbounds nuw [136 x i8], ptr %.val94.i, i64 %indvars.iv.next ; 2 uses
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !230 ; 2 uses
  %.not90.i = icmp ult i64 %i.agn, %i.afk
  br i1 %.not90.i, label %bb.gy, label %._crit_edge.i

bb.gy:                                            ; preds = %.lr.ph666, %.lr.ph.i
  %i.ago = phi i64 [ %i.agk, %.lr.ph666 ], [ %i.agn, %.lr.ph.i ] ; 3 uses
  %.07715.i665 = phi i64 [ %i.afh, %.lr.ph666 ], [ %.178.i, %.lr.ph.i ] ; 6 uses
  %spec.select.i17.i664 = phi ptr [ %i.agj, %.lr.ph666 ], [ %i.agm, %.lr.ph.i ] ; 19 uses
  %indvars.iv663 = phi i64 [ %i.agl, %.lr.ph666 ], [ %indvars.iv.next, %.lr.ph.i ]
  %i.agp = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 16 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 120 ; 3 uses
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !382, !range !123, !noundef !124
  %i.ags = trunc nuw i8 %i.agr to i1
  %i.agt = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 8 ; 5 uses
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !231
  %i.agv = add i64 %i.agu, %i.ago                 ; 10 uses
  br i1 %i.ags, label %bb.hz, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.agw = icmp ugt i64 %.07715.i665, %i.ago
  br i1 %i.agw, label %bb.ha, label %bb.hj

bb.ha:                                            ; preds = %bb.gz
  %i.agx = icmp ult i64 %i.afk, %i.agv
  br i1 %i.agx, label %bb.hb, label %bb.hi

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.agy = sub nuw i64 %i.agv, %i.afk
  store i32 0, ptr %i.pe, align 8, !tbaa !213
  store ptr null, ptr %i.pf, align 8, !tbaa !214
  store <2 x ptr> %i.sy, ptr %i.pg, align 8, !tbaa !239
  store i64 0, ptr %i.pi, align 8, !tbaa !217
  %i.agz = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 32
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i99.i = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i99.i, label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %15, ptr %10, align 8, !tbaa !241
  %i.ahb = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %15, ptr noundef nonnull %i.aha, ptr noundef nonnull %i.pe, ptr noundef nonnull align 8 dereferenceable(8) %10) ; 3 uses
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %bb.hc
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ahb, %bb.hc ], [ %i.ahd, %bb.hd ] ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %bb.hd, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %bb.hd
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.pg, align 8, !tbaa !239
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.ahb, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.ahf, %bb.he ] ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i, i64 24
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i8.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i, label %bb.he, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i: ; preds = %bb.he
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.ph, align 8, !tbaa !239
  %i.ahg = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 56
  %i.ahh = load i64, ptr %i.ahg, align 8, !tbaa !217
  store i64 %i.ahh, ptr %i.pi, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  store ptr %i.ahb, ptr %i.pf, align 8, !tbaa !239
  br label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i

_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i, %bb.hb
  %i.ahi = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 64
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.pj, ptr noundef nonnull align 8 dereferenceable(52) %i.ahi) #21
  %i.ahj = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 112
  %i.ahk = load i32, ptr %i.ahj, align 8, !tbaa !178
  store i32 %i.ahk, ptr %i.pk, align 8, !tbaa !178
  %i.ahl = load i8, ptr %i.agq, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ahl, ptr %i.pl, align 8, !tbaa !244
  store i64 %i.afk, ptr %14, align 8, !tbaa !230
  store i64 %i.agy, ptr %i.pm, align 8, !tbaa !231
  store i32 0, ptr %i.pn, align 8, !tbaa !213
  store ptr null, ptr %i.po, align 8, !tbaa !214
  store <2 x ptr> %i.sw, ptr %i.pp, align 8, !tbaa !239
  store i64 0, ptr %i.pr, align 8, !tbaa !217
  %i.ahm = load ptr, ptr %i.pf, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i.i372 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i.i.i372, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i, label %bb.hf

bb.hf:                                            ; preds = %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %i.ps, ptr %9, align 8, !tbaa !241
  %i.ahn = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.ps, ptr noundef nonnull %i.ahm, ptr noundef nonnull %i.pn, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 3 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ahn, %bb.hf ], [ %i.ahp, %bb.hg ] ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %bb.hg, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %bb.hg
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.pp, align 8, !tbaa !239
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.ahn, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.ahr, %bb.hh ] ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i, label %bb.hh, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i: ; preds = %bb.hh
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.pq, align 8, !tbaa !239
  %i.ahs = load i64, ptr %i.pi, align 8, !tbaa !217
  store i64 %i.ahs, ptr %i.pr, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  store ptr %i.ahn, ptr %i.po, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i, %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit.i
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.pt, ptr noundef nonnull align 8 dereferenceable(52) %i.pj) #21
  %i.aht = load i32, ptr %i.pk, align 8, !tbaa !178
  store i32 %i.aht, ptr %i.pu, align 8, !tbaa !178
  %i.ahu = load i8, ptr %i.pl, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ahu, ptr %i.pv, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %14)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.pt) #21
  %i.ahv = load ptr, ptr %i.po, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.ps, ptr noundef %i.ahv)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.pj) #21
  %i.ahw = load ptr, ptr %i.pf, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %15, ptr noundef %i.ahw)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit.i, %bb.ha
  %i.ahx = call i64 @llvm.umin.i64(i64 %i.afk, i64 %i.agv)
  call fastcc void @"_ZZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEEENK3$_0clEmmPNS0_9RangeDataImmS2_EE"(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %.07715.i665, i64 noundef %i.ahx, ptr noundef %spec.select.i17.i664)
  %i.ahy = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %spec.select.i100.i = call i64 @llvm.usub.sat.i64(i64 %.07715.i665, i64 %i.ahy)
  store i64 %spec.select.i100.i, ptr %i.agt, align 8, !tbaa !231
  br label %bb.hz

bb.hj:                                            ; preds = %bb.gz
  %i.ahz = icmp ult i64 %.07715.i665, %i.ago
  br i1 %i.ahz, label %bb.hk, label %bb.hq

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.aia = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %i.aib = sub i64 %i.aia, %.07715.i665
  %i.aic = load i64, ptr %i.e, align 8, !tbaa !46
  store i32 0, ptr %i.on, align 8, !tbaa !213
  store ptr null, ptr %i.oo, align 8, !tbaa !214
  store <2 x ptr> %i.tc, ptr %i.op, align 8, !tbaa !239
  store i64 0, ptr %i.oq, align 8, !tbaa !217
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %i.or) #21
  store i8 0, ptr %i.os, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.aic, ptr %i.d, align 8, !tbaa !46
  %i.aid = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.aid, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.07715.i665, ptr %16, align 8, !tbaa !230
  store i64 %i.aib, ptr %i.ot, align 8, !tbaa !231
  store i32 0, ptr %i.ou, align 8, !tbaa !213
  store ptr null, ptr %i.ov, align 8, !tbaa !214
  store <2 x ptr> %i.ta, ptr %i.ow, align 8, !tbaa !239
  store i64 0, ptr %i.oy, align 8, !tbaa !217
  %i.aie = load ptr, ptr %i.oo, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i101.i = icmp eq ptr %i.aie, null
  br i1 %.not.i.i.i.i101.i, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.oz, ptr %8, align 8, !tbaa !241
  %i.aif = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.oz, ptr noundef nonnull %i.aie, ptr noundef nonnull %i.ou, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 3 uses
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hm, %bb.hl
  %.0.i.i.i.i.i.i.i.i102.i = phi ptr [ %i.aif, %bb.hl ], [ %i.aih, %bb.hm ] ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i102.i, i64 16
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i103.i = icmp eq ptr %i.aih, null
  br i1 %.not.i.i.i.i.i.i.i.i103.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i, label %bb.hm, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i: ; preds = %bb.hm
  store ptr %.0.i.i.i.i.i.i.i.i102.i, ptr %i.ow, align 8, !tbaa !239
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hn, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i
  %.0.i.i7.i.i.i.i.i.i105.i = phi ptr [ %i.aif, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i104.i ], [ %i.aij, %bb.hn ] ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i105.i, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i106.i = icmp eq ptr %i.aij, null
  br i1 %.not.i.i8.i.i.i.i.i.i106.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i107.i, label %bb.hn, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i107.i: ; preds = %bb.hn
  store ptr %.0.i.i7.i.i.i.i.i.i105.i, ptr %i.ox, align 8, !tbaa !239
  %i.aik = load i64, ptr %i.oq, align 8, !tbaa !217
  store i64 %i.aik, ptr %i.oy, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  store ptr %i.aif, ptr %i.ov, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i107.i, %bb.hk
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.pa, ptr noundef nonnull align 8 dereferenceable(52) %i.or) #21
  %i.ail = load i32, ptr %i.pc, align 8, !tbaa !178
  store i32 %i.ail, ptr %i.pb, align 8, !tbaa !178
  %i.aim = load i8, ptr %i.os, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.aim, ptr %i.pd, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %16)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.pa) #21
  %i.ain = load ptr, ptr %i.ov, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.oz, ptr noundef %i.ain)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.or) #21
  %i.aio = load ptr, ptr %i.oo, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %17, ptr noundef %i.aio)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.aip = icmp eq i64 %i.agv, %i.afk
  br i1 %i.aip, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i
  %i.aiq = load i64, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.aiq, ptr %i.c, align 8, !tbaa !46
  %i.air = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %i.agp, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.air, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.hz

bb.hp:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit108.i
  %i.ais = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  call fastcc void @"_ZZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEEENK3$_0clEmmPNS0_9RangeDataImmS2_EE"(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ais, i64 noundef %i.afk, ptr noundef %spec.select.i17.i664)
  %i.ait = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %i.aiu = sub i64 %i.afk, %i.ait
  store i64 %i.afk, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %i.aiv = load i64, ptr %i.agt, align 8, !tbaa !46
  %i.aiw = call i64 @llvm.usub.sat.i64(i64 %i.aiv, i64 %i.aiu)
  store i64 %i.aiw, ptr %i.agt, align 8, !tbaa !231
  br label %bb.hz

bb.hq:                                            ; preds = %bb.hj
  %i.aix = icmp ult i64 %i.afk, %i.agv
  br i1 %i.aix, label %bb.hr, label %bb.hy

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store i32 0, ptr %i.nv, align 8, !tbaa !213
  store ptr null, ptr %i.nw, align 8, !tbaa !214
  store <2 x ptr> %i.tg, ptr %i.nx, align 8, !tbaa !239
  store i64 0, ptr %i.nz, align 8, !tbaa !217
  %i.aiy = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 32
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i109.i = icmp eq ptr %i.aiz, null
  br i1 %.not.i.i.i109.i, label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %19, ptr %7, align 8, !tbaa !241
  %i.aja = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %19, ptr noundef nonnull %i.aiz, ptr noundef nonnull %i.nv, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 3 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ht, %bb.hs
  %.0.i.i.i.i.i.i.i110.i = phi ptr [ %i.aja, %bb.hs ], [ %i.ajc, %bb.ht ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i110.i, i64 16
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i111.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i.i.i.i.i.i111.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i, label %bb.ht, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i: ; preds = %bb.ht
  store ptr %.0.i.i.i.i.i.i.i110.i, ptr %i.nx, align 8, !tbaa !239
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hu, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i
  %.0.i.i7.i.i.i.i.i113.i = phi ptr [ %i.aja, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i112.i ], [ %i.aje, %bb.hu ] ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i113.i, i64 24
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i114.i = icmp eq ptr %i.aje, null
  br i1 %.not.i.i8.i.i.i.i.i114.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i115.i, label %bb.hu, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i115.i: ; preds = %bb.hu
  store ptr %.0.i.i7.i.i.i.i.i113.i, ptr %i.ny, align 8, !tbaa !239
  %i.ajf = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 56
  %i.ajg = load i64, ptr %i.ajf, align 8, !tbaa !217
  store i64 %i.ajg, ptr %i.nz, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  store ptr %i.aja, ptr %i.nw, align 8, !tbaa !239
  br label %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i

_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i115.i, %bb.hr
  %i.ajh = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 64
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.oa, ptr noundef nonnull align 8 dereferenceable(52) %i.ajh) #21
  %i.aji = getelementptr inbounds nuw i8, ptr %spec.select.i17.i664, i64 112
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !178
  store i32 %i.ajj, ptr %i.ob, align 8, !tbaa !178
  %i.ajk = load i8, ptr %i.agq, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ajk, ptr %i.oc, align 8, !tbaa !244
  store i64 %i.afk, ptr %18, align 8, !tbaa !230
  store i64 %i.agv, ptr %i.od, align 8, !tbaa !231
  store i32 0, ptr %i.oe, align 8, !tbaa !213
  store ptr null, ptr %i.of, align 8, !tbaa !214
  store <2 x ptr> %i.te, ptr %i.og, align 8, !tbaa !239
  store i64 0, ptr %i.oi, align 8, !tbaa !217
  %i.ajl = load ptr, ptr %i.nw, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i117.i = icmp eq ptr %i.ajl, null
  br i1 %.not.i.i.i.i117.i, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i, label %bb.hv

bb.hv:                                            ; preds = %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.oj, ptr %6, align 8, !tbaa !241
  %i.ajm = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.oj, ptr noundef nonnull %i.ajl, ptr noundef nonnull %i.oe, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 3 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hw, %bb.hv
  %.0.i.i.i.i.i.i.i.i118.i = phi ptr [ %i.ajm, %bb.hv ], [ %i.ajo, %bb.hw ] ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i118.i, i64 16
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i119.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i.i.i.i.i.i.i119.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i, label %bb.hw, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i: ; preds = %bb.hw
  store ptr %.0.i.i.i.i.i.i.i.i118.i, ptr %i.og, align 8, !tbaa !239
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hx, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i
  %.0.i.i7.i.i.i.i.i.i121.i = phi ptr [ %i.ajm, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i120.i ], [ %i.ajq, %bb.hx ] ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i121.i, i64 24
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i122.i = icmp eq ptr %i.ajq, null
  br i1 %.not.i.i8.i.i.i.i.i.i122.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i123.i, label %bb.hx, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i123.i: ; preds = %bb.hx
  store ptr %.0.i.i7.i.i.i.i.i.i121.i, ptr %i.oh, align 8, !tbaa !239
  %i.ajr = load i64, ptr %i.nz, align 8, !tbaa !217
  store i64 %i.ajr, ptr %i.oi, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  store ptr %i.ajm, ptr %i.of, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i123.i, %_ZN12_GLOBAL__N_115MemberLocationsC2ERKS0_.exit116.i
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.ok, ptr noundef nonnull align 8 dereferenceable(52) %i.oa) #21
  %i.ajs = load i32, ptr %i.ob, align 8, !tbaa !178
  store i32 %i.ajs, ptr %i.ol, align 8, !tbaa !178
  %i.ajt = load i8, ptr %i.oc, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.ajt, ptr %i.om, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %18)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.ok) #21
  %i.aju = load ptr, ptr %i.of, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.oj, ptr noundef %i.aju)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.oa) #21
  %i.ajv = load ptr, ptr %i.nw, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %19, ptr noundef %i.ajv)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.ajw = load i64, ptr %spec.select.i17.i664, align 8, !tbaa !230
  %spec.select.i125.i = call i64 @llvm.usub.sat.i64(i64 %i.afk, i64 %i.ajw)
  store i64 %spec.select.i125.i, ptr %i.agt, align 8, !tbaa !231
  br label %bb.hy

bb.hy:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit124.i, %bb.hq
  %i.ajx = load i64, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ajx, ptr %i.b, align 8, !tbaa !46
  %i.ajy = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %i.agp, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.ajy, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hp, %bb.ho, %bb.hi, %bb.gy
  %.178.i = phi i64 [ %i.agv, %bb.hi ], [ %i.agv, %bb.hy ], [ %i.agv, %bb.hp ], [ %i.afk, %bb.ho ], [ %i.agv, %bb.gy ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv663, 1 ; 3 uses
  %.val94.i = load ptr, ptr %63, align 8          ; 4 uses
  %.val95.i = load i32, ptr %i.nh, align 8, !tbaa !52
  %i.ajz = zext i32 %.val95.i to i64
  %i.aka = icmp samesign ult i64 %indvars.iv.next, %i.ajz
  %.not8851.i = icmp ne ptr %.val94.i, null
  %.not88.i = select i1 %i.aka, i1 %.not8851.i, i1 false
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
  %i.akb = sub nuw i64 %i.afk, %.077.lcssa.i
  %i.akc = load i64, ptr %i.e, align 8, !tbaa !46
  store i32 0, ptr %i.pw, align 8, !tbaa !213
  store ptr null, ptr %i.px, align 8, !tbaa !214
  store <2 x ptr> %i.su, ptr %i.py, align 8, !tbaa !239
  store i64 0, ptr %i.pz, align 8, !tbaa !217
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %i.qa) #21
  store i8 0, ptr %i.qb, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.akc, ptr %i.a, align 8, !tbaa !46
  %i.akd = call noundef nonnull align 2 dereferenceable(5) ptr @_ZNSt3mapImN12lldb_private4npdb17MemberValLocationESt4lessImESaISt4pairIKmS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(105) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.akd, ptr noundef nonnull readonly align 8 dereferenceable(5) %11, i64 5, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.077.lcssa.i, ptr %20, align 8, !tbaa !230
  store i64 %i.akb, ptr %i.qc, align 8, !tbaa !231
  store i32 0, ptr %i.qd, align 8, !tbaa !213
  store ptr null, ptr %i.qe, align 8, !tbaa !214
  store <2 x ptr> %i.ss, ptr %i.qf, align 8, !tbaa !239
  store i64 0, ptr %i.qh, align 8, !tbaa !217
  %i.ake = load ptr, ptr %i.px, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i.i126.i = icmp eq ptr %i.ake, null
  br i1 %.not.i.i.i.i126.i, label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.qi, ptr %5, align 8, !tbaa !241
  %i.akf = call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(105) %i.qi, ptr noundef nonnull %i.ake, ptr noundef nonnull %i.qd, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %bb.ib
  %.0.i.i.i.i.i.i.i.i127.i = phi ptr [ %i.akf, %bb.ib ], [ %i.akh, %bb.ic ] ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i127.i, i64 16
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i.i.i.i.i.i128.i = icmp eq ptr %i.akh, null
  br i1 %.not.i.i.i.i.i.i.i.i128.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i, label %bb.ic, !llvm.loop !8

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i: ; preds = %bb.ic
  store ptr %.0.i.i.i.i.i.i.i.i127.i, ptr %i.qf, align 8, !tbaa !239
  br label %bb.id

bb.id:                                            ; preds = %bb.id, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i
  %.0.i.i7.i.i.i.i.i.i130.i = phi ptr [ %i.akf, %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i129.i ], [ %i.akj, %bb.id ] ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i130.i, i64 24
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !243 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i131.i = icmp eq ptr %i.akj, null
  br i1 %.not.i.i8.i.i.i.i.i.i131.i, label %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i132.i, label %bb.id, !llvm.loop !9

_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i132.i: ; preds = %bb.id
  store ptr %.0.i.i7.i.i.i.i.i.i130.i, ptr %i.qg, align 8, !tbaa !239
  %i.akk = load i64, ptr %i.pz, align 8, !tbaa !217
  store i64 %i.akk, ptr %i.qh, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store ptr %i.akf, ptr %i.qe, align 8, !tbaa !239
  br label %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i

_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i132.i, %bb.ia
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %i.qj, ptr noundef nonnull align 8 dereferenceable(52) %i.qa) #21
  %i.akl = load i32, ptr %i.ql, align 8, !tbaa !178
  store i32 %i.akl, ptr %i.qk, align 8, !tbaa !178
  %i.akm = load i8, ptr %i.qb, align 8, !tbaa !244, !range !123, !noundef !124
  store i8 %i.akm, ptr %i.qm, align 8, !tbaa !244
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %12, ptr noundef nonnull align 8 dereferenceable(128) %20)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.qj) #21
  %i.akn = load ptr, ptr %i.qe, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.qi, ptr noundef %i.akn)
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.qa) #21
  %i.ako = load ptr, ptr %i.px, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %21, ptr noundef %i.ako)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %.val96.i.pre = load ptr, ptr %63, align 8
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i, %._crit_edge.i
  %.val96.i544 = phi ptr [ %.val96.i.pre, %_ZN12lldb_private9RangeDataImmN12_GLOBAL__N_115MemberLocationsEEC2EmmS2_.exit133.i ], [ %.val96.i545, %._crit_edge.i ]
  %i.akp = getelementptr inbounds nuw i8, ptr %.08121.i, i64 16 ; 2 uses
  %.not.i365 = icmp eq ptr %i.akp, %i.afe
  br i1 %.not.i365, label %._crit_edge24.i, label %.lr.ph23.i

._crit_edge29.i:                                  ; preds = %.lr.ph28.i
  %.val98.pre.i = load i32, ptr %i.nr, align 8, !tbaa !52
  %i.akq = icmp eq i32 %.val98.pre.i, 0
  br i1 %i.akq, label %._crit_edge29.i..thread5.i_crit_edge, label %bb.if

._crit_edge29.i..thread5.i_crit_edge:             ; preds = %._crit_edge29.i
  %.val.i.i7.i.pre = load ptr, ptr %12, align 8, !tbaa !51
  br label %.thread5.i

.thread5.i:                                       ; preds = %._crit_edge29.i..thread5.i_crit_edge, %._crit_edge24.i, %bb.gw
  %.val.i.i7.i = phi ptr [ %.val.i.i7.i.pre, %._crit_edge29.i..thread5.i_crit_edge ], [ %.val.pre.i, %._crit_edge24.i ], [ %i.nq, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

.lr.ph28.i:                                       ; preds = %._crit_edge24.i, %.lr.ph28.i
  %.026.i = phi ptr [ %i.akr, %.lr.ph28.i ], [ %.val.pre.i, %._crit_edge24.i ] ; 2 uses
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE6AppendERKNS_9RangeDataImmS2_EE(ptr noundef nonnull align 8 dereferenceable(17) %63, ptr noundef nonnull align 8 dereferenceable(128) %.026.i)
  %i.akr = getelementptr inbounds nuw i8, ptr %.026.i, i64 136 ; 2 uses
  %.not87.i = icmp eq ptr %i.akr, %i.afg
  br i1 %.not87.i, label %._crit_edge29.i, label %.lr.ph28.i

bb.if:                                            ; preds = %._crit_edge29.i
  call fastcc void @_ZN12lldb_private15RangeDataVectorImmN12_GLOBAL__N_115MemberLocationsELj0ENS2_10ComparatorEE4SortEv(ptr noundef nonnull align 8 dereferenceable(17) %63)
  %.val2.i.i.pr.i = load i32, ptr %i.nr, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %.val.i.i.i = load ptr, ptr %12, align 8, !tbaa !51 ; 3 uses
  %.not4.i.i.i.i366 = icmp eq i32 %.val2.i.i.pr.i, 0
  br i1 %.not4.i.i.i.i366, label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i367

.lr.ph.i.preheader.i.i.i367:                      ; preds = %bb.if
  %i.aks = zext i32 %.val2.i.i.pr.i to i64
  %.idx.i.i.i368 = mul nuw nsw i64 %i.aks, 136
  %i.akt = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx.i.i.i368
  br label %.lr.ph.i.i.i.i369

.lr.ph.i.i.i.i369:                                ; preds = %.lr.ph.i.i.i.i369, %.lr.ph.i.preheader.i.i.i367
  %.05.i.i.i.i370 = phi ptr [ %i.aku, %.lr.ph.i.i.i.i369 ], [ %i.akt, %.lr.ph.i.preheader.i.i.i367 ] ; 4 uses
  %i.aku = getelementptr inbounds i8, ptr %.05.i.i.i.i370, i64 -136 ; 2 uses
  %i.akv = getelementptr inbounds i8, ptr %.05.i.i.i.i370, i64 -120
  %i.akw = getelementptr inbounds i8, ptr %.05.i.i.i.i370, i64 -72
  call void @_ZN12lldb_private15DWARFExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.akw) #21
  %i.akx = getelementptr inbounds i8, ptr %.05.i.i.i.i370, i64 -104
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !214
  call void @_ZNSt8_Rb_treeImSt4pairIKmN12lldb_private4npdb17MemberValLocationEESt10_Select1stIS5_ESt4lessImESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(105) %i.akv, ptr noundef %i.aky)
  %.not.i.i.i135.i = icmp eq ptr %.val.i.i.i, %i.aku
  br i1 %.not.i.i.i135.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i369, !llvm.loop !10

_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i369
  %.pre.i.i.i371 = load ptr, ptr %12, align 8, !tbaa !51
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, %bb.if, %.thread5.i
  %i.akz = phi ptr [ %.pre.i.i.i371, %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i ], [ %.val.i.i.i, %bb.if ], [ %.val.i.i7.i, %.thread5.i ] ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.nq
  br i1 %i.ala, label %_ZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEE.exit, label %bb.ig

bb.ig:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i
  call void @free(ptr noundef %i.akz) #21
  br label %_ZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEE.exit

_ZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %bb.ih

bb.ih:                                            ; preds = %bb.gv, %_ZN12_GLOBAL__N_123AddMemberLocationRangesERN12lldb_private15RangeDataVectorImmNS_15MemberLocationsELj0ENS2_10ComparatorEEEmNS0_4npdb17MemberValLocationERKNS0_11RangeVectorImmLj0EEE.exit
  %i.alb = load ptr, ptr %99, align 8, !tbaa !51  ; 2 uses
  %i.alc = icmp eq ptr %i.alb, %i.qn
  br i1 %i.alc, label %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit373, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @free(ptr noundef %i.alb) #21
  br label %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit373

_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit373: ; preds = %bb.ih, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #21
  %i.ald = load ptr, ptr %i.nl, align 8, !tbaa !370 ; 3 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.ald, null
  br i1 %.not.i.i.i.i374, label %_ZN4llvm8codeview27DefRangeSubfieldRegisterSymD2Ev.exit, label %bb.ij

bb.ij:                                            ; preds = %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit373
  %i.ale = load ptr, ptr %i.qo, align 8, !tbaa !378
  %i.alf = ptrtoint ptr %i.ale to i64
  %i.alg = ptrtoint ptr %i.ald to i64
  %i.alh = sub i64 %i.alf, %i.alg
  call void @_ZdlPvm(ptr noundef nonnull %i.ald, i64 noundef %i.alh) #22
  br label %_ZN4llvm8codeview27DefRangeSubfieldRegisterSymD2Ev.exit

_ZN4llvm8codeview27DefRangeSubfieldRegisterSymD2Ev.exit: ; preds = %_ZN12lldb_private11RangeVectorImmLj0EED2Ev.exit373, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #21
  br label %bb.ik

bb.ik:                                            ; preds = %_ZN4llvm8codeview27DefRangeSubfieldRegisterSymD2Ev.exit, %_ZN4llvm8codeview27DefRangeRegisterRelIndirSymD2Ev.exit, %_ZN4llvm8codeview22DefRangeRegisterRelSymD2Ev.exit, %_ZN4llvm8codeview19DefRangeRegisterSymD2Ev.exit, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253, %_ZN4llvm8codeview26DefRangeFramePointerRelSymD2Ev.exit
  %.4119 = phi i16 [ %.0115532673, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253 ], [ %.3118, %_ZN4llvm8codeview26DefRangeFramePointerRelSymD2Ev.exit ], [ %.0115532673, %_ZN4llvm8codeview19DefRangeRegisterSymD2Ev.exit ], [ %.0115532673, %_ZN4llvm8codeview22DefRangeRegisterRelSymD2Ev.exit ], [ %.0115532673, %_ZN4llvm8codeview27DefRangeRegisterRelIndirSymD2Ev.exit ], [ %.0115532673, %_ZN4llvm8codeview27DefRangeSubfieldRegisterSymD2Ev.exit ], [ %.0115532673, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253 ], [ %.0115532673, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253 ]
  %.7 = phi i1 [ %.1533672, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253 ], [ %.2480482, %_ZN4llvm8codeview26DefRangeFramePointerRelSymD2Ev.exit ], [ %.1533672, %_ZN4llvm8codeview19DefRangeRegisterSymD2Ev.exit ], [ %.1533672, %_ZN4llvm8codeview22DefRangeRegisterRelSymD2Ev.exit ], [ %.1533672, %_ZN4llvm8codeview27DefRangeRegisterRelIndirSymD2Ev.exit ], [ %.1533672, %_ZN4llvm8codeview27DefRangeSubfieldRegisterSymD2Ev.exit ], [ %.1533672, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253 ], [ %.1533672, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253 ]
  %i.ali = add i64 %i.th, %.sroa.7443.0.in530674  ; 2 uses
  %.sroa.7443.0.insert.ext = shl i64 %i.ali, 32
  %.sroa.0442.0.insert.insert = or disjoint i64 %.sroa.7443.0.insert.ext, %i.nj
  %i.alj = call { ptr, i64 } @_ZNK12lldb_private4npdb8PdbIndex16ReadSymbolRecordENS0_17PdbCompilandSymIdE(ptr noundef nonnull align 8 dereferenceable(392) %1, i64 %.sroa.0442.0.insert.insert) #21 ; 2 uses
  %i.alk = extractvalue { ptr, i64 } %i.alj, 1    ; 2 uses
  %i.all = icmp ult i64 %i.alk, 4
  br i1 %i.all, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.thread: ; preds = %bb.ik, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253, %_ZN4llvm5ErrorD2Ev.exit250
  %.val = load ptr, ptr %63, align 8, !tbaa !51   ; 3 uses
  %.val140 = load i32, ptr %i.nh, align 8, !tbaa !52 ; 2 uses
  %i.alm = zext i32 %.val140 to i64
  %.idx = mul nuw nsw i64 %i.alm, 136
  %i.aln = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not534 = icmp eq i32 %.val140, 0
  br i1 %.not534, label %_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataImmN12_GLOBAL__N_115MemberLocationsEEELb0EE13destroy_rangeEPS5_S7_.exit.i.i402, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit253.thread
  %i.alo = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.alp = getelementptr inbounds nuw i8, ptr %100, i64 48 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.alr = getelementptr inbounds nuw i8, ptr %102, i64 48
  br label %bb.il

bb.il:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit382
  %.0102535 = phi ptr [ %.val, %.lr.ph ], [ %i.anc, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit382 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #21
  %i.als = getelementptr inbounds nuw i8, ptr %.0102535, i64 120
  %i.alt = load i8, ptr %i.als, align 8, !tbaa !382, !range !123, !noundef !124
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %.thread517, label %bb.im

.thread517:                                       ; preds = %bb.il
  %i.alv = getelementptr inbounds nuw i8, ptr %.0102535, i64 64
  call void @_ZN12lldb_private13DataExtractorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(52) %100, ptr noundef nonnull align 8 dereferenceable(52) %i.alv) #21
  %i.alw = getelementptr inbounds nuw i8, ptr %.0102535, i64 112
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !178
  store i32 %i.alx, ptr %i.alp, align 8, !tbaa !178
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit382

end_hunk_1
