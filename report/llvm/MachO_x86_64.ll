Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachO_x86_64?download=true
inline.NumInlined: 4116
inline.NumDeleted: 2015
begin_hunk_0_@_ZN12_GLOBAL__N_128MachOLinkGraphBuilder_x86_6414addRelocationsEv:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 33
  %i.bm = ptrtoint ptr %i.a to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i110.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i111.i = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %.sroa.4.0..sroa_idx.i.i.i112.i = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 33
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 33
  %i.by = ptrtoint ptr %i.b to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i143.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i144.i = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %.sroa.4.0..sroa_idx.i.i.i145.i = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 33
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 33
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 33 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 33 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 33 ; 3 uses
  %.sroa.56.0..sroa_idx.i.i193.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.23.0..sroa_idx.i.i.i204.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.sroa.23.0..sroa_idx.i.i.i222.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.5296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %.sroa.7297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 33 ; 3 uses
  %i.ct = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 6 uses
  %.sroa.22.0..sroa_idx.i.i.i.i241370.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i242371.i = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64               ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i243372.i = getelementptr inbounds nuw i8, ptr %25, i64 56 ; 3 uses
  %.sroa.56.0..sroa_idx.i.i245380.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.6.0..sroa_idx263.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.7.0..sroa_idx267.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.9.0..sroa_idx275.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.11.0..sroa_idx279.i = getelementptr inbounds nuw i8, ptr %11, i64 33
  %.sroa.21.0..sroa_idx.i.i105 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %.sroa.4.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %26, i64 33
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph626, %.thread538
  %lhsv.i.i.i.i624 = phi i64 [ %i.k, %.lr.ph626 ], [ %lhsv.i.i.i.i, %.thread538 ]
  %i.da = phi ptr [ %i.l, %.lr.ph626 ], [ %i.tv, %.thread538 ] ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 %lhsv.i.i.i.i624) #18, !inline_history !354
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !530 ; 2 uses
  %.sroa.0.0.copyload.i89 = load i64, ptr %28, align 8, !tbaa !39
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 224
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(48) %i.df, i64 %.sroa.0.0.copyload.i89) #18, !inline_history !355
  br i1 %i.dj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dk = load ptr, ptr %i.s, align 8, !tbaa !530, !noalias !531 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %28, align 8, !tbaa !39, !noalias !531
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !30, !noalias !531
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 272
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !531
  %i.do = call { i64, ptr } %i.dn(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, i64 %.sroa.0.0.copyload.i.i) #18, !noalias !531, !inline_history !358
  %i.dp = extractvalue { i64, ptr } %i.do, 0
  %i.dq = load ptr, ptr %i.s, align 8, !tbaa !530, !noalias !531 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i64, ptr %28, align 8, !tbaa !39, !noalias !531
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !30, !noalias !531
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 280
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !531
  %i.du = call { i64, ptr } %i.dt(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, i64 %.sroa.0.0.copyload.i3.i) #18, !noalias !531, !inline_history !359
  %i.dv = extractvalue { i64, ptr } %i.du, 0
  %.not.i.i.i.i92 = icmp eq i64 %i.dp, %i.dv
  br i1 %.not.i.i.i.i92, label %.thread538, label %.thread536

.thread536:                                       ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.dw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20, !noalias !533 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !533
  store ptr @.str.2, ptr %27, align 8, !noalias !533
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 3, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !noalias !533
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !533
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.dw, align 8, !tbaa !30, !noalias !533
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.dx, ptr noundef nonnull align 8 dereferenceable(34) %27) #18, !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !533
  store ptr %i.dw, ptr %0, align 8, !tbaa !70, !alias.scope !532
  br label %.thread541

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %.sroa.0.0.copyload.i93 = load i64, ptr %28, align 8, !tbaa !39
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(360) %i.f, i64 %.sroa.0.0.copyload.i93) #18
  %i.ec = trunc i64 %i.eb to i32
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder18findSectionByIndexEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.93") align 8 %29, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %i.ec)
  %i.ed = load i8, ptr %i.u, align 8
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.e

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.ef = load i64, ptr %29, align 8, !tbaa !27, !noalias !534
  %i.eg = inttoptr i64 %i.ef to ptr
  store ptr null, ptr %29, align 8, !tbaa !27, !noalias !534
  store ptr %i.eg, ptr %0, align 8, !tbaa !70, !alias.scope !534
  br label %bb.cm

