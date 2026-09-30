Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZTargetStreamer?download=true
inline.NumInlined: 327
inline.NumDeleted: 160
begin_hunk_0_@_ZN4llvm21SystemZTargetStreamer17emitConstantPoolsEv:bb.a
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !224
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1280
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(304) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull align 1 %i.ae) #12
  %i.ai = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.09.013) #13 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.r
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm24SystemZTargetzOSStreamer8emitPPA1ERNS0_8PPA1InfoE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(125) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString.212", align 8 ; 9 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [21 x i8], align 16               ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [21 x i8], align 16               ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [21 x i8], align 16               ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 9 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17, !nonnull !18, !align !19 ; 140 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61, !nonnull !18, !align !19 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 122 ; 3 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !286
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !287
  %i.s = icmp ugt i64 %i.r, 128
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ true, %bb.a ], [ %i.s, %bb.b ]  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !288
  %.not109 = icmp eq i64 %i.v, 0
  br i1 %.not109, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load i64, ptr %i.w, align 8, !tbaa !289
  %.fr = freeze i64 %i.x
  %i.y = icmp ne i64 %.fr, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %cond.fr = phi i1 [ true, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !292
  store ptr @.str, ptr %19, align 8, !tbaa !293
  store i8 3, ptr %i.z, align 8, !tbaa !294
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %19, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !295
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef %i.af, ptr null) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !292
  store ptr @.str.1, ptr %20, align 8, !tbaa !293
  store i8 3, ptr %i.aj, align 8, !tbaa !294
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %20, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 528
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef 2, i32 noundef 1) #12, !inline_history !256
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.as, align 1, !tbaa !292
  store ptr @.str.2, ptr %21, align 8, !tbaa !293
  store i8 3, ptr %i.ar, align 8, !tbaa !294
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %21, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 528
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef 206, i32 noundef 1) #12, !inline_history !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.ba, align 1, !tbaa !292
  store ptr @.str.3, ptr %22, align 8, !tbaa !293
  store i8 3, ptr %i.az, align 8, !tbaa !294
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %22, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !296
  %i.bg = zext i16 %i.bf to i64
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 528
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef %i.bg, i32 noundef 2) #12, !inline_history !257
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #12
  %i.bk = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.bl, align 1, !tbaa !292
  store ptr @.str.4, ptr %23, align 8, !tbaa !293
  store i8 3, ptr %i.bk, align 8, !tbaa !294
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %23, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !297
  %i.br = load ptr, ptr %i.ae, align 8, !tbaa !295
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 840
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef %i.bq, ptr noundef %i.br, i32 noundef 4) #12
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !298, !range !299, !noundef !18 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !300, !range !299, !noundef !18 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 118 ; 3 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !301
  %.not237 = icmp eq i16 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !302
  %.not238 = icmp eq i8 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !303
  %i.cf = icmp ne i64 %i.ce, 0                    ; 2 uses
  %spec.select.i = or disjoint i8 %i.bw, -128
  %54 = shl nuw nsw i8 %i.by, 4
  %.045.i = or disjoint i8 %54, -128
  %.043.i = select i1 %i.t, i8 64, i8 0           ; 2 uses
  %i.cg = or disjoint i8 %.043.i, 32
  %.144.i = select i1 %.not237, i8 %.043.i, i8 %i.cg ; 2 uses
  %.0.i = select i1 %.not238, i8 -128, i8 -96     ; 2 uses
  %i.ch = or disjoint i8 %.0.i, 16
  %spec.select = select i1 %cond.fr, i8 %i.ch, i8 %.0.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.cj, align 1, !tbaa !292
  store ptr @.str.23, ptr %5, align 8, !tbaa !293
  store i8 3, ptr %i.ci, align 8, !tbaa !294
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.co, align 1, !tbaa !292
  store ptr @.str.24, ptr %6, align 8, !tbaa !293
  store i8 3, ptr %i.cn, align 8, !tbaa !294
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %6, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.not.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.ct, align 1, !tbaa !292
  store ptr @.str.25, ptr %7, align 8, !tbaa !293
  store i8 3, ptr %i.cs, align 8, !tbaa !294
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %7, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cx = zext i8 %spec.select.i to i64
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 528
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef %i.cx, i32 noundef 1) #12, !inline_history !259
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !292
  store ptr @.str.26, ptr %8, align 8, !tbaa !293
  store i8 3, ptr %i.db, align 8, !tbaa !294
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %8, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.dh, align 1, !tbaa !292
  store ptr @.str.27, ptr %9, align 8, !tbaa !293
  store i8 3, ptr %i.dg, align 8, !tbaa !294
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %9, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %.not47.i = icmp eq i8 %i.by, 0
  br i1 %.not47.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.dm, align 1, !tbaa !292
  store ptr @.str.28, ptr %10, align 8, !tbaa !293
  store i8 3, ptr %i.dl, align 8, !tbaa !294
  %i.dn = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %10, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.dr, align 1, !tbaa !292
  store ptr @.str.29, ptr %11, align 8, !tbaa !293
  store i8 3, ptr %i.dq, align 8, !tbaa !294
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 120
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %11, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dv = zext i8 %.045.i to i64
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 528
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef %i.dv, i32 noundef 1) #12, !inline_history !259
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ea, align 1, !tbaa !292
  store ptr @.str.30, ptr %12, align 8, !tbaa !293
  store i8 3, ptr %i.dz, align 8, !tbaa !294
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %12, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.ef, align 1, !tbaa !292
  store ptr @.str.31, ptr %13, align 8, !tbaa !293
  store i8 3, ptr %i.ee, align 8, !tbaa !294
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %13, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ej = and i8 %.144.i, 32
  %.not48.i = icmp eq i8 %i.ej, 0
  br i1 %.not48.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.el, align 1, !tbaa !292
  store ptr @.str.32, ptr %14, align 8, !tbaa !293
  store i8 3, ptr %i.ek, align 8, !tbaa !294
  %i.em = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 120
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %14, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ep = zext nneg i8 %.144.i to i64
  %i.eq = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 528
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef %i.ep, i32 noundef 1) #12, !inline_history !259
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.eu, align 1, !tbaa !292
  store ptr @.str.33, ptr %15, align 8, !tbaa !293
  store i8 3, ptr %i.et, align 8, !tbaa !294
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %15, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.ey = and i8 %spec.select, 32
  %.not49.i = icmp eq i8 %i.ey, 0
  br i1 %.not49.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.fa, align 1, !tbaa !292
  store ptr @.str.34, ptr %16, align 8, !tbaa !293
  store i8 3, ptr %i.ez, align 8, !tbaa !294
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %16, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fe = and i8 %spec.select, 16
  %.not50.i = icmp eq i8 %i.fe, 0
  br i1 %.not50.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.ff = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.fg, align 1, !tbaa !292
  store ptr @.str.35, ptr %17, align 8, !tbaa !293
  store i8 3, ptr %i.ff, align 8, !tbaa !294
  %i.fh = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %17, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.cf, label %bb.s, label %_ZL13emitPPA1FlagsRN4llvm10MCStreamerEbbbbbbb.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.fl, align 1, !tbaa !292
  store ptr @.str.36, ptr %18, align 8, !tbaa !293
  store i8 3, ptr %i.fk, align 8, !tbaa !294
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %18, i1 noundef zeroext true) #12, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  br label %_ZL13emitPPA1FlagsRN4llvm10MCStreamerEbbbbbbb.exit

_ZL13emitPPA1FlagsRN4llvm10MCStreamerEbbbbbbb.exit: ; preds = %bb.r, %bb.s
  %i.fp = zext i1 %i.cf to i8
  %.2.i = or disjoint i8 %spec.select, %i.fp
  %i.fq = zext i8 %.2.i to i64
  %i.fr = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 528
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef %i.fq, i32 noundef 1) #12, !inline_history !259
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #12
  %i.fu = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.fv, align 1, !tbaa !292
  store ptr @.str.5, ptr %24, align 8, !tbaa !293
  store i8 3, ptr %i.fu, align 8, !tbaa !294
  %i.fw = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %24, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !304
  %i.gb = lshr i32 %i.ga, 2
  %i.gc = and i32 %i.gb, 65535
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 528
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(304) %i.l, i64 noundef %i.gd, i32 noundef 2) #12, !inline_history !257
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #12
  %i.gh = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.gi, align 1, !tbaa !292
  store ptr @.str.6, ptr %25, align 8, !tbaa !293
  store i8 3, ptr %i.gh, align 8, !tbaa !294
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %25, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !305 ; 2 uses
  %.not110 = icmp eq ptr %i.gn, null
  br i1 %.not110, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZL13emitPPA1FlagsRN4llvm10MCStreamerEbbbbbbb.exit
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !306
end_hunk_0