bb.e:                                             ; preds = %bb.d
  %i.eh = load ptr, ptr %29, align 8, !tbaa !537
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !544
  %.not = icmp eq ptr %i.ej, null
  br i1 %.not, label %bb.cn, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !530 ; 2 uses
  %.sroa.0.0.copyload.i94 = load i64, ptr %28, align 8, !tbaa !39
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 272
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call { i64, ptr } %i.en(ptr noundef nonnull align 8 dereferenceable(48) %i.ek, i64 %.sroa.0.0.copyload.i94) #18, !inline_history !366 ; 2 uses
  %i.ep = extractvalue { i64, ptr } %i.eo, 0
  store i64 %i.ep, ptr %30, align 8
  %i.eq = extractvalue { i64, ptr } %i.eo, 1
  store ptr %i.eq, ptr %i.v, align 8
  %i.er = load ptr, ptr %i.s, align 8, !tbaa !530 ; 2 uses
  %.sroa.0.0.copyload.i95 = load i64, ptr %28, align 8, !tbaa !39
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 280
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call { i64, ptr } %i.eu(ptr noundef nonnull align 8 dereferenceable(48) %i.er, i64 %.sroa.0.0.copyload.i95) #18, !inline_history !367
  %i.ew = extractvalue { i64, ptr } %i.ev, 0      ; 3 uses
  %lhsv.i.i.i.i96618 = load i64, ptr %30, align 8 ; 2 uses
  %.not.i.i.i.i98.not619 = icmp eq i64 %lhsv.i.i.i.i96618, %i.ew
  br i1 %.not.i.i.i.i98.not619, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.cl
  %lhsv.i.i.i.i96620 = phi i64 [ %lhsv.i.i.i.i96, %bb.cl ], [ %lhsv.i.i.i.i96618, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.ex = load ptr, ptr %i.e, align 8, !tbaa !526, !nonnull !118, !align !119
  %i.ey = call i64 @_ZNK4llvm6object15MachOObjectFile13getRelocationENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %i.ex, i64 %lhsv.i.i.i.i96620) #18 ; 2 uses
  store i64 %i.ey, ptr %31, align 8
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = add i64 %i.de, %i.ez                    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  %i.fb = load ptr, ptr %29, align 8, !tbaa !537
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder19findSymbolByAddressERNS1_17NormalizedSectionENS_3orc12ExecutorAddrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.99") align 8 %32, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(136) %i.fb, i64 %i.fa)
  %i.fc = load i8, ptr %i.w, align 8
  %i.fd = trunc i8 %i.fc to i1
  br i1 %i.fd, label %_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit.thread, label %bb.g

_ZN4llvm8ExpectedIRNS_7jitlink6SymbolEED2Ev.exit.thread: ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.fe = load i64, ptr %32, align 8, !tbaa !27, !noalias !545
  %i.ff = inttoptr i64 %i.fe to ptr
  store ptr %i.ff, ptr %0, align 8, !tbaa !70, !alias.scope !545
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %.thread533.jt1

bb.g:                                             ; preds = %.lr.ph
  %i.fg = load ptr, ptr %32, align 8, !tbaa !127
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !131 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.fj = load i32, ptr %i.x, align 4             ; 33 uses
  %i.fk = lshr i32 %i.fj, 25
  %i.fl = and i32 %i.fk, 3                        ; 7 uses
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 1, %i.fm
  %i.fo = add i64 %i.fn, %i.fa
  %.sroa.0.0.copyload.i102 = load i64, ptr %i.fi, align 8, !tbaa !61 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !139
  %i.fr = add i64 %i.fq, %.sroa.0.0.copyload.i102
  %i.fs = icmp ugt i64 %i.fo, %i.fr
  br i1 %i.fs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ft = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20, !noalias !547 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !547
  store ptr @.str.3, ptr %26, align 8, !noalias !547
  store i8 3, ptr %.sroa.21.0..sroa_idx.i.i105, align 8, !noalias !547
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i106, align 1, !noalias !547
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.ft, align 8, !tbaa !30, !noalias !547
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.fu, ptr noundef nonnull align 8 dereferenceable(34) %26) #18, !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !547
  store ptr %i.ft, ptr %0, align 8, !tbaa !70, !alias.scope !546
  br label %.thread533.jt1

bb.i:                                             ; preds = %bb.g
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !140
  %i.fx = sub i64 %i.fa, %.sroa.0.0.copyload.i102
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %.sroa.0.0.copyload.i110 = load i64, ptr %i.fi, align 8, !tbaa !61
  %i.fz = sub i64 %i.fa, %.sroa.0.0.copyload.i110
  store i64 %i.fz, ptr %i.d, align 8, !tbaa !61
  %i.ga = lshr i32 %i.fj, 28                      ; 2 uses
  switch i32 %i.ga, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i [
    i32 0, label %bb.j
    i32 1, label %bb.n
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 6, label %bb.v
    i32 7, label %bb.x
    i32 8, label %bb.z
    i32 9, label %bb.ab
  ]

bb.j:                                             ; preds = %bb.i
  %i.gb = and i32 %i.fj, 16777216
  %.not58.i = icmp eq i32 %i.gb, 0
  br i1 %.not58.i, label %bb.k, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.k:                                             ; preds = %bb.j
  %i.gc = icmp eq i32 %i.fl, 3
  br i1 %i.gc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %49 = lshr i32 %i.fj, 27
  %50 = and i32 %49, 1
  %51 = xor i32 %50, 3
  %.sroa.0367.0.insert.ext402 = zext nneg i32 %51 to i64
  %52 = inttoptr i64 %.sroa.0367.0.insert.ext402 to ptr
  br label %bb.aj

bb.m:                                             ; preds = %bb.k
  %53 = and i32 %i.fj, 134217728
  %.not59.i = icmp ne i32 %53, 0
  %i.gd = icmp eq i32 %i.fl, 2
  %or.cond.i = and i1 %.not59.i, %i.gd
  br i1 %or.cond.i, label %bb.aj, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.n:                                             ; preds = %bb.i
  %i.ge = and i32 %i.fj, 117440512
  %or.cond64.i = icmp eq i32 %i.ge, 83886080
  br i1 %or.cond64.i, label %bb.o, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.o:                                             ; preds = %bb.n
  %i.gf = and i32 %i.fj, 134217728
  %.not57.i = icmp eq i32 %i.gf, 0
  %i.gg = select i1 %.not57.i, ptr inttoptr (i64 8 to ptr), ptr inttoptr (i64 4 to ptr)
  br label %bb.aj

bb.p:                                             ; preds = %bb.i
  %i.gh = and i32 %i.fj, 251658240
  %or.cond67.i = icmp eq i32 %i.gh, 218103808
  br i1 %or.cond67.i, label %bb.aj, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.q:                                             ; preds = %bb.i
  %i.gi = and i32 %i.fj, 251658240
  %or.cond70.i = icmp eq i32 %i.gi, 218103808
  br i1 %or.cond70.i, label %bb.aj, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.r:                                             ; preds = %bb.i
  %i.gj = and i32 %i.fj, 251658240
  %or.cond73.i = icmp eq i32 %i.gj, 218103808
  br i1 %or.cond73.i, label %bb.aj, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.s:                                             ; preds = %bb.i
  %i.gk = and i32 %i.fj, 150994944
  %or.cond74.not.i = icmp eq i32 %i.gk, 134217728
  br i1 %or.cond74.not.i, label %bb.t, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.t:                                             ; preds = %bb.s
  switch i32 %i.fl, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i [
    i32 2, label %bb.aj
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.aj

bb.v:                                             ; preds = %bb.i
  %i.gl = and i32 %i.fj, 117440512
  %or.cond76.i = icmp eq i32 %i.gl, 83886080
  br i1 %or.cond76.i, label %bb.w, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.w:                                             ; preds = %bb.v
  %i.gm = and i32 %i.fj, 134217728
  %.not47.i = icmp eq i32 %i.gm, 0
  %i.gn = select i1 %.not47.i, ptr inttoptr (i64 9 to ptr), ptr inttoptr (i64 5 to ptr)
  br label %bb.aj

bb.x:                                             ; preds = %bb.i
  %i.go = and i32 %i.fj, 117440512
  %or.cond78.i = icmp eq i32 %i.go, 83886080
  br i1 %or.cond78.i, label %bb.y, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.y:                                             ; preds = %bb.x
  %i.gp = and i32 %i.fj, 134217728
  %.not45.i = icmp eq i32 %i.gp, 0
  %i.gq = select i1 %.not45.i, ptr inttoptr (i64 10 to ptr), ptr inttoptr (i64 6 to ptr)
  br label %bb.aj

bb.z:                                             ; preds = %bb.i
  %i.gr = and i32 %i.fj, 117440512
  %or.cond80.i = icmp eq i32 %i.gr, 83886080
  br i1 %or.cond80.i, label %bb.aa, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

bb.aa:                                            ; preds = %bb.z
  %i.gs = and i32 %i.fj, 134217728
  %.not43.i = icmp eq i32 %i.gs, 0
  %i.gt = select i1 %.not43.i, ptr inttoptr (i64 11 to ptr), ptr inttoptr (i64 7 to ptr)
  br label %bb.aj

bb.ab:                                            ; preds = %bb.i
  %i.gu = and i32 %i.fj, 251658240
  %or.cond83.i = icmp eq i32 %i.gu, 218103808
  br i1 %or.cond83.i, label %bb.aj, label %_ZN4llvmplERKNS_5TwineES2_.exit175.i

_ZN4llvmplERKNS_5TwineES2_.exit175.i:             ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18, !noalias !548
  store ptr @.str.23, ptr %22, align 8, !tbaa !60, !alias.scope !549, !noalias !548
  store i64 6, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !549, !noalias !548
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !142, !alias.scope !549, !noalias !548
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !549, !noalias !548
  store i8 1, ptr %i.bd, align 8, !tbaa !145, !alias.scope !549, !noalias !548
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !146, !alias.scope !549, !noalias !548
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKiEEEEvlS2_S3_, ptr %i.bb, align 8, !alias.scope !549, !noalias !548
  store i64 %i.bf, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !39, !alias.scope !549, !noalias !548
  store ptr @.str.22, ptr %21, align 8, !alias.scope !550, !noalias !548
  store ptr %22, ptr %i.bg, align 8, !alias.scope !550, !noalias !548
  store i8 3, ptr %i.bh, align 8, !tbaa !81, !alias.scope !550, !noalias !548
  store i8 7, ptr %i.bi, align 1, !tbaa !82, !alias.scope !550, !noalias !548
  store ptr %21, ptr %20, align 8, !alias.scope !551, !noalias !548
  store ptr @.str.24, ptr %i.bj, align 8, !alias.scope !551, !noalias !548
  store i8 2, ptr %i.bk, align 8, !tbaa !81, !alias.scope !551, !noalias !548
  store i8 3, ptr %i.bl, align 1, !tbaa !82, !alias.scope !551, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !548
  %i.gv = and i32 %i.fj, 16777215
  store i32 %i.gv, ptr %i.a, align 4, !tbaa !47, !noalias !548
  store ptr @.str.25, ptr %23, align 8, !tbaa !60, !alias.scope !552, !noalias !548
  store i64 6, ptr %.sroa.22.0..sroa_idx.i.i.i.i110.i, align 8, !tbaa !61, !alias.scope !552, !noalias !548
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !142, !alias.scope !552, !noalias !548
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i111.i, align 8, !tbaa !61, !alias.scope !552, !noalias !548
  store i8 1, ptr %i.bp, align 8, !tbaa !145, !alias.scope !552, !noalias !548
  store i64 %i.bm, ptr %i.bq, align 8, !tbaa !146, !alias.scope !552, !noalias !548
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %i.bn, align 8, !alias.scope !552, !noalias !548
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx.i.i.i112.i, align 8, !tbaa !39, !alias.scope !552, !noalias !548
  store ptr %20, ptr %19, align 8, !alias.scope !553, !noalias !548
  store ptr %23, ptr %i.bs, align 8, !alias.scope !553, !noalias !548
  store i8 2, ptr %i.bt, align 8, !tbaa !81, !alias.scope !553, !noalias !548
  store i8 7, ptr %i.bu, align 1, !tbaa !82, !alias.scope !553, !noalias !548
  store ptr %19, ptr %18, align 8, !alias.scope !554, !noalias !548
  store ptr @.str.26, ptr %i.bv, align 8, !alias.scope !554, !noalias !548
  store i8 2, ptr %i.bw, align 8, !tbaa !81, !alias.scope !554, !noalias !548
  store i8 3, ptr %i.bx, align 1, !tbaa !82, !alias.scope !554, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !548
  store i32 %i.ga, ptr %i.b, align 4, !tbaa !47, !noalias !548
  store ptr @.str.27, ptr %24, align 8, !tbaa !60, !alias.scope !555, !noalias !548
  store i64 6, ptr %.sroa.22.0..sroa_idx.i.i.i.i143.i, align 8, !tbaa !61, !alias.scope !555, !noalias !548
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !142, !alias.scope !555, !noalias !548
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i144.i, align 8, !tbaa !61, !alias.scope !555, !noalias !548
  store i8 1, ptr %i.cb, align 8, !tbaa !145, !alias.scope !555, !noalias !548
  store i64 %i.by, ptr %i.cc, align 8, !tbaa !146, !alias.scope !555, !noalias !548
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %i.bz, align 8, !alias.scope !555, !noalias !548
  store i64 %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i145.i, align 8, !tbaa !39, !alias.scope !555, !noalias !548
  store ptr %18, ptr %17, align 8, !alias.scope !556, !noalias !548
  store ptr %24, ptr %i.ce, align 8, !alias.scope !556, !noalias !548
  store i8 2, ptr %i.cf, align 8, !tbaa !81, !alias.scope !556, !noalias !548
  store i8 7, ptr %i.cg, align 1, !tbaa !82, !alias.scope !556, !noalias !548
  store ptr %17, ptr %16, align 8, !alias.scope !557, !noalias !548
  store ptr @.str.28, ptr %i.ch, align 8, !alias.scope !557, !noalias !548
  store i8 2, ptr %i.ci, align 8, !tbaa !81, !alias.scope !557, !noalias !548
  store i8 3, ptr %i.cj, align 1, !tbaa !82, !alias.scope !557, !noalias !548
  %i.gw = and i32 %i.fj, 16777216
  %.not61.i = icmp eq i32 %i.gw, 0
  %i.gx = select i1 %.not61.i, ptr @.str.30, ptr @.str.29 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !39, !noalias !548
  %.not.i.i111 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i111, label %_ZN4llvmplERKNS_5TwineES2_.exit190.i, label %.thread743

.thread743:                                       ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit175.i
  store ptr %16, ptr %15, align 8, !alias.scope !558, !noalias !548
  store ptr %i.gx, ptr %i.ck, align 8, !alias.scope !558, !noalias !548
  store i8 2, ptr %i.cl, align 8, !tbaa !81, !alias.scope !558, !noalias !548
  store i8 3, ptr %i.cm, align 1, !tbaa !82, !alias.scope !558, !noalias !548
  br label %bb.ae

_ZN4llvmplERKNS_5TwineES2_.exit190.i:             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit175.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !148, !noalias !548
  %.pre.i = load i8, ptr %i.cl, align 8, !tbaa !81, !noalias !559 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  switch i8 %.pre.i, label %bb.ad [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread485
    i8 1, label %bb.ac
  ]

_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread485:   ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit190.i
  store i8 0, ptr %i.cn, align 8, !tbaa !147, !noalias !548
  store i8 1, ptr %i.co, align 1, !tbaa !147, !noalias !548
  store i8 0, ptr %i.cp, align 8, !tbaa !81, !alias.scope !562, !noalias !548
  store i8 1, ptr %i.cq, align 1, !tbaa !82, !alias.scope !562, !noalias !548
  br label %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i

bb.ac:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit190.i
  store ptr @.str.31, ptr %14, align 8, !noalias !548
  br label %_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread

bb.ad:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit190.i
  %.pre = load i8, ptr %i.cm, align 1, !tbaa !82, !noalias !559
  %i.gz = icmp eq i8 %.pre, 1
  br i1 %i.gz, label %_ZN4llvmplERKNS_5TwineES2_.exit206.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread743
  store ptr %15, ptr %14, align 8, !alias.scope !563, !noalias !548
  store ptr @.str.31, ptr %i.cr, align 8, !alias.scope !563, !noalias !548
  br label %_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread

_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread:      ; preds = %bb.ae, %bb.ac
  %.sink396.i.ph = phi i8 [ 3, %bb.ac ], [ 2, %bb.ae ] ; 2 uses
  %.sink.i.ph = phi i8 [ 1, %bb.ac ], [ 3, %bb.ae ]
  %.sroa.05.0.copyload.i.i210.i.ph = phi ptr [ @.str.31, %bb.ac ], [ %15, %bb.ae ]
  %.ph = phi i1 [ true, %bb.ac ], [ false, %bb.ae ]
  store i8 %.sink396.i.ph, ptr %i.cn, align 8, !tbaa !147, !noalias !548
  store i8 %.sink.i.ph, ptr %i.co, align 1, !tbaa !147, !noalias !548
  %i.ha = and i32 %i.fj, 134217728
  %.not62.i478 = icmp eq i32 %i.ha, 0
  %i.hb = select i1 %.not62.i478, ptr @.str.30, ptr @.str.29 ; 3 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !39, !noalias !548
  %.not.i207.i479 = icmp eq i8 %i.hc, 0
  br i1 %.not.i207.i479, label %bb.af, label %bb.ag

_ZN4llvmplERKNS_5TwineES2_.exit206.i:             ; preds = %bb.ad
  %.sroa.56.0.copyload.i.i194.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i193.i, align 8, !noalias !559
  %.sroa.05.0.copyload.i.i192.i.pre = load ptr, ptr %15, align 8, !noalias !559
  store ptr %.sroa.05.0.copyload.i.i192.i.pre, ptr %14, align 8, !alias.scope !563, !noalias !548
  store i64 %.sroa.56.0.copyload.i.i194.i, ptr %.sroa.23.0..sroa_idx.i.i.i204.i, align 8, !tbaa !39, !alias.scope !563, !noalias !548
  store ptr @.str.31, ptr %i.cr, align 8, !alias.scope !563, !noalias !548
  store i8 %.pre.i, ptr %i.cn, align 8, !tbaa !147, !noalias !548
  store i8 3, ptr %i.co, align 1, !tbaa !147, !noalias !548
  %i.hd = and i32 %i.fj, 134217728
  %.not62.i = icmp eq i32 %i.hd, 0
  %i.he = select i1 %.not62.i, ptr @.str.30, ptr @.str.29 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !39, !noalias !548
  %.not.i207.i = icmp eq i8 %i.hf, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  br i1 %.not.i207.i, label %bb.af, label %.thread757

bb.af:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread, %_ZN4llvmplERKNS_5TwineES2_.exit206.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !148, !noalias !548
  %.pre366.i = load i8, ptr %i.cp, align 8, !tbaa !81, !noalias !566
  br label %_ZN4llvmplERKNS_5TwineES2_.exit224.i

bb.ag:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread
  br i1 %.ph, label %bb.ah, label %.thread757

bb.ah:                                            ; preds = %bb.ag
  %.sroa.56.0.copyload.i.i212.i.pre = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i204.i, align 8, !noalias !567
  br label %.thread757

.thread757:                                       ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit206.i, %bb.ag, %bb.ah
  %i.hg = phi ptr [ %.sroa.05.0.copyload.i.i210.i.ph, %bb.ah ], [ %14, %bb.ag ], [ %14, %_ZN4llvmplERKNS_5TwineES2_.exit206.i ]
  %i.hh = phi ptr [ %i.hb, %bb.ah ], [ %i.hb, %bb.ag ], [ %i.he, %_ZN4llvmplERKNS_5TwineES2_.exit206.i ]
  %i.hi = phi i8 [ %.sink396.i.ph, %bb.ah ], [ 2, %bb.ag ], [ 2, %_ZN4llvmplERKNS_5TwineES2_.exit206.i ] ; 2 uses
  %i.hj = phi i64 [ %.sroa.56.0.copyload.i.i212.i.pre, %bb.ah ], [ undef, %bb.ag ], [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit206.i ]
  store ptr %i.hg, ptr %13, align 8, !alias.scope !562, !noalias !548
  store i64 %i.hj, ptr %.sroa.23.0..sroa_idx.i.i.i222.i, align 8, !tbaa !39, !alias.scope !562, !noalias !548
  store ptr %i.hh, ptr %i.cs, align 8, !alias.scope !562, !noalias !548
  store i8 %i.hi, ptr %i.cp, align 8, !tbaa !81, !alias.scope !562, !noalias !548
  store i8 3, ptr %i.cq, align 1, !tbaa !82, !alias.scope !562, !noalias !548
  br label %_ZN4llvmplERKNS_5TwineES2_.exit224.i

_ZN4llvmplERKNS_5TwineES2_.exit224.i:             ; preds = %.thread757, %bb.af
  %i.hk = phi i8 [ %i.hi, %.thread757 ], [ %.pre366.i, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  switch i8 %i.hk, label %_ZN4llvmplERKNS_5TwineES2_.exit240.i [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i
    i8 1, label %bb.ai
  ]

_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i:   ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit224.i, %_ZN4llvmplERKNS_5TwineES2_.exit206.i.thread485
  store i8 0, ptr %.sroa.5296.0..sroa_idx.i, align 8, !tbaa !81, !alias.scope !570, !noalias !548
  store i8 1, ptr %.sroa.7297.0..sroa_idx.i, align 1, !tbaa !82, !alias.scope !570, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !548
  store i32 %i.fl, ptr %i.c, align 4, !tbaa !47, !noalias !548
  store ptr @.str.8, ptr %25, align 8, !tbaa !60, !alias.scope !571, !noalias !548
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i241370.i, align 8, !tbaa !61, !alias.scope !571, !noalias !548
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !142, !alias.scope !571, !noalias !548
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i242371.i, align 8, !tbaa !61, !alias.scope !571, !noalias !548
  store i8 1, ptr %i.cw, align 8, !tbaa !145, !alias.scope !571, !noalias !548
  store i64 %i.ct, ptr %i.cx, align 8, !tbaa !146, !alias.scope !571, !noalias !548
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %i.cu, align 8, !alias.scope !571, !noalias !548
  store i64 %i.cy, ptr %.sroa.4.0..sroa_idx.i.i.i243372.i, align 8, !tbaa !39, !alias.scope !571, !noalias !548
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_128MachOLinkGraphBuilder_x86_6429MachONormalizedRelocationTypeEE9takeErrorEv.exit

_ZN4llvmplERKNS_5TwineES2_.exit240.i:             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit224.i
  %i.hl = load i8, ptr %i.cq, align 1, !tbaa !82, !noalias !566
  %i.hm = icmp eq i8 %i.hl, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i226.i = load ptr, ptr %13, align 8, !noalias !566
  %.sroa.56.0.copyload.i.i228.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i222.i, align 8, !noalias !566
  %.014.i.i229.i = select i1 %i.hm, i8 %i.hk, i8 2
  %.sroa.05.0.i.i230.i = select i1 %i.hm, ptr %.sroa.05.0.copyload.i.i226.i, ptr %13
  %.sroa.56.0.i.i231.i = select i1 %i.hm, i64 %.sroa.56.0.copyload.i.i228.i, i64 undef
  store ptr %.sroa.05.0.i.i230.i, ptr %12, align 8, !alias.scope !570, !noalias !548
  store i64 %.sroa.56.0.i.i231.i, ptr %.sroa.56.0..sroa_idx.i.i245380.i, align 8, !tbaa !39, !alias.scope !570, !noalias !548
  store ptr @.str.32, ptr %i.cz, align 8, !alias.scope !570, !noalias !548
  store i8 %.014.i.i229.i, ptr %.sroa.5296.0..sroa_idx.i, align 8, !tbaa !81, !alias.scope !570, !noalias !548
  store i8 3, ptr %.sroa.7297.0..sroa_idx.i, align 1, !tbaa !82, !alias.scope !570, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !548
  store i32 %i.fl, ptr %i.c, align 4, !tbaa !47, !noalias !548
  store ptr @.str.8, ptr %25, align 8, !tbaa !60, !alias.scope !571, !noalias !548
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i241370.i, align 8, !tbaa !61, !alias.scope !571, !noalias !548
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !142, !alias.scope !571, !noalias !548
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i242371.i, align 8, !tbaa !61, !alias.scope !571, !noalias !548
  store i8 1, ptr %i.cw, align 8, !tbaa !145, !alias.scope !571, !noalias !548
  store i64 %i.ct, ptr %i.cx, align 8, !tbaa !146, !alias.scope !571, !noalias !548
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %i.cu, align 8, !alias.scope !571, !noalias !548
  store i64 %i.cy, ptr %.sroa.4.0..sroa_idx.i.i.i243372.i, align 8, !tbaa !39, !alias.scope !571, !noalias !548
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_128MachOLinkGraphBuilder_x86_6429MachONormalizedRelocationTypeEE9takeErrorEv.exit

bb.ai:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit224.i
  store ptr @.str.32, ptr %12, align 8, !noalias !548
  store i8 3, ptr %.sroa.5296.0..sroa_idx.i, align 8, !tbaa !147, !noalias !548
  store i8 1, ptr %.sroa.7297.0..sroa_idx.i, align 1, !tbaa !147, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !548
  store i32 %i.fl, ptr %i.c, align 4, !tbaa !47, !noalias !548
  store ptr @.str.8, ptr %25, align 8, !tbaa !60, !alias.scope !571, !noalias !548
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i241370.i, align 8, !tbaa !61, !alias.scope !571, !noalias !548
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !142, !alias.scope !571, !noalias !548
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i242371.i, align 8, !tbaa !61, !alias.scope !571, !noalias !548
  store i8 1, ptr %i.cw, align 8, !tbaa !145, !alias.scope !571, !noalias !548
  store i64 %i.ct, ptr %i.cx, align 8, !tbaa !146, !alias.scope !571, !noalias !548
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %i.cu, align 8, !alias.scope !571, !noalias !548
  store i64 %i.cy, ptr %.sroa.4.0..sroa_idx.i.i.i243372.i, align 8, !tbaa !39, !alias.scope !571, !noalias !548
  %.sroa.56.0.copyload.i.i246381.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i245380.i, align 8, !noalias !572
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_128MachOLinkGraphBuilder_x86_6429MachONormalizedRelocationTypeEE9takeErrorEv.exit

_ZN4llvm8ExpectedIN12_GLOBAL__N_128MachOLinkGraphBuilder_x86_6429MachONormalizedRelocationTypeEE9takeErrorEv.exit: ; preds = %bb.ai, %_ZN4llvmplERKNS_5TwineES2_.exit240.i, %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i
  %.sroa.11.0.i = phi i8 [ 1, %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i ], [ 7, %_ZN4llvmplERKNS_5TwineES2_.exit240.i ], [ 7, %bb.ai ]
  %.sroa.9.0.i = phi i8 [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i ], [ 2, %_ZN4llvmplERKNS_5TwineES2_.exit240.i ], [ 3, %bb.ai ]
  %.sroa.6.0.i = phi i64 [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i ], [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit240.i ], [ %.sroa.56.0.copyload.i.i246381.i, %bb.ai ]
  %.sroa.0.0.i = phi ptr [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit240.thread374.i ], [ %12, %_ZN4llvmplERKNS_5TwineES2_.exit240.i ], [ @.str.32, %bb.ai ]
  %i.hn = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20, !noalias !573 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !573
  store ptr %.sroa.0.0.i, ptr %11, align 8, !noalias !573
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx263.i, align 8, !noalias !573
  store ptr %25, ptr %.sroa.7.0..sroa_idx267.i, align 8, !noalias !573
  store i8 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx275.i, align 8, !noalias !573
  store i8 %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx279.i, align 1, !noalias !573
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.hn, align 8, !tbaa !30, !noalias !573
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ho, ptr noundef nonnull align 8 dereferenceable(34) %11) #18, !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !548
  store ptr %i.hn, ptr %0, align 8, !tbaa !70, !alias.scope !574
  br label %.thread527.jt1

bb.aj:                                            ; preds = %bb.l, %bb.t, %bb.o, %bb.m, %bb.p, %bb.q, %bb.r, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.sroa.0367.1.ph = phi ptr [ inttoptr (i64 14 to ptr), %bb.ab ], [ %i.gt, %bb.aa ], [ %i.gq, %bb.y ], [ %i.gn, %bb.w ], [ inttoptr (i64 16 to ptr), %bb.u ], [ inttoptr (i64 13 to ptr), %bb.r ], [ inttoptr (i64 12 to ptr), %bb.q ], [ null, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.gg, %bb.o ], [ inttoptr (i64 15 to ptr), %bb.t ], [ %52, %bb.l ]
  %i.hp = ptrtoint ptr %.sroa.0367.1.ph to i64    ; 2 uses
  %.sroa.0367.0.extract.trunc = trunc i64 %i.hp to i32
  switch i32 %.sroa.0367.0.extract.trunc, label %_ZN4llvm8ExpectedISt5tupleIJhPNS_7jitlink6SymbolEmEEED2Ev.exit.thread [
    i32 0, label %bb.ak
    i32 4, label %bb.am
    i32 12, label %bb.ao
    i32 13, label %bb.aq
    i32 14, label %bb.as
    i32 1, label %bb.au
    i32 2, label %bb.aw
    i32 3, label %bb.ay
    i32 5, label %bb.bd
    i32 6, label %bb.bd
    i32 7, label %bb.bd
    i32 8, label %bb.bf
    i32 9, label %bb.bk
    i32 10, label %bb.bk
    i32 11, label %bb.bk
    i32 15, label %bb.bp
    i32 16, label %bb.bp
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  %i.hq = and i32 %i.fj, 16777215
  %i.hr = zext nneg i32 %i.hq to i64
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder17findSymbolByIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.119") align 8 %33, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.hr)
  %i.hs = load i8, ptr %i.ao, align 8
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit.thread, label %bb.al

_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit.thread: ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.hu = load i64, ptr %33, align 8, !tbaa !27, !noalias !575
  %i.hv = inttoptr i64 %i.hu to ptr
  store ptr %i.hv, ptr %0, align 8, !tbaa !70, !alias.scope !575
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %.thread527.jt1

bb.al:                                            ; preds = %bb.ak
  %i.hw = load ptr, ptr %33, align 8, !tbaa !577
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !586
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  %.0.copyload.i.i.i = load i32, ptr %i.fy, align 1
  %i.hz = sext i32 %.0.copyload.i.i.i to i64
  br label %_ZN4llvm8ExpectedISt5tupleIJhPNS_7jitlink6SymbolEmEEED2Ev.exit.thread

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  %i.ia = and i32 %i.fj, 16777215
  %i.ib = zext nneg i32 %i.ia to i64
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder17findSymbolByIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.119") align 8 %34, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.ib)
  %i.ic = load i8, ptr %i.an, align 8
  %i.id = trunc i8 %i.ic to i1
  br i1 %i.id, label %_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit128.thread, label %bb.an

_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit128.thread: ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.ie = load i64, ptr %34, align 8, !tbaa !27, !noalias !587
  %i.if = inttoptr i64 %i.ie to ptr
  store ptr %i.if, ptr %0, align 8, !tbaa !70, !alias.scope !587
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %.thread527.jt1

bb.an:                                            ; preds = %bb.am
  %i.ig = load ptr, ptr %34, align 8, !tbaa !577
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !586
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %.0.copyload.i.i.i129 = load i32, ptr %i.fy, align 1
  %i.ij = add nsw i32 %.0.copyload.i.i.i129, -4
  %i.ik = sext i32 %i.ij to i64
  br label %_ZN4llvm8ExpectedISt5tupleIJhPNS_7jitlink6SymbolEmEEED2Ev.exit.thread

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.il = and i32 %i.fj, 16777215
  %i.im = zext nneg i32 %i.il to i64
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder17findSymbolByIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.119") align 8 %35, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.im)
  %i.in = load i8, ptr %i.am, align 8
  %i.io = trunc i8 %i.in to i1
  br i1 %i.io, label %_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit137.thread, label %bb.ap

_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit137.thread: ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.ip = load i64, ptr %35, align 8, !tbaa !27, !noalias !588
  %i.iq = inttoptr i64 %i.ip to ptr
  store ptr %i.iq, ptr %0, align 8, !tbaa !70, !alias.scope !588
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %.thread527.jt1

bb.ap:                                            ; preds = %bb.ao
  %i.ir = load ptr, ptr %35, align 8, !tbaa !577
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !586
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %.0.copyload.i.i.i138 = load i32, ptr %i.fy, align 1
  %i.iu = sext i32 %.0.copyload.i.i.i138 to i64
  %i.iv = load i64, ptr %i.d, align 8, !tbaa !61
  %i.iw = icmp ult i64 %i.iv, 3
  br i1 %i.iw, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZN4llvm8ExpectedISt5tupleIJhPNS_7jitlink6SymbolEmEEED2Ev.exit.thread

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  store ptr @.str.5, ptr %36, align 8, !tbaa !60, !alias.scope !589
  store i64 3, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !61, !alias.scope !589
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !142, !alias.scope !589
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !61, !alias.scope !589
  store i8 1, ptr %i.ax, align 8, !tbaa !145, !alias.scope !589
  store i64 %i.ap, ptr %i.ay, align 8, !tbaa !151, !alias.scope !589
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.av, align 8, !alias.scope !589
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !39, !alias.scope !589
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.ix = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20, !noalias !591 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !591
  store ptr @.str.4, ptr %10, align 8, !noalias !591
  store ptr %36, ptr %.sroa.7344.0..sroa_idx347, align 8, !noalias !591
  store i8 3, ptr %.sroa.9354.0..sroa_idx357, align 8, !noalias !591
  store i8 7, ptr %.sroa.11359.0..sroa_idx362, align 1, !noalias !591
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.ix, align 8, !tbaa !30, !noalias !591
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.iy, ptr noundef nonnull align 8 dereferenceable(34) %10) #18, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !591
  store ptr %i.ix, ptr %0, align 8, !tbaa !70, !alias.scope !590
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %.thread527.jt1

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  %i.iz = and i32 %i.fj, 16777215
  %i.ja = zext nneg i32 %i.iz to i64
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder17findSymbolByIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.119") align 8 %37, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.ja)
  %i.jb = load i8, ptr %i.al, align 8
  %i.jc = trunc i8 %i.jb to i1
  br i1 %i.jc, label %_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit148.thread, label %bb.ar

_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit148.thread: ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.jd = load i64, ptr %37, align 8, !tbaa !27, !noalias !592
  %i.je = inttoptr i64 %i.jd to ptr
  store ptr %i.je, ptr %0, align 8, !tbaa !70, !alias.scope !592
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  br label %.thread527.jt1

bb.ar:                                            ; preds = %bb.aq
  %i.jf = load ptr, ptr %37, align 8, !tbaa !577
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !586
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %.0.copyload.i.i.i149 = load i32, ptr %i.fy, align 1
  %i.ji = add nsw i32 %.0.copyload.i.i.i149, -4
  %i.jj = sext i32 %i.ji to i64
  br label %_ZN4llvm8ExpectedISt5tupleIJhPNS_7jitlink6SymbolEmEEED2Ev.exit.thread

bb.as:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.jk = and i32 %i.fj, 16777215
  %i.jl = zext nneg i32 %i.jk to i64
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder17findSymbolByIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.119") align 8 %38, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.jl)
  %i.jm = load i8, ptr %i.ak, align 8
  %i.jn = trunc i8 %i.jm to i1
  br i1 %i.jn, label %_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit157.thread, label %bb.at

_ZN4llvm8ExpectedIRNS_7jitlink21MachOLinkGraphBuilder16NormalizedSymbolEED2Ev.exit157.thread: ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.jo = load i64, ptr %38, align 8, !tbaa !27, !noalias !593
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %0, align 8, !tbaa !70, !alias.scope !593
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %.thread527.jt1

bb.at:                                            ; preds = %bb.as
  %i.jq = load ptr, ptr %38, align 8, !tbaa !577
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !586
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %.0.copyload.i.i.i158 = load i32, ptr %i.fy, align 1
  %i.jt = sext i32 %.0.copyload.i.i.i158 to i64
  %i.ju = load i64, ptr %i.d, align 8, !tbaa !61
  %i.jv = icmp ult i64 %i.ju, 3
  br i1 %i.jv, label %_ZN4llvmplERKNS_5TwineES2_.exit177, label %_ZN4llvm8ExpectedISt5tupleIJhPNS_7jitlink6SymbolEmEEED2Ev.exit.thread

_ZN4llvmplERKNS_5TwineES2_.exit177:               ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  store ptr @.str.5, ptr %39, align 8, !tbaa !60, !alias.scope !594
  store i64 3, ptr %.sroa.22.0..sroa_idx.i.i.i.i160, align 8, !tbaa !61, !alias.scope !594
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !142, !alias.scope !594
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i161, align 8, !tbaa !61, !alias.scope !594
  store i8 1, ptr %i.as, align 8, !tbaa !145, !alias.scope !594
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !151, !alias.scope !594
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.aq, align 8, !alias.scope !594
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i162, align 8, !tbaa !39, !alias.scope !594
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.jw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20, !noalias !596 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !596
  store ptr @.str.6, ptr %9, align 8, !noalias !596
  store ptr %39, ptr %.sroa.7.0..sroa_idx320, align 8, !noalias !596
  store i8 3, ptr %.sroa.9.0..sroa_idx328, align 8, !noalias !596
  store i8 7, ptr %.sroa.11.0..sroa_idx332, align 1, !noalias !596
end_hunk_0
